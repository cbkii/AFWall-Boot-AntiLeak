.class public Lcom/raizlabs/android/dbflow/structure/database/FlowCursor;
.super Landroid/database/CursorWrapper;
.source "FlowCursor.java"


# instance fields
.field private cursor:Landroid/database/Cursor;


# direct methods
.method private constructor <init>(Landroid/database/Cursor;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1}, Landroid/database/CursorWrapper;-><init>(Landroid/database/Cursor;)V

    iput-object p1, p0, Lcom/raizlabs/android/dbflow/structure/database/FlowCursor;->cursor:Landroid/database/Cursor;

    return-void
.end method

.method public static from(Landroid/database/Cursor;)Lcom/raizlabs/android/dbflow/structure/database/FlowCursor;
    .locals 1

    .line 15
    instance-of v0, p0, Lcom/raizlabs/android/dbflow/structure/database/FlowCursor;

    if-eqz v0, :cond_0

    .line 16
    check-cast p0, Lcom/raizlabs/android/dbflow/structure/database/FlowCursor;

    return-object p0

    .line 18
    :cond_0
    new-instance v0, Lcom/raizlabs/android/dbflow/structure/database/FlowCursor;

    invoke-direct {v0, p0}, Lcom/raizlabs/android/dbflow/structure/database/FlowCursor;-><init>(Landroid/database/Cursor;)V

    return-object v0
.end method


