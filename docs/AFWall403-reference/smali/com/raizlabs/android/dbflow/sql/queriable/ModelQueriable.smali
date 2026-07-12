.class public interface abstract Lcom/raizlabs/android/dbflow/sql/queriable/ModelQueriable;
.super Ljava/lang/Object;
.source "ModelQueriable.java"

# interfaces
.implements Lcom/raizlabs/android/dbflow/sql/queriable/Queriable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TModel:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/raizlabs/android/dbflow/sql/queriable/Queriable;"
    }
.end annotation


# virtual methods
.method public abstract async()Lcom/raizlabs/android/dbflow/sql/queriable/AsyncQuery;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/raizlabs/android/dbflow/sql/queriable/AsyncQuery<",
            "TTModel;>;"
        }
    .end annotation
.end method

.method public abstract cursorList()Lcom/raizlabs/android/dbflow/list/FlowCursorList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/raizlabs/android/dbflow/list/FlowCursorList<",
            "TTModel;>;"
        }
    .end annotation
.end method

.method public abstract disableCaching()Lcom/raizlabs/android/dbflow/sql/queriable/ModelQueriable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/raizlabs/android/dbflow/sql/queriable/ModelQueriable<",
            "TTModel;>;"
        }
    .end annotation
.end method

.method public abstract flowQueryList()Lcom/raizlabs/android/dbflow/list/FlowQueryList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/raizlabs/android/dbflow/list/FlowQueryList<",
            "TTModel;>;"
        }
    .end annotation
.end method

.method public abstract getTable()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "TTModel;>;"
        }
    .end annotation
.end method

.method public abstract queryCustomList(Ljava/lang/Class;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TQueryModel:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TTQueryModel;>;)",
            "Ljava/util/List<",
            "TTQueryModel;>;"
        }
    .end annotation
.end method

.method public abstract queryCustomSingle(Ljava/lang/Class;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TQueryModel:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TTQueryModel;>;)TTQueryModel;"
        }
    .end annotation
.end method

.method public abstract queryList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TTModel;>;"
        }
    .end annotation
.end method

.method public abstract queryList(Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;",
            ")",
            "Ljava/util/List<",
            "TTModel;>;"
        }
    .end annotation
.end method

.method public abstract queryResults()Lcom/raizlabs/android/dbflow/sql/language/CursorResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/raizlabs/android/dbflow/sql/language/CursorResult<",
            "TTModel;>;"
        }
    .end annotation
.end method

.method public abstract querySingle()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TTModel;"
        }
    .end annotation
.end method

.method public abstract querySingle(Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;",
            ")TTModel;"
        }
    .end annotation
.end method
