package com.lumata.multitenancy.routing;

import org.springframework.jdbc.datasource.lookup.AbstractRoutingDataSource;

public class MultiTenancyServerRoutingDataSource extends AbstractRoutingDataSource {

	@Override
	protected Object determineCurrentLookupKey() {
		return MultiTenancyServerContextHolder.getMultiTenancyServer();
	}

}
