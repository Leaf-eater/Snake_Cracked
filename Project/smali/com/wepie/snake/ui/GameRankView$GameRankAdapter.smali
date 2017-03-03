.class Lcom/wepie/snake/ui/GameRankView$GameRankAdapter;
.super Landroid/widget/BaseAdapter;
.source "GameRankView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wepie/snake/ui/GameRankView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GameRankAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wepie/snake/ui/GameRankView$GameRankAdapter$Holder;
    }
.end annotation


# instance fields
.field colorAi:I

.field colorSelf:I

.field final synthetic this$0:Lcom/wepie/snake/ui/GameRankView;


# direct methods
.method private constructor <init>(Lcom/wepie/snake/ui/GameRankView;)V
    .locals 1

    .prologue
    .line 109
    iput-object p1, p0, Lcom/wepie/snake/ui/GameRankView$GameRankAdapter;->this$0:Lcom/wepie/snake/ui/GameRankView;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 110
    const-string v0, "#ff5758"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/wepie/snake/ui/GameRankView$GameRankAdapter;->colorSelf:I

    .line 111
    const-string v0, "#566069"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/wepie/snake/ui/GameRankView$GameRankAdapter;->colorAi:I

    .line 168
    return-void
.end method

.method synthetic constructor <init>(Lcom/wepie/snake/ui/GameRankView;Lcom/wepie/snake/ui/GameRankView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/wepie/snake/ui/GameRankView;
    .param p2, "x1"    # Lcom/wepie/snake/ui/GameRankView$1;

    .prologue
    .line 109
    invoke-direct {p0, p1}, Lcom/wepie/snake/ui/GameRankView$GameRankAdapter;-><init>(Lcom/wepie/snake/ui/GameRankView;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 2

    .prologue
    const/16 v0, 0xa

    .line 115
    iget-object v1, p0, Lcom/wepie/snake/ui/GameRankView$GameRankAdapter;->this$0:Lcom/wepie/snake/ui/GameRankView;

    # getter for: Lcom/wepie/snake/ui/GameRankView;->rankInfos:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/wepie/snake/ui/GameRankView;->access$300(Lcom/wepie/snake/ui/GameRankView;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v1, v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/wepie/snake/ui/GameRankView$GameRankAdapter;->this$0:Lcom/wepie/snake/ui/GameRankView;

    # getter for: Lcom/wepie/snake/ui/GameRankView;->rankInfos:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/wepie/snake/ui/GameRankView;->access$300(Lcom/wepie/snake/ui/GameRankView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 118
    :cond_0
    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 124
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 129
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v5, 0x0

    .line 134
    const/4 v0, 0x0

    .line 135
    .local v0, "holder":Lcom/wepie/snake/ui/GameRankView$GameRankAdapter$Holder;
    if-nez p2, :cond_0

    .line 136
    iget-object v3, p0, Lcom/wepie/snake/ui/GameRankView$GameRankAdapter;->this$0:Lcom/wepie/snake/ui/GameRankView;

    # getter for: Lcom/wepie/snake/ui/GameRankView;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/wepie/snake/ui/GameRankView;->access$400(Lcom/wepie/snake/ui/GameRankView;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f040025

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 137
    new-instance v0, Lcom/wepie/snake/ui/GameRankView$GameRankAdapter$Holder;

    .end local v0    # "holder":Lcom/wepie/snake/ui/GameRankView$GameRankAdapter$Holder;
    invoke-direct {v0, p0}, Lcom/wepie/snake/ui/GameRankView$GameRankAdapter$Holder;-><init>(Lcom/wepie/snake/ui/GameRankView$GameRankAdapter;)V

    .line 138
    .restart local v0    # "holder":Lcom/wepie/snake/ui/GameRankView$GameRankAdapter$Holder;
    const v3, 0x7f0d0085

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v0, Lcom/wepie/snake/ui/GameRankView$GameRankAdapter$Holder;->numb:Landroid/widget/TextView;

    .line 139
    const v3, 0x7f0d0086

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v0, Lcom/wepie/snake/ui/GameRankView$GameRankAdapter$Holder;->name:Landroid/widget/TextView;

    .line 140
    const v3, 0x7f0d0087

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v0, Lcom/wepie/snake/ui/GameRankView$GameRankAdapter$Holder;->socre:Landroid/widget/TextView;

    .line 141
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 145
    :goto_0
    add-int/lit8 v1, p1, 0x1

    .line 146
    .local v1, "rank":I
    if-nez p1, :cond_1

    .line 147
    iget-object v3, v0, Lcom/wepie/snake/ui/GameRankView$GameRankAdapter$Holder;->numb:Landroid/widget/TextView;

    const v4, 0x7f020135

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 156
    :goto_1
    iget-object v3, v0, Lcom/wepie/snake/ui/GameRankView$GameRankAdapter$Holder;->numb:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 158
    iget-object v3, p0, Lcom/wepie/snake/ui/GameRankView$GameRankAdapter;->this$0:Lcom/wepie/snake/ui/GameRankView;

    # getter for: Lcom/wepie/snake/ui/GameRankView;->rankInfos:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/wepie/snake/ui/GameRankView;->access$300(Lcom/wepie/snake/ui/GameRankView;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wepie/snake/ui/GameRankView$RankInfo;

    .line 159
    .local v2, "rankInfo":Lcom/wepie/snake/ui/GameRankView$RankInfo;
    iget-object v4, v0, Lcom/wepie/snake/ui/GameRankView$GameRankAdapter$Holder;->numb:Landroid/widget/TextView;

    iget-boolean v3, v2, Lcom/wepie/snake/ui/GameRankView$RankInfo;->isSelf:Z

    if-eqz v3, :cond_4

    iget v3, p0, Lcom/wepie/snake/ui/GameRankView$GameRankAdapter;->colorSelf:I

    :goto_2
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 160
    iget-object v4, v0, Lcom/wepie/snake/ui/GameRankView$GameRankAdapter$Holder;->name:Landroid/widget/TextView;

    iget-boolean v3, v2, Lcom/wepie/snake/ui/GameRankView$RankInfo;->isSelf:Z

    if-eqz v3, :cond_5

    iget v3, p0, Lcom/wepie/snake/ui/GameRankView$GameRankAdapter;->colorSelf:I

    :goto_3
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 161
    iget-object v4, v0, Lcom/wepie/snake/ui/GameRankView$GameRankAdapter$Holder;->socre:Landroid/widget/TextView;

    iget-boolean v3, v2, Lcom/wepie/snake/ui/GameRankView$RankInfo;->isSelf:Z

    if-eqz v3, :cond_6

    iget v3, p0, Lcom/wepie/snake/ui/GameRankView$GameRankAdapter;->colorSelf:I

    :goto_4
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 162
    iget-object v3, v0, Lcom/wepie/snake/ui/GameRankView$GameRankAdapter$Holder;->name:Landroid/widget/TextView;

    iget-object v4, v2, Lcom/wepie/snake/ui/GameRankView$RankInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 163
    iget-object v3, v0, Lcom/wepie/snake/ui/GameRankView$GameRankAdapter$Holder;->socre:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, v2, Lcom/wepie/snake/ui/GameRankView$RankInfo;->score:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 164
    return-object p2

    .line 143
    .end local v1    # "rank":I
    .end local v2    # "rankInfo":Lcom/wepie/snake/ui/GameRankView$RankInfo;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "holder":Lcom/wepie/snake/ui/GameRankView$GameRankAdapter$Holder;
    check-cast v0, Lcom/wepie/snake/ui/GameRankView$GameRankAdapter$Holder;

    .restart local v0    # "holder":Lcom/wepie/snake/ui/GameRankView$GameRankAdapter$Holder;
    goto :goto_0

    .line 148
    .restart local v1    # "rank":I
    :cond_1
    const/4 v3, 0x1

    if-ne p1, v3, :cond_2

    .line 149
    iget-object v3, v0, Lcom/wepie/snake/ui/GameRankView$GameRankAdapter$Holder;->numb:Landroid/widget/TextView;

    const v4, 0x7f0200c9

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_1

    .line 150
    :cond_2
    const/4 v3, 0x2

    if-ne p1, v3, :cond_3

    .line 151
    iget-object v3, v0, Lcom/wepie/snake/ui/GameRankView$GameRankAdapter$Holder;->numb:Landroid/widget/TextView;

    const v4, 0x7f02012c

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto/16 :goto_1

    .line 153
    :cond_3
    iget-object v3, v0, Lcom/wepie/snake/ui/GameRankView$GameRankAdapter$Holder;->numb:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1

    .line 159
    .restart local v2    # "rankInfo":Lcom/wepie/snake/ui/GameRankView$RankInfo;
    :cond_4
    iget v3, p0, Lcom/wepie/snake/ui/GameRankView$GameRankAdapter;->colorAi:I

    goto :goto_2

    .line 160
    :cond_5
    iget v3, p0, Lcom/wepie/snake/ui/GameRankView$GameRankAdapter;->colorAi:I

    goto :goto_3

    .line 161
    :cond_6
    iget v3, p0, Lcom/wepie/snake/ui/GameRankView$GameRankAdapter;->colorAi:I

    goto :goto_4
.end method
