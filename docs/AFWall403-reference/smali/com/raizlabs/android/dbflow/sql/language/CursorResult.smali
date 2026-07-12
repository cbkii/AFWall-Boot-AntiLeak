.class public Lcom/raizlabs/android/dbflow/sql/language/CursorResult;
.super Ljava/lang/Object;
.source "CursorResult.java"

# interfaces
.implements Lcom/raizlabs/android/dbflow/list/IFlowCursorIterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TModel:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/raizlabs/android/dbflow/list/IFlowCursorIterator<",
        "TTModel;>;"
    }
.end annotation


# instance fields
.field private cursor:Lcom/raizlabs/android/dbflow/structure/database/FlowCursor;

.field private final retrievalAdapter:Lcom/raizlabs/android/dbflow/structure/InstanceAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/raizlabs/android/dbflow/structure/InstanceAdapter<",
            "TTModel;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Class;Landroid/database/Cursor;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TTModel;>;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_0

    .line 30
    invoke-static {p2}, Lcom/raizlabs/android/dbflow/structure/database/FlowCursor;->from(Landroid/database/Cursor;)Lcom/raizlabs/android/dbflow/structure/database/FlowCursor;

    move-result-object p2

    iput-object p2, p0, Lcom/raizlabs/android/dbflow/sql/language/CursorResult;->cursor:Lcom/raizlabs/android/dbflow/structure/database/FlowCursor;

    .line 32
    :cond_0
    invoke-static {p1}, Lcom/raizlabs/android/dbflow/config/FlowManager;->getInstanceAdapter(Ljava/lang/Class;)Lcom/raizlabs/android/dbflow/structure/InstanceAdapter;

    move-result-object p1

    iput-object p1, p0, Lcom/raizlabs/android/dbflow/sql/language/CursorResult;->retrievalAdapter:Lcom/raizlabs/android/dbflow/structure/InstanceAdapter;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/language/CursorResult;->cursor:Lcom/raizlabs/android/dbflow/structure/database/FlowCursor;

    if-eqz v0, :cond_0

    .line 163
    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/structure/database/FlowCursor;->close()V

    :cond_0
    return-void
.end method

.method public cursor()Landroid/database/Cursor;
    .locals 1

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/language/CursorResult;->cursor:Lcom/raizlabs/android/dbflow/structure/database/FlowCursor;

    return-object v0
.end method

.method public getCount()J
    .locals 2

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/language/CursorResult;->cursor:Lcom/raizlabs/android/dbflow/structure/database/FlowCursor;

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    .line 151
    :cond_0
    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/structure/database/FlowCursor;->getCount()I

    move-result v0

    int-to-long v0, v0

    :goto_0
    return-wide v0
.end method

.method public getItem(J)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TTModel;"
        }
    .end annotation

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/language/CursorResult;->cursor:Lcom/raizlabs/android/dbflow/structure/database/FlowCursor;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    long-to-int p2, p1

    .line 131
    invoke-virtual {v0, p2}, Lcom/raizlabs/android/dbflow/structure/database/FlowCursor;->moveToPosition(I)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/raizlabs/android/dbflow/sql/language/CursorResult;->retrievalAdapter:Lcom/raizlabs/android/dbflow/structure/InstanceAdapter;

    .line 132
    invoke-virtual {p1}, Lcom/raizlabs/android/dbflow/structure/InstanceAdapter;->getSingleModelLoader()Lcom/raizlabs/android/dbflow/sql/queriable/SingleModelLoader;

    move-result-object p1

    iget-object p2, p0, Lcom/raizlabs/android/dbflow/sql/language/CursorResult;->cursor:Lcom/raizlabs/android/dbflow/structure/database/FlowCursor;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v1, v0}, Lcom/raizlabs/android/dbflow/sql/queriable/SingleModelLoader;->convertToData(Lcom/raizlabs/android/dbflow/structure/database/FlowCursor;Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v1

    :cond_0
    return-object v1
.end method

.method public iterator()Lcom/raizlabs/android/dbflow/list/FlowCursorIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/raizlabs/android/dbflow/list/FlowCursorIterator<",
            "TTModel;>;"
        }
    .end annotation

    .line 140
    new-instance v0, Lcom/raizlabs/android/dbflow/list/FlowCursorIterator;

    invoke-direct {v0, p0}, Lcom/raizlabs/android/dbflow/list/FlowCursorIterator;-><init>(Lcom/raizlabs/android/dbflow/list/IFlowCursorIterator;)V

    return-object v0
.end method

