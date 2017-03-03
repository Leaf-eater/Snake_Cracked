.class public Lcom/wepie/snake/helper/config/ConfigInfo;
.super Ljava/lang/Object;
.source "ConfigInfo.java"


# instance fields
.field public share_logo_url:Ljava/lang/String;

.field public share_text:Ljava/lang/String;

.field public share_title:Ljava/lang/String;

.field public share_url:Ljava/lang/String;

.field public skinInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/wepie/snake/helper/config/SkinConfig;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    const-string v0, "http://url.havefun.im/u/LuPWvH"

    iput-object v0, p0, Lcom/wepie/snake/helper/config/ConfigInfo;->share_url:Ljava/lang/String;

    .line 10
    const-string v0, "http://7qnavr.com1.z0.glb.clouddn.com/snake_logo.png"

    iput-object v0, p0, Lcom/wepie/snake/helper/config/ConfigInfo;->share_logo_url:Ljava/lang/String;

    .line 11
    const-string v0, "\u7ed9\u4f60\u4eec\u5b89\u5229\u4e00\u4e2a\u8d85\u597d\u73a9\u7684\uff0c\u6709\u6bd2\u7684\u6e38\u620f\uff0c\u8d2a\u5403\u86c7\u5927\u4f5c\u6218\uff0c\u54c8\u54c8\u54c8\u54c8\u54c8\uff01\ud83d\ude1d\ud83d\ude1d\ud83d\ude1d"

    iput-object v0, p0, Lcom/wepie/snake/helper/config/ConfigInfo;->share_title:Ljava/lang/String;

    .line 12
    const-string v0, "\u8d2a\u5403\u86c7\u5927\u4f5c\u6218\uff0c\u5168\u65b0\u73a9\u6cd5\uff0c\u7b49\u4f60\u6765\u6311\u6218\uff01"

    iput-object v0, p0, Lcom/wepie/snake/helper/config/ConfigInfo;->share_text:Ljava/lang/String;

    .line 14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/wepie/snake/helper/config/ConfigInfo;->skinInfos:Ljava/util/ArrayList;

    return-void
.end method
