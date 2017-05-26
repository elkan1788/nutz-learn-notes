package io.github.elkan1788.nutz_learn_notes.kindeditor4.modules;

import org.nutz.ioc.loader.annotation.IocBean;
import org.nutz.mvc.annotation.Encoding;
import org.nutz.mvc.annotation.Fail;
import org.nutz.mvc.annotation.IocBy;
import org.nutz.mvc.annotation.Modules;
import org.nutz.mvc.annotation.Ok;
import org.nutz.mvc.ioc.provider.ComboIocProvider;

/**
 * 入口主函数
 * @author Elkan(elkan1788@gmail.com)
 */
@Modules
@Encoding(input="UTF-8",output="UTF-8")
@Ok("ioc:json")
@Fail("ioc:json")
@IocBy(type=ComboIocProvider.class,args={
	"*org.nutz.ioc.loader.json.JsonLoader", "ioc.js",
	"*org.nutz.ioc.loader.annotation.AnnotationIocLoader","io.github.elkan1788.nutz_learn_notes.kindeditor4.modules"})
@IocBean
public class MainModule {
    
    
}
