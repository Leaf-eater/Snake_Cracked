.class Lcom/wepie/snake/ui/GameRankView$GameRankAdapter$Holder;
.super Ljava/lang/Object;
.source "GameRankView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wepie/snake/ui/GameRankView$GameRankAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Holder"
.end annotation


# instance fields
.field name:Landroid/widget/TextView;

.field numb:Landroid/widget/TextView;

.field socre:Landroid/widget/TextView;

.field final synthetic this$1:Lcom/wepie/snake/ui/GameRankView$GameRankAdapter;


# direct methods
.method constructor <init>(Lcom/wepie/snake/ui/GameRankView$GameRankAdapter;)V
    .locals 0
    .param p1, "this$1"    # Lcom/wepie/snake/ui/GameRankView$GameRankAdapter;

    .prologue
    .line 168
    iput-object p1, p0, Lcom/wepie/snake/ui/GameRankView$GameRankAdapter$Holder;->this$1:Lcom/wepie/snake/ui/GameRankView$GameRankAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
