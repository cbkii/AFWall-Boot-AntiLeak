.class public Ldev/ukanth/ufirewall/util/SlidingTabLayout;
.super Landroid/widget/HorizontalScrollView;
.source "SlidingTabLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldev/ukanth/ufirewall/util/SlidingTabLayout$TabColorizer;,
        Ldev/ukanth/ufirewall/util/SlidingTabLayout$InternalViewPagerListener;,
        Ldev/ukanth/ufirewall/util/SlidingTabLayout$TabClickListener;
    }
.end annotation


# static fields
.field private static final TAB_VIEW_PADDING_DIPS:I = 0x10

.field private static final TAB_VIEW_TEXT_SIZE_SP:I = 0xc

.field private static final TITLE_OFFSET_DIPS:I = 0x18


# instance fields
.field private final context:Landroid/content/Context;

.field private count:I

.field private final mContentDescriptions:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mDistributeEvenly:Z

.field private final mTabStrip:Ldev/ukanth/ufirewall/util/SlidingTabStrip;

.field private mTabViewLayoutId:I

.field private mTabViewTextViewId:I

.field private final mTitleOffset:I

.field private mViewPager:Landroidx/viewpager/widget/ViewPager;

.field private mViewPagerPageChangeListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# direct methods
.method static bridge synthetic -$$Nest$fgetmTabStrip(Ldev/ukanth/ufirewall/util/SlidingTabLayout;)Ldev/ukanth/ufirewall/util/SlidingTabStrip;
    .locals 0

    iget-object p0, p0, Ldev/ukanth/ufirewall/util/SlidingTabLayout;->mTabStrip:Ldev/ukanth/ufirewall/util/SlidingTabStrip;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmViewPager(Ldev/ukanth/ufirewall/util/SlidingTabLayout;)Landroidx/viewpager/widget/ViewPager;
    .locals 0

    iget-object p0, p0, Ldev/ukanth/ufirewall/util/SlidingTabLayout;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmViewPagerPageChangeListener(Ldev/ukanth/ufirewall/util/SlidingTabLayout;)Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;
    .locals 0

    iget-object p0, p0, Ldev/ukanth/ufirewall/util/SlidingTabLayout;->mViewPagerPageChangeListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mscrollToTab(Ldev/ukanth/ufirewall/util/SlidingTabLayout;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ldev/ukanth/ufirewall/util/SlidingTabLayout;->scrollToTab(II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 54
    invoke-direct {p0, p1, v0}, Ldev/ukanth/ufirewall/util/SlidingTabLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 58
    invoke-direct {p0, p1, p2, v0}, Ldev/ukanth/ufirewall/util/SlidingTabLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 62
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 47
    new-instance p2, Landroid/util/SparseArray;

    invoke-direct {p2}, Landroid/util/SparseArray;-><init>()V

    iput-object p2, p0, Ldev/ukanth/ufirewall/util/SlidingTabLayout;->mContentDescriptions:Landroid/util/SparseArray;

    iput-object p1, p0, Ldev/ukanth/ufirewall/util/SlidingTabLayout;->context:Landroid/content/Context;

    const/4 p2, 0x0

    .line 65
    invoke-virtual {p0, p2}, Ldev/ukanth/ufirewall/util/SlidingTabLayout;->setHorizontalScrollBarEnabled(Z)V

    const/4 p2, 0x1

    .line 67
    invoke-virtual {p0, p2}, Ldev/ukanth/ufirewall/util/SlidingTabLayout;->setFillViewport(Z)V

    .line 69
    invoke-virtual {p0}, Ldev/ukanth/ufirewall/util/SlidingTabLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    iget p2, p2, Landroid/util/DisplayMetrics;->density:F

    const/high16 p3, 0x41c00000    # 24.0f

    mul-float p2, p2, p3

    float-to-int p2, p2

    iput p2, p0, Ldev/ukanth/ufirewall/util/SlidingTabLayout;->mTitleOffset:I

    .line 71
    new-instance p2, Ldev/ukanth/ufirewall/util/SlidingTabStrip;

    invoke-direct {p2, p1}, Ldev/ukanth/ufirewall/util/SlidingTabStrip;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Ldev/ukanth/ufirewall/util/SlidingTabLayout;->mTabStrip:Ldev/ukanth/ufirewall/util/SlidingTabStrip;

    const/4 p1, -0x1

    const/4 p3, -0x2

    .line 72
    invoke-virtual {p0, p2, p1, p3}, Ldev/ukanth/ufirewall/util/SlidingTabLayout;->addView(Landroid/view/View;II)V

    return-void
.end method

.method private populateTabStrip()V
    .locals 9

    iget-object v0, p0, Ldev/ukanth/ufirewall/util/SlidingTabLayout;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    .line 159
    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v0

    .line 160
    new-instance v1, Ldev/ukanth/ufirewall/util/SlidingTabLayout$TabClickListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Ldev/ukanth/ufirewall/util/SlidingTabLayout$TabClickListener;-><init>(Ldev/ukanth/ufirewall/util/SlidingTabLayout;Ldev/ukanth/ufirewall/util/SlidingTabLayout$TabClickListener-IA;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 162
    :goto_0
    invoke-virtual {v0}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result v5

    if-ge v4, v5, :cond_6

    iget v5, p0, Ldev/ukanth/ufirewall/util/SlidingTabLayout;->mTabViewLayoutId:I

    if-eqz v5, :cond_0

    .line 168
    invoke-virtual {p0}, Ldev/ukanth/ufirewall/util/SlidingTabLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    iget v6, p0, Ldev/ukanth/ufirewall/util/SlidingTabLayout;->mTabViewLayoutId:I

    iget-object v7, p0, Ldev/ukanth/ufirewall/util/SlidingTabLayout;->mTabStrip:Ldev/ukanth/ufirewall/util/SlidingTabStrip;

    invoke-virtual {v5, v6, v7, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    iget v6, p0, Ldev/ukanth/ufirewall/util/SlidingTabLayout;->mTabViewTextViewId:I

    .line 170
    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    goto :goto_1

    :cond_0
    move-object v5, v2

    move-object v6, v5

    :goto_1
    if-nez v5, :cond_1

    .line 174
    invoke-virtual {p0}, Ldev/ukanth/ufirewall/util/SlidingTabLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {p0, v5}, Ldev/ukanth/ufirewall/util/SlidingTabLayout;->createDefaultTabView(Landroid/content/Context;)Landroid/widget/TextView;

    move-result-object v5

    :cond_1
    if-nez v6, :cond_2

    .line 177
    instance-of v7, v5, Landroid/widget/TextView;

    if-eqz v7, :cond_2

    .line 178
    move-object v6, v5

    check-cast v6, Landroid/widget/TextView;

    :cond_2
    iget-boolean v7, p0, Ldev/ukanth/ufirewall/util/SlidingTabLayout;->mDistributeEvenly:Z

    if-eqz v7, :cond_3

    .line 182
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout$LayoutParams;

    .line 183
    iput v3, v7, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const/high16 v8, 0x3f800000    # 1.0f

    .line 184
    iput v8, v7, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 187
    :cond_3
    invoke-virtual {v0, v4}, Landroidx/viewpager/widget/PagerAdapter;->getPageTitle(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 188
    invoke-virtual {v5, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v7, p0, Ldev/ukanth/ufirewall/util/SlidingTabLayout;->mContentDescriptions:Landroid/util/SparseArray;

    .line 189
    invoke-virtual {v7, v4, v2}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    if-eqz v7, :cond_4

    .line 191
    invoke-virtual {v5, v7}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_4
    iget-object v7, p0, Ldev/ukanth/ufirewall/util/SlidingTabLayout;->mTabStrip:Ldev/ukanth/ufirewall/util/SlidingTabStrip;

    .line 194
    invoke-virtual {v7, v5}, Ldev/ukanth/ufirewall/util/SlidingTabStrip;->addView(Landroid/view/View;)V

    iget-object v7, p0, Ldev/ukanth/ufirewall/util/SlidingTabLayout;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    .line 195
    invoke-virtual {v7}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v7

    if-ne v4, v7, :cond_5

    const/4 v7, 0x1

    .line 196
    invoke-virtual {v5, v7}, Landroid/view/View;->setSelected(Z)V

    :cond_5
    iget-object v5, p0, Ldev/ukanth/ufirewall/util/SlidingTabLayout;->context:Landroid/content/Context;

    .line 199
    sget v7, Ldev/ukanth/ufirewall/R$color;->white:I

    invoke-static {v5, v7}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v5

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v5, 0x41600000    # 14.0f

    .line 200
    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setTextSize(F)V

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :cond_6
    return-void
.end method

.method private scrollToTab(II)V
    .locals 1

    iget-object v0, p0, Ldev/ukanth/ufirewall/util/SlidingTabLayout;->mTabStrip:Ldev/ukanth/ufirewall/util/SlidingTabStrip;

    .line 218
    invoke-virtual {v0}, Ldev/ukanth/ufirewall/util/SlidingTabStrip;->getChildCount()I

    move-result v0

    if-eqz v0, :cond_3

    if-ltz p1, :cond_3

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Ldev/ukanth/ufirewall/util/SlidingTabLayout;->mTabStrip:Ldev/ukanth/ufirewall/util/SlidingTabStrip;

    .line 223
    invoke-virtual {v0, p1}, Ldev/ukanth/ufirewall/util/SlidingTabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 225
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    add-int/2addr v0, p2

    if-gtz p1, :cond_1

    if-lez p2, :cond_2

    :cond_1
    iget p1, p0, Ldev/ukanth/ufirewall/util/SlidingTabLayout;->mTitleOffset:I

    sub-int/2addr v0, p1

    :cond_2
    const/4 p1, 0x0

    .line 232
    invoke-virtual {p0, v0, p1}, Ldev/ukanth/ufirewall/util/SlidingTabLayout;->scrollTo(II)V

    :cond_3
    :goto_0
    return-void
.end method


# virtual methods
.method protected createDefaultTabView(Landroid/content/Context;)Landroid/widget/TextView;
    .locals 4

    .line 139
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/16 p1, 0x11

    .line 140
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setGravity(I)V

    const/4 p1, 0x2

    const/high16 v1, 0x41400000    # 12.0f

    .line 141
    invoke-virtual {v0, p1, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 142
    sget-object p1, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 143
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {p1, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 146
    new-instance p1, Landroid/util/TypedValue;

    invoke-direct {p1}, Landroid/util/TypedValue;-><init>()V

    .line 147
    invoke-virtual {p0}, Ldev/ukanth/ufirewall/util/SlidingTabLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x101030e

    const/4 v3, 0x1

    invoke-virtual {v1, v2, p1, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 149
    iget p1, p1, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 150
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setAllCaps(Z)V

    .line 152
    invoke-virtual {p0}, Ldev/ukanth/ufirewall/util/SlidingTabLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x41800000    # 16.0f

    mul-float p1, p1, v1

    float-to-int p1, p1

    .line 153
    invoke-virtual {v0, p1, p1, p1, p1}, Landroid/widget/TextView;->setPadding(IIII)V

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 210
    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onAttachedToWindow()V

    iget-object v0, p0, Ldev/ukanth/ufirewall/util/SlidingTabLayout;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    if-eqz v0, :cond_0

    .line 213
    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Ldev/ukanth/ufirewall/util/SlidingTabLayout;->scrollToTab(II)V

    :cond_0
    return-void
.end method

.method public setContentDescription(ILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Ldev/ukanth/ufirewall/util/SlidingTabLayout;->mContentDescriptions:Landroid/util/SparseArray;

    .line 205
    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public setCustomTabColorizer(Ldev/ukanth/ufirewall/util/SlidingTabLayout$TabColorizer;)V
    .locals 1

    iget-object v0, p0, Ldev/ukanth/ufirewall/util/SlidingTabLayout;->mTabStrip:Ldev/ukanth/ufirewall/util/SlidingTabStrip;

    .line 83
    invoke-virtual {v0, p1}, Ldev/ukanth/ufirewall/util/SlidingTabStrip;->setCustomTabColorizer(Ldev/ukanth/ufirewall/util/SlidingTabLayout$TabColorizer;)V

    return-void
.end method

.method public setCustomTabView(II)V
    .locals 0

    iput p1, p0, Ldev/ukanth/ufirewall/util/SlidingTabLayout;->mTabViewLayoutId:I

    iput p2, p0, Ldev/ukanth/ufirewall/util/SlidingTabLayout;->mTabViewTextViewId:I

    return-void
.end method

.method public setDistributeEvenly(Z)V
    .locals 0

    iput-boolean p1, p0, Ldev/ukanth/ufirewall/util/SlidingTabLayout;->mDistributeEvenly:Z

    return-void
.end method

.method public setOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V
    .locals 0

    iput-object p1, p0, Ldev/ukanth/ufirewall/util/SlidingTabLayout;->mViewPagerPageChangeListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    return-void
.end method

.method public varargs setSelectedIndicatorColors([I)V
    .locals 1

    iget-object v0, p0, Ldev/ukanth/ufirewall/util/SlidingTabLayout;->mTabStrip:Ldev/ukanth/ufirewall/util/SlidingTabStrip;

    .line 95
    invoke-virtual {v0, p1}, Ldev/ukanth/ufirewall/util/SlidingTabStrip;->setSelectedIndicatorColors([I)V

    return-void
.end method

.method public setViewPager(Landroidx/viewpager/widget/ViewPager;)V
    .locals 2

    iget-object v0, p0, Ldev/ukanth/ufirewall/util/SlidingTabLayout;->mTabStrip:Ldev/ukanth/ufirewall/util/SlidingTabStrip;

    .line 125
    invoke-virtual {v0}, Ldev/ukanth/ufirewall/util/SlidingTabStrip;->removeAllViews()V

    iput-object p1, p0, Ldev/ukanth/ufirewall/util/SlidingTabLayout;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    if-eqz p1, :cond_0

    .line 129
    new-instance v0, Ldev/ukanth/ufirewall/util/SlidingTabLayout$InternalViewPagerListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ldev/ukanth/ufirewall/util/SlidingTabLayout$InternalViewPagerListener;-><init>(Ldev/ukanth/ufirewall/util/SlidingTabLayout;Ldev/ukanth/ufirewall/util/SlidingTabLayout$InternalViewPagerListener-IA;)V

    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->setOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 130
    invoke-direct {p0}, Ldev/ukanth/ufirewall/util/SlidingTabLayout;->populateTabStrip()V

    :cond_0
    return-void
.end method
