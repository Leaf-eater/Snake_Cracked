.class Lcom/wepie/snake/ui/GameOverView$2;
.super Ljava/lang/Object;
.source "GameOverView.java"

# interfaces
.implements Lcom/wepie/snake/module/net/handler/SendScoreHandler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wepie/snake/ui/GameOverView;->sendScore(III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wepie/snake/ui/GameOverView;


# direct methods
.method constructor <init>(Lcom/wepie/snake/ui/GameOverView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/wepie/snake/ui/GameOverView;

    .prologue
    .line 86
    iput-object p1, p0, Lcom/wepie/snake/ui/GameOverView$2;->this$0:Lcom/wepie/snake/ui/GameOverView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(Ljava/lang/String;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 95
    return-void
.end method

.method public onSuceess()V
    .locals 0

    .prologue
    .line 90
    return-void
.end method
