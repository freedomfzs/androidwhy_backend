package com.androidwhy.modules.persistence;

import com.google.common.collect.Maps;
import org.apache.commons.lang3.StringUtils;

import java.util.Map;
import java.util.Map.Entry;

public class SearchFilter {

	public enum Operator {
		EQ, LEFT_LIKE, LIKE, RIGHT_LIKE, GT, LT, GTE, LTE
	}

	public String fieldName;
	public Object value;
	public Operator operator;

	public SearchFilter(String fieldName, Operator operator, Object value) {
		this.fieldName = fieldName;
		this.value = value;
		this.operator = operator;
	}

	public static Map<String, SearchFilter> parse(Map<String, Object> searchParams) {
        if (searchParams == null) {
            return null;
        }

		Map<String, SearchFilter> filters = Maps.newHashMap();

		for (Entry<String, Object> entry : searchParams.entrySet()) {
			// 过滤掉空值
			Object value = entry.getValue();
			if (StringUtils.isBlank((String) value)) {
				continue;
			}
			String[] names = StringUtils.split(entry.getKey(), "_");
			if (names.length != 2) {
				throw new IllegalArgumentException(entry.getKey() + " is not a valid search filter name");
			}
			SearchFilter filter = new SearchFilter(names[1], Operator.valueOf(names[0]), value);
			filters.put(filter.fieldName, filter);
		}

		return filters;
	}
}
