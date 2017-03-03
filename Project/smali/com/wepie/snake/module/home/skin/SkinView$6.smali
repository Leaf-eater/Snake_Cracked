.class Lcom/wepie/snake/module/home/skin/SkinView$6;
.super Ljava/lang/Object;
.source "SkinView.java"

# interfaces
.implements Lcom/wepie/snake/module/net/handler/CommonHandler$CommonCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wepie/snake/module/home/skin/SkinView;->doBuySkin(Lcom/wepie/snake/helper/config/SkinConfig;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wepie/snake/module/home/skin/SkinView;

.field final synthetic val$skinConfig:Lcom/wepie/snake/helper/config/SkinConfig;


# direct methods
.method constructor <init>(Lcom/wepie/snake/module/home/skin/SkinView;Lcom/wepie/snake/helper/config/SkinConfig;)V
    .locals 0
    .param p1, "this$0"    # Lcom/wepie/snake/module/home/skin/SkinView;

    .prologue
    .line 195
    iput-object p1, p0, Lcom/wepie/snake/module/home/skin/SkinView$6;->this$0:Lcom/wepie/snake/module/home/skin/SkinView;

    iput-object p2, p0, Lcom/wepie/snake/module/home/skin/SkinView$6;->val$skinConfig:Lcom/wepie/snake/helper/config/SkinConfig;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(Ljava/lang/String;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 208
    invoke-static {p1}, Lcom/wepie/snake/module/game/util/ToastUtil;->show(Ljava/lang/String;)V

    .line 209
    return-void
.end method

.method public onSuccess()V
    .locals 2

    .prologue
    .line 198
    const-string v0, "\u606d\u559c\u4f60\u8d2d\u4e70\u6210\u529f"

    invoke-static {v0}, Lcom/wepie/snake/module/game/util/ToastUtil;->show(Ljava/lang/String;)V

    .line 199
    iget-object v0, p0, Lcom/wepie/snake/module/home/skin/SkinView$6;->val$skinConfig:Lcom/wepie/snake/helper/config/SkinConfig;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/wepie/snake/helper/config/SkinConfig;->setSkinUsed(Z)V

    .line 200
    iget-object v0, p0, Lcom/wepie/snake/module/home/skin/SkinView$6;->this$0:Lcom/wepie/snake/module/home/skin/SkinView;

    iget-object v0, v0, Lcom/wepie/snake/module/home/skin/SkinView;->mUserSkins:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/wepie/snake/module/home/skin/SkinView$6;->val$skinConfig:Lcom/wepie/snake/helper/config/SkinConfig;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 201
    iget-object v0, p0, Lcom/wepie/snake/module/home/skin/SkinView$6;->this$0:Lcom/wepie/snake/module/home/skin/SkinView;

    # getter for: Lcom/wepie/snake/module/home/skin/SkinView;->adapter:Lcom/wepie/snake/module/home/skin/SkinView$SkinAdapter;
    invoke-static {v0}, Lcom/wepie/snake/module/home/skin/SkinView;->access$200(Lcom/wepie/snake/module/home/skin/SkinView;)Lcom/wepie/snake/module/home/skin/SkinView$SkinAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wepie/snake/module/home/skin/SkinView$SkinAdapter;->notifyDataSetChanged()V

    .line 203
    iget-object v0, p0, Lcom/wepie/snake/module/home/skin/SkinView$6;->this$0:Lcom/wepie/snake/module/home/skin/SkinView;

    # invokes: Lcom/wepie/snake/module/home/skin/SkinView;->updateUserInfo()V
    invoke-static {v0}, Lcom/wepie/snake/module/home/skin/SkinView;->access$600(Lcom/wepie/snake/module/home/skin/SkinView;)V

    .line 204
    return-void
.end method
