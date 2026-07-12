.class public interface abstract Lcom/raizlabs/android/dbflow/sql/language/SQLOperator;
.super Ljava/lang/Object;
.source "SQLOperator.java"


# virtual methods
.method public abstract appendConditionToQuery(Lcom/raizlabs/android/dbflow/sql/QueryBuilder;)V
.end method

.method public abstract columnName()Ljava/lang/String;
.end method

.method public abstract hasSeparator()Z
.end method

.method public abstract operation()Ljava/lang/String;
.end method

.method public abstract separator(Ljava/lang/String;)Lcom/raizlabs/android/dbflow/sql/language/SQLOperator;
.end method

.method public abstract separator()Ljava/lang/String;
.end method

.method public abstract value()Ljava/lang/Object;
.end method
