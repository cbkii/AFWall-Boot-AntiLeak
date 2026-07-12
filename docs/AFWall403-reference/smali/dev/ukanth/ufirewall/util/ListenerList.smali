.class Ldev/ukanth/ufirewall/util/ListenerList;
.super Ljava/lang/Object;
.source "FileDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldev/ukanth/ufirewall/util/ListenerList$FireHandler;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<",
        "L:Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final listenerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "T",
            "L;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .line 259
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 260
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ldev/ukanth/ufirewall/util/ListenerList;->listenerList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(T",
            "L;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Ldev/ukanth/ufirewall/util/ListenerList;->listenerList:Ljava/util/List;

    .line 267
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public fireEvent(Ldev/ukanth/ufirewall/util/ListenerList$FireHandler;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldev/ukanth/ufirewall/util/ListenerList$FireHandler<",
            "T",
            "L;",
            ">;)V"
        }
    .end annotation

    .line 271
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Ldev/ukanth/ufirewall/util/ListenerList;->listenerList:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 272
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 273
    invoke-interface {p1, v1}, Ldev/ukanth/ufirewall/util/ListenerList$FireHandler;->fireEvent(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getListenerList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "T",
            "L;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Ldev/ukanth/ufirewall/util/ListenerList;->listenerList:Ljava/util/List;

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(T",
            "L;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Ldev/ukanth/ufirewall/util/ListenerList;->listenerList:Ljava/util/List;

    .line 278
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method
