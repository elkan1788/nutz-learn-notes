package io.github.elkan1788.nutz_learn_notes.webuploader.modules;

import org.nutz.mvc.annotation.Encoding;
import org.nutz.mvc.annotation.IocBy;
import org.nutz.mvc.annotation.Modules;
import org.nutz.mvc.ioc.provider.ComboIocProvider;

/**
 * WEB 后端主入口
 * @author 凡梦星尘(elkan1788@gmail.com)
 */
@Modules
@IocBy( type = ComboIocProvider.class,
        args = {
                "*js",
                "ioc/",
                "*anno",
                "io.github.elkan1788.nutz_learn_notes"})
@Encoding(input = "UTF-8", output = "UTF-8")
public class MainModule {
}
