.class public interface abstract Lcom/raizlabs/android/dbflow/structure/Model;
.super Ljava/lang/Object;
.source "Model.java"

# interfaces
.implements Lcom/raizlabs/android/dbflow/structure/ReadOnlyModel;


# static fields
.field public static final INVALID_ROW_ID:J = -0x1L


# virtual methods
.method public abstract async()Lcom/raizlabs/android/dbflow/structure/AsyncModel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/raizlabs/android/dbflow/structure/AsyncModel<",
            "+",
            "Lcom/raizlabs/android/dbflow/structure/Model;",
            ">;"
        }
    .end annotation
.end method

.method public abstract delete()Z
.end method

.method public abstract delete(Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;)Z
.end method

.method public abstract insert()J
.end method

.method public abstract insert(Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;)J
.end method

.method public abstract save()Z
.end method

.method public abstract save(Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;)Z
.end method

.method public abstract update()Z
.end method

.method public abstract update(Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;)Z
.end method
