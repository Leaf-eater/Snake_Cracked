.class Lcom/wepie/snake/module/home/skin/SkinView$3;
.super Ljava/lang/Object;
.source "SkinView.java"

# interfaces
.implements Lcom/wepie/snake/module/home/skin/UserSkinManager$UserSkinCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wepie/snake/module/home/skin/SkinView;->initList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wepie/snake/module/home/skin/SkinView;


# direct methods
.method constructor <init>(Lcom/wepie/snake/module/home/skin/SkinView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/wepie/snake/module/home/skin/SkinView;

    .prologue
    .line 93
    iput-object p1, p0, Lcom/wepie/snake/module/home/skin/SkinView$3;->this$0:Lcom/wepie/snake/module/home/skin/SkinView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(Ljava/lang/String;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 103
    invoke-static {p1}, Lcom/wepie/snake/module/game/util/ToastUtil;->show(Ljava/lang/String;)V

    .line 104
    return-void
.end method

.method public onGetUserSkins(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/wepie/snake/helper/config/SkinConfig;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 96
    .local p1, "userSkins":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/wepie/snake/helper/config/SkinConfig;>;"
    iget-object v0, p0, Lcom/wepie/snake/module/home/skin/SkinView$3;->this$0:Lcom/wepie/snake/module/home/skin/SkinView;

    iget-object v0, v0, Lcom/wepie/snake/module/home/skin/SkinView;->mUserSkins:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 97
    iget-object v0, p0, Lcom/wepie/snake/module/home/skin/SkinView$3;->this$0:Lcom/wepie/snake/module/home/skin/SkinView;

    iget-object v0, v0, Lcom/wepie/snake/module/home/skin/SkinView;->mUserSkins:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 98
    iget-object v0, p0, Lcom/wepie/snake/module/home/skin/SkinView$3;->this$0:Lcom/wepie/snake/module/home/skin/SkinView;

    # getter for: Lcom/wepie/snake/module/home/skin/SkinView;->adapter:Lcom/wepie/snake/module/home/skin/SkinView$SkinAdapter;
    invoke-static {v0}, Lcom/wepie/snake/module/home/skin/SkinView;->access$200(Lcom/wepie/snake/module/home/skin/SkinView;)Lcom/wepie/snake/module/home/skin/SkinView$SkinAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wepie/snake/module/home/skin/SkinView$SkinAdapter;->notifyDataSetChanged()V

    .line 99
    return-void
.end method
