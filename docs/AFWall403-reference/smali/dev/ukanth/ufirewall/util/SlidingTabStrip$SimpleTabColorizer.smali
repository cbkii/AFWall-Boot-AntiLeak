.class Ldev/ukanth/ufirewall/util/SlidingTabStrip$SimpleTabColorizer;
.super Ljava/lang/Object;
.source "SlidingTabStrip.java"

# interfaces
.implements Ldev/ukanth/ufirewall/util/SlidingTabLayout$TabColorizer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldev/ukanth/ufirewall/util/SlidingTabStrip;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SimpleTabColorizer"
.end annotation


# instance fields
.field private mIndicatorColors:[I


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Ldev/ukanth/ufirewall/util/SlidingTabStrip$SimpleTabColorizer-IA;)V
    .locals 0

    invoke-direct {p0}, Ldev/ukanth/ufirewall/util/SlidingTabStrip$SimpleTabColorizer;-><init>()V

    return-void
.end method


# virtual methods
.method public final getIndicatorColor(I)I
    .locals 2

    iget-object v0, p0, Ldev/ukanth/ufirewall/util/SlidingTabStrip$SimpleTabColorizer;->mIndicatorColors:[I

    .line 147
    array-length v1, v0

    rem-int/2addr p1, v1

    aget p1, v0, p1

    return p1
.end method

.method varargs setIndicatorColors([I)V
    .locals 0

    iput-object p1, p0, Ldev/ukanth/ufirewall/util/SlidingTabStrip$SimpleTabColorizer;->mIndicatorColors:[I

    return-void
.end method
