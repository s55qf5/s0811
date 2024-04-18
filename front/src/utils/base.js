const base = {
    get() {
                return {
            url : "http://localhost:8080/feiwuzhiwenhua/",
            name: "feiwuzhiwenhua",
            // 退出到首页链接
            indexUrl: 'http://localhost:8080/feiwuzhiwenhua/front/pages/login/login.html'
        };
            },
    getProjectName(){
        return {
            projectName: "非物质文化网站"
        } 
    }
}
export default base
