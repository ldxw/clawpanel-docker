## 说明

本仓库仅提供基于上游源码的自动构建、多架构镜像打包与 GHCR 推送流程，方便按版本生成可直接使用的 Docker 镜像。

关于 ClawPanel 的官方 Docker 部署方法、运行方式、数据目录、Gateway 连接、反向代理和常见问题，请优先参考上游作者文档：  
[ClawPanel Docker 部署指南](https://github.com/qingchencloud/clawpanel/blob/main/docs/docker-deploy.md)

本仓库的镜像构建思路基于上游项目的 Docker 部署方式进行了自动化整理与适配。上游文档中已包含：
- 快速启动
- Docker Compose（推荐）
- 自定义 Dockerfile
- 配置与数据持久化
- Gateway 连接
- Nginx 反向代理
- 更新升级与常见问题
