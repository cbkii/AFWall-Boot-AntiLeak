.class public interface abstract Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;
.super Ljava/lang/Object;
.source "DatabaseWrapper.java"


# virtual methods
.method public abstract beginTransaction()V
.end method

.method public abstract compileStatement(Ljava/lang/String;)Lcom/raizlabs/android/dbflow/structure/database/DatabaseStatement;
.end method

.method public abstract delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
.end method

.method public abstract endTransaction()V
.end method

.method public abstract execSQL(Ljava/lang/String;)V
.end method

.method public abstract getVersion()I
.end method

.method public abstract insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J
.end method

.method public abstract query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/raizlabs/android/dbflow/structure/database/FlowCursor;
.end method

.method public abstract rawQuery(Ljava/lang/String;[Ljava/lang/String;)Lcom/raizlabs/android/dbflow/structure/database/FlowCursor;
.end method

.method public abstract setTransactionSuccessful()V
.end method

.method public abstract updateWithOnConflict(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;I)J
.end method
