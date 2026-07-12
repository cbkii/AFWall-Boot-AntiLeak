.class public interface abstract annotation Lcom/raizlabs/android/dbflow/annotation/ForeignKeyReference;
.super Ljava/lang/Object;
.source "ForeignKeyReference.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lcom/raizlabs/android/dbflow/annotation/ForeignKeyReference;
        notNull = .subannotation Lcom/raizlabs/android/dbflow/annotation/NotNull;
            onNullConflict = .enum Lcom/raizlabs/android/dbflow/annotation/ConflictAction;->NONE:Lcom/raizlabs/android/dbflow/annotation/ConflictAction;
        .end subannotation
    .end subannotation
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation


# virtual methods
.method public abstract columnName()Ljava/lang/String;
.end method

.method public abstract foreignKeyColumnName()Ljava/lang/String;
.end method

.method public abstract notNull()Lcom/raizlabs/android/dbflow/annotation/NotNull;
.end method
