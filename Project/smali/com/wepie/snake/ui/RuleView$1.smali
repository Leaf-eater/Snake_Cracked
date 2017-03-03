.class Lcom/wepie/snake/ui/RuleView$1;
.super Ljava/lang/Object;
.source "RuleView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wepie/snake/ui/RuleView;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wepie/snake/ui/RuleView;


# direct methods
.method constructor <init>(Lcom/wepie/snake/ui/RuleView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/wepie/snake/ui/RuleView;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/wepie/snake/ui/RuleView$1;->this$0:Lcom/wepie/snake/ui/RuleView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/wepie/snake/ui/RuleView$1;->this$0:Lcom/wepie/snake/ui/RuleView;

    # getter for: Lcom/wepie/snake/ui/RuleView;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/wepie/snake/ui/RuleView;->access$100(Lcom/wepie/snake/ui/RuleView;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/wepie/snake/activity/HomeActivity;

    invoke-virtual {v0}, Lcom/wepie/snake/activity/HomeActivity;->showHomeView()V

    .line 60
    return-void
.end method
