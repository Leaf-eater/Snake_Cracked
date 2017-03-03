.class public Lcom/wepie/snake/helper/dialog/InnerDialogUtil;
.super Ljava/lang/Object;
.source "InnerDialogUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wepie/snake/helper/dialog/InnerDialogUtil$DialogItemCallback;,
        Lcom/wepie/snake/helper/dialog/InnerDialogUtil$DialogCallback;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 398
    return-void
.end method

.method private static addItem(Landroid/content/Context;Landroid/widget/LinearLayout;ZZ)Landroid/widget/TextView;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "parent"    # Landroid/widget/LinearLayout;
    .param p2, "isLastItem"    # Z
    .param p3, "hasTitle"    # Z

    .prologue
    const v5, 0x7f020061

    const/16 v0, 0x3c

    const/4 v9, -0x1

    const/16 v6, 0x33

    const/4 v8, 0x0

    .line 206
    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 207
    .local v4, "textView":Landroid/widget/TextView;
    invoke-static {v6, v6, v6}, Landroid/graphics/Color;->rgb(III)I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 208
    const/4 v6, 0x1

    const/high16 v7, 0x41880000    # 17.0f

    invoke-virtual {v4, v6, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 209
    const/16 v6, 0x13

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setGravity(I)V

    .line 210
    const/high16 v6, 0x41700000    # 15.0f

    invoke-static {v6}, Lcom/wepie/snake/module/game/util/ScreenUtil;->dip2px(F)I

    move-result v6

    invoke-virtual {v4, v6, v8, v8, v8}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 211
    if-eqz p3, :cond_0

    if-eqz p2, :cond_0

    const v5, 0x7f02008e

    :cond_0
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 215
    if-eqz p3, :cond_1

    .line 217
    .local v0, "height":I
    :cond_1
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    int-to-float v5, v0

    .line 218
    invoke-static {v5}, Lcom/wepie/snake/module/game/util/ScreenUtil;->dip2px(F)I

    move-result v5

    invoke-direct {v2, v9, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 219
    .local v2, "param0":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {p1, v4, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 221
    if-eqz p2, :cond_2

    .line 229
    :goto_0
    return-object v4

    .line 223
    :cond_2
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 224
    .local v1, "image":Landroid/widget/ImageView;
    const/16 v5, 0xdd

    const/16 v6, 0xdc

    const/16 v7, 0xe0

    invoke-static {v5, v6, v7}, Landroid/graphics/Color;->rgb(III)I

    move-result v5

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 225
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v5, 0x3f000000    # 0.5f

    .line 226
    invoke-static {v5}, Lcom/wepie/snake/module/game/util/ScreenUtil;->dip2px(F)I

    move-result v5

    invoke-direct {v3, v9, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 227
    .local v3, "param1":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {p1, v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method private static addTitle(Landroid/content/Context;Landroid/widget/LinearLayout;)Landroid/widget/TextView;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "parent"    # Landroid/widget/LinearLayout;

    .prologue
    const/high16 v7, 0x41400000    # 12.0f

    const/4 v8, -0x1

    .line 185
    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 186
    .local v3, "textView":Landroid/widget/TextView;
    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 187
    const/4 v4, 0x1

    const/high16 v5, 0x41800000    # 16.0f

    invoke-virtual {v3, v4, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 188
    const/16 v4, 0x13

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 189
    const/high16 v4, 0x41700000    # 15.0f

    invoke-static {v4}, Lcom/wepie/snake/module/game/util/ScreenUtil;->dip2px(F)I

    move-result v4

    invoke-static {v7}, Lcom/wepie/snake/module/game/util/ScreenUtil;->dip2px(F)I

    move-result v5

    const/4 v6, 0x0

    invoke-static {v7}, Lcom/wepie/snake/module/game/util/ScreenUtil;->dip2px(F)I

    move-result v7

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 190
    const v4, 0x7f020097

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 192
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x2

    invoke-direct {v1, v8, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 194
    .local v1, "param0":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {p1, v3, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 196
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 197
    .local v0, "image":Landroid/widget/ImageView;
    const/16 v4, 0xdd

    const/16 v5, 0xdc

    const/16 v6, 0xe0

    invoke-static {v4, v5, v6}, Landroid/graphics/Color;->rgb(III)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 198
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v4, 0x3f000000    # 0.5f

    .line 199
    invoke-static {v4}, Lcom/wepie/snake/module/game/util/ScreenUtil;->dip2px(F)I

    move-result v4

    invoke-direct {v2, v8, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 200
    .local v2, "param1":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {p1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 202
    return-object v3
.end method

.method public static showDoubleBtTip(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/wepie/snake/helper/dialog/InnerDialogUtil$DialogCallback;)V
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "content"    # Ljava/lang/String;
    .param p3, "sureBtText"    # Ljava/lang/String;
    .param p4, "callback"    # Lcom/wepie/snake/helper/dialog/InnerDialogUtil$DialogCallback;

    .prologue
    .line 25
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    const v7, 0x7f04002d

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 26
    .local v5, "view":Landroid/view/View;
    new-instance v2, Lcom/wepie/snake/helper/dialog/BaseFullScreenDialog;

    const v6, 0x7f0a0143

    invoke-direct {v2, p0, v6}, Lcom/wepie/snake/helper/dialog/BaseFullScreenDialog;-><init>(Landroid/content/Context;I)V

    .line 27
    .local v2, "dialog":Lcom/wepie/snake/helper/dialog/BaseFullScreenDialog;
    invoke-virtual {v2, v5}, Lcom/wepie/snake/helper/dialog/BaseFullScreenDialog;->setContentView(Landroid/view/View;)V

    .line 28
    const/4 v6, 0x1

    invoke-virtual {v2, v6}, Lcom/wepie/snake/helper/dialog/BaseFullScreenDialog;->setCanceledOnTouchOutside(Z)V

    .line 29
    invoke-virtual {v2}, Lcom/wepie/snake/helper/dialog/BaseFullScreenDialog;->init()V

    .line 31
    const v6, 0x7f0d00c7

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 32
    .local v4, "titleView":Landroid/widget/TextView;
    const v6, 0x7f0d00c8

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 34
    .local v1, "contentView":Landroid/widget/TextView;
    if-eqz p1, :cond_0

    const-string v6, ""

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    :cond_0
    const-string p1, "\u63d0\u793a"

    .end local p1    # "title":Ljava/lang/String;
    :cond_1
    invoke-virtual {v4, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 35
    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 37
    const v6, 0x7f0d00c9

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 38
    .local v0, "cancelBt":Landroid/widget/TextView;
    const v6, 0x7f0d00ca

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 39
    .local v3, "sureBt":Landroid/widget/TextView;
    if-eqz p3, :cond_2

    const-string v6, ""

    invoke-virtual {v6, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    :cond_2
    const-string p3, "\u786e\u5b9a"

    .end local p3    # "sureBtText":Ljava/lang/String;
    :cond_3
    invoke-virtual {v3, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 41
    new-instance v6, Lcom/wepie/snake/helper/dialog/InnerDialogUtil$1;

    invoke-direct {v6, v2, p4}, Lcom/wepie/snake/helper/dialog/InnerDialogUtil$1;-><init>(Lcom/wepie/snake/helper/dialog/BaseFullScreenDialog;Lcom/wepie/snake/helper/dialog/InnerDialogUtil$DialogCallback;)V

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 48
    new-instance v6, Lcom/wepie/snake/helper/dialog/InnerDialogUtil$2;

    invoke-direct {v6, v2, p4}, Lcom/wepie/snake/helper/dialog/InnerDialogUtil$2;-><init>(Lcom/wepie/snake/helper/dialog/BaseFullScreenDialog;Lcom/wepie/snake/helper/dialog/InnerDialogUtil$DialogCallback;)V

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 55
    invoke-virtual {v2}, Lcom/wepie/snake/helper/dialog/BaseFullScreenDialog;->show()V

    .line 56
    return-void
.end method

.method public static showDoubleBtTip(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/wepie/snake/helper/dialog/InnerDialogUtil$DialogCallback;)V
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "content"    # Ljava/lang/String;
    .param p3, "sureBtText"    # Ljava/lang/String;
    .param p4, "cancleBtText"    # Ljava/lang/String;
    .param p5, "callback"    # Lcom/wepie/snake/helper/dialog/InnerDialogUtil$DialogCallback;

    .prologue
    .line 233
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    const v7, 0x7f04002d

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 234
    .local v5, "view":Landroid/view/View;
    new-instance v2, Lcom/wepie/snake/helper/dialog/BaseFullScreenDialog;

    const v6, 0x7f0a0143

    invoke-direct {v2, p0, v6}, Lcom/wepie/snake/helper/dialog/BaseFullScreenDialog;-><init>(Landroid/content/Context;I)V

    .line 235
    .local v2, "dialog":Lcom/wepie/snake/helper/dialog/BaseFullScreenDialog;
    invoke-virtual {v2, v5}, Lcom/wepie/snake/helper/dialog/BaseFullScreenDialog;->setContentView(Landroid/view/View;)V

    .line 236
    const/4 v6, 0x1

    invoke-virtual {v2, v6}, Lcom/wepie/snake/helper/dialog/BaseFullScreenDialog;->setCanceledOnTouchOutside(Z)V

    .line 237
    invoke-virtual {v2}, Lcom/wepie/snake/helper/dialog/BaseFullScreenDialog;->init()V

    .line 239
    const v6, 0x7f0d00c7

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 240
    .local v4, "titleView":Landroid/widget/TextView;
    const v6, 0x7f0d00c8

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 242
    .local v1, "contentView":Landroid/widget/TextView;
    if-eqz p1, :cond_0

    const-string v6, ""

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    :cond_0
    const-string p1, "\u63d0\u793a"

    .end local p1    # "title":Ljava/lang/String;
    :cond_1
    invoke-virtual {v4, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 243
    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 245
    const v6, 0x7f0d00c9

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 246
    .local v0, "cancelBt":Landroid/widget/TextView;
    const v6, 0x7f0d00ca

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 247
    .local v3, "sureBt":Landroid/widget/TextView;
    if-eqz p3, :cond_2

    const-string v6, ""

    invoke-virtual {v6, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    :cond_2
    const-string p3, "\u786e\u5b9a"

    .end local p3    # "sureBtText":Ljava/lang/String;
    :cond_3
    invoke-virtual {v3, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 248
    if-eqz p4, :cond_4

    const-string v6, ""

    invoke-virtual {v6, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    :cond_4
    const-string p4, "\u53d6\u6d88"

    .end local p4    # "cancleBtText":Ljava/lang/String;
    :cond_5
    invoke-virtual {v0, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 249
    new-instance v6, Lcom/wepie/snake/helper/dialog/InnerDialogUtil$9;

    invoke-direct {v6, v2, p5}, Lcom/wepie/snake/helper/dialog/InnerDialogUtil$9;-><init>(Lcom/wepie/snake/helper/dialog/BaseFullScreenDialog;Lcom/wepie/snake/helper/dialog/InnerDialogUtil$DialogCallback;)V

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 256
    new-instance v6, Lcom/wepie/snake/helper/dialog/InnerDialogUtil$10;

    invoke-direct {v6, v2, p5}, Lcom/wepie/snake/helper/dialog/InnerDialogUtil$10;-><init>(Lcom/wepie/snake/helper/dialog/BaseFullScreenDialog;Lcom/wepie/snake/helper/dialog/InnerDialogUtil$DialogCallback;)V

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 263
    invoke-virtual {v2}, Lcom/wepie/snake/helper/dialog/BaseFullScreenDialog;->show()V

    .line 264
    return-void
.end method

.method public static showDoubleBtTipNoTitle(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/wepie/snake/helper/dialog/InnerDialogUtil$DialogCallback;)V
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "content"    # Ljava/lang/String;
    .param p2, "text1"    # Ljava/lang/String;
    .param p3, "text2"    # Ljava/lang/String;
    .param p4, "callback"    # Lcom/wepie/snake/helper/dialog/InnerDialogUtil$DialogCallback;

    .prologue
    .line 358
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    const v7, 0x7f04002d

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 359
    .local v5, "view":Landroid/view/View;
    new-instance v2, Lcom/wepie/snake/helper/dialog/BaseFullScreenDialog;

    const v6, 0x7f0a0143

    invoke-direct {v2, p0, v6}, Lcom/wepie/snake/helper/dialog/BaseFullScreenDialog;-><init>(Landroid/content/Context;I)V

    .line 360
    .local v2, "dialog":Lcom/wepie/snake/helper/dialog/BaseFullScreenDialog;
    invoke-virtual {v2, v5}, Lcom/wepie/snake/helper/dialog/BaseFullScreenDialog;->setContentView(Landroid/view/View;)V

    .line 361
    const/4 v6, 0x1

    invoke-virtual {v2, v6}, Lcom/wepie/snake/helper/dialog/BaseFullScreenDialog;->setCanceledOnTouchOutside(Z)V

    .line 362
    invoke-virtual {v2}, Lcom/wepie/snake/helper/dialog/BaseFullScreenDialog;->init()V

    .line 364
    const v6, 0x7f0d00c7

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 365
    .local v4, "titleView":Landroid/widget/TextView;
    const v6, 0x7f0d00c8

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 366
    .local v1, "contentView":Landroid/widget/TextView;
    const v6, 0x7f0d00c9

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 369
    .local v0, "cancelView":Landroid/widget/TextView;
    const/16 v6, 0x8

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 370
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 372
    const v6, 0x7f0d00ca

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 373
    .local v3, "sureBt":Landroid/widget/TextView;
    invoke-virtual {v3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 374
    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 375
    new-instance v6, Lcom/wepie/snake/helper/dialog/InnerDialogUtil$16;

    invoke-direct {v6, v2, p4}, Lcom/wepie/snake/helper/dialog/InnerDialogUtil$16;-><init>(Lcom/wepie/snake/helper/dialog/BaseFullScreenDialog;Lcom/wepie/snake/helper/dialog/InnerDialogUtil$DialogCallback;)V

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 382
    new-instance v6, Lcom/wepie/snake/helper/dialog/InnerDialogUtil$17;

    invoke-direct {v6, v2, p4}, Lcom/wepie/snake/helper/dialog/InnerDialogUtil$17;-><init>(Lcom/wepie/snake/helper/dialog/BaseFullScreenDialog;Lcom/wepie/snake/helper/dialog/InnerDialogUtil$DialogCallback;)V

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 389
    invoke-virtual {v2}, Lcom/wepie/snake/helper/dialog/BaseFullScreenDialog;->show()V

    .line 390
    return-void
.end method

.method public static showDoubleTextDoubleBtTip(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/wepie/snake/helper/dialog/InnerDialogUtil$DialogCallback;)V
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "tip1"    # Ljava/lang/String;
    .param p2, "tip2"    # Ljava/lang/String;
    .param p3, "callback"    # Lcom/wepie/snake/helper/dialog/InnerDialogUtil$DialogCallback;

    .prologue
    .line 114
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    const v7, 0x7f04002e

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 115
    .local v5, "view":Landroid/view/View;
    new-instance v1, Lcom/wepie/snake/helper/dialog/BaseFullScreenDialog;

    const v6, 0x7f0a0143

    invoke-direct {v1, p0, v6}, Lcom/wepie/snake/helper/dialog/BaseFullScreenDialog;-><init>(Landroid/content/Context;I)V

    .line 116
    .local v1, "dialog":Lcom/wepie/snake/helper/dialog/BaseFullScreenDialog;
    invoke-virtual {v1, v5}, Lcom/wepie/snake/helper/dialog/BaseFullScreenDialog;->setContentView(Landroid/view/View;)V

    .line 117
    const/4 v6, 0x1

    invoke-virtual {v1, v6}, Lcom/wepie/snake/helper/dialog/BaseFullScreenDialog;->setCanceledOnTouchOutside(Z)V

    .line 118
    invoke-virtual {v1}, Lcom/wepie/snake/helper/dialog/BaseFullScreenDialog;->init()V

    .line 120
    const v6, 0x7f0d00cb

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 121
    .local v3, "textView1":Landroid/widget/TextView;
    const v6, 0x7f0d00cc

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 122
    .local v4, "textView2":Landroid/widget/TextView;
    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 123
    invoke-virtual {v4, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 125
    const v6, 0x7f0d00ce

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 126
    .local v2, "sureBt":Landroid/widget/TextView;
    const v6, 0x7f0d00cd

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 127
    .local v0, "cancelBt":Landroid/widget/TextView;
    new-instance v6, Lcom/wepie/snake/helper/dialog/InnerDialogUtil$5;

    invoke-direct {v6, v1, p3}, Lcom/wepie/snake/helper/dialog/InnerDialogUtil$5;-><init>(Lcom/wepie/snake/helper/dialog/BaseFullScreenDialog;Lcom/wepie/snake/helper/dialog/InnerDialogUtil$DialogCallback;)V

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 134
    new-instance v6, Lcom/wepie/snake/helper/dialog/InnerDialogUtil$6;

    invoke-direct {v6, v1, p3}, Lcom/wepie/snake/helper/dialog/InnerDialogUtil$6;-><init>(Lcom/wepie/snake/helper/dialog/BaseFullScreenDialog;Lcom/wepie/snake/helper/dialog/InnerDialogUtil$DialogCallback;)V

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 142
    invoke-virtual {v1}, Lcom/wepie/snake/helper/dialog/BaseFullScreenDialog;->show()V

    .line 143
    return-void
.end method

.method public static showDoubleTextSingleBtTip(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/wepie/snake/helper/dialog/InnerDialogUtil$DialogCallback;)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "tip1"    # Ljava/lang/String;
    .param p2, "tip2"    # Ljava/lang/String;
    .param p3, "callback"    # Lcom/wepie/snake/helper/dialog/InnerDialogUtil$DialogCallback;

    .prologue
    .line 86
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x7f04002f

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 87
    .local v4, "view":Landroid/view/View;
    new-instance v0, Lcom/wepie/snake/helper/dialog/BaseFullScreenDialog;

    const v5, 0x7f0a0143

    invoke-direct {v0, p0, v5}, Lcom/wepie/snake/helper/dialog/BaseFullScreenDialog;-><init>(Landroid/content/Context;I)V

    .line 88
    .local v0, "dialog":Lcom/wepie/snake/helper/dialog/BaseFullScreenDialog;
    invoke-virtual {v0, v4}, Lcom/wepie/snake/helper/dialog/BaseFullScreenDialog;->setContentView(Landroid/view/View;)V

    .line 89
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Lcom/wepie/snake/helper/dialog/BaseFullScreenDialog;->setCanceledOnTouchOutside(Z)V

    .line 90
    invoke-virtual {v0}, Lcom/wepie/snake/helper/dialog/BaseFullScreenDialog;->init()V

    .line 92
    const v5, 0x7f0d00cf

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 93
    .local v2, "textView1":Landroid/widget/TextView;
    const v5, 0x7f0d00d0

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 94
    .local v3, "textView2":Landroid/widget/TextView;
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    const-string v5, ""

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 96
    const/16 v5, 0x8

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 101
    :goto_0
    const v5, 0x7f0d00d1

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 102
    .local v1, "sureBt":Landroid/widget/TextView;
    new-instance v5, Lcom/wepie/snake/helper/dialog/InnerDialogUtil$4;

    invoke-direct {v5, v0, p3}, Lcom/wepie/snake/helper/dialog/InnerDialogUtil$4;-><init>(Lcom/wepie/snake/helper/dialog/BaseFullScreenDialog;Lcom/wepie/snake/helper/dialog/InnerDialogUtil$DialogCallback;)V

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 110
    invoke-virtual {v0}, Lcom/wepie/snake/helper/dialog/BaseFullScreenDialog;->show()V

    .line 111
    return-void

    .line 98
    .end local v1    # "sureBt":Landroid/widget/TextView;
    :cond_0
    invoke-virtual {v3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public static showItemSelectDialog(Landroid/content/Context;[Ljava/lang/String;ZLjava/lang/String;ZLcom/wepie/snake/helper/dialog/InnerDialogUtil$DialogItemCallback;)V
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "strs"    # [Ljava/lang/String;
    .param p2, "hasTitle"    # Z
    .param p3, "title"    # Ljava/lang/String;
    .param p4, "cancelOutside"    # Z
    .param p5, "callback"    # Lcom/wepie/snake/helper/dialog/InnerDialogUtil$DialogItemCallback;

    .prologue
    const/4 v8, 0x1

    .line 147
    new-instance v5, Landroid/widget/LinearLayout;

    invoke-direct {v5, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 148
    .local v5, "rootLay":Landroid/widget/LinearLayout;
    invoke-virtual {v5, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 149
    new-instance v0, Lcom/wepie/snake/helper/dialog/BaseFullScreenDialog;

    const v9, 0x7f0a0143

    invoke-direct {v0, p0, v9}, Lcom/wepie/snake/helper/dialog/BaseFullScreenDialog;-><init>(Landroid/content/Context;I)V

    .line 150
    .local v0, "dialog":Lcom/wepie/snake/helper/dialog/BaseFullScreenDialog;
    invoke-virtual {v0, v5}, Lcom/wepie/snake/helper/dialog/BaseFullScreenDialog;->setContentView(Landroid/view/View;)V

    .line 151
    invoke-virtual {v0, p4}, Lcom/wepie/snake/helper/dialog/BaseFullScreenDialog;->setCanceledOnTouchOutside(Z)V

    .line 152
    invoke-virtual {v0}, Lcom/wepie/snake/helper/dialog/BaseFullScreenDialog;->init()V

    .line 154
    if-eqz p2, :cond_1

    .line 155
    invoke-static {p0, v5}, Lcom/wepie/snake/helper/dialog/InnerDialogUtil;->addTitle(Landroid/content/Context;Landroid/widget/LinearLayout;)Landroid/widget/TextView;

    move-result-object v7

    .line 156
    .local v7, "titleText":Landroid/widget/TextView;
    if-nez p3, :cond_0

    const-string p3, ""

    .end local p3    # "title":Ljava/lang/String;
    :cond_0
    invoke-virtual {v7, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 158
    .end local v7    # "titleText":Landroid/widget/TextView;
    :cond_1
    array-length v3, p1

    .line 159
    .local v3, "len":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_3

    .line 160
    add-int/lit8 v9, v3, -0x1

    if-ne v1, v9, :cond_2

    move v2, v8

    .line 161
    .local v2, "isLastItem":Z
    :goto_1
    invoke-static {p0, v5, v2, p2}, Lcom/wepie/snake/helper/dialog/InnerDialogUtil;->addItem(Landroid/content/Context;Landroid/widget/LinearLayout;ZZ)Landroid/widget/TextView;

    move-result-object v6

    .line 162
    .local v6, "textView":Landroid/widget/TextView;
    aget-object v9, p1, v1

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 163
    move v4, v1

    .line 164
    .local v4, "position":I
    new-instance v9, Lcom/wepie/snake/helper/dialog/InnerDialogUtil$7;

    invoke-direct {v9, v0, p5, v4}, Lcom/wepie/snake/helper/dialog/InnerDialogUtil$7;-><init>(Lcom/wepie/snake/helper/dialog/BaseFullScreenDialog;Lcom/wepie/snake/helper/dialog/InnerDialogUtil$DialogItemCallback;I)V

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 159
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 160
    .end local v2    # "isLastItem":Z
    .end local v4    # "position":I
    .end local v6    # "textView":Landroid/widget/TextView;
    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    .line 173
    :cond_3
    if-eqz p4, :cond_4

    .line 174
    new-instance v8, Lcom/wepie/snake/helper/dialog/InnerDialogUtil$8;

    invoke-direct {v8, v0}, Lcom/wepie/snake/helper/dialog/InnerDialogUtil$8;-><init>(Lcom/wepie/snake/helper/dialog/BaseFullScreenDialog;)V

    invoke-virtual {v5, v8}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 181
    :cond_4
    invoke-virtual {v0}, Lcom/wepie/snake/helper/dialog/BaseFullScreenDialog;->show()V

    .line 182
    return-void
.end method

.method public static showSingleBtTip(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/wepie/snake/helper/dialog/InnerDialogUtil$DialogCallback;)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "content"    # Ljava/lang/String;
    .param p3, "callback"    # Lcom/wepie/snake/helper/dialog/InnerDialogUtil$DialogCallback;

    .prologue
    .line 59
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x7f040030

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 60
    .local v4, "view":Landroid/view/View;
    new-instance v1, Lcom/wepie/snake/helper/dialog/BaseFullScreenDialog;

    const v5, 0x7f0a0143

    invoke-direct {v1, p0, v5}, Lcom/wepie/snake/helper/dialog/BaseFullScreenDialog;-><init>(Landroid/content/Context;I)V

    .line 61
    .local v1, "dialog":Lcom/wepie/snake/helper/dialog/BaseFullScreenDialog;
    invoke-virtual {v1, v4}, Lcom/wepie/snake/helper/dialog/BaseFullScreenDialog;->setContentView(Landroid/view/View;)V

    .line 62
    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Lcom/wepie/snake/helper/dialog/BaseFullScreenDialog;->setCanceledOnTouchOutside(Z)V

    .line 63
    invoke-virtual {v1}, Lcom/wepie/snake/helper/dialog/BaseFullScreenDialog;->init()V

    .line 65
    const v5, 0x7f0d00d2

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 66
    .local v3, "titleView":Landroid/widget/TextView;
    const v5, 0x7f0d00d3

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 68
    .local v0, "contentView":Landroid/widget/TextView;
    if-eqz p1, :cond_0

    const-string v5, ""

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    const-string p1, "\u63d0\u793a"

    .end local p1    # "title":Ljava/lang/String;
    :cond_1
    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    const v5, 0x7f0d00d4

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 72
    .local v2, "sureBt":Landroid/widget/TextView;
    new-instance v5, Lcom/wepie/snake/helper/dialog/InnerDialogUtil$3;

    invoke-direct {v5, v1, p3}, Lcom/wepie/snake/helper/dialog/InnerDialogUtil$3;-><init>(Lcom/wepie/snake/helper/dialog/BaseFullScreenDialog;Lcom/wepie/snake/helper/dialog/InnerDialogUtil$DialogCallback;)V

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    invoke-virtual {v1}, Lcom/wepie/snake/helper/dialog/BaseFullScreenDialog;->show()V

    .line 80
    return-void
.end method

.method public static showSingleBtTipNoTitle(Landroid/content/Context;Ljava/lang/String;Lcom/wepie/snake/helper/dialog/InnerDialogUtil$DialogCallback;)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "content"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/wepie/snake/helper/dialog/InnerDialogUtil$DialogCallback;

    .prologue
    .line 324
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x7f040030

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 325
    .local v4, "view":Landroid/view/View;
    new-instance v1, Lcom/wepie/snake/helper/dialog/BaseFullScreenDialog;

    const v5, 0x7f0a0143

    invoke-direct {v1, p0, v5}, Lcom/wepie/snake/helper/dialog/BaseFullScreenDialog;-><init>(Landroid/content/Context;I)V

    .line 326
    .local v1, "dialog":Lcom/wepie/snake/helper/dialog/BaseFullScreenDialog;
    invoke-virtual {v1, v4}, Lcom/wepie/snake/helper/dialog/BaseFullScreenDialog;->setContentView(Landroid/view/View;)V

    .line 327
    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Lcom/wepie/snake/helper/dialog/BaseFullScreenDialog;->setCanceledOnTouchOutside(Z)V

    .line 328
    invoke-virtual {v1}, Lcom/wepie/snake/helper/dialog/BaseFullScreenDialog;->init()V

    .line 330
    const v5, 0x7f0d00d2

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 331
    .local v3, "titleView":Landroid/widget/TextView;
    const v5, 0x7f0d00d3

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 334
    .local v0, "contentView":Landroid/widget/TextView;
    const/16 v5, 0x8

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 335
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 337
    const v5, 0x7f0d00d4

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 338
    .local v2, "sureBt":Landroid/widget/TextView;
    new-instance v5, Lcom/wepie/snake/helper/dialog/InnerDialogUtil$14;

    invoke-direct {v5, v1, p2}, Lcom/wepie/snake/helper/dialog/InnerDialogUtil$14;-><init>(Lcom/wepie/snake/helper/dialog/BaseFullScreenDialog;Lcom/wepie/snake/helper/dialog/InnerDialogUtil$DialogCallback;)V

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 345
    new-instance v5, Lcom/wepie/snake/helper/dialog/InnerDialogUtil$15;

    invoke-direct {v5, p2}, Lcom/wepie/snake/helper/dialog/InnerDialogUtil$15;-><init>(Lcom/wepie/snake/helper/dialog/InnerDialogUtil$DialogCallback;)V

    invoke-virtual {v1, v5}, Lcom/wepie/snake/helper/dialog/BaseFullScreenDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 351
    invoke-virtual {v1}, Lcom/wepie/snake/helper/dialog/BaseFullScreenDialog;->show()V

    .line 352
    return-void
.end method

.method public static showSingleBtTipNoTitleUnClose(Landroid/content/Context;Ljava/lang/String;Lcom/wepie/snake/helper/dialog/InnerDialogUtil$DialogCallback;)V
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "content"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/wepie/snake/helper/dialog/InnerDialogUtil$DialogCallback;

    .prologue
    const/4 v9, 0x0

    .line 274
    new-instance v2, Lcom/wepie/snake/helper/dialog/InnerDialogUtil$11;

    invoke-direct {v2}, Lcom/wepie/snake/helper/dialog/InnerDialogUtil$11;-><init>()V

    .line 284
    .local v2, "keylistener":Landroid/content/DialogInterface$OnKeyListener;
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    const v7, 0x7f040030

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 285
    .local v5, "view":Landroid/view/View;
    new-instance v1, Lcom/wepie/snake/helper/dialog/BaseFullScreenDialog;

    const v6, 0x7f0a0143

    invoke-direct {v1, p0, v6}, Lcom/wepie/snake/helper/dialog/BaseFullScreenDialog;-><init>(Landroid/content/Context;I)V

    .line 286
    .local v1, "dialog":Lcom/wepie/snake/helper/dialog/BaseFullScreenDialog;
    invoke-virtual {v1, v5}, Lcom/wepie/snake/helper/dialog/BaseFullScreenDialog;->setContentView(Landroid/view/View;)V

    .line 287
    invoke-virtual {v1, v9}, Lcom/wepie/snake/helper/dialog/BaseFullScreenDialog;->setCancelable(Z)V

    .line 288
    invoke-virtual {v1, v2}, Lcom/wepie/snake/helper/dialog/BaseFullScreenDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 289
    invoke-virtual {v1, v9}, Lcom/wepie/snake/helper/dialog/BaseFullScreenDialog;->setCanceledOnTouchOutside(Z)V

    .line 290
    invoke-virtual {v1}, Lcom/wepie/snake/helper/dialog/BaseFullScreenDialog;->init()V

    .line 292
    const v6, 0x7f0d00d2

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 293
    .local v4, "titleView":Landroid/widget/TextView;
    const v6, 0x7f0d00d3

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 296
    .local v0, "contentView":Landroid/widget/TextView;
    const/16 v6, 0x8

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 297
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 299
    const v6, 0x7f0d00d4

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 300
    .local v3, "sureBt":Landroid/widget/TextView;
    new-instance v6, Lcom/wepie/snake/helper/dialog/InnerDialogUtil$12;

    invoke-direct {v6, v1, p2}, Lcom/wepie/snake/helper/dialog/InnerDialogUtil$12;-><init>(Lcom/wepie/snake/helper/dialog/BaseFullScreenDialog;Lcom/wepie/snake/helper/dialog/InnerDialogUtil$DialogCallback;)V

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 307
    new-instance v6, Lcom/wepie/snake/helper/dialog/InnerDialogUtil$13;

    invoke-direct {v6, p2}, Lcom/wepie/snake/helper/dialog/InnerDialogUtil$13;-><init>(Lcom/wepie/snake/helper/dialog/InnerDialogUtil$DialogCallback;)V

    invoke-virtual {v1, v6}, Lcom/wepie/snake/helper/dialog/BaseFullScreenDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 313
    invoke-virtual {v1}, Lcom/wepie/snake/helper/dialog/BaseFullScreenDialog;->show()V

    .line 314
    return-void
.end method
