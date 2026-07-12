.class public Lhaibison/android/lockpattern/utils/ResUtils;
.super Ljava/lang/Object;
.source "ResUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static resolveResourceId(Landroid/content/Context;I)I
    .locals 1

    const/4 v0, 0x0

    .line 45
    invoke-static {p0, p1, v0}, Lhaibison/android/lockpattern/utils/ResUtils;->resolveResourceId(Landroid/content/Context;II)I

    move-result p0

    return p0
.end method

.method public static resolveResourceId(Landroid/content/Context;II)I
    .locals 2

    .line 57
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 58
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result p0

    if-eqz p0, :cond_0

    iget p0, v0, Landroid/util/TypedValue;->resourceId:I

    return p0

    :cond_0
    return p2
.end method
