.class public abstract Lcom/raizlabs/android/dbflow/structure/database/BaseDatabaseStatement;
.super Ljava/lang/Object;
.source "BaseDatabaseStatement.java"

# interfaces
.implements Lcom/raizlabs/android/dbflow/structure/database/DatabaseStatement;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bindBlobOrNull(I[B)V
    .locals 0

    if-eqz p2, :cond_0

    .line 54
    invoke-virtual {p0, p1, p2}, Lcom/raizlabs/android/dbflow/structure/database/BaseDatabaseStatement;->bindBlob(I[B)V

    goto :goto_0

    .line 56
    :cond_0
    invoke-virtual {p0, p1}, Lcom/raizlabs/android/dbflow/structure/database/BaseDatabaseStatement;->bindNull(I)V

    :goto_0
    return-void
.end method

.method public bindDoubleOrNull(ILjava/lang/Double;)V
    .locals 2

    if-eqz p2, :cond_0

    .line 36
    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Lcom/raizlabs/android/dbflow/structure/database/BaseDatabaseStatement;->bindDouble(ID)V

    goto :goto_0

    .line 38
    :cond_0
    invoke-virtual {p0, p1}, Lcom/raizlabs/android/dbflow/structure/database/BaseDatabaseStatement;->bindNull(I)V

    :goto_0
    return-void
.end method

.method public bindFloatOrNull(ILjava/lang/Float;)V
    .locals 2

    if-eqz p2, :cond_0

    .line 45
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    float-to-double v0, p2

    invoke-virtual {p0, p1, v0, v1}, Lcom/raizlabs/android/dbflow/structure/database/BaseDatabaseStatement;->bindDouble(ID)V

    goto :goto_0

    .line 47
    :cond_0
    invoke-virtual {p0, p1}, Lcom/raizlabs/android/dbflow/structure/database/BaseDatabaseStatement;->bindNull(I)V

    :goto_0
    return-void
.end method

.method public bindNumber(ILjava/lang/Number;)V
    .locals 0

    .line 21
    invoke-virtual {p0, p1, p2}, Lcom/raizlabs/android/dbflow/structure/database/BaseDatabaseStatement;->bindNumberOrNull(ILjava/lang/Number;)V

    return-void
.end method

.method public bindNumberOrNull(ILjava/lang/Number;)V
    .locals 2

    if-eqz p2, :cond_0

    .line 27
    invoke-virtual {p2}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Lcom/raizlabs/android/dbflow/structure/database/BaseDatabaseStatement;->bindLong(IJ)V

    goto :goto_0

    .line 29
    :cond_0
    invoke-virtual {p0, p1}, Lcom/raizlabs/android/dbflow/structure/database/BaseDatabaseStatement;->bindNull(I)V

    :goto_0
    return-void
.end method

.method public bindStringOrNull(ILjava/lang/String;)V
    .locals 0

    if-eqz p2, :cond_0

    .line 13
    invoke-virtual {p0, p1, p2}, Lcom/raizlabs/android/dbflow/structure/database/BaseDatabaseStatement;->bindString(ILjava/lang/String;)V

    goto :goto_0

    .line 15
    :cond_0
    invoke-virtual {p0, p1}, Lcom/raizlabs/android/dbflow/structure/database/BaseDatabaseStatement;->bindNull(I)V

    :goto_0
    return-void
.end method
