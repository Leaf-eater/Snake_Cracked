.class Lcom/wepie/snake/module/home/HomeView$1;
.super Ljava/lang/Object;
.source "HomeView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wepie/snake/module/home/HomeView;->doFirstShow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wepie/snake/module/home/HomeView;


# direct methods
.method constructor <init>(Lcom/wepie/snake/module/home/HomeView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/wepie/snake/module/home/HomeView;

    .prologue
    .line 69
    iput-object p1, p0, Lcom/wepie/snake/module/home/HomeView$1;->this$0:Lcom/wepie/snake/module/home/HomeView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 71
    new-instance v0, Lcom/wepie/snake/module/home/HomeView$1$1;

    invoke-direct {v0, p0}, Lcom/wepie/snake/module/home/HomeView$1$1;-><init>(Lcom/wepie/snake/module/home/HomeView$1;)V

    invoke-static {v0}, Lcom/wepie/snake/module/net/HttpUtil;->getActivityPlanning(Lcom/wepie/snake/module/net/handler/ActivityPlanningHandler$Callback;)V

    .line 90
    return-void
.end method
