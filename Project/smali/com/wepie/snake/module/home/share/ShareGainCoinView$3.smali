.class Lcom/wepie/snake/module/home/share/ShareGainCoinView$3;
.super Ljava/lang/Object;
.source "ShareGainCoinView.java"

# interfaces
.implements Lcom/wepie/snake/module/net/handler/ShareInfoHandler$ShareInfoCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wepie/snake/module/home/share/ShareGainCoinView;->update()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wepie/snake/module/home/share/ShareGainCoinView;


# direct methods
.method constructor <init>(Lcom/wepie/snake/module/home/share/ShareGainCoinView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/wepie/snake/module/home/share/ShareGainCoinView;

    .prologue
    .line 73
    iput-object p1, p0, Lcom/wepie/snake/module/home/share/ShareGainCoinView$3;->this$0:Lcom/wepie/snake/module/home/share/ShareGainCoinView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(Ljava/lang/String;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 81
    invoke-static {p1}, Lcom/wepie/snake/module/game/util/ToastUtil;->show(Ljava/lang/String;)V

    .line 82
    return-void
.end method

.method public onSuccess(Ljava/lang/String;Lcom/wepie/snake/module/net/entity/UserShareInfo;)V
    .locals 1
    .param p1, "result"    # Ljava/lang/String;
    .param p2, "userShareInfo"    # Lcom/wepie/snake/module/net/entity/UserShareInfo;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/wepie/snake/module/home/share/ShareGainCoinView$3;->this$0:Lcom/wepie/snake/module/home/share/ShareGainCoinView;

    # invokes: Lcom/wepie/snake/module/home/share/ShareGainCoinView;->updateShareInfo(Lcom/wepie/snake/module/net/entity/UserShareInfo;)V
    invoke-static {v0, p2}, Lcom/wepie/snake/module/home/share/ShareGainCoinView;->access$000(Lcom/wepie/snake/module/home/share/ShareGainCoinView;Lcom/wepie/snake/module/net/entity/UserShareInfo;)V

    .line 77
    return-void
.end method
