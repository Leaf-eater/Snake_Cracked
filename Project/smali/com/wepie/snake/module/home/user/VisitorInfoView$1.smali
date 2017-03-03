.class Lcom/wepie/snake/module/home/user/VisitorInfoView$1;
.super Ljava/lang/Object;
.source "VisitorInfoView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wepie/snake/module/home/user/VisitorInfoView;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wepie/snake/module/home/user/VisitorInfoView;


# direct methods
.method constructor <init>(Lcom/wepie/snake/module/home/user/VisitorInfoView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/wepie/snake/module/home/user/VisitorInfoView;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/wepie/snake/module/home/user/VisitorInfoView$1;->this$0:Lcom/wepie/snake/module/home/user/VisitorInfoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/wepie/snake/module/home/user/VisitorInfoView$1;->this$0:Lcom/wepie/snake/module/home/user/VisitorInfoView;

    # getter for: Lcom/wepie/snake/module/home/user/VisitorInfoView;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/wepie/snake/module/home/user/VisitorInfoView;->access$000(Lcom/wepie/snake/module/home/user/VisitorInfoView;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/wepie/snake/activity/HomeActivity;

    invoke-virtual {v0}, Lcom/wepie/snake/activity/HomeActivity;->doQQAutho()V

    .line 53
    return-void
.end method