.method public iterator(IJ)Lcom/raizlabs/android/dbflow/list/FlowCursorIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJ)",
            "Lcom/raizlabs/android/dbflow/list/FlowCursorIterator<",
            "TTModel;>;"
        }
    .end annotation

    .line 146
    new-instance v0, Lcom/raizlabs/android/dbflow/list/FlowCursorIterator;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/raizlabs/android/dbflow/list/FlowCursorIterator;-><init>(Lcom/raizlabs/android/dbflow/list/IFlowCursorIterator;IJ)V

    return-object v0
.end method

.method public swapCursor(Lcom/raizlabs/android/dbflow/structure/database/FlowCursor;)V
    .locals 1

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/language/CursorResult;->cursor:Lcom/raizlabs/android/dbflow/structure/database/FlowCursor;

    if-eqz v0, :cond_0

    .line 40
    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/structure/database/FlowCursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/language/CursorResult;->cursor:Lcom/raizlabs/android/dbflow/structure/database/FlowCursor;

    .line 41
    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/structure/database/FlowCursor;->close()V

    :cond_0
    iput-object p1, p0, Lcom/raizlabs/android/dbflow/sql/language/CursorResult;->cursor:Lcom/raizlabs/android/dbflow/structure/database/FlowCursor;

    return-void
.end method

