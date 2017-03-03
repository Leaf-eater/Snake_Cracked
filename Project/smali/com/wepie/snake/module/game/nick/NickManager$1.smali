.class Lcom/wepie/snake/module/game/nick/NickManager$1;
.super Ljava/lang/Object;
.source "NickManager.java"

# interfaces
.implements Lcom/wepie/snake/module/net/handler/BanWordsHandler$BanWordsCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wepie/snake/module/game/nick/NickManager;->updateBanWords()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wepie/snake/module/game/nick/NickManager;


# direct methods
.method constructor <init>(Lcom/wepie/snake/module/game/nick/NickManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/wepie/snake/module/game/nick/NickManager;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/wepie/snake/module/game/nick/NickManager$1;->this$0:Lcom/wepie/snake/module/game/nick/NickManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(Ljava/lang/String;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 64
    return-void
.end method

.method public onSuccess(Ljava/lang/String;ILjava/util/ArrayList;)V
    .locals 3
    .param p1, "result"    # Ljava/lang/String;
    .param p2, "ban_word_version"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 54
    .local p3, "wordArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v0, "ban_word.a"

    invoke-static {v0, p1}, Lcom/wepie/snake/module/util/FileCacheUtil;->writeFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    iget-object v0, p0, Lcom/wepie/snake/module/game/nick/NickManager$1;->this$0:Lcom/wepie/snake/module/game/nick/NickManager;

    # getter for: Lcom/wepie/snake/module/game/nick/NickManager;->filterArray:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/wepie/snake/module/game/nick/NickManager;->access$000(Lcom/wepie/snake/module/game/nick/NickManager;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 56
    iget-object v0, p0, Lcom/wepie/snake/module/game/nick/NickManager$1;->this$0:Lcom/wepie/snake/module/game/nick/NickManager;

    # getter for: Lcom/wepie/snake/module/game/nick/NickManager;->filterArray:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/wepie/snake/module/game/nick/NickManager;->access$000(Lcom/wepie/snake/module/game/nick/NickManager;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 57
    iget-object v0, p0, Lcom/wepie/snake/module/game/nick/NickManager$1;->this$0:Lcom/wepie/snake/module/game/nick/NickManager;

    # setter for: Lcom/wepie/snake/module/game/nick/NickManager;->mBan_word_version:I
    invoke-static {v0, p2}, Lcom/wepie/snake/module/game/nick/NickManager;->access$102(Lcom/wepie/snake/module/game/nick/NickManager;I)I

    .line 58
    const-string v0, "999"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "----->NickManage updateBanWords size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/wepie/snake/module/game/nick/NickManager$1;->this$0:Lcom/wepie/snake/module/game/nick/NickManager;

    # getter for: Lcom/wepie/snake/module/game/nick/NickManager;->filterArray:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/wepie/snake/module/game/nick/NickManager;->access$000(Lcom/wepie/snake/module/game/nick/NickManager;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mBan_word_version="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/wepie/snake/module/game/nick/NickManager$1;->this$0:Lcom/wepie/snake/module/game/nick/NickManager;

    # getter for: Lcom/wepie/snake/module/game/nick/NickManager;->mBan_word_version:I
    invoke-static {v2}, Lcom/wepie/snake/module/game/nick/NickManager;->access$100(Lcom/wepie/snake/module/game/nick/NickManager;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    return-void
.end method
