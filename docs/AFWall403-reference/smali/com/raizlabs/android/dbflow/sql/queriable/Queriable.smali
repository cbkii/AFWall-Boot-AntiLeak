.class public interface abstract Lcom/raizlabs/android/dbflow/sql/queriable/Queriable;
.super Ljava/lang/Object;
.source "Queriable.java"

# interfaces
.implements Lcom/raizlabs/android/dbflow/sql/Query;


# virtual methods
.method public abstract compileStatement()Lcom/raizlabs/android/dbflow/structure/database/DatabaseStatement;
.end method

.method public abstract compileStatement(Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;)Lcom/raizlabs/android/dbflow/structure/database/DatabaseStatement;
.end method

.method public abstract count()J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract count(Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;)J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract execute()V
.end method

.method public abstract execute(Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;)V
.end method

.method public abstract executeInsert()J
.end method

.method public abstract executeInsert(Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;)J
.end method

.method public abstract executeUpdateDelete()J
.end method

.method public abstract executeUpdateDelete(Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;)J
.end method

.method public abstract getPrimaryAction()Lcom/raizlabs/android/dbflow/structure/BaseModel$Action;
.end method

.method public abstract hasData()Z
.end method

.method public abstract hasData(Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;)Z
.end method

.method public abstract longValue()J
.end method

.method public abstract longValue(Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;)J
.end method

.method public abstract query()Lcom/raizlabs/android/dbflow/structure/database/FlowCursor;
.end method

.method public abstract query(Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;)Lcom/raizlabs/android/dbflow/structure/database/FlowCursor;
.end method
