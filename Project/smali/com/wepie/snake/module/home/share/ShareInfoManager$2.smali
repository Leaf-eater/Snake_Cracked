.class Lcom/wepie/snake/module/home/share/ShareInfoManager$2;
.super Ljava/lang/Object;
.source "ShareInfoManager.java"

# interfaces
.implements Lcom/wepie/snake/module/net/handler/ShareInfoHandler$ShareInfoCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wepie/snake/module/home/share/ShareInfoManager;->initLocalData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wepie/snake/module/home/share/ShareInfoManager;


# direct methods
.method constructor <init>(Lcom/wepie/snake/module/home/share/ShareInfoManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/wepie/snake/module/home/share/ShareInfoManager;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/wepie/snake/module/home/share/ShareInfoManager$2;->this$0:Lcom/wepie/snake/module/home/share/ShareInfoManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(Ljava/lang/String;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 66
    return-void
.end method

.method public onSuccess(Ljava/lang/String;Lcom/wepie/snake/module/net/entity/UserShareInfo;)V
    .locals 1
    .param p1, "result"    # Ljava/lang/String;
    .param p2, "userShareInfo"    # Lcom/wepie/snake/module/net/entity/UserShareInfo;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/wepie/snake/module/home/share/ShareInfoManager$2;->this$0:Lcom/wepie/snake/module/home/share/ShareInfoManager;

    # setter for: Lcom/wepie/snake/module/home/share/ShareInfoManager;->mUserShareInfo:Lcom/wepie/snake/module/net/entity/UserShareInfo;
    invoke-static {v0, p2}, Lcom/wepie/snake/module/home/share/ShareInfoManager;->access$002(Lcom/wepie/snake/module/home/share/ShareInfoManager;Lcom/wepie/snake/module/net/entity/UserShareInfo;)Lcom/wepie/snake/module/net/entity/UserShareInfo;

    .line 61
    return-void
.end method
