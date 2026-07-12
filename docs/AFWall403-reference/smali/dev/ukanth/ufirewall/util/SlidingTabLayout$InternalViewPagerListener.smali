.class Ldev/ukanth/ufirewall/util/SlidingTabLayout$InternalViewPagerListener;
.super Ljava/lang/Object;
.source "SlidingTabLayout.java"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldev/ukanth/ufirewall/util/SlidingTabLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InternalViewPagerListener"
.end annotation


# instance fields
.field private mScrollState:I

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

    iput-object p1, p0, Ldev/ukanth/ufirewall/util/SlidingTabLayout$InternalViewPagerListener;->this$0:Ldev/ukanth/ufirewall/util/SlidingTabLayout;

    .line 236
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Ldev/ukanth/ufirewall/util/SlidingTabLayout;Ldev/ukanth/ufirewall/util/SlidingTabLayout$InternalViewPagerListener-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Ldev/ukanth/ufirewall/util/SlidingTabLayout$InternalViewPagerListener;-><init>(Ldev/ukanth/ufirewall/util/SlidingTabLayout;)V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 1

    iput p1, p0, Ldev/ukanth/ufirewall/util/SlidingTabLayout$InternalViewPagerListener;->mScrollState:I

    iget-object v0, p0, Ldev/ukanth/ufirewall/util/SlidingTabLayout$InternalViewPagerListener;->this$0:Ldev/ukanth/ufirewall/util/SlidingTabLayout;

    .line 264
    invoke-static {v0}, Ldev/ukanth/ufirewall/util/SlidingTabLayout;->-$$Nest$fgetmViewPagerPageChangeListener(Ldev/ukanth/ufirewall/util/SlidingTabLayout;)Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldev/ukanth/ufirewall/util/SlidingTabLayout$InternalViewPagerListener;->this$0:Ldev/ukanth/ufirewall/util/SlidingTabLayout;

    .line 265
    invoke-static {v0}, Ldev/ukanth/ufirewall/util/SlidingTabLayout;->-$$Nest$fgetmViewPagerPageChangeListener(Ldev/ukanth/ufirewall/util/SlidingTabLayout;)Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;->onPageScrollStateChanged(I)V

    :cond_0
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 2

    iget-object v0, p0, Ldev/ukanth/ufirewall/util/SlidingTabLayout$InternalViewPagerListener;->this$0:Ldev/ukanth/ufirewall/util/SlidingTabLayout;

    .line 241
    invoke-static {v0}, Ldev/ukanth/ufirewall/util/SlidingTabLayout;->-$$Nest$fgetmTabStrip(Ldev/ukanth/ufirewall/util/SlidingTabLayout;)Ldev/ukanth/ufirewall/util/SlidingTabStrip;

    move-result-object v0

    invoke-virtual {v0}, Ldev/ukanth/ufirewall/util/SlidingTabStrip;->getChildCount()I

    move-result v0

    if-eqz v0, :cond_2

    if-ltz p1, :cond_2

    if-lt p1, v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Ldev/ukanth/ufirewall/util/SlidingTabLayout$InternalViewPagerListener;->this$0:Ldev/ukanth/ufirewall/util/SlidingTabLayout;

    .line 246
    invoke-static {v0}, Ldev/ukanth/ufirewall/util/SlidingTabLayout;->-$$Nest$fgetmTabStrip(Ldev/ukanth/ufirewall/util/SlidingTabLayout;)Ldev/ukanth/ufirewall/util/SlidingTabStrip;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ldev/ukanth/ufirewall/util/SlidingTabStrip;->onViewPagerPageChanged(IF)V

    iget-object v0, p0, Ldev/ukanth/ufirewall/util/SlidingTabLayout$InternalViewPagerListener;->this$0:Ldev/ukanth/ufirewall/util/SlidingTabLayout;

    .line 248
    invoke-static {v0}, Ldev/ukanth/ufirewall/util/SlidingTabLayout;->-$$Nest$fgetmTabStrip(Ldev/ukanth/ufirewall/util/SlidingTabLayout;)Ldev/ukanth/ufirewall/util/SlidingTabStrip;

    move-result-object v0

    invoke-virtual {v0, p1}, Ldev/ukanth/ufirewall/util/SlidingTabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 250
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float v0, v0, p2

    float-to-int v0, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Ldev/ukanth/ufirewall/util/SlidingTabLayout$InternalViewPagerListener;->this$0:Ldev/ukanth/ufirewall/util/SlidingTabLayout;

    .line 252
    invoke-static {v1, p1, v0}, Ldev/ukanth/ufirewall/util/SlidingTabLayout;->-$$Nest$mscrollToTab(Ldev/ukanth/ufirewall/util/SlidingTabLayout;II)V

    iget-object v0, p0, Ldev/ukanth/ufirewall/util/SlidingTabLayout$InternalViewPagerListener;->this$0:Ldev/ukanth/ufirewall/util/SlidingTabLayout;

    .line 254
    invoke-static {v0}, Ldev/ukanth/ufirewall/util/SlidingTabLayout;->-$$Nest$fgetmViewPagerPageChangeListener(Ldev/ukanth/ufirewall/util/SlidingTabLayout;)Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Ldev/ukanth/ufirewall/util/SlidingTabLayout$InternalViewPagerListener;->this$0:Ldev/ukanth/ufirewall/util/SlidingTabLayout;

    .line 255
    invoke-static {v0}, Ldev/ukanth/ufirewall/util/SlidingTabLayout;->-$$Nest$fgetmViewPagerPageChangeListener(Ldev/ukanth/ufirewall/util/SlidingTabLayout;)Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;->onPageScrolled(IFI)V

    :cond_2
    :goto_1
    return-void
