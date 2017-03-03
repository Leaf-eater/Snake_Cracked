.class Lcom/wepie/snake/ui/RankView$RankAdapter$Holder;
.super Ljava/lang/Object;
.source "RankView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wepie/snake/ui/RankView$RankAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Holder"
.end annotation


# instance fields
.field headIconView:Lcom/wepie/snake/module/home/HeadIconView;

.field name:Landroid/widget/TextView;

.field numIcon:Landroid/widget/ImageView;

.field number:Landroid/widget/TextView;

.field rank_numb:Landroid/widget/TextView;

.field final synthetic this$1:Lcom/wepie/snake/ui/RankView$RankAdapter;


# direct methods
.method private constructor <init>(Lcom/wepie/snake/ui/RankView$RankAdapter;)V
    .locals 0

    .prologue
    .line 259
    iput-object p1, p0, Lcom/wepie/snake/ui/RankView$RankAdapter$Holder;->this$1:Lcom/wepie/snake/ui/RankView$RankAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/wepie/snake/ui/RankView$RankAdapter;Lcom/wepie/snake/ui/RankView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/wepie/snake/ui/RankView$RankAdapter;
    .param p2, "x1"    # Lcom/wepie/snake/ui/RankView$1;

    .prologue
    .line 259
    invoke-direct {p0, p1}, Lcom/wepie/snake/ui/RankView$RankAdapter$Holder;-><init>(Lcom/wepie/snake/ui/RankView$RankAdapter;)V

    return-void
.end method
