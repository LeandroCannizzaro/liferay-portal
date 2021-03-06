<%--
/**
 * Copyright (c) 2000-2013 Liferay, Inc. All rights reserved.
 *
 * This library is free software; you can redistribute it and/or modify it under
 * the terms of the GNU Lesser General Public License as published by the Free
 * Software Foundation; either version 2.1 of the License, or (at your option)
 * any later version.
 *
 * This library is distributed in the hope that it will be useful, but WITHOUT
 * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS
 * FOR A PARTICULAR PURPOSE. See the GNU Lesser General Public License for more
 * details.
 */

@generated
--%>

<%@ include file="/html/taglib/taglib-init.jsp" %>

<%
Map<String, Object> dynamicAttributes = (Map<String, Object>)request.getAttribute("ddm:html-field:dynamicAttributes");
Map<String, Object> scopedAttributes = (Map<String, Object>)request.getAttribute("ddm:html-field:scopedAttributes");

Map<String, Object> _options = new HashMap<String, Object>();

if ((scopedAttributes != null) && !scopedAttributes.isEmpty()) {
	_options.putAll(scopedAttributes);
}

if ((dynamicAttributes != null) && !dynamicAttributes.isEmpty()) {
	_options.putAll(dynamicAttributes);
}

long classNameId = GetterUtil.getLong(String.valueOf(request.getAttribute("ddm:html-field:classNameId")));
long classPK = GetterUtil.getLong(String.valueOf(request.getAttribute("ddm:html-field:classPK")));
com.liferay.portlet.dynamicdatamapping.storage.Field field = (com.liferay.portlet.dynamicdatamapping.storage.Field)request.getAttribute("ddm:html-field:field");
java.lang.String fieldsNamespace = GetterUtil.getString((java.lang.String)request.getAttribute("ddm:html-field:fieldsNamespace"));
java.lang.String mode = GetterUtil.getString((java.lang.String)request.getAttribute("ddm:html-field:mode"));
boolean readOnly = GetterUtil.getBoolean(String.valueOf(request.getAttribute("ddm:html-field:readOnly")));
boolean repeatable = GetterUtil.getBoolean(String.valueOf(request.getAttribute("ddm:html-field:repeatable")), true);
java.util.Locale requestedLocale = (java.util.Locale)request.getAttribute("ddm:html-field:requestedLocale");

_updateOptions(_options, "classNameId", classNameId);
_updateOptions(_options, "classPK", classPK);
_updateOptions(_options, "field", field);
_updateOptions(_options, "fieldsNamespace", fieldsNamespace);
_updateOptions(_options, "mode", mode);
_updateOptions(_options, "readOnly", readOnly);
_updateOptions(_options, "repeatable", repeatable);
_updateOptions(_options, "requestedLocale", requestedLocale);
%>

<%@ include file="/html/taglib/ddm/html_field/init-ext.jspf" %>

<%!
private static final String _NAMESPACE = "ddm:html-field:";
%>