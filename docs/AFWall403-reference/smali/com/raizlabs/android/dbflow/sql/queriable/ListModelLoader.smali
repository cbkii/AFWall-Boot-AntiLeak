.class public Lcom/raizlabs/android/dbflow/sql/queriable/ListModelLoader;
.super Lcom/raizlabs/android/dbflow/sql/queriable/ModelLoader;
.source "ListModelLoader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TModel:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/raizlabs/android/dbflow/sql/queriable/ModelLoader<",
        "TTModel;",
        "Ljava/util/List<",
        "TTModel;>;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TTModel;>;)V"
        }
    .end annotation

    .line 19
    invoke-direct {p0, p1}, Lcom/raizlabs/android/dbflow/sql/queriable/ModelLoader;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic convertToData(Lcom/raizlabs/android/dbflow/structure/database/FlowCursor;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 15
    check-cast p2, Ljava/util/List;

    invoke-virtual {p0, p1, p2}, Lcom/raizlabs/android/dbflow/sql/queriable/ListModelLoader;->convertToData(Lcom/raizlabs/android/dbflow/structure/database/FlowCursor;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public convertToData(Lcom/raizlabs/android/dbflow/structure/database/FlowCursor;Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/raizlabs/android/dbflow/structure/database/FlowCursor;",
            "Ljava/util/List<",
            "TTModel;>;)",
            "Ljava/util/List<",
            "TTModel;>;"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 69
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0

    .line 71
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 74
    :goto_0
    invoke-virtual {p1}, Lcom/raizlabs/android/dbflow/structure/database/FlowCursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 76
    :cond_1
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/queriable/ListModelLoader;->getInstanceAdapter()Lcom/raizlabs/android/dbflow/structure/InstanceAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/structure/InstanceAdapter;->newInstance()Ljava/lang/Object;

    move-result-object v0

    .line 77
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/queriable/ListModelLoader;->getInstanceAdapter()Lcom/raizlabs/android/dbflow/structure/InstanceAdapter;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/raizlabs/android/dbflow/structure/InstanceAdapter;->loadFromCursor(Lcom/raizlabs/android/dbflow/structure/database/FlowCursor;Ljava/lang/Object;)V

    .line 78
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 79
    invoke-virtual {p1}, Lcom/raizlabs/android/dbflow/structure/database/FlowCursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_2
    return-object p2
.end method

.method public bridge synthetic load(Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 15
    invoke-virtual {p0, p1, p2}, Lcom/raizlabs/android/dbflow/sql/queriable/ListModelLoader;->load(Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic load(Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 15
    check-cast p3, Ljava/util/List;

    invoke-virtual {p0, p1, p2, p3}, Lcom/raizlabs/android/dbflow/sql/queriable/ListModelLoader;->load(Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic load(Lcom/raizlabs/android/dbflow/structure/database/FlowCursor;)Ljava/lang/Object;
    .locals 0

    .line 15
    invoke-virtual {p0, p1}, Lcom/raizlabs/android/dbflow/sql/queriable/ListModelLoader;->load(Lcom/raizlabs/android/dbflow/structure/database/FlowCursor;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic load(Lcom/raizlabs/android/dbflow/structure/database/FlowCursor;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 15
    check-cast p2, Ljava/util/List;

    invoke-virtual {p0, p1, p2}, Lcom/raizlabs/android/dbflow/sql/queriable/ListModelLoader;->load(Lcom/raizlabs/android/dbflow/structure/database/FlowCursor;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic load(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 15
    invoke-virtual {p0, p1}, Lcom/raizlabs/android/dbflow/sql/queriable/ListModelLoader;->load(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic load(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 15
    check-cast p2, Ljava/util/List;

    invoke-virtual {p0, p1, p2}, Lcom/raizlabs/android/dbflow/sql/queriable/ListModelLoader;->load(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public load(Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;Ljava/lang/String;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "TTModel;>;"
        }
    .end annotation

    .line 37
    invoke-super {p0, p1, p2}, Lcom/raizlabs/android/dbflow/sql/queriable/ModelLoader;->load(Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    return-object p1
.end method

.method public load(Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "TTModel;>;)",
            "Ljava/util/List<",
            "TTModel;>;"
        }
    .end annotation

    .line 44
    invoke-super {p0, p1, p2, p3}, Lcom/raizlabs/android/dbflow/sql/queriable/ModelLoader;->load(Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    return-object p1
.end method

.method public load(Lcom/raizlabs/android/dbflow/structure/database/FlowCursor;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/raizlabs/android/dbflow/structure/database/FlowCursor;",
            ")",
            "Ljava/util/List<",
            "TTModel;>;"
        }
    .end annotation

    .line 50
    invoke-super {p0, p1}, Lcom/raizlabs/android/dbflow/sql/queriable/ModelLoader;->load(Lcom/raizlabs/android/dbflow/structure/database/FlowCursor;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    return-object p1
.end method

.method public load(Lcom/raizlabs/android/dbflow/structure/database/FlowCursor;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/raizlabs/android/dbflow/structure/database/FlowCursor;",
            "Ljava/util/List<",
            "TTModel;>;)",
            "Ljava/util/List<",
            "TTModel;>;"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 57
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0

    .line 59
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 61
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/raizlabs/android/dbflow/sql/queriable/ModelLoader;->load(Lcom/raizlabs/android/dbflow/structure/database/FlowCursor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    return-object p1
.end method

.method public load(Ljava/lang/String;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "TTModel;>;"
        }
    .end annotation

    .line 25
    invoke-super {p0, p1}, Lcom/raizlabs/android/dbflow/sql/queriable/ModelLoader;->load(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    return-object p1
.end method

.method public load(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "TTModel;>;)",
            "Ljava/util/List<",
            "TTModel;>;"
        }
    .end annotation

    .line 31
    invoke-super {p0, p1, p2}, Lcom/raizlabs/android/dbflow/sql/queriable/ModelLoader;->load(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    return-object p1
.end method
