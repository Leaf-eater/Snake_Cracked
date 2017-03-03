.class Lcom/wepie/snake/module/home/AvatarModifyView$4;
.super Ljava/lang/Object;
.source "AvatarModifyView.java"

# interfaces
.implements Lcom/wepie/snake/module/home/skin/UserSkinManager$UserSkinCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wepie/snake/module/home/AvatarModifyView;->initRecyclerSystem()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wepie/snake/module/home/AvatarModifyView;


# direct methods
.method constructor <init>(Lcom/wepie/snake/module/home/AvatarModifyView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/wepie/snake/module/home/AvatarModifyView;

    .prologue
    .line 169
    iput-object p1, p0, Lcom/wepie/snake/module/home/AvatarModifyView$4;->this$0:Lcom/wepie/snake/module/home/AvatarModifyView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 181
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u83b7\u53d6\u76ae\u80a4\u5931\u8d25: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/wepie/snake/module/game/util/ToastUtil;->show(Ljava/lang/String;)V

    .line 182
    return-void
.end method

.method public onGetUserSkins(Ljava/util/ArrayList;)V
    .locals 4
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
    .line 172
    .local p1, "userSkins":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/wepie/snake/helper/config/SkinConfig;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 173
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wepie/snake/helper/config/SkinConfig;

    .line 174
    .local v0, "config":Lcom/wepie/snake/helper/config/SkinConfig;
    iget-object v3, v0, Lcom/wepie/snake/helper/config/SkinConfig;->headimgurl:Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 176
    .end local v0    # "config":Lcom/wepie/snake/helper/config/SkinConfig;
    :cond_0
    iget-object v2, p0, Lcom/wepie/snake/module/home/AvatarModifyView$4;->this$0:Lcom/wepie/snake/module/home/AvatarModifyView;

    # getter for: Lcom/wepie/snake/module/home/AvatarModifyView;->recyclerSystemAdapter:Lcom/wepie/snake/module/home/AvatarModifyView$RecyclerSystemAdapter;
    invoke-static {v2}, Lcom/wepie/snake/module/home/AvatarModifyView;->access$100(Lcom/wepie/snake/module/home/AvatarModifyView;)Lcom/wepie/snake/module/home/AvatarModifyView$RecyclerSystemAdapter;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/wepie/snake/module/home/AvatarModifyView$RecyclerSystemAdapter;->setNewData(Ljava/util/List;)V

    .line 177
    return-void
.end method
