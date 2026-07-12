.class public interface abstract annotation Lcom/raizlabs/android/dbflow/annotation/ColumnMapReference;
.super Ljava/lang/Object;
.source "ColumnMapReference.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lcom/raizlabs/android/dbflow/annotation/ColumnMapReference;
        notNull = .subannotation Lcom/raizlabs/android/dbflow/annotation/NotNull;
            onNullConflict = .enum Lcom/raizlabs/android/dbflow/annotation/ConflictAction;->NONE:Lcom/raizlabs/android/dbflow/annotation/ConflictAction;
        .end subannotation
    .end subannotation
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->CLASS:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->FIELD:Ljava/lang/annotation/ElementType;
    }
.end annotation


# virtual methods
.method public abstract columnMapFieldName()Ljava/lang/String;
.end method

.method public abstract columnName()Ljava/lang/String;
.end method

.method public abstract notNull()Lcom/raizlabs/android/dbflow/annotation/NotNull;
.end method
