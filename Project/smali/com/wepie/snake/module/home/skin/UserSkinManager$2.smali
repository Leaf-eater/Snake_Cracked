.class Lcom/wepie/snake/module/home/skin/UserSkinManager$2;
.super Ljava/lang/Object;
.source "UserSkinManager.java"

# interfaces
.implements Lcom/wepie/snake/module/net/handler/CommonHandler$CommonCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wepie/snake/module/home/skin/UserSkinManager;->buySkin(Lcom/wepie/snake/helper/config/SkinConfig;Lcom/wepie/snake/module/net/handler/CommonHandler$CommonCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wepie/snake/module/home/skin/UserSkinManager;

.field final synthetic val$callback:Lcom/wepie/snake/module/net/handler/CommonHandler$CommonCallback;

.field final synthetic val$skinConfig:Lcom/wepie/snake/helper/config/SkinConfig;


# direct methods
.method constructor <init>(Lcom/wepie/snake/module/home/skin/UserSkinManager;Lcom/wepie/snake/helper/config/SkinConfig;Lcom/wepie/snake/module/net/handler/CommonHandler$CommonCallback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/wepie/snake/module/home/skin/UserSkinManager;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/wepie/snake/module/home/skin/UserSkinManager$2;->this$0:Lcom/wepie/snake/module/home/skin/UserSkinManager;

    iput-object p2, p0, Lcom/wepie/snake/module/home/skin/UserSkinManager$2;->val$skinConfig:Lcom/wepie/snake/helper/config/SkinConfig;

    iput-object p3, p0, Lcom/wepie/snake/module/home/skin/UserSkinManager$2;->val$callback:Lcom/wepie/snake/module/net/handler/CommonHandler$CommonCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/wepie/snake/module/home/skin/UserSkinManager$2;->val$callback:Lcom/wepie/snake/module/net/handler/CommonHandler$CommonCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wepie/snake/module/home/skin/UserSkinManager$2;->val$callback:Lcom/wepie/snake/module/net/handler/CommonHandler$CommonCallback;

    invoke-interface {v0, p1}, Lcom/wepie/snake/module/net/handler/CommonHandler$CommonCallback;->onFail(Ljava/lang/String;)V

    .line 66
    :cond_0
    return-void
.end method

.method public onSuccess()V
    .locals 2

    .prologue
    .line 58
    iget-object v0, p0, Lcom/wepie/snake/module/home/skin/UserSkinManager$2;->this$0:Lcom/wepie/snake/module/home/skin/UserSkinManager;

    # getter for: Lcom/wepie/snake/module/home/skin/UserSkinManager;->mSkinIds:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/wepie/snake/module/home/skin/UserSkinManager;->access$000(Lcom/wepie/snake/module/home/skin/UserSkinManager;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/wepie/snake/module/home/skin/UserSkinManager$2;->val$skinConfig:Lcom/wepie/snake/helper/config/SkinConfig;

    iget v1, v1, Lcom/wepie/snake/helper/config/SkinConfig;->skin_id:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 59
    iget-object v0, p0, Lcom/wepie/snake/module/home/skin/UserSkinManager$2;->val$callback:Lcom/wepie/snake/module/net/handler/CommonHandler$CommonCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wepie/snake/module/home/skin/UserSkinManager$2;->val$callback:Lcom/wepie/snake/module/net/handler/CommonHandler$CommonCallback;

    invoke-interface {v0}, Lcom/wepie/snake/module/net/handler/CommonHandler$CommonCallback;->onSuccess()V

    .line 60
    :cond_0
    iget-object v0, p0, Lcom/wepie/snake/module/home/skin/UserSkinManager$2;->this$0:Lcom/wepie/snake/module/home/skin/UserSkinManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/wepie/snake/module/home/skin/UserSkinManager;->getServerSkin(Lcom/wepie/snake/module/home/skin/UserSkinManager$UserSkinCallback;)V

    .line 61
    return-void
.end method
