.class Ldev/ukanth/ufirewall/util/SlidingTabLayout$TabClickListener;
.super Ljava/lang/Object;
.source "SlidingTabLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldev/ukanth/ufirewall/util/SlidingTabLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TabClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Ldev/ukanth/ufirewall/util/SlidingTabLayout;


# direct methods
.method private constructor <init>(Ldev/ukanth/ufirewall/util/SlidingTabLayout;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Ldev/ukanth/ufirewall/util/SlidingTabLayout$TabClickListener;->this$0:Ldev/ukanth/ufirewall/util/SlidingTabLayout;

    .line 285
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Ldev/ukanth/ufirewall/util/SlidingTabLayout;Ldev/ukanth/ufirewall/util/SlidingTabLayout$TabClickListener-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Ldev/ukanth/ufirewall/util/SlidingTabLayout$TabClickListener;-><init>(Ldev/ukanth/ufirewall/util/SlidingTabLayout;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Ldev/ukanth/ufirewall/util/SlidingTabLayout$TabClickListener;->this$0:Ldev/ukanth/ufirewall/util/SlidingTabLayout;

    .line 301
    invoke-static {v1}, Ldev/ukanth/ufirewall/util/SlidingTabLayout;->-$$Nest$fgetmTabStrip(Ldev/ukanth/ufirewall/util/SlidingTabLayout;)Ldev/ukanth/ufirewall/util/SlidingTabStrip;

    move-result-object v1

    invoke-virtual {v1}, Ldev/ukanth/ufirewall/util/SlidingTabStrip;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Ldev/ukanth/ufirewall/util/SlidingTabLayout$TabClickListener;->this$0:Ldev/ukanth/ufirewall/util/SlidingTabLayout;

    .line 302
    invoke-static {v1}, Ldev/ukanth/ufirewall/util/SlidingTabLayout;->-$$Nest$fgetmTabStrip(Ldev/ukanth/ufirewall/util/SlidingTabLayout;)Ldev/ukanth/ufirewall/util/SlidingTabStrip;

    move-result-object v1

    invoke-virtual {v1, v0}, Ldev/ukanth/ufirewall/util/SlidingTabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-ne p1, v1, :cond_0

    iget-object p1, p0, Ldev/ukanth/ufirewall/util/SlidingTabLayout$TabClickListener;->this$0:Ldev/ukanth/ufirewall/util/SlidingTabLayout;

    .line 303
    invoke-static {p1}, Ldev/ukanth/ufirewall/util/SlidingTabLayout;->-$$Nest$fgetmViewPager(Ldev/ukanth/ufirewall/util/SlidingTabLayout;)Landroidx/viewpager/widget/ViewPager;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
