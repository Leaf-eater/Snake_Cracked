.class Lcom/wepie/snake/ui/RuleView$RulePagerAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "RuleView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wepie/snake/ui/RuleView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RulePagerAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wepie/snake/ui/RuleView;


# direct methods
.method private constructor <init>(Lcom/wepie/snake/ui/RuleView;)V
    .locals 0

    .prologue
    .line 88
    iput-object p1, p0, Lcom/wepie/snake/ui/RuleView$RulePagerAdapter;->this$0:Lcom/wepie/snake/ui/RuleView;

    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/wepie/snake/ui/RuleView;Lcom/wepie/snake/ui/RuleView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/wepie/snake/ui/RuleView;
    .param p2, "x1"    # Lcom/wepie/snake/ui/RuleView$1;

    .prologue
    .line 88
    invoke-direct {p0, p1}, Lcom/wepie/snake/ui/RuleView$RulePagerAdapter;-><init>(Lcom/wepie/snake/ui/RuleView;)V

    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 1
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I
    .param p3, "object"    # Ljava/lang/Object;

    .prologue
    .line 108
    iget-object v0, p0, Lcom/wepie/snake/ui/RuleView$RulePagerAdapter;->this$0:Lcom/wepie/snake/ui/RuleView;

    # getter for: Lcom/wepie/snake/ui/RuleView;->imageViews:Ljava/util/List;
    invoke-static {v0}, Lcom/wepie/snake/ui/RuleView;->access$200(Lcom/wepie/snake/ui/RuleView;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 109
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/wepie/snake/ui/RuleView$RulePagerAdapter;->this$0:Lcom/wepie/snake/ui/RuleView;

    # getter for: Lcom/wepie/snake/ui/RuleView;->imageViews:Ljava/util/List;
    invoke-static {v0}, Lcom/wepie/snake/ui/RuleView;->access$200(Lcom/wepie/snake/ui/RuleView;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 1
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I

    .prologue
    .line 102
    iget-object v0, p0, Lcom/wepie/snake/ui/RuleView$RulePagerAdapter;->this$0:Lcom/wepie/snake/ui/RuleView;

    # getter for: Lcom/wepie/snake/ui/RuleView;->imageViews:Ljava/util/List;
    invoke-static {v0}, Lcom/wepie/snake/ui/RuleView;->access$200(Lcom/wepie/snake/ui/RuleView;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 103
    iget-object v0, p0, Lcom/wepie/snake/ui/RuleView$RulePagerAdapter;->this$0:Lcom/wepie/snake/ui/RuleView;

    # getter for: Lcom/wepie/snake/ui/RuleView;->imageViews:Ljava/util/List;
    invoke-static {v0}, Lcom/wepie/snake/ui/RuleView;->access$200(Lcom/wepie/snake/ui/RuleView;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "object"    # Ljava/lang/Object;

    .prologue
    .line 97
    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