# virtual methods
.method public getBlobOrDefault(I)[B
    .locals 1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/structure/database/FlowCursor;->cursor:Landroid/database/Cursor;

    .line 245
    invoke-interface {v0, p1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/structure/database/FlowCursor;->cursor:Landroid/database/Cursor;

    .line 246
    invoke-interface {v0, p1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getBlobOrDefault(I[B)[B
    .locals 1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/structure/database/FlowCursor;->cursor:Landroid/database/Cursor;

    .line 253
    invoke-interface {v0, p1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p2, p0, Lcom/raizlabs/android/dbflow/structure/database/FlowCursor;->cursor:Landroid/database/Cursor;

    .line 254
    invoke-interface {p2, p1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object p1

    return-object p1

    :cond_0
    return-object p2
.end method

.method public getBlobOrDefault(Ljava/lang/String;)[B
    .locals 1

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/structure/database/FlowCursor;->cursor:Landroid/database/Cursor;

    .line 241
    invoke-interface {v0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/raizlabs/android/dbflow/structure/database/FlowCursor;->getBlobOrDefault(I)[B

    move-result-object p1

    return-object p1
.end method

.method public getBlobOrDefault(Ljava/lang/String;[B)[B
    .locals 1

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/structure/database/FlowCursor;->cursor:Landroid/database/Cursor;

    .line 261
    invoke-interface {v0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1, p2}, Lcom/raizlabs/android/dbflow/structure/database/FlowCursor;->getBlobOrDefault(I[B)[B

    move-result-object p1

    return-object p1
.end method

.method public getBoolean(I)Z
    .locals 1

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/structure/database/FlowCursor;->cursor:Landroid/database/Cursor;

    .line 289
    invoke-interface {v0, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getBooleanOrDefault(I)Z
    .locals 1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/structure/database/FlowCursor;->cursor:Landroid/database/Cursor;

    .line 277
    invoke-interface {v0, p1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 278
    invoke-virtual {p0, p1}, Lcom/raizlabs/android/dbflow/structure/database/FlowCursor;->getBoolean(I)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public getBooleanOrDefault(IZ)Z
    .locals 1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/structure/database/FlowCursor;->cursor:Landroid/database/Cursor;

    .line 265
    invoke-interface {v0, p1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 266
    invoke-virtual {p0, p1}, Lcom/raizlabs/android/dbflow/structure/database/FlowCursor;->getBoolean(I)Z

    move-result p1

    return p1

    :cond_0
    return p2
.end method

.method public getBooleanOrDefault(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/structure/database/FlowCursor;->cursor:Landroid/database/Cursor;

    .line 273
    invoke-interface {v0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/raizlabs/android/dbflow/structure/database/FlowCursor;->getBooleanOrDefault(I)Z

    move-result p1

    return p1
.end method

.method public getBooleanOrDefault(Ljava/lang/String;Z)Z
    .locals 1

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/structure/database/FlowCursor;->cursor:Landroid/database/Cursor;

    .line 285
    invoke-interface {v0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1, p2}, Lcom/raizlabs/android/dbflow/structure/database/FlowCursor;->getBooleanOrDefault(IZ)Z

    move-result p1

    return p1
.end method

.method public getDoubleOrDefault(I)D
    .locals 2

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/structure/database/FlowCursor;->cursor:Landroid/database/Cursor;

    .line 109
    invoke-interface {v0, p1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/structure/database/FlowCursor;->cursor:Landroid/database/Cursor;

    .line 110
    invoke-interface {v0, p1}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getDoubleOrDefault(ID)D
    .locals 1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/structure/database/FlowCursor;->cursor:Landroid/database/Cursor;

    .line 97
    invoke-interface {v0, p1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p2, p0, Lcom/raizlabs/android/dbflow/structure/database/FlowCursor;->cursor:Landroid/database/Cursor;

    .line 98
    invoke-interface {p2, p1}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide p1

    return-wide p1

    :cond_0
    return-wide p2
.end method

.method public getDoubleOrDefault(Ljava/lang/String;)D
    .locals 2

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/structure/database/FlowCursor;->cursor:Landroid/database/Cursor;

    .line 105
    invoke-interface {v0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/raizlabs/android/dbflow/structure/database/FlowCursor;->getDoubleOrDefault(I)D

    move-result-wide v0

    return-wide v0
.end method

.method public getDoubleOrDefault(Ljava/lang/String;D)D
    .locals 1

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/structure/database/FlowCursor;->cursor:Landroid/database/Cursor;

    .line 117
    invoke-interface {v0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1, p2, p3}, Lcom/raizlabs/android/dbflow/structure/database/FlowCursor;->getDoubleOrDefault(ID)D

    move-result-wide p1

    return-wide p1
.end method

.method public getDoubleOrDefault(ILjava/lang/Double;)Ljava/lang/Double;
    .locals 1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/structure/database/FlowCursor;->cursor:Landroid/database/Cursor;

    .line 121
    invoke-interface {v0, p1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p2, p0, Lcom/raizlabs/android/dbflow/structure/database/FlowCursor;->cursor:Landroid/database/Cursor;

    .line 122
    invoke-interface {p2, p1}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1

    :cond_0
    return-object p2
.end method

.method public getDoubleOrDefault(Ljava/lang/String;Ljava/lang/Double;)Ljava/lang/Double;
    .locals 1

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/structure/database/FlowCursor;->cursor:Landroid/database/Cursor;

    .line 129
    invoke-interface {v0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1, p2}, Lcom/raizlabs/android/dbflow/structure/database/FlowCursor;->getDoubleOrDefault(ILjava/lang/Double;)Ljava/lang/Double;

    move-result-object p1

    return-object p1
.end method

.method public getFloatOrDefault(I)F
    .locals 1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/structure/database/FlowCursor;->cursor:Landroid/database/Cursor;

    .line 145
    invoke-interface {v0, p1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/structure/database/FlowCursor;->cursor:Landroid/database/Cursor;

    .line 146
    invoke-interface {v0, p1}, Landroid/database/Cursor;->getFloat(I)F

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public getFloatOrDefault(IF)F
    .locals 1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/structure/database/FlowCursor;->cursor:Landroid/database/Cursor;

    .line 133
    invoke-interface {v0, p1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p2, p0, Lcom/raizlabs/android/dbflow/structure/database/FlowCursor;->cursor:Landroid/database/Cursor;

    .line 134
    invoke-interface {p2, p1}, Landroid/database/Cursor;->getFloat(I)F

    move-result p1

    return p1

    :cond_0
    return p2
.end method

.method public getFloatOrDefault(Ljava/lang/String;)F
    .locals 1

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/structure/database/FlowCursor;->cursor:Landroid/database/Cursor;

    .line 141
    invoke-interface {v0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/raizlabs/android/dbflow/structure/database/FlowCursor;->getFloatOrDefault(I)F

    move-result p1

    return p1
.end method

.method public getFloatOrDefault(Ljava/lang/String;F)F
    .locals 1

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/structure/database/FlowCursor;->cursor:Landroid/database/Cursor;

    .line 153
    invoke-interface {v0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1, p2}, Lcom/raizlabs/android/dbflow/structure/database/FlowCursor;->getFloatOrDefault(IF)F

    move-result p1

    return p1
.end method

.method public getFloatOrDefault(ILjava/lang/Float;)Ljava/lang/Float;
    .locals 1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/structure/database/FlowCursor;->cursor:Landroid/database/Cursor;

    .line 157
    invoke-interface {v0, p1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p2, p0, Lcom/raizlabs/android/dbflow/structure/database/FlowCursor;->cursor:Landroid/database/Cursor;

    .line 158
    invoke-interface {p2, p1}, Landroid/database/Cursor;->getFloat(I)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1

    :cond_0
    return-object p2
.end method

.method public getFloatOrDefault(Ljava/lang/String;Ljava/lang/Float;)Ljava/lang/Float;
    .locals 1

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/structure/database/FlowCursor;->cursor:Landroid/database/Cursor;

    .line 165
    invoke-interface {v0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1, p2}, Lcom/raizlabs/android/dbflow/structure/database/FlowCursor;->getFloatOrDefault(ILjava/lang/Float;)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public getIntOrDefault(I)I
    .locals 1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/structure/database/FlowCursor;->cursor:Landroid/database/Cursor;

    .line 65
    invoke-interface {v0, p1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/structure/database/FlowCursor;->cursor:Landroid/database/Cursor;

    .line 66
    invoke-interface {v0, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public getIntOrDefault(II)I
    .locals 1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/structure/database/FlowCursor;->cursor:Landroid/database/Cursor;

    .line 73
    invoke-interface {v0, p1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p2, p0, Lcom/raizlabs/android/dbflow/structure/database/FlowCursor;->cursor:Landroid/database/Cursor;

    .line 74
    invoke-interface {p2, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    return p1

    :cond_0
    return p2
.end method

.method public getIntOrDefault(Ljava/lang/String;)I
    .locals 1

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/structure/database/FlowCursor;->cursor:Landroid/database/Cursor;

    .line 61
    invoke-interface {v0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/raizlabs/android/dbflow/structure/database/FlowCursor;->getIntOrDefault(I)I

    move-result p1

    return p1
.end method

.method public getIntOrDefault(Ljava/lang/String;I)I
    .locals 1

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/structure/database/FlowCursor;->cursor:Landroid/database/Cursor;

    .line 81
    invoke-interface {v0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1, p2}, Lcom/raizlabs/android/dbflow/structure/database/FlowCursor;->getIntOrDefault(II)I

    move-result p1

    return p1
.end method

.method public getIntOrDefault(ILjava/lang/Integer;)Ljava/lang/Integer;
    .locals 1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/structure/database/FlowCursor;->cursor:Landroid/database/Cursor;

    .line 85
    invoke-interface {v0, p1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p2, p0, Lcom/raizlabs/android/dbflow/structure/database/FlowCursor;->cursor:Landroid/database/Cursor;

    .line 86
    invoke-interface {p2, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_0
    return-object p2
.end method

.method public getIntOrDefault(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/structure/database/FlowCursor;->cursor:Landroid/database/Cursor;

    .line 93
    invoke-interface {v0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1, p2}, Lcom/raizlabs/android/dbflow/structure/database/FlowCursor;->getIntOrDefault(ILjava/lang/Integer;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public getLongOrDefault(I)J
    .locals 2

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/structure/database/FlowCursor;->cursor:Landroid/database/Cursor;

    .line 181
    invoke-interface {v0, p1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/structure/database/FlowCursor;->cursor:Landroid/database/Cursor;

    .line 182
    invoke-interface {v0, p1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getLongOrDefault(IJ)J
    .locals 1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/structure/database/FlowCursor;->cursor:Landroid/database/Cursor;

    .line 169
    invoke-interface {v0, p1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p2, p0, Lcom/raizlabs/android/dbflow/structure/database/FlowCursor;->cursor:Landroid/database/Cursor;

    .line 170
    invoke-interface {p2, p1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide p1

    return-wide p1

    :cond_0
    return-wide p2
.end method

.method public getLongOrDefault(Ljava/lang/String;)J
    .locals 2

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/structure/database/FlowCursor;->cursor:Landroid/database/Cursor;

    .line 177
    invoke-interface {v0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/raizlabs/android/dbflow/structure/database/FlowCursor;->getLongOrDefault(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getLongOrDefault(Ljava/lang/String;J)J
    .locals 1

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/structure/database/FlowCursor;->cursor:Landroid/database/Cursor;

    .line 189
    invoke-interface {v0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1, p2, p3}, Lcom/raizlabs/android/dbflow/structure/database/FlowCursor;->getLongOrDefault(IJ)J

    move-result-wide p1

    return-wide p1
.end method

.method public getLongOrDefault(ILjava/lang/Long;)Ljava/lang/Long;
    .locals 1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/structure/database/FlowCursor;->cursor:Landroid/database/Cursor;

    .line 193
    invoke-interface {v0, p1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p2, p0, Lcom/raizlabs/android/dbflow/structure/database/FlowCursor;->cursor:Landroid/database/Cursor;

    .line 194
    invoke-interface {p2, p1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    :cond_0
    return-object p2
.end method

.method public getLongOrDefault(Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/structure/database/FlowCursor;->cursor:Landroid/database/Cursor;

    .line 201
    invoke-interface {v0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1, p2}, Lcom/raizlabs/android/dbflow/structure/database/FlowCursor;->getLongOrDefault(ILjava/lang/Long;)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method public getShortOrDefault(ILjava/lang/Short;)Ljava/lang/Short;
    .locals 1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/structure/database/FlowCursor;->cursor:Landroid/database/Cursor;

    .line 229
    invoke-interface {v0, p1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p2, p0, Lcom/raizlabs/android/dbflow/structure/database/FlowCursor;->cursor:Landroid/database/Cursor;

    .line 230
    invoke-interface {p2, p1}, Landroid/database/Cursor;->getShort(I)S

    move-result p1

    invoke-static {p1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p1

    return-object p1

    :cond_0
    return-object p2
.end method

.method public getShortOrDefault(Ljava/lang/String;Ljava/lang/Short;)Ljava/lang/Short;
    .locals 1

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/structure/database/FlowCursor;->cursor:Landroid/database/Cursor;

    .line 237
    invoke-interface {v0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1, p2}, Lcom/raizlabs/android/dbflow/structure/database/FlowCursor;->getShortOrDefault(ILjava/lang/Short;)Ljava/lang/Short;

    move-result-object p1

    return-object p1
.end method

.method public getShortOrDefault(I)S
    .locals 1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/structure/database/FlowCursor;->cursor:Landroid/database/Cursor;

    .line 217
    invoke-interface {v0, p1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/structure/database/FlowCursor;->cursor:Landroid/database/Cursor;

    .line 218
    invoke-interface {v0, p1}, Landroid/database/Cursor;->getShort(I)S

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public getShortOrDefault(IS)S
    .locals 1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/structure/database/FlowCursor;->cursor:Landroid/database/Cursor;

    .line 205
    invoke-interface {v0, p1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p2, p0, Lcom/raizlabs/android/dbflow/structure/database/FlowCursor;->cursor:Landroid/database/Cursor;

    .line 206
    invoke-interface {p2, p1}, Landroid/database/Cursor;->getShort(I)S

    move-result p1

    return p1

    :cond_0
    return p2
.end method

.method public getShortOrDefault(Ljava/lang/String;)S
    .locals 1

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/structure/database/FlowCursor;->cursor:Landroid/database/Cursor;

    .line 213
    invoke-interface {v0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/raizlabs/android/dbflow/structure/database/FlowCursor;->getShortOrDefault(I)S

    move-result p1

    return p1
.end method

.method public getShortOrDefault(Ljava/lang/String;S)S
    .locals 1

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/structure/database/FlowCursor;->cursor:Landroid/database/Cursor;

    .line 225
    invoke-interface {v0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1, p2}, Lcom/raizlabs/android/dbflow/structure/database/FlowCursor;->getShortOrDefault(IS)S

    move-result p1

    return p1
.end method

.method public getStringOrDefault(I)Ljava/lang/String;
    .locals 1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/structure/database/FlowCursor;->cursor:Landroid/database/Cursor;

    .line 49
    invoke-interface {v0, p1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/structure/database/FlowCursor;->cursor:Landroid/database/Cursor;

    .line 50
    invoke-interface {v0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getStringOrDefault(ILjava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/structure/database/FlowCursor;->cursor:Landroid/database/Cursor;

    .line 35
    invoke-interface {v0, p1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p2, p0, Lcom/raizlabs/android/dbflow/structure/database/FlowCursor;->cursor:Landroid/database/Cursor;

    .line 36
    invoke-interface {p2, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    return-object p2
.end method

.method public getStringOrDefault(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/structure/database/FlowCursor;->cursor:Landroid/database/Cursor;

    .line 44
    invoke-interface {v0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/raizlabs/android/dbflow/structure/database/FlowCursor;->getStringOrDefault(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getStringOrDefault(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/structure/database/FlowCursor;->cursor:Landroid/database/Cursor;

    .line 57
    invoke-interface {v0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1, p2}, Lcom/raizlabs/android/dbflow/structure/database/FlowCursor;->getStringOrDefault(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getWrappedCursor()Landroid/database/Cursor;
    .locals 1

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/structure/database/FlowCursor;->cursor:Landroid/database/Cursor;

    return-object v0
.end method