.end method

.method public onPageSelected(I)V
    .locals 4

    iget v0, p0, Ldev/ukanth/ufirewall/util/SlidingTabLayout$InternalViewPagerListener;->mScrollState:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Ldev/ukanth/ufirewall/util/SlidingTabLayout$InternalViewPagerListener;->this$0:Ldev/ukanth/ufirewall/util/SlidingTabLayout;

    .line 272
    invoke-static {v0}, Ldev/ukanth/ufirewall/util/SlidingTabLayout;->-$$Nest$fgetmTabStrip(Ldev/ukanth/ufirewall/util/SlidingTabLayout;)Ldev/ukanth/ufirewall/util/SlidingTabStrip;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Ldev/ukanth/ufirewall/util/SlidingTabStrip;->onViewPagerPageChanged(IF)V

    iget-object v0, p0, Ldev/ukanth/ufirewall/util/SlidingTabLayout$InternalViewPagerListener;->this$0:Ldev/ukanth/ufirewall/util/SlidingTabLayout;

    .line 273
    invoke-static {v0, p1, v1}, Ldev/ukanth/ufirewall/util/SlidingTabLayout;->-$$Nest$mscrollToTab(Ldev/ukanth/ufirewall/util/SlidingTabLayout;II)V

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Ldev/ukanth/ufirewall/util/SlidingTabLayout$InternalViewPagerListener;->this$0:Ldev/ukanth/ufirewall/util/SlidingTabLayout;

    .line 275
    invoke-static {v2}, Ldev/ukanth/ufirewall/util/SlidingTabLayout;->-$$Nest$fgetmTabStrip(Ldev/ukanth/ufirewall/util/SlidingTabLayout;)Ldev/ukanth/ufirewall/util/SlidingTabStrip;

    move-result-object v2

    invoke-virtual {v2}, Ldev/ukanth/ufirewall/util/SlidingTabStrip;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_2

    iget-object v2, p0, Ldev/ukanth/ufirewall/util/SlidingTabLayout$InternalViewPagerListener;->this$0:Ldev/ukanth/ufirewall/util/SlidingTabLayout;

    .line 276
    invoke-static {v2}, Ldev/ukanth/ufirewall/util/SlidingTabLayout;->-$$Nest$fgetmTabStrip(Ldev/ukanth/ufirewall/util/SlidingTabLayout;)Ldev/ukanth/ufirewall/util/SlidingTabStrip;

    move-result-object v2

    invoke-virtual {v2, v0}, Ldev/ukanth/ufirewall/util/SlidingTabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-ne p1, v0, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    invoke-virtual {v2, v3}, Landroid/view/View;->setSelected(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Ldev/ukanth/ufirewall/util/SlidingTabLayout$InternalViewPagerListener;->this$0:Ldev/ukanth/ufirewall/util/SlidingTabLayout;

    .line 278
    invoke-static {v0}, Ldev/ukanth/ufirewall/util/SlidingTabLayout;->-$$Nest$fgetmViewPagerPageChangeListener(Ldev/ukanth/ufirewall/util/SlidingTabLayout;)Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Ldev/ukanth/ufirewall/util/SlidingTabLayout$InternalViewPagerListener;->this$0:Ldev/ukanth/ufirewall/util/SlidingTabLayout;

    .line 279
    invoke-static {v0}, Ldev/ukanth/ufirewall/util/SlidingTabLayout;->-$$Nest$fgetmViewPagerPageChangeListener(Ldev/ukanth/ufirewall/util/SlidingTabLayout;)Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    :cond_3
    return-void
.end method
