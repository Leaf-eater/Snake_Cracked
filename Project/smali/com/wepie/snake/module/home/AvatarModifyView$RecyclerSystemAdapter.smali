.class Lcom/wepie/snake/module/home/AvatarModifyView$RecyclerSystemAdapter;
.super Lcom/chad/library/adapter/base/BaseQuickAdapter;
.source "AvatarModifyView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wepie/snake/module/home/AvatarModifyView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RecyclerSystemAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/BaseQuickAdapter",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wepie/snake/module/home/AvatarModifyView;


# direct methods
.method public constructor <init>(Lcom/wepie/snake/module/home/AvatarModifyView;)V
    .locals 4

    .prologue
    .line 227
    iput-object p1, p0, Lcom/wepie/snake/module/home/AvatarModifyView$RecyclerSystemAdapter;->this$0:Lcom/wepie/snake/module/home/AvatarModifyView;

    .line 228
    const v2, 0x7f040031

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;-><init>(ILjava/util/List;)V

    .line 230
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 231
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Lcom/wepie/snake/module/home/skin/UserSkinManager;->getInstance()Lcom/wepie/snake/module/home/skin/UserSkinManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/wepie/snake/module/home/skin/UserSkinManager;->getUserSkinInfos()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wepie/snake/helper/config/SkinConfig;

    .line 232
    .local v0, "config":Lcom/wepie/snake/helper/config/SkinConfig;
    iget-object v3, v0, Lcom/wepie/snake/helper/config/SkinConfig;->headimgurl:Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 234
    .end local v0    # "config":Lcom/wepie/snake/helper/config/SkinConfig;
    :cond_0
    invoke-virtual {p0, v1}, Lcom/wepie/snake/module/home/AvatarModifyView$RecyclerSystemAdapter;->addData(Ljava/util/List;)V

    .line 235
    return-void
.end method


# virtual methods
.method protected bridge synthetic convert(Lcom/chad/library/adapter/base/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 225
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/wepie/snake/module/home/AvatarModifyView$RecyclerSystemAdapter;->convert(Lcom/chad/library/adapter/base/BaseViewHolder;Ljava/lang/String;)V

    return-void
.end method

.method protected convert(Lcom/chad/library/adapter/base/BaseViewHolder;Ljava/lang/String;)V
    .locals 5
    .param p1, "helper"    # Lcom/chad/library/adapter/base/BaseViewHolder;
    .param p2, "imageUrl"    # Ljava/lang/String;

    .prologue
    .line 239
    iget-object v3, p1, Lcom/chad/library/adapter/base/BaseViewHolder;->convertView:Landroid/view/View;

    const v4, 0x7f0d00d5

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lde/hdodenhof/circleimageview/CircleImageView;

    .line 240
    .local v0, "iconView":Lde/hdodenhof/circleimageview/CircleImageView;
    iget-object v3, p1, Lcom/chad/library/adapter/base/BaseViewHolder;->convertView:Landroid/view/View;

    const v4, 0x7f0d00d6

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 242
    .local v2, "maskImage":Landroid/widget/ImageView;
    iget-object v3, p0, Lcom/wepie/snake/module/home/AvatarModifyView$RecyclerSystemAdapter;->this$0:Lcom/wepie/snake/module/home/AvatarModifyView;

    invoke-virtual {v3}, Lcom/wepie/snake/module/home/AvatarModifyView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v3

    .line 243
    invoke-virtual {v3, p2}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v3

    .line 244
    invoke-virtual {v3, v0}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    .line 246
    invoke-static {}, Lcom/wepie/snake/module/login/LoginHelper;->getAvatar()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 247
    .local v1, "isSelect":Z
    if-eqz v1, :cond_0

    iget-object v3, p0, Lcom/wepie/snake/module/home/AvatarModifyView$RecyclerSystemAdapter;->this$0:Lcom/wepie/snake/module/home/AvatarModifyView;

    # setter for: Lcom/wepie/snake/module/home/AvatarModifyView;->selectMaskImageView:Landroid/widget/ImageView;
    invoke-static {v3, v2}, Lcom/wepie/snake/module/home/AvatarModifyView;->access$302(Lcom/wepie/snake/module/home/AvatarModifyView;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    .line 248
    :cond_0
    if-eqz v1, :cond_1

    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 249
    return-void

    .line 248
    :cond_1
    const/4 v3, 0x4

    goto :goto_0
.end method
