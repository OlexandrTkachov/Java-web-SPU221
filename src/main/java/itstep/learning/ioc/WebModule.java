package itstep.learning.ioc;

import com.google.inject.servlet.GuiceFilter;
import com.google.inject.servlet.ServletModule;
import itstep.learning.filters.CharsetFilter;
import itstep.learning.servlets.HomeServlet;

public class ServletsModule extends ServletModule {

    @Override
    protected void configureServlets() {
        //Реєструємо фільтри
        filter("/*").through(CharsetFilter.class);
        //Та сервлети
        serve("/*").with(HomeServlet.class);
    }
}