.method public toCustomList(Ljava/lang/Class;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TCustom:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TTCustom;>;)",
            "Ljava/util/List<",
            "TTCustom;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/language/CursorResult;->cursor:Lcom/raizlabs/android/dbflow/structure/database/FlowCursor;

    if-eqz v0, :cond_0

    .line 74
    invoke-static {p1}, Lcom/raizlabs/android/dbflow/config/FlowManager;->getQueryModelAdapter(Ljava/lang/Class;)Lcom/raizlabs/android/dbflow/structure/QueryModelAdapter;

    move-result-object p1

    .line 75
    invoke-virtual {p1}, Lcom/raizlabs/android/dbflow/structure/QueryModelAdapter;->getListModelLoader()Lcom/raizlabs/android/dbflow/sql/queriable/ListModelLoader;

    move-result-object p1

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/language/CursorResult;->cursor:Lcom/raizlabs/android/dbflow/structure/database/FlowCursor;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/raizlabs/android/dbflow/sql/queriable/ListModelLoader;->convertToData(Lcom/raizlabs/android/dbflow/structure/database/FlowCursor;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    return-object p1
.end method

.method public toCustomListClose(Ljava/lang/Class;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TCustom:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TTCustom;>;)",
            "Ljava/util/List<",
            "TTCustom;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/language/CursorResult;->cursor:Lcom/raizlabs/android/dbflow/structure/database/FlowCursor;

    if-eqz v0, :cond_0

    .line 83
    invoke-static {p1}, Lcom/raizlabs/android/dbflow/config/FlowManager;->getQueryModelAdapter(Ljava/lang/Class;)Lcom/raizlabs/android/dbflow/structure/QueryModelAdapter;

    move-result-object p1

    .line 84
    invoke-virtual {p1}, Lcom/raizlabs/android/dbflow/structure/QueryModelAdapter;->getListModelLoader()Lcom/raizlabs/android/dbflow/sql/queriable/ListModelLoader;

    move-result-object p1

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/language/CursorResult;->cursor:Lcom/raizlabs/android/dbflow/structure/database/FlowCursor;

    invoke-virtual {p1, v0}, Lcom/raizlabs/android/dbflow/sql/queriable/ListModelLoader;->load(Lcom/raizlabs/android/dbflow/structure/database/FlowCursor;)Ljava/util/List;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 85
    :goto_0
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/language/CursorResult;->close()V

    return-object p1
.end method

.method public toCustomModel(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TCustom:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TTCustom;>;)TTCustom;"
        }
    .end annotation

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/language/CursorResult;->cursor:Lcom/raizlabs/android/dbflow/structure/database/FlowCursor;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 112
    invoke-static {p1}, Lcom/raizlabs/android/dbflow/config/FlowManager;->getQueryModelAdapter(Ljava/lang/Class;)Lcom/raizlabs/android/dbflow/structure/QueryModelAdapter;

    move-result-object p1

    .line 113
    invoke-virtual {p1}, Lcom/raizlabs/android/dbflow/structure/QueryModelAdapter;->getSingleModelLoader()Lcom/raizlabs/android/dbflow/sql/queriable/SingleModelLoader;

    move-result-object p1

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/language/CursorResult;->cursor:Lcom/raizlabs/android/dbflow/structure/database/FlowCursor;

    invoke-virtual {p1, v0, v1}, Lcom/raizlabs/android/dbflow/sql/queriable/SingleModelLoader;->convertToData(Lcom/raizlabs/android/dbflow/structure/database/FlowCursor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    :cond_0
    return-object v1
.end method

.method public toCustomModelClose(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TCustom:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TTCustom;>;)TTCustom;"
        }
    .end annotation

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/language/CursorResult;->cursor:Lcom/raizlabs/android/dbflow/structure/database/FlowCursor;

    if-eqz v0, :cond_0

    .line 121
    invoke-static {p1}, Lcom/raizlabs/android/dbflow/config/FlowManager;->getQueryModelAdapter(Ljava/lang/Class;)Lcom/raizlabs/android/dbflow/structure/QueryModelAdapter;

    move-result-object p1

    .line 122
    invoke-virtual {p1}, Lcom/raizlabs/android/dbflow/structure/QueryModelAdapter;->getSingleModelLoader()Lcom/raizlabs/android/dbflow/sql/queriable/SingleModelLoader;

    move-result-object p1

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/language/CursorResult;->cursor:Lcom/raizlabs/android/dbflow/structure/database/FlowCursor;

    invoke-virtual {p1, v0}, Lcom/raizlabs/android/dbflow/sql/queriable/SingleModelLoader;->load(Lcom/raizlabs/android/dbflow/structure/database/FlowCursor;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 123
    :goto_0
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/language/CursorResult;->close()V

    return-object p1
.end method

.method public toList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TTModel;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/language/CursorResult;->cursor:Lcom/raizlabs/android/dbflow/structure/database/FlowCursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/language/CursorResult;->retrievalAdapter:Lcom/raizlabs/android/dbflow/structure/InstanceAdapter;

    .line 53
    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/structure/InstanceAdapter;->getListModelLoader()Lcom/raizlabs/android/dbflow/sql/queriable/ListModelLoader;

    move-result-object v0

    iget-object v1, p0, Lcom/raizlabs/android/dbflow/sql/language/CursorResult;->cursor:Lcom/raizlabs/android/dbflow/structure/database/FlowCursor;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/raizlabs/android/dbflow/sql/queriable/ListModelLoader;->convertToData(Lcom/raizlabs/android/dbflow/structure/database/FlowCursor;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    return-object v0
.end method

.method public toListClose()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TTModel;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/language/CursorResult;->cursor:Lcom/raizlabs/android/dbflow/structure/database/FlowCursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/language/CursorResult;->retrievalAdapter:Lcom/raizlabs/android/dbflow/structure/InstanceAdapter;

    .line 63
    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/structure/InstanceAdapter;->getListModelLoader()Lcom/raizlabs/android/dbflow/sql/queriable/ListModelLoader;

    move-result-object v0

    iget-object v1, p0, Lcom/raizlabs/android/dbflow/sql/language/CursorResult;->cursor:Lcom/raizlabs/android/dbflow/structure/database/FlowCursor;

    invoke-virtual {v0, v1}, Lcom/raizlabs/android/dbflow/sql/queriable/ListModelLoader;->load(Lcom/raizlabs/android/dbflow/structure/database/FlowCursor;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 65
    :goto_0
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/language/CursorResult;->close()V

    return-object v0
.end method

.method public toModel()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TTModel;"
        }
    .end annotation

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/language/CursorResult;->cursor:Lcom/raizlabs/android/dbflow/structure/database/FlowCursor;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/language/CursorResult;->retrievalAdapter:Lcom/raizlabs/android/dbflow/structure/InstanceAdapter;

    .line 94
    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/structure/InstanceAdapter;->getSingleModelLoader()Lcom/raizlabs/android/dbflow/sql/queriable/SingleModelLoader;

    move-result-object v0

    iget-object v2, p0, Lcom/raizlabs/android/dbflow/sql/language/CursorResult;->cursor:Lcom/raizlabs/android/dbflow/structure/database/FlowCursor;

    invoke-virtual {v0, v2, v1}, Lcom/raizlabs/android/dbflow/sql/queriable/SingleModelLoader;->convertToData(Lcom/raizlabs/android/dbflow/structure/database/FlowCursor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    :cond_0
    return-object v1
.end method

.method public toModelClose()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TTModel;"
        }
    .end annotation

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/language/CursorResult;->cursor:Lcom/raizlabs/android/dbflow/structure/database/FlowCursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/language/CursorResult;->retrievalAdapter:Lcom/raizlabs/android/dbflow/structure/InstanceAdapter;

    .line 102
    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/structure/InstanceAdapter;->getSingleModelLoader()Lcom/raizlabs/android/dbflow/sql/queriable/SingleModelLoader;

    move-result-object v0

    iget-object v1, p0, Lcom/raizlabs/android/dbflow/sql/language/CursorResult;->cursor:Lcom/raizlabs/android/dbflow/structure/database/FlowCursor;

    invoke-virtual {v0, v1}, Lcom/raizlabs/android/dbflow/sql/queriable/SingleModelLoader;->load(Lcom/raizlabs/android/dbflow/structure/database/FlowCursor;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 103
    :goto_0
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/language/CursorResult;->close()V

    return-object v0
.end method
