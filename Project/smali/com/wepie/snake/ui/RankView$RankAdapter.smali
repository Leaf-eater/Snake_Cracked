.class Lcom/wepie/snake/ui/RankView$RankAdapter;
.super Landroid/widget/BaseAdapter;
.source "RankView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wepie/snake/ui/RankView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RankAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wepie/snake/ui/RankView$RankAdapter$Holder;
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wepie/snake/ui/RankView;


# direct methods
.method private constructor <init>(Lcom/wepie/snake/ui/RankView;)V
    .locals 0

    .prologue
    .line 193
    iput-object p1, p0, Lcom/wepie/snake/ui/RankView$RankAdapter;->this$0:Lcom/wepie/snake/ui/RankView;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 259
    return-void
.end method

.method synthetic constructor <init>(Lcom/wepie/snake/ui/RankView;Lcom/wepie/snake/ui/RankView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/wepie/snake/ui/RankView;
    .param p2, "x1"    # Lcom/wepie/snake/ui/RankView$1;

    .prologue
    .line 193
    invoke-direct {p0, p1}, Lcom/wepie/snake/ui/RankView$RankAdapter;-><init>(Lcom/wepie/snake/ui/RankView;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lcom/wepie/snake/ui/RankView$RankAdapter;->this$0:Lcom/wepie/snake/ui/RankView;

    # getter for: Lcom/wepie/snake/ui/RankView;->scoreInfos:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/wepie/snake/ui/RankView;->access$300(Lcom/wepie/snake/ui/RankView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 202
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 207
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v8, 0x0

    const/4 v7, -0x1

    const/4 v6, 0x0

    .line 212
    const/4 v1, 0x0

    .line 213
    .local v1, "holder":Lcom/wepie/snake/ui/RankView$RankAdapter$Holder;
    if-nez p2, :cond_0

    .line 214
    new-instance v1, Lcom/wepie/snake/ui/RankView$RankAdapter$Holder;

    .end local v1    # "holder":Lcom/wepie/snake/ui/RankView$RankAdapter$Holder;
    invoke-direct {v1, p0, v8}, Lcom/wepie/snake/ui/RankView$RankAdapter$Holder;-><init>(Lcom/wepie/snake/ui/RankView$RankAdapter;Lcom/wepie/snake/ui/RankView$1;)V

    .line 215
    .restart local v1    # "holder":Lcom/wepie/snake/ui/RankView$RankAdapter$Holder;
    iget-object v4, p0, Lcom/wepie/snake/ui/RankView$RankAdapter;->this$0:Lcom/wepie/snake/ui/RankView;

    # getter for: Lcom/wepie/snake/ui/RankView;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/wepie/snake/ui/RankView;->access$500(Lcom/wepie/snake/ui/RankView;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f04003b

    invoke-virtual {v4, v5, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 216
    const v4, 0x7f0d00e5

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, v1, Lcom/wepie/snake/ui/RankView$RankAdapter$Holder;->numIcon:Landroid/widget/ImageView;

    .line 217
    const v4, 0x7f0d00e7

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/wepie/snake/module/home/HeadIconView;

    iput-object v4, v1, Lcom/wepie/snake/ui/RankView$RankAdapter$Holder;->headIconView:Lcom/wepie/snake/module/home/HeadIconView;

    .line 218
    const v4, 0x7f0d00e6

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v1, Lcom/wepie/snake/ui/RankView$RankAdapter$Holder;->rank_numb:Landroid/widget/TextView;

    .line 219
    const v4, 0x7f0d00e8

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v1, Lcom/wepie/snake/ui/RankView$RankAdapter$Holder;->name:Landroid/widget/TextView;

    .line 220
    const v4, 0x7f0d00e9

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v1, Lcom/wepie/snake/ui/RankView$RankAdapter$Holder;->number:Landroid/widget/TextView;

    .line 221
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 226
    :goto_0
    if-nez p1, :cond_1

    .line 227
    iget-object v4, v1, Lcom/wepie/snake/ui/RankView$RankAdapter$Holder;->numIcon:Landroid/widget/ImageView;

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 228
    iget-object v4, v1, Lcom/wepie/snake/ui/RankView$RankAdapter$Holder;->numIcon:Landroid/widget/ImageView;

    const v5, 0x7f020135

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 229
    iget-object v4, v1, Lcom/wepie/snake/ui/RankView$RankAdapter$Holder;->rank_numb:Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 230
    iget-object v4, v1, Lcom/wepie/snake/ui/RankView$RankAdapter$Holder;->rank_numb:Landroid/widget/TextView;

    const/high16 v5, 0x40400000    # 3.0f

    invoke-static {v5}, Lcom/wepie/snake/module/game/util/ScreenUtil;->dip2px(F)I

    move-result v5

    invoke-virtual {v4, v6, v5, v6, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 246
    :goto_1
    add-int/lit8 v2, p1, 0x1

    .line 247
    .local v2, "rank":I
    iget-object v4, p0, Lcom/wepie/snake/ui/RankView$RankAdapter;->this$0:Lcom/wepie/snake/ui/RankView;

    # getter for: Lcom/wepie/snake/ui/RankView;->scoreInfos:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/wepie/snake/ui/RankView;->access$300(Lcom/wepie/snake/ui/RankView;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/wepie/snake/module/net/entity/ScoreInfo;

    .line 248
    .local v3, "scoreInfo":Lcom/wepie/snake/module/net/entity/ScoreInfo;
    iget-object v4, v1, Lcom/wepie/snake/ui/RankView$RankAdapter$Holder;->rank_numb:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 249
    iget-object v4, v1, Lcom/wepie/snake/ui/RankView$RankAdapter$Holder;->name:Landroid/widget/TextView;

    iget-object v5, v3, Lcom/wepie/snake/module/net/entity/ScoreInfo;->nickname:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 250
    iget-object v4, v1, Lcom/wepie/snake/ui/RankView$RankAdapter$Holder;->number:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget v6, v3, Lcom/wepie/snake/module/net/entity/ScoreInfo;->score:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 252
    iget-object v0, v1, Lcom/wepie/snake/ui/RankView$RankAdapter$Holder;->headIconView:Lcom/wepie/snake/module/home/HeadIconView;

    .line 253
    .local v0, "headIconView":Lcom/wepie/snake/module/home/HeadIconView;
    invoke-virtual {v0}, Lcom/wepie/snake/module/home/HeadIconView;->setSmallMask()V

    .line 254
    iget-object v4, v3, Lcom/wepie/snake/module/net/entity/ScoreInfo;->avatar:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/wepie/snake/module/home/HeadIconView;->update(Ljava/lang/String;)V

    .line 256
    return-object p2

    .line 223
    .end local v0    # "headIconView":Lcom/wepie/snake/module/home/HeadIconView;
    .end local v2    # "rank":I
    .end local v3    # "scoreInfo":Lcom/wepie/snake/module/net/entity/ScoreInfo;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "holder":Lcom/wepie/snake/ui/RankView$RankAdapter$Holder;
    check-cast v1, Lcom/wepie/snake/ui/RankView$RankAdapter$Holder;

    .restart local v1    # "holder":Lcom/wepie/snake/ui/RankView$RankAdapter$Holder;
    goto :goto_0

    .line 231
    :cond_1
    const/4 v4, 0x1

    if-ne p1, v4, :cond_2

    .line 232
    iget-object v4, v1, Lcom/wepie/snake/ui/RankView$RankAdapter$Holder;->numIcon:Landroid/widget/ImageView;

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 233
    iget-object v4, v1, Lcom/wepie/snake/ui/RankView$RankAdapter$Holder;->numIcon:Landroid/widget/ImageView;

    const v5, 0x7f0200c9

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 234
    iget-object v4, v1, Lcom/wepie/snake/ui/RankView$RankAdapter$Holder;->rank_numb:Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 235
    iget-object v4, v1, Lcom/wepie/snake/ui/RankView$RankAdapter$Holder;->rank_numb:Landroid/widget/TextView;

    invoke-virtual {v4, v6, v6, v6, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    goto :goto_1

    .line 236
    :cond_2
    const/4 v4, 0x2

    if-ne p1, v4, :cond_3

    .line 237
    iget-object v4, v1, Lcom/wepie/snake/ui/RankView$RankAdapter$Holder;->numIcon:Landroid/widget/ImageView;

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 238
    iget-object v4, v1, Lcom/wepie/snake/ui/RankView$RankAdapter$Holder;->numIcon:Landroid/widget/ImageView;

    const v5, 0x7f02012c

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 239
    iget-object v4, v1, Lcom/wepie/snake/ui/RankView$RankAdapter$Holder;->rank_numb:Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 240
    iget-object v4, v1, Lcom/wepie/snake/ui/RankView$RankAdapter$Holder;->rank_numb:Landroid/widget/TextView;

    invoke-virtual {v4, v6, v6, v6, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    goto/16 :goto_1

    .line 242
    :cond_3
    iget-object v4, v1, Lcom/wepie/snake/ui/RankView$RankAdapter$Holder;->numIcon:Landroid/widget/ImageView;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 243
    iget-object v4, v1, Lcom/wepie/snake/ui/RankView$RankAdapter$Holder;->rank_numb:Landroid/widget/TextView;

    const-string v5, "#999999"

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 244
    iget-object v4, v1, Lcom/wepie/snake/ui/RankView$RankAdapter$Holder;->rank_numb:Landroid/widget/TextView;

    invoke-virtual {v4, v6, v6, v6, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    goto/16 :goto_1
.end method
