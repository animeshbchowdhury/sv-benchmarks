extern void __VERIFIER_error() __attribute__ ((__noreturn__));
struct kernel_symbol {
   unsigned long value ;
   char const *name ;
};
struct module;
typedef signed char __s8;
typedef unsigned char __u8;
typedef short __s16;
typedef unsigned short __u16;
typedef int __s32;
typedef unsigned int __u32;
typedef unsigned long long __u64;
typedef unsigned char u8;
typedef short s16;
typedef unsigned short u16;
typedef int s32;
typedef unsigned int u32;
typedef long long s64;
typedef unsigned long long u64;
typedef long __kernel_long_t;
typedef unsigned long __kernel_ulong_t;
typedef int __kernel_pid_t;
typedef unsigned int __kernel_uid32_t;
typedef unsigned int __kernel_gid32_t;
typedef __kernel_ulong_t __kernel_size_t;
typedef __kernel_long_t __kernel_ssize_t;
typedef long long __kernel_loff_t;
typedef __kernel_long_t __kernel_time_t;
typedef __kernel_long_t __kernel_clock_t;
typedef int __kernel_timer_t;
typedef int __kernel_clockid_t;
typedef __u16 __be16;
typedef __u32 __be32;
typedef __u64 __be64;
typedef __u32 __kernel_dev_t;
typedef __kernel_dev_t dev_t;
typedef unsigned short umode_t;
typedef __kernel_pid_t pid_t;
typedef __kernel_clockid_t clockid_t;
typedef _Bool bool;
typedef __kernel_uid32_t uid_t;
typedef __kernel_gid32_t gid_t;
typedef __kernel_loff_t loff_t;
typedef __kernel_size_t size_t;
typedef __kernel_ssize_t ssize_t;
typedef __kernel_time_t time_t;
typedef unsigned int uint;
typedef unsigned long ulong;
typedef __s32 int32_t;
typedef __u8 uint8_t;
typedef __u16 uint16_t;
typedef __u32 uint32_t;
typedef __u64 uint64_t;
typedef unsigned long sector_t;
typedef unsigned long blkcnt_t;
typedef u64 dma_addr_t;
typedef unsigned int gfp_t;
typedef unsigned int fmode_t;
typedef unsigned int oom_flags_t;
typedef u64 phys_addr_t;
typedef phys_addr_t resource_size_t;
struct __anonstruct_atomic_t_6 {
   int counter ;
};
typedef struct __anonstruct_atomic_t_6 atomic_t;
struct __anonstruct_atomic64_t_7 {
   long counter ;
};
typedef struct __anonstruct_atomic64_t_7 atomic64_t;
struct list_head {
   struct list_head *next ;
   struct list_head *prev ;
};
struct hlist_node;
struct hlist_head {
   struct hlist_node *first ;
};
struct hlist_node {
   struct hlist_node *next ;
   struct hlist_node **pprev ;
};
struct callback_head {
   struct callback_head *next ;
   void (*func)(struct callback_head * ) ;
};
struct pt_regs {
   unsigned long r15 ;
   unsigned long r14 ;
   unsigned long r13 ;
   unsigned long r12 ;
   unsigned long bp ;
   unsigned long bx ;
   unsigned long r11 ;
   unsigned long r10 ;
   unsigned long r9 ;
   unsigned long r8 ;
   unsigned long ax ;
   unsigned long cx ;
   unsigned long dx ;
   unsigned long si ;
   unsigned long di ;
   unsigned long orig_ax ;
   unsigned long ip ;
   unsigned long cs ;
   unsigned long flags ;
   unsigned long sp ;
   unsigned long ss ;
};
struct __anonstruct_ldv_1022_9 {
   unsigned int a ;
   unsigned int b ;
};
struct __anonstruct_ldv_1037_10 {
   u16 limit0 ;
   u16 base0 ;
   unsigned char base1 ;
   unsigned char type : 4 ;
   unsigned char s : 1 ;
   unsigned char dpl : 2 ;
   unsigned char p : 1 ;
   unsigned char limit : 4 ;
   unsigned char avl : 1 ;
   unsigned char l : 1 ;
   unsigned char d : 1 ;
   unsigned char g : 1 ;
   unsigned char base2 ;
};
union __anonunion_ldv_1038_8 {
   struct __anonstruct_ldv_1022_9 ldv_1022 ;
   struct __anonstruct_ldv_1037_10 ldv_1037 ;
};
struct desc_struct {
   union __anonunion_ldv_1038_8 ldv_1038 ;
};
typedef unsigned long pteval_t;
typedef unsigned long pgdval_t;
typedef unsigned long pgprotval_t;
struct __anonstruct_pte_t_11 {
   pteval_t pte ;
};
typedef struct __anonstruct_pte_t_11 pte_t;
struct pgprot {
   pgprotval_t pgprot ;
};
typedef struct pgprot pgprot_t;
struct __anonstruct_pgd_t_12 {
   pgdval_t pgd ;
};
typedef struct __anonstruct_pgd_t_12 pgd_t;
struct page;
typedef struct page *pgtable_t;
struct file;
struct seq_file;
struct thread_struct;
struct mm_struct;
struct task_struct;
struct cpumask;
struct paravirt_callee_save {
   void *func ;
};
struct pv_irq_ops {
   struct paravirt_callee_save save_fl ;
   struct paravirt_callee_save restore_fl ;
   struct paravirt_callee_save irq_disable ;
   struct paravirt_callee_save irq_enable ;
   void (*safe_halt)(void) ;
   void (*halt)(void) ;
   void (*adjust_exception_frame)(void) ;
};
struct arch_spinlock;
typedef u16 __ticket_t;
typedef u32 __ticketpair_t;
struct __raw_tickets {
   __ticket_t head ;
   __ticket_t tail ;
};
union __anonunion_ldv_1458_15 {
   __ticketpair_t head_tail ;
   struct __raw_tickets tickets ;
};
struct arch_spinlock {
   union __anonunion_ldv_1458_15 ldv_1458 ;
};
typedef struct arch_spinlock arch_spinlock_t;
struct qrwlock {
   atomic_t cnts ;
   arch_spinlock_t lock ;
};
typedef struct qrwlock arch_rwlock_t;
typedef void (*ctor_fn_t)(void);
struct _ddebug {
   char const *modname ;
   char const *function ;
   char const *filename ;
   char const *format ;
   unsigned int lineno : 18 ;
   unsigned char flags ;
};
struct device;
struct file_operations;
struct completion;
struct pid;
struct bug_entry {
   int bug_addr_disp ;
   int file_disp ;
   unsigned short line ;
   unsigned short flags ;
};
struct timespec;
struct compat_timespec;
struct __anonstruct_futex_17 {
   u32 *uaddr ;
   u32 val ;
   u32 flags ;
   u32 bitset ;
   u64 time ;
   u32 *uaddr2 ;
};
struct __anonstruct_nanosleep_18 {
   clockid_t clockid ;
   struct timespec *rmtp ;
   struct compat_timespec *compat_rmtp ;
   u64 expires ;
};
struct pollfd;
struct __anonstruct_poll_19 {
   struct pollfd *ufds ;
   int nfds ;
   int has_timeout ;
   unsigned long tv_sec ;
   unsigned long tv_nsec ;
};
union __anonunion_ldv_2850_16 {
   struct __anonstruct_futex_17 futex ;
   struct __anonstruct_nanosleep_18 nanosleep ;
   struct __anonstruct_poll_19 poll ;
};
struct restart_block {
   long (*fn)(struct restart_block * ) ;
   union __anonunion_ldv_2850_16 ldv_2850 ;
};
struct exec_domain;
struct kernel_vm86_regs {
   struct pt_regs pt ;
   unsigned short es ;
   unsigned short __esh ;
   unsigned short ds ;
   unsigned short __dsh ;
   unsigned short fs ;
   unsigned short __fsh ;
   unsigned short gs ;
   unsigned short __gsh ;
};
union __anonunion_ldv_2998_20 {
   struct pt_regs *regs ;
   struct kernel_vm86_regs *vm86 ;
};
struct math_emu_info {
   long ___orig_eip ;
   union __anonunion_ldv_2998_20 ldv_2998 ;
};
struct cpumask {
   unsigned long bits[128U] ;
};
typedef struct cpumask cpumask_t;
typedef struct cpumask *cpumask_var_t;
struct map_segment;
struct exec_domain {
   char const *name ;
   void (*handler)(int , struct pt_regs * ) ;
   unsigned char pers_low ;
   unsigned char pers_high ;
   unsigned long *signal_map ;
   unsigned long *signal_invmap ;
   struct map_segment *err_map ;
   struct map_segment *socktype_map ;
   struct map_segment *sockopt_map ;
   struct map_segment *af_map ;
   struct module *module ;
   struct exec_domain *next ;
};
struct seq_operations;
struct i387_fsave_struct {
   u32 cwd ;
   u32 swd ;
   u32 twd ;
   u32 fip ;
   u32 fcs ;
   u32 foo ;
   u32 fos ;
   u32 st_space[20U] ;
   u32 status ;
};
struct __anonstruct_ldv_5289_25 {
   u64 rip ;
   u64 rdp ;
};
struct __anonstruct_ldv_5295_26 {
   u32 fip ;
   u32 fcs ;
   u32 foo ;
   u32 fos ;
};
union __anonunion_ldv_5296_24 {
   struct __anonstruct_ldv_5289_25 ldv_5289 ;
   struct __anonstruct_ldv_5295_26 ldv_5295 ;
};
union __anonunion_ldv_5305_27 {
   u32 padding1[12U] ;
   u32 sw_reserved[12U] ;
};
struct i387_fxsave_struct {
   u16 cwd ;
   u16 swd ;
   u16 twd ;
   u16 fop ;
   union __anonunion_ldv_5296_24 ldv_5296 ;
   u32 mxcsr ;
   u32 mxcsr_mask ;
   u32 st_space[32U] ;
   u32 xmm_space[64U] ;
   u32 padding[12U] ;
   union __anonunion_ldv_5305_27 ldv_5305 ;
};
struct i387_soft_struct {
   u32 cwd ;
   u32 swd ;
   u32 twd ;
   u32 fip ;
   u32 fcs ;
   u32 foo ;
   u32 fos ;
   u32 st_space[20U] ;
   u8 ftop ;
   u8 changed ;
   u8 lookahead ;
   u8 no_update ;
   u8 rm ;
   u8 alimit ;
   struct math_emu_info *info ;
   u32 entry_eip ;
};
struct ymmh_struct {
   u32 ymmh_space[64U] ;
};
struct lwp_struct {
   u8 reserved[128U] ;
};
struct bndregs_struct {
   u64 bndregs[8U] ;
};
struct bndcsr_struct {
   u64 cfg_reg_u ;
   u64 status_reg ;
};
struct xsave_hdr_struct {
   u64 xstate_bv ;
   u64 reserved1[2U] ;
   u64 reserved2[5U] ;
};
struct xsave_struct {
   struct i387_fxsave_struct i387 ;
   struct xsave_hdr_struct xsave_hdr ;
   struct ymmh_struct ymmh ;
   struct lwp_struct lwp ;
   struct bndregs_struct bndregs ;
   struct bndcsr_struct bndcsr ;
};
union thread_xstate {
   struct i387_fsave_struct fsave ;
   struct i387_fxsave_struct fxsave ;
   struct i387_soft_struct soft ;
   struct xsave_struct xsave ;
};
struct fpu {
   unsigned int last_cpu ;
   unsigned int has_fpu ;
   union thread_xstate *state ;
};
struct kmem_cache;
struct perf_event;
struct thread_struct {
   struct desc_struct tls_array[3U] ;
   unsigned long sp0 ;
   unsigned long sp ;
   unsigned long usersp ;
   unsigned short es ;
   unsigned short ds ;
   unsigned short fsindex ;
   unsigned short gsindex ;
   unsigned long fs ;
   unsigned long gs ;
   struct perf_event *ptrace_bps[4U] ;
   unsigned long debugreg6 ;
   unsigned long ptrace_dr7 ;
   unsigned long cr2 ;
   unsigned long trap_nr ;
   unsigned long error_code ;
   struct fpu fpu ;
   unsigned long *io_bitmap_ptr ;
   unsigned long iopl ;
   unsigned int io_bitmap_max ;
   unsigned char fpu_counter ;
};
struct __anonstruct_mm_segment_t_29 {
   unsigned long seg ;
};
typedef struct __anonstruct_mm_segment_t_29 mm_segment_t;
typedef atomic64_t atomic_long_t;
struct thread_info {
   struct task_struct *task ;
   struct exec_domain *exec_domain ;
   __u32 flags ;
   __u32 status ;
   __u32 cpu ;
   int saved_preempt_count ;
   mm_segment_t addr_limit ;
   struct restart_block restart_block ;
   void *sysenter_return ;
   unsigned char sig_on_uaccess_error : 1 ;
   unsigned char uaccess_err : 1 ;
};
struct lockdep_map;
struct stack_trace {
   unsigned int nr_entries ;
   unsigned int max_entries ;
   unsigned long *entries ;
   int skip ;
};
struct lockdep_subclass_key {
   char __one_byte ;
} __attribute__((__packed__)) ;
struct lock_class_key {
   struct lockdep_subclass_key subkeys[8U] ;
};
struct lock_class {
   struct list_head hash_entry ;
   struct list_head lock_entry ;
   struct lockdep_subclass_key *key ;
   unsigned int subclass ;
   unsigned int dep_gen_id ;
   unsigned long usage_mask ;
   struct stack_trace usage_traces[13U] ;
   struct list_head locks_after ;
   struct list_head locks_before ;
   unsigned int version ;
   unsigned long ops ;
   char const *name ;
   int name_version ;
   unsigned long contention_point[4U] ;
   unsigned long contending_point[4U] ;
};
struct lockdep_map {
   struct lock_class_key *key ;
   struct lock_class *class_cache[2U] ;
   char const *name ;
   int cpu ;
   unsigned long ip ;
};
struct held_lock {
   u64 prev_chain_key ;
   unsigned long acquire_ip ;
   struct lockdep_map *instance ;
   struct lockdep_map *nest_lock ;
   u64 waittime_stamp ;
   u64 holdtime_stamp ;
   unsigned short class_idx : 13 ;
   unsigned char irq_context : 2 ;
   unsigned char trylock : 1 ;
   unsigned char read : 2 ;
   unsigned char check : 1 ;
   unsigned char hardirqs_off : 1 ;
   unsigned short references : 12 ;
};
struct raw_spinlock {
   arch_spinlock_t raw_lock ;
   unsigned int magic ;
   unsigned int owner_cpu ;
   void *owner ;
   struct lockdep_map dep_map ;
};
typedef struct raw_spinlock raw_spinlock_t;
struct __anonstruct_ldv_6346_31 {
   u8 __padding[24U] ;
   struct lockdep_map dep_map ;
};
union __anonunion_ldv_6347_30 {
   struct raw_spinlock rlock ;
   struct __anonstruct_ldv_6346_31 ldv_6346 ;
};
struct spinlock {
   union __anonunion_ldv_6347_30 ldv_6347 ;
};
typedef struct spinlock spinlock_t;
struct __anonstruct_rwlock_t_32 {
   arch_rwlock_t raw_lock ;
   unsigned int magic ;
   unsigned int owner_cpu ;
   void *owner ;
   struct lockdep_map dep_map ;
};
typedef struct __anonstruct_rwlock_t_32 rwlock_t;
struct seqcount {
   unsigned int sequence ;
   struct lockdep_map dep_map ;
};
typedef struct seqcount seqcount_t;
struct timespec {
   __kernel_time_t tv_sec ;
   long tv_nsec ;
};
struct user_namespace;
struct __anonstruct_kuid_t_34 {
   uid_t val ;
};
typedef struct __anonstruct_kuid_t_34 kuid_t;
struct __anonstruct_kgid_t_35 {
   gid_t val ;
};
typedef struct __anonstruct_kgid_t_35 kgid_t;
struct kstat {
   u64 ino ;
   dev_t dev ;
   umode_t mode ;
   unsigned int nlink ;
   kuid_t uid ;
   kgid_t gid ;
   dev_t rdev ;
   loff_t size ;
   struct timespec atime ;
   struct timespec mtime ;
   struct timespec ctime ;
   unsigned long blksize ;
   unsigned long long blocks ;
};
struct __wait_queue;
typedef struct __wait_queue wait_queue_t;
struct __wait_queue {
   unsigned int flags ;
   void *private ;
   int (*func)(wait_queue_t * , unsigned int , int , void * ) ;
   struct list_head task_list ;
};
struct __wait_queue_head {
   spinlock_t lock ;
   struct list_head task_list ;
};
typedef struct __wait_queue_head wait_queue_head_t;
struct __anonstruct_nodemask_t_36 {
   unsigned long bits[16U] ;
};
typedef struct __anonstruct_nodemask_t_36 nodemask_t;
struct optimistic_spin_queue;
struct mutex {
   atomic_t count ;
   spinlock_t wait_lock ;
   struct list_head wait_list ;
   struct task_struct *owner ;
   char const *name ;
   void *magic ;
   struct lockdep_map dep_map ;
};
struct mutex_waiter {
   struct list_head list ;
   struct task_struct *task ;
   void *magic ;
};
struct rw_semaphore;
struct rw_semaphore {
   long count ;
   raw_spinlock_t wait_lock ;
   struct list_head wait_list ;
   struct task_struct *owner ;
   struct optimistic_spin_queue *osq ;
   struct lockdep_map dep_map ;
};
struct completion {
   unsigned int done ;
   wait_queue_head_t wait ;
};
struct llist_node;
struct llist_node {
   struct llist_node *next ;
};
struct call_single_data {
   struct llist_node llist ;
   void (*func)(void * ) ;
   void *info ;
   u16 flags ;
};
struct resource {
   resource_size_t start ;
   resource_size_t end ;
   char const *name ;
   unsigned long flags ;
   struct resource *parent ;
   struct resource *sibling ;
   struct resource *child ;
};
struct pci_dev;
union ktime {
   s64 tv64 ;
};
typedef union ktime ktime_t;
struct tvec_base;
struct timer_list {
   struct list_head entry ;
   unsigned long expires ;
   struct tvec_base *base ;
   void (*function)(unsigned long ) ;
   unsigned long data ;
   int slack ;
   int start_pid ;
   void *start_site ;
   char start_comm[16U] ;
   struct lockdep_map lockdep_map ;
};
struct hrtimer;
enum hrtimer_restart;
struct workqueue_struct;
struct work_struct;
struct work_struct {
   atomic_long_t data ;
   struct list_head entry ;
   void (*func)(struct work_struct * ) ;
   struct lockdep_map lockdep_map ;
};
struct delayed_work {
   struct work_struct work ;
   struct timer_list timer ;
   struct workqueue_struct *wq ;
   int cpu ;
};
struct pm_message {
   int event ;
};
typedef struct pm_message pm_message_t;
struct dev_pm_ops {
   int (*prepare)(struct device * ) ;
   void (*complete)(struct device * ) ;
   int (*suspend)(struct device * ) ;
   int (*resume)(struct device * ) ;
   int (*freeze)(struct device * ) ;
   int (*thaw)(struct device * ) ;
   int (*poweroff)(struct device * ) ;
   int (*restore)(struct device * ) ;
   int (*suspend_late)(struct device * ) ;
   int (*resume_early)(struct device * ) ;
   int (*freeze_late)(struct device * ) ;
   int (*thaw_early)(struct device * ) ;
   int (*poweroff_late)(struct device * ) ;
   int (*restore_early)(struct device * ) ;
   int (*suspend_noirq)(struct device * ) ;
   int (*resume_noirq)(struct device * ) ;
   int (*freeze_noirq)(struct device * ) ;
   int (*thaw_noirq)(struct device * ) ;
   int (*poweroff_noirq)(struct device * ) ;
   int (*restore_noirq)(struct device * ) ;
   int (*runtime_suspend)(struct device * ) ;
   int (*runtime_resume)(struct device * ) ;
   int (*runtime_idle)(struct device * ) ;
};
enum rpm_status {
    RPM_ACTIVE = 0,
    RPM_RESUMING = 1,
    RPM_SUSPENDED = 2,
    RPM_SUSPENDING = 3
} ;
enum rpm_request {
    RPM_REQ_NONE = 0,
    RPM_REQ_IDLE = 1,
    RPM_REQ_SUSPEND = 2,
    RPM_REQ_AUTOSUSPEND = 3,
    RPM_REQ_RESUME = 4
} ;
struct wakeup_source;
struct pm_subsys_data {
   spinlock_t lock ;
   unsigned int refcount ;
   struct list_head clock_list ;
};
struct dev_pm_qos;
struct dev_pm_info {
   pm_message_t power_state ;
   unsigned char can_wakeup : 1 ;
   unsigned char async_suspend : 1 ;
   bool is_prepared ;
   bool is_suspended ;
   bool is_noirq_suspended ;
   bool is_late_suspended ;
   bool ignore_children ;
   bool early_init ;
   bool direct_complete ;
   spinlock_t lock ;
   struct list_head entry ;
   struct completion completion ;
   struct wakeup_source *wakeup ;
   bool wakeup_path ;
   bool syscore ;
   struct timer_list suspend_timer ;
   unsigned long timer_expires ;
   struct work_struct work ;
   wait_queue_head_t wait_queue ;
   atomic_t usage_count ;
   atomic_t child_count ;
   unsigned char disable_depth : 3 ;
   unsigned char idle_notification : 1 ;
   unsigned char request_pending : 1 ;
   unsigned char deferred_resume : 1 ;
   unsigned char run_wake : 1 ;
   unsigned char runtime_auto : 1 ;
   unsigned char no_callbacks : 1 ;
   unsigned char irq_safe : 1 ;
   unsigned char use_autosuspend : 1 ;
   unsigned char timer_autosuspends : 1 ;
   unsigned char memalloc_noio : 1 ;
   enum rpm_request request ;
   enum rpm_status runtime_status ;
   int runtime_error ;
   int autosuspend_delay ;
   unsigned long last_busy ;
   unsigned long active_jiffies ;
   unsigned long suspended_jiffies ;
   unsigned long accounting_timestamp ;
   struct pm_subsys_data *subsys_data ;
   void (*set_latency_tolerance)(struct device * , s32 ) ;
   struct dev_pm_qos *qos ;
};
struct dev_pm_domain {
   struct dev_pm_ops ops ;
};
struct pci_bus;
struct __anonstruct_mm_context_t_101 {
   void *ldt ;
   int size ;
   unsigned short ia32_compat ;
   struct mutex lock ;
   void *vdso ;
};
typedef struct __anonstruct_mm_context_t_101 mm_context_t;
struct rb_node {
   unsigned long __rb_parent_color ;
   struct rb_node *rb_right ;
   struct rb_node *rb_left ;
} __attribute__((__aligned__(sizeof(long )))) ;
struct rb_root {
   struct rb_node *rb_node ;
};
struct vm_area_struct;
struct bio_vec;
struct nsproxy;
struct cred;
struct inode;
struct arch_uprobe_task {
   unsigned long saved_scratch_register ;
   unsigned int saved_trap_nr ;
   unsigned int saved_tf ;
};
enum uprobe_task_state {
    UTASK_RUNNING = 0,
    UTASK_SSTEP = 1,
    UTASK_SSTEP_ACK = 2,
    UTASK_SSTEP_TRAPPED = 3
} ;
struct __anonstruct_ldv_14022_136 {
   struct arch_uprobe_task autask ;
   unsigned long vaddr ;
};
struct __anonstruct_ldv_14026_137 {
   struct callback_head dup_xol_work ;
   unsigned long dup_xol_addr ;
};
union __anonunion_ldv_14027_135 {
   struct __anonstruct_ldv_14022_136 ldv_14022 ;
   struct __anonstruct_ldv_14026_137 ldv_14026 ;
};
struct uprobe;
struct return_instance;
struct uprobe_task {
   enum uprobe_task_state state ;
   union __anonunion_ldv_14027_135 ldv_14027 ;
   struct uprobe *active_uprobe ;
   unsigned long xol_vaddr ;
   struct return_instance *return_instances ;
   unsigned int depth ;
};
struct xol_area;
struct uprobes_state {
   struct xol_area *xol_area ;
};
struct address_space;
union __anonunion_ldv_14136_138 {
   struct address_space *mapping ;
   void *s_mem ;
};
union __anonunion_ldv_14142_140 {
   unsigned long index ;
   void *freelist ;
   bool pfmemalloc ;
};
struct __anonstruct_ldv_14152_144 {
   unsigned short inuse ;
   unsigned short objects : 15 ;
   unsigned char frozen : 1 ;
};
union __anonunion_ldv_14154_143 {
   atomic_t _mapcount ;
   struct __anonstruct_ldv_14152_144 ldv_14152 ;
   int units ;
};
struct __anonstruct_ldv_14156_142 {
   union __anonunion_ldv_14154_143 ldv_14154 ;
   atomic_t _count ;
};
union __anonunion_ldv_14158_141 {
   unsigned long counters ;
   struct __anonstruct_ldv_14156_142 ldv_14156 ;
   unsigned int active ;
};
struct __anonstruct_ldv_14159_139 {
   union __anonunion_ldv_14142_140 ldv_14142 ;
   union __anonunion_ldv_14158_141 ldv_14158 ;
};
struct __anonstruct_ldv_14166_146 {
   struct page *next ;
   int pages ;
   int pobjects ;
};
struct slab;
union __anonunion_ldv_14171_145 {
   struct list_head lru ;
   struct __anonstruct_ldv_14166_146 ldv_14166 ;
   struct slab *slab_page ;
   struct callback_head callback_head ;
   pgtable_t pmd_huge_pte ;
};
union __anonunion_ldv_14177_147 {
   unsigned long private ;
   spinlock_t *ptl ;
   struct kmem_cache *slab_cache ;
   struct page *first_page ;
};
struct page {
   unsigned long flags ;
   union __anonunion_ldv_14136_138 ldv_14136 ;
   struct __anonstruct_ldv_14159_139 ldv_14159 ;
   union __anonunion_ldv_14171_145 ldv_14171 ;
   union __anonunion_ldv_14177_147 ldv_14177 ;
   unsigned long debug_flags ;
};
struct page_frag {
   struct page *page ;
   __u32 offset ;
   __u32 size ;
};
struct __anonstruct_linear_149 {
   struct rb_node rb ;
   unsigned long rb_subtree_last ;
};
union __anonunion_shared_148 {
   struct __anonstruct_linear_149 linear ;
   struct list_head nonlinear ;
};
struct anon_vma;
struct vm_operations_struct;
struct mempolicy;
struct vm_area_struct {
   unsigned long vm_start ;
   unsigned long vm_end ;
   struct vm_area_struct *vm_next ;
   struct vm_area_struct *vm_prev ;
   struct rb_node vm_rb ;
   unsigned long rb_subtree_gap ;
   struct mm_struct *vm_mm ;
   pgprot_t vm_page_prot ;
   unsigned long vm_flags ;
   union __anonunion_shared_148 shared ;
   struct list_head anon_vma_chain ;
   struct anon_vma *anon_vma ;
   struct vm_operations_struct const *vm_ops ;
   unsigned long vm_pgoff ;
   struct file *vm_file ;
   void *vm_private_data ;
   struct mempolicy *vm_policy ;
};
struct core_thread {
   struct task_struct *task ;
   struct core_thread *next ;
};
struct core_state {
   atomic_t nr_threads ;
   struct core_thread dumper ;
   struct completion startup ;
};
struct task_rss_stat {
   int events ;
   int count[3U] ;
};
struct mm_rss_stat {
   atomic_long_t count[3U] ;
};
struct kioctx_table;
struct linux_binfmt;
struct mmu_notifier_mm;
struct mm_struct {
   struct vm_area_struct *mmap ;
   struct rb_root mm_rb ;
   u32 vmacache_seqnum ;
   unsigned long (*get_unmapped_area)(struct file * , unsigned long , unsigned long ,
                                      unsigned long , unsigned long ) ;
   unsigned long mmap_base ;
   unsigned long mmap_legacy_base ;
   unsigned long task_size ;
   unsigned long highest_vm_end ;
   pgd_t *pgd ;
   atomic_t mm_users ;
   atomic_t mm_count ;
   atomic_long_t nr_ptes ;
   int map_count ;
   spinlock_t page_table_lock ;
   struct rw_semaphore mmap_sem ;
   struct list_head mmlist ;
   unsigned long hiwater_rss ;
   unsigned long hiwater_vm ;
   unsigned long total_vm ;
   unsigned long locked_vm ;
   unsigned long pinned_vm ;
   unsigned long shared_vm ;
   unsigned long exec_vm ;
   unsigned long stack_vm ;
   unsigned long def_flags ;
   unsigned long start_code ;
   unsigned long end_code ;
   unsigned long start_data ;
   unsigned long end_data ;
   unsigned long start_brk ;
   unsigned long brk ;
   unsigned long start_stack ;
   unsigned long arg_start ;
   unsigned long arg_end ;
   unsigned long env_start ;
   unsigned long env_end ;
   unsigned long saved_auxv[46U] ;
   struct mm_rss_stat rss_stat ;
   struct linux_binfmt *binfmt ;
   cpumask_var_t cpu_vm_mask_var ;
   mm_context_t context ;
   unsigned long flags ;
   struct core_state *core_state ;
   spinlock_t ioctx_lock ;
   struct kioctx_table *ioctx_table ;
   struct task_struct *owner ;
   struct file *exe_file ;
   struct mmu_notifier_mm *mmu_notifier_mm ;
   struct cpumask cpumask_allocation ;
   unsigned long numa_next_scan ;
   unsigned long numa_scan_offset ;
   int numa_scan_seq ;
   bool tlb_flush_pending ;
   struct uprobes_state uprobes_state ;
};
typedef __u64 Elf64_Addr;
typedef __u16 Elf64_Half;
typedef __u32 Elf64_Word;
typedef __u64 Elf64_Xword;
struct elf64_sym {
   Elf64_Word st_name ;
   unsigned char st_info ;
   unsigned char st_other ;
   Elf64_Half st_shndx ;
   Elf64_Addr st_value ;
   Elf64_Xword st_size ;
};
typedef struct elf64_sym Elf64_Sym;
union __anonunion_ldv_14540_153 {
   unsigned long bitmap[4U] ;
   struct callback_head callback_head ;
};
struct idr_layer {
   int prefix ;
   int layer ;
   struct idr_layer *ary[256U] ;
   int count ;
   union __anonunion_ldv_14540_153 ldv_14540 ;
};
struct idr {
   struct idr_layer *hint ;
   struct idr_layer *top ;
   int layers ;
   int cur ;
   spinlock_t lock ;
   int id_free_cnt ;
   struct idr_layer *id_free ;
};
struct ida_bitmap {
   long nr_busy ;
   unsigned long bitmap[15U] ;
};
struct ida {
   struct idr idr ;
   struct ida_bitmap *free_bitmap ;
};
struct dentry;
struct iattr;
struct super_block;
struct file_system_type;
struct kernfs_open_node;
struct kernfs_iattrs;
struct kernfs_root;
struct kernfs_elem_dir {
   unsigned long subdirs ;
   struct rb_root children ;
   struct kernfs_root *root ;
};
struct kernfs_node;
struct kernfs_elem_symlink {
   struct kernfs_node *target_kn ;
};
struct kernfs_ops;
struct kernfs_elem_attr {
   struct kernfs_ops const *ops ;
   struct kernfs_open_node *open ;
   loff_t size ;
};
union __anonunion_ldv_14684_154 {
   struct kernfs_elem_dir dir ;
   struct kernfs_elem_symlink symlink ;
   struct kernfs_elem_attr attr ;
};
struct kernfs_node {
   atomic_t count ;
   atomic_t active ;
   struct lockdep_map dep_map ;
   struct kernfs_node *parent ;
   char const *name ;
   struct rb_node rb ;
   void const *ns ;
   unsigned int hash ;
   union __anonunion_ldv_14684_154 ldv_14684 ;
   void *priv ;
   unsigned short flags ;
   umode_t mode ;
   unsigned int ino ;
   struct kernfs_iattrs *iattr ;
};
struct kernfs_syscall_ops {
   int (*remount_fs)(struct kernfs_root * , int * , char * ) ;
   int (*show_options)(struct seq_file * , struct kernfs_root * ) ;
   int (*mkdir)(struct kernfs_node * , char const * , umode_t ) ;
   int (*rmdir)(struct kernfs_node * ) ;
   int (*rename)(struct kernfs_node * , struct kernfs_node * , char const * ) ;
};
struct kernfs_root {
   struct kernfs_node *kn ;
   unsigned int flags ;
   struct ida ino_ida ;
   struct kernfs_syscall_ops *syscall_ops ;
   struct list_head supers ;
   wait_queue_head_t deactivate_waitq ;
};
struct kernfs_open_file {
   struct kernfs_node *kn ;
   struct file *file ;
   void *priv ;
   struct mutex mutex ;
   int event ;
   struct list_head list ;
   size_t atomic_write_len ;
   bool mmapped ;
   struct vm_operations_struct const *vm_ops ;
};
struct kernfs_ops {
   int (*seq_show)(struct seq_file * , void * ) ;
   void *(*seq_start)(struct seq_file * , loff_t * ) ;
   void *(*seq_next)(struct seq_file * , void * , loff_t * ) ;
   void (*seq_stop)(struct seq_file * , void * ) ;
   ssize_t (*read)(struct kernfs_open_file * , char * , size_t , loff_t ) ;
   size_t atomic_write_len ;
   ssize_t (*write)(struct kernfs_open_file * , char * , size_t , loff_t ) ;
   int (*mmap)(struct kernfs_open_file * , struct vm_area_struct * ) ;
   struct lock_class_key lockdep_key ;
};
struct sock;
struct kobject;
enum kobj_ns_type {
    KOBJ_NS_TYPE_NONE = 0,
    KOBJ_NS_TYPE_NET = 1,
    KOBJ_NS_TYPES = 2
} ;
struct kobj_ns_type_operations {
   enum kobj_ns_type type ;
   bool (*current_may_mount)(void) ;
   void *(*grab_current_ns)(void) ;
   void const *(*netlink_ns)(struct sock * ) ;
   void const *(*initial_ns)(void) ;
   void (*drop_ns)(void * ) ;
};
struct bin_attribute;
struct attribute {
   char const *name ;
   umode_t mode ;
   bool ignore_lockdep ;
   struct lock_class_key *key ;
   struct lock_class_key skey ;
};
struct attribute_group {
   char const *name ;
   umode_t (*is_visible)(struct kobject * , struct attribute * , int ) ;
   struct attribute **attrs ;
   struct bin_attribute **bin_attrs ;
};
struct bin_attribute {
   struct attribute attr ;
   size_t size ;
   void *private ;
   ssize_t (*read)(struct file * , struct kobject * , struct bin_attribute * , char * ,
                   loff_t , size_t ) ;
   ssize_t (*write)(struct file * , struct kobject * , struct bin_attribute * , char * ,
                    loff_t , size_t ) ;
   int (*mmap)(struct file * , struct kobject * , struct bin_attribute * , struct vm_area_struct * ) ;
};
struct sysfs_ops {
   ssize_t (*show)(struct kobject * , struct attribute * , char * ) ;
   ssize_t (*store)(struct kobject * , struct attribute * , char const * , size_t ) ;
};
struct kref {
   atomic_t refcount ;
};
struct kset;
struct kobj_type;
struct kobject {
   char const *name ;
   struct list_head entry ;
   struct kobject *parent ;
   struct kset *kset ;
   struct kobj_type *ktype ;
   struct kernfs_node *sd ;
   struct kref kref ;
   struct delayed_work release ;
   unsigned char state_initialized : 1 ;
   unsigned char state_in_sysfs : 1 ;
   unsigned char state_add_uevent_sent : 1 ;
   unsigned char state_remove_uevent_sent : 1 ;
   unsigned char uevent_suppress : 1 ;
};
struct kobj_type {
   void (*release)(struct kobject * ) ;
   struct sysfs_ops const *sysfs_ops ;
   struct attribute **default_attrs ;
   struct kobj_ns_type_operations const *(*child_ns_type)(struct kobject * ) ;
   void const *(*namespace)(struct kobject * ) ;
};
struct kobj_uevent_env {
   char *argv[3U] ;
   char *envp[32U] ;
   int envp_idx ;
   char buf[2048U] ;
   int buflen ;
};
struct kset_uevent_ops {
   int (* const filter)(struct kset * , struct kobject * ) ;
   char const *(* const name)(struct kset * , struct kobject * ) ;
   int (* const uevent)(struct kset * , struct kobject * , struct kobj_uevent_env * ) ;
};
struct kset {
   struct list_head list ;
   spinlock_t list_lock ;
   struct kobject kobj ;
   struct kset_uevent_ops const *uevent_ops ;
};
struct kernel_param;
struct kernel_param_ops {
   unsigned int flags ;
   int (*set)(char const * , struct kernel_param const * ) ;
   int (*get)(char * , struct kernel_param const * ) ;
   void (*free)(void * ) ;
};
struct kparam_string;
struct kparam_array;
union __anonunion_ldv_15359_155 {
   void *arg ;
   struct kparam_string const *str ;
   struct kparam_array const *arr ;
};
struct kernel_param {
   char const *name ;
   struct kernel_param_ops const *ops ;
   u16 perm ;
   s16 level ;
   union __anonunion_ldv_15359_155 ldv_15359 ;
};
struct kparam_string {
   unsigned int maxlen ;
   char *string ;
};
struct kparam_array {
   unsigned int max ;
   unsigned int elemsize ;
   unsigned int *num ;
   struct kernel_param_ops const *ops ;
   void *elem ;
};
struct mod_arch_specific {
};
struct module_param_attrs;
struct module_kobject {
   struct kobject kobj ;
   struct module *mod ;
   struct kobject *drivers_dir ;
   struct module_param_attrs *mp ;
   struct completion *kobj_completion ;
};
struct module_attribute {
   struct attribute attr ;
   ssize_t (*show)(struct module_attribute * , struct module_kobject * , char * ) ;
   ssize_t (*store)(struct module_attribute * , struct module_kobject * , char const * ,
                    size_t ) ;
   void (*setup)(struct module * , char const * ) ;
   int (*test)(struct module * ) ;
   void (*free)(struct module * ) ;
};
struct exception_table_entry;
enum module_state {
    MODULE_STATE_LIVE = 0,
    MODULE_STATE_COMING = 1,
    MODULE_STATE_GOING = 2,
    MODULE_STATE_UNFORMED = 3
} ;
struct module_ref {
   unsigned long incs ;
   unsigned long decs ;
};
struct module_sect_attrs;
struct module_notes_attrs;
struct tracepoint;
struct ftrace_event_call;
struct module {
   enum module_state state ;
   struct list_head list ;
   char name[56U] ;
   struct module_kobject mkobj ;
   struct module_attribute *modinfo_attrs ;
   char const *version ;
   char const *srcversion ;
   struct kobject *holders_dir ;
   struct kernel_symbol const *syms ;
   unsigned long const *crcs ;
   unsigned int num_syms ;
   struct kernel_param *kp ;
   unsigned int num_kp ;
   unsigned int num_gpl_syms ;
   struct kernel_symbol const *gpl_syms ;
   unsigned long const *gpl_crcs ;
   struct kernel_symbol const *unused_syms ;
   unsigned long const *unused_crcs ;
   unsigned int num_unused_syms ;
   unsigned int num_unused_gpl_syms ;
   struct kernel_symbol const *unused_gpl_syms ;
   unsigned long const *unused_gpl_crcs ;
   bool sig_ok ;
   struct kernel_symbol const *gpl_future_syms ;
   unsigned long const *gpl_future_crcs ;
   unsigned int num_gpl_future_syms ;
   unsigned int num_exentries ;
   struct exception_table_entry *extable ;
   int (*init)(void) ;
   void *module_init ;
   void *module_core ;
   unsigned int init_size ;
   unsigned int core_size ;
   unsigned int init_text_size ;
   unsigned int core_text_size ;
   unsigned int init_ro_size ;
   unsigned int core_ro_size ;
   struct mod_arch_specific arch ;
   unsigned int taints ;
   unsigned int num_bugs ;
   struct list_head bug_list ;
   struct bug_entry *bug_table ;
   Elf64_Sym *symtab ;
   Elf64_Sym *core_symtab ;
   unsigned int num_symtab ;
   unsigned int core_num_syms ;
   char *strtab ;
   char *core_strtab ;
   struct module_sect_attrs *sect_attrs ;
   struct module_notes_attrs *notes_attrs ;
   char *args ;
   void *percpu ;
   unsigned int percpu_size ;
   unsigned int num_tracepoints ;
   struct tracepoint * const *tracepoints_ptrs ;
   unsigned int num_trace_bprintk_fmt ;
   char const **trace_bprintk_fmt_start ;
   struct ftrace_event_call **trace_events ;
   unsigned int num_trace_events ;
   unsigned int num_ftrace_callsites ;
   unsigned long *ftrace_callsites ;
   struct list_head source_list ;
   struct list_head target_list ;
   void (*exit)(void) ;
   struct module_ref *refptr ;
   ctor_fn_t (**ctors)(void) ;
   unsigned int num_ctors ;
};
struct mem_cgroup;
struct kmem_cache_cpu {
   void **freelist ;
   unsigned long tid ;
   struct page *page ;
   struct page *partial ;
   unsigned int stat[26U] ;
};
struct kmem_cache_order_objects {
   unsigned long x ;
};
struct memcg_cache_params;
struct kmem_cache_node;
struct kmem_cache {
   struct kmem_cache_cpu *cpu_slab ;
   unsigned long flags ;
   unsigned long min_partial ;
   int size ;
   int object_size ;
   int offset ;
   int cpu_partial ;
   struct kmem_cache_order_objects oo ;
   struct kmem_cache_order_objects max ;
   struct kmem_cache_order_objects min ;
   gfp_t allocflags ;
   int refcount ;
   void (*ctor)(void * ) ;
   int inuse ;
   int align ;
   int reserved ;
   char const *name ;
   struct list_head list ;
   struct kobject kobj ;
   struct memcg_cache_params *memcg_params ;
   int max_attr_size ;
   struct kset *memcg_kset ;
   int remote_node_defrag_ratio ;
   struct kmem_cache_node *node[1024U] ;
};
struct __anonstruct_ldv_15979_157 {
   struct callback_head callback_head ;
   struct kmem_cache *memcg_caches[0U] ;
};
struct __anonstruct_ldv_15985_158 {
   struct mem_cgroup *memcg ;
   struct list_head list ;
   struct kmem_cache *root_cache ;
   atomic_t nr_pages ;
};
union __anonunion_ldv_15986_156 {
   struct __anonstruct_ldv_15979_157 ldv_15979 ;
   struct __anonstruct_ldv_15985_158 ldv_15985 ;
};
struct memcg_cache_params {
   bool is_root_cache ;
   union __anonunion_ldv_15986_156 ldv_15986 ;
};
struct block_device;
typedef unsigned long kernel_ulong_t;
struct pci_device_id {
   __u32 vendor ;
   __u32 device ;
   __u32 subvendor ;
   __u32 subdevice ;
   __u32 class ;
   __u32 class_mask ;
   kernel_ulong_t driver_data ;
};
struct acpi_device_id {
   __u8 id[9U] ;
   kernel_ulong_t driver_data ;
};
struct of_device_id {
   char name[32U] ;
   char type[32U] ;
   char compatible[128U] ;
   void const *data ;
};
struct klist_node;
struct klist_node {
   void *n_klist ;
   struct list_head n_node ;
   struct kref n_ref ;
};
struct path;
struct seq_file {
   char *buf ;
   size_t size ;
   size_t from ;
   size_t count ;
   size_t pad_until ;
   loff_t index ;
   loff_t read_pos ;
   u64 version ;
   struct mutex lock ;
   struct seq_operations const *op ;
   int poll_event ;
   struct user_namespace *user_ns ;
   void *private ;
};
struct seq_operations {
   void *(*start)(struct seq_file * , loff_t * ) ;
   void (*stop)(struct seq_file * , void * ) ;
   void *(*next)(struct seq_file * , void * , loff_t * ) ;
   int (*show)(struct seq_file * , void * ) ;
};
struct pinctrl;
struct pinctrl_state;
struct dev_pin_info {
   struct pinctrl *p ;
   struct pinctrl_state *default_state ;
   struct pinctrl_state *sleep_state ;
   struct pinctrl_state *idle_state ;
};
struct dma_map_ops;
struct dev_archdata {
   struct dma_map_ops *dma_ops ;
   void *iommu ;
};
struct device_private;
struct device_driver;
struct driver_private;
struct class;
struct subsys_private;
struct bus_type;
struct device_node;
struct iommu_ops;
struct iommu_group;
struct device_attribute;
struct bus_type {
   char const *name ;
   char const *dev_name ;
   struct device *dev_root ;
   struct device_attribute *dev_attrs ;
   struct attribute_group const **bus_groups ;
   struct attribute_group const **dev_groups ;
   struct attribute_group const **drv_groups ;
   int (*match)(struct device * , struct device_driver * ) ;
   int (*uevent)(struct device * , struct kobj_uevent_env * ) ;
   int (*probe)(struct device * ) ;
   int (*remove)(struct device * ) ;
   void (*shutdown)(struct device * ) ;
   int (*online)(struct device * ) ;
   int (*offline)(struct device * ) ;
   int (*suspend)(struct device * , pm_message_t ) ;
   int (*resume)(struct device * ) ;
   struct dev_pm_ops const *pm ;
   struct iommu_ops *iommu_ops ;
   struct subsys_private *p ;
   struct lock_class_key lock_key ;
};
struct device_type;
struct device_driver {
   char const *name ;
   struct bus_type *bus ;
   struct module *owner ;
   char const *mod_name ;
   bool suppress_bind_attrs ;
   struct of_device_id const *of_match_table ;
   struct acpi_device_id const *acpi_match_table ;
   int (*probe)(struct device * ) ;
   int (*remove)(struct device * ) ;
   void (*shutdown)(struct device * ) ;
   int (*suspend)(struct device * , pm_message_t ) ;
   int (*resume)(struct device * ) ;
   struct attribute_group const **groups ;
   struct dev_pm_ops const *pm ;
   struct driver_private *p ;
};
struct class_attribute;
struct class {
   char const *name ;
   struct module *owner ;
   struct class_attribute *class_attrs ;
   struct attribute_group const **dev_groups ;
   struct kobject *dev_kobj ;
   int (*dev_uevent)(struct device * , struct kobj_uevent_env * ) ;
   char *(*devnode)(struct device * , umode_t * ) ;
   void (*class_release)(struct class * ) ;
   void (*dev_release)(struct device * ) ;
   int (*suspend)(struct device * , pm_message_t ) ;
   int (*resume)(struct device * ) ;
   struct kobj_ns_type_operations const *ns_type ;
   void const *(*namespace)(struct device * ) ;
   struct dev_pm_ops const *pm ;
   struct subsys_private *p ;
};
struct class_attribute {
   struct attribute attr ;
   ssize_t (*show)(struct class * , struct class_attribute * , char * ) ;
   ssize_t (*store)(struct class * , struct class_attribute * , char const * , size_t ) ;
};
struct device_type {
   char const *name ;
   struct attribute_group const **groups ;
   int (*uevent)(struct device * , struct kobj_uevent_env * ) ;
   char *(*devnode)(struct device * , umode_t * , kuid_t * , kgid_t * ) ;
   void (*release)(struct device * ) ;
   struct dev_pm_ops const *pm ;
};
struct device_attribute {
   struct attribute attr ;
   ssize_t (*show)(struct device * , struct device_attribute * , char * ) ;
   ssize_t (*store)(struct device * , struct device_attribute * , char const * ,
                    size_t ) ;
};
struct device_dma_parameters {
   unsigned int max_segment_size ;
   unsigned long segment_boundary_mask ;
};
struct acpi_device;
struct acpi_dev_node {
   struct acpi_device *companion ;
};
struct dma_coherent_mem;
struct cma;
struct device {
   struct device *parent ;
   struct device_private *p ;
   struct kobject kobj ;
   char const *init_name ;
   struct device_type const *type ;
   struct mutex mutex ;
   struct bus_type *bus ;
   struct device_driver *driver ;
   void *platform_data ;
   void *driver_data ;
   struct dev_pm_info power ;
   struct dev_pm_domain *pm_domain ;
   struct dev_pin_info *pins ;
   int numa_node ;
   u64 *dma_mask ;
   u64 coherent_dma_mask ;
   unsigned long dma_pfn_offset ;
   struct device_dma_parameters *dma_parms ;
   struct list_head dma_pools ;
   struct dma_coherent_mem *dma_mem ;
   struct cma *cma_area ;
   struct dev_archdata archdata ;
   struct device_node *of_node ;
   struct acpi_dev_node acpi_node ;
   dev_t devt ;
   u32 id ;
   spinlock_t devres_lock ;
   struct list_head devres_head ;
   struct klist_node knode_class ;
   struct class *class ;
   struct attribute_group const **groups ;
   void (*release)(struct device * ) ;
   struct iommu_group *iommu_group ;
   bool offline_disabled ;
   bool offline ;
};
struct wakeup_source {
   char const *name ;
   struct list_head entry ;
   spinlock_t lock ;
   struct timer_list timer ;
   unsigned long timer_expires ;
   ktime_t total_time ;
   ktime_t max_time ;
   ktime_t last_time ;
   ktime_t start_prevent_time ;
   ktime_t prevent_sleep_time ;
   unsigned long event_count ;
   unsigned long active_count ;
   unsigned long relax_count ;
   unsigned long expire_count ;
   unsigned long wakeup_count ;
   bool active ;
   bool autosleep_enabled ;
};
struct hotplug_slot;
struct pci_slot {
   struct pci_bus *bus ;
   struct list_head list ;
   struct hotplug_slot *hotplug ;
   unsigned char number ;
   struct kobject kobj ;
};
typedef int pci_power_t;
typedef unsigned int pci_channel_state_t;
enum pci_channel_state {
    pci_channel_io_normal = 1,
    pci_channel_io_frozen = 2,
    pci_channel_io_perm_failure = 3
} ;
typedef unsigned short pci_dev_flags_t;
typedef unsigned short pci_bus_flags_t;
struct pcie_link_state;
struct pci_vpd;
struct pci_sriov;
struct pci_ats;
struct proc_dir_entry;
struct pci_driver;
union __anonunion_ldv_17845_162 {
   struct pci_sriov *sriov ;
   struct pci_dev *physfn ;
};
struct pci_dev {
   struct list_head bus_list ;
   struct pci_bus *bus ;
   struct pci_bus *subordinate ;
   void *sysdata ;
   struct proc_dir_entry *procent ;
   struct pci_slot *slot ;
   unsigned int devfn ;
   unsigned short vendor ;
   unsigned short device ;
   unsigned short subsystem_vendor ;
   unsigned short subsystem_device ;
   unsigned int class ;
   u8 revision ;
   u8 hdr_type ;
   u8 pcie_cap ;
   u8 msi_cap ;
   u8 msix_cap ;
   unsigned char pcie_mpss : 3 ;
   u8 rom_base_reg ;
   u8 pin ;
   u16 pcie_flags_reg ;
   u8 dma_alias_devfn ;
   struct pci_driver *driver ;
   u64 dma_mask ;
   struct device_dma_parameters dma_parms ;
   pci_power_t current_state ;
   u8 pm_cap ;
   unsigned char pme_support : 5 ;
   unsigned char pme_interrupt : 1 ;
   unsigned char pme_poll : 1 ;
   unsigned char d1_support : 1 ;
   unsigned char d2_support : 1 ;
   unsigned char no_d1d2 : 1 ;
   unsigned char no_d3cold : 1 ;
   unsigned char d3cold_allowed : 1 ;
   unsigned char mmio_always_on : 1 ;
   unsigned char wakeup_prepared : 1 ;
   unsigned char runtime_d3cold : 1 ;
   unsigned int d3_delay ;
   unsigned int d3cold_delay ;
   struct pcie_link_state *link_state ;
   pci_channel_state_t error_state ;
   struct device dev ;
   int cfg_size ;
   unsigned int irq ;
   struct resource resource[17U] ;
   bool match_driver ;
   unsigned char transparent : 1 ;
   unsigned char multifunction : 1 ;
   unsigned char is_added : 1 ;
   unsigned char is_busmaster : 1 ;
   unsigned char no_msi : 1 ;
   unsigned char block_cfg_access : 1 ;
   unsigned char broken_parity_status : 1 ;
   unsigned char irq_reroute_variant : 2 ;
   unsigned char msi_enabled : 1 ;
   unsigned char msix_enabled : 1 ;
   unsigned char ari_enabled : 1 ;
   unsigned char is_managed : 1 ;
   unsigned char needs_freset : 1 ;
   unsigned char state_saved : 1 ;
   unsigned char is_physfn : 1 ;
   unsigned char is_virtfn : 1 ;
   unsigned char reset_fn : 1 ;
   unsigned char is_hotplug_bridge : 1 ;
   unsigned char __aer_firmware_first_valid : 1 ;
   unsigned char __aer_firmware_first : 1 ;
   unsigned char broken_intx_masking : 1 ;
   unsigned char io_window_1k : 1 ;
   pci_dev_flags_t dev_flags ;
   atomic_t enable_cnt ;
   u32 saved_config_space[16U] ;
   struct hlist_head saved_cap_space ;
   struct bin_attribute *rom_attr ;
   int rom_attr_enabled ;
   struct bin_attribute *res_attr[17U] ;
   struct bin_attribute *res_attr_wc[17U] ;
   struct list_head msi_list ;
   struct attribute_group const **msi_irq_groups ;
   struct pci_vpd *vpd ;
   union __anonunion_ldv_17845_162 ldv_17845 ;
   struct pci_ats *ats ;
   phys_addr_t rom ;
   size_t romlen ;
   char *driver_override ;
};
struct pci_ops;
struct msi_chip;
struct pci_bus {
   struct list_head node ;
   struct pci_bus *parent ;
   struct list_head children ;
   struct list_head devices ;
   struct pci_dev *self ;
   struct list_head slots ;
   struct resource *resource[4U] ;
   struct list_head resources ;
   struct resource busn_res ;
   struct pci_ops *ops ;
   struct msi_chip *msi ;
   void *sysdata ;
   struct proc_dir_entry *procdir ;
   unsigned char number ;
   unsigned char primary ;
   unsigned char max_bus_speed ;
   unsigned char cur_bus_speed ;
   char name[48U] ;
   unsigned short bridge_ctl ;
   pci_bus_flags_t bus_flags ;
   struct device *bridge ;
   struct device dev ;
   struct bin_attribute *legacy_io ;
   struct bin_attribute *legacy_mem ;
   unsigned char is_added : 1 ;
};
struct pci_ops {
   int (*read)(struct pci_bus * , unsigned int , int , int , u32 * ) ;
   int (*write)(struct pci_bus * , unsigned int , int , int , u32 ) ;
};
struct pci_dynids {
   spinlock_t lock ;
   struct list_head list ;
};
typedef unsigned int pci_ers_result_t;
struct pci_error_handlers {
   pci_ers_result_t (*error_detected)(struct pci_dev * , enum pci_channel_state ) ;
   pci_ers_result_t (*mmio_enabled)(struct pci_dev * ) ;
   pci_ers_result_t (*link_reset)(struct pci_dev * ) ;
   pci_ers_result_t (*slot_reset)(struct pci_dev * ) ;
   void (*reset_notify)(struct pci_dev * , bool ) ;
   void (*resume)(struct pci_dev * ) ;
};
struct pci_driver {
   struct list_head node ;
   char const *name ;
   struct pci_device_id const *id_table ;
   int (*probe)(struct pci_dev * , struct pci_device_id const * ) ;
   void (*remove)(struct pci_dev * ) ;
   int (*suspend)(struct pci_dev * , pm_message_t ) ;
   int (*suspend_late)(struct pci_dev * , pm_message_t ) ;
   int (*resume_early)(struct pci_dev * ) ;
   int (*resume)(struct pci_dev * ) ;
   void (*shutdown)(struct pci_dev * ) ;
   int (*sriov_configure)(struct pci_dev * , int ) ;
   struct pci_error_handlers const *err_handler ;
   struct device_driver driver ;
   struct pci_dynids dynids ;
};
struct scatterlist {
   unsigned long sg_magic ;
   unsigned long page_link ;
   unsigned int offset ;
   unsigned int length ;
   dma_addr_t dma_address ;
   unsigned int dma_length ;
};
struct msix_entry {
   u32 vector ;
   u16 entry ;
};
struct shrink_control {
   gfp_t gfp_mask ;
   unsigned long nr_to_scan ;
   nodemask_t nodes_to_scan ;
   int nid ;
};
struct shrinker {
   unsigned long (*count_objects)(struct shrinker * , struct shrink_control * ) ;
   unsigned long (*scan_objects)(struct shrinker * , struct shrink_control * ) ;
   int seeks ;
   long batch ;
   unsigned long flags ;
   struct list_head list ;
   atomic_long_t *nr_deferred ;
};
struct file_ra_state;
struct user_struct;
struct writeback_control;
struct vm_fault {
   unsigned int flags ;
   unsigned long pgoff ;
   void *virtual_address ;
   struct page *page ;
   unsigned long max_pgoff ;
   pte_t *pte ;
};
struct vm_operations_struct {
   void (*open)(struct vm_area_struct * ) ;
   void (*close)(struct vm_area_struct * ) ;
   int (*fault)(struct vm_area_struct * , struct vm_fault * ) ;
   void (*map_pages)(struct vm_area_struct * , struct vm_fault * ) ;
   int (*page_mkwrite)(struct vm_area_struct * , struct vm_fault * ) ;
   int (*access)(struct vm_area_struct * , unsigned long , void * , int , int ) ;
   char const *(*name)(struct vm_area_struct * ) ;
   int (*set_policy)(struct vm_area_struct * , struct mempolicy * ) ;
   struct mempolicy *(*get_policy)(struct vm_area_struct * , unsigned long ) ;
   int (*migrate)(struct vm_area_struct * , nodemask_t const * , nodemask_t const * ,
                  unsigned long ) ;
   int (*remap_pages)(struct vm_area_struct * , unsigned long , unsigned long ,
                      unsigned long ) ;
};
struct dma_attrs {
   unsigned long flags[1U] ;
};
enum dma_data_direction {
    DMA_BIDIRECTIONAL = 0,
    DMA_TO_DEVICE = 1,
    DMA_FROM_DEVICE = 2,
    DMA_NONE = 3
} ;
struct sg_table {
   struct scatterlist *sgl ;
   unsigned int nents ;
   unsigned int orig_nents ;
};
struct dma_map_ops {
   void *(*alloc)(struct device * , size_t , dma_addr_t * , gfp_t , struct dma_attrs * ) ;
   void (*free)(struct device * , size_t , void * , dma_addr_t , struct dma_attrs * ) ;
   int (*mmap)(struct device * , struct vm_area_struct * , void * , dma_addr_t ,
               size_t , struct dma_attrs * ) ;
   int (*get_sgtable)(struct device * , struct sg_table * , void * , dma_addr_t ,
                      size_t , struct dma_attrs * ) ;
   dma_addr_t (*map_page)(struct device * , struct page * , unsigned long , size_t ,
                          enum dma_data_direction , struct dma_attrs * ) ;
   void (*unmap_page)(struct device * , dma_addr_t , size_t , enum dma_data_direction ,
                      struct dma_attrs * ) ;
   int (*map_sg)(struct device * , struct scatterlist * , int , enum dma_data_direction ,
                 struct dma_attrs * ) ;
   void (*unmap_sg)(struct device * , struct scatterlist * , int , enum dma_data_direction ,
                    struct dma_attrs * ) ;
   void (*sync_single_for_cpu)(struct device * , dma_addr_t , size_t , enum dma_data_direction ) ;
   void (*sync_single_for_device)(struct device * , dma_addr_t , size_t , enum dma_data_direction ) ;
   void (*sync_sg_for_cpu)(struct device * , struct scatterlist * , int , enum dma_data_direction ) ;
   void (*sync_sg_for_device)(struct device * , struct scatterlist * , int , enum dma_data_direction ) ;
   int (*mapping_error)(struct device * , dma_addr_t ) ;
   int (*dma_supported)(struct device * , u64 ) ;
   int (*set_dma_mask)(struct device * , u64 ) ;
   int is_phys ;
};
struct kernel_cap_struct {
   __u32 cap[2U] ;
};
typedef struct kernel_cap_struct kernel_cap_t;
struct plist_node {
   int prio ;
   struct list_head prio_list ;
   struct list_head node_list ;
};
typedef unsigned long cputime_t;
struct sem_undo_list;
struct sysv_sem {
   struct sem_undo_list *undo_list ;
};
struct __anonstruct_sigset_t_164 {
   unsigned long sig[1U] ;
};
typedef struct __anonstruct_sigset_t_164 sigset_t;
struct siginfo;
typedef void __signalfn_t(int );
typedef __signalfn_t *__sighandler_t;
typedef void __restorefn_t(void);
typedef __restorefn_t *__sigrestore_t;
union sigval {
   int sival_int ;
   void *sival_ptr ;
};
typedef union sigval sigval_t;
struct __anonstruct__kill_166 {
   __kernel_pid_t _pid ;
   __kernel_uid32_t _uid ;
};
struct __anonstruct__timer_167 {
   __kernel_timer_t _tid ;
   int _overrun ;
   char _pad[0U] ;
   sigval_t _sigval ;
   int _sys_private ;
};
struct __anonstruct__rt_168 {
   __kernel_pid_t _pid ;
   __kernel_uid32_t _uid ;
   sigval_t _sigval ;
};
struct __anonstruct__sigchld_169 {
   __kernel_pid_t _pid ;
   __kernel_uid32_t _uid ;
   int _status ;
   __kernel_clock_t _utime ;
   __kernel_clock_t _stime ;
};
struct __anonstruct__sigfault_170 {
   void *_addr ;
   short _addr_lsb ;
};
struct __anonstruct__sigpoll_171 {
   long _band ;
   int _fd ;
};
struct __anonstruct__sigsys_172 {
   void *_call_addr ;
   int _syscall ;
   unsigned int _arch ;
};
union __anonunion__sifields_165 {
   int _pad[28U] ;
   struct __anonstruct__kill_166 _kill ;
   struct __anonstruct__timer_167 _timer ;
   struct __anonstruct__rt_168 _rt ;
   struct __anonstruct__sigchld_169 _sigchld ;
   struct __anonstruct__sigfault_170 _sigfault ;
   struct __anonstruct__sigpoll_171 _sigpoll ;
   struct __anonstruct__sigsys_172 _sigsys ;
};
struct siginfo {
   int si_signo ;
   int si_errno ;
   int si_code ;
   union __anonunion__sifields_165 _sifields ;
};
typedef struct siginfo siginfo_t;
struct sigpending {
   struct list_head list ;
   sigset_t signal ;
};
struct sigaction {
   __sighandler_t sa_handler ;
   unsigned long sa_flags ;
   __sigrestore_t sa_restorer ;
   sigset_t sa_mask ;
};
struct k_sigaction {
   struct sigaction sa ;
};
enum pid_type {
    PIDTYPE_PID = 0,
    PIDTYPE_PGID = 1,
    PIDTYPE_SID = 2,
    PIDTYPE_MAX = 3
} ;
struct pid_namespace;
struct upid {
   int nr ;
   struct pid_namespace *ns ;
   struct hlist_node pid_chain ;
};
struct pid {
   atomic_t count ;
   unsigned int level ;
   struct hlist_head tasks[3U] ;
   struct callback_head rcu ;
   struct upid numbers[1U] ;
};
struct pid_link {
   struct hlist_node node ;
   struct pid *pid ;
};
struct percpu_counter {
   raw_spinlock_t lock ;
   s64 count ;
   struct list_head list ;
   s32 *counters ;
};
struct seccomp_filter;
struct seccomp {
   int mode ;
   struct seccomp_filter *filter ;
};
struct rt_mutex_waiter;
struct rlimit {
   __kernel_ulong_t rlim_cur ;
   __kernel_ulong_t rlim_max ;
};
struct timerqueue_node {
   struct rb_node node ;
   ktime_t expires ;
};
struct timerqueue_head {
   struct rb_root head ;
   struct timerqueue_node *next ;
};
struct hrtimer_clock_base;
struct hrtimer_cpu_base;
enum hrtimer_restart {
    HRTIMER_NORESTART = 0,
    HRTIMER_RESTART = 1
} ;
struct hrtimer {
   struct timerqueue_node node ;
   ktime_t _softexpires ;
   enum hrtimer_restart (*function)(struct hrtimer * ) ;
   struct hrtimer_clock_base *base ;
   unsigned long state ;
   int start_pid ;
   void *start_site ;
   char start_comm[16U] ;
};
struct hrtimer_clock_base {
   struct hrtimer_cpu_base *cpu_base ;
   int index ;
   clockid_t clockid ;
   struct timerqueue_head active ;
   ktime_t resolution ;
   ktime_t (*get_time)(void) ;
   ktime_t softirq_time ;
   ktime_t offset ;
};
struct hrtimer_cpu_base {
   raw_spinlock_t lock ;
   unsigned int active_bases ;
   unsigned int clock_was_set ;
   ktime_t expires_next ;
   int hres_active ;
   int hang_detected ;
   unsigned long nr_events ;
   unsigned long nr_retries ;
   unsigned long nr_hangs ;
   ktime_t max_hang_time ;
   struct hrtimer_clock_base clock_base[4U] ;
};
struct task_io_accounting {
   u64 rchar ;
   u64 wchar ;
   u64 syscr ;
   u64 syscw ;
   u64 read_bytes ;
   u64 write_bytes ;
   u64 cancelled_write_bytes ;
};
struct latency_record {
   unsigned long backtrace[12U] ;
   unsigned int count ;
   unsigned long time ;
   unsigned long max ;
};
struct assoc_array_ptr;
struct assoc_array {
   struct assoc_array_ptr *root ;
   unsigned long nr_leaves_on_tree ;
};
typedef int32_t key_serial_t;
typedef uint32_t key_perm_t;
struct key;
struct signal_struct;
struct key_type;
struct keyring_index_key {
   struct key_type *type ;
   char const *description ;
   size_t desc_len ;
};
union __anonunion_ldv_24340_175 {
   struct list_head graveyard_link ;
   struct rb_node serial_node ;
};
struct key_user;
union __anonunion_ldv_24348_176 {
   time_t expiry ;
   time_t revoked_at ;
};
struct __anonstruct_ldv_24361_178 {
   struct key_type *type ;
   char *description ;
};
union __anonunion_ldv_24362_177 {
   struct keyring_index_key index_key ;
   struct __anonstruct_ldv_24361_178 ldv_24361 ;
};
union __anonunion_type_data_179 {
   struct list_head link ;
   unsigned long x[2U] ;
   void *p[2U] ;
   int reject_error ;
};
union __anonunion_payload_181 {
   unsigned long value ;
   void *rcudata ;
   void *data ;
   void *data2[2U] ;
};
union __anonunion_ldv_24377_180 {
   union __anonunion_payload_181 payload ;
   struct assoc_array keys ;
};
struct key {
   atomic_t usage ;
   key_serial_t serial ;
   union __anonunion_ldv_24340_175 ldv_24340 ;
   struct rw_semaphore sem ;
   struct key_user *user ;
   void *security ;
   union __anonunion_ldv_24348_176 ldv_24348 ;
   time_t last_used_at ;
   kuid_t uid ;
   kgid_t gid ;
   key_perm_t perm ;
   unsigned short quotalen ;
   unsigned short datalen ;
   unsigned long flags ;
   union __anonunion_ldv_24362_177 ldv_24362 ;
   union __anonunion_type_data_179 type_data ;
   union __anonunion_ldv_24377_180 ldv_24377 ;
};
struct audit_context;
struct group_info {
   atomic_t usage ;
   int ngroups ;
   int nblocks ;
   kgid_t small_block[32U] ;
   kgid_t *blocks[0U] ;
};
struct cred {
   atomic_t usage ;
   atomic_t subscribers ;
   void *put_addr ;
   unsigned int magic ;
   kuid_t uid ;
   kgid_t gid ;
   kuid_t suid ;
   kgid_t sgid ;
   kuid_t euid ;
   kgid_t egid ;
   kuid_t fsuid ;
   kgid_t fsgid ;
   unsigned int securebits ;
   kernel_cap_t cap_inheritable ;
   kernel_cap_t cap_permitted ;
   kernel_cap_t cap_effective ;
   kernel_cap_t cap_bset ;
   unsigned char jit_keyring ;
   struct key *session_keyring ;
   struct key *process_keyring ;
   struct key *thread_keyring ;
   struct key *request_key_auth ;
   void *security ;
   struct user_struct *user ;
   struct user_namespace *user_ns ;
   struct group_info *group_info ;
   struct callback_head rcu ;
};
struct futex_pi_state;
struct robust_list_head;
struct bio_list;
struct fs_struct;
struct perf_event_context;
struct blk_plug;
struct cfs_rq;
struct task_group;
struct sighand_struct {
   atomic_t count ;
   struct k_sigaction action[64U] ;
   spinlock_t siglock ;
   wait_queue_head_t signalfd_wqh ;
};
struct pacct_struct {
   int ac_flag ;
   long ac_exitcode ;
   unsigned long ac_mem ;
   cputime_t ac_utime ;
   cputime_t ac_stime ;
   unsigned long ac_minflt ;
   unsigned long ac_majflt ;
};
struct cpu_itimer {
   cputime_t expires ;
   cputime_t incr ;
   u32 error ;
   u32 incr_error ;
};
struct cputime {
   cputime_t utime ;
   cputime_t stime ;
};
struct task_cputime {
   cputime_t utime ;
   cputime_t stime ;
   unsigned long long sum_exec_runtime ;
};
struct thread_group_cputimer {
   struct task_cputime cputime ;
   int running ;
   raw_spinlock_t lock ;
};
struct autogroup;
struct tty_struct;
struct taskstats;
struct tty_audit_buf;
struct signal_struct {
   atomic_t sigcnt ;
   atomic_t live ;
   int nr_threads ;
   struct list_head thread_head ;
   wait_queue_head_t wait_chldexit ;
   struct task_struct *curr_target ;
   struct sigpending shared_pending ;
   int group_exit_code ;
   int notify_count ;
   struct task_struct *group_exit_task ;
   int group_stop_count ;
   unsigned int flags ;
   unsigned char is_child_subreaper : 1 ;
   unsigned char has_child_subreaper : 1 ;
   int posix_timer_id ;
   struct list_head posix_timers ;
   struct hrtimer real_timer ;
   struct pid *leader_pid ;
   ktime_t it_real_incr ;
   struct cpu_itimer it[2U] ;
   struct thread_group_cputimer cputimer ;
   struct task_cputime cputime_expires ;
   struct list_head cpu_timers[3U] ;
   struct pid *tty_old_pgrp ;
   int leader ;
   struct tty_struct *tty ;
   struct autogroup *autogroup ;
   cputime_t utime ;
   cputime_t stime ;
   cputime_t cutime ;
   cputime_t cstime ;
   cputime_t gtime ;
   cputime_t cgtime ;
   struct cputime prev_cputime ;
   unsigned long nvcsw ;
   unsigned long nivcsw ;
   unsigned long cnvcsw ;
   unsigned long cnivcsw ;
   unsigned long min_flt ;
   unsigned long maj_flt ;
   unsigned long cmin_flt ;
   unsigned long cmaj_flt ;
   unsigned long inblock ;
   unsigned long oublock ;
   unsigned long cinblock ;
   unsigned long coublock ;
   unsigned long maxrss ;
   unsigned long cmaxrss ;
   struct task_io_accounting ioac ;
   unsigned long long sum_sched_runtime ;
   struct rlimit rlim[16U] ;
   struct pacct_struct pacct ;
   struct taskstats *stats ;
   unsigned int audit_tty ;
   unsigned int audit_tty_log_passwd ;
   struct tty_audit_buf *tty_audit_buf ;
   struct rw_semaphore group_rwsem ;
   oom_flags_t oom_flags ;
   short oom_score_adj ;
   short oom_score_adj_min ;
   struct mutex cred_guard_mutex ;
};
struct user_struct {
   atomic_t __count ;
   atomic_t processes ;
   atomic_t sigpending ;
   atomic_t inotify_watches ;
   atomic_t inotify_devs ;
   atomic_t fanotify_listeners ;
   atomic_long_t epoll_watches ;
   unsigned long mq_bytes ;
   unsigned long locked_shm ;
   struct key *uid_keyring ;
   struct key *session_keyring ;
   struct hlist_node uidhash_node ;
   kuid_t uid ;
   atomic_long_t locked_vm ;
};
struct backing_dev_info;
struct reclaim_state;
struct sched_info {
   unsigned long pcount ;
   unsigned long long run_delay ;
   unsigned long long last_arrival ;
   unsigned long long last_queued ;
};
struct task_delay_info {
   spinlock_t lock ;
   unsigned int flags ;
   struct timespec blkio_start ;
   struct timespec blkio_end ;
   u64 blkio_delay ;
   u64 swapin_delay ;
   u32 blkio_count ;
   u32 swapin_count ;
   struct timespec freepages_start ;
   struct timespec freepages_end ;
   u64 freepages_delay ;
   u32 freepages_count ;
};
struct io_context;
struct pipe_inode_info;
struct load_weight {
   unsigned long weight ;
   u32 inv_weight ;
};
struct sched_avg {
   u32 runnable_avg_sum ;
   u32 runnable_avg_period ;
   u64 last_runnable_update ;
   s64 decay_count ;
   unsigned long load_avg_contrib ;
};
struct sched_statistics {
   u64 wait_start ;
   u64 wait_max ;
   u64 wait_count ;
   u64 wait_sum ;
   u64 iowait_count ;
   u64 iowait_sum ;
   u64 sleep_start ;
   u64 sleep_max ;
   s64 sum_sleep_runtime ;
   u64 block_start ;
   u64 block_max ;
   u64 exec_max ;
   u64 slice_max ;
   u64 nr_migrations_cold ;
   u64 nr_failed_migrations_affine ;
   u64 nr_failed_migrations_running ;
   u64 nr_failed_migrations_hot ;
   u64 nr_forced_migrations ;
   u64 nr_wakeups ;
   u64 nr_wakeups_sync ;
   u64 nr_wakeups_migrate ;
   u64 nr_wakeups_local ;
   u64 nr_wakeups_remote ;
   u64 nr_wakeups_affine ;
   u64 nr_wakeups_affine_attempts ;
   u64 nr_wakeups_passive ;
   u64 nr_wakeups_idle ;
};
struct sched_entity {
   struct load_weight load ;
   struct rb_node run_node ;
   struct list_head group_node ;
   unsigned int on_rq ;
   u64 exec_start ;
   u64 sum_exec_runtime ;
   u64 vruntime ;
   u64 prev_sum_exec_runtime ;
   u64 nr_migrations ;
   struct sched_statistics statistics ;
   int depth ;
   struct sched_entity *parent ;
   struct cfs_rq *cfs_rq ;
   struct cfs_rq *my_q ;
   struct sched_avg avg ;
};
struct rt_rq;
struct sched_rt_entity {
   struct list_head run_list ;
   unsigned long timeout ;
   unsigned long watchdog_stamp ;
   unsigned int time_slice ;
   struct sched_rt_entity *back ;
   struct sched_rt_entity *parent ;
   struct rt_rq *rt_rq ;
   struct rt_rq *my_q ;
};
struct sched_dl_entity {
   struct rb_node rb_node ;
   u64 dl_runtime ;
   u64 dl_deadline ;
   u64 dl_period ;
   u64 dl_bw ;
   s64 runtime ;
   u64 deadline ;
   unsigned int flags ;
   int dl_throttled ;
   int dl_new ;
   int dl_boosted ;
   int dl_yielded ;
   struct hrtimer dl_timer ;
};
struct memcg_batch_info {
   int do_batch ;
   struct mem_cgroup *memcg ;
   unsigned long nr_pages ;
   unsigned long memsw_nr_pages ;
};
struct memcg_oom_info {
   struct mem_cgroup *memcg ;
   gfp_t gfp_mask ;
   int order ;
   unsigned char may_oom : 1 ;
};
struct sched_class;
struct files_struct;
struct css_set;
struct compat_robust_list_head;
struct numa_group;
struct ftrace_ret_stack;
struct task_struct {
   long volatile state ;
   void *stack ;
   atomic_t usage ;
   unsigned int flags ;
   unsigned int ptrace ;
   struct llist_node wake_entry ;
   int on_cpu ;
   struct task_struct *last_wakee ;
   unsigned long wakee_flips ;
   unsigned long wakee_flip_decay_ts ;
   int wake_cpu ;
   int on_rq ;
   int prio ;
   int static_prio ;
   int normal_prio ;
   unsigned int rt_priority ;
   struct sched_class const *sched_class ;
   struct sched_entity se ;
   struct sched_rt_entity rt ;
   struct task_group *sched_task_group ;
   struct sched_dl_entity dl ;
   struct hlist_head preempt_notifiers ;
   unsigned int btrace_seq ;
   unsigned int policy ;
   int nr_cpus_allowed ;
   cpumask_t cpus_allowed ;
   struct sched_info sched_info ;
   struct list_head tasks ;
   struct plist_node pushable_tasks ;
   struct rb_node pushable_dl_tasks ;
   struct mm_struct *mm ;
   struct mm_struct *active_mm ;
   unsigned char brk_randomized : 1 ;
   u32 vmacache_seqnum ;
   struct vm_area_struct *vmacache[4U] ;
   struct task_rss_stat rss_stat ;
   int exit_state ;
   int exit_code ;
   int exit_signal ;
   int pdeath_signal ;
   unsigned int jobctl ;
   unsigned int personality ;
   unsigned char in_execve : 1 ;
   unsigned char in_iowait : 1 ;
   unsigned char no_new_privs : 1 ;
   unsigned char sched_reset_on_fork : 1 ;
   unsigned char sched_contributes_to_load : 1 ;
   pid_t pid ;
   pid_t tgid ;
   struct task_struct *real_parent ;
   struct task_struct *parent ;
   struct list_head children ;
   struct list_head sibling ;
   struct task_struct *group_leader ;
   struct list_head ptraced ;
   struct list_head ptrace_entry ;
   struct pid_link pids[3U] ;
   struct list_head thread_group ;
   struct list_head thread_node ;
   struct completion *vfork_done ;
   int *set_child_tid ;
   int *clear_child_tid ;
   cputime_t utime ;
   cputime_t stime ;
   cputime_t utimescaled ;
   cputime_t stimescaled ;
   cputime_t gtime ;
   struct cputime prev_cputime ;
   unsigned long nvcsw ;
   unsigned long nivcsw ;
   struct timespec start_time ;
   struct timespec real_start_time ;
   unsigned long min_flt ;
   unsigned long maj_flt ;
   struct task_cputime cputime_expires ;
   struct list_head cpu_timers[3U] ;
   struct cred const *real_cred ;
   struct cred const *cred ;
   char comm[16U] ;
   int link_count ;
   int total_link_count ;
   struct sysv_sem sysvsem ;
   unsigned long last_switch_count ;
   struct thread_struct thread ;
   struct fs_struct *fs ;
   struct files_struct *files ;
   struct nsproxy *nsproxy ;
   struct signal_struct *signal ;
   struct sighand_struct *sighand ;
   sigset_t blocked ;
   sigset_t real_blocked ;
   sigset_t saved_sigmask ;
   struct sigpending pending ;
   unsigned long sas_ss_sp ;
   size_t sas_ss_size ;
   int (*notifier)(void * ) ;
   void *notifier_data ;
   sigset_t *notifier_mask ;
   struct callback_head *task_works ;
   struct audit_context *audit_context ;
   kuid_t loginuid ;
   unsigned int sessionid ;
   struct seccomp seccomp ;
   u32 parent_exec_id ;
   u32 self_exec_id ;
   spinlock_t alloc_lock ;
   raw_spinlock_t pi_lock ;
   struct rb_root pi_waiters ;
   struct rb_node *pi_waiters_leftmost ;
   struct rt_mutex_waiter *pi_blocked_on ;
   struct task_struct *pi_top_task ;
   struct mutex_waiter *blocked_on ;
   unsigned int irq_events ;
   unsigned long hardirq_enable_ip ;
   unsigned long hardirq_disable_ip ;
   unsigned int hardirq_enable_event ;
   unsigned int hardirq_disable_event ;
   int hardirqs_enabled ;
   int hardirq_context ;
   unsigned long softirq_disable_ip ;
   unsigned long softirq_enable_ip ;
   unsigned int softirq_disable_event ;
   unsigned int softirq_enable_event ;
   int softirqs_enabled ;
   int softirq_context ;
   u64 curr_chain_key ;
   int lockdep_depth ;
   unsigned int lockdep_recursion ;
   struct held_lock held_locks[48U] ;
   gfp_t lockdep_reclaim_gfp ;
   void *journal_info ;
   struct bio_list *bio_list ;
   struct blk_plug *plug ;
   struct reclaim_state *reclaim_state ;
   struct backing_dev_info *backing_dev_info ;
   struct io_context *io_context ;
   unsigned long ptrace_message ;
   siginfo_t *last_siginfo ;
   struct task_io_accounting ioac ;
   u64 acct_rss_mem1 ;
   u64 acct_vm_mem1 ;
   cputime_t acct_timexpd ;
   nodemask_t mems_allowed ;
   seqcount_t mems_allowed_seq ;
   int cpuset_mem_spread_rotor ;
   int cpuset_slab_spread_rotor ;
   struct css_set *cgroups ;
   struct list_head cg_list ;
   struct robust_list_head *robust_list ;
   struct compat_robust_list_head *compat_robust_list ;
   struct list_head pi_state_list ;
   struct futex_pi_state *pi_state_cache ;
   struct perf_event_context *perf_event_ctxp[2U] ;
   struct mutex perf_event_mutex ;
   struct list_head perf_event_list ;
   struct mempolicy *mempolicy ;
   short il_next ;
   short pref_node_fork ;
   int numa_scan_seq ;
   unsigned int numa_scan_period ;
   unsigned int numa_scan_period_max ;
   int numa_preferred_nid ;
   unsigned long numa_migrate_retry ;
   u64 node_stamp ;
   u64 last_task_numa_placement ;
   u64 last_sum_exec_runtime ;
   struct callback_head numa_work ;
   struct list_head numa_entry ;
   struct numa_group *numa_group ;
   unsigned long *numa_faults_memory ;
   unsigned long total_numa_faults ;
   unsigned long *numa_faults_buffer_memory ;
   unsigned long *numa_faults_cpu ;
   unsigned long *numa_faults_buffer_cpu ;
   unsigned long numa_faults_locality[2U] ;
   unsigned long numa_pages_migrated ;
   struct callback_head rcu ;
   struct pipe_inode_info *splice_pipe ;
   struct page_frag task_frag ;
   struct task_delay_info *delays ;
   int make_it_fail ;
   int nr_dirtied ;
   int nr_dirtied_pause ;
   unsigned long dirty_paused_when ;
   int latency_record_count ;
   struct latency_record latency_record[32U] ;
   unsigned long timer_slack_ns ;
   unsigned long default_timer_slack_ns ;
   int curr_ret_stack ;
   struct ftrace_ret_stack *ret_stack ;
   unsigned long long ftrace_timestamp ;
   atomic_t trace_overrun ;
   atomic_t tracing_graph_pause ;
   unsigned long trace ;
   unsigned long trace_recursion ;
   struct memcg_batch_info memcg_batch ;
   unsigned int memcg_kmem_skip_account ;
   struct memcg_oom_info memcg_oom ;
   struct uprobe_task *utask ;
   unsigned int sequential_io ;
   unsigned int sequential_io_avg ;
};
struct hlist_bl_node;
struct hlist_bl_head {
   struct hlist_bl_node *first ;
};
struct hlist_bl_node {
   struct hlist_bl_node *next ;
   struct hlist_bl_node **pprev ;
};
struct __anonstruct_ldv_26168_184 {
   spinlock_t lock ;
   unsigned int count ;
};
union __anonunion_ldv_26169_183 {
   struct __anonstruct_ldv_26168_184 ldv_26168 ;
};
struct lockref {
   union __anonunion_ldv_26169_183 ldv_26169 ;
};
struct nameidata;
struct vfsmount;
struct __anonstruct_ldv_26192_186 {
   u32 hash ;
   u32 len ;
};
union __anonunion_ldv_26194_185 {
   struct __anonstruct_ldv_26192_186 ldv_26192 ;
   u64 hash_len ;
};
struct qstr {
   union __anonunion_ldv_26194_185 ldv_26194 ;
   unsigned char const *name ;
};
struct dentry_operations;
union __anonunion_d_u_187 {
   struct list_head d_child ;
   struct callback_head d_rcu ;
};
struct dentry {
   unsigned int d_flags ;
   seqcount_t d_seq ;
   struct hlist_bl_node d_hash ;
   struct dentry *d_parent ;
   struct qstr d_name ;
   struct inode *d_inode ;
   unsigned char d_iname[32U] ;
   struct lockref d_lockref ;
   struct dentry_operations const *d_op ;
   struct super_block *d_sb ;
   unsigned long d_time ;
   void *d_fsdata ;
   struct list_head d_lru ;
   union __anonunion_d_u_187 d_u ;
   struct list_head d_subdirs ;
   struct hlist_node d_alias ;
};
struct dentry_operations {
   int (*d_revalidate)(struct dentry * , unsigned int ) ;
   int (*d_weak_revalidate)(struct dentry * , unsigned int ) ;
   int (*d_hash)(struct dentry const * , struct qstr * ) ;
   int (*d_compare)(struct dentry const * , struct dentry const * , unsigned int ,
                    char const * , struct qstr const * ) ;
   int (*d_delete)(struct dentry const * ) ;
   void (*d_release)(struct dentry * ) ;
   void (*d_prune)(struct dentry * ) ;
   void (*d_iput)(struct dentry * , struct inode * ) ;
   char *(*d_dname)(struct dentry * , char * , int ) ;
   struct vfsmount *(*d_automount)(struct path * ) ;
   int (*d_manage)(struct dentry * , bool ) ;
};
struct path {
   struct vfsmount *mnt ;
   struct dentry *dentry ;
};
struct list_lru_node {
   spinlock_t lock ;
   struct list_head list ;
   long nr_items ;
};
struct list_lru {
   struct list_lru_node *node ;
   nodemask_t active_nodes ;
};
struct __anonstruct_ldv_26555_189 {
   struct radix_tree_node *parent ;
   void *private_data ;
};
union __anonunion_ldv_26557_188 {
   struct __anonstruct_ldv_26555_189 ldv_26555 ;
   struct callback_head callback_head ;
};
struct radix_tree_node {
   unsigned int path ;
   unsigned int count ;
   union __anonunion_ldv_26557_188 ldv_26557 ;
   struct list_head private_list ;
   void *slots[64U] ;
   unsigned long tags[3U][1U] ;
};
struct radix_tree_root {
   unsigned int height ;
   gfp_t gfp_mask ;
   struct radix_tree_node *rnode ;
};
struct fiemap_extent {
   __u64 fe_logical ;
   __u64 fe_physical ;
   __u64 fe_length ;
   __u64 fe_reserved64[2U] ;
   __u32 fe_flags ;
   __u32 fe_reserved[3U] ;
};
enum migrate_mode {
    MIGRATE_ASYNC = 0,
    MIGRATE_SYNC_LIGHT = 1,
    MIGRATE_SYNC = 2
} ;
struct bio_set;
struct bio;
struct bio_integrity_payload;
struct cgroup_subsys_state;
typedef void bio_end_io_t(struct bio * , int );
struct bio_vec {
   struct page *bv_page ;
   unsigned int bv_len ;
   unsigned int bv_offset ;
};
struct bvec_iter {
   sector_t bi_sector ;
   unsigned int bi_size ;
   unsigned int bi_idx ;
   unsigned int bi_bvec_done ;
};
struct bio {
   struct bio *bi_next ;
   struct block_device *bi_bdev ;
   unsigned long bi_flags ;
   unsigned long bi_rw ;
   struct bvec_iter bi_iter ;
   unsigned int bi_phys_segments ;
   unsigned int bi_seg_front_size ;
   unsigned int bi_seg_back_size ;
   atomic_t bi_remaining ;
   bio_end_io_t *bi_end_io ;
   void *bi_private ;
   struct io_context *bi_ioc ;
   struct cgroup_subsys_state *bi_css ;
   struct bio_integrity_payload *bi_integrity ;
   unsigned short bi_vcnt ;
   unsigned short bi_max_vecs ;
   atomic_t bi_cnt ;
   struct bio_vec *bi_io_vec ;
   struct bio_set *bi_pool ;
   struct bio_vec bi_inline_vecs[0U] ;
};
struct export_operations;
struct hd_geometry;
struct iovec;
struct kiocb;
struct poll_table_struct;
struct kstatfs;
struct swap_info_struct;
struct iov_iter;
struct iattr {
   unsigned int ia_valid ;
   umode_t ia_mode ;
   kuid_t ia_uid ;
   kgid_t ia_gid ;
   loff_t ia_size ;
   struct timespec ia_atime ;
   struct timespec ia_mtime ;
   struct timespec ia_ctime ;
   struct file *ia_file ;
};
struct fs_disk_quota {
   __s8 d_version ;
   __s8 d_flags ;
   __u16 d_fieldmask ;
   __u32 d_id ;
   __u64 d_blk_hardlimit ;
   __u64 d_blk_softlimit ;
   __u64 d_ino_hardlimit ;
   __u64 d_ino_softlimit ;
   __u64 d_bcount ;
   __u64 d_icount ;
   __s32 d_itimer ;
   __s32 d_btimer ;
   __u16 d_iwarns ;
   __u16 d_bwarns ;
   __s32 d_padding2 ;
   __u64 d_rtb_hardlimit ;
   __u64 d_rtb_softlimit ;
   __u64 d_rtbcount ;
   __s32 d_rtbtimer ;
   __u16 d_rtbwarns ;
   __s16 d_padding3 ;
   char d_padding4[8U] ;
};
struct fs_qfilestat {
   __u64 qfs_ino ;
   __u64 qfs_nblks ;
   __u32 qfs_nextents ;
};
typedef struct fs_qfilestat fs_qfilestat_t;
struct fs_quota_stat {
   __s8 qs_version ;
   __u16 qs_flags ;
   __s8 qs_pad ;
   fs_qfilestat_t qs_uquota ;
   fs_qfilestat_t qs_gquota ;
   __u32 qs_incoredqs ;
   __s32 qs_btimelimit ;
   __s32 qs_itimelimit ;
   __s32 qs_rtbtimelimit ;
   __u16 qs_bwarnlimit ;
   __u16 qs_iwarnlimit ;
};
struct fs_qfilestatv {
   __u64 qfs_ino ;
   __u64 qfs_nblks ;
   __u32 qfs_nextents ;
   __u32 qfs_pad ;
};
struct fs_quota_statv {
   __s8 qs_version ;
   __u8 qs_pad1 ;
   __u16 qs_flags ;
   __u32 qs_incoredqs ;
   struct fs_qfilestatv qs_uquota ;
   struct fs_qfilestatv qs_gquota ;
   struct fs_qfilestatv qs_pquota ;
   __s32 qs_btimelimit ;
   __s32 qs_itimelimit ;
   __s32 qs_rtbtimelimit ;
   __u16 qs_bwarnlimit ;
   __u16 qs_iwarnlimit ;
   __u64 qs_pad2[8U] ;
};
struct dquot;
typedef __kernel_uid32_t projid_t;
struct __anonstruct_kprojid_t_190 {
   projid_t val ;
};
typedef struct __anonstruct_kprojid_t_190 kprojid_t;
struct if_dqinfo {
   __u64 dqi_bgrace ;
   __u64 dqi_igrace ;
   __u32 dqi_flags ;
   __u32 dqi_valid ;
};
enum quota_type {
    USRQUOTA = 0,
    GRPQUOTA = 1,
    PRJQUOTA = 2
} ;
typedef long long qsize_t;
union __anonunion_ldv_27085_191 {
   kuid_t uid ;
   kgid_t gid ;
   kprojid_t projid ;
};
struct kqid {
   union __anonunion_ldv_27085_191 ldv_27085 ;
   enum quota_type type ;
};
struct mem_dqblk {
   qsize_t dqb_bhardlimit ;
   qsize_t dqb_bsoftlimit ;
   qsize_t dqb_curspace ;
   qsize_t dqb_rsvspace ;
   qsize_t dqb_ihardlimit ;
   qsize_t dqb_isoftlimit ;
   qsize_t dqb_curinodes ;
   time_t dqb_btime ;
   time_t dqb_itime ;
};
struct quota_format_type;
struct mem_dqinfo {
   struct quota_format_type *dqi_format ;
   int dqi_fmt_id ;
   struct list_head dqi_dirty_list ;
   unsigned long dqi_flags ;
   unsigned int dqi_bgrace ;
   unsigned int dqi_igrace ;
   qsize_t dqi_maxblimit ;
   qsize_t dqi_maxilimit ;
   void *dqi_priv ;
};
struct dquot {
   struct hlist_node dq_hash ;
   struct list_head dq_inuse ;
   struct list_head dq_free ;
   struct list_head dq_dirty ;
   struct mutex dq_lock ;
   atomic_t dq_count ;
   wait_queue_head_t dq_wait_unused ;
   struct super_block *dq_sb ;
   struct kqid dq_id ;
   loff_t dq_off ;
   unsigned long dq_flags ;
   struct mem_dqblk dq_dqb ;
};
struct quota_format_ops {
   int (*check_quota_file)(struct super_block * , int ) ;
   int (*read_file_info)(struct super_block * , int ) ;
   int (*write_file_info)(struct super_block * , int ) ;
   int (*free_file_info)(struct super_block * , int ) ;
   int (*read_dqblk)(struct dquot * ) ;
   int (*commit_dqblk)(struct dquot * ) ;
   int (*release_dqblk)(struct dquot * ) ;
};
struct dquot_operations {
   int (*write_dquot)(struct dquot * ) ;
   struct dquot *(*alloc_dquot)(struct super_block * , int ) ;
   void (*destroy_dquot)(struct dquot * ) ;
   int (*acquire_dquot)(struct dquot * ) ;
   int (*release_dquot)(struct dquot * ) ;
   int (*mark_dirty)(struct dquot * ) ;
   int (*write_info)(struct super_block * , int ) ;
   qsize_t *(*get_reserved_space)(struct inode * ) ;
};
struct quotactl_ops {
   int (*quota_on)(struct super_block * , int , int , struct path * ) ;
   int (*quota_on_meta)(struct super_block * , int , int ) ;
   int (*quota_off)(struct super_block * , int ) ;
   int (*quota_sync)(struct super_block * , int ) ;
   int (*get_info)(struct super_block * , int , struct if_dqinfo * ) ;
   int (*set_info)(struct super_block * , int , struct if_dqinfo * ) ;
   int (*get_dqblk)(struct super_block * , struct kqid , struct fs_disk_quota * ) ;
   int (*set_dqblk)(struct super_block * , struct kqid , struct fs_disk_quota * ) ;
   int (*get_xstate)(struct super_block * , struct fs_quota_stat * ) ;
   int (*set_xstate)(struct super_block * , unsigned int , int ) ;
   int (*get_xstatev)(struct super_block * , struct fs_quota_statv * ) ;
   int (*rm_xquota)(struct super_block * , unsigned int ) ;
};
struct quota_format_type {
   int qf_fmt_id ;
   struct quota_format_ops const *qf_ops ;
   struct module *qf_owner ;
   struct quota_format_type *qf_next ;
};
struct quota_info {
   unsigned int flags ;
   struct mutex dqio_mutex ;
   struct mutex dqonoff_mutex ;
   struct rw_semaphore dqptr_sem ;
   struct inode *files[2U] ;
   struct mem_dqinfo info[2U] ;
   struct quota_format_ops const *ops[2U] ;
};
struct address_space_operations {
   int (*writepage)(struct page * , struct writeback_control * ) ;
   int (*readpage)(struct file * , struct page * ) ;
   int (*writepages)(struct address_space * , struct writeback_control * ) ;
   int (*set_page_dirty)(struct page * ) ;
   int (*readpages)(struct file * , struct address_space * , struct list_head * ,
                    unsigned int ) ;
   int (*write_begin)(struct file * , struct address_space * , loff_t , unsigned int ,
                      unsigned int , struct page ** , void ** ) ;
   int (*write_end)(struct file * , struct address_space * , loff_t , unsigned int ,
                    unsigned int , struct page * , void * ) ;
   sector_t (*bmap)(struct address_space * , sector_t ) ;
   void (*invalidatepage)(struct page * , unsigned int , unsigned int ) ;
   int (*releasepage)(struct page * , gfp_t ) ;
   void (*freepage)(struct page * ) ;
   ssize_t (*direct_IO)(int , struct kiocb * , struct iov_iter * , loff_t ) ;
   int (*get_xip_mem)(struct address_space * , unsigned long , int , void ** , unsigned long * ) ;
   int (*migratepage)(struct address_space * , struct page * , struct page * , enum migrate_mode ) ;
   int (*launder_page)(struct page * ) ;
   int (*is_partially_uptodate)(struct page * , unsigned long , unsigned long ) ;
   void (*is_dirty_writeback)(struct page * , bool * , bool * ) ;
   int (*error_remove_page)(struct address_space * , struct page * ) ;
   int (*swap_activate)(struct swap_info_struct * , struct file * , sector_t * ) ;
   void (*swap_deactivate)(struct file * ) ;
};
struct address_space {
   struct inode *host ;
   struct radix_tree_root page_tree ;
   spinlock_t tree_lock ;
   unsigned int i_mmap_writable ;
   struct rb_root i_mmap ;
   struct list_head i_mmap_nonlinear ;
   struct mutex i_mmap_mutex ;
   unsigned long nrpages ;
   unsigned long nrshadows ;
   unsigned long writeback_index ;
   struct address_space_operations const *a_ops ;
   unsigned long flags ;
   struct backing_dev_info *backing_dev_info ;
   spinlock_t private_lock ;
   struct list_head private_list ;
   void *private_data ;
};
struct request_queue;
struct hd_struct;
struct gendisk;
struct block_device {
   dev_t bd_dev ;
   int bd_openers ;
   struct inode *bd_inode ;
   struct super_block *bd_super ;
   struct mutex bd_mutex ;
   struct list_head bd_inodes ;
   void *bd_claiming ;
   void *bd_holder ;
   int bd_holders ;
   bool bd_write_holder ;
   struct list_head bd_holder_disks ;
   struct block_device *bd_contains ;
   unsigned int bd_block_size ;
   struct hd_struct *bd_part ;
   unsigned int bd_part_count ;
   int bd_invalidated ;
   struct gendisk *bd_disk ;
   struct request_queue *bd_queue ;
   struct list_head bd_list ;
   unsigned long bd_private ;
   int bd_fsfreeze_count ;
   struct mutex bd_fsfreeze_mutex ;
};
struct posix_acl;
struct inode_operations;
union __anonunion_ldv_27499_194 {
   unsigned int const i_nlink ;
   unsigned int __i_nlink ;
};
union __anonunion_ldv_27519_195 {
   struct hlist_head i_dentry ;
   struct callback_head i_rcu ;
};
struct file_lock;
struct cdev;
union __anonunion_ldv_27536_196 {
   struct pipe_inode_info *i_pipe ;
   struct block_device *i_bdev ;
   struct cdev *i_cdev ;
};
struct inode {
   umode_t i_mode ;
   unsigned short i_opflags ;
   kuid_t i_uid ;
   kgid_t i_gid ;
   unsigned int i_flags ;
   struct posix_acl *i_acl ;
   struct posix_acl *i_default_acl ;
   struct inode_operations const *i_op ;
   struct super_block *i_sb ;
   struct address_space *i_mapping ;
   void *i_security ;
   unsigned long i_ino ;
   union __anonunion_ldv_27499_194 ldv_27499 ;
   dev_t i_rdev ;
   loff_t i_size ;
   struct timespec i_atime ;
   struct timespec i_mtime ;
   struct timespec i_ctime ;
   spinlock_t i_lock ;
   unsigned short i_bytes ;
   unsigned int i_blkbits ;
   blkcnt_t i_blocks ;
   unsigned long i_state ;
   struct mutex i_mutex ;
   unsigned long dirtied_when ;
   struct hlist_node i_hash ;
   struct list_head i_wb_list ;
   struct list_head i_lru ;
   struct list_head i_sb_list ;
   union __anonunion_ldv_27519_195 ldv_27519 ;
   u64 i_version ;
   atomic_t i_count ;
   atomic_t i_dio_count ;
   atomic_t i_writecount ;
   atomic_t i_readcount ;
   struct file_operations const *i_fop ;
   struct file_lock *i_flock ;
   struct address_space i_data ;
   struct dquot *i_dquot[2U] ;
   struct list_head i_devices ;
   union __anonunion_ldv_27536_196 ldv_27536 ;
   __u32 i_generation ;
   __u32 i_fsnotify_mask ;
   struct hlist_head i_fsnotify_marks ;
   void *i_private ;
};
struct fown_struct {
   rwlock_t lock ;
   struct pid *pid ;
   enum pid_type pid_type ;
   kuid_t uid ;
   kuid_t euid ;
   int signum ;
};
struct file_ra_state {
   unsigned long start ;
   unsigned int size ;
   unsigned int async_size ;
   unsigned int ra_pages ;
   unsigned int mmap_miss ;
   loff_t prev_pos ;
};
union __anonunion_f_u_197 {
   struct llist_node fu_llist ;
   struct callback_head fu_rcuhead ;
};
struct file {
   union __anonunion_f_u_197 f_u ;
   struct path f_path ;
   struct inode *f_inode ;
   struct file_operations const *f_op ;
   spinlock_t f_lock ;
   atomic_long_t f_count ;
   unsigned int f_flags ;
   fmode_t f_mode ;
   struct mutex f_pos_lock ;
   loff_t f_pos ;
   struct fown_struct f_owner ;
   struct cred const *f_cred ;
   struct file_ra_state f_ra ;
   u64 f_version ;
   void *f_security ;
   void *private_data ;
   struct list_head f_ep_links ;
   struct list_head f_tfile_llink ;
   struct address_space *f_mapping ;
};
typedef struct files_struct *fl_owner_t;
struct file_lock_operations {
   void (*fl_copy_lock)(struct file_lock * , struct file_lock * ) ;
   void (*fl_release_private)(struct file_lock * ) ;
};
struct lock_manager_operations {
   int (*lm_compare_owner)(struct file_lock * , struct file_lock * ) ;
   unsigned long (*lm_owner_key)(struct file_lock * ) ;
   void (*lm_notify)(struct file_lock * ) ;
   int (*lm_grant)(struct file_lock * , struct file_lock * , int ) ;
   void (*lm_break)(struct file_lock * ) ;
   int (*lm_change)(struct file_lock ** , int ) ;
};
struct nlm_lockowner;
struct nfs_lock_info {
   u32 state ;
   struct nlm_lockowner *owner ;
   struct list_head list ;
};
struct nfs4_lock_state;
struct nfs4_lock_info {
   struct nfs4_lock_state *owner ;
};
struct fasync_struct;
struct __anonstruct_afs_199 {
   struct list_head link ;
   int state ;
};
union __anonunion_fl_u_198 {
   struct nfs_lock_info nfs_fl ;
   struct nfs4_lock_info nfs4_fl ;
   struct __anonstruct_afs_199 afs ;
};
struct file_lock {
   struct file_lock *fl_next ;
   struct hlist_node fl_link ;
   struct list_head fl_block ;
   fl_owner_t fl_owner ;
   unsigned int fl_flags ;
   unsigned char fl_type ;
   unsigned int fl_pid ;
   int fl_link_cpu ;
   struct pid *fl_nspid ;
   wait_queue_head_t fl_wait ;
   struct file *fl_file ;
   loff_t fl_start ;
   loff_t fl_end ;
   struct fasync_struct *fl_fasync ;
   unsigned long fl_break_time ;
   unsigned long fl_downgrade_time ;
   struct file_lock_operations const *fl_ops ;
   struct lock_manager_operations const *fl_lmops ;
   union __anonunion_fl_u_198 fl_u ;
};
struct fasync_struct {
   spinlock_t fa_lock ;
   int magic ;
   int fa_fd ;
   struct fasync_struct *fa_next ;
   struct file *fa_file ;
   struct callback_head fa_rcu ;
};
struct sb_writers {
   struct percpu_counter counter[3U] ;
   wait_queue_head_t wait ;
   int frozen ;
   wait_queue_head_t wait_unfrozen ;
   struct lockdep_map lock_map[3U] ;
};
struct super_operations;
struct xattr_handler;
struct mtd_info;
struct super_block {
   struct list_head s_list ;
   dev_t s_dev ;
   unsigned char s_blocksize_bits ;
   unsigned long s_blocksize ;
   loff_t s_maxbytes ;
   struct file_system_type *s_type ;
   struct super_operations const *s_op ;
   struct dquot_operations const *dq_op ;
   struct quotactl_ops const *s_qcop ;
   struct export_operations const *s_export_op ;
   unsigned long s_flags ;
   unsigned long s_magic ;
   struct dentry *s_root ;
   struct rw_semaphore s_umount ;
   int s_count ;
   atomic_t s_active ;
   void *s_security ;
   struct xattr_handler const **s_xattr ;
   struct list_head s_inodes ;
   struct hlist_bl_head s_anon ;
   struct list_head s_mounts ;
   struct block_device *s_bdev ;
   struct backing_dev_info *s_bdi ;
   struct mtd_info *s_mtd ;
   struct hlist_node s_instances ;
   struct quota_info s_dquot ;
   struct sb_writers s_writers ;
   char s_id[32U] ;
   u8 s_uuid[16U] ;
   void *s_fs_info ;
   unsigned int s_max_links ;
   fmode_t s_mode ;
   u32 s_time_gran ;
   struct mutex s_vfs_rename_mutex ;
   char *s_subtype ;
   char *s_options ;
   struct dentry_operations const *s_d_op ;
   int cleancache_poolid ;
   struct shrinker s_shrink ;
   atomic_long_t s_remove_count ;
   int s_readonly_remount ;
   struct workqueue_struct *s_dio_done_wq ;
   struct list_lru s_dentry_lru ;
   struct list_lru s_inode_lru ;
   struct callback_head rcu ;
};
struct fiemap_extent_info {
   unsigned int fi_flags ;
   unsigned int fi_extents_mapped ;
   unsigned int fi_extents_max ;
   struct fiemap_extent *fi_extents_start ;
};
struct dir_context {
   int (*actor)(void * , char const * , int , loff_t , u64 , unsigned int ) ;
   loff_t pos ;
};
struct block_device_operations;
struct file_operations {
   struct module *owner ;
   loff_t (*llseek)(struct file * , loff_t , int ) ;
   ssize_t (*read)(struct file * , char * , size_t , loff_t * ) ;
   ssize_t (*write)(struct file * , char const * , size_t , loff_t * ) ;
   ssize_t (*aio_read)(struct kiocb * , struct iovec const * , unsigned long ,
                       loff_t ) ;
   ssize_t (*aio_write)(struct kiocb * , struct iovec const * , unsigned long ,
                        loff_t ) ;
   ssize_t (*read_iter)(struct kiocb * , struct iov_iter * ) ;
   ssize_t (*write_iter)(struct kiocb * , struct iov_iter * ) ;
   int (*iterate)(struct file * , struct dir_context * ) ;
   unsigned int (*poll)(struct file * , struct poll_table_struct * ) ;
   long (*unlocked_ioctl)(struct file * , unsigned int , unsigned long ) ;
   long (*compat_ioctl)(struct file * , unsigned int , unsigned long ) ;
   int (*mmap)(struct file * , struct vm_area_struct * ) ;
   int (*open)(struct inode * , struct file * ) ;
   int (*flush)(struct file * , fl_owner_t ) ;
   int (*release)(struct inode * , struct file * ) ;
   int (*fsync)(struct file * , loff_t , loff_t , int ) ;
   int (*aio_fsync)(struct kiocb * , int ) ;
   int (*fasync)(int , struct file * , int ) ;
   int (*lock)(struct file * , int , struct file_lock * ) ;
   ssize_t (*sendpage)(struct file * , struct page * , int , size_t , loff_t * ,
                       int ) ;
   unsigned long (*get_unmapped_area)(struct file * , unsigned long , unsigned long ,
                                      unsigned long , unsigned long ) ;
   int (*check_flags)(int ) ;
   int (*flock)(struct file * , int , struct file_lock * ) ;
   ssize_t (*splice_write)(struct pipe_inode_info * , struct file * , loff_t * , size_t ,
                           unsigned int ) ;
   ssize_t (*splice_read)(struct file * , loff_t * , struct pipe_inode_info * , size_t ,
                          unsigned int ) ;
   int (*setlease)(struct file * , long , struct file_lock ** ) ;
   long (*fallocate)(struct file * , int , loff_t , loff_t ) ;
   int (*show_fdinfo)(struct seq_file * , struct file * ) ;
};
struct inode_operations {
   struct dentry *(*lookup)(struct inode * , struct dentry * , unsigned int ) ;
   void *(*follow_link)(struct dentry * , struct nameidata * ) ;
   int (*permission)(struct inode * , int ) ;
   struct posix_acl *(*get_acl)(struct inode * , int ) ;
   int (*readlink)(struct dentry * , char * , int ) ;
   void (*put_link)(struct dentry * , struct nameidata * , void * ) ;
   int (*create)(struct inode * , struct dentry * , umode_t , bool ) ;
   int (*link)(struct dentry * , struct inode * , struct dentry * ) ;
   int (*unlink)(struct inode * , struct dentry * ) ;
   int (*symlink)(struct inode * , struct dentry * , char const * ) ;
   int (*mkdir)(struct inode * , struct dentry * , umode_t ) ;
   int (*rmdir)(struct inode * , struct dentry * ) ;
   int (*mknod)(struct inode * , struct dentry * , umode_t , dev_t ) ;
   int (*rename)(struct inode * , struct dentry * , struct inode * , struct dentry * ) ;
   int (*rename2)(struct inode * , struct dentry * , struct inode * , struct dentry * ,
                  unsigned int ) ;
   int (*setattr)(struct dentry * , struct iattr * ) ;
   int (*getattr)(struct vfsmount * , struct dentry * , struct kstat * ) ;
   int (*setxattr)(struct dentry * , char const * , void const * , size_t , int ) ;
   ssize_t (*getxattr)(struct dentry * , char const * , void * , size_t ) ;
   ssize_t (*listxattr)(struct dentry * , char * , size_t ) ;
   int (*removexattr)(struct dentry * , char const * ) ;
   int (*fiemap)(struct inode * , struct fiemap_extent_info * , u64 , u64 ) ;
   int (*update_time)(struct inode * , struct timespec * , int ) ;
   int (*atomic_open)(struct inode * , struct dentry * , struct file * , unsigned int ,
                      umode_t , int * ) ;
   int (*tmpfile)(struct inode * , struct dentry * , umode_t ) ;
   int (*set_acl)(struct inode * , struct posix_acl * , int ) ;
};
struct super_operations {
   struct inode *(*alloc_inode)(struct super_block * ) ;
   void (*destroy_inode)(struct inode * ) ;
   void (*dirty_inode)(struct inode * , int ) ;
   int (*write_inode)(struct inode * , struct writeback_control * ) ;
   int (*drop_inode)(struct inode * ) ;
   void (*evict_inode)(struct inode * ) ;
   void (*put_super)(struct super_block * ) ;
   int (*sync_fs)(struct super_block * , int ) ;
   int (*freeze_fs)(struct super_block * ) ;
   int (*unfreeze_fs)(struct super_block * ) ;
   int (*statfs)(struct dentry * , struct kstatfs * ) ;
   int (*remount_fs)(struct super_block * , int * , char * ) ;
   void (*umount_begin)(struct super_block * ) ;
   int (*show_options)(struct seq_file * , struct dentry * ) ;
   int (*show_devname)(struct seq_file * , struct dentry * ) ;
   int (*show_path)(struct seq_file * , struct dentry * ) ;
   int (*show_stats)(struct seq_file * , struct dentry * ) ;
   ssize_t (*quota_read)(struct super_block * , int , char * , size_t , loff_t ) ;
   ssize_t (*quota_write)(struct super_block * , int , char const * , size_t ,
                          loff_t ) ;
   int (*bdev_try_to_free_page)(struct super_block * , struct page * , gfp_t ) ;
   long (*nr_cached_objects)(struct super_block * , int ) ;
   long (*free_cached_objects)(struct super_block * , long , int ) ;
};
struct file_system_type {
   char const *name ;
   int fs_flags ;
   struct dentry *(*mount)(struct file_system_type * , int , char const * , void * ) ;
   void (*kill_sb)(struct super_block * ) ;
   struct module *owner ;
   struct file_system_type *next ;
   struct hlist_head fs_supers ;
   struct lock_class_key s_lock_key ;
   struct lock_class_key s_umount_key ;
   struct lock_class_key s_vfs_rename_key ;
   struct lock_class_key s_writers_key[3U] ;
   struct lock_class_key i_lock_key ;
   struct lock_class_key i_mutex_key ;
   struct lock_class_key i_mutex_dir_key ;
};
struct disk_stats {
   unsigned long sectors[2U] ;
   unsigned long ios[2U] ;
   unsigned long merges[2U] ;
   unsigned long ticks[2U] ;
   unsigned long io_ticks ;
   unsigned long time_in_queue ;
};
struct partition_meta_info {
   char uuid[37U] ;
   u8 volname[64U] ;
};
struct hd_struct {
   sector_t start_sect ;
   sector_t nr_sects ;
   seqcount_t nr_sects_seq ;
   sector_t alignment_offset ;
   unsigned int discard_alignment ;
   struct device __dev ;
   struct kobject *holder_dir ;
   int policy ;
   int partno ;
   struct partition_meta_info *info ;
   int make_it_fail ;
   unsigned long stamp ;
   atomic_t in_flight[2U] ;
   struct disk_stats *dkstats ;
   atomic_t ref ;
   struct callback_head callback_head ;
};
struct disk_part_tbl {
   struct callback_head callback_head ;
   int len ;
   struct hd_struct *last_lookup ;
   struct hd_struct *part[] ;
};
struct disk_events;
struct timer_rand_state;
struct blk_integrity;
struct gendisk {
   int major ;
   int first_minor ;
   int minors ;
   char disk_name[32U] ;
   char *(*devnode)(struct gendisk * , umode_t * ) ;
   unsigned int events ;
   unsigned int async_events ;
   struct disk_part_tbl *part_tbl ;
   struct hd_struct part0 ;
   struct block_device_operations const *fops ;
   struct request_queue *queue ;
   void *private_data ;
   int flags ;
   struct device *driverfs_dev ;
   struct kobject *slave_dir ;
   struct timer_rand_state *random ;
   atomic_t sync_io ;
   struct disk_events *ev ;
   struct blk_integrity *integrity ;
   int node_id ;
};
struct exception_table_entry {
   int insn ;
   int fixup ;
};
struct __large_struct {
   unsigned long buf[100U] ;
};
enum irqreturn {
    IRQ_NONE = 0,
    IRQ_HANDLED = 1,
    IRQ_WAKE_THREAD = 2
} ;
typedef enum irqreturn irqreturn_t;
struct fprop_local_percpu {
   struct percpu_counter events ;
   unsigned int period ;
   raw_spinlock_t lock ;
};
enum writeback_sync_modes {
    WB_SYNC_NONE = 0,
    WB_SYNC_ALL = 1
} ;
struct writeback_control {
   long nr_to_write ;
   long pages_skipped ;
   loff_t range_start ;
   loff_t range_end ;
   enum writeback_sync_modes sync_mode ;
   unsigned char for_kupdate : 1 ;
   unsigned char for_background : 1 ;
   unsigned char tagged_writepages : 1 ;
   unsigned char for_reclaim : 1 ;
   unsigned char range_cyclic : 1 ;
   unsigned char for_sync : 1 ;
};
struct bdi_writeback;
typedef int congested_fn(void * , int );
struct bdi_writeback {
   struct backing_dev_info *bdi ;
   unsigned int nr ;
   unsigned long last_old_flush ;
   struct delayed_work dwork ;
   struct list_head b_dirty ;
   struct list_head b_io ;
   struct list_head b_more_io ;
   spinlock_t list_lock ;
};
struct backing_dev_info {
   struct list_head bdi_list ;
   unsigned long ra_pages ;
   unsigned long state ;
   unsigned int capabilities ;
   congested_fn *congested_fn ;
   void *congested_data ;
   char *name ;
   struct percpu_counter bdi_stat[4U] ;
   unsigned long bw_time_stamp ;
   unsigned long dirtied_stamp ;
   unsigned long written_stamp ;
   unsigned long write_bandwidth ;
   unsigned long avg_write_bandwidth ;
   unsigned long dirty_ratelimit ;
   unsigned long balanced_dirty_ratelimit ;
   struct fprop_local_percpu completions ;
   int dirty_exceeded ;
   unsigned int min_ratio ;
   unsigned int max_ratio ;
   unsigned int max_prop_frac ;
   struct bdi_writeback wb ;
   spinlock_t wb_lock ;
   struct list_head work_list ;
   struct device *dev ;
   struct timer_list laptop_mode_wb_timer ;
   struct dentry *debug_dir ;
   struct dentry *debug_stats ;
};
typedef void *mempool_alloc_t(gfp_t , void * );
typedef void mempool_free_t(void * , void * );
struct mempool_s {
   spinlock_t lock ;
   int min_nr ;
   int curr_nr ;
   void **elements ;
   void *pool_data ;
   mempool_alloc_t *alloc ;
   mempool_free_t *free ;
   wait_queue_head_t wait ;
};
typedef struct mempool_s mempool_t;
union __anonunion_ldv_32446_202 {
   struct list_head q_node ;
   struct kmem_cache *__rcu_icq_cache ;
};
union __anonunion_ldv_32450_203 {
   struct hlist_node ioc_node ;
   struct callback_head __rcu_head ;
};
struct io_cq {
   struct request_queue *q ;
   struct io_context *ioc ;
   union __anonunion_ldv_32446_202 ldv_32446 ;
   union __anonunion_ldv_32450_203 ldv_32450 ;
   unsigned int flags ;
};
struct io_context {
   atomic_long_t refcount ;
   atomic_t active_ref ;
   atomic_t nr_tasks ;
   spinlock_t lock ;
   unsigned short ioprio ;
   int nr_batch_requests ;
   unsigned long last_waited ;
   struct radix_tree_root icq_tree ;
   struct io_cq *icq_hint ;
   struct hlist_head icq_list ;
   struct work_struct release_work ;
};
struct bio_integrity_payload {
   struct bio *bip_bio ;
   struct bvec_iter bip_iter ;
   void *bip_buf ;
   bio_end_io_t *bip_end_io ;
   unsigned short bip_slab ;
   unsigned short bip_vcnt ;
   unsigned char bip_owns_buf : 1 ;
   struct work_struct bip_work ;
   struct bio_vec *bip_vec ;
   struct bio_vec bip_inline_vecs[0U] ;
};
struct sg_iovec;
struct bio_list {
   struct bio *head ;
   struct bio *tail ;
};
struct bio_set {
   struct kmem_cache *bio_slab ;
   unsigned int front_pad ;
   mempool_t *bio_pool ;
   mempool_t *bvec_pool ;
   mempool_t *bio_integrity_pool ;
   mempool_t *bvec_integrity_pool ;
   spinlock_t rescue_lock ;
   struct bio_list rescue_list ;
   struct work_struct rescue_work ;
   struct workqueue_struct *rescue_workqueue ;
};
struct bsg_class_device {
   struct device *class_dev ;
   struct device *parent ;
   int minor ;
   struct request_queue *queue ;
   struct kref ref ;
   void (*release)(struct device * ) ;
};
struct elevator_queue;
struct blk_trace;
struct request;
struct sg_io_hdr;
struct bsg_job;
struct blkcg_gq;
typedef void rq_end_io_fn(struct request * , int );
struct request_list {
   struct request_queue *q ;
   struct blkcg_gq *blkg ;
   int count[2U] ;
   int starved[2U] ;
   mempool_t *rq_pool ;
   wait_queue_head_t wait[2U] ;
   unsigned int flags ;
};
enum rq_cmd_type_bits {
    REQ_TYPE_FS = 1,
    REQ_TYPE_BLOCK_PC = 2,
    REQ_TYPE_SENSE = 3,
    REQ_TYPE_PM_SUSPEND = 4,
    REQ_TYPE_PM_RESUME = 5,
    REQ_TYPE_PM_SHUTDOWN = 6,
    REQ_TYPE_SPECIAL = 7,
    REQ_TYPE_ATA_TASKFILE = 8,
    REQ_TYPE_ATA_PC = 9
} ;
union __anonunion_ldv_32954_204 {
   struct call_single_data csd ;
   unsigned long fifo_time ;
};
struct blk_mq_ctx;
union __anonunion_ldv_32969_205 {
   struct hlist_node hash ;
   struct list_head ipi_list ;
};
union __anonunion_ldv_32973_206 {
   struct rb_node rb_node ;
   void *completion_data ;
};
struct __anonstruct_elv_208 {
   struct io_cq *icq ;
   void *priv[2U] ;
};
struct __anonstruct_flush_209 {
   unsigned int seq ;
   struct list_head list ;
   rq_end_io_fn *saved_end_io ;
};
union __anonunion_ldv_32984_207 {
   struct __anonstruct_elv_208 elv ;
   struct __anonstruct_flush_209 flush ;
};
struct request {
   struct list_head queuelist ;
   union __anonunion_ldv_32954_204 ldv_32954 ;
   struct request_queue *q ;
   struct blk_mq_ctx *mq_ctx ;
   u64 cmd_flags ;
   enum rq_cmd_type_bits cmd_type ;
   unsigned long atomic_flags ;
   int cpu ;
   unsigned int __data_len ;
   sector_t __sector ;
   struct bio *bio ;
   struct bio *biotail ;
   union __anonunion_ldv_32969_205 ldv_32969 ;
   union __anonunion_ldv_32973_206 ldv_32973 ;
   union __anonunion_ldv_32984_207 ldv_32984 ;
   struct gendisk *rq_disk ;
   struct hd_struct *part ;
   unsigned long start_time ;
   struct request_list *rl ;
   unsigned long long start_time_ns ;
   unsigned long long io_start_time_ns ;
   unsigned short nr_phys_segments ;
   unsigned short nr_integrity_segments ;
   unsigned short ioprio ;
   void *special ;
   int tag ;
   int errors ;
   unsigned char __cmd[16U] ;
   unsigned char *cmd ;
   unsigned short cmd_len ;
   unsigned int extra_len ;
   unsigned int sense_len ;
   unsigned int resid_len ;
   void *sense ;
   unsigned long deadline ;
   struct list_head timeout_list ;
   unsigned int timeout ;
   int retries ;
   rq_end_io_fn *end_io ;
   void *end_io_data ;
   struct request *next_rq ;
};
struct elevator_type;
typedef int elevator_merge_fn(struct request_queue * , struct request ** , struct bio * );
typedef void elevator_merge_req_fn(struct request_queue * , struct request * , struct request * );
typedef void elevator_merged_fn(struct request_queue * , struct request * , int );
typedef int elevator_allow_merge_fn(struct request_queue * , struct request * , struct bio * );
typedef void elevator_bio_merged_fn(struct request_queue * , struct request * , struct bio * );
typedef int elevator_dispatch_fn(struct request_queue * , int );
typedef void elevator_add_req_fn(struct request_queue * , struct request * );
typedef struct request *elevator_request_list_fn(struct request_queue * , struct request * );
typedef void elevator_completed_req_fn(struct request_queue * , struct request * );
typedef int elevator_may_queue_fn(struct request_queue * , int );
typedef void elevator_init_icq_fn(struct io_cq * );
typedef void elevator_exit_icq_fn(struct io_cq * );
typedef int elevator_set_req_fn(struct request_queue * , struct request * , struct bio * ,
                                gfp_t );
typedef void elevator_put_req_fn(struct request * );
typedef void elevator_activate_req_fn(struct request_queue * , struct request * );
typedef void elevator_deactivate_req_fn(struct request_queue * , struct request * );
typedef int elevator_init_fn(struct request_queue * , struct elevator_type * );
typedef void elevator_exit_fn(struct elevator_queue * );
struct elevator_ops {
   elevator_merge_fn *elevator_merge_fn ;
   elevator_merged_fn *elevator_merged_fn ;
   elevator_merge_req_fn *elevator_merge_req_fn ;
   elevator_allow_merge_fn *elevator_allow_merge_fn ;
   elevator_bio_merged_fn *elevator_bio_merged_fn ;
   elevator_dispatch_fn *elevator_dispatch_fn ;
   elevator_add_req_fn *elevator_add_req_fn ;
   elevator_activate_req_fn *elevator_activate_req_fn ;
   elevator_deactivate_req_fn *elevator_deactivate_req_fn ;
   elevator_completed_req_fn *elevator_completed_req_fn ;
   elevator_request_list_fn *elevator_former_req_fn ;
   elevator_request_list_fn *elevator_latter_req_fn ;
   elevator_init_icq_fn *elevator_init_icq_fn ;
   elevator_exit_icq_fn *elevator_exit_icq_fn ;
   elevator_set_req_fn *elevator_set_req_fn ;
   elevator_put_req_fn *elevator_put_req_fn ;
   elevator_may_queue_fn *elevator_may_queue_fn ;
   elevator_init_fn *elevator_init_fn ;
   elevator_exit_fn *elevator_exit_fn ;
};
struct elv_fs_entry {
   struct attribute attr ;
   ssize_t (*show)(struct elevator_queue * , char * ) ;
   ssize_t (*store)(struct elevator_queue * , char const * , size_t ) ;
};
struct elevator_type {
   struct kmem_cache *icq_cache ;
   struct elevator_ops ops ;
   size_t icq_size ;
   size_t icq_align ;
   struct elv_fs_entry *elevator_attrs ;
   char elevator_name[16U] ;
   struct module *elevator_owner ;
   char icq_cache_name[21U] ;
   struct list_head list ;
};
struct elevator_queue {
   struct elevator_type *type ;
   void *elevator_data ;
   struct kobject kobj ;
   struct mutex sysfs_lock ;
   unsigned char registered : 1 ;
   struct hlist_head hash[64U] ;
};
typedef void request_fn_proc(struct request_queue * );
typedef void make_request_fn(struct request_queue * , struct bio * );
typedef int prep_rq_fn(struct request_queue * , struct request * );
typedef void unprep_rq_fn(struct request_queue * , struct request * );
struct bvec_merge_data {
   struct block_device *bi_bdev ;
   sector_t bi_sector ;
   unsigned int bi_size ;
   unsigned long bi_rw ;
};
typedef int merge_bvec_fn(struct request_queue * , struct bvec_merge_data * , struct bio_vec * );
typedef void softirq_done_fn(struct request * );
typedef int dma_drain_needed_fn(struct request * );
typedef int lld_busy_fn(struct request_queue * );
typedef int bsg_job_fn(struct bsg_job * );
enum blk_eh_timer_return {
    BLK_EH_NOT_HANDLED = 0,
    BLK_EH_HANDLED = 1,
    BLK_EH_RESET_TIMER = 2
} ;
typedef enum blk_eh_timer_return rq_timed_out_fn(struct request * );
struct blk_queue_tag {
   struct request **tag_index ;
   unsigned long *tag_map ;
   int busy ;
   int max_depth ;
   int real_max_depth ;
   atomic_t refcnt ;
};
struct queue_limits {
   unsigned long bounce_pfn ;
   unsigned long seg_boundary_mask ;
   unsigned int max_hw_sectors ;
   unsigned int chunk_sectors ;
   unsigned int max_sectors ;
   unsigned int max_segment_size ;
   unsigned int physical_block_size ;
   unsigned int alignment_offset ;
   unsigned int io_min ;
   unsigned int io_opt ;
   unsigned int max_discard_sectors ;
   unsigned int max_write_same_sectors ;
   unsigned int discard_granularity ;
   unsigned int discard_alignment ;
   unsigned short logical_block_size ;
   unsigned short max_segments ;
   unsigned short max_integrity_segments ;
   unsigned char misaligned ;
   unsigned char discard_misaligned ;
   unsigned char cluster ;
   unsigned char discard_zeroes_data ;
   unsigned char raid_partial_stripes_expensive ;
};
struct blk_mq_ops;
struct blk_mq_hw_ctx;
struct throtl_data;
struct blk_mq_tag_set;
struct request_queue {
   struct list_head queue_head ;
   struct request *last_merge ;
   struct elevator_queue *elevator ;
   int nr_rqs[2U] ;
   int nr_rqs_elvpriv ;
   struct request_list root_rl ;
   request_fn_proc *request_fn ;
   make_request_fn *make_request_fn ;
   prep_rq_fn *prep_rq_fn ;
   unprep_rq_fn *unprep_rq_fn ;
   merge_bvec_fn *merge_bvec_fn ;
   softirq_done_fn *softirq_done_fn ;
   rq_timed_out_fn *rq_timed_out_fn ;
   dma_drain_needed_fn *dma_drain_needed ;
   lld_busy_fn *lld_busy_fn ;
   struct blk_mq_ops *mq_ops ;
   unsigned int *mq_map ;
   struct blk_mq_ctx *queue_ctx ;
   unsigned int nr_queues ;
   struct blk_mq_hw_ctx **queue_hw_ctx ;
   unsigned int nr_hw_queues ;
   sector_t end_sector ;
   struct request *boundary_rq ;
   struct delayed_work delay_work ;
   struct backing_dev_info backing_dev_info ;
   void *queuedata ;
   unsigned long queue_flags ;
   int id ;
   gfp_t bounce_gfp ;
   spinlock_t __queue_lock ;
   spinlock_t *queue_lock ;
   struct kobject kobj ;
   struct kobject mq_kobj ;
   struct device *dev ;
   int rpm_status ;
   unsigned int nr_pending ;
   unsigned long nr_requests ;
   unsigned int nr_congestion_on ;
   unsigned int nr_congestion_off ;
   unsigned int nr_batching ;
   unsigned int dma_drain_size ;
   void *dma_drain_buffer ;
   unsigned int dma_pad_mask ;
   unsigned int dma_alignment ;
   struct blk_queue_tag *queue_tags ;
   struct list_head tag_busy_list ;
   unsigned int nr_sorted ;
   unsigned int in_flight[2U] ;
   unsigned int request_fn_active ;
   unsigned int rq_timeout ;
   struct timer_list timeout ;
   struct list_head timeout_list ;
   struct list_head icq_list ;
   unsigned long blkcg_pols[1U] ;
   struct blkcg_gq *root_blkg ;
   struct list_head blkg_list ;
   struct queue_limits limits ;
   unsigned int sg_timeout ;
   unsigned int sg_reserved_size ;
   int node ;
   struct blk_trace *blk_trace ;
   unsigned int flush_flags ;
   unsigned char flush_not_queueable : 1 ;
   unsigned char flush_queue_delayed : 1 ;
   unsigned char flush_pending_idx : 1 ;
   unsigned char flush_running_idx : 1 ;
   unsigned long flush_pending_since ;
   struct list_head flush_queue[2U] ;
   struct list_head flush_data_in_flight ;
   struct request *flush_rq ;
   spinlock_t mq_flush_lock ;
   struct list_head requeue_list ;
   spinlock_t requeue_lock ;
   struct work_struct requeue_work ;
   struct mutex sysfs_lock ;
   int bypass_depth ;
   bsg_job_fn *bsg_job_fn ;
   int bsg_job_size ;
   struct bsg_class_device bsg_dev ;
   struct throtl_data *td ;
   struct callback_head callback_head ;
   wait_queue_head_t mq_freeze_wq ;
   struct percpu_counter mq_usage_counter ;
   struct list_head all_q_node ;
   struct blk_mq_tag_set *tag_set ;
   struct list_head tag_set_list ;
};
struct blk_plug {
   struct list_head list ;
   struct list_head mq_list ;
   struct list_head cb_list ;
};
struct blk_integrity_exchg {
   void *prot_buf ;
   void *data_buf ;
   sector_t sector ;
   unsigned int data_size ;
   unsigned short sector_size ;
   char const *disk_name ;
};
typedef void integrity_gen_fn(struct blk_integrity_exchg * );
typedef int integrity_vrfy_fn(struct blk_integrity_exchg * );
typedef void integrity_set_tag_fn(void * , void * , unsigned int );
typedef void integrity_get_tag_fn(void * , void * , unsigned int );
struct blk_integrity {
   integrity_gen_fn *generate_fn ;
   integrity_vrfy_fn *verify_fn ;
   integrity_set_tag_fn *set_tag_fn ;
   integrity_get_tag_fn *get_tag_fn ;
   unsigned short flags ;
   unsigned short tuple_size ;
   unsigned short sector_size ;
   unsigned short tag_size ;
   char const *name ;
   struct kobject kobj ;
};
struct block_device_operations {
   int (*open)(struct block_device * , fmode_t ) ;
   void (*release)(struct gendisk * , fmode_t ) ;
   int (*rw_page)(struct block_device * , sector_t , struct page * , int ) ;
   int (*ioctl)(struct block_device * , fmode_t , unsigned int , unsigned long ) ;
   int (*compat_ioctl)(struct block_device * , fmode_t , unsigned int , unsigned long ) ;
   int (*direct_access)(struct block_device * , sector_t , void ** , unsigned long * ) ;
   unsigned int (*check_events)(struct gendisk * , unsigned int ) ;
   int (*media_changed)(struct gendisk * ) ;
   void (*unlock_native_capacity)(struct gendisk * ) ;
   int (*revalidate_disk)(struct gendisk * ) ;
   int (*getgeo)(struct block_device * , struct hd_geometry * ) ;
   void (*swap_slot_free_notify)(struct block_device * , unsigned long ) ;
   struct module *owner ;
};
struct hd_geometry {
   unsigned char heads ;
   unsigned char sectors ;
   unsigned short cylinders ;
   unsigned long start ;
};
struct iovec {
   void *iov_base ;
   __kernel_size_t iov_len ;
};
union __anonunion_ldv_34783_212 {
   struct iovec const *iov ;
   struct bio_vec const *bvec ;
};
struct iov_iter {
   int type ;
   size_t iov_offset ;
   size_t count ;
   union __anonunion_ldv_34783_212 ldv_34783 ;
   unsigned long nr_segs ;
};
struct sg_iovec {
   void *iov_base ;
   size_t iov_len ;
};
struct sg_io_hdr {
   int interface_id ;
   int dxfer_direction ;
   unsigned char cmd_len ;
   unsigned char mx_sb_len ;
   unsigned short iovec_count ;
   unsigned int dxfer_len ;
   void *dxferp ;
   unsigned char *cmdp ;
   void *sbp ;
   unsigned int timeout ;
   unsigned int flags ;
   int pack_id ;
   void *usr_ptr ;
   unsigned char status ;
   unsigned char masked_status ;
   unsigned char msg_status ;
   unsigned char sb_len_wr ;
   unsigned short host_status ;
   unsigned short driver_status ;
   int resid ;
   unsigned int duration ;
   unsigned int info ;
};
struct fit_sg_descriptor {
   uint32_t control ;
   uint32_t byte_count ;
   uint64_t host_side_addr ;
   uint64_t dev_side_addr ;
   uint64_t next_desc_ptr ;
};
struct fit_msg_hdr {
   uint8_t protocol_id ;
   uint8_t num_protocol_cmds_coalesced ;
   uint8_t _reserved[62U] ;
};
struct fit_completion_entry_v1 {
   uint32_t num_returned_bytes ;
   uint16_t tag ;
   uint8_t status ;
   uint8_t cycle ;
};
struct fit_comp_error_info {
   unsigned char type : 7 ;
   unsigned char valid : 1 ;
   uint8_t reserved0 ;
   unsigned char key : 4 ;
   unsigned char reserved2 : 1 ;
   unsigned char bad_length : 1 ;
   unsigned char end_medium : 1 ;
   unsigned char file_mark : 1 ;
   uint8_t info[4U] ;
   uint8_t reserved1 ;
   uint8_t cmd_spec[4U] ;
   uint8_t code ;
   uint8_t qual ;
   uint8_t fruc ;
   unsigned char sks_high : 7 ;
   unsigned char sks_valid : 1 ;
   uint16_t sks_low ;
   uint16_t reserved3 ;
   uint16_t uec ;
   uint64_t per ;
   uint8_t reserved4[2U] ;
};
struct skd_command_header {
   uint64_t sg_list_dma_address ;
   uint16_t tag ;
   uint8_t attribute ;
   uint8_t add_cdb_len ;
   uint32_t sg_list_len_bytes ;
};
struct skd_scsi_request {
   struct skd_command_header hdr ;
   unsigned char cdb[16U] ;
};
struct driver_inquiry_data {
   unsigned char peripheral_device_type : 5 ;
   unsigned char qualifier : 3 ;
   uint8_t page_code ;
   uint16_t page_length ;
   uint16_t pcie_bus_number ;
   uint8_t pcie_device_number ;
   uint8_t pcie_function_number ;
   uint8_t pcie_link_speed ;
   uint8_t pcie_link_lanes ;
   uint16_t pcie_vendor_id ;
   uint16_t pcie_device_id ;
   uint16_t pcie_subsystem_vendor_id ;
   uint16_t pcie_subsystem_device_id ;
   uint8_t reserved1[2U] ;
   uint8_t reserved2[3U] ;
   uint8_t driver_version_length ;
   uint8_t driver_version[20U] ;
};
enum skd_drvr_state {
    SKD_DRVR_STATE_LOAD = 0,
    SKD_DRVR_STATE_IDLE = 1,
    SKD_DRVR_STATE_BUSY = 2,
    SKD_DRVR_STATE_STARTING = 3,
    SKD_DRVR_STATE_ONLINE = 4,
    SKD_DRVR_STATE_PAUSING = 5,
    SKD_DRVR_STATE_PAUSED = 6,
    SKD_DRVR_STATE_DRAINING_TIMEOUT = 7,
    SKD_DRVR_STATE_RESTARTING = 8,
    SKD_DRVR_STATE_RESUMING = 9,
    SKD_DRVR_STATE_STOPPING = 10,
    SKD_DRVR_STATE_FAULT = 11,
    SKD_DRVR_STATE_DISAPPEARED = 12,
    SKD_DRVR_STATE_PROTOCOL_MISMATCH = 13,
    SKD_DRVR_STATE_BUSY_ERASE = 14,
    SKD_DRVR_STATE_BUSY_SANITIZE = 15,
    SKD_DRVR_STATE_BUSY_IMMINENT = 16,
    SKD_DRVR_STATE_WAIT_BOOT = 17,
    SKD_DRVR_STATE_SYNCING = 18
} ;
enum skd_req_state {
    SKD_REQ_STATE_IDLE = 0,
    SKD_REQ_STATE_SETUP = 1,
    SKD_REQ_STATE_BUSY = 2,
    SKD_REQ_STATE_COMPLETED = 3,
    SKD_REQ_STATE_TIMEOUT = 4,
    SKD_REQ_STATE_ABORTED = 5
} ;
enum skd_fit_msg_state {
    SKD_MSG_STATE_IDLE = 0,
    SKD_MSG_STATE_BUSY = 1
} ;
enum skd_check_status_action {
    SKD_CHECK_STATUS_REPORT_GOOD = 0,
    SKD_CHECK_STATUS_REPORT_SMART_ALERT = 1,
    SKD_CHECK_STATUS_REQUEUE_REQUEST = 2,
    SKD_CHECK_STATUS_REPORT_ERROR = 3,
    SKD_CHECK_STATUS_BUSY_IMMINENT = 4
} ;
struct skd_fitmsg_context {
   enum skd_fit_msg_state state ;
   struct skd_fitmsg_context *next ;
   u32 id ;
   u16 outstanding ;
   u32 length ;
   u32 offset ;
   u8 *msg_buf ;
   dma_addr_t mb_dma_address ;
};
struct skd_request_context {
   enum skd_req_state state ;
   struct skd_request_context *next ;
   u16 id ;
   u32 fitmsg_id ;
   struct request *req ;
   u8 flush_cmd ;
   u8 discard_page ;
   u32 timeout_stamp ;
   u8 sg_data_dir ;
   struct scatterlist *sg ;
   u32 n_sg ;
   u32 sg_byte_count ;
   struct fit_sg_descriptor *sksg_list ;
   dma_addr_t sksg_dma_address ;
   struct fit_completion_entry_v1 completion ;
   struct fit_comp_error_info err_info ;
};
struct skd_special_context {
   struct skd_request_context req ;
   u8 orphaned ;
   void *data_buf ;
   dma_addr_t db_dma_address ;
   u8 *msg_buf ;
   dma_addr_t mb_dma_address ;
};
struct skd_sg_io {
   fmode_t mode ;
   void *argp ;
   struct sg_io_hdr sg ;
   u8 cdb[16U] ;
   u32 dxfer_len ;
   u32 iovcnt ;
   struct sg_iovec *iov ;
   struct sg_iovec no_iov_iov ;
   struct skd_special_context *skspcl ;
};
enum skd_irq_type {
    SKD_IRQ_LEGACY = 0,
    SKD_IRQ_MSI = 1,
    SKD_IRQ_MSIX = 2
} ;
typedef enum skd_irq_type skd_irq_type_t;
struct skd_msix_entry;
struct skd_device {
   void volatile *mem_map[2U] ;
   resource_size_t mem_phys[2U] ;
   u32 mem_size[2U] ;
   skd_irq_type_t irq_type ;
   u32 msix_count ;
   struct skd_msix_entry *msix_entries ;
   struct pci_dev *pdev ;
   int pcie_error_reporting_is_enabled ;
   spinlock_t lock ;
   struct gendisk *disk ;
   struct request_queue *queue ;
   struct device *class_dev ;
   int gendisk_on ;
   int sync_done ;
   atomic_t device_count ;
   u32 devno ;
   u32 major ;
   char name[32U] ;
   char isr_name[30U] ;
   enum skd_drvr_state state ;
   u32 drive_state ;
   u32 in_flight ;
   u32 cur_max_queue_depth ;
   u32 queue_low_water_mark ;
   u32 dev_max_queue_depth ;
   u32 num_fitmsg_context ;
   u32 num_req_context ;
   u32 timeout_slot[4U] ;
   u32 timeout_stamp ;
   struct skd_fitmsg_context *skmsg_free_list ;
   struct skd_fitmsg_context *skmsg_table ;
   struct skd_request_context *skreq_free_list ;
   struct skd_request_context *skreq_table ;
   struct skd_special_context *skspcl_free_list ;
   struct skd_special_context *skspcl_table ;
   struct skd_special_context internal_skspcl ;
   u32 read_cap_blocksize ;
   u32 read_cap_last_lba ;
   int read_cap_is_valid ;
   int inquiry_is_valid ;
   u8 inq_serial_num[13U] ;
   u8 id_str[80U] ;
   u8 skcomp_cycle ;
   u32 skcomp_ix ;
   struct fit_completion_entry_v1 *skcomp_table ;
   struct fit_comp_error_info *skerr_table ;
   dma_addr_t cq_dma_address ;
   wait_queue_head_t waitq ;
   struct timer_list timer ;
   u32 timer_countdown ;
   u32 timer_substate ;
   int n_special ;
   int sgs_per_request ;
   u32 last_mtd ;
   u32 proto_ver ;
   int dbg_level ;
   u32 connect_time_stamp ;
   int connect_retries ;
   u32 drive_jiffies ;
   u32 timo_slot ;
   struct work_struct completion_worker ;
};
struct sns_info {
   u8 type ;
   u8 stat ;
   u8 key ;
   u8 asc ;
   u8 ascq ;
   u8 mask ;
   enum skd_check_status_action action ;
};
struct skd_msix_entry {
   int have_irq ;
   u32 vector ;
   u32 entry ;
   struct skd_device *rsp ;
   char isr_name[30U] ;
};
struct skd_init_msix_entry {
   char const *name ;
   irqreturn_t (*handler)(int , void * ) ;
};
typedef int ldv_func_ret_type___2;
typedef int ldv_func_ret_type___3;
typedef int ldv_func_ret_type___4;
typedef struct page___0 *pgtable_t___0;
struct __anonstruct____missing_field_name_211 {
   unsigned int inuse : 16 ;
   unsigned int objects : 15 ;
   unsigned int frozen : 1 ;
};
union __anonunion____missing_field_name_210 {
   atomic_t _mapcount ;
   struct __anonstruct____missing_field_name_211 __annonCompField39 ;
   int units ;
};
struct __anonstruct____missing_field_name_209 {
   union __anonunion____missing_field_name_210 __annonCompField40 ;
   atomic_t _count ;
};
union __anonunion____missing_field_name_208 {
   unsigned long counters ;
   struct __anonstruct____missing_field_name_209 __annonCompField41 ;
   unsigned int active ;
};
struct __anonstruct____missing_field_name_206 {
   union __anonunion_ldv_14142_140 __annonCompField38 ;
   union __anonunion____missing_field_name_208 __annonCompField42 ;
};
struct __anonstruct____missing_field_name_213 {
   struct page___0 *next ;
   int pages ;
   int pobjects ;
};
union __anonunion____missing_field_name_212 {
   struct list_head lru ;
   struct __anonstruct____missing_field_name_213 __annonCompField44 ;
   struct slab *slab_page ;
   struct callback_head callback_head ;
   pgtable_t___0 pmd_huge_pte ;
};
union __anonunion____missing_field_name_214 {
   unsigned long private ;
   spinlock_t *ptl ;
   struct kmem_cache___0 *slab_cache ;
   struct page___0 *first_page ;
};
struct page___0 {
   unsigned long flags ;
   union __anonunion_ldv_14136_138 __annonCompField37 ;
   struct __anonstruct____missing_field_name_206 __annonCompField43 ;
   union __anonunion____missing_field_name_212 __annonCompField45 ;
   union __anonunion____missing_field_name_214 __annonCompField46 ;
   unsigned long debug_flags ;
} __attribute__((__aligned__((2) * (sizeof(unsigned long )) ))) ;
enum kobj_ns_type;
struct attribute___0 {
   char const *name ;
   umode_t mode ;
   bool ignore_lockdep : 1 ;
   struct lock_class_key *key ;
   struct lock_class_key skey ;
};
struct sysfs_ops___0 {
   ssize_t (*show)(struct kobject___0 * , struct attribute___0 * , char * ) ;
   ssize_t (*store)(struct kobject___0 * , struct attribute___0 * , char const * ,
                    size_t ) ;
};
struct kobject___0 {
   char const *name ;
   struct list_head entry ;
   struct kobject___0 *parent ;
   struct kset *kset ;
   struct kobj_type___0 *ktype ;
   struct kernfs_node *sd ;
   struct kref kref ;
   struct delayed_work release ;
   unsigned int state_initialized : 1 ;
   unsigned int state_in_sysfs : 1 ;
   unsigned int state_add_uevent_sent : 1 ;
   unsigned int state_remove_uevent_sent : 1 ;
   unsigned int uevent_suppress : 1 ;
};
struct kobj_type___0 {
   void (*release)(struct kobject___0 *kobj ) ;
   struct sysfs_ops___0 const *sysfs_ops ;
   struct attribute___0 **default_attrs ;
   struct kobj_ns_type_operations const *(*child_ns_type)(struct kobject___0 *kobj ) ;
   void const *(*namespace)(struct kobject___0 *kobj ) ;
};
struct kmem_cache_cpu___0 {
   void **freelist ;
   unsigned long tid ;
   struct page___0 *page ;
   struct page___0 *partial ;
   unsigned int stat[26] ;
};
struct kmem_cache___0 {
   struct kmem_cache_cpu___0 *cpu_slab ;
   unsigned long flags ;
   unsigned long min_partial ;
   int size ;
   int object_size ;
   int offset ;
   int cpu_partial ;
   struct kmem_cache_order_objects oo ;
   struct kmem_cache_order_objects max ;
   struct kmem_cache_order_objects min ;
   gfp_t allocflags ;
   int refcount ;
   void (*ctor)(void * ) ;
   int inuse ;
   int align ;
   int reserved ;
   char const *name ;
   struct list_head list ;
   struct kobject___0 kobj ;
   struct memcg_cache_params___0 *memcg_params ;
   int max_attr_size ;
   struct kset *memcg_kset ;
   int remote_node_defrag_ratio ;
   struct kmem_cache_node *node[1 << 10] ;
};
struct __anonstruct____missing_field_name_227 {
   struct callback_head callback_head ;
   struct kmem_cache___0 *memcg_caches[0] ;
};
struct __anonstruct____missing_field_name_228 {
   struct mem_cgroup *memcg ;
   struct list_head list ;
   struct kmem_cache___0 *root_cache ;
   atomic_t nr_pages ;
};
union __anonunion____missing_field_name_226 {
   struct __anonstruct____missing_field_name_227 __annonCompField50 ;
   struct __anonstruct____missing_field_name_228 __annonCompField51 ;
};
struct memcg_cache_params___0 {
   bool is_root_cache ;
   union __anonunion____missing_field_name_226 __annonCompField52 ;
};
long ldv__builtin_expect(long exp , long c ) ;
void ldv_spin_lock(void) ;
void ldv_spin_unlock(void) ;
extern struct module __this_module ;
extern struct pv_irq_ops pv_irq_ops ;
__inline static void __set_bit(long nr , unsigned long volatile *addr )
{
  {
  __asm__ volatile ("bts %1,%0": "+m" (*((long volatile *)addr)): "Ir" (nr): "memory");
  return;
}
}
__inline static void __clear_bit(long nr , unsigned long volatile *addr )
{
  {
  __asm__ volatile ("btr %1,%0": "+m" (*((long volatile *)addr)): "Ir" (nr));
  return;
}
}
__inline static int constant_test_bit(long nr , unsigned long const volatile *addr )
{
  {
  return ((int )((unsigned long )*(addr + (unsigned long )(nr >> 6)) >> ((int )nr & 63)) & 1);
}
}
__inline static __u32 __arch_swab32(__u32 val )
{
  {
  __asm__ ("bswapl %0": "=r" (val): "0" (val));
  return (val);
}
}
__inline static __u64 __arch_swab64(__u64 val )
{
  {
  __asm__ ("bswapq %0": "=r" (val): "0" (val));
  return (val);
}
}
__inline static __u16 __fswab16(__u16 val )
{
  {
  return ((__u16 )((int )((short )((int )val << 8)) | (int )((short )((int )val >> 8))));
}
}
__inline static __u32 __fswab32(__u32 val )
{
  __u32 tmp ;
  {
  tmp = __arch_swab32(val);
  return (tmp);
}
}
__inline static __u64 __fswab64(__u64 val )
{
  __u64 tmp ;
  {
  tmp = __arch_swab64(val);
  return (tmp);
}
}
extern int printk(char const * , ...) ;
extern int __dynamic_pr_debug(struct _ddebug * , char const * , ...) ;
extern void might_fault(void) ;
extern int sprintf(char * , char const * , ...) ;
extern int snprintf(char * , size_t , char const * , ...) ;
__inline static void INIT_LIST_HEAD(struct list_head *list )
{
  {
  list->next = list;
  list->prev = list;
  return;
}
}
extern void __bad_percpu_size(void) ;
extern void warn_slowpath_null(char const * , int const ) ;
extern struct task_struct *current_task ;
__inline static struct task_struct *get_current(void)
{
  struct task_struct *pfo_ret__ ;
  {
  switch (8UL) {
  case 1UL:
  __asm__ ("movb %%gs:%P1,%0": "=q" (pfo_ret__): "p" (& current_task));
  goto ldv_3067;
  case 2UL:
  __asm__ ("movw %%gs:%P1,%0": "=r" (pfo_ret__): "p" (& current_task));
  goto ldv_3067;
  case 4UL:
  __asm__ ("movl %%gs:%P1,%0": "=r" (pfo_ret__): "p" (& current_task));
  goto ldv_3067;
  case 8UL:
  __asm__ ("movq %%gs:%P1,%0": "=r" (pfo_ret__): "p" (& current_task));
  goto ldv_3067;
  default:
  __bad_percpu_size();
  }
  ldv_3067: ;
  return (pfo_ret__);
}
}
extern void *memcpy(void * , void const * , size_t ) ;
extern void *memset(void * , int , size_t ) ;
extern size_t strlen(char const * ) ;
extern char *strcpy(char * , char const * ) ;
extern char *strcat(char * , char const * ) ;
__inline static unsigned long arch_local_save_flags(void)
{
  unsigned long __ret ;
  unsigned long __edi ;
  unsigned long __esi ;
  unsigned long __edx ;
  unsigned long __ecx ;
  unsigned long __eax ;
  long tmp ;
  {
  __edi = __edi;
  __esi = __esi;
  __edx = __edx;
  __ecx = __ecx;
  __eax = __eax;
  tmp = ldv__builtin_expect((unsigned long )pv_irq_ops.save_fl.func == (unsigned long )((void *)0),
                         0L);
  if (tmp != 0L) {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"./arch/x86/include/asm/paravirt.h"),
                         "i" (804), "i" (12UL));
    ldv_4851: ;
    goto ldv_4851;
  } else {
  }
  __asm__ volatile ("771:\n\tcall *%c2;\n772:\n.pushsection .parainstructions,\"a\"\n .balign 8 \n .quad  771b\n  .byte %c1\n  .byte 772b-771b\n  .short %c3\n.popsection\n": "=a" (__eax): [paravirt_typenum] "i" (44UL),
                       [paravirt_opptr] "i" (& pv_irq_ops.save_fl.func), [paravirt_clobber] "i" (1): "memory",
                       "cc");
  __ret = __eax;
  return (__ret);
}
}
__inline static int arch_irqs_disabled_flags(unsigned long flags )
{
  {
  return ((flags & 512UL) == 0UL);
}
}
extern void __xchg_wrong_size(void) ;
__inline static void atomic_set(atomic_t *v , int i )
{
  {
  v->counter = i;
  return;
}
}
extern unsigned long kernel_stack ;
__inline static struct thread_info *current_thread_info(void)
{
  struct thread_info *ti ;
  unsigned long pfo_ret__ ;
  {
  switch (8UL) {
  case 1UL:
  __asm__ ("movb %%gs:%P1,%0": "=q" (pfo_ret__): "p" (& kernel_stack));
  goto ldv_5945;
  case 2UL:
  __asm__ ("movw %%gs:%P1,%0": "=r" (pfo_ret__): "p" (& kernel_stack));
  goto ldv_5945;
  case 4UL:
  __asm__ ("movl %%gs:%P1,%0": "=r" (pfo_ret__): "p" (& kernel_stack));
  goto ldv_5945;
  case 8UL:
  __asm__ ("movq %%gs:%P1,%0": "=r" (pfo_ret__): "p" (& kernel_stack));
  goto ldv_5945;
  default:
  __bad_percpu_size();
  }
  ldv_5945:
  ti = (struct thread_info *)(pfo_ret__ - 16344UL);
  return (ti);
}
}
extern int debug_locks ;
extern void lockdep_init_map(struct lockdep_map * , char const * , struct lock_class_key * ,
                             int ) ;
extern int lock_is_held(struct lockdep_map * ) ;
extern void __raw_spin_lock_init(raw_spinlock_t * , char const * , struct lock_class_key * ) ;
extern void _raw_spin_lock(raw_spinlock_t * ) ;
extern void _raw_spin_unlock(raw_spinlock_t * ) ;
extern void _raw_spin_unlock_irqrestore(raw_spinlock_t * , unsigned long ) ;
__inline static raw_spinlock_t *spinlock_check(spinlock_t *lock )
{
  {
  return (& lock->ldv_6347.rlock);
}
}
__inline static void ldv_spin_lock_1(spinlock_t *lock )
{
  {
  _raw_spin_lock(& lock->ldv_6347.rlock);
  return;
}
}
__inline static void spin_lock(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_5(spinlock_t *lock )
{
  {
  _raw_spin_unlock(& lock->ldv_6347.rlock);
  return;
}
}
__inline static void spin_unlock(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_irqrestore_8(spinlock_t *lock , unsigned long flags )
{
  {
  _raw_spin_unlock_irqrestore(& lock->ldv_6347.rlock, flags);
  return;
}
}
__inline static void spin_unlock_irqrestore(spinlock_t *lock , unsigned long flags ) ;
extern unsigned long get_seconds(void) ;
extern void __init_waitqueue_head(wait_queue_head_t * , char const * , struct lock_class_key * ) ;
extern void __wake_up(wait_queue_head_t * , unsigned int , int , void * ) ;
extern long prepare_to_wait_event(wait_queue_head_t * , wait_queue_t * , int ) ;
extern void finish_wait(wait_queue_head_t * , wait_queue_t * ) ;
extern unsigned long volatile jiffies ;
extern unsigned long msecs_to_jiffies(unsigned int const ) ;
extern int mod_timer(struct timer_list * , unsigned long ) ;
int ldv_mod_timer_20(struct timer_list *ldv_func_arg1 , unsigned long ldv_func_arg2 ) ;
int ldv_mod_timer_21(struct timer_list *ldv_func_arg1 , unsigned long ldv_func_arg2 ) ;
extern int del_timer_sync(struct timer_list * ) ;
int ldv_del_timer_sync_22(struct timer_list *ldv_func_arg1 ) ;
extern void __init_work(struct work_struct * , int ) ;
extern struct workqueue_struct *system_wq ;
extern bool queue_work_on(int , struct workqueue_struct * , struct work_struct * ) ;
__inline static bool queue_work(struct workqueue_struct *wq , struct work_struct *work )
{
  bool tmp ;
  {
  tmp = queue_work_on(8192, wq, work);
  return (tmp);
}
}
__inline static bool schedule_work(struct work_struct *work )
{
  bool tmp ;
  {
  tmp = queue_work(system_wq, work);
  return (tmp);
}
}
__inline static unsigned int readl(void const volatile *addr )
{
  unsigned int ret ;
  {
  __asm__ volatile ("movl %1,%0": "=r" (ret): "m" (*((unsigned int volatile *)addr)): "memory");
  return (ret);
}
}
__inline static void writel(unsigned int val , void volatile *addr )
{
  {
  __asm__ volatile ("movl %0,%1": : "r" (val), "m" (*((unsigned int volatile *)addr)): "memory");
  return;
}
}
__inline static void writeq(unsigned long val , void volatile *addr )
{
  {
  __asm__ volatile ("movq %0,%1": : "r" (val), "m" (*((unsigned long volatile *)addr)): "memory");
  return;
}
}
extern void *ioremap_nocache(resource_size_t , unsigned long ) ;
__inline static void *ioremap(resource_size_t offset , unsigned long size )
{
  void *tmp ;
  {
  tmp = ioremap_nocache(offset, size);
  return (tmp);
}
}
extern void iounmap(void volatile * ) ;
extern struct page *alloc_pages_current(gfp_t , unsigned int ) ;
__inline static struct page *ldv_alloc_pages_11(gfp_t gfp_mask , unsigned int order )
{
  struct page *tmp ;
  {
  tmp = alloc_pages_current(gfp_mask, order);
  return (tmp);
}
}
__inline static struct page *alloc_pages(gfp_t flags , unsigned int order ) ;
extern void __free_pages(struct page * , unsigned int ) ;
__inline static char const *kobject_name(struct kobject const *kobj )
{
  {
  return ((char const *)kobj->name);
}
}
extern void kfree(void const * ) ;
extern void *ldv_malloc(size_t);
void *__kmalloc(size_t size, gfp_t t)
{
 return ldv_malloc(size);
}
extern void *kmem_cache_alloc(struct kmem_cache * , gfp_t ) ;
void *ldv_kmem_cache_alloc_16(struct kmem_cache *ldv_func_arg1 , gfp_t flags ) ;
__inline static void *ldv_kmalloc_12(size_t size , gfp_t flags )
{
  void *tmp___2 ;
  {
  tmp___2 = __kmalloc(size, flags);
  return (tmp___2);
}
}
__inline static void *kmalloc(size_t size , gfp_t flags ) ;
__inline static void *kzalloc(size_t size , gfp_t flags ) ;
void ldv_check_alloc_flags(gfp_t flags ) ;
extern void *malloc(size_t size ) ;
extern void *calloc(size_t nmemb , size_t size ) ;
extern int __VERIFIER_nondet_int(void) ;
extern unsigned int __VERIFIER_nondet_uint(void) ;
extern unsigned long __VERIFIER_nondet_ulong(void) ;
extern void *__VERIFIER_nondet_pointer(void) ;
extern void __VERIFIER_assume(int expression ) ;
void *ldv_malloc(size_t size )
{
  void *p ;
  void *tmp ;
  int tmp___0 ;
  {
  tmp___0 = __VERIFIER_nondet_int();
  if (tmp___0 != 0) {
    return ((void *)0);
  } else {
    tmp = malloc(size);
    p = tmp;
    __VERIFIER_assume((unsigned long )p != (unsigned long )((void *)0));
    return (p);
  }
}
}
void *ldv_zalloc(size_t size )
{
  void *p ;
  void *tmp ;
  int tmp___0 ;
  {
  tmp___0 = __VERIFIER_nondet_int();
  if (tmp___0 != 0) {
    return ((void *)0);
  } else {
    tmp = calloc(1UL, size);
    p = tmp;
    __VERIFIER_assume((unsigned long )p != (unsigned long )((void *)0));
    return (p);
  }
}
}
int ldv_undef_int(void)
{
  int tmp ;
  {
  tmp = __VERIFIER_nondet_int();
  return (tmp);
}
}
void *ldv_undef_ptr(void)
{
  void *tmp ;
  {
  tmp = __VERIFIER_nondet_pointer();
  return (tmp);
}
}
unsigned long ldv_undef_ulong(void)
{
  unsigned long tmp ;
  {
  tmp = __VERIFIER_nondet_ulong();
  return (tmp);
}
}
__inline static void ldv_error(void)
{
  {
  ERROR: ;
  __VERIFIER_error();
}
}
__inline static void ldv_stop(void)
{
  {
  LDV_STOP: ;
  goto LDV_STOP;
}
}
long ldv__builtin_expect(long exp , long c )
{
  {
  return (exp);
}
}
void ldv__builtin_trap(void)
{
  {
  ldv_error();
  return;
}
}
struct timer_list *ldv_timer_list_1_3 ;
int ldv_timer_1_3 ;
struct timer_list *ldv_timer_list_1_1 ;
struct timer_list *ldv_timer_list_1_0 ;
int ldv_state_variable_0 ;
int ldv_timer_1_2 ;
int ldv_state_variable_2 ;
int ldv_timer_1_1 ;
struct timer_list *ldv_timer_list_1_2 ;
struct block_device *skd_blockdev_ops_group0 ;
int LDV_IN_INTERRUPT = 1;
int ldv_timer_1_0 ;
struct pci_dev *skd_driver_group0 ;
int ldv_timer_state_2 = 0;
int ldv_state_variable_3 ;
struct timer_list *ldv_timer_list_2 ;
int ref_cnt ;
int ldv_state_variable_1 ;
int ldv_state_variable_4 ;
void timer_init_1(void) ;
int reg_timer_1(struct timer_list *timer , void (*function)(unsigned long ) , unsigned long data ) ;
void choose_timer_2(struct timer_list *timer ) ;
int reg_timer_2(struct timer_list *timer ) ;
void activate_pending_timer_2(struct timer_list *timer , unsigned long data , int pending_flag ) ;
void disable_suitable_timer_2(struct timer_list *timer ) ;
void disable_suitable_timer_1(struct timer_list *timer ) ;
void ldv_initialize_pci_driver_3(void) ;
void activate_suitable_timer_1(struct timer_list *timer , unsigned long data ) ;
void activate_pending_timer_1(struct timer_list *timer , unsigned long data , int pending_flag ) ;
void choose_timer_1(void) ;
void ldv_timer_1(int state , struct timer_list *timer ) ;
void ldv_initialize_block_device_operations_4(void) ;
__inline static char const *dev_name(struct device const *dev )
{
  char const *tmp ;
  {
  if ((unsigned long )dev->init_name != (unsigned long )((char const * )0)) {
    return ((char const *)dev->init_name);
  } else {
  }
  tmp = kobject_name(& dev->kobj);
  return (tmp);
}
}
__inline static void *dev_get_drvdata(struct device const *dev )
{
  {
  return ((void *)dev->driver_data);
}
}
__inline static void dev_set_drvdata(struct device *dev , void *data )
{
  {
  dev->driver_data = data;
  return;
}
}
extern int pci_find_capability(struct pci_dev * , int ) ;
extern int pci_bus_read_config_word(struct pci_bus * , unsigned int , int , u16 * ) ;
__inline static int pci_read_config_word(struct pci_dev const *dev , int where ,
                                         u16 *val )
{
  int tmp ;
  {
  tmp = pci_bus_read_config_word(dev->bus, dev->devfn, where, val);
  return (tmp);
}
}
extern int pci_enable_device(struct pci_dev * ) ;
extern void pci_disable_device(struct pci_dev * ) ;
extern void pci_set_master(struct pci_dev * ) ;
extern int pci_save_state(struct pci_dev * ) ;
extern void pci_restore_state(struct pci_dev * ) ;
extern int pci_set_power_state(struct pci_dev * , pci_power_t ) ;
extern pci_power_t pci_choose_state(struct pci_dev * , pm_message_t ) ;
extern int __pci_enable_wake(struct pci_dev * , pci_power_t , bool , bool ) ;
__inline static int pci_enable_wake(struct pci_dev *dev , pci_power_t state , bool enable )
{
  int tmp ;
  {
  tmp = __pci_enable_wake(dev, state, 0, (int )enable);
  return (tmp);
}
}
extern int pci_request_regions(struct pci_dev * , char const * ) ;
extern void pci_release_regions(struct pci_dev * ) ;
extern int __pci_register_driver(struct pci_driver * , struct module * , char const * ) ;
extern void pci_unregister_driver(struct pci_driver * ) ;
extern void pci_disable_msi(struct pci_dev * ) ;
extern void pci_disable_msix(struct pci_dev * ) ;
extern int pci_enable_msi_range(struct pci_dev * , int , int ) ;
extern int pci_enable_msix_range(struct pci_dev * , struct msix_entry * , int , int ) ;
__inline static int pci_enable_msix_exact(struct pci_dev *dev , struct msix_entry *entries ,
                                          int nvec )
{
  int rc ;
  int tmp ;
  {
  tmp = pci_enable_msix_range(dev, entries, nvec, nvec);
  rc = tmp;
  if (rc < 0) {
    return (rc);
  } else {
  }
  return (0);
}
}
__inline static void *lowmem_page_address(struct page const *page )
{
  {
  return ((void *)((unsigned long )((unsigned long long )(((long )page + 24189255811072L) / 64L) << 12) + 0xffff880000000000UL));
}
}
__inline static void sg_assign_page(struct scatterlist *sg , struct page *page )
{
  unsigned long page_link ;
  long tmp ;
  long tmp___0 ;
  long tmp___1 ;
  {
  page_link = sg->page_link & 3UL;
  tmp = ldv__builtin_expect(((unsigned long )page & 3UL) != 0UL, 0L);
  if (tmp != 0L) {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"include/linux/scatterlist.h"),
                         "i" (65), "i" (12UL));
    ldv_21785: ;
    goto ldv_21785;
  } else {
  }
  tmp___0 = ldv__builtin_expect(sg->sg_magic != 2271560481UL, 0L);
  if (tmp___0 != 0L) {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"include/linux/scatterlist.h"),
                         "i" (67), "i" (12UL));
    ldv_21786: ;
    goto ldv_21786;
  } else {
  }
  tmp___1 = ldv__builtin_expect((long )((int )sg->page_link) & 1L, 0L);
  if (tmp___1 != 0L) {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"include/linux/scatterlist.h"),
                         "i" (68), "i" (12UL));
    ldv_21787: ;
    goto ldv_21787;
  } else {
  }
  sg->page_link = page_link | (unsigned long )page;
  return;
}
}
__inline static void sg_set_page(struct scatterlist *sg , struct page *page , unsigned int len ,
                                 unsigned int offset )
{
  {
  sg_assign_page(sg, page);
  sg->offset = offset;
  sg->length = len;
  return;
}
}
__inline static struct page *sg_page(struct scatterlist *sg )
{
  long tmp ;
  long tmp___0 ;
  {
  tmp = ldv__builtin_expect(sg->sg_magic != 2271560481UL, 0L);
  if (tmp != 0L) {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"include/linux/scatterlist.h"),
                         "i" (98), "i" (12UL));
    ldv_21797: ;
    goto ldv_21797;
  } else {
  }
  tmp___0 = ldv__builtin_expect((long )((int )sg->page_link) & 1L, 0L);
  if (tmp___0 != 0L) {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"include/linux/scatterlist.h"),
                         "i" (99), "i" (12UL));
    ldv_21798: ;
    goto ldv_21798;
  } else {
  }
  return ((struct page *)(sg->page_link & 0xfffffffffffffffcUL));
}
}
__inline static dma_addr_t sg_phys(struct scatterlist *sg )
{
  struct page *tmp ;
  {
  tmp = sg_page(sg);
  return (((unsigned long long )(((long )tmp + 24189255811072L) / 64L) << 12) + (unsigned long long )sg->offset);
}
}
__inline static void *sg_virt(struct scatterlist *sg )
{
  struct page *tmp ;
  void *tmp___0 ;
  {
  tmp = sg_page(sg);
  tmp___0 = lowmem_page_address((struct page const *)tmp);
  return (tmp___0 + (unsigned long )sg->offset);
}
}
extern struct scatterlist *sg_next(struct scatterlist * ) ;
extern void sg_init_table(struct scatterlist * , unsigned int ) ;
__inline static int valid_dma_direction(int dma_direction )
{
  {
  return ((dma_direction == 0 || dma_direction == 1) || dma_direction == 2);
}
}
__inline static int is_device_dma_capable(struct device *dev )
{
  {
  return ((unsigned long )dev->dma_mask != (unsigned long )((u64 *)0ULL) && *(dev->dma_mask) != 0ULL);
}
}
__inline static void kmemcheck_mark_initialized(void *address , unsigned int n )
{
  {
  return;
}
}
extern void debug_dma_map_sg(struct device * , struct scatterlist * , int , int ,
                             int ) ;
extern void debug_dma_unmap_sg(struct device * , struct scatterlist * , int , int ) ;
extern void debug_dma_alloc_coherent(struct device * , size_t , dma_addr_t , void * ) ;
extern void debug_dma_free_coherent(struct device * , size_t , void * , dma_addr_t ) ;
extern void debug_dma_sync_sg_for_cpu(struct device * , struct scatterlist * , int ,
                                      int ) ;
extern struct device x86_dma_fallback_dev ;
extern struct dma_map_ops *dma_ops ;
__inline static struct dma_map_ops *get_dma_ops(struct device *dev )
{
  long tmp ;
  {
  tmp = ldv__builtin_expect((unsigned long )dev == (unsigned long )((struct device *)0),
                         0L);
  if (tmp != 0L || (unsigned long )dev->archdata.dma_ops == (unsigned long )((struct dma_map_ops *)0)) {
    return (dma_ops);
  } else {
    return (dev->archdata.dma_ops);
  }
}
}
__inline static int dma_map_sg_attrs(struct device *dev , struct scatterlist *sg ,
                                     int nents , enum dma_data_direction dir , struct dma_attrs *attrs )
{
  struct dma_map_ops *ops ;
  struct dma_map_ops *tmp ;
  int i ;
  int ents ;
  struct scatterlist *s ;
  void *tmp___0 ;
  int tmp___1 ;
  long tmp___2 ;
  {
  tmp = get_dma_ops(dev);
  ops = tmp;
  i = 0;
  s = sg;
  goto ldv_22365;
  ldv_22364:
  tmp___0 = sg_virt(s);
  kmemcheck_mark_initialized(tmp___0, s->length);
  i = i + 1;
  s = sg_next(s);
  ldv_22365: ;
  if (i < nents) {
    goto ldv_22364;
  } else {
  }
  tmp___1 = valid_dma_direction((int )dir);
  tmp___2 = ldv__builtin_expect(tmp___1 == 0, 0L);
  if (tmp___2 != 0L) {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"include/asm-generic/dma-mapping-common.h"),
                         "i" (52), "i" (12UL));
    ldv_22367: ;
    goto ldv_22367;
  } else {
  }
  ents = (*(ops->map_sg))(dev, sg, nents, dir, attrs);
  debug_dma_map_sg(dev, sg, nents, ents, (int )dir);
  return (ents);
}
}
__inline static void dma_unmap_sg_attrs(struct device *dev , struct scatterlist *sg ,
                                        int nents , enum dma_data_direction dir ,
                                        struct dma_attrs *attrs )
{
  struct dma_map_ops *ops ;
  struct dma_map_ops *tmp ;
  int tmp___0 ;
  long tmp___1 ;
  {
  tmp = get_dma_ops(dev);
  ops = tmp;
  tmp___0 = valid_dma_direction((int )dir);
  tmp___1 = ldv__builtin_expect(tmp___0 == 0, 0L);
  if (tmp___1 != 0L) {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"include/asm-generic/dma-mapping-common.h"),
                         "i" (65), "i" (12UL));
    ldv_22376: ;
    goto ldv_22376;
  } else {
  }
  debug_dma_unmap_sg(dev, sg, nents, (int )dir);
  if ((unsigned long )ops->unmap_sg != (unsigned long )((void (*)(struct device * ,
                                                                  struct scatterlist * ,
                                                                  int , enum dma_data_direction ,
                                                                  struct dma_attrs * ))0)) {
    (*(ops->unmap_sg))(dev, sg, nents, dir, attrs);
  } else {
  }
  return;
}
}
__inline static void dma_sync_sg_for_cpu(struct device *dev , struct scatterlist *sg ,
                                         int nelems , enum dma_data_direction dir )
{
  struct dma_map_ops *ops ;
  struct dma_map_ops *tmp ;
  int tmp___0 ;
  long tmp___1 ;
  {
  tmp = get_dma_ops(dev);
  ops = tmp;
  tmp___0 = valid_dma_direction((int )dir);
  tmp___1 = ldv__builtin_expect(tmp___0 == 0, 0L);
  if (tmp___1 != 0L) {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"include/asm-generic/dma-mapping-common.h"),
                         "i" (155), "i" (12UL));
    ldv_22436: ;
    goto ldv_22436;
  } else {
  }
  if ((unsigned long )ops->sync_sg_for_cpu != (unsigned long )((void (*)(struct device * ,
                                                                         struct scatterlist * ,
                                                                         int , enum dma_data_direction ))0)) {
    (*(ops->sync_sg_for_cpu))(dev, sg, nelems, dir);
  } else {
  }
  debug_dma_sync_sg_for_cpu(dev, sg, nelems, (int )dir);
  return;
}
}
extern int dma_supported(struct device * , u64 ) ;
extern int dma_set_mask(struct device * , u64 ) ;
__inline static unsigned long dma_alloc_coherent_mask(struct device *dev , gfp_t gfp )
{
  unsigned long dma_mask ;
  {
  dma_mask = 0UL;
  dma_mask = (unsigned long )dev->coherent_dma_mask;
  if (dma_mask == 0UL) {
    dma_mask = (int )gfp & 1 ? 16777215UL : 4294967295UL;
  } else {
  }
  return (dma_mask);
}
}
__inline static gfp_t dma_alloc_coherent_gfp_flags(struct device *dev , gfp_t gfp )
{
  unsigned long dma_mask ;
  unsigned long tmp ;
  {
  tmp = dma_alloc_coherent_mask(dev, gfp);
  dma_mask = tmp;
  if ((unsigned long long )dma_mask <= 16777215ULL) {
    gfp = gfp | 1U;
  } else {
  }
  if ((unsigned long long )dma_mask <= 4294967295ULL && (gfp & 1U) == 0U) {
    gfp = gfp | 4U;
  } else {
  }
  return (gfp);
}
}
__inline static void *dma_alloc_attrs(struct device *dev , size_t size , dma_addr_t *dma_handle ,
                                      gfp_t gfp , struct dma_attrs *attrs )
{
  struct dma_map_ops *ops ;
  struct dma_map_ops *tmp ;
  void *memory ;
  int tmp___0 ;
  gfp_t tmp___1 ;
  {
  tmp = get_dma_ops(dev);
  ops = tmp;
  gfp = gfp & 4294967288U;
  if ((unsigned long )dev == (unsigned long )((struct device *)0)) {
    dev = & x86_dma_fallback_dev;
  } else {
  }
  tmp___0 = is_device_dma_capable(dev);
  if (tmp___0 == 0) {
    return ((void *)0);
  } else {
  }
  if ((unsigned long )ops->alloc == (unsigned long )((void *(*)(struct device * ,
                                                                size_t , dma_addr_t * ,
                                                                gfp_t , struct dma_attrs * ))0)) {
    return ((void *)0);
  } else {
  }
  tmp___1 = dma_alloc_coherent_gfp_flags(dev, gfp);
  memory = (*(ops->alloc))(dev, size, dma_handle, tmp___1, attrs);
  debug_dma_alloc_coherent(dev, size, *dma_handle, memory);
  return (memory);
}
}
__inline static void dma_free_attrs(struct device *dev , size_t size , void *vaddr ,
                                    dma_addr_t bus , struct dma_attrs *attrs )
{
  struct dma_map_ops *ops ;
  struct dma_map_ops *tmp ;
  int __ret_warn_on ;
  unsigned long _flags ;
  int tmp___0 ;
  long tmp___1 ;
  {
  tmp = get_dma_ops(dev);
  ops = tmp;
  _flags = arch_local_save_flags();
  tmp___0 = arch_irqs_disabled_flags(_flags);
  __ret_warn_on = tmp___0 != 0;
  tmp___1 = ldv__builtin_expect(__ret_warn_on != 0, 0L);
  if (tmp___1 != 0L) {
    warn_slowpath_null("./arch/x86/include/asm/dma-mapping.h", 166);
  } else {
  }
  ldv__builtin_expect(__ret_warn_on != 0, 0L);
  debug_dma_free_coherent(dev, size, vaddr, bus);
  if ((unsigned long )ops->free != (unsigned long )((void (*)(struct device * , size_t ,
                                                              void * , dma_addr_t ,
                                                              struct dma_attrs * ))0)) {
    (*(ops->free))(dev, size, vaddr, bus, attrs);
  } else {
  }
  return;
}
}
__inline static int dma_set_coherent_mask(struct device *dev , u64 mask )
{
  int tmp ;
  {
  tmp = dma_supported(dev, mask);
  if (tmp == 0) {
    return (-5);
  } else {
  }
  dev->coherent_dma_mask = mask;
  return (0);
}
}
__inline static void *pci_alloc_consistent(struct pci_dev *hwdev , size_t size , dma_addr_t *dma_handle )
{
  void *tmp ;
  {
  tmp = dma_alloc_attrs((unsigned long )hwdev != (unsigned long )((struct pci_dev *)0) ? & hwdev->dev : (struct device *)0,
                        size, dma_handle, 32U, (struct dma_attrs *)0);
  return (tmp);
}
}
__inline static void pci_free_consistent(struct pci_dev *hwdev , size_t size , void *vaddr ,
                                         dma_addr_t dma_handle )
{
  {
  dma_free_attrs((unsigned long )hwdev != (unsigned long )((struct pci_dev *)0) ? & hwdev->dev : (struct device *)0,
                 size, vaddr, dma_handle, (struct dma_attrs *)0);
  return;
}
}
__inline static int pci_map_sg(struct pci_dev *hwdev , struct scatterlist *sg , int nents ,
                               int direction )
{
  int tmp ;
  {
  tmp = dma_map_sg_attrs((unsigned long )hwdev != (unsigned long )((struct pci_dev *)0) ? & hwdev->dev : (struct device *)0,
                         sg, nents, (enum dma_data_direction )direction, (struct dma_attrs *)0);
  return (tmp);
}
}
__inline static void pci_unmap_sg(struct pci_dev *hwdev , struct scatterlist *sg ,
                                  int nents , int direction )
{
  {
  dma_unmap_sg_attrs((unsigned long )hwdev != (unsigned long )((struct pci_dev *)0) ? & hwdev->dev : (struct device *)0,
                     sg, nents, (enum dma_data_direction )direction, (struct dma_attrs *)0);
  return;
}
}
__inline static int pci_set_dma_mask(struct pci_dev *dev , u64 mask )
{
  int tmp ;
  {
  tmp = dma_set_mask(& dev->dev, mask);
  return (tmp);
}
}
__inline static int pci_set_consistent_dma_mask(struct pci_dev *dev , u64 mask )
{
  int tmp ;
  {
  tmp = dma_set_coherent_mask(& dev->dev, mask);
  return (tmp);
}
}
__inline static void *pci_get_drvdata(struct pci_dev *pdev )
{
  void *tmp ;
  {
  tmp = dev_get_drvdata((struct device const *)(& pdev->dev));
  return (tmp);
}
}
__inline static void pci_set_drvdata(struct pci_dev *pdev , void *data )
{
  {
  dev_set_drvdata(& pdev->dev, data);
  return;
}
}
__inline static char const *pci_name(struct pci_dev const *pdev )
{
  char const *tmp ;
  {
  tmp = dev_name(& pdev->dev);
  return (tmp);
}
}
extern bool capable(int ) ;
extern long schedule_timeout(long ) ;
extern int register_blkdev(unsigned int , char const * ) ;
extern void unregister_blkdev(unsigned int , char const * ) ;
extern void add_disk(struct gendisk * ) ;
extern void del_gendisk(struct gendisk * ) ;
__inline static sector_t get_capacity(struct gendisk *disk )
{
  {
  return (disk->part0.nr_sects);
}
}
__inline static void set_capacity(struct gendisk *disk , sector_t size )
{
  {
  disk->part0.nr_sects = size;
  return;
}
}
extern struct gendisk *alloc_disk(int ) ;
extern void put_disk(struct gendisk * ) ;
__inline static bool __chk_range_not_ok(unsigned long addr , unsigned long size ,
                                        unsigned long limit )
{
  {
  addr = addr + size;
  if (addr < size) {
    return (1);
  } else {
  }
  return (addr > limit);
}
}
extern unsigned long copy_user_enhanced_fast_string(void * , void const * , unsigned int ) ;
extern unsigned long copy_user_generic_string(void * , void const * , unsigned int ) ;
extern unsigned long copy_user_generic_unrolled(void * , void const * , unsigned int ) ;
__inline static unsigned long copy_user_generic(void *to , void const *from , unsigned int len )
{
  unsigned int ret ;
  {
  __asm__ volatile ("661:\n\tcall %P4\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word (3*32+16)\n .byte 662b-661b\n .byte 6641f-6631f\n .long 661b - .\n .long 6632f - .\n .word (9*32+ 9)\n .byte 662b-661b\n .byte 6642f-6632f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n .byte 0xff + (6642f-6632f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\tcall %P5\n6641:\n\t6632:\n\tcall %P6\n6642:\n\t.popsection": "=a" (ret),
                       "=D" (to), "=S" (from), "=d" (len): [old] "i" (& copy_user_generic_unrolled),
                       [new1] "i" (& copy_user_generic_string), [new2] "i" (& copy_user_enhanced_fast_string),
                       "1" (to), "2" (from), "3" (len): "memory", "rcx", "r8", "r9",
                       "r10", "r11");
  return ((unsigned long )ret);
}
}
__inline static int __copy_from_user_nocheck(void *dst , void const *src , unsigned int size )
{
  int ret ;
  unsigned long tmp ;
  long tmp___0 ;
  long tmp___1 ;
  unsigned long tmp___2 ;
  {
  ret = 0;
  tmp = copy_user_generic(dst, src, size);
  return ((int )tmp);
  switch (size) {
  case 1U:
  __asm__ volatile ("661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word (9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xcb\n6641:\n\t.popsection\n1:\tmovb %2,%b1\n2: 661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word (9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xca\n6641:\n\t.popsection\n.section .fixup,\"ax\"\n3:\tmov %3,%0\n\txorb %b1,%b1\n\tjmp 2b\n.previous\n .pushsection \"__ex_table\",\"a\"\n .balign 8\n .long (1b) - .\n .long (3b) - .\n .popsection\n": "=r" (ret),
                       "=q" (*((u8 *)dst)): "m" (*((struct __large_struct *)src)),
                       "i" (1), "0" (ret));
  return (ret);
  case 2U:
  __asm__ volatile ("661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word (9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xcb\n6641:\n\t.popsection\n1:\tmovw %2,%w1\n2: 661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word (9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xca\n6641:\n\t.popsection\n.section .fixup,\"ax\"\n3:\tmov %3,%0\n\txorw %w1,%w1\n\tjmp 2b\n.previous\n .pushsection \"__ex_table\",\"a\"\n .balign 8\n .long (1b) - .\n .long (3b) - .\n .popsection\n": "=r" (ret),
                       "=r" (*((u16 *)dst)): "m" (*((struct __large_struct *)src)),
                       "i" (2), "0" (ret));
  return (ret);
  case 4U:
  __asm__ volatile ("661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word (9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xcb\n6641:\n\t.popsection\n1:\tmovl %2,%k1\n2: 661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word (9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xca\n6641:\n\t.popsection\n.section .fixup,\"ax\"\n3:\tmov %3,%0\n\txorl %k1,%k1\n\tjmp 2b\n.previous\n .pushsection \"__ex_table\",\"a\"\n .balign 8\n .long (1b) - .\n .long (3b) - .\n .popsection\n": "=r" (ret),
                       "=r" (*((u32 *)dst)): "m" (*((struct __large_struct *)src)),
                       "i" (4), "0" (ret));
  return (ret);
  case 8U:
  __asm__ volatile ("661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word (9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xcb\n6641:\n\t.popsection\n1:\tmovq %2,%1\n2: 661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word (9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xca\n6641:\n\t.popsection\n.section .fixup,\"ax\"\n3:\tmov %3,%0\n\txorq %1,%1\n\tjmp 2b\n.previous\n .pushsection \"__ex_table\",\"a\"\n .balign 8\n .long (1b) - .\n .long (3b) - .\n .popsection\n": "=r" (ret),
                       "=r" (*((u64 *)dst)): "m" (*((struct __large_struct *)src)),
                       "i" (8), "0" (ret));
  return (ret);
  case 10U:
  __asm__ volatile ("661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word (9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xcb\n6641:\n\t.popsection\n1:\tmovq %2,%1\n2: 661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word (9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xca\n6641:\n\t.popsection\n.section .fixup,\"ax\"\n3:\tmov %3,%0\n\txorq %1,%1\n\tjmp 2b\n.previous\n .pushsection \"__ex_table\",\"a\"\n .balign 8\n .long (1b) - .\n .long (3b) - .\n .popsection\n": "=r" (ret),
                       "=r" (*((u64 *)dst)): "m" (*((struct __large_struct *)src)),
                       "i" (10), "0" (ret));
  tmp___0 = ldv__builtin_expect(ret != 0, 0L);
  if (tmp___0 != 0L) {
    return (ret);
  } else {
  }
  __asm__ volatile ("661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word (9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xcb\n6641:\n\t.popsection\n1:\tmovw %2,%w1\n2: 661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word (9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xca\n6641:\n\t.popsection\n.section .fixup,\"ax\"\n3:\tmov %3,%0\n\txorw %w1,%w1\n\tjmp 2b\n.previous\n .pushsection \"__ex_table\",\"a\"\n .balign 8\n .long (1b) - .\n .long (3b) - .\n .popsection\n": "=r" (ret),
                       "=r" (*((u16 *)dst + 8U)): "m" (*((struct __large_struct *)src + 8U)),
                       "i" (2), "0" (ret));
  return (ret);
  case 16U:
  __asm__ volatile ("661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word (9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xcb\n6641:\n\t.popsection\n1:\tmovq %2,%1\n2: 661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word (9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xca\n6641:\n\t.popsection\n.section .fixup,\"ax\"\n3:\tmov %3,%0\n\txorq %1,%1\n\tjmp 2b\n.previous\n .pushsection \"__ex_table\",\"a\"\n .balign 8\n .long (1b) - .\n .long (3b) - .\n .popsection\n": "=r" (ret),
                       "=r" (*((u64 *)dst)): "m" (*((struct __large_struct *)src)),
                       "i" (16), "0" (ret));
  tmp___1 = ldv__builtin_expect(ret != 0, 0L);
  if (tmp___1 != 0L) {
    return (ret);
  } else {
  }
  __asm__ volatile ("661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word (9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xcb\n6641:\n\t.popsection\n1:\tmovq %2,%1\n2: 661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word (9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xca\n6641:\n\t.popsection\n.section .fixup,\"ax\"\n3:\tmov %3,%0\n\txorq %1,%1\n\tjmp 2b\n.previous\n .pushsection \"__ex_table\",\"a\"\n .balign 8\n .long (1b) - .\n .long (3b) - .\n .popsection\n": "=r" (ret),
                       "=r" (*((u64 *)dst + 8U)): "m" (*((struct __large_struct *)src + 8U)),
                       "i" (8), "0" (ret));
  return (ret);
  default:
  tmp___2 = copy_user_generic(dst, src, size);
  return ((int )tmp___2);
  }
}
}
__inline static int __copy_from_user(void *dst , void const *src , unsigned int size )
{
  int tmp ;
  {
  might_fault();
  tmp = __copy_from_user_nocheck(dst, src, size);
  return (tmp);
}
}
__inline static int __copy_to_user_nocheck(void *dst , void const *src , unsigned int size )
{
  int ret ;
  unsigned long tmp ;
  long tmp___0 ;
  long tmp___1 ;
  unsigned long tmp___2 ;
  {
  ret = 0;
  tmp = copy_user_generic(dst, src, size);
  return ((int )tmp);
  switch (size) {
  case 1U:
  __asm__ volatile ("661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word (9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xcb\n6641:\n\t.popsection\n1:\tmovb %b1,%2\n2: 661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word (9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xca\n6641:\n\t.popsection\n.section .fixup,\"ax\"\n3:\tmov %3,%0\n\tjmp 2b\n.previous\n .pushsection \"__ex_table\",\"a\"\n .balign 8\n .long (1b) - .\n .long (3b) - .\n .popsection\n": "=r" (ret): "iq" (*((u8 *)src)),
                       "m" (*((struct __large_struct *)dst)), "i" (1), "0" (ret));
  return (ret);
  case 2U:
  __asm__ volatile ("661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word (9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xcb\n6641:\n\t.popsection\n1:\tmovw %w1,%2\n2: 661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word (9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xca\n6641:\n\t.popsection\n.section .fixup,\"ax\"\n3:\tmov %3,%0\n\tjmp 2b\n.previous\n .pushsection \"__ex_table\",\"a\"\n .balign 8\n .long (1b) - .\n .long (3b) - .\n .popsection\n": "=r" (ret): "ir" (*((u16 *)src)),
                       "m" (*((struct __large_struct *)dst)), "i" (2), "0" (ret));
  return (ret);
  case 4U:
  __asm__ volatile ("661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word (9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xcb\n6641:\n\t.popsection\n1:\tmovl %k1,%2\n2: 661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word (9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xca\n6641:\n\t.popsection\n.section .fixup,\"ax\"\n3:\tmov %3,%0\n\tjmp 2b\n.previous\n .pushsection \"__ex_table\",\"a\"\n .balign 8\n .long (1b) - .\n .long (3b) - .\n .popsection\n": "=r" (ret): "ir" (*((u32 *)src)),
                       "m" (*((struct __large_struct *)dst)), "i" (4), "0" (ret));
  return (ret);
  case 8U:
  __asm__ volatile ("661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word (9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xcb\n6641:\n\t.popsection\n1:\tmovq %1,%2\n2: 661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word (9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xca\n6641:\n\t.popsection\n.section .fixup,\"ax\"\n3:\tmov %3,%0\n\tjmp 2b\n.previous\n .pushsection \"__ex_table\",\"a\"\n .balign 8\n .long (1b) - .\n .long (3b) - .\n .popsection\n": "=r" (ret): "er" (*((u64 *)src)),
                       "m" (*((struct __large_struct *)dst)), "i" (8), "0" (ret));
  return (ret);
  case 10U:
  __asm__ volatile ("661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word (9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xcb\n6641:\n\t.popsection\n1:\tmovq %1,%2\n2: 661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word (9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xca\n6641:\n\t.popsection\n.section .fixup,\"ax\"\n3:\tmov %3,%0\n\tjmp 2b\n.previous\n .pushsection \"__ex_table\",\"a\"\n .balign 8\n .long (1b) - .\n .long (3b) - .\n .popsection\n": "=r" (ret): "er" (*((u64 *)src)),
                       "m" (*((struct __large_struct *)dst)), "i" (10), "0" (ret));
  tmp___0 = ldv__builtin_expect(ret != 0, 0L);
  if (tmp___0 != 0L) {
    return (ret);
  } else {
  }
  __asm__ volatile ("": : : "memory");
  __asm__ volatile ("661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word (9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xcb\n6641:\n\t.popsection\n1:\tmovw %w1,%2\n2: 661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word (9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xca\n6641:\n\t.popsection\n.section .fixup,\"ax\"\n3:\tmov %3,%0\n\tjmp 2b\n.previous\n .pushsection \"__ex_table\",\"a\"\n .balign 8\n .long (1b) - .\n .long (3b) - .\n .popsection\n": "=r" (ret): "ir" (*((u16 *)src + 4UL)),
                       "m" (*((struct __large_struct *)dst + 4U)), "i" (2), "0" (ret));
  return (ret);
  case 16U:
  __asm__ volatile ("661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word (9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xcb\n6641:\n\t.popsection\n1:\tmovq %1,%2\n2: 661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word (9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xca\n6641:\n\t.popsection\n.section .fixup,\"ax\"\n3:\tmov %3,%0\n\tjmp 2b\n.previous\n .pushsection \"__ex_table\",\"a\"\n .balign 8\n .long (1b) - .\n .long (3b) - .\n .popsection\n": "=r" (ret): "er" (*((u64 *)src)),
                       "m" (*((struct __large_struct *)dst)), "i" (16), "0" (ret));
  tmp___1 = ldv__builtin_expect(ret != 0, 0L);
  if (tmp___1 != 0L) {
    return (ret);
  } else {
  }
  __asm__ volatile ("": : : "memory");
  __asm__ volatile ("661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word (9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xcb\n6641:\n\t.popsection\n1:\tmovq %1,%2\n2: 661:\n\t.byte 0x66,0x66,0x90\n\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word (9*32+20)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0x0f,0x01,0xca\n6641:\n\t.popsection\n.section .fixup,\"ax\"\n3:\tmov %3,%0\n\tjmp 2b\n.previous\n .pushsection \"__ex_table\",\"a\"\n .balign 8\n .long (1b) - .\n .long (3b) - .\n .popsection\n": "=r" (ret): "er" (*((u64 *)src + 1UL)),
                       "m" (*((struct __large_struct *)dst + 1U)), "i" (8), "0" (ret));
  return (ret);
  default:
  tmp___2 = copy_user_generic(dst, src, size);
  return ((int )tmp___2);
  }
}
}
__inline static int __copy_to_user(void *dst , void const *src , unsigned int size )
{
  int tmp ;
  {
  might_fault();
  tmp = __copy_to_user_nocheck(dst, src, size);
  return (tmp);
}
}
extern unsigned long _copy_from_user(void * , void const * , unsigned int ) ;
extern void __copy_from_user_overflow(void) ;
__inline static unsigned long copy_from_user(void *to , void const *from , unsigned long n )
{
  int sz ;
  unsigned long tmp ;
  long tmp___0 ;
  long tmp___1 ;
  {
  tmp = __builtin_object_size((void const *)to, 0);
  sz = (int )tmp;
  might_fault();
  tmp___0 = ldv__builtin_expect(sz < 0, 1L);
  if (tmp___0 != 0L) {
    n = _copy_from_user(to, from, (unsigned int )n);
  } else {
    tmp___1 = ldv__builtin_expect((unsigned long )sz >= n, 1L);
    if (tmp___1 != 0L) {
      n = _copy_from_user(to, from, (unsigned int )n);
    } else {
      __copy_from_user_overflow();
    }
  }
  return (n);
}
}
__inline static void queue_lockdep_assert_held(struct request_queue *q )
{
  int __ret_warn_on ;
  int tmp ;
  int tmp___0 ;
  long tmp___1 ;
  {
  if ((unsigned long )q->queue_lock != (unsigned long )((spinlock_t *)0)) {
    if (debug_locks != 0) {
      tmp = lock_is_held(& (q->queue_lock)->ldv_6347.ldv_6346.dep_map);
      if (tmp == 0) {
        tmp___0 = 1;
      } else {
        tmp___0 = 0;
      }
    } else {
      tmp___0 = 0;
    }
    __ret_warn_on = tmp___0;
    tmp___1 = ldv__builtin_expect(__ret_warn_on != 0, 0L);
    if (tmp___1 != 0L) {
      warn_slowpath_null("include/linux/blkdev.h", 527);
    } else {
    }
    ldv__builtin_expect(__ret_warn_on != 0, 0L);
  } else {
  }
  return;
}
}
__inline static void queue_flag_set_unlocked(unsigned int flag , struct request_queue *q )
{
  {
  __set_bit((long )flag, (unsigned long volatile *)(& q->queue_flags));
  return;
}
}
__inline static void queue_flag_clear(unsigned int flag , struct request_queue *q )
{
  {
  queue_lockdep_assert_held(q);
  __clear_bit((long )flag, (unsigned long volatile *)(& q->queue_flags));
  return;
}
}
extern void blk_requeue_request(struct request_queue * , struct request * ) ;
extern void blk_add_request_payload(struct request * , struct page * , unsigned int ) ;
extern int scsi_cmd_ioctl(struct request_queue * , struct gendisk * , fmode_t , unsigned int ,
                          void * ) ;
extern void blk_start_queue(struct request_queue * ) ;
extern void blk_stop_queue(struct request_queue * ) ;
__inline static sector_t blk_rq_pos(struct request const *rq )
{
  {
  return ((sector_t )rq->__sector);
}
}
__inline static unsigned int blk_rq_bytes(struct request const *rq )
{
  {
  return ((unsigned int )rq->__data_len);
}
}
__inline static unsigned int blk_rq_sectors(struct request const *rq )
{
  unsigned int tmp ;
  {
  tmp = blk_rq_bytes(rq);
  return (tmp >> 9);
}
}
extern struct request *blk_peek_request(struct request_queue * ) ;
extern void blk_start_request(struct request * ) ;
extern void __blk_end_request_all(struct request * , int ) ;
extern struct request_queue *blk_init_queue(request_fn_proc * , spinlock_t * ) ;
extern void blk_cleanup_queue(struct request_queue * ) ;
extern void blk_queue_max_hw_sectors(struct request_queue * , unsigned int ) ;
extern void blk_queue_max_segments(struct request_queue * , unsigned short ) ;
extern void blk_queue_io_opt(struct request_queue * , unsigned int ) ;
extern void blk_queue_flush(struct request_queue * , unsigned int ) ;
extern int blk_rq_map_sg(struct request_queue * , struct request * , struct scatterlist * ) ;
extern int devm_request_threaded_irq(struct device * , unsigned int , irqreturn_t (*)(int ,
                                                                                       void * ) ,
                                     irqreturn_t (*)(int , void * ) , unsigned long ,
                                     char const * , void * ) ;
__inline static int devm_request_irq(struct device *dev , unsigned int irq , irqreturn_t (*handler)(int ,
                                                                                                    void * ) ,
                                     unsigned long irqflags , char const *devname ,
                                     void *dev_id )
{
  int tmp ;
  {
  tmp = devm_request_threaded_irq(dev, irq, handler, (irqreturn_t (*)(int , void * ))0,
                                  irqflags, devname, dev_id);
  return (tmp);
}
}
extern void devm_free_irq(struct device * , unsigned int , void * ) ;
extern int pci_enable_pcie_error_reporting(struct pci_dev * ) ;
extern int pci_disable_pcie_error_reporting(struct pci_dev * ) ;
extern unsigned long iov_shorten(struct iovec * , unsigned long , size_t ) ;
__inline static void put_unaligned_be16(u16 val , void *p )
{
  __u16 tmp ;
  {
  tmp = __fswab16((int )val);
  *((__be16 *)p) = tmp;
  return;
}
}
__inline static void put_unaligned_be32(u32 val , void *p )
{
  __u32 tmp ;
  {
  tmp = __fswab32(val);
  *((__be32 *)p) = tmp;
  return;
}
}
__inline static void put_unaligned_be64(u64 val , void *p )
{
  __u64 tmp ;
  {
  tmp = __fswab64(val);
  *((__be64 *)p) = tmp;
  return;
}
}
static int skd_dbg_level ;
static int skd_isr_comp_limit = 4;
__inline static u32 skd_reg_read32(struct skd_device *skdev , u32 offset )
{
  u32 val ;
  unsigned int tmp ;
  struct _ddebug descriptor ;
  long tmp___0 ;
  long tmp___1 ;
  {
  tmp___1 = ldv__builtin_expect(skdev->dbg_level <= 1, 1L);
  if (tmp___1 != 0L) {
    tmp = readl((void const volatile *)skdev->mem_map[1] + (unsigned long )offset);
    return (tmp);
  } else {
    __asm__ volatile ("": : : "memory");
    val = readl((void const volatile *)skdev->mem_map[1] + (unsigned long )offset);
    __asm__ volatile ("": : : "memory");
    descriptor.modname = "skd";
    descriptor.function = "skd_reg_read32";
    descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/9607/dscv_tempdir/dscv/ri/43_2a/drivers/block/skd_main.o.c.prepared";
    descriptor.format = "%s:%s:%d offset %x = %x\n";
    descriptor.lineno = 424U;
    descriptor.flags = 0U;
    tmp___0 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    if (tmp___0 != 0L) {
      __dynamic_pr_debug(& descriptor, "%s:%s:%d offset %x = %x\n", (char *)(& skdev->name),
                         "skd_reg_read32", 424, offset, val);
    } else {
    }
    return (val);
  }
}
}
__inline static void skd_reg_write32(struct skd_device *skdev , u32 val , u32 offset )
{
  struct _ddebug descriptor ;
  long tmp ;
  long tmp___0 ;
  {
  tmp___0 = ldv__builtin_expect(skdev->dbg_level <= 1, 1L);
  if (tmp___0 != 0L) {
    writel(val, skdev->mem_map[1] + (unsigned long )offset);
    __asm__ volatile ("": : : "memory");
  } else {
    __asm__ volatile ("": : : "memory");
    writel(val, skdev->mem_map[1] + (unsigned long )offset);
    __asm__ volatile ("": : : "memory");
    descriptor.modname = "skd";
    descriptor.function = "skd_reg_write32";
    descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/9607/dscv_tempdir/dscv/ri/43_2a/drivers/block/skd_main.o.c.prepared";
    descriptor.format = "%s:%s:%d offset %x = %x\n";
    descriptor.lineno = 441U;
    descriptor.flags = 0U;
    tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    if (tmp != 0L) {
      __dynamic_pr_debug(& descriptor, "%s:%s:%d offset %x = %x\n", (char *)(& skdev->name),
                         "skd_reg_write32", 441, offset, val);
    } else {
    }
  }
  return;
}
}
__inline static void skd_reg_write64(struct skd_device *skdev , u64 val , u32 offset )
{
  struct _ddebug descriptor ;
  long tmp ;
  long tmp___0 ;
  {
  tmp___0 = ldv__builtin_expect(skdev->dbg_level <= 1, 1L);
  if (tmp___0 != 0L) {
    writeq((unsigned long )val, skdev->mem_map[1] + (unsigned long )offset);
    __asm__ volatile ("": : : "memory");
  } else {
    __asm__ volatile ("": : : "memory");
    writeq((unsigned long )val, skdev->mem_map[1] + (unsigned long )offset);
    __asm__ volatile ("": : : "memory");
    descriptor.modname = "skd";
    descriptor.function = "skd_reg_write64";
    descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/9607/dscv_tempdir/dscv/ri/43_2a/drivers/block/skd_main.o.c.prepared";
    descriptor.format = "%s:%s:%d offset %x = %016llx\n";
    descriptor.lineno = 456U;
    descriptor.flags = 0U;
    tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    if (tmp != 0L) {
      __dynamic_pr_debug(& descriptor, "%s:%s:%d offset %x = %016llx\n", (char *)(& skdev->name),
                         "skd_reg_write64", 456, offset, val);
    } else {
    }
  }
  return;
}
}
static int skd_isr_type = 1;
static int skd_max_req_per_msg = 1;
static int skd_max_queue_depth = 64;
static int skd_sgs_per_request = 256;
static int skd_max_pass_thru = 32;
static u32 skd_major ;
static void skd_destruct(struct skd_device *skdev ) ;
static struct block_device_operations const skd_blockdev_ops ;
static void skd_send_fitmsg(struct skd_device *skdev , struct skd_fitmsg_context *skmsg ) ;
static void skd_send_special_fitmsg(struct skd_device *skdev , struct skd_special_context *skspcl ) ;
static void skd_request_fn(struct request_queue *q ) ;
static void skd_end_request(struct skd_device *skdev , struct skd_request_context *skreq ,
                            int error ) ;
static int skd_preop_sg_list(struct skd_device *skdev , struct skd_request_context *skreq ) ;
static void skd_postop_sg_list(struct skd_device *skdev , struct skd_request_context *skreq ) ;
static void skd_restart_device(struct skd_device *skdev ) ;
static int skd_quiesce_dev(struct skd_device *skdev ) ;
static int skd_unquiesce_dev(struct skd_device *skdev ) ;
static void skd_release_special(struct skd_device *skdev , struct skd_special_context *skspcl ) ;
static void skd_disable_interrupts(struct skd_device *skdev ) ;
static void skd_isr_fwstate(struct skd_device *skdev ) ;
static void skd_recover_requests(struct skd_device *skdev , int requeue ) ;
static void skd_soft_reset(struct skd_device *skdev ) ;
static char const *skd_name(struct skd_device *skdev ) ;
char const *skd_drive_state_to_str(int state ) ;
char const *skd_skdev_state_to_str(enum skd_drvr_state state ) ;
static void skd_log_skdev(struct skd_device *skdev , char const *event ) ;
static void skd_log_skmsg(struct skd_device *skdev , struct skd_fitmsg_context *skmsg ,
                          char const *event ) ;
static void skd_log_skreq(struct skd_device *skdev , struct skd_request_context *skreq ,
                          char const *event ) ;
static void skd_fail_all_pending(struct skd_device *skdev )
{
  struct request_queue *q ;
  struct request *req ;
  {
  q = skdev->queue;
  ldv_35453:
  req = blk_peek_request(q);
  if ((unsigned long )req == (unsigned long )((struct request *)0)) {
    goto ldv_35452;
  } else {
  }
  blk_start_request(req);
  __blk_end_request_all(req, -5);
  goto ldv_35453;
  ldv_35452: ;
  return;
}
}
static void skd_prep_rw_cdb(struct skd_scsi_request *scsi_req , int data_dir , unsigned int lba ,
                            unsigned int count )
{
  {
  if (data_dir == 0) {
    scsi_req->cdb[0] = 40U;
  } else {
    scsi_req->cdb[0] = 42U;
  }
  scsi_req->cdb[1] = 0U;
  scsi_req->cdb[2] = (unsigned char )(lba >> 24);
  scsi_req->cdb[3] = (unsigned char )((lba & 16711680U) >> 16);
  scsi_req->cdb[4] = (unsigned char )((lba & 65280U) >> 8);
  scsi_req->cdb[5] = (unsigned char )lba;
  scsi_req->cdb[6] = 0U;
  scsi_req->cdb[7] = (unsigned char )((count & 65280U) >> 8);
  scsi_req->cdb[8] = (unsigned char )count;
  scsi_req->cdb[9] = 0U;
  return;
}
}
static void skd_prep_zerosize_flush_cdb(struct skd_scsi_request *scsi_req , struct skd_request_context *skreq )
{
  {
  skreq->flush_cmd = 1U;
  scsi_req->cdb[0] = 53U;
  scsi_req->cdb[1] = 0U;
  scsi_req->cdb[2] = 0U;
  scsi_req->cdb[3] = 0U;
  scsi_req->cdb[4] = 0U;
  scsi_req->cdb[5] = 0U;
  scsi_req->cdb[6] = 0U;
  scsi_req->cdb[7] = 0U;
  scsi_req->cdb[8] = 0U;
  scsi_req->cdb[9] = 0U;
  return;
}
}
static void skd_prep_discard_cdb(struct skd_scsi_request *scsi_req , struct skd_request_context *skreq ,
                                 struct page *page , u32 lba , u32 count )
{
  char *buf ;
  unsigned long len ;
  struct request *req ;
  void *tmp ;
  {
  tmp = lowmem_page_address((struct page const *)page);
  buf = (char *)tmp;
  len = 24UL;
  scsi_req->cdb[0] = 66U;
  scsi_req->cdb[8] = (unsigned char )len;
  put_unaligned_be16(22, (void *)buf);
  put_unaligned_be16(16, (void *)buf + 2U);
  put_unaligned_be64((u64 )lba, (void *)buf + 8U);
  put_unaligned_be32(count, (void *)buf + 16U);
  req = skreq->req;
  blk_add_request_payload(req, page, (unsigned int )len);
  return;
}
}
static void skd_request_fn_not_online(struct request_queue *q ) ;
static void skd_request_fn(struct request_queue *q )
{
  struct skd_device *skdev ;
  struct skd_fitmsg_context *skmsg ;
  struct fit_msg_hdr *fmh ;
  struct skd_request_context *skreq ;
  struct request *req ;
  struct skd_scsi_request *scsi_req ;
  struct page *page ;
  unsigned long io_flags ;
  int error ;
  u32 lba ;
  u32 count ;
  int data_dir ;
  u32 be_lba ;
  u32 be_count ;
  u64 be_dmaa ;
  u64 cmdctxt ;
  u32 timo_slot ;
  void *cmd_ptr ;
  int flush ;
  int fua ;
  int tmp ;
  sector_t tmp___0 ;
  struct _ddebug descriptor ;
  long tmp___1 ;
  struct _ddebug descriptor___0 ;
  long tmp___2 ;
  struct _ddebug descriptor___1 ;
  long tmp___3 ;
  long tmp___4 ;
  long tmp___5 ;
  struct _ddebug descriptor___2 ;
  long tmp___6 ;
  struct _ddebug descriptor___3 ;
  long tmp___7 ;
  long tmp___8 ;
  long tmp___9 ;
  __u32 tmp___10 ;
  __u32 tmp___11 ;
  __u64 tmp___12 ;
  long tmp___13 ;
  struct _ddebug descriptor___4 ;
  long tmp___14 ;
  __u32 tmp___15 ;
  struct _ddebug descriptor___5 ;
  long tmp___16 ;
  struct _ddebug descriptor___6 ;
  long tmp___17 ;
  {
  skdev = (struct skd_device *)q->queuedata;
  skmsg = (struct skd_fitmsg_context *)0;
  fmh = (struct fit_msg_hdr *)0;
  req = (struct request *)0;
  if ((unsigned int )skdev->state != 4U) {
    skd_request_fn_not_online(q);
    return;
  } else {
  }
  tmp = constant_test_bit(2L, (unsigned long const volatile *)(& (skdev->queue)->queue_flags));
  if (tmp != 0) {
    if (((unsigned long )skdev->skmsg_free_list == (unsigned long )((struct skd_fitmsg_context *)0) || (unsigned long )skdev->skreq_free_list == (unsigned long )((struct skd_request_context *)0)) || skdev->in_flight >= skdev->queue_low_water_mark) {
      return;
    } else {
    }
    queue_flag_clear(2U, skdev->queue);
  } else {
  }
  ldv_35510:
  fua = 0;
  flush = fua;
  req = blk_peek_request(q);
  if ((unsigned long )req == (unsigned long )((struct request *)0)) {
    goto ldv_35499;
  } else {
  }
  tmp___0 = blk_rq_pos((struct request const *)req);
  lba = (unsigned int )tmp___0;
  count = blk_rq_sectors((struct request const *)req);
  data_dir = (int )req->cmd_flags & 1;
  io_flags = (unsigned long )req->cmd_flags;
  if (((unsigned long long )io_flags & 4096ULL) != 0ULL) {
    flush = flush + 1;
  } else {
  }
  if (((unsigned long long )io_flags & 2048ULL) != 0ULL) {
    fua = fua + 1;
  } else {
  }
  descriptor.modname = "skd";
  descriptor.function = "skd_request_fn";
  descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/9607/dscv_tempdir/dscv/ri/43_2a/drivers/block/skd_main.o.c.prepared";
  descriptor.format = "%s:%s:%d new req=%p lba=%u(0x%x) count=%u(0x%x) dir=%d\n";
  descriptor.lineno = 691U;
  descriptor.flags = 0U;
  tmp___1 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp___1 != 0L) {
    __dynamic_pr_debug(& descriptor, "%s:%s:%d new req=%p lba=%u(0x%x) count=%u(0x%x) dir=%d\n",
                       (char *)(& skdev->name), "skd_request_fn", 691, req, lba, lba,
                       count, count, data_dir);
  } else {
  }
  if (skdev->in_flight >= skdev->cur_max_queue_depth) {
    descriptor___0.modname = "skd";
    descriptor___0.function = "skd_request_fn";
    descriptor___0.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/9607/dscv_tempdir/dscv/ri/43_2a/drivers/block/skd_main.o.c.prepared";
    descriptor___0.format = "%s:%s:%d qdepth %d, limit %d\n";
    descriptor___0.lineno = 699U;
    descriptor___0.flags = 0U;
    tmp___2 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
    if (tmp___2 != 0L) {
      __dynamic_pr_debug(& descriptor___0, "%s:%s:%d qdepth %d, limit %d\n", (char *)(& skdev->name),
                         "skd_request_fn", 699, skdev->in_flight, skdev->cur_max_queue_depth);
    } else {
    }
    goto ldv_35499;
  } else {
  }
  skreq = skdev->skreq_free_list;
  if ((unsigned long )skreq == (unsigned long )((struct skd_request_context *)0)) {
    descriptor___1.modname = "skd";
    descriptor___1.function = "skd_request_fn";
    descriptor___1.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/9607/dscv_tempdir/dscv/ri/43_2a/drivers/block/skd_main.o.c.prepared";
    descriptor___1.format = "%s:%s:%d Out of req=%p\n";
    descriptor___1.lineno = 707U;
    descriptor___1.flags = 0U;
    tmp___3 = ldv__builtin_expect((long )descriptor___1.flags & 1L, 0L);
    if (tmp___3 != 0L) {
      __dynamic_pr_debug(& descriptor___1, "%s:%s:%d Out of req=%p\n", (char *)(& skdev->name),
                         "skd_request_fn", 707, q);
    } else {
    }
    goto ldv_35499;
  } else {
  }
  tmp___4 = ldv__builtin_expect((unsigned int )skreq->state != 0U, 0L);
  if (tmp___4 != 0L) {
    printk("\vAssertion failed! %s,%s,%s,line=%d\n", (char *)"skreq->state == SKD_REQ_STATE_IDLE",
           (char *)"/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/9607/dscv_tempdir/dscv/ri/43_2a/drivers/block/skd_main.o.c.prepared",
           "skd_request_fn", 710);
  } else {
  }
  tmp___5 = ldv__builtin_expect(((int )skreq->id & 1024) != 0, 0L);
  if (tmp___5 != 0L) {
    printk("\vAssertion failed! %s,%s,%s,line=%d\n", (char *)"(skreq->id & SKD_ID_INCR) == 0",
           (char *)"/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/9607/dscv_tempdir/dscv/ri/43_2a/drivers/block/skd_main.o.c.prepared",
           "skd_request_fn", 711);
  } else {
  }
  if ((unsigned long )skmsg == (unsigned long )((struct skd_fitmsg_context *)0)) {
    if ((unsigned long )skdev->skmsg_free_list == (unsigned long )((struct skd_fitmsg_context *)0)) {
      descriptor___2.modname = "skd";
      descriptor___2.function = "skd_request_fn";
      descriptor___2.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/9607/dscv_tempdir/dscv/ri/43_2a/drivers/block/skd_main.o.c.prepared";
      descriptor___2.format = "%s:%s:%d Out of msg\n";
      descriptor___2.lineno = 717U;
      descriptor___2.flags = 0U;
      tmp___6 = ldv__builtin_expect((long )descriptor___2.flags & 1L, 0L);
      if (tmp___6 != 0L) {
        __dynamic_pr_debug(& descriptor___2, "%s:%s:%d Out of msg\n", (char *)(& skdev->name),
                           "skd_request_fn", 717);
      } else {
      }
      goto ldv_35499;
    } else {
    }
  } else {
  }
  skreq->flush_cmd = 0U;
  skreq->n_sg = 0U;
  skreq->sg_byte_count = 0U;
  skreq->discard_page = 0U;
  blk_start_request(req);
  skreq->req = req;
  skreq->fitmsg_id = 0U;
  if ((unsigned long )skmsg == (unsigned long )((struct skd_fitmsg_context *)0)) {
    skmsg = skdev->skmsg_free_list;
    if ((unsigned long )skmsg == (unsigned long )((struct skd_fitmsg_context *)0)) {
      descriptor___3.modname = "skd";
      descriptor___3.function = "skd_request_fn";
      descriptor___3.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/9607/dscv_tempdir/dscv/ri/43_2a/drivers/block/skd_main.o.c.prepared";
      descriptor___3.format = "%s:%s:%d Out of msg skdev=%p\n";
      descriptor___3.lineno = 745U;
      descriptor___3.flags = 0U;
      tmp___7 = ldv__builtin_expect((long )descriptor___3.flags & 1L, 0L);
      if (tmp___7 != 0L) {
        __dynamic_pr_debug(& descriptor___3, "%s:%s:%d Out of msg skdev=%p\n", (char *)(& skdev->name),
                           "skd_request_fn", 745, skdev);
      } else {
      }
      goto ldv_35499;
    } else {
    }
    tmp___8 = ldv__builtin_expect((unsigned int )skmsg->state != 0U, 0L);
    if (tmp___8 != 0L) {
      printk("\vAssertion failed! %s,%s,%s,line=%d\n", (char *)"skmsg->state == SKD_MSG_STATE_IDLE",
             (char *)"/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/9607/dscv_tempdir/dscv/ri/43_2a/drivers/block/skd_main.o.c.prepared",
             "skd_request_fn", 748);
    } else {
    }
    tmp___9 = ldv__builtin_expect((skmsg->id & 1024U) != 0U, 0L);
    if (tmp___9 != 0L) {
      printk("\vAssertion failed! %s,%s,%s,line=%d\n", (char *)"(skmsg->id & SKD_ID_INCR) == 0",
             (char *)"/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/9607/dscv_tempdir/dscv/ri/43_2a/drivers/block/skd_main.o.c.prepared",
             "skd_request_fn", 749);
    } else {
    }
    skdev->skmsg_free_list = skmsg->next;
    skmsg->state = 1;
    skmsg->id = skmsg->id + 1024U;
    fmh = (struct fit_msg_hdr *)skmsg->msg_buf;
    memset((void *)fmh, 0, 64UL);
    fmh->protocol_id = 3U;
    skmsg->length = 64U;
  } else {
  }
  skreq->fitmsg_id = skmsg->id;
  cmd_ptr = (void *)skmsg->msg_buf + (unsigned long )skmsg->length;
  memset(cmd_ptr, 0, 32UL);
  tmp___10 = __fswab32(lba);
  be_lba = tmp___10;
  tmp___11 = __fswab32(count);
  be_count = tmp___11;
  tmp___12 = __fswab64(skreq->sksg_dma_address);
  be_dmaa = tmp___12;
  cmdctxt = (u64 )((int )skreq->id + 1024);
  scsi_req = (struct skd_scsi_request *)cmd_ptr;
  scsi_req->hdr.tag = (uint16_t )cmdctxt;
  scsi_req->hdr.sg_list_dma_address = be_dmaa;
  if (data_dir == 0) {
    skreq->sg_data_dir = 2U;
  } else {
    skreq->sg_data_dir = 1U;
  }
  if (((unsigned long long )io_flags & 128ULL) != 0ULL) {
    page = alloc_pages(32800U, 0U);
    if ((unsigned long )page == (unsigned long )((struct page *)0)) {
      printk("\vrequest_fn:Page allocation failed.\n");
      skd_end_request(skdev, skreq, -12);
      goto ldv_35499;
    } else {
    }
    skreq->discard_page = 1U;
    req->ldv_32973.completion_data = (void *)page;
    skd_prep_discard_cdb(scsi_req, skreq, page, lba, count);
  } else
  if (flush == 1) {
    skd_prep_zerosize_flush_cdb(scsi_req, skreq);
    tmp___13 = ldv__builtin_expect((unsigned int )skreq->flush_cmd != 1U, 0L);
    if (tmp___13 != 0L) {
      printk("\vAssertion failed! %s,%s,%s,line=%d\n", (char *)"skreq->flush_cmd == 1",
             (char *)"/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/9607/dscv_tempdir/dscv/ri/43_2a/drivers/block/skd_main.o.c.prepared",
             "skd_request_fn", 804);
    } else {
    }
  } else {
    skd_prep_rw_cdb(scsi_req, data_dir, lba, count);
  }
  if (fua != 0) {
    scsi_req->cdb[1] = (unsigned int )scsi_req->cdb[1] | 2U;
  } else {
  }
  if ((unsigned long )req->bio == (unsigned long )((struct bio *)0)) {
    goto skip_sg;
  } else {
  }
  error = skd_preop_sg_list(skdev, skreq);
  if (error != 0) {
    descriptor___4.modname = "skd";
    descriptor___4.function = "skd_request_fn";
    descriptor___4.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/9607/dscv_tempdir/dscv/ri/43_2a/drivers/block/skd_main.o.c.prepared";
    descriptor___4.format = "%s:%s:%d error Out\n";
    descriptor___4.lineno = 829U;
    descriptor___4.flags = 0U;
    tmp___14 = ldv__builtin_expect((long )descriptor___4.flags & 1L, 0L);
    if (tmp___14 != 0L) {
      __dynamic_pr_debug(& descriptor___4, "%s:%s:%d error Out\n", (char *)(& skdev->name),
                         "skd_request_fn", 829);
    } else {
    }
    skd_end_request(skdev, skreq, error);
    goto ldv_35508;
  } else {
  }
  skip_sg:
  tmp___15 = __fswab32(skreq->sg_byte_count);
  scsi_req->hdr.sg_list_len_bytes = tmp___15;
  skdev->skreq_free_list = skreq->next;
  skreq->state = 2;
  skreq->id = (unsigned int )skreq->id + 1024U;
  skmsg->length = skmsg->length + 32U;
  fmh->num_protocol_cmds_coalesced = (uint8_t )((int )fmh->num_protocol_cmds_coalesced + 1);
  skreq->timeout_stamp = skdev->timeout_stamp;
  timo_slot = skreq->timeout_stamp & 3U;
  skdev->timeout_slot[timo_slot] = skdev->timeout_slot[timo_slot] + 1U;
  skdev->in_flight = skdev->in_flight + 1U;
  descriptor___5.modname = "skd";
  descriptor___5.function = "skd_request_fn";
  descriptor___5.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/9607/dscv_tempdir/dscv/ri/43_2a/drivers/block/skd_main.o.c.prepared";
  descriptor___5.format = "%s:%s:%d req=0x%x busy=%d\n";
  descriptor___5.lineno = 856U;
  descriptor___5.flags = 0U;
  tmp___16 = ldv__builtin_expect((long )descriptor___5.flags & 1L, 0L);
  if (tmp___16 != 0L) {
    __dynamic_pr_debug(& descriptor___5, "%s:%s:%d req=0x%x busy=%d\n", (char *)(& skdev->name),
                       "skd_request_fn", 856, (int )skreq->id, skdev->in_flight);
  } else {
  }
  if (skmsg->length > 511U || (int )fmh->num_protocol_cmds_coalesced >= skd_max_req_per_msg) {
    skd_send_fitmsg(skdev, skmsg);
    skmsg = (struct skd_fitmsg_context *)0;
    fmh = (struct fit_msg_hdr *)0;
  } else {
  }
  ldv_35508: ;
  goto ldv_35510;
  ldv_35499: ;
  if ((unsigned long )skmsg != (unsigned long )((struct skd_fitmsg_context *)0)) {
    if (skmsg->length > 64U) {
      descriptor___6.modname = "skd";
      descriptor___6.function = "skd_request_fn";
      descriptor___6.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/9607/dscv_tempdir/dscv/ri/43_2a/drivers/block/skd_main.o.c.prepared";
      descriptor___6.format = "%s:%s:%d sending msg=%p, len %d\n";
      descriptor___6.lineno = 880U;
      descriptor___6.flags = 0U;
      tmp___17 = ldv__builtin_expect((long )descriptor___6.flags & 1L, 0L);
      if (tmp___17 != 0L) {
        __dynamic_pr_debug(& descriptor___6, "%s:%s:%d sending msg=%p, len %d\n",
                           (char *)(& skdev->name), "skd_request_fn", 880, skmsg,
                           skmsg->length);
      } else {
      }
      skd_send_fitmsg(skdev, skmsg);
    } else {
      skmsg->state = 0;
      skmsg->id = skmsg->id + 1024U;
      skmsg->next = skdev->skmsg_free_list;
      skdev->skmsg_free_list = skmsg;
    }
    skmsg = (struct skd_fitmsg_context *)0;
    fmh = (struct fit_msg_hdr *)0;
  } else {
  }
  if ((unsigned long )req != (unsigned long )((struct request *)0)) {
    blk_stop_queue(skdev->queue);
  } else {
  }
  return;
}
}
static void skd_end_request(struct skd_device *skdev , struct skd_request_context *skreq ,
                            int error )
{
  struct request *req ;
  unsigned int io_flags ;
  struct _ddebug descriptor ;
  long tmp ;
  struct request *req___0 ;
  char *cmd ;
  u32 lba ;
  sector_t tmp___0 ;
  u32 count ;
  unsigned int tmp___1 ;
  char const *tmp___2 ;
  struct _ddebug descriptor___0 ;
  long tmp___3 ;
  long tmp___4 ;
  {
  req = skreq->req;
  io_flags = (unsigned int )req->cmd_flags;
  if (((unsigned long long )io_flags & 128ULL) != 0ULL && (unsigned int )skreq->discard_page == 1U) {
    descriptor.modname = "skd";
    descriptor.function = "skd_end_request";
    descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/9607/dscv_tempdir/dscv/ri/43_2a/drivers/block/skd_main.o.c.prepared";
    descriptor.format = "%s:%s:%d, free the page!";
    descriptor.lineno = 913U;
    descriptor.flags = 0U;
    tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    if (tmp != 0L) {
      __dynamic_pr_debug(& descriptor, "%s:%s:%d, free the page!", (char *)(& skdev->name),
                         "skd_end_request", 913);
    } else {
    }
    __free_pages((struct page *)req->ldv_32973.completion_data, 0U);
  } else {
  }
  tmp___4 = ldv__builtin_expect(error != 0, 0L);
  if (tmp___4 != 0L) {
    req___0 = skreq->req;
    cmd = ((int )req___0->cmd_flags & 1) == 0 ? (char *)"read" : (char *)"write";
    tmp___0 = blk_rq_pos((struct request const *)req___0);
    lba = (unsigned int )tmp___0;
    tmp___1 = blk_rq_sectors((struct request const *)req___0);
    count = tmp___1;
    tmp___2 = skd_name(skdev);
    printk("\v(%s): Error cmd=%s sect=%u count=%u id=0x%x\n", tmp___2, cmd, lba, count,
           (int )skreq->id);
  } else {
    descriptor___0.modname = "skd";
    descriptor___0.function = "skd_end_request";
    descriptor___0.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/9607/dscv_tempdir/dscv/ri/43_2a/drivers/block/skd_main.o.c.prepared";
    descriptor___0.format = "%s:%s:%d id=0x%x error=%d\n";
    descriptor___0.lineno = 927U;
    descriptor___0.flags = 0U;
    tmp___3 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
    if (tmp___3 != 0L) {
      __dynamic_pr_debug(& descriptor___0, "%s:%s:%d id=0x%x error=%d\n", (char *)(& skdev->name),
                         "skd_end_request", 927, (int )skreq->id, error);
    } else {
    }
  }
  __blk_end_request_all(skreq->req, error);
  return;
}
}
static int skd_preop_sg_list(struct skd_device *skdev , struct skd_request_context *skreq )
{
  struct request *req ;
  int writing ;
  int pci_dir ;
  struct scatterlist *sg ;
  int n_sg ;
  int i ;
  long tmp ;
  struct fit_sg_descriptor *sgd ;
  u32 cnt ;
  uint64_t dma_addr ;
  struct _ddebug descriptor ;
  long tmp___0 ;
  struct fit_sg_descriptor *sgd___0 ;
  struct _ddebug descriptor___0 ;
  long tmp___1 ;
  long tmp___2 ;
  {
  req = skreq->req;
  writing = (unsigned int )skreq->sg_data_dir == 1U;
  pci_dir = writing != 0 ? 1 : 2;
  sg = skreq->sg;
  skreq->sg_byte_count = 0U;
  n_sg = blk_rq_map_sg(skdev->queue, req, sg);
  if (n_sg <= 0) {
    return (-22);
  } else {
  }
  n_sg = pci_map_sg(skdev->pdev, sg, n_sg, pci_dir);
  if (n_sg <= 0) {
    return (-22);
  } else {
  }
  tmp = ldv__builtin_expect(skdev->sgs_per_request < n_sg, 0L);
  if (tmp != 0L) {
    printk("\vAssertion failed! %s,%s,%s,line=%d\n", (char *)"n_sg <= skdev->sgs_per_request",
           (char *)"/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/9607/dscv_tempdir/dscv/ri/43_2a/drivers/block/skd_main.o.c.prepared",
           "skd_preop_sg_list", 959);
  } else {
  }
  skreq->n_sg = (u32 )n_sg;
  i = 0;
  goto ldv_35541;
  ldv_35540:
  sgd = skreq->sksg_list + (unsigned long )i;
  cnt = (sg + (unsigned long )i)->dma_length;
  dma_addr = (sg + (unsigned long )i)->dma_address;
  sgd->control = 0U;
  sgd->byte_count = cnt;
  skreq->sg_byte_count = skreq->sg_byte_count + cnt;
  sgd->host_side_addr = dma_addr;
  sgd->dev_side_addr = 0ULL;
  i = i + 1;
  ldv_35541: ;
  if (i < n_sg) {
    goto ldv_35540;
  } else {
  }
  (skreq->sksg_list + ((unsigned long )n_sg + 0xffffffffffffffffUL))->next_desc_ptr = 0ULL;
  (skreq->sksg_list + ((unsigned long )n_sg + 0xffffffffffffffffUL))->control = 1038U;
  tmp___2 = ldv__builtin_expect(skdev->dbg_level > 1, 0L);
  if (tmp___2 != 0L) {
    descriptor.modname = "skd";
    descriptor.function = "skd_preop_sg_list";
    descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/9607/dscv_tempdir/dscv/ri/43_2a/drivers/block/skd_main.o.c.prepared";
    descriptor.format = "%s:%s:%d skreq=%x sksg_list=%p sksg_dma=%llx\n";
    descriptor.lineno = 981U;
    descriptor.flags = 0U;
    tmp___0 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    if (tmp___0 != 0L) {
      __dynamic_pr_debug(& descriptor, "%s:%s:%d skreq=%x sksg_list=%p sksg_dma=%llx\n",
                         (char *)(& skdev->name), "skd_preop_sg_list", 981, (int )skreq->id,
                         skreq->sksg_list, skreq->sksg_dma_address);
    } else {
    }
    i = 0;
    goto ldv_35547;
    ldv_35546:
    sgd___0 = skreq->sksg_list + (unsigned long )i;
    descriptor___0.modname = "skd";
    descriptor___0.function = "skd_preop_sg_list";
    descriptor___0.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/9607/dscv_tempdir/dscv/ri/43_2a/drivers/block/skd_main.o.c.prepared";
    descriptor___0.format = "%s:%s:%d   sg[%d] count=%u ctrl=0x%x addr=0x%llx next=0x%llx\n";
    descriptor___0.lineno = 988U;
    descriptor___0.flags = 0U;
    tmp___1 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
    if (tmp___1 != 0L) {
      __dynamic_pr_debug(& descriptor___0, "%s:%s:%d   sg[%d] count=%u ctrl=0x%x addr=0x%llx next=0x%llx\n",
                         (char *)(& skdev->name), "skd_preop_sg_list", 988, i, sgd___0->byte_count,
                         sgd___0->control, sgd___0->host_side_addr, sgd___0->next_desc_ptr);
    } else {
    }
    i = i + 1;
    ldv_35547: ;
    if (i < n_sg) {
      goto ldv_35546;
    } else {
    }
  } else {
  }
  return (0);
}
}
static void skd_postop_sg_list(struct skd_device *skdev , struct skd_request_context *skreq )
{
  int writing ;
  int pci_dir ;
  {
  writing = (unsigned int )skreq->sg_data_dir == 1U;
  pci_dir = writing != 0 ? 1 : 2;
  (skreq->sksg_list + (unsigned long )(skreq->n_sg - 1U))->next_desc_ptr = skreq->sksg_dma_address + (unsigned long long )((unsigned long )skreq->n_sg * 32UL);
  pci_unmap_sg(skdev->pdev, skreq->sg, (int )skreq->n_sg, pci_dir);
  return;
}
}
static void skd_request_fn_not_online(struct request_queue *q )
{
  struct skd_device *skdev ;
  int error ;
  long tmp ;
  {
  skdev = (struct skd_device *)q->queuedata;
  tmp = ldv__builtin_expect((unsigned int )skdev->state == 4U, 0L);
  if (tmp != 0L) {
    printk("\vAssertion failed! %s,%s,%s,line=%d\n", (char *)"skdev->state != SKD_DRVR_STATE_ONLINE",
           (char *)"/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/9607/dscv_tempdir/dscv/ri/43_2a/drivers/block/skd_main.o.c.prepared",
           "skd_request_fn_not_online", 1016);
  } else {
  }
  skd_log_skdev(skdev, "req_not_online");
  switch ((unsigned int )skdev->state) {
  case 5U: ;
  case 6U: ;
  case 3U: ;
  case 8U: ;
  case 17U: ;
  case 2U: ;
  case 16U: ;
  case 14U: ;
  case 7U: ;
  return;
  case 15U: ;
  case 10U: ;
  case 18U: ;
  case 11U: ;
  case 12U: ;
  default:
  error = -5;
  goto ldv_35576;
  }
  ldv_35576:
  skd_fail_all_pending(skdev);
  return;
}
}
static void skd_timer_tick_not_online(struct skd_device *skdev ) ;
static void skd_timer_tick(ulong arg )
{
  struct skd_device *skdev ;
  u32 timo_slot ;
  u32 overdue_timestamp ;
  unsigned long reqflags ;
  u32 state ;
  struct _ddebug descriptor ;
  long tmp ;
  char const *tmp___0 ;
  {
  skdev = (struct skd_device *)arg;
  if ((unsigned int )skdev->state == 11U) {
    return;
  } else {
  }
  ldv_spin_lock();
  state = skd_reg_read32(skdev, 1296U);
  state = state & 255U;
  if (skdev->drive_state != state) {
    skd_isr_fwstate(skdev);
  } else {
  }
  if ((unsigned int )skdev->state != 4U) {
    skd_timer_tick_not_online(skdev);
    goto timer_func_out;
  } else {
  }
  skdev->timeout_stamp = skdev->timeout_stamp + 1U;
  timo_slot = skdev->timeout_stamp & 3U;
  if (skdev->timeout_slot[timo_slot] == 0U) {
    goto timer_func_out;
  } else {
  }
  overdue_timestamp = skdev->timeout_stamp - 4U;
  descriptor.modname = "skd";
  descriptor.function = "skd_timer_tick";
  descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/9607/dscv_tempdir/dscv/ri/43_2a/drivers/block/skd_main.o.c.prepared";
  descriptor.format = "%s:%s:%d found %d timeouts, draining busy=%d\n";
  descriptor.lineno = 1105U;
  descriptor.flags = 0U;
  tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp != 0L) {
    __dynamic_pr_debug(& descriptor, "%s:%s:%d found %d timeouts, draining busy=%d\n",
                       (char *)(& skdev->name), "skd_timer_tick", 1105, skdev->timeout_slot[timo_slot],
                       skdev->in_flight);
  } else {
  }
  tmp___0 = skd_name(skdev);
  printk("\v(%s): Overdue IOs (%d), busy %d\n", tmp___0, skdev->timeout_slot[timo_slot],
         skdev->in_flight);
  skdev->timer_countdown = 6U;
  skdev->state = 7;
  skdev->timo_slot = timo_slot;
  blk_stop_queue(skdev->queue);
  timer_func_out:
  ldv_mod_timer_20(& skdev->timer, (unsigned long )jiffies + 250UL);
  spin_unlock_irqrestore(& skdev->lock, reqflags);
  return;
}
}
static void skd_timer_tick_not_online(struct skd_device *skdev )
{
  struct _ddebug descriptor ;
  long tmp ;
  struct _ddebug descriptor___0 ;
  long tmp___0 ;
  struct _ddebug descriptor___1 ;
  long tmp___1 ;
  char const *tmp___2 ;
  struct _ddebug descriptor___2 ;
  long tmp___3 ;
  struct _ddebug descriptor___3 ;
  long tmp___4 ;
  char const *tmp___5 ;
  char const *tmp___6 ;
  {
  switch ((unsigned int )skdev->state) {
  case 1U: ;
  case 0U: ;
  goto ldv_35595;
  case 15U:
  descriptor.modname = "skd";
  descriptor.function = "skd_timer_tick_not_online";
  descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/9607/dscv_tempdir/dscv/ri/43_2a/drivers/block/skd_main.o.c.prepared";
  descriptor.format = "%s:%s:%d drive busy sanitize[%x], driver[%x]\n";
  descriptor.lineno = 1130U;
  descriptor.flags = 0U;
  tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp != 0L) {
    __dynamic_pr_debug(& descriptor, "%s:%s:%d drive busy sanitize[%x], driver[%x]\n",
                       (char *)(& skdev->name), "skd_timer_tick_not_online", 1130,
                       skdev->drive_state, (unsigned int )skdev->state);
  } else {
  }
  if (skdev->timer_countdown != 0U) {
    skdev->timer_countdown = skdev->timer_countdown - 1U;
    return;
  } else {
  }
  skd_recover_requests(skdev, 0);
  goto ldv_35595;
  case 2U: ;
  case 16U: ;
  case 14U:
  descriptor___0.modname = "skd";
  descriptor___0.function = "skd_timer_tick_not_online";
  descriptor___0.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/9607/dscv_tempdir/dscv/ri/43_2a/drivers/block/skd_main.o.c.prepared";
  descriptor___0.format = "%s:%s:%d busy[%x], countdown=%d\n";
  descriptor___0.lineno = 1146U;
  descriptor___0.flags = 0U;
  tmp___0 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
  if (tmp___0 != 0L) {
    __dynamic_pr_debug(& descriptor___0, "%s:%s:%d busy[%x], countdown=%d\n", (char *)(& skdev->name),
                       "skd_timer_tick_not_online", 1146, (unsigned int )skdev->state,
                       skdev->timer_countdown);
  } else {
  }
  if (skdev->timer_countdown != 0U) {
    skdev->timer_countdown = skdev->timer_countdown - 1U;
    return;
  } else {
  }
  descriptor___1.modname = "skd";
  descriptor___1.function = "skd_timer_tick_not_online";
  descriptor___1.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/9607/dscv_tempdir/dscv/ri/43_2a/drivers/block/skd_main.o.c.prepared";
  descriptor___1.format = "%s:%s:%d busy[%x], timedout=%d, restarting device.";
  descriptor___1.lineno = 1153U;
  descriptor___1.flags = 0U;
  tmp___1 = ldv__builtin_expect((long )descriptor___1.flags & 1L, 0L);
  if (tmp___1 != 0L) {
    __dynamic_pr_debug(& descriptor___1, "%s:%s:%d busy[%x], timedout=%d, restarting device.",
                       (char *)(& skdev->name), "skd_timer_tick_not_online", 1153,
                       (unsigned int )skdev->state, skdev->timer_countdown);
  } else {
  }
  skd_restart_device(skdev);
  goto ldv_35595;
  case 17U: ;
  case 3U: ;
  if (skdev->timer_countdown != 0U) {
    skdev->timer_countdown = skdev->timer_countdown - 1U;
    return;
  } else {
  }
  skdev->state = 11;
  tmp___2 = skd_name(skdev);
  printk("\v(%s): DriveFault Connect Timeout (%x)\n", tmp___2, skdev->drive_state);
  blk_start_queue(skdev->queue);
  skdev->gendisk_on = -1;
  __wake_up(& skdev->waitq, 1U, 1, (void *)0);
  goto ldv_35595;
  case 4U: ;
  goto ldv_35595;
  case 5U: ;
  case 6U: ;
  goto ldv_35595;
  case 7U:
  descriptor___2.modname = "skd";
  descriptor___2.function = "skd_timer_tick_not_online";
  descriptor___2.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/9607/dscv_tempdir/dscv/ri/43_2a/drivers/block/skd_main.o.c.prepared";
  descriptor___2.format = "%s:%s:%d draining busy [%d] tick[%d] qdb[%d] tmls[%d]\n";
  descriptor___2.lineno = 1192U;
  descriptor___2.flags = 0U;
  tmp___3 = ldv__builtin_expect((long )descriptor___2.flags & 1L, 0L);
  if (tmp___3 != 0L) {
    __dynamic_pr_debug(& descriptor___2, "%s:%s:%d draining busy [%d] tick[%d] qdb[%d] tmls[%d]\n",
                       (char *)(& skdev->name), "skd_timer_tick_not_online", 1192,
                       skdev->timo_slot, skdev->timer_countdown, skdev->in_flight,
                       skdev->timeout_slot[skdev->timo_slot]);
  } else {
  }
  if (skdev->timeout_slot[skdev->timo_slot] == 0U) {
    descriptor___3.modname = "skd";
    descriptor___3.function = "skd_timer_tick_not_online";
    descriptor___3.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/9607/dscv_tempdir/dscv/ri/43_2a/drivers/block/skd_main.o.c.prepared";
    descriptor___3.format = "%s:%s:%d Slot drained, starting queue.\n";
    descriptor___3.lineno = 1196U;
    descriptor___3.flags = 0U;
    tmp___4 = ldv__builtin_expect((long )descriptor___3.flags & 1L, 0L);
    if (tmp___4 != 0L) {
      __dynamic_pr_debug(& descriptor___3, "%s:%s:%d Slot drained, starting queue.\n",
                         (char *)(& skdev->name), "skd_timer_tick_not_online", 1196);
    } else {
    }
    skdev->state = 4;
    blk_start_queue(skdev->queue);
    return;
  } else {
  }
  if (skdev->timer_countdown != 0U) {
    skdev->timer_countdown = skdev->timer_countdown - 1U;
    return;
  } else {
  }
  skd_restart_device(skdev);
  goto ldv_35595;
  case 8U: ;
  if (skdev->timer_countdown != 0U) {
    skdev->timer_countdown = skdev->timer_countdown - 1U;
    return;
  } else {
  }
  skdev->state = 11;
  tmp___5 = skd_name(skdev);
  printk("\v(%s): DriveFault Reconnect Timeout (%x)\n", tmp___5, skdev->drive_state);
  if ((skdev->drive_state == 8U || skdev->drive_state == 5U) || skdev->drive_state == 255U) {
    skd_recover_requests(skdev, 0);
  } else {
    tmp___6 = skd_name(skdev);
    printk("\v(%s): Disable BusMaster (%x)\n", tmp___6, skdev->drive_state);
    pci_disable_device(skdev->pdev);
    skd_disable_interrupts(skdev);
    skd_recover_requests(skdev, 0);
  }
  blk_start_queue(skdev->queue);
  skdev->gendisk_on = -1;
  __wake_up(& skdev->waitq, 1U, 1, (void *)0);
  goto ldv_35595;
  case 9U: ;
  case 10U: ;
  case 18U: ;
  case 11U: ;
  case 12U: ;
  default: ;
  goto ldv_35595;
  }
  ldv_35595: ;
  return;
}
}
static int skd_start_timer(struct skd_device *skdev )
{
  int rc ;
  {
  reg_timer_2(& skdev->timer);
  reg_timer_1(& skdev->timer, & skd_timer_tick, (unsigned long )skdev);
  rc = ldv_mod_timer_21(& skdev->timer, (unsigned long )jiffies + 250UL);
  if (rc != 0) {
    printk("\v%s: failed to start timer %d\n", "skd_start_timer", rc);
  } else {
  }
  return (rc);
}
}
static void skd_kill_timer(struct skd_device *skdev )
{
  {
  ldv_del_timer_sync_22(& skdev->timer);
  return;
}
}
static int skd_ioctl_sg_io(struct skd_device *skdev , fmode_t mode , void *argp ) ;
static int skd_sg_io_get_and_check_args(struct skd_device *skdev , struct skd_sg_io *sksgio ) ;
static int skd_sg_io_obtain_skspcl(struct skd_device *skdev , struct skd_sg_io *sksgio ) ;
static int skd_sg_io_prep_buffering(struct skd_device *skdev , struct skd_sg_io *sksgio ) ;
static int skd_sg_io_copy_buffer(struct skd_device *skdev , struct skd_sg_io *sksgio ,
                                 int dxfer_dir ) ;
static int skd_sg_io_send_fitmsg(struct skd_device *skdev , struct skd_sg_io *sksgio ) ;
static int skd_sg_io_await(struct skd_device *skdev , struct skd_sg_io *sksgio ) ;
static int skd_sg_io_release_skspcl(struct skd_device *skdev , struct skd_sg_io *sksgio ) ;
static int skd_sg_io_put_status(struct skd_device *skdev , struct skd_sg_io *sksgio ) ;
static void skd_complete_special(struct skd_device *skdev , struct fit_completion_entry_v1 volatile *skcomp ,
                                 struct fit_comp_error_info volatile *skerr , struct skd_special_context *skspcl ) ;
static int skd_bdev_ioctl(struct block_device *bdev , fmode_t mode , uint cmd_in ,
                          ulong arg )
{
  int rc ;
  struct gendisk *disk ;
  struct skd_device *skdev ;
  void *p ;
  struct _ddebug descriptor ;
  struct task_struct *tmp ;
  long tmp___0 ;
  bool tmp___1 ;
  int tmp___2 ;
  struct _ddebug descriptor___0 ;
  long tmp___3 ;
  {
  rc = 0;
  disk = bdev->bd_disk;
  skdev = (struct skd_device *)disk->private_data;
  p = (void *)arg;
  descriptor.modname = "skd";
  descriptor.function = "skd_bdev_ioctl";
  descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/9607/dscv_tempdir/dscv/ri/43_2a/drivers/block/skd_main.o.c.prepared";
  descriptor.format = "%s:%s:%d %s: CMD[%s] ioctl  mode 0x%x, cmd 0x%x arg %0lx\n";
  descriptor.lineno = 1321U;
  descriptor.flags = 0U;
  tmp___0 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp___0 != 0L) {
    tmp = get_current();
    __dynamic_pr_debug(& descriptor, "%s:%s:%d %s: CMD[%s] ioctl  mode 0x%x, cmd 0x%x arg %0lx\n",
                       (char *)(& skdev->name), "skd_bdev_ioctl", 1321, (char *)(& disk->disk_name),
                       (char *)(& tmp->comm), mode, cmd_in, arg);
  } else {
  }
  tmp___1 = capable(21);
  if (tmp___1) {
    tmp___2 = 0;
  } else {
    tmp___2 = 1;
  }
  if (tmp___2) {
    return (-1);
  } else {
  }
  switch (cmd_in) {
  case 8705U: ;
  case 8706U: ;
  case 8834U:
  rc = scsi_cmd_ioctl(disk->queue, disk, mode, cmd_in, p);
  goto ldv_35676;
  case 8837U:
  rc = skd_ioctl_sg_io(skdev, mode, p);
  goto ldv_35676;
  default:
  rc = -25;
  goto ldv_35676;
  }
  ldv_35676:
  descriptor___0.modname = "skd";
  descriptor___0.function = "skd_bdev_ioctl";
  descriptor___0.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/9607/dscv_tempdir/dscv/ri/43_2a/drivers/block/skd_main.o.c.prepared";
  descriptor___0.format = "%s:%s:%d %s:  completion rc %d\n";
  descriptor___0.lineno = 1342U;
  descriptor___0.flags = 0U;
  tmp___3 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
  if (tmp___3 != 0L) {
    __dynamic_pr_debug(& descriptor___0, "%s:%s:%d %s:  completion rc %d\n", (char *)(& skdev->name),
                       "skd_bdev_ioctl", 1342, (char *)(& disk->disk_name), rc);
  } else {
  }
  return (rc);
}
}
static int skd_ioctl_sg_io(struct skd_device *skdev , fmode_t mode , void *argp )
{
  int rc ;
  struct skd_sg_io sksgio ;
  struct _ddebug descriptor ;
  long tmp ;
  {
  memset((void *)(& sksgio), 0, 160UL);
  sksgio.mode = mode;
  sksgio.argp = argp;
  sksgio.iov = & sksgio.no_iov_iov;
  switch ((unsigned int )skdev->state) {
  case 4U: ;
  case 16U: ;
  goto ldv_35689;
  default:
  descriptor.modname = "skd";
  descriptor.function = "skd_ioctl_sg_io";
  descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/9607/dscv_tempdir/dscv/ri/43_2a/drivers/block/skd_main.o.c.prepared";
  descriptor.format = "%s:%s:%d drive not online\n";
  descriptor.lineno = 1364U;
  descriptor.flags = 0U;
  tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp != 0L) {
    __dynamic_pr_debug(& descriptor, "%s:%s:%d drive not online\n", (char *)(& skdev->name),
                       "skd_ioctl_sg_io", 1364);
  } else {
  }
  rc = -6;
  goto out;
  }
  ldv_35689:
  rc = skd_sg_io_get_and_check_args(skdev, & sksgio);
  if (rc != 0) {
    goto out;
  } else {
  }
  rc = skd_sg_io_obtain_skspcl(skdev, & sksgio);
  if (rc != 0) {
    goto out;
  } else {
  }
  rc = skd_sg_io_prep_buffering(skdev, & sksgio);
  if (rc != 0) {
    goto out;
  } else {
  }
  rc = skd_sg_io_copy_buffer(skdev, & sksgio, -2);
  if (rc != 0) {
    goto out;
  } else {
  }
  rc = skd_sg_io_send_fitmsg(skdev, & sksgio);
  if (rc != 0) {
    goto out;
  } else {
  }
  rc = skd_sg_io_await(skdev, & sksgio);
  if (rc != 0) {
    goto out;
  } else {
  }
  rc = skd_sg_io_copy_buffer(skdev, & sksgio, -3);
  if (rc != 0) {
    goto out;
  } else {
  }
  rc = skd_sg_io_put_status(skdev, & sksgio);
  if (rc != 0) {
    goto out;
  } else {
  }
  rc = 0;
  out:
  skd_sg_io_release_skspcl(skdev, & sksgio);
  if ((unsigned long )sksgio.iov != (unsigned long )((struct sg_iovec *)0) && (unsigned long )sksgio.iov != (unsigned long )(& sksgio.no_iov_iov)) {
    kfree((void const *)sksgio.iov);
  } else {
  }
  return (rc);
}
}
static int skd_sg_io_get_and_check_args(struct skd_device *skdev , struct skd_sg_io *sksgio )
{
  struct sg_io_hdr *sgp ;
  int i ;
  int acc ;
  struct _ddebug descriptor ;
  long tmp ;
  struct thread_info *tmp___0 ;
  bool tmp___1 ;
  int tmp___2 ;
  long tmp___3 ;
  struct _ddebug descriptor___0 ;
  long tmp___4 ;
  int tmp___5 ;
  struct _ddebug descriptor___1 ;
  long tmp___6 ;
  struct _ddebug descriptor___2 ;
  long tmp___7 ;
  struct _ddebug descriptor___3 ;
  long tmp___8 ;
  struct _ddebug descriptor___4 ;
  long tmp___9 ;
  struct _ddebug descriptor___5 ;
  long tmp___10 ;
  struct _ddebug descriptor___6 ;
  long tmp___11 ;
  unsigned long tmp___12 ;
  struct _ddebug descriptor___7 ;
  long tmp___13 ;
  struct thread_info *tmp___14 ;
  bool tmp___15 ;
  int tmp___16 ;
  long tmp___17 ;
  struct sg_iovec *iov ;
  uint nbytes ;
  size_t iov_data_len ;
  void *tmp___18 ;
  struct _ddebug descriptor___8 ;
  long tmp___19 ;
  struct _ddebug descriptor___9 ;
  long tmp___20 ;
  unsigned long tmp___21 ;
  unsigned long tmp___22 ;
  struct sg_iovec *iov___0 ;
  struct _ddebug descriptor___10 ;
  long tmp___23 ;
  struct thread_info *tmp___24 ;
  bool tmp___25 ;
  int tmp___26 ;
  long tmp___27 ;
  {
  sgp = & sksgio->sg;
  tmp___0 = current_thread_info();
  tmp___1 = __chk_range_not_ok((unsigned long )sksgio->argp, 88UL, tmp___0->addr_limit.seg);
  if (tmp___1) {
    tmp___2 = 0;
  } else {
    tmp___2 = 1;
  }
  tmp___3 = ldv__builtin_expect((long )tmp___2, 1L);
  if (tmp___3 == 0L) {
    descriptor.modname = "skd";
    descriptor.function = "skd_sg_io_get_and_check_args";
    descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/9607/dscv_tempdir/dscv/ri/43_2a/drivers/block/skd_main.o.c.prepared";
    descriptor.format = "%s:%s:%d access sg failed %p\n";
    descriptor.lineno = 1419U;
    descriptor.flags = 0U;
    tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    if (tmp != 0L) {
      __dynamic_pr_debug(& descriptor, "%s:%s:%d access sg failed %p\n", (char *)(& skdev->name),
                         "skd_sg_io_get_and_check_args", 1419, sksgio->argp);
    } else {
    }
    return (-14);
  } else {
  }
  tmp___5 = __copy_from_user((void *)sgp, (void const *)sksgio->argp, 88U);
  if (tmp___5 != 0) {
    descriptor___0.modname = "skd";
    descriptor___0.function = "skd_sg_io_get_and_check_args";
    descriptor___0.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/9607/dscv_tempdir/dscv/ri/43_2a/drivers/block/skd_main.o.c.prepared";
    descriptor___0.format = "%s:%s:%d copy_from_user sg failed %p\n";
    descriptor___0.lineno = 1425U;
    descriptor___0.flags = 0U;
    tmp___4 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
    if (tmp___4 != 0L) {
      __dynamic_pr_debug(& descriptor___0, "%s:%s:%d copy_from_user sg failed %p\n",
                         (char *)(& skdev->name), "skd_sg_io_get_and_check_args",
                         1425, sksgio->argp);
    } else {
    }
    return (-14);
  } else {
  }
  if (sgp->interface_id != 83) {
    descriptor___1.modname = "skd";
    descriptor___1.function = "skd_sg_io_get_and_check_args";
    descriptor___1.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/9607/dscv_tempdir/dscv/ri/43_2a/drivers/block/skd_main.o.c.prepared";
    descriptor___1.format = "%s:%s:%d interface_id invalid 0x%x\n";
    descriptor___1.lineno = 1431U;
    descriptor___1.flags = 0U;
    tmp___6 = ldv__builtin_expect((long )descriptor___1.flags & 1L, 0L);
    if (tmp___6 != 0L) {
      __dynamic_pr_debug(& descriptor___1, "%s:%s:%d interface_id invalid 0x%x\n",
                         (char *)(& skdev->name), "skd_sg_io_get_and_check_args",
                         1431, sgp->interface_id);
    } else {
    }
    return (-22);
  } else {
  }
  if ((unsigned int )sgp->cmd_len > 16U) {
    descriptor___2.modname = "skd";
    descriptor___2.function = "skd_sg_io_get_and_check_args";
    descriptor___2.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/9607/dscv_tempdir/dscv/ri/43_2a/drivers/block/skd_main.o.c.prepared";
    descriptor___2.format = "%s:%s:%d cmd_len invalid %d\n";
    descriptor___2.lineno = 1437U;
    descriptor___2.flags = 0U;
    tmp___7 = ldv__builtin_expect((long )descriptor___2.flags & 1L, 0L);
    if (tmp___7 != 0L) {
      __dynamic_pr_debug(& descriptor___2, "%s:%s:%d cmd_len invalid %d\n", (char *)(& skdev->name),
                         "skd_sg_io_get_and_check_args", 1437, (int )sgp->cmd_len);
    } else {
    }
    return (-22);
  } else {
  }
  if ((unsigned int )sgp->iovec_count > 256U) {
    descriptor___3.modname = "skd";
    descriptor___3.function = "skd_sg_io_get_and_check_args";
    descriptor___3.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/9607/dscv_tempdir/dscv/ri/43_2a/drivers/block/skd_main.o.c.prepared";
    descriptor___3.format = "%s:%s:%d iovec_count invalid %d\n";
    descriptor___3.lineno = 1443U;
    descriptor___3.flags = 0U;
    tmp___8 = ldv__builtin_expect((long )descriptor___3.flags & 1L, 0L);
    if (tmp___8 != 0L) {
      __dynamic_pr_debug(& descriptor___3, "%s:%s:%d iovec_count invalid %d\n", (char *)(& skdev->name),
                         "skd_sg_io_get_and_check_args", 1443, (int )sgp->iovec_count);
    } else {
    }
    return (-22);
  } else {
  }
  if (sgp->dxfer_len > 1048576U) {
    descriptor___4.modname = "skd";
    descriptor___4.function = "skd_sg_io_get_and_check_args";
    descriptor___4.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/9607/dscv_tempdir/dscv/ri/43_2a/drivers/block/skd_main.o.c.prepared";
    descriptor___4.format = "%s:%s:%d dxfer_len invalid %d\n";
    descriptor___4.lineno = 1449U;
    descriptor___4.flags = 0U;
    tmp___9 = ldv__builtin_expect((long )descriptor___4.flags & 1L, 0L);
    if (tmp___9 != 0L) {
      __dynamic_pr_debug(& descriptor___4, "%s:%s:%d dxfer_len invalid %d\n", (char *)(& skdev->name),
                         "skd_sg_io_get_and_check_args", 1449, sgp->dxfer_len);
    } else {
    }
    return (-22);
  } else {
  }
  switch (sgp->dxfer_direction) {
  case -1:
  acc = -1;
  goto ldv_35710;
  case -2:
  acc = 0;
  goto ldv_35710;
  case -3: ;
  case -4:
  acc = 1;
  goto ldv_35710;
  default:
  descriptor___5.modname = "skd";
  descriptor___5.function = "skd_sg_io_get_and_check_args";
  descriptor___5.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/9607/dscv_tempdir/dscv/ri/43_2a/drivers/block/skd_main.o.c.prepared";
  descriptor___5.format = "%s:%s:%d dxfer_dir invalid %d\n";
  descriptor___5.lineno = 1469U;
  descriptor___5.flags = 0U;
  tmp___10 = ldv__builtin_expect((long )descriptor___5.flags & 1L, 0L);
  if (tmp___10 != 0L) {
    __dynamic_pr_debug(& descriptor___5, "%s:%s:%d dxfer_dir invalid %d\n", (char *)(& skdev->name),
                       "skd_sg_io_get_and_check_args", 1469, sgp->dxfer_direction);
  } else {
  }
  return (-22);
  }
  ldv_35710:
  tmp___12 = copy_from_user((void *)(& sksgio->cdb), (void const *)sgp->cmdp, (unsigned long )sgp->cmd_len);
  if (tmp___12 != 0UL) {
    descriptor___6.modname = "skd";
    descriptor___6.function = "skd_sg_io_get_and_check_args";
    descriptor___6.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/9607/dscv_tempdir/dscv/ri/43_2a/drivers/block/skd_main.o.c.prepared";
    descriptor___6.format = "%s:%s:%d copy_from_user cmdp failed %p\n";
    descriptor___6.lineno = 1475U;
    descriptor___6.flags = 0U;
    tmp___11 = ldv__builtin_expect((long )descriptor___6.flags & 1L, 0L);
    if (tmp___11 != 0L) {
      __dynamic_pr_debug(& descriptor___6, "%s:%s:%d copy_from_user cmdp failed %p\n",
                         (char *)(& skdev->name), "skd_sg_io_get_and_check_args",
                         1475, sgp->cmdp);
    } else {
    }
    return (-14);
  } else {
  }
  if ((unsigned int )sgp->mx_sb_len != 0U) {
    tmp___14 = current_thread_info();
    tmp___15 = __chk_range_not_ok((unsigned long )sgp->sbp, (unsigned long )sgp->mx_sb_len,
                                  tmp___14->addr_limit.seg);
    if (tmp___15) {
      tmp___16 = 0;
    } else {
      tmp___16 = 1;
    }
    tmp___17 = ldv__builtin_expect((long )tmp___16, 1L);
    if (tmp___17 == 0L) {
      descriptor___7.modname = "skd";
      descriptor___7.function = "skd_sg_io_get_and_check_args";
      descriptor___7.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/9607/dscv_tempdir/dscv/ri/43_2a/drivers/block/skd_main.o.c.prepared";
      descriptor___7.format = "%s:%s:%d access sbp failed %p\n";
      descriptor___7.lineno = 1482U;
      descriptor___7.flags = 0U;
      tmp___13 = ldv__builtin_expect((long )descriptor___7.flags & 1L, 0L);
      if (tmp___13 != 0L) {
        __dynamic_pr_debug(& descriptor___7, "%s:%s:%d access sbp failed %p\n", (char *)(& skdev->name),
                           "skd_sg_io_get_and_check_args", 1482, sgp->sbp);
      } else {
      }
      return (-14);
    } else {
    }
  } else {
  }
  if ((unsigned int )sgp->iovec_count == 0U) {
    (sksgio->iov)->iov_base = sgp->dxferp;
    (sksgio->iov)->iov_len = (size_t )sgp->dxfer_len;
    sksgio->iovcnt = 1U;
    sksgio->dxfer_len = sgp->dxfer_len;
  } else {
    nbytes = (uint )sgp->iovec_count * 16U;
    tmp___18 = kmalloc((size_t )nbytes, 208U);
    iov = (struct sg_iovec *)tmp___18;
    if ((unsigned long )iov == (unsigned long )((struct sg_iovec *)0)) {
      descriptor___8.modname = "skd";
      descriptor___8.function = "skd_sg_io_get_and_check_args";
      descriptor___8.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/9607/dscv_tempdir/dscv/ri/43_2a/drivers/block/skd_main.o.c.prepared";
      descriptor___8.format = "%s:%s:%d alloc iovec failed %d\n";
      descriptor___8.lineno = 1501U;
      descriptor___8.flags = 0U;
      tmp___19 = ldv__builtin_expect((long )descriptor___8.flags & 1L, 0L);
      if (tmp___19 != 0L) {
        __dynamic_pr_debug(& descriptor___8, "%s:%s:%d alloc iovec failed %d\n", (char *)(& skdev->name),
                           "skd_sg_io_get_and_check_args", 1501, (int )sgp->iovec_count);
      } else {
      }
      return (-12);
    } else {
    }
    sksgio->iov = iov;
    sksgio->iovcnt = (u32 )sgp->iovec_count;
    tmp___21 = copy_from_user((void *)iov, (void const *)sgp->dxferp, (unsigned long )nbytes);
    if (tmp___21 != 0UL) {
      descriptor___9.modname = "skd";
      descriptor___9.function = "skd_sg_io_get_and_check_args";
      descriptor___9.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/9607/dscv_tempdir/dscv/ri/43_2a/drivers/block/skd_main.o.c.prepared";
      descriptor___9.format = "%s:%s:%d copy_from_user iovec failed %p\n";
      descriptor___9.lineno = 1509U;
      descriptor___9.flags = 0U;
      tmp___20 = ldv__builtin_expect((long )descriptor___9.flags & 1L, 0L);
      if (tmp___20 != 0L) {
        __dynamic_pr_debug(& descriptor___9, "%s:%s:%d copy_from_user iovec failed %p\n",
                           (char *)(& skdev->name), "skd_sg_io_get_and_check_args",
                           1509, sgp->dxferp);
      } else {
      }
      return (-14);
    } else {
    }
    iov_data_len = 0UL;
    i = 0;
    goto ldv_35725;
    ldv_35724: ;
    if ((iov + (unsigned long )i)->iov_len + iov_data_len < iov_data_len) {
      return (-22);
    } else {
    }
    iov_data_len = (iov + (unsigned long )i)->iov_len + iov_data_len;
    i = i + 1;
    ldv_35725: ;
    if ((int )sgp->iovec_count > i) {
      goto ldv_35724;
    } else {
    }
    if ((size_t )sgp->dxfer_len < iov_data_len) {
      tmp___22 = iov_shorten((struct iovec *)iov, (unsigned long )sgp->iovec_count,
                             (size_t )sgp->dxfer_len);
      sksgio->iovcnt = (u32 )tmp___22;
      sksgio->dxfer_len = sgp->dxfer_len;
    } else {
      sksgio->dxfer_len = (u32 )iov_data_len;
    }
  }
  if (sgp->dxfer_direction != -1) {
    iov___0 = sksgio->iov;
    i = 0;
    goto ldv_35731;
    ldv_35730:
    tmp___24 = current_thread_info();
    tmp___25 = __chk_range_not_ok((unsigned long )iov___0->iov_base, iov___0->iov_len,
                                  tmp___24->addr_limit.seg);
    if (tmp___25) {
      tmp___26 = 0;
    } else {
      tmp___26 = 1;
    }
    tmp___27 = ldv__builtin_expect((long )tmp___26, 1L);
    if (tmp___27 == 0L) {
      descriptor___10.modname = "skd";
      descriptor___10.function = "skd_sg_io_get_and_check_args";
      descriptor___10.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/9607/dscv_tempdir/dscv/ri/43_2a/drivers/block/skd_main.o.c.prepared";
      descriptor___10.format = "%s:%s:%d access data failed %p/%d\n";
      descriptor___10.lineno = 1539U;
      descriptor___10.flags = 0U;
      tmp___23 = ldv__builtin_expect((long )descriptor___10.flags & 1L, 0L);
      if (tmp___23 != 0L) {
        __dynamic_pr_debug(& descriptor___10, "%s:%s:%d access data failed %p/%d\n",
                           (char *)(& skdev->name), "skd_sg_io_get_and_check_args",
                           1539, iov___0->iov_base, (int )iov___0->iov_len);
      } else {
      }
      return (-14);
    } else {
    }
    i = i + 1;
    iov___0 = iov___0 + 1;
    ldv_35731: ;
    if ((u32 )i < sksgio->iovcnt) {
      goto ldv_35730;
    } else {
    }
  } else {
  }
  return (0);
}
}
static int skd_sg_io_obtain_skspcl(struct skd_device *skdev , struct skd_sg_io *sksgio )
{
  struct skd_special_context *skspcl ;
  int rc ;
  ulong flags ;
  struct _ddebug descriptor ;
  long tmp ;
  long __ret ;
  unsigned long tmp___0 ;
  wait_queue_t __wait ;
  long __ret___0 ;
  unsigned long tmp___1 ;
  long __int ;
  long tmp___2 ;
  bool __cond ;
  bool __cond___0 ;
  struct _ddebug descriptor___0 ;
  long tmp___3 ;
  {
  skspcl = (struct skd_special_context *)0;
  ldv_35757:
  ldv_spin_lock();
  skspcl = skdev->skspcl_free_list;
  if ((unsigned long )skspcl != (unsigned long )((struct skd_special_context *)0)) {
    skdev->skspcl_free_list = (struct skd_special_context *)skspcl->req.next;
    skspcl->req.id = (unsigned int )skspcl->req.id + 1024U;
    skspcl->req.state = 1;
    skspcl->orphaned = 0U;
    skspcl->req.n_sg = 0U;
  } else {
  }
  spin_unlock_irqrestore(& skdev->lock, flags);
  if ((unsigned long )skspcl != (unsigned long )((struct skd_special_context *)0)) {
    rc = 0;
    goto ldv_35740;
  } else {
  }
  descriptor.modname = "skd";
  descriptor.function = "skd_sg_io_obtain_skspcl";
  descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/9607/dscv_tempdir/dscv/ri/43_2a/drivers/block/skd_main.o.c.prepared";
  descriptor.format = "%s:%s:%d blocking\n";
  descriptor.lineno = 1575U;
  descriptor.flags = 0U;
  tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp != 0L) {
    __dynamic_pr_debug(& descriptor, "%s:%s:%d blocking\n", (char *)(& skdev->name),
                       "skd_sg_io_obtain_skspcl", 1575);
  } else {
  }
  tmp___0 = msecs_to_jiffies(sksgio->sg.timeout);
  __ret = (long )tmp___0;
  __cond___0 = (unsigned long )skdev->skspcl_free_list != (unsigned long )((struct skd_special_context *)0);
  if ((int )__cond___0 && __ret == 0L) {
    __ret = 1L;
  } else {
  }
  if (((int )__cond___0 || __ret == 0L) == 0) {
    tmp___1 = msecs_to_jiffies(sksgio->sg.timeout);
    __ret___0 = (long )tmp___1;
    INIT_LIST_HEAD(& __wait.task_list);
    __wait.flags = 0U;
    ldv_35753:
    tmp___2 = prepare_to_wait_event(& skdev->waitq, & __wait, 1);
    __int = tmp___2;
    __cond = (unsigned long )skdev->skspcl_free_list != (unsigned long )((struct skd_special_context *)0);
    if ((int )__cond && __ret___0 == 0L) {
      __ret___0 = 1L;
    } else {
    }
    if (((int )__cond || __ret___0 == 0L) != 0) {
      goto ldv_35752;
    } else {
    }
    if (__int != 0L) {
      __ret___0 = __int;
      goto ldv_35752;
    } else {
    }
    __ret___0 = schedule_timeout(__ret___0);
    goto ldv_35753;
    ldv_35752:
    finish_wait(& skdev->waitq, & __wait);
    __ret = __ret___0;
  } else {
  }
  rc = (int )__ret;
  descriptor___0.modname = "skd";
  descriptor___0.function = "skd_sg_io_obtain_skspcl";
  descriptor___0.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/9607/dscv_tempdir/dscv/ri/43_2a/drivers/block/skd_main.o.c.prepared";
  descriptor___0.format = "%s:%s:%d unblocking, rc=%d\n";
  descriptor___0.lineno = 1583U;
  descriptor___0.flags = 0U;
  tmp___3 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
  if (tmp___3 != 0L) {
    __dynamic_pr_debug(& descriptor___0, "%s:%s:%d unblocking, rc=%d\n", (char *)(& skdev->name),
                       "skd_sg_io_obtain_skspcl", 1583, rc);
  } else {
  }
  if (rc <= 0) {
    if (rc == 0) {
      rc = -110;
    } else {
      rc = -4;
    }
    goto ldv_35740;
  } else {
  }
  goto ldv_35757;
  ldv_35740:
  sksgio->skspcl = skspcl;
  return (rc);
}
}
static int skd_skreq_prep_buffering(struct skd_device *skdev , struct skd_request_context *skreq ,
                                    u32 dxfer_len )
{
  u32 resid ;
  u32 nbytes ;
  u32 ix ;
  struct scatterlist *sg ;
  struct fit_sg_descriptor *sksg ;
  struct page *page ;
  u32 ix___0 ;
  struct fit_sg_descriptor *sksg___0 ;
  u32 i ;
  struct _ddebug descriptor ;
  long tmp ;
  struct fit_sg_descriptor *sgd ;
  struct _ddebug descriptor___0 ;
  long tmp___0 ;
  long tmp___1 ;
  {
  resid = dxfer_len;
  resid = (- resid & 3U) + resid;
  skreq->sg_byte_count = resid;
  skreq->n_sg = 0U;
  goto ldv_35770;
  ldv_35769:
  nbytes = 4096U;
  ix = skreq->n_sg;
  sg = skreq->sg + (unsigned long )ix;
  sksg = skreq->sksg_list + (unsigned long )ix;
  if (nbytes > resid) {
    nbytes = resid;
  } else {
  }
  page = alloc_pages(208U, 0U);
  if ((unsigned long )page == (unsigned long )((struct page *)0)) {
    return (-12);
  } else {
  }
  sg_set_page(sg, page, nbytes, 0U);
  sksg->control = 0U;
  sksg->byte_count = nbytes;
  sksg->host_side_addr = sg_phys(sg);
  sksg->dev_side_addr = 0ULL;
  sksg->next_desc_ptr = skreq->sksg_dma_address + (unsigned long long )((unsigned long )(ix + 1U) * 32UL);
  skreq->n_sg = skreq->n_sg + 1U;
  resid = resid - nbytes;
  ldv_35770: ;
  if (resid != 0U) {
    goto ldv_35769;
  } else {
  }
  if (skreq->n_sg != 0U) {
    ix___0 = skreq->n_sg - 1U;
    sksg___0 = skreq->sksg_list + (unsigned long )ix___0;
    sksg___0->control = 1038U;
    sksg___0->next_desc_ptr = 0ULL;
  } else {
  }
  tmp___1 = ldv__builtin_expect(skdev->dbg_level > 1, 0L);
  if (tmp___1 != 0L) {
    descriptor.modname = "skd";
    descriptor.function = "skd_skreq_prep_buffering";
    descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/9607/dscv_tempdir/dscv/ri/43_2a/drivers/block/skd_main.o.c.prepared";
    descriptor.format = "%s:%s:%d skreq=%x sksg_list=%p sksg_dma=%llx\n";
    descriptor.lineno = 1662U;
    descriptor.flags = 0U;
    tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    if (tmp != 0L) {
      __dynamic_pr_debug(& descriptor, "%s:%s:%d skreq=%x sksg_list=%p sksg_dma=%llx\n",
                         (char *)(& skdev->name), "skd_skreq_prep_buffering", 1662,
                         (int )skreq->id, skreq->sksg_list, skreq->sksg_dma_address);
    } else {
    }
    i = 0U;
    goto ldv_35780;
    ldv_35779:
    sgd = skreq->sksg_list + (unsigned long )i;
    descriptor___0.modname = "skd";
    descriptor___0.function = "skd_skreq_prep_buffering";
    descriptor___0.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/9607/dscv_tempdir/dscv/ri/43_2a/drivers/block/skd_main.o.c.prepared";
    descriptor___0.format = "%s:%s:%d   sg[%d] count=%u ctrl=0x%x addr=0x%llx next=0x%llx\n";
    descriptor___0.lineno = 1670U;
    descriptor___0.flags = 0U;
    tmp___0 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
    if (tmp___0 != 0L) {
      __dynamic_pr_debug(& descriptor___0, "%s:%s:%d   sg[%d] count=%u ctrl=0x%x addr=0x%llx next=0x%llx\n",
                         (char *)(& skdev->name), "skd_skreq_prep_buffering", 1670,
                         i, sgd->byte_count, sgd->control, sgd->host_side_addr, sgd->next_desc_ptr);
    } else {
    }
    i = i + 1U;
    ldv_35780: ;
    if (skreq->n_sg > i) {
      goto ldv_35779;
    } else {
    }
  } else {
  }
  return (0);
}
}
static int skd_sg_io_prep_buffering(struct skd_device *skdev , struct skd_sg_io *sksgio )
{
  struct skd_special_context *skspcl ;
  struct skd_request_context *skreq ;
  u32 dxfer_len ;
  int rc ;
  {
  skspcl = sksgio->skspcl;
  skreq = & skspcl->req;
  dxfer_len = sksgio->dxfer_len;
  rc = skd_skreq_prep_buffering(skdev, skreq, dxfer_len);
  return (rc);
}
}
static int skd_sg_io_copy_buffer(struct skd_device *skdev , struct skd_sg_io *sksgio ,
                                 int dxfer_dir )
{
  struct skd_special_context *skspcl ;
  u32 iov_ix ;
  struct sg_iovec curiov ;
  u32 sksg_ix ;
  u8 *bufp ;
  u32 buf_len ;
  u32 resid ;
  int rc ;
  u32 nbytes ;
  u32 tmp ;
  struct page *page ;
  u32 tmp___0 ;
  void *tmp___1 ;
  u32 __min1 ;
  u32 __min2 ;
  u32 __min1___0 ;
  u32 __min2___0 ;
  u32 __min1___1 ;
  u32 __min2___1 ;
  {
  skspcl = sksgio->skspcl;
  iov_ix = 0U;
  sksg_ix = 0U;
  bufp = (u8 *)0U;
  buf_len = 0U;
  resid = sksgio->dxfer_len;
  curiov.iov_len = 0UL;
  curiov.iov_base = (void *)0;
  if (sksgio->sg.dxfer_direction != dxfer_dir) {
    if (dxfer_dir != -2 || sksgio->sg.dxfer_direction != -4) {
      return (0);
    } else {
    }
  } else {
  }
  goto ldv_35804;
  ldv_35815:
  nbytes = 4096U;
  if (curiov.iov_len == 0UL) {
    tmp = iov_ix;
    iov_ix = iov_ix + 1U;
    curiov = *(sksgio->iov + (unsigned long )tmp);
    goto ldv_35804;
  } else {
  }
  if (buf_len == 0U) {
    tmp___0 = sksg_ix;
    sksg_ix = sksg_ix + 1U;
    page = sg_page(skspcl->req.sg + (unsigned long )tmp___0);
    tmp___1 = lowmem_page_address((struct page const *)page);
    bufp = (u8 *)tmp___1;
    buf_len = 4096U;
  } else {
  }
  __min1 = nbytes;
  __min2 = resid;
  nbytes = __min1 < __min2 ? __min1 : __min2;
  __min1___0 = nbytes;
  __min2___0 = (u32 )curiov.iov_len;
  nbytes = __min1___0 < __min2___0 ? __min1___0 : __min2___0;
  __min1___1 = nbytes;
  __min2___1 = buf_len;
  nbytes = __min1___1 < __min2___1 ? __min1___1 : __min2___1;
  if (dxfer_dir == -2) {
    rc = __copy_from_user((void *)bufp, (void const *)curiov.iov_base, nbytes);
  } else {
    rc = __copy_to_user(curiov.iov_base, (void const *)bufp, nbytes);
  }
  if (rc != 0) {
    return (-14);
  } else {
  }
  resid = resid - nbytes;
  curiov.iov_len = curiov.iov_len - (size_t )nbytes;
  curiov.iov_base = curiov.iov_base + (unsigned long )nbytes;
  buf_len = buf_len - nbytes;
  ldv_35804: ;
  if (resid != 0U) {
    goto ldv_35815;
  } else {
  }
  return (0);
}
}
static int skd_sg_io_send_fitmsg(struct skd_device *skdev , struct skd_sg_io *sksgio )
{
  struct skd_special_context *skspcl ;
  struct fit_msg_hdr *fmh ;
  struct skd_scsi_request *scsi_req ;
  __u64 tmp ;
  __u32 tmp___0 ;
  size_t __len ;
  void *__ret ;
  {
  skspcl = sksgio->skspcl;
  fmh = (struct fit_msg_hdr *)skspcl->msg_buf;
  scsi_req = (struct skd_scsi_request *)fmh + 1U;
  memset((void *)skspcl->msg_buf, 0, 128UL);
  fmh->protocol_id = 3U;
  fmh->num_protocol_cmds_coalesced = 1U;
  if (sksgio->sg.dxfer_direction != -1) {
    tmp = __fswab64(skspcl->req.sksg_dma_address);
    scsi_req->hdr.sg_list_dma_address = tmp;
  } else {
  }
  scsi_req->hdr.tag = skspcl->req.id;
  tmp___0 = __fswab32(skspcl->req.sg_byte_count);
  scsi_req->hdr.sg_list_len_bytes = tmp___0;
  __len = 16UL;
  if (__len > 63UL) {
    __ret = memcpy((void *)(& scsi_req->cdb), (void const *)(& sksgio->cdb), __len);
  } else {
    __ret = memcpy((void *)(& scsi_req->cdb), (void const *)(& sksgio->cdb),
                             __len);
  }
  skspcl->req.state = 2;
  skd_send_special_fitmsg(skdev, skspcl);
  return (0);
}
}
static int skd_sg_io_await(struct skd_device *skdev , struct skd_sg_io *sksgio )
{
  unsigned long flags ;
  int rc ;
  long __ret ;
  unsigned long tmp ;
  wait_queue_t __wait ;
  long __ret___0 ;
  unsigned long tmp___0 ;
  long __int ;
  long tmp___1 ;
  bool __cond ;
  bool __cond___0 ;
  struct _ddebug descriptor ;
  long tmp___2 ;
  struct _ddebug descriptor___0 ;
  long tmp___3 ;
  struct _ddebug descriptor___1 ;
  long tmp___4 ;
  {
  tmp = msecs_to_jiffies(sksgio->sg.timeout);
  __ret = (long )tmp;
  __cond___0 = (unsigned int )(sksgio->skspcl)->req.state != 2U;
  if ((int )__cond___0 && __ret == 0L) {
    __ret = 1L;
  } else {
  }
  if (((int )__cond___0 || __ret == 0L) == 0) {
    tmp___0 = msecs_to_jiffies(sksgio->sg.timeout);
    __ret___0 = (long )tmp___0;
    INIT_LIST_HEAD(& __wait.task_list);
    __wait.flags = 0U;
    ldv_35843:
    tmp___1 = prepare_to_wait_event(& skdev->waitq, & __wait, 1);
    __int = tmp___1;
    __cond = (unsigned int )(sksgio->skspcl)->req.state != 2U;
    if ((int )__cond && __ret___0 == 0L) {
      __ret___0 = 1L;
    } else {
    }
    if (((int )__cond || __ret___0 == 0L) != 0) {
      goto ldv_35842;
    } else {
    }
    if (__int != 0L) {
      __ret___0 = __int;
      goto ldv_35842;
    } else {
    }
    __ret___0 = schedule_timeout(__ret___0);
    goto ldv_35843;
    ldv_35842:
    finish_wait(& skdev->waitq, & __wait);
    __ret = __ret___0;
  } else {
  }
  rc = (int )__ret;
  ldv_spin_lock();
  if ((unsigned int )(sksgio->skspcl)->req.state == 5U) {
    descriptor.modname = "skd";
    descriptor.function = "skd_sg_io_await";
    descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/9607/dscv_tempdir/dscv/ri/43_2a/drivers/block/skd_main.o.c.prepared";
    descriptor.format = "%s:%s:%d skspcl %p aborted\n";
    descriptor.lineno = 1793U;
    descriptor.flags = 0U;
    tmp___2 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    if (tmp___2 != 0L) {
      __dynamic_pr_debug(& descriptor, "%s:%s:%d skspcl %p aborted\n", (char *)(& skdev->name),
                         "skd_sg_io_await", 1793, sksgio->skspcl);
    } else {
    }
    (sksgio->skspcl)->req.completion.status = 2U;
    memset((void *)(& (sksgio->skspcl)->req.err_info), 0, 32UL);
    (sksgio->skspcl)->req.err_info.type = 112U;
    (sksgio->skspcl)->req.err_info.key = 11U;
    (sksgio->skspcl)->req.err_info.code = 68U;
    (sksgio->skspcl)->req.err_info.qual = 0U;
    rc = 0;
  } else
  if ((unsigned int )(sksgio->skspcl)->req.state != 2U) {
    rc = 0;
  } else {
    (sksgio->skspcl)->orphaned = 1U;
    sksgio->skspcl = (struct skd_special_context *)0;
    if (rc == 0) {
      descriptor___0.modname = "skd";
      descriptor___0.function = "skd_sg_io_await";
      descriptor___0.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/9607/dscv_tempdir/dscv/ri/43_2a/drivers/block/skd_main.o.c.prepared";
      descriptor___0.format = "%s:%s:%d timed out %p (%u ms)\n";
      descriptor___0.lineno = 1820U;
      descriptor___0.flags = 0U;
      tmp___3 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
      if (tmp___3 != 0L) {
        __dynamic_pr_debug(& descriptor___0, "%s:%s:%d timed out %p (%u ms)\n", (char *)(& skdev->name),
                           "skd_sg_io_await", 1820, sksgio, sksgio->sg.timeout);
      } else {
      }
      rc = -110;
    } else {
      descriptor___1.modname = "skd";
      descriptor___1.function = "skd_sg_io_await";
      descriptor___1.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/9607/dscv_tempdir/dscv/ri/43_2a/drivers/block/skd_main.o.c.prepared";
      descriptor___1.format = "%s:%s:%d cntlc %p\n";
      descriptor___1.lineno = 1824U;
      descriptor___1.flags = 0U;
      tmp___4 = ldv__builtin_expect((long )descriptor___1.flags & 1L, 0L);
      if (tmp___4 != 0L) {
        __dynamic_pr_debug(& descriptor___1, "%s:%s:%d cntlc %p\n", (char *)(& skdev->name),
                           "skd_sg_io_await", 1824, sksgio);
      } else {
      }
      rc = -4;
    }
  }
  spin_unlock_irqrestore(& skdev->lock, flags);
  return (rc);
}
}
static int skd_sg_io_put_status(struct skd_device *skdev , struct skd_sg_io *sksgio )
{
  struct sg_io_hdr *sgp ;
  struct skd_special_context *skspcl ;
  int resid ;
  u32 nb ;
  __u32 tmp ;
  struct _ddebug descriptor ;
  long tmp___0 ;
  struct fit_comp_error_info *ei ;
  u32 nbytes ;
  u32 __min1 ;
  u32 __min2 ;
  struct _ddebug descriptor___0 ;
  long tmp___1 ;
  int tmp___2 ;
  struct _ddebug descriptor___1 ;
  long tmp___3 ;
  int tmp___4 ;
  {
  sgp = & sksgio->sg;
  skspcl = sksgio->skspcl;
  resid = 0;
  tmp = __fswab32(skspcl->req.completion.num_returned_bytes);
  nb = tmp;
  sgp->status = skspcl->req.completion.status;
  resid = (int )(sksgio->dxfer_len - nb);
  sgp->masked_status = (unsigned int )sgp->status & 254U;
  sgp->msg_status = 0U;
  sgp->host_status = 0U;
  sgp->driver_status = 0U;
  sgp->resid = resid;
  if (((unsigned int )sgp->masked_status != 0U || (unsigned int )sgp->host_status != 0U) || (unsigned int )sgp->driver_status != 0U) {
    sgp->info = sgp->info | 1U;
  } else {
  }
  descriptor.modname = "skd";
  descriptor.function = "skd_sg_io_put_status";
  descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/9607/dscv_tempdir/dscv/ri/43_2a/drivers/block/skd_main.o.c.prepared";
  descriptor.format = "%s:%s:%d status %x masked %x resid 0x%x\n";
  descriptor.lineno = 1856U;
  descriptor.flags = 0U;
  tmp___0 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp___0 != 0L) {
    __dynamic_pr_debug(& descriptor, "%s:%s:%d status %x masked %x resid 0x%x\n",
                       (char *)(& skdev->name), "skd_sg_io_put_status", 1856, (int )sgp->status,
                       (int )sgp->masked_status, sgp->resid);
  } else {
  }
  if ((unsigned int )sgp->masked_status == 2U) {
    if ((unsigned int )sgp->mx_sb_len != 0U) {
      ei = & skspcl->req.err_info;
      nbytes = 32U;
      __min1 = nbytes;
      __min2 = (u32 )sgp->mx_sb_len;
      nbytes = __min1 < __min2 ? __min1 : __min2;
      sgp->sb_len_wr = (unsigned char )nbytes;
      tmp___2 = __copy_to_user(sgp->sbp, (void const *)ei, nbytes);
      if (tmp___2 != 0) {
        descriptor___0.modname = "skd";
        descriptor___0.function = "skd_sg_io_put_status";
        descriptor___0.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/9607/dscv_tempdir/dscv/ri/43_2a/drivers/block/skd_main.o.c.prepared";
        descriptor___0.format = "%s:%s:%d copy_to_user sense failed %p\n";
        descriptor___0.lineno = 1870U;
        descriptor___0.flags = 0U;
        tmp___1 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
        if (tmp___1 != 0L) {
          __dynamic_pr_debug(& descriptor___0, "%s:%s:%d copy_to_user sense failed %p\n",
                             (char *)(& skdev->name), "skd_sg_io_put_status", 1870,
                             sgp->sbp);
        } else {
        }
        return (-14);
      } else {
      }
    } else {
    }
  } else {
  }
  tmp___4 = __copy_to_user(sksgio->argp, (void const *)sgp, 88U);
  if (tmp___4 != 0) {
    descriptor___1.modname = "skd";
    descriptor___1.function = "skd_sg_io_put_status";
    descriptor___1.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/9607/dscv_tempdir/dscv/ri/43_2a/drivers/block/skd_main.o.c.prepared";
    descriptor___1.format = "%s:%s:%d copy_to_user sg failed %p\n";
    descriptor___1.lineno = 1878U;
    descriptor___1.flags = 0U;
    tmp___3 = ldv__builtin_expect((long )descriptor___1.flags & 1L, 0L);
    if (tmp___3 != 0L) {
      __dynamic_pr_debug(& descriptor___1, "%s:%s:%d copy_to_user sg failed %p\n",
                         (char *)(& skdev->name), "skd_sg_io_put_status", 1878, sksgio->argp);
    } else {
    }
    return (-14);
  } else {
  }
  return (0);
}
}
static int skd_sg_io_release_skspcl(struct skd_device *skdev , struct skd_sg_io *sksgio )
{
  struct skd_special_context *skspcl ;
  ulong flags ;
  {
  skspcl = sksgio->skspcl;
  if ((unsigned long )skspcl != (unsigned long )((struct skd_special_context *)0)) {
    sksgio->skspcl = (struct skd_special_context *)0;
    ldv_spin_lock();
    skd_release_special(skdev, skspcl);
    spin_unlock_irqrestore(& skdev->lock, flags);
  } else {
  }
  return (0);
}
}
static int skd_format_internal_skspcl(struct skd_device *skdev )
{
  struct skd_special_context *skspcl ;
  struct fit_sg_descriptor *sgd ;
  struct fit_msg_hdr *fmh ;
  uint64_t dma_address ;
  struct skd_scsi_request *scsi ;
  __u64 tmp ;
  {
  skspcl = & skdev->internal_skspcl;
  sgd = skspcl->req.sksg_list;
  fmh = (struct fit_msg_hdr *)skspcl->msg_buf;
  fmh->protocol_id = 3U;
  fmh->num_protocol_cmds_coalesced = 1U;
  scsi = (struct skd_scsi_request *)skspcl->msg_buf + 64U;
  memset((void *)scsi, 0, 32UL);
  dma_address = skspcl->req.sksg_dma_address;
  tmp = __fswab64(dma_address);
  scsi->hdr.sg_list_dma_address = tmp;
  sgd->control = 1038U;
  sgd->byte_count = 0U;
  sgd->host_side_addr = skspcl->db_dma_address;
  sgd->dev_side_addr = 0ULL;
  sgd->next_desc_ptr = 0ULL;
  return (1);
}
}
static void skd_send_internal_skspcl(struct skd_device *skdev , struct skd_special_context *skspcl ,
                                     u8 opcode )
{
  struct fit_sg_descriptor *sgd ;
  struct skd_scsi_request *scsi ;
  unsigned char *buf ;
  int i ;
  long tmp ;
  __u32 tmp___0 ;
  __u32 tmp___1 ;
  __u32 tmp___2 ;
  __u32 tmp___3 ;
  {
  sgd = skspcl->req.sksg_list;
  buf = (unsigned char *)skspcl->data_buf;
  if ((unsigned int )skspcl->req.state != 0U) {
    return;
  } else {
  }
  tmp = ldv__builtin_expect(((int )skspcl->req.id & 1024) != 0, 0L);
  if (tmp != 0L) {
    printk("\vAssertion failed! %s,%s,%s,line=%d\n", (char *)"(skspcl->req.id & SKD_ID_INCR) == 0",
           (char *)"/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/9607/dscv_tempdir/dscv/ri/43_2a/drivers/block/skd_main.o.c.prepared",
           "skd_send_internal_skspcl", 1952);
  } else {
  }
  skspcl->req.state = 2;
  skspcl->req.id = (unsigned int )skspcl->req.id + 1024U;
  scsi = (struct skd_scsi_request *)skspcl->msg_buf + 64U;
  scsi->hdr.tag = skspcl->req.id;
  memset((void *)(& scsi->cdb), 0, 16UL);
  switch ((int )opcode) {
  case 0:
  scsi->cdb[0] = 0U;
  sgd->byte_count = 0U;
  scsi->hdr.sg_list_len_bytes = 0U;
  goto ldv_35892;
  case 37:
  scsi->cdb[0] = 37U;
  sgd->byte_count = 8U;
  tmp___0 = __fswab32(sgd->byte_count);
  scsi->hdr.sg_list_len_bytes = tmp___0;
  goto ldv_35892;
  case 18:
  scsi->cdb[0] = 18U;
  scsi->cdb[1] = 1U;
  scsi->cdb[2] = 128U;
  scsi->cdb[4] = 16U;
  sgd->byte_count = 16U;
  tmp___1 = __fswab32(sgd->byte_count);
  scsi->hdr.sg_list_len_bytes = tmp___1;
  goto ldv_35892;
  case 53:
  scsi->cdb[0] = 53U;
  sgd->byte_count = 0U;
  scsi->hdr.sg_list_len_bytes = 0U;
  goto ldv_35892;
  case 59:
  scsi->cdb[0] = 59U;
  scsi->cdb[1] = 2U;
  scsi->cdb[7] = 2U;
  scsi->cdb[8] = 0U;
  sgd->byte_count = 512U;
  tmp___2 = __fswab32(sgd->byte_count);
  scsi->hdr.sg_list_len_bytes = tmp___2;
  i = 0;
  goto ldv_35898;
  ldv_35897:
  *(buf + (unsigned long )i) = (unsigned char )i;
  i = i + 1;
  ldv_35898: ;
  if ((uint32_t )i < sgd->byte_count) {
    goto ldv_35897;
  } else {
  }
  goto ldv_35892;
  case 60:
  scsi->cdb[0] = 60U;
  scsi->cdb[1] = 2U;
  scsi->cdb[7] = 2U;
  scsi->cdb[8] = 0U;
  sgd->byte_count = 512U;
  tmp___3 = __fswab32(sgd->byte_count);
  scsi->hdr.sg_list_len_bytes = tmp___3;
  memset(skspcl->data_buf, 0, (size_t )sgd->byte_count);
  goto ldv_35892;
  default: ;
  return;
  }
  ldv_35892:
  skd_send_special_fitmsg(skdev, skspcl);
  return;
}
}
static void skd_refresh_device_data(struct skd_device *skdev )
{
  struct skd_special_context *skspcl ;
  {
  skspcl = & skdev->internal_skspcl;
  skd_send_internal_skspcl(skdev, skspcl, 0);
  return;
}
}
static int skd_chk_read_buf(struct skd_device *skdev , struct skd_special_context *skspcl )
{
  unsigned char *buf ;
  int i ;
  {
  buf = (unsigned char *)skspcl->data_buf;
  i = 0;
  goto ldv_35913;
  ldv_35912: ;
  if ((int )*(buf + (unsigned long )i) != (i & 255)) {
    return (1);
  } else {
  }
  i = i + 1;
  ldv_35913: ;
  if ((unsigned int )i <= 511U) {
    goto ldv_35912;
  } else {
  }
  return (0);
}
}
static void skd_log_check_status(struct skd_device *skdev , u8 status , u8 key , u8 code ,
                                 u8 qual , u8 fruc )
{
  char const *tmp ;
  {
  if ((((unsigned int )status == 2U && (unsigned int )key == 2U) && (unsigned int )code == 4U) && (unsigned int )qual == 6U) {
    tmp = skd_name(skdev);
    printk("\v(%s): *** LOST_WRITE_DATA OLD_ERROR *** key/asc/ascq/fruc %02x/%02x/%02x/%02x\n",
           tmp, (int )key, (int )code, (int )qual, (int )fruc);
  } else {
  }
  return;
}
}
static void skd_complete_internal(struct skd_device *skdev , struct fit_completion_entry_v1 volatile *skcomp ,
                                  struct fit_comp_error_info volatile *skerr , struct skd_special_context *skspcl )
{
  u8 *buf ;
  u8 status ;
  int i ;
  struct skd_scsi_request *scsi ;
  long tmp ;
  struct _ddebug descriptor ;
  long tmp___0 ;
  struct _ddebug descriptor___0 ;
  long tmp___1 ;
  struct _ddebug descriptor___1 ;
  long tmp___2 ;
  struct _ddebug descriptor___2 ;
  long tmp___3 ;
  struct _ddebug descriptor___3 ;
  long tmp___4 ;
  char const *tmp___5 ;
  char const *tmp___6 ;
  int tmp___7 ;
  struct _ddebug descriptor___4 ;
  long tmp___8 ;
  struct _ddebug descriptor___5 ;
  long tmp___9 ;
  struct _ddebug descriptor___6 ;
  long tmp___10 ;
  struct _ddebug descriptor___7 ;
  long tmp___11 ;
  struct _ddebug descriptor___8 ;
  long tmp___12 ;
  struct _ddebug descriptor___9 ;
  long tmp___13 ;
  int tmp___14 ;
  {
  buf = (u8 *)skspcl->data_buf;
  scsi = (struct skd_scsi_request *)skspcl->msg_buf + 64U;
  tmp = ldv__builtin_expect((unsigned long )(& skdev->internal_skspcl) != (unsigned long )skspcl,
                         0L);
  if (tmp != 0L) {
    printk("\vAssertion failed! %s,%s,%s,line=%d\n", (char *)"skspcl == &skdev->internal_skspcl",
           (char *)"/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/9607/dscv_tempdir/dscv/ri/43_2a/drivers/block/skd_main.o.c.prepared",
           "skd_complete_internal", 2064);
  } else {
  }
  descriptor.modname = "skd";
  descriptor.function = "skd_complete_internal";
  descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/9607/dscv_tempdir/dscv/ri/43_2a/drivers/block/skd_main.o.c.prepared";
  descriptor.format = "%s:%s:%d complete internal %x\n";
  descriptor.lineno = 2067U;
  descriptor.flags = 0U;
  tmp___0 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp___0 != 0L) {
    __dynamic_pr_debug(& descriptor, "%s:%s:%d complete internal %x\n", (char *)(& skdev->name),
                       "skd_complete_internal", 2067, (int )scsi->cdb[0]);
  } else {
  }
  skspcl->req.completion = *skcomp;
  skspcl->req.state = 0;
  skspcl->req.id = (unsigned int )skspcl->req.id + 1024U;
  status = skspcl->req.completion.status;
  skd_log_check_status(skdev, (int )status, (int )skerr->key, (int )skerr->code, (int )skerr->qual,
                       (int )skerr->fruc);
  switch ((int )scsi->cdb[0]) {
  case 0: ;
  if ((unsigned int )status == 0U) {
    skd_send_internal_skspcl(skdev, skspcl, 59);
  } else
  if ((unsigned int )status == 2U && (unsigned int )*((unsigned char *)skerr + 2UL) == 3U) {
    skd_send_internal_skspcl(skdev, skspcl, 59);
  } else {
    if ((unsigned int )skdev->state == 10U) {
      descriptor___0.modname = "skd";
      descriptor___0.function = "skd_complete_internal";
      descriptor___0.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/9607/dscv_tempdir/dscv/ri/43_2a/drivers/block/skd_main.o.c.prepared";
      descriptor___0.format = "%s:%s:%d TUR failed, don\'t send anymore state 0x%x\n";
      descriptor___0.lineno = 2089U;
      descriptor___0.flags = 0U;
      tmp___1 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
      if (tmp___1 != 0L) {
        __dynamic_pr_debug(& descriptor___0, "%s:%s:%d TUR failed, don\'t send anymore state 0x%x\n",
                           (char *)(& skdev->name), "skd_complete_internal", 2089,
                           (unsigned int )skdev->state);
      } else {
      }
      return;
    } else {
    }
    descriptor___1.modname = "skd";
    descriptor___1.function = "skd_complete_internal";
    descriptor___1.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/9607/dscv_tempdir/dscv/ri/43_2a/drivers/block/skd_main.o.c.prepared";
    descriptor___1.format = "%s:%s:%d **** TUR failed, retry skerr\n";
    descriptor___1.lineno = 2093U;
    descriptor___1.flags = 0U;
    tmp___2 = ldv__builtin_expect((long )descriptor___1.flags & 1L, 0L);
    if (tmp___2 != 0L) {
      __dynamic_pr_debug(& descriptor___1, "%s:%s:%d **** TUR failed, retry skerr\n",
                         (char *)(& skdev->name), "skd_complete_internal", 2093);
    } else {
    }
    skd_send_internal_skspcl(skdev, skspcl, 0);
  }
  goto ldv_35938;
  case 59: ;
  if ((unsigned int )status == 0U) {
    skd_send_internal_skspcl(skdev, skspcl, 60);
  } else {
    if ((unsigned int )skdev->state == 10U) {
      descriptor___2.modname = "skd";
      descriptor___2.function = "skd_complete_internal";
      descriptor___2.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/9607/dscv_tempdir/dscv/ri/43_2a/drivers/block/skd_main.o.c.prepared";
      descriptor___2.format = "%s:%s:%d write buffer failed, don\'t send anymore state 0x%x\n";
      descriptor___2.lineno = 2105U;
      descriptor___2.flags = 0U;
      tmp___3 = ldv__builtin_expect((long )descriptor___2.flags & 1L, 0L);
      if (tmp___3 != 0L) {
        __dynamic_pr_debug(& descriptor___2, "%s:%s:%d write buffer failed, don\'t send anymore state 0x%x\n",
                           (char *)(& skdev->name), "skd_complete_internal", 2105,
                           (unsigned int )skdev->state);
      } else {
      }
      return;
    } else {
    }
    descriptor___3.modname = "skd";
    descriptor___3.function = "skd_complete_internal";
    descriptor___3.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/9607/dscv_tempdir/dscv/ri/43_2a/drivers/block/skd_main.o.c.prepared";
    descriptor___3.format = "%s:%s:%d **** write buffer failed, retry skerr\n";
    descriptor___3.lineno = 2109U;
    descriptor___3.flags = 0U;
    tmp___4 = ldv__builtin_expect((long )descriptor___3.flags & 1L, 0L);
    if (tmp___4 != 0L) {
      __dynamic_pr_debug(& descriptor___3, "%s:%s:%d **** write buffer failed, retry skerr\n",
                         (char *)(& skdev->name), "skd_complete_internal", 2109);
    } else {
    }
    skd_send_internal_skspcl(skdev, skspcl, 0);
  }
  goto ldv_35938;
  case 60: ;
  if ((unsigned int )status == 0U) {
    tmp___7 = skd_chk_read_buf(skdev, skspcl);
    if (tmp___7 == 0) {
      skd_send_internal_skspcl(skdev, skspcl, 37);
    } else {
      tmp___5 = skd_name(skdev);
      printk("\v(%s):*** W/R Buffer mismatch %d ***\n", tmp___5, skdev->connect_retries);
      if (skdev->connect_retries <= 15) {
        skdev->connect_retries = skdev->connect_retries + 1;
        skd_soft_reset(skdev);
      } else {
        tmp___6 = skd_name(skdev);
        printk("\v(%s): W/R Buffer Connect Error\n", tmp___6);
        return;
      }
    }
  } else {
    if ((unsigned int )skdev->state == 10U) {
      descriptor___4.modname = "skd";
      descriptor___4.function = "skd_complete_internal";
      descriptor___4.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/9607/dscv_tempdir/dscv/ri/43_2a/drivers/block/skd_main.o.c.prepared";
      descriptor___4.format = "%s:%s:%d read buffer failed, don\'t send anymore state 0x%x\n";
      descriptor___4.lineno = 2140U;
      descriptor___4.flags = 0U;
      tmp___8 = ldv__builtin_expect((long )descriptor___4.flags & 1L, 0L);
      if (tmp___8 != 0L) {
        __dynamic_pr_debug(& descriptor___4, "%s:%s:%d read buffer failed, don\'t send anymore state 0x%x\n",
                           (char *)(& skdev->name), "skd_complete_internal", 2140,
                           (unsigned int )skdev->state);
      } else {
      }
      return;
    } else {
    }
    descriptor___5.modname = "skd";
    descriptor___5.function = "skd_complete_internal";
    descriptor___5.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/9607/dscv_tempdir/dscv/ri/43_2a/drivers/block/skd_main.o.c.prepared";
    descriptor___5.format = "%s:%s:%d **** read buffer failed, retry skerr\n";
    descriptor___5.lineno = 2145U;
    descriptor___5.flags = 0U;
    tmp___9 = ldv__builtin_expect((long )descriptor___5.flags & 1L, 0L);
    if (tmp___9 != 0L) {
      __dynamic_pr_debug(& descriptor___5, "%s:%s:%d **** read buffer failed, retry skerr\n",
                         (char *)(& skdev->name), "skd_complete_internal", 2145);
    } else {
    }
    skd_send_internal_skspcl(skdev, skspcl, 0);
  }
  goto ldv_35938;
  case 37:
  skdev->read_cap_is_valid = 0;
  if ((unsigned int )status == 0U) {
    skdev->read_cap_last_lba = (u32 )(((((int )*buf << 24) | ((int )*(buf + 1UL) << 16)) | ((int )*(buf + 2UL) << 8)) | (int )*(buf + 3UL));
    skdev->read_cap_blocksize = (u32 )(((((int )*(buf + 4UL) << 24) | ((int )*(buf + 5UL) << 16)) | ((int )*(buf + 6UL) << 8)) | (int )*(buf + 7UL));
    descriptor___6.modname = "skd";
    descriptor___6.function = "skd_complete_internal";
    descriptor___6.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/9607/dscv_tempdir/dscv/ri/43_2a/drivers/block/skd_main.o.c.prepared";
    descriptor___6.format = "%s:%s:%d last lba %d, bs %d\n";
    descriptor___6.lineno = 2163U;
    descriptor___6.flags = 0U;
    tmp___10 = ldv__builtin_expect((long )descriptor___6.flags & 1L, 0L);
    if (tmp___10 != 0L) {
      __dynamic_pr_debug(& descriptor___6, "%s:%s:%d last lba %d, bs %d\n", (char *)(& skdev->name),
                         "skd_complete_internal", 2163, skdev->read_cap_last_lba,
                         skdev->read_cap_blocksize);
    } else {
    }
    set_capacity(skdev->disk, (sector_t )(skdev->read_cap_last_lba + 1U));
    skdev->read_cap_is_valid = 1;
    skd_send_internal_skspcl(skdev, skspcl, 18);
  } else
  if ((unsigned int )status == 2U && (unsigned int )*((unsigned char *)skerr + 2UL) == 3U) {
    skdev->read_cap_last_lba = 4294967295U;
    set_capacity(skdev->disk, (sector_t )(skdev->read_cap_last_lba + 1U));
    descriptor___7.modname = "skd";
    descriptor___7.function = "skd_complete_internal";
    descriptor___7.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/9607/dscv_tempdir/dscv/ri/43_2a/drivers/block/skd_main.o.c.prepared";
    descriptor___7.format = "%s:%s:%d **** MEDIUM OLD_ERROR caused READCAP to fail, ignore failure and continue to inquiry\n";
    descriptor___7.lineno = 2176U;
    descriptor___7.flags = 0U;
    tmp___11 = ldv__builtin_expect((long )descriptor___7.flags & 1L, 0L);
    if (tmp___11 != 0L) {
      __dynamic_pr_debug(& descriptor___7, "%s:%s:%d **** MEDIUM OLD_ERROR caused READCAP to fail, ignore failure and continue to inquiry\n",
                         (char *)(& skdev->name), "skd_complete_internal", 2176);
    } else {
    }
    skd_send_internal_skspcl(skdev, skspcl, 18);
  } else {
    descriptor___8.modname = "skd";
    descriptor___8.function = "skd_complete_internal";
    descriptor___8.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/9607/dscv_tempdir/dscv/ri/43_2a/drivers/block/skd_main.o.c.prepared";
    descriptor___8.format = "%s:%s:%d **** READCAP failed, retry TUR\n";
    descriptor___8.lineno = 2180U;
    descriptor___8.flags = 0U;
    tmp___12 = ldv__builtin_expect((long )descriptor___8.flags & 1L, 0L);
    if (tmp___12 != 0L) {
      __dynamic_pr_debug(& descriptor___8, "%s:%s:%d **** READCAP failed, retry TUR\n",
                         (char *)(& skdev->name), "skd_complete_internal", 2180);
    } else {
    }
    skd_send_internal_skspcl(skdev, skspcl, 0);
  }
  goto ldv_35938;
  case 18:
  skdev->inquiry_is_valid = 0;
  if ((unsigned int )status == 0U) {
    skdev->inquiry_is_valid = 1;
    i = 0;
    goto ldv_35951;
    ldv_35950:
    skdev->inq_serial_num[i] = *(buf + ((unsigned long )i + 4UL));
    i = i + 1;
    ldv_35951: ;
    if (i <= 11) {
      goto ldv_35950;
    } else {
    }
    skdev->inq_serial_num[12] = 0U;
  } else {
  }
  tmp___14 = skd_unquiesce_dev(skdev);
  if (tmp___14 < 0) {
    descriptor___9.modname = "skd";
    descriptor___9.function = "skd_complete_internal";
    descriptor___9.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/9607/dscv_tempdir/dscv/ri/43_2a/drivers/block/skd_main.o.c.prepared";
    descriptor___9.format = "%s:%s:%d **** failed, to ONLINE device\n";
    descriptor___9.lineno = 2198U;
    descriptor___9.flags = 0U;
    tmp___13 = ldv__builtin_expect((long )descriptor___9.flags & 1L, 0L);
    if (tmp___13 != 0L) {
      __dynamic_pr_debug(& descriptor___9, "%s:%s:%d **** failed, to ONLINE device\n",
                         (char *)(& skdev->name), "skd_complete_internal", 2198);
    } else {
    }
  } else {
  }
  skdev->connect_retries = 0;
  goto ldv_35938;
  case 53: ;
  if ((unsigned int )status == 0U) {
    skdev->sync_done = 1;
  } else {
    skdev->sync_done = -1;
  }
  __wake_up(& skdev->waitq, 1U, 1, (void *)0);
  goto ldv_35938;
  default: ;
  }
  ldv_35938: ;
  return;
}
}
static void skd_send_fitmsg(struct skd_device *skdev , struct skd_fitmsg_context *skmsg )
{
  u64 qcmd ;
  struct fit_msg_hdr *fmh ;
  struct _ddebug descriptor ;
  long tmp ;
  struct _ddebug descriptor___0 ;
  long tmp___0 ;
  u8 *bp ;
  int i ;
  struct _ddebug descriptor___1 ;
  long tmp___1 ;
  long tmp___2 ;
  {
  descriptor.modname = "skd";
  descriptor.function = "skd_send_fitmsg";
  descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/9607/dscv_tempdir/dscv/ri/43_2a/drivers/block/skd_main.o.c.prepared";
  descriptor.format = "%s:%s:%d dma address 0x%llx, busy=%d\n";
  descriptor.lineno = 2230U;
  descriptor.flags = 0U;
  tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp != 0L) {
    __dynamic_pr_debug(& descriptor, "%s:%s:%d dma address 0x%llx, busy=%d\n", (char *)(& skdev->name),
                       "skd_send_fitmsg", 2230, skmsg->mb_dma_address, skdev->in_flight);
  } else {
  }
  descriptor___0.modname = "skd";
  descriptor___0.function = "skd_send_fitmsg";
  descriptor___0.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/9607/dscv_tempdir/dscv/ri/43_2a/drivers/block/skd_main.o.c.prepared";
  descriptor___0.format = "%s:%s:%d msg_buf 0x%p, offset %x\n";
  descriptor___0.lineno = 2233U;
  descriptor___0.flags = 0U;
  tmp___0 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
  if (tmp___0 != 0L) {
    __dynamic_pr_debug(& descriptor___0, "%s:%s:%d msg_buf 0x%p, offset %x\n", (char *)(& skdev->name),
                       "skd_send_fitmsg", 2233, skmsg->msg_buf, skmsg->offset);
  } else {
  }
  qcmd = skmsg->mb_dma_address;
  qcmd = qcmd;
  fmh = (struct fit_msg_hdr *)skmsg->msg_buf;
  skmsg->outstanding = (u16 )fmh->num_protocol_cmds_coalesced;
  tmp___2 = ldv__builtin_expect(skdev->dbg_level > 1, 0L);
  if (tmp___2 != 0L) {
    bp = skmsg->msg_buf;
    i = 0;
    goto ldv_35969;
    ldv_35968:
    descriptor___1.modname = "skd";
    descriptor___1.function = "skd_send_fitmsg";
    descriptor___1.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/9607/dscv_tempdir/dscv/ri/43_2a/drivers/block/skd_main.o.c.prepared";
    descriptor___1.format = "%s:%s:%d msg[%2d] %02x %02x %02x %02x %02x %02x %02x %02x\n";
    descriptor___1.lineno = 2250U;
    descriptor___1.flags = 0U;
    tmp___1 = ldv__builtin_expect((long )descriptor___1.flags & 1L, 0L);
    if (tmp___1 != 0L) {
      __dynamic_pr_debug(& descriptor___1, "%s:%s:%d msg[%2d] %02x %02x %02x %02x %02x %02x %02x %02x\n",
                         (char *)(& skdev->name), "skd_send_fitmsg", 2250, i, (int )*(bp + (unsigned long )i),
                         (int )*(bp + ((unsigned long )i + 1UL)), (int )*(bp + ((unsigned long )i + 2UL)),
                         (int )*(bp + ((unsigned long )i + 3UL)), (int )*(bp + ((unsigned long )i + 4UL)),
                         (int )*(bp + ((unsigned long )i + 5UL)), (int )*(bp + ((unsigned long )i + 6UL)),
                         (int )*(bp + ((unsigned long )i + 7UL)));
    } else {
    }
    if (i == 0) {
      i = 56;
    } else {
    }
    i = i + 8;
    ldv_35969: ;
    if ((u32 )i < skmsg->length) {
      goto ldv_35968;
    } else {
    }
  } else {
  }
  if (skmsg->length > 256U) {
    qcmd = qcmd | 48ULL;
  } else
  if (skmsg->length > 128U) {
    qcmd = qcmd | 32ULL;
  } else
  if (skmsg->length > 64U) {
    qcmd = qcmd | 16ULL;
  } else {
    qcmd = qcmd;
  }
  skd_reg_write64(skdev, qcmd, 1024U);
  return;
}
}
static void skd_send_special_fitmsg(struct skd_device *skdev , struct skd_special_context *skspcl )
{
  u64 qcmd ;
  u8 *bp ;
  int i ;
  struct _ddebug descriptor ;
  long tmp ;
  struct _ddebug descriptor___0 ;
  long tmp___0 ;
  struct fit_sg_descriptor *sgd ;
  struct _ddebug descriptor___1 ;
  long tmp___1 ;
  long tmp___2 ;
  {
  tmp___2 = ldv__builtin_expect(skdev->dbg_level > 1, 0L);
  if (tmp___2 != 0L) {
    bp = skspcl->msg_buf;
    i = 0;
    goto ldv_35981;
    ldv_35980:
    descriptor.modname = "skd";
    descriptor.function = "skd_send_special_fitmsg";
    descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/9607/dscv_tempdir/dscv/ri/43_2a/drivers/block/skd_main.o.c.prepared";
    descriptor.format = "%s:%s:%d  spcl[%2d] %02x %02x %02x %02x  %02x %02x %02x %02x\n";
    descriptor.lineno = 2288U;
    descriptor.flags = 0U;
    tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    if (tmp != 0L) {
      __dynamic_pr_debug(& descriptor, "%s:%s:%d  spcl[%2d] %02x %02x %02x %02x  %02x %02x %02x %02x\n",
                         (char *)(& skdev->name), "skd_send_special_fitmsg", 2288,
                         i, (int )*(bp + (unsigned long )i), (int )*(bp + ((unsigned long )i + 1UL)),
                         (int )*(bp + ((unsigned long )i + 2UL)), (int )*(bp + ((unsigned long )i + 3UL)),
                         (int )*(bp + ((unsigned long )i + 4UL)), (int )*(bp + ((unsigned long )i + 5UL)),
                         (int )*(bp + ((unsigned long )i + 6UL)), (int )*(bp + ((unsigned long )i + 7UL)));
    } else {
    }
    if (i == 0) {
      i = 56;
    } else {
    }
    i = i + 8;
    ldv_35981: ;
    if ((unsigned int )i <= 127U) {
      goto ldv_35980;
    } else {
    }
    descriptor___0.modname = "skd";
    descriptor___0.function = "skd_send_special_fitmsg";
    descriptor___0.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/9607/dscv_tempdir/dscv/ri/43_2a/drivers/block/skd_main.o.c.prepared";
    descriptor___0.format = "%s:%s:%d skspcl=%p id=%04x sksg_list=%p sksg_dma=%llx\n";
    descriptor___0.lineno = 2296U;
    descriptor___0.flags = 0U;
    tmp___0 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
    if (tmp___0 != 0L) {
      __dynamic_pr_debug(& descriptor___0, "%s:%s:%d skspcl=%p id=%04x sksg_list=%p sksg_dma=%llx\n",
                         (char *)(& skdev->name), "skd_send_special_fitmsg", 2296,
                         skspcl, (int )skspcl->req.id, skspcl->req.sksg_list, skspcl->req.sksg_dma_address);
    } else {
    }
    i = 0;
    goto ldv_35987;
    ldv_35986:
    sgd = skspcl->req.sksg_list + (unsigned long )i;
    descriptor___1.modname = "skd";
    descriptor___1.function = "skd_send_special_fitmsg";
    descriptor___1.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/9607/dscv_tempdir/dscv/ri/43_2a/drivers/block/skd_main.o.c.prepared";
    descriptor___1.format = "%s:%s:%d   sg[%d] count=%u ctrl=0x%x addr=0x%llx next=0x%llx\n";
    descriptor___1.lineno = 2305U;
    descriptor___1.flags = 0U;
    tmp___1 = ldv__builtin_expect((long )descriptor___1.flags & 1L, 0L);
    if (tmp___1 != 0L) {
      __dynamic_pr_debug(& descriptor___1, "%s:%s:%d   sg[%d] count=%u ctrl=0x%x addr=0x%llx next=0x%llx\n",
                         (char *)(& skdev->name), "skd_send_special_fitmsg", 2305,
                         i, sgd->byte_count, sgd->control, sgd->host_side_addr, sgd->next_desc_ptr);
    } else {
    }
    i = i + 1;
    ldv_35987: ;
    if ((u32 )i < skspcl->req.n_sg) {
      goto ldv_35986;
    } else {
    }
  } else {
  }
  qcmd = skspcl->mb_dma_address;
  qcmd = qcmd | 16ULL;
  skd_reg_write64(skdev, qcmd, 1024U);
  return;
}
}
static void skd_complete_other(struct skd_device *skdev , struct fit_completion_entry_v1 volatile *skcomp ,
                               struct fit_comp_error_info volatile *skerr ) ;
static struct sns_info skd_chkstat_table[9U] =
  { {112U, 2U, 1U, 0U, 0U, 28U, 0},
        {112U, 2U, 0U, 11U, 0U, 30U, 1},
        {112U, 2U, 0U, 93U, 0U, 30U, 1},
        {112U, 2U, 1U, 11U, 1U, 31U, 1},
        {112U, 2U, 11U, 0U, 0U, 28U, 2},
        {112U, 2U, 6U, 11U, 0U, 30U, 2},
        {112U, 2U, 6U, 93U, 0U, 30U, 2},
        {112U, 2U, 6U, 128U, 48U, 31U, 2},
        {112U, 2U, 6U, 63U, 1U, 31U, 4}};
static enum skd_check_status_action skd_check_status(struct skd_device *skdev , u8 cmp_status ,
                                                     struct fit_comp_error_info volatile *skerr )
{
  int i ;
  int n ;
  char const *tmp ;
  struct _ddebug descriptor ;
  long tmp___0 ;
  struct sns_info *sns ;
  char const *tmp___1 ;
  struct _ddebug descriptor___0 ;
  long tmp___2 ;
  struct _ddebug descriptor___1 ;
  long tmp___3 ;
  {
  tmp = skd_name(skdev);
  printk("\v(%s): key/asc/ascq/fruc %02x/%02x/%02x/%02x\n", tmp, (int )skerr->key,
         (int )skerr->code, (int )skerr->qual, (int )skerr->fruc);
  descriptor.modname = "skd";
  descriptor.function = "skd_check_status";
  descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/9607/dscv_tempdir/dscv/ri/43_2a/drivers/block/skd_main.o.c.prepared";
  descriptor.format = "%s:%s:%d stat: t=%02x stat=%02x k=%02x c=%02x q=%02x fruc=%02x\n";
  descriptor.lineno = 2386U;
  descriptor.flags = 0U;
  tmp___0 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp___0 != 0L) {
    __dynamic_pr_debug(& descriptor, "%s:%s:%d stat: t=%02x stat=%02x k=%02x c=%02x q=%02x fruc=%02x\n",
                       (char *)(& skdev->name), "skd_check_status", 2386, (int )skerr->type,
                       (int )cmp_status, (int )skerr->key, (int )skerr->code, (int )skerr->qual,
                       (int )skerr->fruc);
  } else {
  }
  n = 9;
  i = 0;
  goto ldv_36014;
  ldv_36013:
  sns = (struct sns_info *)(& skd_chkstat_table) + (unsigned long )i;
  if (((int )sns->mask & 16) != 0) {
    if ((int )skerr->type != (int )sns->type) {
      goto ldv_36012;
    } else {
    }
  } else {
  }
  if (((int )sns->mask & 8) != 0) {
    if ((int )sns->stat != (int )cmp_status) {
      goto ldv_36012;
    } else {
    }
  } else {
  }
  if (((int )sns->mask & 4) != 0) {
    if ((int )skerr->key != (int )sns->key) {
      goto ldv_36012;
    } else {
    }
  } else {
  }
  if (((int )sns->mask & 2) != 0) {
    if ((int )((unsigned char )skerr->code) != (int )sns->asc) {
      goto ldv_36012;
    } else {
    }
  } else {
  }
  if ((int )sns->mask & 1) {
    if ((int )((unsigned char )skerr->qual) != (int )sns->ascq) {
      goto ldv_36012;
    } else {
    }
  } else {
  }
  if ((unsigned int )sns->action == 1U) {
    tmp___1 = skd_name(skdev);
    printk("\v(%s): SMART Alert: sense key/asc/ascq %02x/%02x/%02x\n", tmp___1, (int )skerr->key,
           (int )skerr->code, (int )skerr->qual);
  } else {
  }
  return (sns->action);
  ldv_36012:
  i = i + 1;
  ldv_36014: ;
  if (i < n) {
    goto ldv_36013;
  } else {
  }
  if ((unsigned int )cmp_status != 0U) {
    descriptor___0.modname = "skd";
    descriptor___0.function = "skd_check_status";
    descriptor___0.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/9607/dscv_tempdir/dscv/ri/43_2a/drivers/block/skd_main.o.c.prepared";
    descriptor___0.format = "%s:%s:%d status check: error\n";
    descriptor___0.lineno = 2427U;
    descriptor___0.flags = 0U;
    tmp___2 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
    if (tmp___2 != 0L) {
      __dynamic_pr_debug(& descriptor___0, "%s:%s:%d status check: error\n", (char *)(& skdev->name),
                         "skd_check_status", 2427);
    } else {
    }
    return (3);
  } else {
  }
  descriptor___1.modname = "skd";
  descriptor___1.function = "skd_check_status";
  descriptor___1.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/9607/dscv_tempdir/dscv/ri/43_2a/drivers/block/skd_main.o.c.prepared";
  descriptor___1.format = "%s:%s:%d status check good default\n";
  descriptor___1.lineno = 2432U;
  descriptor___1.flags = 0U;
  tmp___3 = ldv__builtin_expect((long )descriptor___1.flags & 1L, 0L);
  if (tmp___3 != 0L) {
    __dynamic_pr_debug(& descriptor___1, "%s:%s:%d status check good default\n", (char *)(& skdev->name),
                       "skd_check_status", 2432);
  } else {
  }
  return (0);
}
}
static void skd_resolve_req_exception(struct skd_device *skdev , struct skd_request_context *skreq )
{
  u8 cmp_status ;
  enum skd_check_status_action tmp ;
  char const *tmp___0 ;
  {
  cmp_status = skreq->completion.status;
  tmp = skd_check_status(skdev, (int )cmp_status, (struct fit_comp_error_info volatile *)(& skreq->err_info));
  switch ((unsigned int )tmp) {
  case 0U: ;
  case 1U:
  skd_end_request(skdev, skreq, 0);
  goto ldv_36025;
  case 4U:
  skd_log_skreq(skdev, skreq, "retry(busy)");
  blk_requeue_request(skdev->queue, skreq->req);
  tmp___0 = skd_name(skdev);
  printk("\016(%s) drive BUSY imminent\n", tmp___0);
  skdev->state = 16;
  skdev->timer_countdown = 1200U;
  skd_quiesce_dev(skdev);
  goto ldv_36025;
  case 2U:
  (skreq->req)->special = (skreq->req)->special + 1;
  if ((unsigned long )(skreq->req)->special <= 1UL) {
    skd_log_skreq(skdev, skreq, "retry");
    blk_requeue_request(skdev->queue, skreq->req);
    goto ldv_36025;
  } else {
  }
  case 3U: ;
  default:
  skd_end_request(skdev, skreq, -5);
  goto ldv_36025;
  }
  ldv_36025: ;
  return;
}
}
static void skd_release_skreq(struct skd_device *skdev , struct skd_request_context *skreq )
{
  u32 msg_slot ;
  struct skd_fitmsg_context *skmsg ;
  u32 timo_slot ;
  long tmp ;
  long tmp___0 ;
  long tmp___1 ;
  long tmp___2 ;
  long tmp___3 ;
  {
  msg_slot = skreq->fitmsg_id & 255U;
  tmp = ldv__builtin_expect(skdev->num_fitmsg_context <= msg_slot, 0L);
  if (tmp != 0L) {
    printk("\vAssertion failed! %s,%s,%s,line=%d\n", (char *)"msg_slot < skdev->num_fitmsg_context",
           (char *)"/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/9607/dscv_tempdir/dscv/ri/43_2a/drivers/block/skd_main.o.c.prepared",
           "skd_release_skreq", 2498);
  } else {
  }
  skmsg = skdev->skmsg_table + (unsigned long )msg_slot;
  if (skmsg->id == skreq->fitmsg_id) {
    tmp___0 = ldv__builtin_expect((unsigned int )skmsg->state != 1U, 0L);
    if (tmp___0 != 0L) {
      printk("\vAssertion failed! %s,%s,%s,line=%d\n", (char *)"skmsg->state == SKD_MSG_STATE_BUSY",
             (char *)"/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/9607/dscv_tempdir/dscv/ri/43_2a/drivers/block/skd_main.o.c.prepared",
             "skd_release_skreq", 2502);
    } else {
    }
    tmp___1 = ldv__builtin_expect((unsigned int )skmsg->outstanding == 0U, 0L);
    if (tmp___1 != 0L) {
      printk("\vAssertion failed! %s,%s,%s,line=%d\n", (char *)"skmsg->outstanding > 0",
             (char *)"/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/9607/dscv_tempdir/dscv/ri/43_2a/drivers/block/skd_main.o.c.prepared",
             "skd_release_skreq", 2503);
    } else {
    }
    skmsg->outstanding = (u16 )((int )skmsg->outstanding - 1);
    if ((unsigned int )skmsg->outstanding == 0U) {
      skmsg->state = 0;
      skmsg->id = skmsg->id + 1024U;
      skmsg->next = skdev->skmsg_free_list;
      skdev->skmsg_free_list = skmsg;
    } else {
    }
  } else {
  }
  tmp___2 = ldv__builtin_expect(skdev->in_flight == 0U, 0L);
  if (tmp___2 != 0L) {
    printk("\vAssertion failed! %s,%s,%s,line=%d\n", (char *)"skdev->in_flight > 0",
           (char *)"/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/9607/dscv_tempdir/dscv/ri/43_2a/drivers/block/skd_main.o.c.prepared",
           "skd_release_skreq", 2517);
  } else {
  }
  skdev->in_flight = skdev->in_flight - 1U;
  timo_slot = skreq->timeout_stamp & 3U;
  tmp___3 = ldv__builtin_expect(skdev->timeout_slot[timo_slot] == 0U, 0L);
  if (tmp___3 != 0L) {
    printk("\vAssertion failed! %s,%s,%s,line=%d\n", (char *)"skdev->timeout_slot[timo_slot] > 0",
           (char *)"/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/9607/dscv_tempdir/dscv/ri/43_2a/drivers/block/skd_main.o.c.prepared",
           "skd_release_skreq", 2521);
  } else {
  }
  skdev->timeout_slot[timo_slot] = skdev->timeout_slot[timo_slot] - 1U;
  skreq->req = (struct request *)0;
  skreq->state = 0;
  skreq->id = (unsigned int )skreq->id + 1024U;
  skreq->next = skdev->skreq_free_list;
  skdev->skreq_free_list = skreq;
  return;
}
}
static void skd_do_inq_page_00(struct skd_device *skdev , struct fit_completion_entry_v1 volatile *skcomp ,
                               struct fit_comp_error_info volatile *skerr , uint8_t *cdb ,
                               uint8_t *buf )
{
  uint16_t insert_pt ;
  uint16_t max_bytes ;
  uint16_t drive_pages ;
  uint16_t drive_bytes ;
  uint16_t new_size ;
  struct _ddebug descriptor ;
  long tmp ;
  uint16_t u ;
  __u32 tmp___0 ;
  __u32 tmp___1 ;
  {
  descriptor.modname = "skd";
  descriptor.function = "skd_do_inq_page_00";
  descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/9607/dscv_tempdir/dscv/ri/43_2a/drivers/block/skd_main.o.c.prepared";
  descriptor.format = "%s:%s:%d skd_do_driver_inquiry: modify supported pages.\n";
  descriptor.lineno = 2551U;
  descriptor.flags = 0U;
  tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp != 0L) {
    __dynamic_pr_debug(& descriptor, "%s:%s:%d skd_do_driver_inquiry: modify supported pages.\n",
                       (char *)(& skdev->name), "skd_do_inq_page_00", 2551);
  } else {
  }
  if (((unsigned int )((unsigned char )skcomp->status) == 2U && (unsigned int )*((unsigned char *)skerr + 2UL) == 5U) && (unsigned int )((unsigned char )skerr->code) == 36U) {
    return;
  } else {
  }
  max_bytes = (uint16_t )((int )((short )((int )*(cdb + 3UL) << 8)) | (int )((short )*(cdb + 4UL)));
  drive_pages = (uint16_t )((int )((short )((int )*(buf + 2UL) << 8)) | (int )((short )*(buf + 3UL)));
  drive_bytes = (unsigned int )drive_pages + 4U;
  new_size = (unsigned int )drive_pages + 1U;
  insert_pt = 4U;
  goto ldv_36054;
  ldv_36053: ;
  if ((unsigned int )*(buf + (unsigned long )insert_pt) == 218U) {
    return;
  } else
  if ((unsigned int )*(buf + (unsigned long )insert_pt) > 218U) {
    goto ldv_36052;
  } else {
  }
  insert_pt = (uint16_t )((int )insert_pt + 1);
  ldv_36054: ;
  if ((int )insert_pt < (int )drive_bytes) {
    goto ldv_36053;
  } else {
  }
  ldv_36052: ;
  if ((int )insert_pt < (int )max_bytes) {
    u = (unsigned int )new_size + 3U;
    goto ldv_36057;
    ldv_36056:
    *(buf + (unsigned long )u) = *(buf + ((unsigned long )u + 0xffffffffffffffffUL));
    u = (uint16_t )((int )u - 1);
    ldv_36057: ;
    if ((int )u > (int )insert_pt) {
      goto ldv_36056;
    } else {
    }
    *(buf + (unsigned long )insert_pt) = 218U;
    tmp___0 = __fswab32(skcomp->num_returned_bytes);
    skcomp->num_returned_bytes = tmp___0 + 1U;
    tmp___1 = __fswab32(skcomp->num_returned_bytes);
    skcomp->num_returned_bytes = tmp___1;
  } else {
  }
  *(buf + 2UL) = (unsigned char )((int )new_size >> 8);
  *(buf + 3UL) = (unsigned char )new_size;
  return;
}
}
static void skd_get_link_info(struct pci_dev *pdev , u8 *speed , u8 *width )
{
  int pcie_reg ;
  u16 pci_bus_speed ;
  u8 pci_lanes ;
  u16 linksta ;
  {
  pcie_reg = pci_find_capability(pdev, 16);
  if (pcie_reg != 0) {
    pci_read_config_word((struct pci_dev const *)pdev, pcie_reg + 18, & linksta);
    pci_bus_speed = (unsigned int )linksta & 15U;
    pci_lanes = (u8 )(((int )linksta & 1008) >> 4);
  } else {
    *speed = 255U;
    *width = 255U;
    return;
  }
  switch ((int )pci_bus_speed) {
  case 1:
  *speed = 0U;
  goto ldv_36069;
  case 2:
  *speed = 1U;
  goto ldv_36069;
  case 3:
  *speed = 2U;
  goto ldv_36069;
  default:
  *speed = 255U;
  goto ldv_36069;
  }
  ldv_36069: ;
  if ((unsigned int )pci_lanes <= 32U) {
    *width = pci_lanes;
  } else {
    *width = 255U;
  }
  return;
}
}
static void skd_do_inq_page_da(struct skd_device *skdev , struct fit_completion_entry_v1 volatile *skcomp ,
                               struct fit_comp_error_info volatile *skerr , uint8_t *cdb ,
                               uint8_t *buf )
{
  struct pci_dev *pdev ;
  unsigned int max_bytes ;
  struct driver_inquiry_data inq ;
  u16 val ;
  struct _ddebug descriptor ;
  long tmp ;
  __u16 tmp___0 ;
  __u16 tmp___1 ;
  __u16 tmp___2 ;
  __u16 tmp___3 ;
  __u16 tmp___4 ;
  size_t __len ;
  unsigned long _min1 ;
  size_t _min2 ;
  size_t tmp___5 ;
  void *__ret ;
  size_t __len___0 ;
  unsigned int __min1 ;
  unsigned int __min2 ;
  void *__ret___0 ;
  uint16_t __min1___0 ;
  uint16_t __min2___0 ;
  __u32 tmp___6 ;
  {
  pdev = skdev->pdev;
  descriptor.modname = "skd";
  descriptor.function = "skd_do_inq_page_da";
  descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/9607/dscv_tempdir/dscv/ri/43_2a/drivers/block/skd_main.o.c.prepared";
  descriptor.format = "%s:%s:%d skd_do_driver_inquiry: return driver page\n";
  descriptor.lineno = 2650U;
  descriptor.flags = 0U;
  tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp != 0L) {
    __dynamic_pr_debug(& descriptor, "%s:%s:%d skd_do_driver_inquiry: return driver page\n",
                       (char *)(& skdev->name), "skd_do_inq_page_da", 2650);
  } else {
  }
  memset((void *)(& inq), 0, 44UL);
  inq.page_code = 218U;
  skd_get_link_info(pdev, & inq.pcie_link_speed, & inq.pcie_link_lanes);
  tmp___0 = __fswab16((int )(pdev->bus)->number);
  inq.pcie_bus_number = tmp___0;
  inq.pcie_device_number = (unsigned int )((uint8_t )(pdev->devfn >> 3)) & 31U;
  inq.pcie_function_number = (unsigned int )((uint8_t )pdev->devfn) & 7U;
  pci_read_config_word((struct pci_dev const *)pdev, 0, & val);
  tmp___1 = __fswab16((int )val);
  inq.pcie_vendor_id = tmp___1;
  pci_read_config_word((struct pci_dev const *)pdev, 2, & val);
  tmp___2 = __fswab16((int )val);
  inq.pcie_device_id = tmp___2;
  pci_read_config_word((struct pci_dev const *)pdev, 44, & val);
  tmp___3 = __fswab16((int )val);
  inq.pcie_subsystem_vendor_id = tmp___3;
  pci_read_config_word((struct pci_dev const *)pdev, 46, & val);
  tmp___4 = __fswab16((int )val);
  inq.pcie_subsystem_device_id = tmp___4;
  inq.driver_version_length = 20U;
  memset((void *)(& inq.driver_version), 32, 20UL);
  _min1 = 20UL;
  tmp___5 = strlen("2.2.1.0260");
  _min2 = tmp___5;
  __len = _min1 < _min2 ? _min1 : _min2;
  __ret = memcpy((void *)(& inq.driver_version), (void const *)"2.2.1.0260",
                           __len);
  inq.page_length = 10240U;
  skcomp->status = 0U;
  memset((void *)skerr, 0, 32UL);
  max_bytes = (unsigned int )(((int )*(cdb + 3UL) << 8) | (int )*(cdb + 4UL));
  __min1 = max_bytes;
  __min2 = 44U;
  __len___0 = (size_t )(__min1 < __min2 ? __min1 : __min2);
  __ret___0 = memcpy((void *)buf, (void const *)(& inq), __len___0);
  __min1___0 = (uint16_t )max_bytes;
  __min2___0 = 44U;
  tmp___6 = __fswab32((unsigned int )((int )__min1___0 < (int )__min2___0 ? __min1___0 : __min2___0));
  skcomp->num_returned_bytes = tmp___6;
  return;
}
}
static void skd_do_driver_inq(struct skd_device *skdev , struct fit_completion_entry_v1 volatile *skcomp ,
                              struct fit_comp_error_info volatile *skerr , uint8_t *cdb ,
                              uint8_t *buf )
{
  {
  if ((unsigned long )buf == (unsigned long )((uint8_t *)0U)) {
    return;
  } else
  if ((unsigned int )*cdb != 18U) {
    return;
  } else
  if (((int )*(cdb + 1UL) & 1) == 0) {
    return;
  } else
  if ((unsigned int )*(cdb + 2UL) == 0U) {
    skd_do_inq_page_00(skdev, skcomp, skerr, cdb, buf);
  } else
  if ((unsigned int )*(cdb + 2UL) == 218U) {
    skd_do_inq_page_da(skdev, skcomp, skerr, cdb, buf);
  } else {
  }
  return;
}
}
static unsigned char *skd_sg_1st_page_ptr(struct scatterlist *sg )
{
  struct page *tmp ;
  void *tmp___0 ;
  {
  if ((unsigned long )sg == (unsigned long )((struct scatterlist *)0)) {
    return ((unsigned char *)0U);
  } else {
  }
  tmp = sg_page(sg);
  if ((unsigned long )tmp == (unsigned long )((struct page *)0)) {
    return ((unsigned char *)0U);
  } else {
  }
  tmp___0 = sg_virt(sg);
  return ((unsigned char *)tmp___0);
}
}
static void skd_process_scsi_inq(struct skd_device *skdev , struct fit_completion_entry_v1 volatile *skcomp ,
                                 struct fit_comp_error_info volatile *skerr , struct skd_special_context *skspcl )
{
  uint8_t *buf ;
  struct fit_msg_hdr *fmh ;
  struct skd_scsi_request *scsi_req ;
  unsigned char *tmp ;
  {
  fmh = (struct fit_msg_hdr *)skspcl->msg_buf;
  scsi_req = (struct skd_scsi_request *)fmh + 1U;
  dma_sync_sg_for_cpu(skdev->class_dev, skspcl->req.sg, (int )skspcl->req.n_sg, (enum dma_data_direction )skspcl->req.sg_data_dir);
  tmp = skd_sg_1st_page_ptr(skspcl->req.sg);
  buf = tmp;
  if ((unsigned long )buf != (unsigned long )((uint8_t *)0U)) {
    skd_do_driver_inq(skdev, skcomp, skerr, (uint8_t *)(& scsi_req->cdb), buf);
  } else {
  }
  return;
}
}
static int skd_isr_completion_posted(struct skd_device *skdev , int limit , int *enqueued )
{
  struct fit_completion_entry_v1 volatile *skcmp ;
  struct fit_comp_error_info volatile *skerr ;
  u16 req_id ;
  u32 req_slot ;
  struct skd_request_context *skreq ;
  u16 cmp_cntxt ;
  u8 cmp_status ;
  u8 cmp_cycle ;
  u32 cmp_bytes ;
  int rc ;
  int processed ;
  long tmp ;
  __u32 tmp___0 ;
  struct _ddebug descriptor ;
  long tmp___1 ;
  struct _ddebug descriptor___0 ;
  long tmp___2 ;
  struct _ddebug descriptor___1 ;
  long tmp___3 ;
  u16 new_id ;
  char const *tmp___4 ;
  long tmp___5 ;
  struct _ddebug descriptor___2 ;
  long tmp___6 ;
  long tmp___7 ;
  struct _ddebug descriptor___3 ;
  long tmp___8 ;
  long tmp___9 ;
  {
  skcmp = (struct fit_completion_entry_v1 volatile *)0;
  cmp_cntxt = 0U;
  cmp_status = 0U;
  cmp_cycle = 0U;
  cmp_bytes = 0U;
  rc = 0;
  processed = 0;
  ldv_36166:
  tmp = ldv__builtin_expect(skdev->skcomp_ix > 255U, 0L);
  if (tmp != 0L) {
    printk("\vAssertion failed! %s,%s,%s,line=%d\n", (char *)"skdev->skcomp_ix < SKD_N_COMPLETION_ENTRY",
           (char *)"/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/9607/dscv_tempdir/dscv/ri/43_2a/drivers/block/skd_main.o.c.prepared",
           "skd_isr_completion_posted", 2756);
  } else {
  }
  skcmp = (struct fit_completion_entry_v1 volatile *)skdev->skcomp_table + (unsigned long )skdev->skcomp_ix;
  cmp_cycle = skcmp->cycle;
  cmp_cntxt = skcmp->tag;
  cmp_status = skcmp->status;
  tmp___0 = __fswab32(skcmp->num_returned_bytes);
  cmp_bytes = tmp___0;
  skerr = (struct fit_comp_error_info volatile *)skdev->skerr_table + (unsigned long )skdev->skcomp_ix;
  descriptor.modname = "skd";
  descriptor.function = "skd_isr_completion_posted";
  descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/9607/dscv_tempdir/dscv/ri/43_2a/drivers/block/skd_main.o.c.prepared";
  descriptor.format = "%s:%s:%d cycle=%d ix=%d got cycle=%d cmdctxt=0x%x stat=%d busy=%d rbytes=0x%x proto=%d\n";
  descriptor.lineno = 2771U;
  descriptor.flags = 0U;
  tmp___1 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp___1 != 0L) {
    __dynamic_pr_debug(& descriptor, "%s:%s:%d cycle=%d ix=%d got cycle=%d cmdctxt=0x%x stat=%d busy=%d rbytes=0x%x proto=%d\n",
                       (char *)(& skdev->name), "skd_isr_completion_posted", 2771,
                       (int )skdev->skcomp_cycle, skdev->skcomp_ix, (int )cmp_cycle,
                       (int )cmp_cntxt, (int )cmp_status, skdev->in_flight, cmp_bytes,
                       skdev->proto_ver);
  } else {
  }
  if ((int )skdev->skcomp_cycle != (int )cmp_cycle) {
    descriptor___0.modname = "skd";
    descriptor___0.function = "skd_isr_completion_posted";
    descriptor___0.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/9607/dscv_tempdir/dscv/ri/43_2a/drivers/block/skd_main.o.c.prepared";
    descriptor___0.format = "%s:%s:%d end of completions\n";
    descriptor___0.lineno = 2775U;
    descriptor___0.flags = 0U;
    tmp___2 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
    if (tmp___2 != 0L) {
      __dynamic_pr_debug(& descriptor___0, "%s:%s:%d end of completions\n", (char *)(& skdev->name),
                         "skd_isr_completion_posted", 2775);
    } else {
    }
    goto ldv_36160;
  } else {
  }
  skdev->skcomp_ix = skdev->skcomp_ix + 1U;
  if (skdev->skcomp_ix > 255U) {
    skdev->skcomp_ix = 0U;
    skdev->skcomp_cycle = (u8 )((int )skdev->skcomp_cycle + 1);
  } else {
  }
  req_id = cmp_cntxt;
  req_slot = (unsigned int )req_id & 1023U;
  if (skdev->num_req_context <= req_slot) {
    skd_complete_other(skdev, skcmp, skerr);
    goto ldv_36161;
  } else {
  }
  skreq = skdev->skreq_table + (unsigned long )req_slot;
  if ((int )skreq->id != (int )req_id) {
    descriptor___1.modname = "skd";
    descriptor___1.function = "skd_isr_completion_posted";
    descriptor___1.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/9607/dscv_tempdir/dscv/ri/43_2a/drivers/block/skd_main.o.c.prepared";
    descriptor___1.format = "%s:%s:%d mismatch comp_id=0x%x req_id=0x%x\n";
    descriptor___1.lineno = 2813U;
    descriptor___1.flags = 0U;
    tmp___3 = ldv__builtin_expect((long )descriptor___1.flags & 1L, 0L);
    if (tmp___3 != 0L) {
      __dynamic_pr_debug(& descriptor___1, "%s:%s:%d mismatch comp_id=0x%x req_id=0x%x\n",
                         (char *)(& skdev->name), "skd_isr_completion_posted", 2813,
                         (int )req_id, (int )skreq->id);
    } else {
    }
    new_id = cmp_cntxt;
    tmp___4 = skd_name(skdev);
    printk("\v(%s): Completion mismatch comp_id=0x%04x skreq=0x%04x new=0x%04x\n",
           tmp___4, (int )req_id, (int )skreq->id, (int )new_id);
    goto ldv_36161;
  } else {
  }
  tmp___5 = ldv__builtin_expect((unsigned int )skreq->state != 2U, 0L);
  if (tmp___5 != 0L) {
    printk("\vAssertion failed! %s,%s,%s,line=%d\n", (char *)"skreq->state == SKD_REQ_STATE_BUSY",
           (char *)"/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/9607/dscv_tempdir/dscv/ri/43_2a/drivers/block/skd_main.o.c.prepared",
           "skd_isr_completion_posted", 2825);
  } else {
  }
  if ((unsigned int )skreq->state == 5U) {
    descriptor___2.modname = "skd";
    descriptor___2.function = "skd_isr_completion_posted";
    descriptor___2.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/9607/dscv_tempdir/dscv/ri/43_2a/drivers/block/skd_main.o.c.prepared";
    descriptor___2.format = "%s:%s:%d reclaim req %p id=%04x\n";
    descriptor___2.lineno = 2830U;
    descriptor___2.flags = 0U;
    tmp___6 = ldv__builtin_expect((long )descriptor___2.flags & 1L, 0L);
    if (tmp___6 != 0L) {
      __dynamic_pr_debug(& descriptor___2, "%s:%s:%d reclaim req %p id=%04x\n", (char *)(& skdev->name),
                         "skd_isr_completion_posted", 2830, skreq, (int )skreq->id);
    } else {
    }
    skd_release_skreq(skdev, skreq);
    goto ldv_36161;
  } else {
  }
  skreq->completion = *skcmp;
  tmp___7 = ldv__builtin_expect((unsigned int )cmp_status == 2U, 0L);
  if (tmp___7 != 0L) {
    skreq->err_info = *skerr;
    skd_log_check_status(skdev, (int )cmp_status, (int )skerr->key, (int )skerr->code,
                         (int )skerr->qual, (int )skerr->fruc);
  } else {
  }
  if (skreq->n_sg != 0U) {
    skd_postop_sg_list(skdev, skreq);
  } else {
  }
  if ((unsigned long )skreq->req == (unsigned long )((struct request *)0)) {
    descriptor___3.modname = "skd";
    descriptor___3.function = "skd_isr_completion_posted";
    descriptor___3.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/9607/dscv_tempdir/dscv/ri/43_2a/drivers/block/skd_main.o.c.prepared";
    descriptor___3.format = "%s:%s:%d NULL backptr skdreq %p, req=0x%x req_id=0x%x\n";
    descriptor___3.lineno = 2852U;
    descriptor___3.flags = 0U;
    tmp___8 = ldv__builtin_expect((long )descriptor___3.flags & 1L, 0L);
    if (tmp___8 != 0L) {
      __dynamic_pr_debug(& descriptor___3, "%s:%s:%d NULL backptr skdreq %p, req=0x%x req_id=0x%x\n",
                         (char *)(& skdev->name), "skd_isr_completion_posted", 2852,
                         skreq, (int )skreq->id, (int )req_id);
    } else {
    }
  } else {
    tmp___9 = ldv__builtin_expect((unsigned int )cmp_status == 0U, 1L);
    if (tmp___9 != 0L) {
      skd_end_request(skdev, skreq, 0);
    } else {
      skd_resolve_req_exception(skdev, skreq);
    }
  }
  skd_release_skreq(skdev, skreq);
  if (limit != 0) {
    processed = processed + 1;
    if (processed >= limit) {
      rc = 1;
      goto ldv_36160;
    } else {
    }
  } else {
  }
  ldv_36161: ;
  goto ldv_36166;
  ldv_36160: ;
  if ((unsigned int )skdev->state == 5U && skdev->in_flight == 0U) {
    skdev->state = 6;
    __wake_up(& skdev->waitq, 1U, 1, (void *)0);
  } else {
  }
  return (rc);
}
}
static void skd_complete_other(struct skd_device *skdev , struct fit_completion_entry_v1 volatile *skcomp ,
                               struct fit_comp_error_info volatile *skerr )
{
  u32 req_id ;
  u32 req_table ;
  u32 req_slot ;
  struct skd_special_context *skspcl ;
  struct _ddebug descriptor ;
  long tmp ;
  {
  req_id = 0U;
  req_id = (u32 )skcomp->tag;
  req_table = req_id & 768U;
  req_slot = req_id & 255U;
  descriptor.modname = "skd";
  descriptor.function = "skd_complete_other";
  descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/9607/dscv_tempdir/dscv/ri/43_2a/drivers/block/skd_main.o.c.prepared";
  descriptor.format = "%s:%s:%d table=0x%x id=0x%x slot=%d\n";
  descriptor.lineno = 2903U;
  descriptor.flags = 0U;
  tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp != 0L) {
    __dynamic_pr_debug(& descriptor, "%s:%s:%d table=0x%x id=0x%x slot=%d\n", (char *)(& skdev->name),
                       "skd_complete_other", 2903, req_table, req_id, req_slot);
  } else {
  }
  switch (req_table) {
  case 0U: ;
  goto ldv_36179;
  case 512U: ;
  if ((u32 )skdev->n_special > req_slot) {
    skspcl = skdev->skspcl_table + (unsigned long )req_slot;
    if ((u32 )skspcl->req.id == req_id && (unsigned int )skspcl->req.state == 2U) {
      skd_complete_special(skdev, skcomp, skerr, skspcl);
      return;
    } else {
    }
  } else {
  }
  goto ldv_36179;
  case 256U: ;
  if (req_slot == 0U) {
    skspcl = & skdev->internal_skspcl;
    if ((u32 )skspcl->req.id == req_id && (unsigned int )skspcl->req.state == 2U) {
      skd_complete_internal(skdev, skcomp, skerr, skspcl);
      return;
    } else {
    }
  } else {
  }
  goto ldv_36179;
  case 768U: ;
  goto ldv_36179;
  default: ;
  goto ldv_36179;
  }
  ldv_36179: ;
  return;
}
}
static void skd_complete_special(struct skd_device *skdev , struct fit_completion_entry_v1 volatile *skcomp ,
                                 struct fit_comp_error_info volatile *skerr , struct skd_special_context *skspcl )
{
  struct _ddebug descriptor ;
  long tmp ;
  struct _ddebug descriptor___0 ;
  long tmp___0 ;
  {
  descriptor.modname = "skd";
  descriptor.function = "skd_complete_special";
  descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/9607/dscv_tempdir/dscv/ri/43_2a/drivers/block/skd_main.o.c.prepared";
  descriptor.format = "%s:%s:%d  completing special request %p\n";
  descriptor.lineno = 2972U;
  descriptor.flags = 0U;
  tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp != 0L) {
    __dynamic_pr_debug(& descriptor, "%s:%s:%d  completing special request %p\n",
                       (char *)(& skdev->name), "skd_complete_special", 2972, skspcl);
  } else {
  }
  if ((unsigned int )skspcl->orphaned != 0U) {
    descriptor___0.modname = "skd";
    descriptor___0.function = "skd_complete_special";
    descriptor___0.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/9607/dscv_tempdir/dscv/ri/43_2a/drivers/block/skd_main.o.c.prepared";
    descriptor___0.format = "%s:%s:%d release orphaned %p\n";
    descriptor___0.lineno = 2978U;
    descriptor___0.flags = 0U;
    tmp___0 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
    if (tmp___0 != 0L) {
      __dynamic_pr_debug(& descriptor___0, "%s:%s:%d release orphaned %p\n", (char *)(& skdev->name),
                         "skd_complete_special", 2978, skspcl);
    } else {
    }
    skd_release_special(skdev, skspcl);
    return;
  } else {
  }
  skd_process_scsi_inq(skdev, skcomp, skerr, skspcl);
  skspcl->req.state = 3;
  skspcl->req.completion = *skcomp;
  skspcl->req.err_info = *skerr;
  skd_log_check_status(skdev, (int )skspcl->req.completion.status, (int )skerr->key,
                       (int )skerr->code, (int )skerr->qual, (int )skerr->fruc);
  __wake_up(& skdev->waitq, 1U, 1, (void *)0);
  return;
}
}
static void skd_release_special(struct skd_device *skdev , struct skd_special_context *skspcl )
{
  int i ;
  int was_depleted ;
  struct page *page ;
  struct page *tmp ;
  struct _ddebug descriptor ;
  long tmp___0 ;
  {
  i = 0;
  goto ldv_36201;
  ldv_36200:
  tmp = sg_page(skspcl->req.sg + (unsigned long )i);
  page = tmp;
  __free_pages(page, 0U);
  i = i + 1;
  ldv_36201: ;
  if ((u32 )i < skspcl->req.n_sg) {
    goto ldv_36200;
  } else {
  }
  was_depleted = (unsigned long )skdev->skspcl_free_list == (unsigned long )((struct skd_special_context *)0);
  skspcl->req.state = 0;
  skspcl->req.id = (unsigned int )skspcl->req.id + 1024U;
  skspcl->req.next = (struct skd_request_context *)skdev->skspcl_free_list;
  skdev->skspcl_free_list = skspcl;
  if (was_depleted != 0) {
    descriptor.modname = "skd";
    descriptor.function = "skd_release_special";
    descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/9607/dscv_tempdir/dscv/ri/43_2a/drivers/block/skd_main.o.c.prepared";
    descriptor.format = "%s:%s:%d skspcl was depleted\n";
    descriptor.lineno = 3016U;
    descriptor.flags = 0U;
    tmp___0 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    if (tmp___0 != 0L) {
      __dynamic_pr_debug(& descriptor, "%s:%s:%d skspcl was depleted\n", (char *)(& skdev->name),
                         "skd_release_special", 3016);
    } else {
    }
    __wake_up(& skdev->waitq, 1U, 1, (void *)0);
  } else {
  }
  return;
}
}
static void skd_reset_skcomp(struct skd_device *skdev )
{
  u32 nbytes ;
  {
  nbytes = 2048U;
  nbytes = nbytes + 8192U;
  memset((void *)skdev->skcomp_table, 0, (size_t )nbytes);
  skdev->skcomp_ix = 0U;
  skdev->skcomp_cycle = 1U;
  return;
}
}
static void skd_completion_worker(struct work_struct *work )
{
  struct skd_device *skdev ;
  struct work_struct const *__mptr ;
  unsigned long flags ;
  int flush_enqueued ;
  {
  __mptr = (struct work_struct const *)work;
  skdev = (struct skd_device *)__mptr + 0xfffffffffffffc68UL;
  flush_enqueued = 0;
  ldv_spin_lock();
  skd_isr_completion_posted(skdev, 0, & flush_enqueued);
  skd_request_fn(skdev->queue);
  spin_unlock_irqrestore(& skdev->lock, flags);
  return;
}
}
static void skd_isr_msg_from_dev(struct skd_device *skdev ) ;
static irqreturn_t skd_isr(int irq , void *ptr )
{
  struct skd_device *skdev ;
  u32 intstat ;
  u32 ack ;
  int rc ;
  int deferred ;
  int flush_enqueued ;
  struct _ddebug descriptor ;
  long tmp ;
  long tmp___0 ;
  long tmp___1 ;
  long tmp___2 ;
  long tmp___3 ;
  {
  rc = 0;
  deferred = 0;
  flush_enqueued = 0;
  skdev = (struct skd_device *)ptr;
  spin_lock(& skdev->lock);
  ldv_36233:
  intstat = skd_reg_read32(skdev, 1312U);
  ack = 2023U;
  ack = ack & intstat;
  descriptor.modname = "skd";
  descriptor.function = "skd_isr";
  descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/9607/dscv_tempdir/dscv/ri/43_2a/drivers/block/skd_main.o.c.prepared";
  descriptor.format = "%s:%s:%d intstat=0x%x ack=0x%x\n";
  descriptor.lineno = 3082U;
  descriptor.flags = 0U;
  tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp != 0L) {
    __dynamic_pr_debug(& descriptor, "%s:%s:%d intstat=0x%x ack=0x%x\n", (char *)(& skdev->name),
                       "skd_isr", 3082, intstat, ack);
  } else {
  }
  if (ack == 0U) {
    if (rc == 0) {
      tmp___0 = ldv__builtin_expect((unsigned int )skdev->state == 4U, 1L);
      if (tmp___0 != 0L) {
        deferred = 1;
      } else {
      }
    } else {
    }
    goto ldv_36232;
  } else {
  }
  rc = 1;
  skd_reg_write32(skdev, ack, 1312U);
  tmp___1 = ldv__builtin_expect((unsigned int )skdev->state != 0U, 1L);
  if (tmp___1 != 0L) {
    tmp___2 = ldv__builtin_expect((unsigned int )skdev->state != 10U, 1L);
    if (tmp___2 != 0L) {
      if ((intstat & 2U) != 0U) {
        if (deferred == 0) {
          deferred = skd_isr_completion_posted(skdev, skd_isr_comp_limit, & flush_enqueued);
        } else {
        }
      } else {
      }
      if ((int )intstat & 1) {
        skd_isr_fwstate(skdev);
        if ((unsigned int )skdev->state == 11U || (unsigned int )skdev->state == 12U) {
          spin_unlock(& skdev->lock);
          return ((irqreturn_t )rc);
        } else {
        }
      } else {
      }
      if ((intstat & 4U) != 0U) {
        skd_isr_msg_from_dev(skdev);
      } else {
      }
    } else {
    }
  } else {
  }
  goto ldv_36233;
  ldv_36232:
  tmp___3 = ldv__builtin_expect(flush_enqueued != 0, 0L);
  if (tmp___3 != 0L) {
    skd_request_fn(skdev->queue);
  } else {
  }
  if (deferred != 0) {
    schedule_work(& skdev->completion_worker);
  } else
  if (flush_enqueued == 0) {
    skd_request_fn(skdev->queue);
  } else {
  }
  spin_unlock(& skdev->lock);
  return ((irqreturn_t )rc);
}
}
static void skd_drive_fault(struct skd_device *skdev )
{
  char const *tmp ;
  {
  skdev->state = 11;
  tmp = skd_name(skdev);
  printk("\v(%s): Drive FAULT\n", tmp);
  return;
}
}
static void skd_drive_disappeared(struct skd_device *skdev )
{
  char const *tmp ;
  {
  skdev->state = 12;
  tmp = skd_name(skdev);
  printk("\v(%s): Drive DISAPPEARED\n", tmp);
  return;
}
}
static void skd_isr_fwstate(struct skd_device *skdev )
{
  u32 sense ;
  u32 state ;
  u32 mtd ;
  int prev_driver_state ;
  char const *tmp ;
  char const *tmp___0 ;
  char const *tmp___1 ;
  char const *tmp___2 ;
  struct _ddebug descriptor ;
  long tmp___3 ;
  char const *tmp___4 ;
  char const *tmp___5 ;
  char const *tmp___6 ;
  char const *tmp___7 ;
  {
  prev_driver_state = (int )skdev->state;
  sense = skd_reg_read32(skdev, 1296U);
  state = sense & 255U;
  tmp = skd_drive_state_to_str((int )state);
  tmp___0 = skd_drive_state_to_str((int )skdev->drive_state);
  tmp___1 = skd_name(skdev);
  printk("\v(%s): s1120 state %s(%d)=>%s(%d)\n", tmp___1, tmp___0, skdev->drive_state,
         tmp, state);
  skdev->drive_state = state;
  switch (skdev->drive_state) {
  case 1U: ;
  if ((unsigned int )skdev->state == 13U) {
    skd_disable_interrupts(skdev);
    goto ldv_36248;
  } else {
  }
  if ((unsigned int )skdev->state == 8U) {
    skd_recover_requests(skdev, 0);
  } else {
  }
  if ((unsigned int )skdev->state == 17U) {
    skdev->timer_countdown = 8U;
    skdev->state = 3;
    skd_soft_reset(skdev);
    goto ldv_36248;
  } else {
  }
  mtd = 16777216U;
  skd_reg_write32(skdev, mtd, 1344U);
  skdev->last_mtd = mtd;
  goto ldv_36248;
  case 3U:
  skdev->cur_max_queue_depth = (u32 )skd_max_queue_depth;
  if (skdev->cur_max_queue_depth > skdev->dev_max_queue_depth) {
    skdev->cur_max_queue_depth = skdev->dev_max_queue_depth;
  } else {
  }
  skdev->queue_low_water_mark = (skdev->cur_max_queue_depth * 2U) / 3U + 1U;
  if (skdev->queue_low_water_mark == 0U) {
    skdev->queue_low_water_mark = 1U;
  } else {
  }
  tmp___2 = skd_name(skdev);
  printk("\016(%s): Queue depth limit=%d dev=%d lowat=%d\n", tmp___2, skdev->cur_max_queue_depth,
         skdev->dev_max_queue_depth, skdev->queue_low_water_mark);
  skd_refresh_device_data(skdev);
  goto ldv_36248;
  case 4U:
  skdev->state = 2;
  skdev->timer_countdown = 1200U;
  skd_quiesce_dev(skdev);
  goto ldv_36248;
  case 10U:
  skdev->state = 15;
  skdev->timer_countdown = 3U;
  blk_start_queue(skdev->queue);
  goto ldv_36248;
  case 11U:
  skdev->state = 14;
  skdev->timer_countdown = 1200U;
  goto ldv_36248;
  case 0U:
  skdev->state = 1;
  goto ldv_36248;
  case 8U: ;
  switch ((unsigned int )skdev->state) {
  case 3U: ;
  case 8U: ;
  goto ldv_36257;
  default:
  skdev->state = 8;
  goto ldv_36257;
  }
  ldv_36257: ;
  goto ldv_36248;
  case 12U:
  descriptor.modname = "skd";
  descriptor.function = "skd_isr_fwstate";
  descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/9607/dscv_tempdir/dscv/ri/43_2a/drivers/block/skd_main.o.c.prepared";
  descriptor.format = "%s:%s:%d ISR FIT_SR_DRIVE_FW_BOOTING %s\n";
  descriptor.lineno = 3243U;
  descriptor.flags = 0U;
  tmp___3 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp___3 != 0L) {
    __dynamic_pr_debug(& descriptor, "%s:%s:%d ISR FIT_SR_DRIVE_FW_BOOTING %s\n",
                       (char *)(& skdev->name), "skd_isr_fwstate", 3243, (char *)(& skdev->name));
  } else {
  }
  skdev->state = 17;
  skdev->timer_countdown = 90U;
  goto ldv_36248;
  case 6U: ;
  case 7U: ;
  case 254U: ;
  goto ldv_36248;
  case 5U:
  skd_drive_fault(skdev);
  skd_recover_requests(skdev, 0);
  blk_start_queue(skdev->queue);
  goto ldv_36248;
  case 255U:
  tmp___4 = skd_name(skdev);
  printk("\016(%s): state=0x%x sense=0x%x\n", tmp___4, state, sense);
  skd_drive_disappeared(skdev);
  skd_recover_requests(skdev, 0);
  blk_start_queue(skdev->queue);
  goto ldv_36248;
  default: ;
  goto ldv_36248;
  }
  ldv_36248:
  tmp___5 = skd_skdev_state_to_str(skdev->state);
  tmp___6 = skd_skdev_state_to_str((enum skd_drvr_state )prev_driver_state);
  tmp___7 = skd_name(skdev);
  printk("\v(%s): Driver state %s(%d)=>%s(%d)\n", tmp___7, tmp___6, prev_driver_state,
         tmp___5, (unsigned int )skdev->state);
  return;
}
}
static void skd_recover_requests(struct skd_device *skdev , int requeue )
{
  int i ;
  struct skd_request_context *skreq ;
  long tmp ;
  long tmp___0 ;
  struct skd_fitmsg_context *skmsg ;
  long tmp___1 ;
  struct skd_special_context *skspcl ;
  struct _ddebug descriptor ;
  long tmp___2 ;
  struct _ddebug descriptor___0 ;
  long tmp___3 ;
  {
  i = 0;
  goto ldv_36276;
  ldv_36275:
  skreq = skdev->skreq_table + (unsigned long )i;
  if ((unsigned int )skreq->state == 2U) {
    skd_log_skreq(skdev, skreq, "recover");
    tmp = ldv__builtin_expect(((int )skreq->id & 1024) == 0, 0L);
    if (tmp != 0L) {
      printk("\vAssertion failed! %s,%s,%s,line=%d\n", (char *)"(skreq->id & SKD_ID_INCR) != 0",
             (char *)"/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/9607/dscv_tempdir/dscv/ri/43_2a/drivers/block/skd_main.o.c.prepared",
             "skd_recover_requests", 3289);
    } else {
    }
    tmp___0 = ldv__builtin_expect((unsigned long )skreq->req == (unsigned long )((struct request *)0),
                               0L);
    if (tmp___0 != 0L) {
      printk("\vAssertion failed! %s,%s,%s,line=%d\n", (char *)"skreq->req != NULL",
             (char *)"/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/9607/dscv_tempdir/dscv/ri/43_2a/drivers/block/skd_main.o.c.prepared",
             "skd_recover_requests", 3290);
    } else {
    }
    if (skreq->n_sg != 0U) {
      skd_postop_sg_list(skdev, skreq);
    } else {
    }
    if (requeue != 0) {
      (skreq->req)->special = (skreq->req)->special + 1;
      if ((unsigned long )(skreq->req)->special <= 1UL) {
        blk_requeue_request(skdev->queue, skreq->req);
      } else {
        skd_end_request(skdev, skreq, -5);
      }
    } else {
      skd_end_request(skdev, skreq, -5);
    }
    skreq->req = (struct request *)0;
    skreq->state = 0;
    skreq->id = (unsigned int )skreq->id + 1024U;
  } else {
  }
  if (i > 0) {
    (skreq + 0xffffffffffffffffUL)->next = skreq;
  } else {
  }
  skreq->next = (struct skd_request_context *)0;
  i = i + 1;
  ldv_36276: ;
  if ((u32 )i < skdev->num_req_context) {
    goto ldv_36275;
  } else {
  }
  skdev->skreq_free_list = skdev->skreq_table;
  i = 0;
  goto ldv_36280;
  ldv_36279:
  skmsg = skdev->skmsg_table + (unsigned long )i;
  if ((unsigned int )skmsg->state == 1U) {
    skd_log_skmsg(skdev, skmsg, "salvaged");
    tmp___1 = ldv__builtin_expect((skmsg->id & 1024U) == 0U, 0L);
    if (tmp___1 != 0L) {
      printk("\vAssertion failed! %s,%s,%s,line=%d\n", (char *)"(skmsg->id & SKD_ID_INCR) != 0",
             (char *)"/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/9607/dscv_tempdir/dscv/ri/43_2a/drivers/block/skd_main.o.c.prepared",
             "skd_recover_requests", 3319);
    } else {
    }
    skmsg->state = 0;
    skmsg->id = skmsg->id + 1024U;
  } else {
  }
  if (i > 0) {
    (skmsg + 0xffffffffffffffffUL)->next = skmsg;
  } else {
  }
  skmsg->next = (struct skd_fitmsg_context *)0;
  i = i + 1;
  ldv_36280: ;
  if ((u32 )i < skdev->num_fitmsg_context) {
    goto ldv_36279;
  } else {
  }
  skdev->skmsg_free_list = skdev->skmsg_table;
  i = 0;
  goto ldv_36286;
  ldv_36285:
  skspcl = skdev->skspcl_table + (unsigned long )i;
  if ((unsigned int )skspcl->req.state == 2U) {
    if ((unsigned int )skspcl->orphaned != 0U) {
      descriptor.modname = "skd";
      descriptor.function = "skd_recover_requests";
      descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/9607/dscv_tempdir/dscv/ri/43_2a/drivers/block/skd_main.o.c.prepared";
      descriptor.format = "%s:%s:%d orphaned %p\n";
      descriptor.lineno = 3343U;
      descriptor.flags = 0U;
      tmp___2 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
      if (tmp___2 != 0L) {
        __dynamic_pr_debug(& descriptor, "%s:%s:%d orphaned %p\n", (char *)(& skdev->name),
                           "skd_recover_requests", 3343, skspcl);
      } else {
      }
      skd_release_special(skdev, skspcl);
    } else {
      descriptor___0.modname = "skd";
      descriptor___0.function = "skd_recover_requests";
      descriptor___0.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/9607/dscv_tempdir/dscv/ri/43_2a/drivers/block/skd_main.o.c.prepared";
      descriptor___0.format = "%s:%s:%d not orphaned %p\n";
      descriptor___0.lineno = 3348U;
      descriptor___0.flags = 0U;
      tmp___3 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
      if (tmp___3 != 0L) {
        __dynamic_pr_debug(& descriptor___0, "%s:%s:%d not orphaned %p\n", (char *)(& skdev->name),
                           "skd_recover_requests", 3348, skspcl);
      } else {
      }
      skspcl->req.state = 5;
    }
  } else {
  }
  i = i + 1;
  ldv_36286: ;
  if (skdev->n_special > i) {
    goto ldv_36285;
  } else {
  }
  skdev->skspcl_free_list = skdev->skspcl_table;
  i = 0;
  goto ldv_36289;
  ldv_36288:
  skdev->timeout_slot[i] = 0U;
  i = i + 1;
  ldv_36289: ;
  if ((unsigned int )i <= 3U) {
    goto ldv_36288;
  } else {
  }
  skdev->in_flight = 0U;
  return;
}
}
static void skd_isr_msg_from_dev(struct skd_device *skdev )
{
  u32 mfd ;
  u32 mtd ;
  u32 data ;
  struct _ddebug descriptor ;
  long tmp ;
  unsigned long tmp___0 ;
  char const *tmp___1 ;
  {
  mfd = skd_reg_read32(skdev, 1352U);
  descriptor.modname = "skd";
  descriptor.function = "skd_isr_msg_from_dev";
  descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/9607/dscv_tempdir/dscv/ri/43_2a/drivers/block/skd_main.o.c.prepared";
  descriptor.format = "%s:%s:%d mfd=0x%x last_mtd=0x%x\n";
  descriptor.lineno = 3370U;
  descriptor.flags = 0U;
  tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp != 0L) {
    __dynamic_pr_debug(& descriptor, "%s:%s:%d mfd=0x%x last_mtd=0x%x\n", (char *)(& skdev->name),
                       "skd_isr_msg_from_dev", 3370, mfd, skdev->last_mtd);
  } else {
  }
  if (mfd >> 24 != skdev->last_mtd >> 24) {
    return;
  } else {
  }
  switch (mfd >> 24) {
  case 1U:
  skdev->proto_ver = (mfd >> 20) & 15U;
  if (skdev->proto_ver != 1U) {
    printk("\v(%s): protocol mismatch\n", (char *)(& skdev->name));
    printk("\v(%s):   got=%d support=%d\n", (char *)(& skdev->name), skdev->proto_ver,
           1);
    printk("\v(%s):   please upgrade driver\n", (char *)(& skdev->name));
    skdev->state = 13;
    skd_soft_reset(skdev);
    goto ldv_36300;
  } else {
  }
  mtd = 33554432U;
  skd_reg_write32(skdev, mtd, 1344U);
  skdev->last_mtd = mtd;
  goto ldv_36300;
  case 2U:
  skdev->dev_max_queue_depth = mfd & 65535U;
  mtd = 50331904U;
  skd_reg_write32(skdev, mtd, 1344U);
  skdev->last_mtd = mtd;
  goto ldv_36300;
  case 3U:
  skd_reg_write64(skdev, skdev->cq_dma_address, 1408U);
  mtd = 67108864U;
  skd_reg_write32(skdev, mtd, 1344U);
  skdev->last_mtd = mtd;
  goto ldv_36300;
  case 4U:
  skd_reset_skcomp(skdev);
  mtd = (skdev->devno & 65535U) | 117440512U;
  skd_reg_write32(skdev, mtd, 1344U);
  skdev->last_mtd = mtd;
  goto ldv_36300;
  case 7U:
  tmp___0 = get_seconds();
  skdev->connect_time_stamp = (u32 )tmp___0;
  data = skdev->connect_time_stamp & 65535U;
  mtd = (data & 65535U) | 134217728U;
  skd_reg_write32(skdev, mtd, 1344U);
  skdev->last_mtd = mtd;
  goto ldv_36300;
  case 8U:
  skdev->drive_jiffies = mfd & 65535U;
  data = skdev->connect_time_stamp >> 16;
  mtd = (data & 65535U) | 150994944U;
  skd_reg_write32(skdev, mtd, 1344U);
  skdev->last_mtd = mtd;
  goto ldv_36300;
  case 9U:
  skdev->drive_jiffies = skdev->drive_jiffies | (mfd << 16);
  mtd = 83886080U;
  skd_reg_write32(skdev, mtd, 1344U);
  skdev->last_mtd = mtd;
  tmp___1 = skd_name(skdev);
  printk("\v(%s): Time sync driver=0x%x device=0x%x\n", tmp___1, skdev->connect_time_stamp,
         skdev->drive_jiffies);
  goto ldv_36300;
  case 5U:
  skdev->last_mtd = 0U;
  goto ldv_36300;
  default: ;
  goto ldv_36300;
  }
  ldv_36300: ;
  return;
}
}
static void skd_disable_interrupts(struct skd_device *skdev )
{
  u32 sense ;
  struct _ddebug descriptor ;
  long tmp ;
  {
  sense = skd_reg_read32(skdev, 1280U);
  sense = sense & 4294967167U;
  skd_reg_write32(skdev, sense, 1280U);
  descriptor.modname = "skd";
  descriptor.function = "skd_disable_interrupts";
  descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/9607/dscv_tempdir/dscv/ri/43_2a/drivers/block/skd_main.o.c.prepared";
  descriptor.format = "%s:%s:%d sense 0x%x\n";
  descriptor.lineno = 3466U;
  descriptor.flags = 0U;
  tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp != 0L) {
    __dynamic_pr_debug(& descriptor, "%s:%s:%d sense 0x%x\n", (char *)(& skdev->name),
                       "skd_disable_interrupts", 3466, sense);
  } else {
  }
  skd_reg_write32(skdev, 4294967295U, 1320U);
  return;
}
}
static void skd_enable_interrupts(struct skd_device *skdev )
{
  u32 val ;
  struct _ddebug descriptor ;
  long tmp ;
  struct _ddebug descriptor___0 ;
  long tmp___0 ;
  {
  val = 7U;
  skd_reg_write32(skdev, ~ val, 1320U);
  descriptor.modname = "skd";
  descriptor.function = "skd_enable_interrupts";
  descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/9607/dscv_tempdir/dscv/ri/43_2a/drivers/block/skd_main.o.c.prepared";
  descriptor.format = "%s:%s:%d interrupt mask=0x%x\n";
  descriptor.lineno = 3486U;
  descriptor.flags = 0U;
  tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp != 0L) {
    __dynamic_pr_debug(& descriptor, "%s:%s:%d interrupt mask=0x%x\n", (char *)(& skdev->name),
                       "skd_enable_interrupts", 3486, ~ val);
  } else {
  }
  val = skd_reg_read32(skdev, 1280U);
  val = val | 128U;
  descriptor___0.modname = "skd";
  descriptor___0.function = "skd_enable_interrupts";
  descriptor___0.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/9607/dscv_tempdir/dscv/ri/43_2a/drivers/block/skd_main.o.c.prepared";
  descriptor___0.format = "%s:%s:%d control=0x%x\n";
  descriptor___0.lineno = 3491U;
  descriptor___0.flags = 0U;
  tmp___0 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
  if (tmp___0 != 0L) {
    __dynamic_pr_debug(& descriptor___0, "%s:%s:%d control=0x%x\n", (char *)(& skdev->name),
                       "skd_enable_interrupts", 3491, val);
  } else {
  }
  skd_reg_write32(skdev, val, 1280U);
  return;
}
}
static void skd_soft_reset(struct skd_device *skdev )
{
  u32 val ;
  struct _ddebug descriptor ;
  long tmp ;
  {
  val = skd_reg_read32(skdev, 1280U);
  val = val | 2U;
  descriptor.modname = "skd";
  descriptor.function = "skd_soft_reset";
  descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/9607/dscv_tempdir/dscv/ri/43_2a/drivers/block/skd_main.o.c.prepared";
  descriptor.format = "%s:%s:%d control=0x%x\n";
  descriptor.lineno = 3508U;
  descriptor.flags = 0U;
  tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp != 0L) {
    __dynamic_pr_debug(& descriptor, "%s:%s:%d control=0x%x\n", (char *)(& skdev->name),
                       "skd_soft_reset", 3508, val);
  } else {
  }
  skd_reg_write32(skdev, val, 1280U);
  return;
}
}
static void skd_start_device(struct skd_device *skdev )
{
  unsigned long flags ;
  u32 sense ;
  u32 state ;
  struct _ddebug descriptor ;
  long tmp ;
  char const *tmp___0 ;
  struct _ddebug descriptor___0 ;
  long tmp___1 ;
  char const *tmp___2 ;
  char const *tmp___3 ;
  char const *tmp___4 ;
  char const *tmp___5 ;
  struct _ddebug descriptor___1 ;
  long tmp___6 ;
  struct _ddebug descriptor___2 ;
  long tmp___7 ;
  char const *tmp___8 ;
  struct _ddebug descriptor___3 ;
  long tmp___9 ;
  struct _ddebug descriptor___4 ;
  long tmp___10 ;
  struct _ddebug descriptor___5 ;
  long tmp___11 ;
  struct _ddebug descriptor___6 ;
  long tmp___12 ;
  struct _ddebug descriptor___7 ;
  long tmp___13 ;
  {
  ldv_spin_lock();
  skd_reg_write32(skdev, 2023U, 1312U);
  sense = skd_reg_read32(skdev, 1296U);
  descriptor.modname = "skd";
  descriptor.function = "skd_start_device";
  descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/9607/dscv_tempdir/dscv/ri/43_2a/drivers/block/skd_main.o.c.prepared";
  descriptor.format = "%s:%s:%d initial status=0x%x\n";
  descriptor.lineno = 3526U;
  descriptor.flags = 0U;
  tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp != 0L) {
    __dynamic_pr_debug(& descriptor, "%s:%s:%d initial status=0x%x\n", (char *)(& skdev->name),
                       "skd_start_device", 3526, sense);
  } else {
  }
  state = sense & 255U;
  skdev->drive_state = state;
  skdev->last_mtd = 0U;
  skdev->state = 3;
  skdev->timer_countdown = 8U;
  skd_enable_interrupts(skdev);
  switch (skdev->drive_state) {
  case 0U:
  tmp___0 = skd_name(skdev);
  printk("\v(%s): Drive offline...\n", tmp___0);
  goto ldv_36337;
  case 12U:
  descriptor___0.modname = "skd";
  descriptor___0.function = "skd_start_device";
  descriptor___0.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/9607/dscv_tempdir/dscv/ri/43_2a/drivers/block/skd_main.o.c.prepared";
  descriptor___0.format = "%s:%s:%d FIT_SR_DRIVE_FW_BOOTING %s\n";
  descriptor___0.lineno = 3544U;
  descriptor___0.flags = 0U;
  tmp___1 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
  if (tmp___1 != 0L) {
    __dynamic_pr_debug(& descriptor___0, "%s:%s:%d FIT_SR_DRIVE_FW_BOOTING %s\n",
                       (char *)(& skdev->name), "skd_start_device", 3544, (char *)(& skdev->name));
  } else {
  }
  skdev->state = 17;
  skdev->timer_countdown = 90U;
  goto ldv_36337;
  case 10U:
  tmp___2 = skd_name(skdev);
  printk("\016(%s): Start: BUSY_SANITIZE\n", tmp___2);
  skdev->state = 15;
  skdev->timer_countdown = 60U;
  goto ldv_36337;
  case 11U:
  tmp___3 = skd_name(skdev);
  printk("\016(%s): Start: BUSY_ERASE\n", tmp___3);
  skdev->state = 14;
  skdev->timer_countdown = 60U;
  goto ldv_36337;
  case 1U: ;
  case 3U:
  skd_soft_reset(skdev);
  goto ldv_36337;
  case 4U:
  tmp___4 = skd_name(skdev);
  printk("\v(%s): Drive Busy...\n", tmp___4);
  skdev->state = 2;
  skdev->timer_countdown = 60U;
  goto ldv_36337;
  case 8U:
  tmp___5 = skd_name(skdev);
  printk("\v(%s) drive soft reset in prog\n", tmp___5);
  goto ldv_36337;
  case 5U:
  skd_drive_fault(skdev);
  descriptor___1.modname = "skd";
  descriptor___1.function = "skd_start_device";
  descriptor___1.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/9607/dscv_tempdir/dscv/ri/43_2a/drivers/block/skd_main.o.c.prepared";
  descriptor___1.format = "%s:%s:%d starting %s queue\n";
  descriptor___1.lineno = 3586U;
  descriptor___1.flags = 0U;
  tmp___6 = ldv__builtin_expect((long )descriptor___1.flags & 1L, 0L);
  if (tmp___6 != 0L) {
    __dynamic_pr_debug(& descriptor___1, "%s:%s:%d starting %s queue\n", (char *)(& skdev->name),
                       "skd_start_device", 3586, (char *)(& skdev->name));
  } else {
  }
  blk_start_queue(skdev->queue);
  skdev->gendisk_on = -1;
  __wake_up(& skdev->waitq, 1U, 1, (void *)0);
  goto ldv_36337;
  case 255U:
  skd_drive_disappeared(skdev);
  descriptor___2.modname = "skd";
  descriptor___2.function = "skd_start_device";
  descriptor___2.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/9607/dscv_tempdir/dscv/ri/43_2a/drivers/block/skd_main.o.c.prepared";
  descriptor___2.format = "%s:%s:%d starting %s queue to error-out reqs\n";
  descriptor___2.lineno = 3598U;
  descriptor___2.flags = 0U;
  tmp___7 = ldv__builtin_expect((long )descriptor___2.flags & 1L, 0L);
  if (tmp___7 != 0L) {
    __dynamic_pr_debug(& descriptor___2, "%s:%s:%d starting %s queue to error-out reqs\n",
                       (char *)(& skdev->name), "skd_start_device", 3598, (char *)(& skdev->name));
  } else {
  }
  blk_start_queue(skdev->queue);
  skdev->gendisk_on = -1;
  __wake_up(& skdev->waitq, 1U, 1, (void *)0);
  goto ldv_36337;
  default:
  tmp___8 = skd_name(skdev);
  printk("\v(%s) Start: unknown state %x\n", tmp___8, skdev->drive_state);
  goto ldv_36337;
  }
  ldv_36337:
  state = skd_reg_read32(skdev, 1280U);
  descriptor___3.modname = "skd";
  descriptor___3.function = "skd_start_device";
  descriptor___3.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/9607/dscv_tempdir/dscv/ri/43_2a/drivers/block/skd_main.o.c.prepared";
  descriptor___3.format = "%s:%s:%d FIT Control Status=0x%x\n";
  descriptor___3.lineno = 3612U;
  descriptor___3.flags = 0U;
  tmp___9 = ldv__builtin_expect((long )descriptor___3.flags & 1L, 0L);
  if (tmp___9 != 0L) {
    __dynamic_pr_debug(& descriptor___3, "%s:%s:%d FIT Control Status=0x%x\n", (char *)(& skdev->name),
                       "skd_start_device", 3612, state);
  } else {
  }
  state = skd_reg_read32(skdev, 1312U);
  descriptor___4.modname = "skd";
  descriptor___4.function = "skd_start_device";
  descriptor___4.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/9607/dscv_tempdir/dscv/ri/43_2a/drivers/block/skd_main.o.c.prepared";
  descriptor___4.format = "%s:%s:%d Intr Status=0x%x\n";
  descriptor___4.lineno = 3616U;
  descriptor___4.flags = 0U;
  tmp___10 = ldv__builtin_expect((long )descriptor___4.flags & 1L, 0L);
  if (tmp___10 != 0L) {
    __dynamic_pr_debug(& descriptor___4, "%s:%s:%d Intr Status=0x%x\n", (char *)(& skdev->name),
                       "skd_start_device", 3616, state);
  } else {
  }
  state = skd_reg_read32(skdev, 1320U);
  descriptor___5.modname = "skd";
  descriptor___5.function = "skd_start_device";
  descriptor___5.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/9607/dscv_tempdir/dscv/ri/43_2a/drivers/block/skd_main.o.c.prepared";
  descriptor___5.format = "%s:%s:%d Intr Mask=0x%x\n";
  descriptor___5.lineno = 3620U;
  descriptor___5.flags = 0U;
  tmp___11 = ldv__builtin_expect((long )descriptor___5.flags & 1L, 0L);
  if (tmp___11 != 0L) {
    __dynamic_pr_debug(& descriptor___5, "%s:%s:%d Intr Mask=0x%x\n", (char *)(& skdev->name),
                       "skd_start_device", 3620, state);
  } else {
  }
  state = skd_reg_read32(skdev, 1352U);
  descriptor___6.modname = "skd";
  descriptor___6.function = "skd_start_device";
  descriptor___6.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/9607/dscv_tempdir/dscv/ri/43_2a/drivers/block/skd_main.o.c.prepared";
  descriptor___6.format = "%s:%s:%d Msg from Dev=0x%x\n";
  descriptor___6.lineno = 3624U;
  descriptor___6.flags = 0U;
  tmp___12 = ldv__builtin_expect((long )descriptor___6.flags & 1L, 0L);
  if (tmp___12 != 0L) {
    __dynamic_pr_debug(& descriptor___6, "%s:%s:%d Msg from Dev=0x%x\n", (char *)(& skdev->name),
                       "skd_start_device", 3624, state);
  } else {
  }
  state = skd_reg_read32(skdev, 1416U);
  descriptor___7.modname = "skd";
  descriptor___7.function = "skd_start_device";
  descriptor___7.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/9607/dscv_tempdir/dscv/ri/43_2a/drivers/block/skd_main.o.c.prepared";
  descriptor___7.format = "%s:%s:%d HW version=0x%x\n";
  descriptor___7.lineno = 3628U;
  descriptor___7.flags = 0U;
  tmp___13 = ldv__builtin_expect((long )descriptor___7.flags & 1L, 0L);
  if (tmp___13 != 0L) {
    __dynamic_pr_debug(& descriptor___7, "%s:%s:%d HW version=0x%x\n", (char *)(& skdev->name),
                       "skd_start_device", 3628, state);
  } else {
  }
  spin_unlock_irqrestore(& skdev->lock, flags);
  return;
}
}
static void skd_stop_device(struct skd_device *skdev )
{
  unsigned long flags ;
  struct skd_special_context *skspcl ;
  u32 dev_state ;
  int i ;
  char const *tmp ;
  char const *tmp___0 ;
  long __ret ;
  wait_queue_t __wait ;
  long __ret___0 ;
  long __int ;
  long tmp___1 ;
  bool __cond ;
  bool __cond___0 ;
  char const *tmp___2 ;
  char const *tmp___3 ;
  char const *tmp___4 ;
  u32 tmp___5 ;
  long volatile __ret___1 ;
  struct task_struct *tmp___6 ;
  struct task_struct *tmp___7 ;
  struct task_struct *tmp___8 ;
  struct task_struct *tmp___9 ;
  unsigned long tmp___10 ;
  char const *tmp___11 ;
  {
  skspcl = & skdev->internal_skspcl;
  ldv_spin_lock();
  if ((unsigned int )skdev->state != 4U) {
    tmp = skd_name(skdev);
    printk("\v(%s): skd_stop_device not online no sync\n", tmp);
    goto stop_out;
  } else {
  }
  if ((unsigned int )skspcl->req.state != 0U) {
    tmp___0 = skd_name(skdev);
    printk("\v(%s): skd_stop_device no special\n", tmp___0);
    goto stop_out;
  } else {
  }
  skdev->state = 18;
  skdev->sync_done = 0;
  skd_send_internal_skspcl(skdev, skspcl, 53);
  spin_unlock_irqrestore(& skdev->lock, flags);
  __ret = 2500L;
  __cond___0 = skdev->sync_done != 0;
  if ((int )__cond___0 && __ret == 0L) {
    __ret = 1L;
  } else {
  }
  if (((int )__cond___0 || __ret == 0L) == 0) {
    __ret___0 = 2500L;
    INIT_LIST_HEAD(& __wait.task_list);
    __wait.flags = 0U;
    ldv_36374:
    tmp___1 = prepare_to_wait_event(& skdev->waitq, & __wait, 1);
    __int = tmp___1;
    __cond = skdev->sync_done != 0;
    if ((int )__cond && __ret___0 == 0L) {
      __ret___0 = 1L;
    } else {
    }
    if (((int )__cond || __ret___0 == 0L) != 0) {
      goto ldv_36373;
    } else {
    }
    if (__int != 0L) {
      __ret___0 = __int;
      goto ldv_36373;
    } else {
    }
    __ret___0 = schedule_timeout(__ret___0);
    goto ldv_36374;
    ldv_36373:
    finish_wait(& skdev->waitq, & __wait);
    __ret = __ret___0;
  } else {
  }
  ldv_spin_lock();
  switch (skdev->sync_done) {
  case 0:
  tmp___2 = skd_name(skdev);
  printk("\v(%s): skd_stop_device no sync\n", tmp___2);
  goto ldv_36378;
  case 1:
  tmp___3 = skd_name(skdev);
  printk("\v(%s): skd_stop_device sync done\n", tmp___3);
  goto ldv_36378;
  default:
  tmp___4 = skd_name(skdev);
  printk("\v(%s): skd_stop_device sync error\n", tmp___4);
  }
  ldv_36378: ;
  stop_out:
  skdev->state = 10;
  spin_unlock_irqrestore(& skdev->lock, flags);
  skd_kill_timer(skdev);
  ldv_spin_lock();
  skd_disable_interrupts(skdev);
  skd_reg_write32(skdev, 2023U, 1312U);
  skd_reg_write32(skdev, 2U, 1280U);
  spin_unlock_irqrestore(& skdev->lock, flags);
  i = 0;
  goto ldv_36391;
  ldv_36390:
  tmp___5 = skd_reg_read32(skdev, 1296U);
  dev_state = tmp___5 & 255U;
  if (dev_state == 1U) {
    goto ldv_36381;
  } else {
  }
  __ret___1 = 1L;
  switch (8UL) {
  case 1UL:
  tmp___6 = get_current();
  __asm__ volatile ("xchgb %b0, %1\n": "+q" (__ret___1), "+m" (tmp___6->state): : "memory",
                       "cc");
  goto ldv_36384;
  case 2UL:
  tmp___7 = get_current();
  __asm__ volatile ("xchgw %w0, %1\n": "+r" (__ret___1), "+m" (tmp___7->state): : "memory",
                       "cc");
  goto ldv_36384;
  case 4UL:
  tmp___8 = get_current();
  __asm__ volatile ("xchgl %0, %1\n": "+r" (__ret___1), "+m" (tmp___8->state): : "memory",
                       "cc");
  goto ldv_36384;
  case 8UL:
  tmp___9 = get_current();
  __asm__ volatile ("xchgq %q0, %1\n": "+r" (__ret___1), "+m" (tmp___9->state): : "memory",
                       "cc");
  goto ldv_36384;
  default:
  __xchg_wrong_size();
  }
  ldv_36384:
  tmp___10 = msecs_to_jiffies(100U);
  schedule_timeout((long )tmp___10);
  i = i + 1;
  ldv_36391: ;
  if (i <= 9) {
    goto ldv_36390;
  } else {
  }
  ldv_36381: ;
  if (dev_state != 1U) {
    tmp___11 = skd_name(skdev);
    printk("\v(%s): skd_stop_device state error 0x%02x\n", tmp___11, dev_state);
  } else {
  }
  return;
}
}
static void skd_restart_device(struct skd_device *skdev )
{
  u32 state ;
  struct _ddebug descriptor ;
  long tmp ;
  {
  skd_reg_write32(skdev, 2023U, 1312U);
  state = skd_reg_read32(skdev, 1296U);
  descriptor.modname = "skd";
  descriptor.function = "skd_restart_device";
  descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/9607/dscv_tempdir/dscv/ri/43_2a/drivers/block/skd_main.o.c.prepared";
  descriptor.format = "%s:%s:%d drive status=0x%x\n";
  descriptor.lineno = 3722U;
  descriptor.flags = 0U;
  tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp != 0L) {
    __dynamic_pr_debug(& descriptor, "%s:%s:%d drive status=0x%x\n", (char *)(& skdev->name),
                       "skd_restart_device", 3722, state);
  } else {
  }
  state = state & 255U;
  skdev->drive_state = state;
  skdev->last_mtd = 0U;
  skdev->state = 8;
  skdev->timer_countdown = 240U;
  skd_soft_reset(skdev);
  return;
}
}
static int skd_quiesce_dev(struct skd_device *skdev )
{
  int rc ;
  struct _ddebug descriptor ;
  long tmp ;
  struct _ddebug descriptor___0 ;
  long tmp___0 ;
  {
  rc = 0;
  switch ((unsigned int )skdev->state) {
  case 2U: ;
  case 16U:
  descriptor.modname = "skd";
  descriptor.function = "skd_quiesce_dev";
  descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/9607/dscv_tempdir/dscv/ri/43_2a/drivers/block/skd_main.o.c.prepared";
  descriptor.format = "%s:%s:%d stopping %s queue\n";
  descriptor.lineno = 3743U;
  descriptor.flags = 0U;
  tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp != 0L) {
    __dynamic_pr_debug(& descriptor, "%s:%s:%d stopping %s queue\n", (char *)(& skdev->name),
                       "skd_quiesce_dev", 3743, (char *)(& skdev->name));
  } else {
  }
  blk_stop_queue(skdev->queue);
  goto ldv_36406;
  case 4U: ;
  case 10U: ;
  case 18U: ;
  case 5U: ;
  case 6U: ;
  case 3U: ;
  case 8U: ;
  case 9U: ;
  default:
  rc = -22;
  descriptor___0.modname = "skd";
  descriptor___0.function = "skd_quiesce_dev";
  descriptor___0.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/9607/dscv_tempdir/dscv/ri/43_2a/drivers/block/skd_main.o.c.prepared";
  descriptor___0.format = "%s:%s:%d state [%d] not implemented\n";
  descriptor___0.lineno = 3757U;
  descriptor___0.flags = 0U;
  tmp___0 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
  if (tmp___0 != 0L) {
    __dynamic_pr_debug(& descriptor___0, "%s:%s:%d state [%d] not implemented\n",
                       (char *)(& skdev->name), "skd_quiesce_dev", 3757, (unsigned int )skdev->state);
  } else {
  }
  }
  ldv_36406: ;
  return (rc);
}
}
static int skd_unquiesce_dev(struct skd_device *skdev )
{
  int prev_driver_state ;
  struct _ddebug descriptor ;
  long tmp ;
  struct _ddebug descriptor___0 ;
  long tmp___0 ;
  char const *tmp___1 ;
  char const *tmp___2 ;
  char const *tmp___3 ;
  struct _ddebug descriptor___1 ;
  long tmp___4 ;
  struct _ddebug descriptor___2 ;
  long tmp___5 ;
  char const *tmp___6 ;
  struct _ddebug descriptor___3 ;
  long tmp___7 ;
  {
  prev_driver_state = (int )skdev->state;
  skd_log_skdev(skdev, "unquiesce");
  if ((unsigned int )skdev->state == 4U) {
    descriptor.modname = "skd";
    descriptor.function = "skd_unquiesce_dev";
    descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/9607/dscv_tempdir/dscv/ri/43_2a/drivers/block/skd_main.o.c.prepared";
    descriptor.format = "%s:%s:%d **** device already ONLINE\n";
    descriptor.lineno = 3770U;
    descriptor.flags = 0U;
    tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    if (tmp != 0L) {
      __dynamic_pr_debug(& descriptor, "%s:%s:%d **** device already ONLINE\n", (char *)(& skdev->name),
                         "skd_unquiesce_dev", 3770);
    } else {
    }
    return (0);
  } else {
  }
  if (skdev->drive_state != 3U) {
    skdev->state = 2;
    descriptor___0.modname = "skd";
    descriptor___0.function = "skd_unquiesce_dev";
    descriptor___0.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/9607/dscv_tempdir/dscv/ri/43_2a/drivers/block/skd_main.o.c.prepared";
    descriptor___0.format = "%s:%s:%d drive BUSY state\n";
    descriptor___0.lineno = 3784U;
    descriptor___0.flags = 0U;
    tmp___0 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
    if (tmp___0 != 0L) {
      __dynamic_pr_debug(& descriptor___0, "%s:%s:%d drive BUSY state\n", (char *)(& skdev->name),
                         "skd_unquiesce_dev", 3784);
    } else {
    }
    return (0);
  } else {
  }
  switch ((unsigned int )skdev->state) {
  case 6U: ;
  case 2U: ;
  case 16U: ;
  case 14U: ;
  case 3U: ;
  case 8U: ;
  case 11U: ;
  case 1U: ;
  case 0U:
  skdev->state = 4;
  tmp___1 = skd_skdev_state_to_str(skdev->state);
  tmp___2 = skd_skdev_state_to_str((enum skd_drvr_state )prev_driver_state);
  tmp___3 = skd_name(skdev);
  printk("\v(%s): Driver state %s(%d)=>%s(%d)\n", tmp___3, tmp___2, prev_driver_state,
         tmp___1, (unsigned int )skdev->state);
  descriptor___1.modname = "skd";
  descriptor___1.function = "skd_unquiesce_dev";
  descriptor___1.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/9607/dscv_tempdir/dscv/ri/43_2a/drivers/block/skd_main.o.c.prepared";
  descriptor___1.format = "%s:%s:%d **** device ONLINE...starting block queue\n";
  descriptor___1.lineno = 3809U;
  descriptor___1.flags = 0U;
  tmp___4 = ldv__builtin_expect((long )descriptor___1.flags & 1L, 0L);
  if (tmp___4 != 0L) {
    __dynamic_pr_debug(& descriptor___1, "%s:%s:%d **** device ONLINE...starting block queue\n",
                       (char *)(& skdev->name), "skd_unquiesce_dev", 3809);
  } else {
  }
  descriptor___2.modname = "skd";
  descriptor___2.function = "skd_unquiesce_dev";
  descriptor___2.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/9607/dscv_tempdir/dscv/ri/43_2a/drivers/block/skd_main.o.c.prepared";
  descriptor___2.format = "%s:%s:%d starting %s queue\n";
  descriptor___2.lineno = 3811U;
  descriptor___2.flags = 0U;
  tmp___5 = ldv__builtin_expect((long )descriptor___2.flags & 1L, 0L);
  if (tmp___5 != 0L) {
    __dynamic_pr_debug(& descriptor___2, "%s:%s:%d starting %s queue\n", (char *)(& skdev->name),
                       "skd_unquiesce_dev", 3811, (char *)(& skdev->name));
  } else {
  }
  tmp___6 = skd_name(skdev);
  printk("\016(%s): STEC s1120 ONLINE\n", tmp___6);
  blk_start_queue(skdev->queue);
  skdev->gendisk_on = 1;
  __wake_up(& skdev->waitq, 1U, 1, (void *)0);
  goto ldv_36435;
  case 12U: ;
  default:
  descriptor___3.modname = "skd";
  descriptor___3.function = "skd_unquiesce_dev";
  descriptor___3.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/9607/dscv_tempdir/dscv/ri/43_2a/drivers/block/skd_main.o.c.prepared";
  descriptor___3.format = "%s:%s:%d **** driver state %d, not implemented \n";
  descriptor___3.lineno = 3822U;
  descriptor___3.flags = 0U;
  tmp___7 = ldv__builtin_expect((long )descriptor___3.flags & 1L, 0L);
  if (tmp___7 != 0L) {
    __dynamic_pr_debug(& descriptor___3, "%s:%s:%d **** driver state %d, not implemented \n",
                       (char *)(& skdev->name), "skd_unquiesce_dev", 3822, (unsigned int )skdev->state);
  } else {
  }
  return (-16);
  }
  ldv_36435: ;
  return (0);
}
}
static irqreturn_t skd_reserved_isr(int irq , void *skd_host_data )
{
  struct skd_device *skdev ;
  unsigned long flags ;
  struct _ddebug descriptor ;
  u32 tmp ;
  long tmp___0 ;
  u32 tmp___1 ;
  char const *tmp___2 ;
  {
  skdev = (struct skd_device *)skd_host_data;
  ldv_spin_lock();
  descriptor.modname = "skd";
  descriptor.function = "skd_reserved_isr";
  descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/9607/dscv_tempdir/dscv/ri/43_2a/drivers/block/skd_main.o.c.prepared";
  descriptor.format = "%s:%s:%d MSIX = 0x%x\n";
  descriptor.lineno = 3842U;
  descriptor.flags = 0U;
  tmp___0 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp___0 != 0L) {
    tmp = skd_reg_read32(skdev, 1312U);
    __dynamic_pr_debug(& descriptor, "%s:%s:%d MSIX = 0x%x\n", (char *)(& skdev->name),
                       "skd_reserved_isr", 3842, tmp);
  } else {
  }
  tmp___1 = skd_reg_read32(skdev, 1312U);
  tmp___2 = skd_name(skdev);
  printk("\v(%s): MSIX reserved irq %d = 0x%x\n", tmp___2, irq, tmp___1);
  skd_reg_write32(skdev, 24U, 1312U);
  spin_unlock_irqrestore(& skdev->lock, flags);
  return (1);
}
}
static irqreturn_t skd_statec_isr(int irq , void *skd_host_data )
{
  struct skd_device *skdev ;
  unsigned long flags ;
  struct _ddebug descriptor ;
  u32 tmp ;
  long tmp___0 ;
  {
  skdev = (struct skd_device *)skd_host_data;
  ldv_spin_lock();
  descriptor.modname = "skd";
  descriptor.function = "skd_statec_isr";
  descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/9607/dscv_tempdir/dscv/ri/43_2a/drivers/block/skd_main.o.c.prepared";
  descriptor.format = "%s:%s:%d MSIX = 0x%x\n";
  descriptor.lineno = 3858U;
  descriptor.flags = 0U;
  tmp___0 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp___0 != 0L) {
    tmp = skd_reg_read32(skdev, 1312U);
    __dynamic_pr_debug(& descriptor, "%s:%s:%d MSIX = 0x%x\n", (char *)(& skdev->name),
                       "skd_statec_isr", 3858, tmp);
  } else {
  }
  skd_reg_write32(skdev, 1U, 1312U);
  skd_isr_fwstate(skdev);
  spin_unlock_irqrestore(& skdev->lock, flags);
  return (1);
}
}
static irqreturn_t skd_comp_q(int irq , void *skd_host_data )
{
  struct skd_device *skdev ;
  unsigned long flags ;
  int flush_enqueued ;
  int deferred ;
  struct _ddebug descriptor ;
  u32 tmp ;
  long tmp___0 ;
  {
  skdev = (struct skd_device *)skd_host_data;
  flush_enqueued = 0;
  ldv_spin_lock();
  descriptor.modname = "skd";
  descriptor.function = "skd_comp_q";
  descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/9607/dscv_tempdir/dscv/ri/43_2a/drivers/block/skd_main.o.c.prepared";
  descriptor.format = "%s:%s:%d MSIX = 0x%x\n";
  descriptor.lineno = 3875U;
  descriptor.flags = 0U;
  tmp___0 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp___0 != 0L) {
    tmp = skd_reg_read32(skdev, 1312U);
    __dynamic_pr_debug(& descriptor, "%s:%s:%d MSIX = 0x%x\n", (char *)(& skdev->name),
                       "skd_comp_q", 3875, tmp);
  } else {
  }
  skd_reg_write32(skdev, 2U, 1312U);
  deferred = skd_isr_completion_posted(skdev, skd_isr_comp_limit, & flush_enqueued);
  if (flush_enqueued != 0) {
    skd_request_fn(skdev->queue);
  } else {
  }
  if (deferred != 0) {
    schedule_work(& skdev->completion_worker);
  } else
  if (flush_enqueued == 0) {
    skd_request_fn(skdev->queue);
  } else {
  }
  spin_unlock_irqrestore(& skdev->lock, flags);
  return (1);
}
}
static irqreturn_t skd_msg_isr(int irq , void *skd_host_data )
{
  struct skd_device *skdev ;
  unsigned long flags ;
  struct _ddebug descriptor ;
  u32 tmp ;
  long tmp___0 ;
  {
  skdev = (struct skd_device *)skd_host_data;
  ldv_spin_lock();
  descriptor.modname = "skd";
  descriptor.function = "skd_msg_isr";
  descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/9607/dscv_tempdir/dscv/ri/43_2a/drivers/block/skd_main.o.c.prepared";
  descriptor.format = "%s:%s:%d MSIX = 0x%x\n";
  descriptor.lineno = 3900U;
  descriptor.flags = 0U;
  tmp___0 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp___0 != 0L) {
    tmp = skd_reg_read32(skdev, 1312U);
    __dynamic_pr_debug(& descriptor, "%s:%s:%d MSIX = 0x%x\n", (char *)(& skdev->name),
                       "skd_msg_isr", 3900, tmp);
  } else {
  }
  skd_reg_write32(skdev, 4U, 1312U);
  skd_isr_msg_from_dev(skdev);
  spin_unlock_irqrestore(& skdev->lock, flags);
  return (1);
}
}
static irqreturn_t skd_qfull_isr(int irq , void *skd_host_data )
{
  struct skd_device *skdev ;
  unsigned long flags ;
  struct _ddebug descriptor ;
  u32 tmp ;
  long tmp___0 ;
  {
  skdev = (struct skd_device *)skd_host_data;
  ldv_spin_lock();
  descriptor.modname = "skd";
  descriptor.function = "skd_qfull_isr";
  descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/9607/dscv_tempdir/dscv/ri/43_2a/drivers/block/skd_main.o.c.prepared";
  descriptor.format = "%s:%s:%d MSIX = 0x%x\n";
  descriptor.lineno = 3915U;
  descriptor.flags = 0U;
  tmp___0 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp___0 != 0L) {
    tmp = skd_reg_read32(skdev, 1312U);
    __dynamic_pr_debug(& descriptor, "%s:%s:%d MSIX = 0x%x\n", (char *)(& skdev->name),
                       "skd_qfull_isr", 3915, tmp);
  } else {
  }
  skd_reg_write32(skdev, 480U, 1312U);
  spin_unlock_irqrestore(& skdev->lock, flags);
  return (1);
}
}
static struct skd_init_msix_entry msix_entries[13U] =
  { {"(DMA 0)", & skd_reserved_isr},
        {"(DMA 1)", & skd_reserved_isr},
        {"(DMA 2)", & skd_reserved_isr},
        {"(DMA 3)", & skd_reserved_isr},
        {"(State Change)", & skd_statec_isr},
        {"(COMPL_Q)", & skd_comp_q},
        {"(MSG)", & skd_msg_isr},
        {"(Reserved)", & skd_reserved_isr},
        {"(Reserved)", & skd_reserved_isr},
        {"(Queue Full 0)", & skd_qfull_isr},
        {"(Queue Full 1)", & skd_qfull_isr},
        {"(Queue Full 2)", & skd_qfull_isr},
        {"(Queue Full 3)", & skd_qfull_isr}};
static void skd_release_msix(struct skd_device *skdev )
{
  struct skd_msix_entry *qentry ;
  int i ;
  {
  if ((unsigned long )skdev->msix_entries != (unsigned long )((struct skd_msix_entry *)0)) {
    i = 0;
    goto ldv_36496;
    ldv_36495:
    qentry = skdev->msix_entries + (unsigned long )i;
    skdev = qentry->rsp;
    if (qentry->have_irq != 0) {
      devm_free_irq(& (skdev->pdev)->dev, qentry->vector, (void *)qentry->rsp);
    } else {
    }
    i = i + 1;
    ldv_36496: ;
    if ((u32 )i < skdev->msix_count) {
      goto ldv_36495;
    } else {
    }
    kfree((void const *)skdev->msix_entries);
  } else {
  }
  if (skdev->msix_count != 0U) {
    pci_disable_msix(skdev->pdev);
  } else {
  }
  skdev->msix_count = 0U;
  skdev->msix_entries = (struct skd_msix_entry *)0;
  return;
}
}
static int skd_acquire_msix(struct skd_device *skdev )
{
  int i ;
  int rc ;
  struct pci_dev *pdev ;
  struct msix_entry *entries ;
  struct skd_msix_entry *qentry ;
  void *tmp ;
  char const *tmp___0 ;
  void *tmp___1 ;
  char const *tmp___2 ;
  struct _ddebug descriptor ;
  char const *tmp___3 ;
  long tmp___4 ;
  char const *tmp___5 ;
  struct _ddebug descriptor___0 ;
  char const *tmp___6 ;
  long tmp___7 ;
  {
  pdev = skdev->pdev;
  tmp = kzalloc(104UL, 208U);
  entries = (struct msix_entry *)tmp;
  if ((unsigned long )entries == (unsigned long )((struct msix_entry *)0)) {
    return (-12);
  } else {
  }
  i = 0;
  goto ldv_36507;
  ldv_36506:
  (entries + (unsigned long )i)->entry = (u16 )i;
  i = i + 1;
  ldv_36507: ;
  if (i <= 12) {
    goto ldv_36506;
  } else {
  }
  rc = pci_enable_msix_exact(pdev, entries, 13);
  if (rc != 0) {
    tmp___0 = skd_name(skdev);
    printk("\v(%s): failed to enable MSI-X %d\n", tmp___0, rc);
    goto msix_out;
  } else {
  }
  skdev->msix_count = 13U;
  tmp___1 = kzalloc((unsigned long )skdev->msix_count * 56UL, 208U);
  skdev->msix_entries = (struct skd_msix_entry *)tmp___1;
  if ((unsigned long )skdev->msix_entries == (unsigned long )((struct skd_msix_entry *)0)) {
    rc = -12;
    tmp___2 = skd_name(skdev);
    printk("\v(%s): msix table allocation error\n", tmp___2);
    goto msix_out;
  } else {
  }
  i = 0;
  goto ldv_36513;
  ldv_36512:
  qentry = skdev->msix_entries + (unsigned long )i;
  qentry->vector = (entries + (unsigned long )i)->vector;
  qentry->entry = (u32 )(entries + (unsigned long )i)->entry;
  qentry->rsp = (struct skd_device *)0;
  qentry->have_irq = 0;
  descriptor.modname = "skd";
  descriptor.function = "skd_acquire_msix";
  descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/9607/dscv_tempdir/dscv/ri/43_2a/drivers/block/skd_main.o.c.prepared";
  descriptor.format = "%s:%s:%d %s: <%s> msix (%d) vec %d, entry %x\n";
  descriptor.lineno = 4026U;
  descriptor.flags = 0U;
  tmp___4 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp___4 != 0L) {
    tmp___3 = pci_name((struct pci_dev const *)pdev);
    __dynamic_pr_debug(& descriptor, "%s:%s:%d %s: <%s> msix (%d) vec %d, entry %x\n",
                       (char *)(& skdev->name), "skd_acquire_msix", 4026, tmp___3,
                       (char *)(& skdev->name), i, qentry->vector, qentry->entry);
  } else {
  }
  i = i + 1;
  ldv_36513: ;
  if ((u32 )i < skdev->msix_count) {
    goto ldv_36512;
  } else {
  }
  i = 0;
  goto ldv_36516;
  ldv_36515:
  qentry = skdev->msix_entries + (unsigned long )i;
  snprintf((char *)(& qentry->isr_name), 30UL, "%s%d-msix %s", (char *)"skd", skdev->devno,
           msix_entries[i].name);
  rc = devm_request_irq(& (skdev->pdev)->dev, qentry->vector, msix_entries[i].handler,
                        0UL, (char const *)(& qentry->isr_name), (void *)skdev);
  if (rc != 0) {
    tmp___5 = skd_name(skdev);
    printk("\v(%s): Unable to register(%d) MSI-X handler %d: %s\n", tmp___5, rc, i,
           (char *)(& qentry->isr_name));
    goto msix_out;
  } else {
    qentry->have_irq = 1;
    qentry->rsp = skdev;
  }
  i = i + 1;
  ldv_36516: ;
  if ((u32 )i < skdev->msix_count) {
    goto ldv_36515;
  } else {
  }
  descriptor___0.modname = "skd";
  descriptor___0.function = "skd_acquire_msix";
  descriptor___0.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/9607/dscv_tempdir/dscv/ri/43_2a/drivers/block/skd_main.o.c.prepared";
  descriptor___0.format = "%s:%s:%d %s: <%s> msix %d irq(s) enabled\n";
  descriptor___0.lineno = 4050U;
  descriptor___0.flags = 0U;
  tmp___7 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
  if (tmp___7 != 0L) {
    tmp___6 = pci_name((struct pci_dev const *)pdev);
    __dynamic_pr_debug(& descriptor___0, "%s:%s:%d %s: <%s> msix %d irq(s) enabled\n",
                       (char *)(& skdev->name), "skd_acquire_msix", 4050, tmp___6,
                       (char *)(& skdev->name), skdev->msix_count);
  } else {
  }
  return (0);
  msix_out: ;
  if ((unsigned long )entries != (unsigned long )((struct msix_entry *)0)) {
    kfree((void const *)entries);
  } else {
  }
  skd_release_msix(skdev);
  return (rc);
}
}
static int skd_acquire_irq(struct skd_device *skdev )
{
  int rc ;
  struct pci_dev *pdev ;
  char const *tmp ;
  char const *tmp___0 ;
  char const *tmp___1 ;
  char const *tmp___2 ;
  char const *tmp___3 ;
  char const *tmp___4 ;
  char const *tmp___5 ;
  char const *tmp___6 ;
  {
  pdev = skdev->pdev;
  skdev->msix_count = 0U;
  RETRY_IRQ_TYPE: ;
  switch ((unsigned int )skdev->irq_type) {
  case 2U:
  rc = skd_acquire_msix(skdev);
  if (rc == 0) {
    tmp = skd_name(skdev);
    printk("\016(%s): MSI-X %d irqs enabled\n", tmp, skdev->msix_count);
  } else {
    tmp___0 = skd_name(skdev);
    printk("\v(%s): failed to enable MSI-X, re-trying with MSI %d\n", tmp___0, rc);
    skdev->irq_type = 1;
    goto RETRY_IRQ_TYPE;
  }
  goto ldv_36526;
  case 1U:
  snprintf((char *)(& skdev->isr_name), 30UL, "%s%d-msi", (char *)"skd", skdev->devno);
  rc = pci_enable_msi_range(pdev, 1, 1);
  if (rc > 0) {
    rc = devm_request_irq(& pdev->dev, pdev->irq, & skd_isr, 0UL, (char const *)(& skdev->isr_name),
                          (void *)skdev);
    if (rc != 0) {
      pci_disable_msi(pdev);
      tmp___1 = skd_name(skdev);
      printk("\v(%s): failed to allocate the MSI interrupt %d\n", tmp___1, rc);
      goto RETRY_IRQ_LEGACY;
    } else {
    }
    tmp___2 = skd_name(skdev);
    printk("\016(%s): MSI irq %d enabled\n", tmp___2, pdev->irq);
  } else {
    RETRY_IRQ_LEGACY:
    tmp___3 = skd_name(skdev);
    printk("\v(%s): failed to enable MSI, re-trying with LEGACY %d\n", tmp___3, rc);
    skdev->irq_type = 0;
    goto RETRY_IRQ_TYPE;
  }
  goto ldv_36526;
  case 0U:
  snprintf((char *)(& skdev->isr_name), 30UL, "%s%d-legacy", (char *)"skd", skdev->devno);
  rc = devm_request_irq(& pdev->dev, pdev->irq, & skd_isr, 128UL, (char const *)(& skdev->isr_name),
                        (void *)skdev);
  if (rc == 0) {
    tmp___4 = skd_name(skdev);
    printk("\016(%s): LEGACY irq %d enabled\n", tmp___4, pdev->irq);
  } else {
    tmp___5 = skd_name(skdev);
    printk("\v(%s): request LEGACY irq error %d\n", tmp___5, rc);
  }
  goto ldv_36526;
  default:
  tmp___6 = skd_name(skdev);
  printk("\016(%s): irq_type %d invalid, re-set to %d\n", tmp___6, (unsigned int )skdev->irq_type,
         1);
  skdev->irq_type = 0;
  goto RETRY_IRQ_TYPE;
  }
  ldv_36526: ;
  return (rc);
}
}
static void skd_release_irq(struct skd_device *skdev )
{
  char const *tmp ;
  {
  switch ((unsigned int )skdev->irq_type) {
  case 2U:
  skd_release_msix(skdev);
  goto ldv_36535;
  case 1U:
  devm_free_irq(& (skdev->pdev)->dev, (skdev->pdev)->irq, (void *)skdev);
  pci_disable_msi(skdev->pdev);
  goto ldv_36535;
  case 0U:
  devm_free_irq(& (skdev->pdev)->dev, (skdev->pdev)->irq, (void *)skdev);
  goto ldv_36535;
  default:
  tmp = skd_name(skdev);
  printk("\v(%s): wrong irq type %d!", tmp, (unsigned int )skdev->irq_type);
  goto ldv_36535;
  }
  ldv_36535: ;
  return;
}
}
static int skd_cons_skcomp(struct skd_device *skdev )
{
  int rc ;
  struct fit_completion_entry_v1 *skcomp ;
  u32 nbytes ;
  struct _ddebug descriptor ;
  long tmp ;
  void *tmp___0 ;
  {
  rc = 0;
  nbytes = 2048U;
  nbytes = nbytes + 8192U;
  descriptor.modname = "skd";
  descriptor.function = "skd_cons_skcomp";
  descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/9607/dscv_tempdir/dscv/ri/43_2a/drivers/block/skd_main.o.c.prepared";
  descriptor.format = "%s:%s:%d comp pci_alloc, total bytes %d entries %d\n";
  descriptor.lineno = 4166U;
  descriptor.flags = 0U;
  tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp != 0L) {
    __dynamic_pr_debug(& descriptor, "%s:%s:%d comp pci_alloc, total bytes %d entries %d\n",
                       (char *)(& skdev->name), "skd_cons_skcomp", 4166, nbytes, 256U);
  } else {
  }
  tmp___0 = pci_alloc_consistent(skdev->pdev, (size_t )nbytes, & skdev->cq_dma_address);
  skcomp = (struct fit_completion_entry_v1 *)tmp___0;
  if ((unsigned long )skcomp == (unsigned long )((struct fit_completion_entry_v1 *)0)) {
    rc = -12;
    goto err_out;
  } else {
  }
  memset((void *)skcomp, 0, (size_t )nbytes);
  skdev->skcomp_table = skcomp;
  skdev->skerr_table = (struct fit_comp_error_info *)skcomp + 2048U;
  err_out: ;
  return (rc);
}
}
static int skd_cons_skmsg(struct skd_device *skdev )
{
  int rc ;
  u32 i ;
  struct _ddebug descriptor ;
  long tmp ;
  void *tmp___0 ;
  struct skd_fitmsg_context *skmsg ;
  void *tmp___1 ;
  {
  rc = 0;
  descriptor.modname = "skd";
  descriptor.function = "skd_cons_skmsg";
  descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/9607/dscv_tempdir/dscv/ri/43_2a/drivers/block/skd_main.o.c.prepared";
  descriptor.format = "%s:%s:%d skmsg_table kzalloc, struct %lu, count %u total %lu\n";
  descriptor.lineno = 4196U;
  descriptor.flags = 0U;
  tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp != 0L) {
    __dynamic_pr_debug(& descriptor, "%s:%s:%d skmsg_table kzalloc, struct %lu, count %u total %lu\n",
                       (char *)(& skdev->name), "skd_cons_skmsg", 4196, 48UL, skdev->num_fitmsg_context,
                       (unsigned long )skdev->num_fitmsg_context * 48UL);
  } else {
  }
  tmp___0 = kzalloc((unsigned long )skdev->num_fitmsg_context * 48UL, 208U);
  skdev->skmsg_table = (struct skd_fitmsg_context *)tmp___0;
  if ((unsigned long )skdev->skmsg_table == (unsigned long )((struct skd_fitmsg_context *)0)) {
    rc = -12;
    goto err_out;
  } else {
  }
  i = 0U;
  goto ldv_36558;
  ldv_36557:
  skmsg = skdev->skmsg_table + (unsigned long )i;
  skmsg->id = i + 768U;
  skmsg->state = 0;
  tmp___1 = pci_alloc_consistent(skdev->pdev, 576UL, & skmsg->mb_dma_address);
  skmsg->msg_buf = (u8 *)tmp___1;
  if ((unsigned long )skmsg->msg_buf == (unsigned long )((u8 *)0U)) {
    rc = -12;
    goto err_out;
  } else {
  }
  skmsg->offset = (unsigned int )((long )skmsg->msg_buf) & 63U;
  skmsg->msg_buf = skmsg->msg_buf + 63ULL;
  skmsg->msg_buf = (u8 *)((unsigned long long )skmsg->msg_buf & 0xffffffffffffffc0ULL);
  skmsg->mb_dma_address = skmsg->mb_dma_address + 63ULL;
  skmsg->mb_dma_address = skmsg->mb_dma_address & 0xffffffffffffffc0ULL;
  memset((void *)skmsg->msg_buf, 0, 512UL);
  skmsg->next = skmsg + 1UL;
  i = i + 1U;
  ldv_36558: ;
  if (skdev->num_fitmsg_context > i) {
    goto ldv_36557;
  } else {
  }
  (skdev->skmsg_table + (unsigned long )(i - 1U))->next = (struct skd_fitmsg_context *)0;
  skdev->skmsg_free_list = skdev->skmsg_table;
  err_out: ;
  return (rc);
}
}
static struct fit_sg_descriptor *skd_cons_sg_list(struct skd_device *skdev , u32 n_sg ,
                                                  dma_addr_t *ret_dma_addr )
{
  struct fit_sg_descriptor *sg_list ;
  u32 nbytes ;
  void *tmp ;
  uint64_t dma_address ;
  u32 i ;
  uint64_t ndp_off ;
  {
  nbytes = n_sg * 32U;
  tmp = pci_alloc_consistent(skdev->pdev, (size_t )nbytes, ret_dma_addr);
  sg_list = (struct fit_sg_descriptor *)tmp;
  if ((unsigned long )sg_list != (unsigned long )((struct fit_sg_descriptor *)0)) {
    dma_address = *ret_dma_addr;
    memset((void *)sg_list, 0, (size_t )nbytes);
    i = 0U;
    goto ldv_36571;
    ldv_36570:
    ndp_off = (uint64_t )((unsigned long )(i + 1U) * 32UL);
    (sg_list + (unsigned long )i)->next_desc_ptr = dma_address + ndp_off;
    i = i + 1U;
    ldv_36571: ;
    if (n_sg - 1U > i) {
      goto ldv_36570;
    } else {
    }
    (sg_list + (unsigned long )i)->next_desc_ptr = 0ULL;
  } else {
  }
  return (sg_list);
}
}
static int skd_cons_skreq(struct skd_device *skdev )
{
  int rc ;
  u32 i ;
  struct _ddebug descriptor ;
  long tmp ;
  void *tmp___0 ;
  struct _ddebug descriptor___0 ;
  long tmp___1 ;
  struct skd_request_context *skreq ;
  void *tmp___2 ;
  {
  rc = 0;
  descriptor.modname = "skd";
  descriptor.function = "skd_cons_skreq";
  descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/9607/dscv_tempdir/dscv/ri/43_2a/drivers/block/skd_main.o.c.prepared";
  descriptor.format = "%s:%s:%d skreq_table kzalloc, struct %lu, count %u total %lu\n";
  descriptor.lineno = 4280U;
  descriptor.flags = 0U;
  tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp != 0L) {
    __dynamic_pr_debug(& descriptor, "%s:%s:%d skreq_table kzalloc, struct %lu, count %u total %lu\n",
                       (char *)(& skdev->name), "skd_cons_skreq", 4280, 120UL, skdev->num_req_context,
                       (unsigned long )skdev->num_req_context * 120UL);
  } else {
  }
  tmp___0 = kzalloc((unsigned long )skdev->num_req_context * 120UL, 208U);
  skdev->skreq_table = (struct skd_request_context *)tmp___0;
  if ((unsigned long )skdev->skreq_table == (unsigned long )((struct skd_request_context *)0)) {
    rc = -12;
    goto err_out;
  } else {
  }
  descriptor___0.modname = "skd";
  descriptor___0.function = "skd_cons_skreq";
  descriptor___0.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/9607/dscv_tempdir/dscv/ri/43_2a/drivers/block/skd_main.o.c.prepared";
  descriptor___0.format = "%s:%s:%d alloc sg_table sg_per_req %u scatlist %lu total %lu\n";
  descriptor___0.lineno = 4292U;
  descriptor___0.flags = 0U;
  tmp___1 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
  if (tmp___1 != 0L) {
    __dynamic_pr_debug(& descriptor___0, "%s:%s:%d alloc sg_table sg_per_req %u scatlist %lu total %lu\n",
                       (char *)(& skdev->name), "skd_cons_skreq", 4292, skdev->sgs_per_request,
                       40UL, (unsigned long )skdev->sgs_per_request * 40UL);
  } else {
  }
  i = 0U;
  goto ldv_36584;
  ldv_36583:
  skreq = skdev->skreq_table + (unsigned long )i;
  skreq->id = (u16 )i;
  skreq->state = 0;
  tmp___2 = kzalloc((unsigned long )skdev->sgs_per_request * 40UL, 208U);
  skreq->sg = (struct scatterlist *)tmp___2;
  if ((unsigned long )skreq->sg == (unsigned long )((struct scatterlist *)0)) {
    rc = -12;
    goto err_out;
  } else {
  }
  sg_init_table(skreq->sg, (unsigned int )skdev->sgs_per_request);
  skreq->sksg_list = skd_cons_sg_list(skdev, (u32 )skdev->sgs_per_request, & skreq->sksg_dma_address);
  if ((unsigned long )skreq->sksg_list == (unsigned long )((struct fit_sg_descriptor *)0)) {
    rc = -12;
    goto err_out;
  } else {
  }
  skreq->next = skreq + 1UL;
  i = i + 1U;
  ldv_36584: ;
  if (skdev->num_req_context > i) {
    goto ldv_36583;
  } else {
  }
  (skdev->skreq_table + (unsigned long )(i - 1U))->next = (struct skd_request_context *)0;
  skdev->skreq_free_list = skdev->skreq_table;
  err_out: ;
  return (rc);
}
}
static int skd_cons_skspcl(struct skd_device *skdev )
{
  int rc ;
  u32 i ;
  u32 nbytes ;
  struct _ddebug descriptor ;
  long tmp ;
  void *tmp___0 ;
  struct skd_special_context *skspcl ;
  void *tmp___1 ;
  void *tmp___2 ;
  {
  rc = 0;
  descriptor.modname = "skd";
  descriptor.function = "skd_cons_skspcl";
  descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/9607/dscv_tempdir/dscv/ri/43_2a/drivers/block/skd_main.o.c.prepared";
  descriptor.format = "%s:%s:%d skspcl_table kzalloc, struct %lu, count %u total %lu\n";
  descriptor.lineno = 4339U;
  descriptor.flags = 0U;
  tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp != 0L) {
    __dynamic_pr_debug(& descriptor, "%s:%s:%d skspcl_table kzalloc, struct %lu, count %u total %lu\n",
                       (char *)(& skdev->name), "skd_cons_skspcl", 4339, 160UL, skdev->n_special,
                       (unsigned long )skdev->n_special * 160UL);
  } else {
  }
  tmp___0 = kzalloc((unsigned long )skdev->n_special * 160UL, 208U);
  skdev->skspcl_table = (struct skd_special_context *)tmp___0;
  if ((unsigned long )skdev->skspcl_table == (unsigned long )((struct skd_special_context *)0)) {
    rc = -12;
    goto err_out;
  } else {
  }
  i = 0U;
  goto ldv_36597;
  ldv_36596:
  skspcl = skdev->skspcl_table + (unsigned long )i;
  skspcl->req.id = (unsigned int )((u16 )i) + 512U;
  skspcl->req.state = 0;
  skspcl->req.next = & (skspcl + 1UL)->req;
  nbytes = 128U;
  tmp___1 = pci_alloc_consistent(skdev->pdev, (size_t )nbytes, & skspcl->mb_dma_address);
  skspcl->msg_buf = (u8 *)tmp___1;
  if ((unsigned long )skspcl->msg_buf == (unsigned long )((u8 *)0U)) {
    rc = -12;
    goto err_out;
  } else {
  }
  memset((void *)skspcl->msg_buf, 0, (size_t )nbytes);
  tmp___2 = kzalloc(10240UL, 208U);
  skspcl->req.sg = (struct scatterlist *)tmp___2;
  if ((unsigned long )skspcl->req.sg == (unsigned long )((struct scatterlist *)0)) {
    rc = -12;
    goto err_out;
  } else {
  }
  skspcl->req.sksg_list = skd_cons_sg_list(skdev, 256U, & skspcl->req.sksg_dma_address);
  if ((unsigned long )skspcl->req.sksg_list == (unsigned long )((struct fit_sg_descriptor *)0)) {
    rc = -12;
    goto err_out;
  } else {
  }
  i = i + 1U;
  ldv_36597: ;
  if ((u32 )skdev->n_special > i) {
    goto ldv_36596;
  } else {
  }
  (skdev->skspcl_table + (unsigned long )(i - 1U))->req.next = (struct skd_request_context *)0;
  skdev->skspcl_free_list = skdev->skspcl_table;
  return (rc);
  err_out: ;
  return (rc);
}
}
static int skd_cons_sksb(struct skd_device *skdev )
{
  int rc ;
  struct skd_special_context *skspcl ;
  u32 nbytes ;
  void *tmp ;
  int tmp___0 ;
  {
  rc = 0;
  skspcl = & skdev->internal_skspcl;
  skspcl->req.id = 256U;
  skspcl->req.state = 0;
  nbytes = 512U;
  skspcl->data_buf = pci_alloc_consistent(skdev->pdev, (size_t )nbytes, & skspcl->db_dma_address);
  if ((unsigned long )skspcl->data_buf == (unsigned long )((void *)0)) {
    rc = -12;
    goto err_out;
  } else {
  }
  memset(skspcl->data_buf, 0, (size_t )nbytes);
  nbytes = 128U;
  tmp = pci_alloc_consistent(skdev->pdev, (size_t )nbytes, & skspcl->mb_dma_address);
  skspcl->msg_buf = (u8 *)tmp;
  if ((unsigned long )skspcl->msg_buf == (unsigned long )((u8 *)0U)) {
    rc = -12;
    goto err_out;
  } else {
  }
  memset((void *)skspcl->msg_buf, 0, (size_t )nbytes);
  skspcl->req.sksg_list = skd_cons_sg_list(skdev, 1U, & skspcl->req.sksg_dma_address);
  if ((unsigned long )skspcl->req.sksg_list == (unsigned long )((struct fit_sg_descriptor *)0)) {
    rc = -12;
    goto err_out;
  } else {
  }
  tmp___0 = skd_format_internal_skspcl(skdev);
  if (tmp___0 == 0) {
    rc = -22;
    goto err_out;
  } else {
  }
  err_out: ;
  return (rc);
}
}
static int skd_cons_disk(struct skd_device *skdev )
{
  int rc ;
  struct gendisk *disk ;
  struct request_queue *q ;
  unsigned long flags ;
  struct _ddebug descriptor ;
  long tmp ;
  {
  rc = 0;
  disk = alloc_disk(16);
  if ((unsigned long )disk == (unsigned long )((struct gendisk *)0)) {
    rc = -12;
    goto err_out;
  } else {
  }
  skdev->disk = disk;
  sprintf((char *)(& disk->disk_name), "skd%u", skdev->devno);
  disk->major = (int )skdev->major;
  disk->first_minor = (int )(skdev->devno * 16U);
  disk->fops = & skd_blockdev_ops;
  disk->private_data = (void *)skdev;
  q = blk_init_queue(& skd_request_fn, & skdev->lock);
  if ((unsigned long )q == (unsigned long )((struct request_queue *)0)) {
    rc = -12;
    goto err_out;
  } else {
  }
  skdev->queue = q;
  disk->queue = q;
  q->queuedata = (void *)skdev;
  blk_queue_flush(q, 6144U);
  blk_queue_max_segments(q, (int )((unsigned short )skdev->sgs_per_request));
  blk_queue_max_hw_sectors(q, 2048U);
  blk_queue_io_opt(q, 8192U);
  q->limits.discard_granularity = 8192U;
  q->limits.discard_alignment = 0U;
  q->limits.max_discard_sectors = 8388607U;
  q->limits.discard_zeroes_data = 1U;
  queue_flag_set_unlocked(14U, q);
  queue_flag_set_unlocked(12U, q);
  ldv_spin_lock();
  descriptor.modname = "skd";
  descriptor.function = "skd_cons_disk";
  descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/9607/dscv_tempdir/dscv/ri/43_2a/drivers/block/skd_main.o.c.prepared";
  descriptor.format = "%s:%s:%d stopping %s queue\n";
  descriptor.lineno = 4492U;
  descriptor.flags = 0U;
  tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp != 0L) {
    __dynamic_pr_debug(& descriptor, "%s:%s:%d stopping %s queue\n", (char *)(& skdev->name),
                       "skd_cons_disk", 4492, (char *)(& skdev->name));
  } else {
  }
  blk_stop_queue(skdev->queue);
  spin_unlock_irqrestore(& skdev->lock, flags);
  err_out: ;
  return (rc);
}
}
static u32 skd_next_devno ;
static struct skd_device *skd_construct(struct pci_dev *pdev )
{
  struct skd_device *skdev ;
  int blk_major ;
  int rc ;
  void *tmp ;
  char const *tmp___0 ;
  u32 tmp___1 ;
  struct lock_class_key __key ;
  struct lock_class_key __key___0 ;
  atomic_long_t __constr_expr_0 ;
  struct _ddebug descriptor ;
  long tmp___2 ;
  struct _ddebug descriptor___0 ;
  long tmp___3 ;
  struct _ddebug descriptor___1 ;
  long tmp___4 ;
  struct _ddebug descriptor___2 ;
  long tmp___5 ;
  struct _ddebug descriptor___3 ;
  long tmp___6 ;
  struct _ddebug descriptor___4 ;
  long tmp___7 ;
  struct _ddebug descriptor___5 ;
  long tmp___8 ;
  struct _ddebug descriptor___6 ;
  long tmp___9 ;
  {
  blk_major = (int )skd_major;
  tmp = kzalloc(1000UL, 208U);
  skdev = (struct skd_device *)tmp;
  if ((unsigned long )skdev == (unsigned long )((struct skd_device *)0)) {
    tmp___0 = pci_name((struct pci_dev const *)pdev);
    printk("\vskd: (%s): memory alloc failure\n", tmp___0);
    return ((struct skd_device *)0);
  } else {
  }
  skdev->state = 0;
  skdev->pdev = pdev;
  tmp___1 = skd_next_devno;
  skd_next_devno = skd_next_devno + 1U;
  skdev->devno = tmp___1;
  skdev->major = (u32 )blk_major;
  skdev->irq_type = (skd_irq_type_t )skd_isr_type;
  sprintf((char *)(& skdev->name), "skd%d", skdev->devno);
  skdev->dev_max_queue_depth = 0U;
  skdev->num_req_context = (u32 )skd_max_queue_depth;
  skdev->num_fitmsg_context = (u32 )skd_max_queue_depth;
  skdev->n_special = skd_max_pass_thru;
  skdev->cur_max_queue_depth = 1U;
  skdev->queue_low_water_mark = 1U;
  skdev->proto_ver = 99U;
  skdev->sgs_per_request = skd_sgs_per_request;
  skdev->dbg_level = skd_dbg_level;
  atomic_set(& skdev->device_count, 0);
  spinlock_check(& skdev->lock);
  __raw_spin_lock_init(& skdev->lock.ldv_6347.rlock, "&(&skdev->lock)->rlock", & __key);
  __init_work(& skdev->completion_worker, 0);
  __constr_expr_0.counter = 137438953408L;
  skdev->completion_worker.data = __constr_expr_0;
  lockdep_init_map(& skdev->completion_worker.lockdep_map, "(&skdev->completion_worker)",
                   & __key___0, 0);
  INIT_LIST_HEAD(& skdev->completion_worker.entry);
  skdev->completion_worker.func = & skd_completion_worker;
  descriptor.modname = "skd";
  descriptor.function = "skd_construct";
  descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/9607/dscv_tempdir/dscv/ri/43_2a/drivers/block/skd_main.o.c.prepared";
  descriptor.format = "%s:%s:%d skcomp\n";
  descriptor.lineno = 4540U;
  descriptor.flags = 0U;
  tmp___2 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp___2 != 0L) {
    __dynamic_pr_debug(& descriptor, "%s:%s:%d skcomp\n", (char *)(& skdev->name),
                       "skd_construct", 4540);
  } else {
  }
  rc = skd_cons_skcomp(skdev);
  if (rc < 0) {
    goto err_out;
  } else {
  }
  descriptor___0.modname = "skd";
  descriptor___0.function = "skd_construct";
  descriptor___0.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/9607/dscv_tempdir/dscv/ri/43_2a/drivers/block/skd_main.o.c.prepared";
  descriptor___0.format = "%s:%s:%d skmsg\n";
  descriptor___0.lineno = 4545U;
  descriptor___0.flags = 0U;
  tmp___3 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
  if (tmp___3 != 0L) {
    __dynamic_pr_debug(& descriptor___0, "%s:%s:%d skmsg\n", (char *)(& skdev->name),
                       "skd_construct", 4545);
  } else {
  }
  rc = skd_cons_skmsg(skdev);
  if (rc < 0) {
    goto err_out;
  } else {
  }
  descriptor___1.modname = "skd";
  descriptor___1.function = "skd_construct";
  descriptor___1.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/9607/dscv_tempdir/dscv/ri/43_2a/drivers/block/skd_main.o.c.prepared";
  descriptor___1.format = "%s:%s:%d skreq\n";
  descriptor___1.lineno = 4550U;
  descriptor___1.flags = 0U;
  tmp___4 = ldv__builtin_expect((long )descriptor___1.flags & 1L, 0L);
  if (tmp___4 != 0L) {
    __dynamic_pr_debug(& descriptor___1, "%s:%s:%d skreq\n", (char *)(& skdev->name),
                       "skd_construct", 4550);
  } else {
  }
  rc = skd_cons_skreq(skdev);
  if (rc < 0) {
    goto err_out;
  } else {
  }
  descriptor___2.modname = "skd";
  descriptor___2.function = "skd_construct";
  descriptor___2.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/9607/dscv_tempdir/dscv/ri/43_2a/drivers/block/skd_main.o.c.prepared";
  descriptor___2.format = "%s:%s:%d skspcl\n";
  descriptor___2.lineno = 4555U;
  descriptor___2.flags = 0U;
  tmp___5 = ldv__builtin_expect((long )descriptor___2.flags & 1L, 0L);
  if (tmp___5 != 0L) {
    __dynamic_pr_debug(& descriptor___2, "%s:%s:%d skspcl\n", (char *)(& skdev->name),
                       "skd_construct", 4555);
  } else {
  }
  rc = skd_cons_skspcl(skdev);
  if (rc < 0) {
    goto err_out;
  } else {
  }
  descriptor___3.modname = "skd";
  descriptor___3.function = "skd_construct";
  descriptor___3.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/9607/dscv_tempdir/dscv/ri/43_2a/drivers/block/skd_main.o.c.prepared";
  descriptor___3.format = "%s:%s:%d sksb\n";
  descriptor___3.lineno = 4560U;
  descriptor___3.flags = 0U;
  tmp___6 = ldv__builtin_expect((long )descriptor___3.flags & 1L, 0L);
  if (tmp___6 != 0L) {
    __dynamic_pr_debug(& descriptor___3, "%s:%s:%d sksb\n", (char *)(& skdev->name),
                       "skd_construct", 4560);
  } else {
  }
  rc = skd_cons_sksb(skdev);
  if (rc < 0) {
    goto err_out;
  } else {
  }
  descriptor___4.modname = "skd";
  descriptor___4.function = "skd_construct";
  descriptor___4.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/9607/dscv_tempdir/dscv/ri/43_2a/drivers/block/skd_main.o.c.prepared";
  descriptor___4.format = "%s:%s:%d disk\n";
  descriptor___4.lineno = 4565U;
  descriptor___4.flags = 0U;
  tmp___7 = ldv__builtin_expect((long )descriptor___4.flags & 1L, 0L);
  if (tmp___7 != 0L) {
    __dynamic_pr_debug(& descriptor___4, "%s:%s:%d disk\n", (char *)(& skdev->name),
                       "skd_construct", 4565);
  } else {
  }
  rc = skd_cons_disk(skdev);
  if (rc < 0) {
    goto err_out;
  } else {
  }
  descriptor___5.modname = "skd";
  descriptor___5.function = "skd_construct";
  descriptor___5.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/9607/dscv_tempdir/dscv/ri/43_2a/drivers/block/skd_main.o.c.prepared";
  descriptor___5.format = "%s:%s:%d VICTORY\n";
  descriptor___5.lineno = 4570U;
  descriptor___5.flags = 0U;
  tmp___8 = ldv__builtin_expect((long )descriptor___5.flags & 1L, 0L);
  if (tmp___8 != 0L) {
    __dynamic_pr_debug(& descriptor___5, "%s:%s:%d VICTORY\n", (char *)(& skdev->name),
                       "skd_construct", 4570);
  } else {
  }
  return (skdev);
  err_out:
  descriptor___6.modname = "skd";
  descriptor___6.function = "skd_construct";
  descriptor___6.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/9607/dscv_tempdir/dscv/ri/43_2a/drivers/block/skd_main.o.c.prepared";
  descriptor___6.format = "%s:%s:%d construct failed\n";
  descriptor___6.lineno = 4575U;
  descriptor___6.flags = 0U;
  tmp___9 = ldv__builtin_expect((long )descriptor___6.flags & 1L, 0L);
  if (tmp___9 != 0L) {
    __dynamic_pr_debug(& descriptor___6, "%s:%s:%d construct failed\n", (char *)(& skdev->name),
                       "skd_construct", 4575);
  } else {
  }
  skd_destruct(skdev);
  return ((struct skd_device *)0);
}
}
static void skd_free_skcomp(struct skd_device *skdev )
{
  u32 nbytes ;
  {
  if ((unsigned long )skdev->skcomp_table != (unsigned long )((struct fit_completion_entry_v1 *)0)) {
    nbytes = 2048U;
    pci_free_consistent(skdev->pdev, (size_t )nbytes, (void *)skdev->skcomp_table,
                        skdev->cq_dma_address);
  } else {
  }
  skdev->skcomp_table = (struct fit_completion_entry_v1 *)0;
  skdev->cq_dma_address = 0ULL;
  return;
}
}
static void skd_free_skmsg(struct skd_device *skdev )
{
  u32 i ;
  struct skd_fitmsg_context *skmsg ;
  {
  if ((unsigned long )skdev->skmsg_table == (unsigned long )((struct skd_fitmsg_context *)0)) {
    return;
  } else {
  }
  i = 0U;
  goto ldv_36646;
  ldv_36645:
  skmsg = skdev->skmsg_table + (unsigned long )i;
  if ((unsigned long )skmsg->msg_buf != (unsigned long )((u8 *)0U)) {
    skmsg->msg_buf = skmsg->msg_buf + (unsigned long )skmsg->offset;
    skmsg->mb_dma_address = skmsg->mb_dma_address + (dma_addr_t )skmsg->offset;
    pci_free_consistent(skdev->pdev, 512UL, (void *)skmsg->msg_buf, skmsg->mb_dma_address);
  } else {
  }
  skmsg->msg_buf = (u8 *)0U;
  skmsg->mb_dma_address = 0ULL;
  i = i + 1U;
  ldv_36646: ;
  if (skdev->num_fitmsg_context > i) {
    goto ldv_36645;
  } else {
  }
  kfree((void const *)skdev->skmsg_table);
  skdev->skmsg_table = (struct skd_fitmsg_context *)0;
  return;
}
}
static void skd_free_sg_list(struct skd_device *skdev , struct fit_sg_descriptor *sg_list ,
                             u32 n_sg , dma_addr_t dma_addr )
{
  u32 nbytes ;
  {
  if ((unsigned long )sg_list != (unsigned long )((struct fit_sg_descriptor *)0)) {
    nbytes = n_sg * 32U;
    pci_free_consistent(skdev->pdev, (size_t )nbytes, (void *)sg_list, dma_addr);
  } else {
  }
  return;
}
}
static void skd_free_skreq(struct skd_device *skdev )
{
  u32 i ;
  struct skd_request_context *skreq ;
  {
  if ((unsigned long )skdev->skreq_table == (unsigned long )((struct skd_request_context *)0)) {
    return;
  } else {
  }
  i = 0U;
  goto ldv_36661;
  ldv_36660:
  skreq = skdev->skreq_table + (unsigned long )i;
  skd_free_sg_list(skdev, skreq->sksg_list, (u32 )skdev->sgs_per_request, skreq->sksg_dma_address);
  skreq->sksg_list = (struct fit_sg_descriptor *)0;
  skreq->sksg_dma_address = 0ULL;
  kfree((void const *)skreq->sg);
  i = i + 1U;
  ldv_36661: ;
  if (skdev->num_req_context > i) {
    goto ldv_36660;
  } else {
  }
  kfree((void const *)skdev->skreq_table);
  skdev->skreq_table = (struct skd_request_context *)0;
  return;
}
}
static void skd_free_skspcl(struct skd_device *skdev )
{
  u32 i ;
  u32 nbytes ;
  struct skd_special_context *skspcl ;
  {
  if ((unsigned long )skdev->skspcl_table == (unsigned long )((struct skd_special_context *)0)) {
    return;
  } else {
  }
  i = 0U;
  goto ldv_36670;
  ldv_36669:
  skspcl = skdev->skspcl_table + (unsigned long )i;
  if ((unsigned long )skspcl->msg_buf != (unsigned long )((u8 *)0U)) {
    nbytes = 128U;
    pci_free_consistent(skdev->pdev, (size_t )nbytes, (void *)skspcl->msg_buf, skspcl->mb_dma_address);
  } else {
  }
  skspcl->msg_buf = (u8 *)0U;
  skspcl->mb_dma_address = 0ULL;
  skd_free_sg_list(skdev, skspcl->req.sksg_list, 256U, skspcl->req.sksg_dma_address);
  skspcl->req.sksg_list = (struct fit_sg_descriptor *)0;
  skspcl->req.sksg_dma_address = 0ULL;
  kfree((void const *)skspcl->req.sg);
  i = i + 1U;
  ldv_36670: ;
  if ((u32 )skdev->n_special > i) {
    goto ldv_36669;
  } else {
  }
  kfree((void const *)skdev->skspcl_table);
  skdev->skspcl_table = (struct skd_special_context *)0;
  return;
}
}
static void skd_free_sksb(struct skd_device *skdev )
{
  struct skd_special_context *skspcl ;
  u32 nbytes ;
  {
  skspcl = & skdev->internal_skspcl;
  if ((unsigned long )skspcl->data_buf != (unsigned long )((void *)0)) {
    nbytes = 512U;
    pci_free_consistent(skdev->pdev, (size_t )nbytes, skspcl->data_buf, skspcl->db_dma_address);
  } else {
  }
  skspcl->data_buf = (void *)0;
  skspcl->db_dma_address = 0ULL;
  if ((unsigned long )skspcl->msg_buf != (unsigned long )((u8 *)0U)) {
    nbytes = 128U;
    pci_free_consistent(skdev->pdev, (size_t )nbytes, (void *)skspcl->msg_buf, skspcl->mb_dma_address);
  } else {
  }
  skspcl->msg_buf = (u8 *)0U;
  skspcl->mb_dma_address = 0ULL;
  skd_free_sg_list(skdev, skspcl->req.sksg_list, 1U, skspcl->req.sksg_dma_address);
  skspcl->req.sksg_list = (struct fit_sg_descriptor *)0;
  skspcl->req.sksg_dma_address = 0ULL;
  return;
}
}
static void skd_free_disk(struct skd_device *skdev )
{
  struct gendisk *disk ;
  struct request_queue *q ;
  {
  disk = skdev->disk;
  if ((unsigned long )disk != (unsigned long )((struct gendisk *)0)) {
    q = disk->queue;
    if ((disk->flags & 16) != 0) {
      del_gendisk(disk);
    } else {
    }
    if ((unsigned long )q != (unsigned long )((struct request_queue *)0)) {
      blk_cleanup_queue(q);
    } else {
    }
    put_disk(disk);
  } else {
  }
  skdev->disk = (struct gendisk *)0;
  return;
}
}
static void skd_destruct(struct skd_device *skdev )
{
  struct _ddebug descriptor ;
  long tmp ;
  struct _ddebug descriptor___0 ;
  long tmp___0 ;
  struct _ddebug descriptor___1 ;
  long tmp___1 ;
  struct _ddebug descriptor___2 ;
  long tmp___2 ;
  struct _ddebug descriptor___3 ;
  long tmp___3 ;
  struct _ddebug descriptor___4 ;
  long tmp___4 ;
  struct _ddebug descriptor___5 ;
  long tmp___5 ;
  {
  if ((unsigned long )skdev == (unsigned long )((struct skd_device *)0)) {
    return;
  } else {
  }
  descriptor.modname = "skd";
  descriptor.function = "skd_destruct";
  descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/9607/dscv_tempdir/dscv/ri/43_2a/drivers/block/skd_main.o.c.prepared";
  descriptor.format = "%s:%s:%d disk\n";
  descriptor.lineno = 4759U;
  descriptor.flags = 0U;
  tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp != 0L) {
    __dynamic_pr_debug(& descriptor, "%s:%s:%d disk\n", (char *)(& skdev->name), "skd_destruct",
                       4759);
  } else {
  }
  skd_free_disk(skdev);
  descriptor___0.modname = "skd";
  descriptor___0.function = "skd_destruct";
  descriptor___0.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/9607/dscv_tempdir/dscv/ri/43_2a/drivers/block/skd_main.o.c.prepared";
  descriptor___0.format = "%s:%s:%d sksb\n";
  descriptor___0.lineno = 4762U;
  descriptor___0.flags = 0U;
  tmp___0 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
  if (tmp___0 != 0L) {
    __dynamic_pr_debug(& descriptor___0, "%s:%s:%d sksb\n", (char *)(& skdev->name),
                       "skd_destruct", 4762);
  } else {
  }
  skd_free_sksb(skdev);
  descriptor___1.modname = "skd";
  descriptor___1.function = "skd_destruct";
  descriptor___1.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/9607/dscv_tempdir/dscv/ri/43_2a/drivers/block/skd_main.o.c.prepared";
  descriptor___1.format = "%s:%s:%d skspcl\n";
  descriptor___1.lineno = 4765U;
  descriptor___1.flags = 0U;
  tmp___1 = ldv__builtin_expect((long )descriptor___1.flags & 1L, 0L);
  if (tmp___1 != 0L) {
    __dynamic_pr_debug(& descriptor___1, "%s:%s:%d skspcl\n", (char *)(& skdev->name),
                       "skd_destruct", 4765);
  } else {
  }
  skd_free_skspcl(skdev);
  descriptor___2.modname = "skd";
  descriptor___2.function = "skd_destruct";
  descriptor___2.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/9607/dscv_tempdir/dscv/ri/43_2a/drivers/block/skd_main.o.c.prepared";
  descriptor___2.format = "%s:%s:%d skreq\n";
  descriptor___2.lineno = 4768U;
  descriptor___2.flags = 0U;
  tmp___2 = ldv__builtin_expect((long )descriptor___2.flags & 1L, 0L);
  if (tmp___2 != 0L) {
    __dynamic_pr_debug(& descriptor___2, "%s:%s:%d skreq\n", (char *)(& skdev->name),
                       "skd_destruct", 4768);
  } else {
  }
  skd_free_skreq(skdev);
  descriptor___3.modname = "skd";
  descriptor___3.function = "skd_destruct";
  descriptor___3.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/9607/dscv_tempdir/dscv/ri/43_2a/drivers/block/skd_main.o.c.prepared";
  descriptor___3.format = "%s:%s:%d skmsg\n";
  descriptor___3.lineno = 4771U;
  descriptor___3.flags = 0U;
  tmp___3 = ldv__builtin_expect((long )descriptor___3.flags & 1L, 0L);
  if (tmp___3 != 0L) {
    __dynamic_pr_debug(& descriptor___3, "%s:%s:%d skmsg\n", (char *)(& skdev->name),
                       "skd_destruct", 4771);
  } else {
  }
  skd_free_skmsg(skdev);
  descriptor___4.modname = "skd";
  descriptor___4.function = "skd_destruct";
  descriptor___4.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/9607/dscv_tempdir/dscv/ri/43_2a/drivers/block/skd_main.o.c.prepared";
  descriptor___4.format = "%s:%s:%d skcomp\n";
  descriptor___4.lineno = 4774U;
  descriptor___4.flags = 0U;
  tmp___4 = ldv__builtin_expect((long )descriptor___4.flags & 1L, 0L);
  if (tmp___4 != 0L) {
    __dynamic_pr_debug(& descriptor___4, "%s:%s:%d skcomp\n", (char *)(& skdev->name),
                       "skd_destruct", 4774);
  } else {
  }
  skd_free_skcomp(skdev);
  descriptor___5.modname = "skd";
  descriptor___5.function = "skd_destruct";
  descriptor___5.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/9607/dscv_tempdir/dscv/ri/43_2a/drivers/block/skd_main.o.c.prepared";
  descriptor___5.format = "%s:%s:%d skdev\n";
  descriptor___5.lineno = 4777U;
  descriptor___5.flags = 0U;
  tmp___5 = ldv__builtin_expect((long )descriptor___5.flags & 1L, 0L);
  if (tmp___5 != 0L) {
    __dynamic_pr_debug(& descriptor___5, "%s:%s:%d skdev\n", (char *)(& skdev->name),
                       "skd_destruct", 4777);
  } else {
  }
  kfree((void const *)skdev);
  return;
}
}
static int skd_bdev_getgeo(struct block_device *bdev , struct hd_geometry *geo )
{
  struct skd_device *skdev ;
  u64 capacity ;
  struct _ddebug descriptor ;
  struct task_struct *tmp ;
  long tmp___0 ;
  sector_t tmp___1 ;
  {
  skdev = (struct skd_device *)(bdev->bd_disk)->private_data;
  descriptor.modname = "skd";
  descriptor.function = "skd_bdev_getgeo";
  descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/9607/dscv_tempdir/dscv/ri/43_2a/drivers/block/skd_main.o.c.prepared";
  descriptor.format = "%s:%s:%d %s: CMD[%s] getgeo device\n";
  descriptor.lineno = 4796U;
  descriptor.flags = 0U;
  tmp___0 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp___0 != 0L) {
    tmp = get_current();
    __dynamic_pr_debug(& descriptor, "%s:%s:%d %s: CMD[%s] getgeo device\n", (char *)(& skdev->name),
                       "skd_bdev_getgeo", 4796, (char *)(& (bdev->bd_disk)->disk_name),
                       (char *)(& tmp->comm));
  } else {
  }
  if (skdev->read_cap_is_valid != 0) {
    tmp___1 = get_capacity(skdev->disk);
    capacity = (u64 )tmp___1;
    geo->heads = 64U;
    geo->sectors = 255U;
    geo->cylinders = (unsigned short )(capacity / 16320ULL);
    return (0);
  } else {
  }
  return (-5);
}
}
static int skd_bdev_attach(struct skd_device *skdev )
{
  struct _ddebug descriptor ;
  long tmp ;
  {
  descriptor.modname = "skd";
  descriptor.function = "skd_bdev_attach";
  descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/9607/dscv_tempdir/dscv/ri/43_2a/drivers/block/skd_main.o.c.prepared";
  descriptor.format = "%s:%s:%d add_disk\n";
  descriptor.lineno = 4811U;
  descriptor.flags = 0U;
  tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp != 0L) {
    __dynamic_pr_debug(& descriptor, "%s:%s:%d add_disk\n", (char *)(& skdev->name),
                       "skd_bdev_attach", 4811);
  } else {
  }
  add_disk(skdev->disk);
  return (0);
}
}
static struct block_device_operations const skd_blockdev_ops =
     {0, 0, 0, & skd_bdev_ioctl, 0, 0, 0, 0, 0, 0, & skd_bdev_getgeo, 0, & __this_module};
static struct pci_device_id const skd_pci_tbl[2U] = { {6969U, 1U, 4294967295U, 4294967295U, 0U, 0U, 0UL},
        {0U, 0U, 0U, 0U, 0U, 0U, 0UL}};
struct pci_device_id const __mod_pci__skd_pci_tbl_device_table ;
static char *skd_pci_info(struct skd_device *skdev , char *str )
{
  int pcie_reg ;
  char lwstr[6U] ;
  uint16_t pcie_lstat ;
  uint16_t lspeed ;
  uint16_t lwidth ;
  {
  strcpy(str, "PCIe (");
  pcie_reg = pci_find_capability(skdev->pdev, 16);
  if (pcie_reg != 0) {
    pcie_reg = pcie_reg + 18;
    pci_read_config_word((struct pci_dev const *)skdev->pdev, pcie_reg, & pcie_lstat);
    lspeed = (unsigned int )pcie_lstat & 15U;
    lwidth = (uint16_t )(((int )pcie_lstat & 1008) >> 4);
    if ((unsigned int )lspeed == 1U) {
      strcat(str, "2.5GT/s ");
    } else
    if ((unsigned int )lspeed == 2U) {
      strcat(str, "5.0GT/s ");
    } else {
      strcat(str, "<unknown> ");
    }
    snprintf((char *)(& lwstr), 6UL, "%dX)", (int )lwidth);
    strcat(str, (char const *)(& lwstr));
  } else {
  }
  return (str);
}
}
static int skd_pci_probe(struct pci_dev *pdev , struct pci_device_id const *ent )
{
  int i ;
  int rc ;
  char pci_str[32U] ;
  struct skd_device *skdev ;
  char const *tmp ;
  char const *tmp___0 ;
  int tmp___1 ;
  char const *tmp___2 ;
  long tmp___3 ;
  char const *tmp___4 ;
  char const *tmp___5 ;
  void *tmp___6 ;
  char const *tmp___7 ;
  struct _ddebug descriptor ;
  long tmp___8 ;
  char const *tmp___9 ;
  struct lock_class_key __key ;
  long __ret ;
  wait_queue_t __wait ;
  long __ret___0 ;
  long __int ;
  long tmp___10 ;
  bool __cond ;
  bool __cond___0 ;
  char const *tmp___11 ;
  {
  rc = 0;
  printk("\016STEC s1120 Driver(%s) version %s-b%s\n", (char *)"skd", (char *)"2.2.1",
         (char *)"0260");
  tmp = pci_name((struct pci_dev const *)pdev);
  printk("\016(skd?:??:[%s]): vendor=%04X device=%04x\n", tmp, (int )pdev->vendor,
         (int )pdev->device);
  rc = pci_enable_device(pdev);
  if (rc != 0) {
    return (rc);
  } else {
  }
  rc = pci_request_regions(pdev, "skd");
  if (rc != 0) {
    goto err_out;
  } else {
  }
  rc = pci_set_dma_mask(pdev, 0xffffffffffffffffULL);
  if (rc == 0) {
    tmp___1 = pci_set_consistent_dma_mask(pdev, 0xffffffffffffffffULL);
    if (tmp___1 != 0) {
      tmp___0 = pci_name((struct pci_dev const *)pdev);
      printk("\v(%s): consistent DMA mask error %d\n", tmp___0, rc);
    } else {
    }
  } else {
    rc = pci_set_dma_mask(pdev, 4294967295ULL);
    if (rc != 0) {
      tmp___2 = pci_name((struct pci_dev const *)pdev);
      printk("\v(%s): DMA mask error %d\n", tmp___2, rc);
      goto err_out_regions;
    } else {
    }
  }
  if (skd_major == 0U) {
    rc = register_blkdev(0U, "skd");
    if (rc < 0) {
      goto err_out_regions;
    } else {
    }
    tmp___3 = ldv__builtin_expect(rc == 0, 0L);
    if (tmp___3 != 0L) {
      __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/9607/dscv_tempdir/dscv/ri/43_2a/drivers/block/skd_main.o.c.prepared"),
                           "i" (4905), "i" (12UL));
      ldv_36728: ;
      goto ldv_36728;
    } else {
    }
    skd_major = (u32 )rc;
  } else {
  }
  skdev = skd_construct(pdev);
  if ((unsigned long )skdev == (unsigned long )((struct skd_device *)0)) {
    rc = -12;
    goto err_out_regions;
  } else {
  }
  skd_pci_info(skdev, (char *)(& pci_str));
  tmp___4 = skd_name(skdev);
  printk("\016(%s): %s 64bit\n", tmp___4, (char *)(& pci_str));
  pci_set_master(pdev);
  rc = pci_enable_pcie_error_reporting(pdev);
  if (rc != 0) {
    tmp___5 = skd_name(skdev);
    printk("\v(%s): bad enable of PCIe error reporting rc=%d\n", tmp___5, rc);
    skdev->pcie_error_reporting_is_enabled = 0;
  } else {
    skdev->pcie_error_reporting_is_enabled = 1;
  }
  pci_set_drvdata(pdev, (void *)skdev);
  (skdev->disk)->driverfs_dev = & pdev->dev;
  i = 0;
  goto ldv_36733;
  ldv_36732:
  skdev->mem_phys[i] = pdev->resource[i].start;
  skdev->mem_size[i] = pdev->resource[i].start != 0ULL || pdev->resource[i].end != pdev->resource[i].start ? (unsigned int )((pdev->resource[i].end - pdev->resource[i].start) + 1ULL) : 0U;
  tmp___6 = ioremap(skdev->mem_phys[i], (unsigned long )skdev->mem_size[i]);
  skdev->mem_map[i] = (void volatile *)tmp___6;
  if ((unsigned long )skdev->mem_map[i] == (unsigned long )((void volatile *)0)) {
    tmp___7 = skd_name(skdev);
    printk("\v(%s): Unable to map adapter memory!\n", tmp___7);
    rc = -19;
    goto err_out_iounmap;
  } else {
  }
  descriptor.modname = "skd";
  descriptor.function = "skd_pci_probe";
  descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/9607/dscv_tempdir/dscv/ri/43_2a/drivers/block/skd_main.o.c.prepared";
  descriptor.format = "%s:%s:%d mem_map=%p, phyd=%016llx, size=%d\n";
  descriptor.lineno = 4947U;
  descriptor.flags = 0U;
  tmp___8 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp___8 != 0L) {
    __dynamic_pr_debug(& descriptor, "%s:%s:%d mem_map=%p, phyd=%016llx, size=%d\n",
                       (char *)(& skdev->name), "skd_pci_probe", 4947, skdev->mem_map[i],
                       skdev->mem_phys[i], skdev->mem_size[i]);
  } else {
  }
  i = i + 1;
  ldv_36733: ;
  if (i <= 1) {
    goto ldv_36732;
  } else {
  }
  rc = skd_acquire_irq(skdev);
  if (rc != 0) {
    tmp___9 = skd_name(skdev);
    printk("\v(%s): interrupt resource error %d\n", tmp___9, rc);
    goto err_out_iounmap;
  } else {
  }
  rc = skd_start_timer(skdev);
  if (rc != 0) {
    goto err_out_timer;
  } else {
  }
  __init_waitqueue_head(& skdev->waitq, "&skdev->waitq", & __key);
  skd_start_device(skdev);
  __ret = 22500L;
  __cond___0 = skdev->gendisk_on != 0;
  if ((int )__cond___0 && __ret == 0L) {
    __ret = 1L;
  } else {
  }
  if (((int )__cond___0 || __ret == 0L) == 0) {
    __ret___0 = 22500L;
    INIT_LIST_HEAD(& __wait.task_list);
    __wait.flags = 0U;
    ldv_36747:
    tmp___10 = prepare_to_wait_event(& skdev->waitq, & __wait, 1);
    __int = tmp___10;
    __cond = skdev->gendisk_on != 0;
    if ((int )__cond && __ret___0 == 0L) {
      __ret___0 = 1L;
    } else {
    }
    if (((int )__cond || __ret___0 == 0L) != 0) {
      goto ldv_36746;
    } else {
    }
    if (__int != 0L) {
      __ret___0 = __int;
      goto ldv_36746;
    } else {
    }
    __ret___0 = schedule_timeout(__ret___0);
    goto ldv_36747;
    ldv_36746:
    finish_wait(& skdev->waitq, & __wait);
    __ret = __ret___0;
  } else {
  }
  rc = (int )__ret;
  if (skdev->gendisk_on > 0) {
    skd_bdev_attach(skdev);
    rc = 0;
  } else {
    tmp___11 = skd_name(skdev);
    printk("\v(%s): error: waiting for s1120 timed out %d!\n", tmp___11, rc);
    if (rc == 0) {
      rc = -6;
    } else {
    }
    goto err_out_timer;
  }
  return (rc);
  err_out_timer:
  skd_stop_device(skdev);
  skd_release_irq(skdev);
  err_out_iounmap:
  i = 0;
  goto ldv_36751;
  ldv_36750: ;
  if ((unsigned long )skdev->mem_map[i] != (unsigned long )((void volatile *)0)) {
    iounmap(skdev->mem_map[i]);
  } else {
  }
  i = i + 1;
  ldv_36751: ;
  if (i <= 1) {
    goto ldv_36750;
  } else {
  }
  if (skdev->pcie_error_reporting_is_enabled != 0) {
    pci_disable_pcie_error_reporting(pdev);
  } else {
  }
  skd_destruct(skdev);
  err_out_regions:
  pci_release_regions(pdev);
  err_out:
  pci_disable_device(pdev);
  pci_set_drvdata(pdev, (void *)0);
  return (rc);
}
}
static void skd_pci_remove(struct pci_dev *pdev )
{
  int i ;
  struct skd_device *skdev ;
  void *tmp ;
  char const *tmp___0 ;
  {
  tmp = pci_get_drvdata(pdev);
  skdev = (struct skd_device *)tmp;
  if ((unsigned long )skdev == (unsigned long )((struct skd_device *)0)) {
    tmp___0 = pci_name((struct pci_dev const *)pdev);
    printk("\v%s: no device data for PCI\n", tmp___0);
    return;
  } else {
  }
  skd_stop_device(skdev);
  skd_release_irq(skdev);
  i = 0;
  goto ldv_36759;
  ldv_36758: ;
  if ((unsigned long )skdev->mem_map[i] != (unsigned long )((void volatile *)0)) {
    iounmap(skdev->mem_map[i]);
  } else {
  }
  i = i + 1;
  ldv_36759: ;
  if (i <= 1) {
    goto ldv_36758;
  } else {
  }
  if (skdev->pcie_error_reporting_is_enabled != 0) {
    pci_disable_pcie_error_reporting(pdev);
  } else {
  }
  skd_destruct(skdev);
  pci_release_regions(pdev);
  pci_disable_device(pdev);
  pci_set_drvdata(pdev, (void *)0);
  return;
}
}
static int skd_pci_suspend(struct pci_dev *pdev , pm_message_t state )
{
  int i ;
  struct skd_device *skdev ;
  void *tmp ;
  char const *tmp___0 ;
  pci_power_t tmp___1 ;
  {
  tmp = pci_get_drvdata(pdev);
  skdev = (struct skd_device *)tmp;
  if ((unsigned long )skdev == (unsigned long )((struct skd_device *)0)) {
    tmp___0 = pci_name((struct pci_dev const *)pdev);
    printk("\v%s: no device data for PCI\n", tmp___0);
    return (-5);
  } else {
  }
  skd_stop_device(skdev);
  skd_release_irq(skdev);
  i = 0;
  goto ldv_36768;
  ldv_36767: ;
  if ((unsigned long )skdev->mem_map[i] != (unsigned long )((void volatile *)0)) {
    iounmap(skdev->mem_map[i]);
  } else {
  }
  i = i + 1;
  ldv_36768: ;
  if (i <= 1) {
    goto ldv_36767;
  } else {
  }
  if (skdev->pcie_error_reporting_is_enabled != 0) {
    pci_disable_pcie_error_reporting(pdev);
  } else {
  }
  pci_release_regions(pdev);
  pci_save_state(pdev);
  pci_disable_device(pdev);
  tmp___1 = pci_choose_state(pdev, state);
  pci_set_power_state(pdev, tmp___1);
  return (0);
}
}
static int skd_pci_resume(struct pci_dev *pdev )
{
  int i ;
  int rc ;
  struct skd_device *skdev ;
  void *tmp ;
  char const *tmp___0 ;
  char const *tmp___1 ;
  int tmp___2 ;
  char const *tmp___3 ;
  void *tmp___4 ;
  char const *tmp___5 ;
  struct _ddebug descriptor ;
  long tmp___6 ;
  char const *tmp___7 ;
  struct lock_class_key __key ;
  {
  rc = 0;
  tmp = pci_get_drvdata(pdev);
  skdev = (struct skd_device *)tmp;
  if ((unsigned long )skdev == (unsigned long )((struct skd_device *)0)) {
    tmp___0 = pci_name((struct pci_dev const *)pdev);
    printk("\v%s: no device data for PCI\n", tmp___0);
    return (-1);
  } else {
  }
  pci_set_power_state(pdev, 0);
  pci_enable_wake(pdev, 0, 0);
  pci_restore_state(pdev);
  rc = pci_enable_device(pdev);
  if (rc != 0) {
    return (rc);
  } else {
  }
  rc = pci_request_regions(pdev, "skd");
  if (rc != 0) {
    goto err_out;
  } else {
  }
  rc = pci_set_dma_mask(pdev, 0xffffffffffffffffULL);
  if (rc == 0) {
    tmp___2 = pci_set_consistent_dma_mask(pdev, 0xffffffffffffffffULL);
    if (tmp___2 != 0) {
      tmp___1 = pci_name((struct pci_dev const *)pdev);
      printk("\v(%s): consistent DMA mask error %d\n", tmp___1, rc);
    } else {
    }
  } else {
    rc = pci_set_dma_mask(pdev, 4294967295ULL);
    if (rc != 0) {
      tmp___3 = pci_name((struct pci_dev const *)pdev);
      printk("\v(%s): DMA mask error %d\n", tmp___3, rc);
      goto err_out_regions;
    } else {
    }
  }
  pci_set_master(pdev);
  rc = pci_enable_pcie_error_reporting(pdev);
  if (rc != 0) {
    printk("\v(%s): bad enable of PCIe error reporting rc=%d\n", (char *)(& skdev->name),
           rc);
    skdev->pcie_error_reporting_is_enabled = 0;
  } else {
    skdev->pcie_error_reporting_is_enabled = 1;
  }
  i = 0;
  goto ldv_36782;
  ldv_36781:
  skdev->mem_phys[i] = pdev->resource[i].start;
  skdev->mem_size[i] = pdev->resource[i].start != 0ULL || pdev->resource[i].end != pdev->resource[i].start ? (unsigned int )((pdev->resource[i].end - pdev->resource[i].start) + 1ULL) : 0U;
  tmp___4 = ioremap(skdev->mem_phys[i], (unsigned long )skdev->mem_size[i]);
  skdev->mem_map[i] = (void volatile *)tmp___4;
  if ((unsigned long )skdev->mem_map[i] == (unsigned long )((void volatile *)0)) {
    tmp___5 = skd_name(skdev);
    printk("\v(%s): Unable to map adapter memory!\n", tmp___5);
    rc = -19;
    goto err_out_iounmap;
  } else {
  }
  descriptor.modname = "skd";
  descriptor.function = "skd_pci_resume";
  descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/9607/dscv_tempdir/dscv/ri/43_2a/drivers/block/skd_main.o.c.prepared";
  descriptor.format = "%s:%s:%d mem_map=%p, phyd=%016llx, size=%d\n";
  descriptor.lineno = 5144U;
  descriptor.flags = 0U;
  tmp___6 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp___6 != 0L) {
    __dynamic_pr_debug(& descriptor, "%s:%s:%d mem_map=%p, phyd=%016llx, size=%d\n",
                       (char *)(& skdev->name), "skd_pci_resume", 5144, skdev->mem_map[i],
                       skdev->mem_phys[i], skdev->mem_size[i]);
  } else {
  }
  i = i + 1;
  ldv_36782: ;
  if (i <= 1) {
    goto ldv_36781;
  } else {
  }
  rc = skd_acquire_irq(skdev);
  if (rc != 0) {
    tmp___7 = pci_name((struct pci_dev const *)pdev);
    printk("\v(%s): interrupt resource error %d\n", tmp___7, rc);
    goto err_out_iounmap;
  } else {
  }
  rc = skd_start_timer(skdev);
  if (rc != 0) {
    goto err_out_timer;
  } else {
  }
  __init_waitqueue_head(& skdev->waitq, "&skdev->waitq", & __key);
  skd_start_device(skdev);
  return (rc);
  err_out_timer:
  skd_stop_device(skdev);
  skd_release_irq(skdev);
  err_out_iounmap:
  i = 0;
  goto ldv_36787;
  ldv_36786: ;
  if ((unsigned long )skdev->mem_map[i] != (unsigned long )((void volatile *)0)) {
    iounmap(skdev->mem_map[i]);
  } else {
  }
  i = i + 1;
  ldv_36787: ;
  if (i <= 1) {
    goto ldv_36786;
  } else {
  }
  if (skdev->pcie_error_reporting_is_enabled != 0) {
    pci_disable_pcie_error_reporting(pdev);
  } else {
  }
  err_out_regions:
  pci_release_regions(pdev);
  err_out:
  pci_disable_device(pdev);
  return (rc);
}
}
static void skd_pci_shutdown(struct pci_dev *pdev )
{
  struct skd_device *skdev ;
  void *tmp ;
  char const *tmp___0 ;
  char const *tmp___1 ;
  {
  printk("\vskd_pci_shutdown called\n");
  tmp = pci_get_drvdata(pdev);
  skdev = (struct skd_device *)tmp;
  if ((unsigned long )skdev == (unsigned long )((struct skd_device *)0)) {
    tmp___0 = pci_name((struct pci_dev const *)pdev);
    printk("\v%s: no device data for PCI\n", tmp___0);
    return;
  } else {
  }
  tmp___1 = skd_name(skdev);
  printk("\v%s: calling stop\n", tmp___1);
  skd_stop_device(skdev);
  return;
}
}
static struct pci_driver skd_driver =
     {{0, 0}, "skd", (struct pci_device_id const *)(& skd_pci_tbl), & skd_pci_probe,
    & skd_pci_remove, & skd_pci_suspend, 0, 0, & skd_pci_resume, & skd_pci_shutdown,
    0, 0, {0, 0, 0, 0, (_Bool)0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, {{{{{{0U}}, 0U, 0U,
                                                                    0, {0, {0, 0},
                                                                        0, 0, 0UL}}}},
                                                                 {0, 0}}};
static char const *skd_name(struct skd_device *skdev )
{
  char const *tmp ;
  char const *tmp___0 ;
  {
  memset((void *)(& skdev->id_str), 0, 80UL);
  if (skdev->inquiry_is_valid != 0) {
    tmp = pci_name((struct pci_dev const *)skdev->pdev);
    snprintf((char *)(& skdev->id_str), 80UL, "%s:%s:[%s]", (char *)(& skdev->name),
             (u8 *)(& skdev->inq_serial_num), tmp);
  } else {
    tmp___0 = pci_name((struct pci_dev const *)skdev->pdev);
    snprintf((char *)(& skdev->id_str), 80UL, "%s:??:[%s]", (char *)(& skdev->name),
             tmp___0);
  }
  return ((char const *)(& skdev->id_str));
}
}
char const *skd_drive_state_to_str(int state )
{
  {
  switch (state) {
  case 0: ;
  return ("OFFLINE");
  case 1: ;
  return ("INIT");
  case 3: ;
  return ("ONLINE");
  case 4: ;
  return ("BUSY");
  case 5: ;
  return ("FAULT");
  case 6: ;
  return ("DEGRADED");
  case 7: ;
  return ("INK_DOWN");
  case 8: ;
  return ("SOFT_RESET");
  case 254: ;
  return ("NEED_FW");
  case 9: ;
  return ("INIT_FAULT");
  case 10: ;
  return ("BUSY_SANITIZE");
  case 11: ;
  return ("BUSY_ERASE");
  case 12: ;
  return ("FW_BOOTING");
  default: ;
  return ("???");
  }
}
}
char const *skd_skdev_state_to_str(enum skd_drvr_state state )
{
  {
  switch ((unsigned int )state) {
  case 0U: ;
  return ("LOAD");
  case 1U: ;
  return ("IDLE");
  case 2U: ;
  return ("BUSY");
  case 3U: ;
  return ("STARTING");
  case 4U: ;
  return ("ONLINE");
  case 5U: ;
  return ("PAUSING");
  case 6U: ;
  return ("PAUSED");
  case 7U: ;
  return ("DRAINING_TIMEOUT");
  case 8U: ;
  return ("RESTARTING");
  case 9U: ;
  return ("RESUMING");
  case 10U: ;
  return ("STOPPING");
  case 18U: ;
  return ("SYNCING");
  case 11U: ;
  return ("FAULT");
  case 12U: ;
  return ("DISAPPEARED");
  case 14U: ;
  return ("BUSY_ERASE");
  case 15U: ;
  return ("BUSY_SANITIZE");
  case 16U: ;
  return ("BUSY_IMMINENT");
  case 17U: ;
  return ("WAIT_BOOT");
  default: ;
  return ("???");
  }
}
}
static char const *skd_skmsg_state_to_str(enum skd_fit_msg_state state )
{
  {
  switch ((unsigned int )state) {
  case 0U: ;
  return ("IDLE");
  case 1U: ;
  return ("BUSY");
  default: ;
  return ("???");
  }
}
}
static char const *skd_skreq_state_to_str(enum skd_req_state state )
{
  {
  switch ((unsigned int )state) {
  case 0U: ;
  return ("IDLE");
  case 1U: ;
  return ("SETUP");
  case 2U: ;
  return ("BUSY");
  case 3U: ;
  return ("COMPLETED");
  case 4U: ;
  return ("TIMEOUT");
  case 5U: ;
  return ("ABORTED");
  default: ;
  return ("???");
  }
}
}
static void skd_log_skdev(struct skd_device *skdev , char const *event )
{
  struct _ddebug descriptor ;
  long tmp ;
  struct _ddebug descriptor___0 ;
  char const *tmp___0 ;
  char const *tmp___1 ;
  long tmp___2 ;
  struct _ddebug descriptor___1 ;
  long tmp___3 ;
  struct _ddebug descriptor___2 ;
  long tmp___4 ;
  {
  descriptor.modname = "skd";
  descriptor.function = "skd_log_skdev";
  descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/9607/dscv_tempdir/dscv/ri/43_2a/drivers/block/skd_main.o.c.prepared";
  descriptor.format = "%s:%s:%d (%s) skdev=%p event=\'%s\'\n";
  descriptor.lineno = 5345U;
  descriptor.flags = 0U;
  tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp != 0L) {
    __dynamic_pr_debug(& descriptor, "%s:%s:%d (%s) skdev=%p event=\'%s\'\n", (char *)(& skdev->name),
                       "skd_log_skdev", 5345, (char *)(& skdev->name), skdev, event);
  } else {
  }
  descriptor___0.modname = "skd";
  descriptor___0.function = "skd_log_skdev";
  descriptor___0.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/9607/dscv_tempdir/dscv/ri/43_2a/drivers/block/skd_main.o.c.prepared";
  descriptor___0.format = "%s:%s:%d   drive_state=%s(%d) driver_state=%s(%d)\n";
  descriptor___0.lineno = 5349U;
  descriptor___0.flags = 0U;
  tmp___2 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
  if (tmp___2 != 0L) {
    tmp___0 = skd_skdev_state_to_str(skdev->state);
    tmp___1 = skd_drive_state_to_str((int )skdev->drive_state);
    __dynamic_pr_debug(& descriptor___0, "%s:%s:%d   drive_state=%s(%d) driver_state=%s(%d)\n",
                       (char *)(& skdev->name), "skd_log_skdev", 5349, tmp___1, skdev->drive_state,
                       tmp___0, (unsigned int )skdev->state);
  } else {
  }
  descriptor___1.modname = "skd";
  descriptor___1.function = "skd_log_skdev";
  descriptor___1.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/9607/dscv_tempdir/dscv/ri/43_2a/drivers/block/skd_main.o.c.prepared";
  descriptor___1.format = "%s:%s:%d   busy=%d limit=%d dev=%d lowat=%d\n";
  descriptor___1.lineno = 5353U;
  descriptor___1.flags = 0U;
  tmp___3 = ldv__builtin_expect((long )descriptor___1.flags & 1L, 0L);
  if (tmp___3 != 0L) {
    __dynamic_pr_debug(& descriptor___1, "%s:%s:%d   busy=%d limit=%d dev=%d lowat=%d\n",
                       (char *)(& skdev->name), "skd_log_skdev", 5353, skdev->in_flight,
                       skdev->cur_max_queue_depth, skdev->dev_max_queue_depth, skdev->queue_low_water_mark);
  } else {
  }
  descriptor___2.modname = "skd";
  descriptor___2.function = "skd_log_skdev";
  descriptor___2.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/9607/dscv_tempdir/dscv/ri/43_2a/drivers/block/skd_main.o.c.prepared";
  descriptor___2.format = "%s:%s:%d   timestamp=0x%x cycle=%d cycle_ix=%d\n";
  descriptor___2.lineno = 5356U;
  descriptor___2.flags = 0U;
  tmp___4 = ldv__builtin_expect((long )descriptor___2.flags & 1L, 0L);
  if (tmp___4 != 0L) {
    __dynamic_pr_debug(& descriptor___2, "%s:%s:%d   timestamp=0x%x cycle=%d cycle_ix=%d\n",
                       (char *)(& skdev->name), "skd_log_skdev", 5356, skdev->timeout_stamp,
                       (int )skdev->skcomp_cycle, skdev->skcomp_ix);
  } else {
  }
  return;
}
}
static void skd_log_skmsg(struct skd_device *skdev , struct skd_fitmsg_context *skmsg ,
                          char const *event )
{
  struct _ddebug descriptor ;
  long tmp ;
  struct _ddebug descriptor___0 ;
  char const *tmp___0 ;
  long tmp___1 ;
  {
  descriptor.modname = "skd";
  descriptor.function = "skd_log_skmsg";
  descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/9607/dscv_tempdir/dscv/ri/43_2a/drivers/block/skd_main.o.c.prepared";
  descriptor.format = "%s:%s:%d (%s) skmsg=%p event=\'%s\'\n";
  descriptor.lineno = 5363U;
  descriptor.flags = 0U;
  tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp != 0L) {
    __dynamic_pr_debug(& descriptor, "%s:%s:%d (%s) skmsg=%p event=\'%s\'\n", (char *)(& skdev->name),
                       "skd_log_skmsg", 5363, (char *)(& skdev->name), skmsg, event);
  } else {
  }
  descriptor___0.modname = "skd";
  descriptor___0.function = "skd_log_skmsg";
  descriptor___0.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/9607/dscv_tempdir/dscv/ri/43_2a/drivers/block/skd_main.o.c.prepared";
  descriptor___0.format = "%s:%s:%d   state=%s(%d) id=0x%04x length=%d\n";
  descriptor___0.lineno = 5367U;
  descriptor___0.flags = 0U;
  tmp___1 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
  if (tmp___1 != 0L) {
    tmp___0 = skd_skmsg_state_to_str(skmsg->state);
    __dynamic_pr_debug(& descriptor___0, "%s:%s:%d   state=%s(%d) id=0x%04x length=%d\n",
                       (char *)(& skdev->name), "skd_log_skmsg", 5367, tmp___0, (unsigned int )skmsg->state,
                       skmsg->id, skmsg->length);
  } else {
  }
  return;
}
}
static void skd_log_skreq(struct skd_device *skdev , struct skd_request_context *skreq ,
                          char const *event )
{
  struct _ddebug descriptor ;
  long tmp ;
  struct _ddebug descriptor___0 ;
  char const *tmp___0 ;
  long tmp___1 ;
  struct _ddebug descriptor___1 ;
  long tmp___2 ;
  struct request *req ;
  u32 lba ;
  sector_t tmp___3 ;
  u32 count ;
  unsigned int tmp___4 ;
  struct _ddebug descriptor___2 ;
  long tmp___5 ;
  struct _ddebug descriptor___3 ;
  long tmp___6 ;
  {
  descriptor.modname = "skd";
  descriptor.function = "skd_log_skreq";
  descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/9607/dscv_tempdir/dscv/ri/43_2a/drivers/block/skd_main.o.c.prepared";
  descriptor.format = "%s:%s:%d (%s) skreq=%p event=\'%s\'\n";
  descriptor.lineno = 5374U;
  descriptor.flags = 0U;
  tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp != 0L) {
    __dynamic_pr_debug(& descriptor, "%s:%s:%d (%s) skreq=%p event=\'%s\'\n", (char *)(& skdev->name),
                       "skd_log_skreq", 5374, (char *)(& skdev->name), skreq, event);
  } else {
  }
  descriptor___0.modname = "skd";
  descriptor___0.function = "skd_log_skreq";
  descriptor___0.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/9607/dscv_tempdir/dscv/ri/43_2a/drivers/block/skd_main.o.c.prepared";
  descriptor___0.format = "%s:%s:%d   state=%s(%d) id=0x%04x fitmsg=0x%04x\n";
  descriptor___0.lineno = 5378U;
  descriptor___0.flags = 0U;
  tmp___1 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
  if (tmp___1 != 0L) {
    tmp___0 = skd_skreq_state_to_str(skreq->state);
    __dynamic_pr_debug(& descriptor___0, "%s:%s:%d   state=%s(%d) id=0x%04x fitmsg=0x%04x\n",
                       (char *)(& skdev->name), "skd_log_skreq", 5378, tmp___0, (unsigned int )skreq->state,
                       (int )skreq->id, skreq->fitmsg_id);
  } else {
  }
  descriptor___1.modname = "skd";
  descriptor___1.function = "skd_log_skreq";
  descriptor___1.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/9607/dscv_tempdir/dscv/ri/43_2a/drivers/block/skd_main.o.c.prepared";
  descriptor___1.format = "%s:%s:%d   timo=0x%x sg_dir=%d n_sg=%d\n";
  descriptor___1.lineno = 5381U;
  descriptor___1.flags = 0U;
  tmp___2 = ldv__builtin_expect((long )descriptor___1.flags & 1L, 0L);
  if (tmp___2 != 0L) {
    __dynamic_pr_debug(& descriptor___1, "%s:%s:%d   timo=0x%x sg_dir=%d n_sg=%d\n",
                       (char *)(& skdev->name), "skd_log_skreq", 5381, skreq->timeout_stamp,
                       (int )skreq->sg_data_dir, skreq->n_sg);
  } else {
  }
  if ((unsigned long )skreq->req != (unsigned long )((struct request *)0)) {
    req = skreq->req;
    tmp___3 = blk_rq_pos((struct request const *)req);
    lba = (unsigned int )tmp___3;
    tmp___4 = blk_rq_sectors((struct request const *)req);
    count = tmp___4;
    descriptor___2.modname = "skd";
    descriptor___2.function = "skd_log_skreq";
    descriptor___2.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/9607/dscv_tempdir/dscv/ri/43_2a/drivers/block/skd_main.o.c.prepared";
    descriptor___2.format = "%s:%s:%d req=%p lba=%u(0x%x) count=%u(0x%x) dir=%d\n";
    descriptor___2.lineno = 5392U;
    descriptor___2.flags = 0U;
    tmp___5 = ldv__builtin_expect((long )descriptor___2.flags & 1L, 0L);
    if (tmp___5 != 0L) {
      __dynamic_pr_debug(& descriptor___2, "%s:%s:%d req=%p lba=%u(0x%x) count=%u(0x%x) dir=%d\n",
                         (char *)(& skdev->name), "skd_log_skreq", 5392, req, lba,
                         lba, count, count, (int )req->cmd_flags & 1);
    } else {
    }
  } else {
    descriptor___3.modname = "skd";
    descriptor___3.function = "skd_log_skreq";
    descriptor___3.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/9607/dscv_tempdir/dscv/ri/43_2a/drivers/block/skd_main.o.c.prepared";
    descriptor___3.format = "%s:%s:%d req=NULL\n";
    descriptor___3.lineno = 5395U;
    descriptor___3.flags = 0U;
    tmp___6 = ldv__builtin_expect((long )descriptor___3.flags & 1L, 0L);
    if (tmp___6 != 0L) {
      __dynamic_pr_debug(& descriptor___3, "%s:%s:%d req=NULL\n", (char *)(& skdev->name),
                         "skd_log_skreq", 5395);
    } else {
    }
  }
  return;
}
}
static int skd_init(void)
{
  int tmp ;
  {
  printk("\016skd:  v%s-b%s loaded\n", (char *)"2.2.1", (char *)"0260");
  switch (skd_isr_type) {
  case 0: ;
  case 1: ;
  case 2: ;
  goto ldv_36889;
  default:
  printk("\vskd: skd_isr_type %d invalid, re-set to %d\n", skd_isr_type, 1);
  skd_isr_type = 1;
  }
  ldv_36889: ;
  if (skd_max_queue_depth <= 0 || (unsigned int )skd_max_queue_depth > 200U) {
    printk("\vskd: skd_max_queue_depth %d invalid, re-set to %d\n", skd_max_queue_depth,
           64);
    skd_max_queue_depth = 64;
  } else {
  }
  if (skd_max_req_per_msg <= 0 || skd_max_req_per_msg > 14) {
    printk("\vskd: skd_max_req_per_msg %d invalid, re-set to %d\n", skd_max_req_per_msg,
           1);
    skd_max_req_per_msg = 1;
  } else {
  }
  if (skd_sgs_per_request <= 0 || skd_sgs_per_request > 4096) {
    printk("\vskd: skd_sg_per_request %d invalid, re-set to %d\n", skd_sgs_per_request,
           256U);
    skd_sgs_per_request = 256;
  } else {
  }
  if (skd_dbg_level < 0 || skd_dbg_level > 2) {
    printk("\vskd: skd_dbg_level %d invalid, re-set to %d\n", skd_dbg_level, 0);
    skd_dbg_level = 0;
  } else {
  }
  if (skd_isr_comp_limit < 0) {
    printk("\vskd: skd_isr_comp_limit %d invalid, set to %d\n", skd_isr_comp_limit,
           0);
    skd_isr_comp_limit = 0;
  } else {
  }
  if (skd_max_pass_thru <= 0 || skd_max_pass_thru > 50) {
    printk("\vskd: skd_max_pass_thru %d invalid, re-set to %d\n", skd_max_pass_thru,
           32U);
    skd_max_pass_thru = 32;
  } else {
  }
  tmp = __pci_register_driver(& skd_driver, & __this_module, "skd");
  return (tmp);
}
}
static void skd_exit(void)
{
  {
  printk("\016skd:  v%s-b%s unloading\n", (char *)"2.2.1", (char *)"0260");
  pci_unregister_driver(& skd_driver);
  if (skd_major != 0U) {
    unregister_blkdev(skd_major, "skd");
  } else {
  }
  return;
}
}
int ldv_retval_0 ;
int ldv_retval_1 ;
extern void ldv_initialize(void) ;
extern void ldv_check_final_state(void) ;
int ldv_retval_3 ;
int ldv_retval_2 ;
void timer_init_1(void)
{
  {
  ldv_timer_1_0 = 0;
  ldv_timer_1_1 = 0;
  ldv_timer_1_2 = 0;
  ldv_timer_1_3 = 0;
  return;
}
}
int reg_timer_1(struct timer_list *timer , void (*function)(unsigned long ) , unsigned long data )
{
  {
  if ((unsigned long )function == (unsigned long )(& skd_timer_tick)) {
    activate_suitable_timer_1(timer, data);
  } else {
  }
  return (0);
}
}
void choose_timer_2(struct timer_list *timer )
{
  {
  LDV_IN_INTERRUPT = 2;
  (*(timer->function))(timer->data);
  LDV_IN_INTERRUPT = 1;
  ldv_timer_state_2 = 2;
  return;
}
}
int reg_timer_2(struct timer_list *timer )
{
  {
  ldv_timer_list_2 = timer;
  ldv_timer_state_2 = 1;
  return (0);
}
}
void activate_pending_timer_2(struct timer_list *timer , unsigned long data , int pending_flag )
{
  {
  if ((unsigned long )ldv_timer_list_2 == (unsigned long )timer) {
    if (ldv_timer_state_2 == 2 || pending_flag != 0) {
      ldv_timer_list_2 = timer;
      ldv_timer_list_2->data = data;
      ldv_timer_state_2 = 1;
    } else {
    }
    return;
  } else {
  }
  reg_timer_2(timer);
  ldv_timer_list_2->data = data;
  return;
}
}
void disable_suitable_timer_2(struct timer_list *timer )
{
  {
  if ((unsigned long )timer == (unsigned long )ldv_timer_list_2) {
    ldv_timer_state_2 = 0;
    return;
  } else {
  }
  return;
}
}
void disable_suitable_timer_1(struct timer_list *timer )
{
  {
  if (ldv_timer_1_0 != 0 && (unsigned long )timer == (unsigned long )ldv_timer_list_1_0) {
    ldv_timer_1_0 = 0;
    return;
  } else {
  }
  if (ldv_timer_1_1 != 0 && (unsigned long )timer == (unsigned long )ldv_timer_list_1_1) {
    ldv_timer_1_1 = 0;
    return;
  } else {
  }
  if (ldv_timer_1_2 != 0 && (unsigned long )timer == (unsigned long )ldv_timer_list_1_2) {
    ldv_timer_1_2 = 0;
    return;
  } else {
  }
  if (ldv_timer_1_3 != 0 && (unsigned long )timer == (unsigned long )ldv_timer_list_1_3) {
    ldv_timer_1_3 = 0;
    return;
  } else {
  }
  return;
}
}
void ldv_initialize_pci_driver_3(void)
{
  void *tmp ;
  {
  tmp = ldv_zalloc(2976UL);
  skd_driver_group0 = (struct pci_dev *)tmp;
  return;
}
}
void activate_suitable_timer_1(struct timer_list *timer , unsigned long data )
{
  {
  if (ldv_timer_1_0 == 0 || ldv_timer_1_0 == 2) {
    ldv_timer_list_1_0 = timer;
    ldv_timer_list_1_0->data = data;
    ldv_timer_1_0 = 1;
    return;
  } else {
  }
  if (ldv_timer_1_1 == 0 || ldv_timer_1_1 == 2) {
    ldv_timer_list_1_1 = timer;
    ldv_timer_list_1_1->data = data;
    ldv_timer_1_1 = 1;
    return;
  } else {
  }
  if (ldv_timer_1_2 == 0 || ldv_timer_1_2 == 2) {
    ldv_timer_list_1_2 = timer;
    ldv_timer_list_1_2->data = data;
    ldv_timer_1_2 = 1;
    return;
  } else {
  }
  if (ldv_timer_1_3 == 0 || ldv_timer_1_3 == 2) {
    ldv_timer_list_1_3 = timer;
    ldv_timer_list_1_3->data = data;
    ldv_timer_1_3 = 1;
    return;
  } else {
  }
  return;
}
}
void activate_pending_timer_1(struct timer_list *timer , unsigned long data , int pending_flag )
{
  {
  if ((unsigned long )ldv_timer_list_1_0 == (unsigned long )timer) {
    if (ldv_timer_1_0 == 2 || pending_flag != 0) {
      ldv_timer_list_1_0 = timer;
      ldv_timer_list_1_0->data = data;
      ldv_timer_1_0 = 1;
    } else {
    }
    return;
  } else {
  }
  if ((unsigned long )ldv_timer_list_1_1 == (unsigned long )timer) {
    if (ldv_timer_1_1 == 2 || pending_flag != 0) {
      ldv_timer_list_1_1 = timer;
      ldv_timer_list_1_1->data = data;
      ldv_timer_1_1 = 1;
    } else {
    }
    return;
  } else {
  }
  if ((unsigned long )ldv_timer_list_1_2 == (unsigned long )timer) {
    if (ldv_timer_1_2 == 2 || pending_flag != 0) {
      ldv_timer_list_1_2 = timer;
      ldv_timer_list_1_2->data = data;
      ldv_timer_1_2 = 1;
    } else {
    }
    return;
  } else {
  }
  if ((unsigned long )ldv_timer_list_1_3 == (unsigned long )timer) {
    if (ldv_timer_1_3 == 2 || pending_flag != 0) {
      ldv_timer_list_1_3 = timer;
      ldv_timer_list_1_3->data = data;
      ldv_timer_1_3 = 1;
    } else {
    }
    return;
  } else {
  }
  activate_suitable_timer_1(timer, data);
  return;
}
}
void choose_timer_1(void)
{
  int tmp ;
  {
  tmp = __VERIFIER_nondet_int();
  switch (tmp) {
  case 0: ;
  if (ldv_timer_1_0 == 1) {
    ldv_timer_1_0 = 2;
    ldv_timer_1(ldv_timer_1_0, ldv_timer_list_1_0);
  } else {
  }
  goto ldv_36956;
  case 1: ;
  if (ldv_timer_1_1 == 1) {
    ldv_timer_1_1 = 2;
    ldv_timer_1(ldv_timer_1_1, ldv_timer_list_1_1);
  } else {
  }
  goto ldv_36956;
  case 2: ;
  if (ldv_timer_1_2 == 1) {
    ldv_timer_1_2 = 2;
    ldv_timer_1(ldv_timer_1_2, ldv_timer_list_1_2);
  } else {
  }
  goto ldv_36956;
  case 3: ;
  if (ldv_timer_1_3 == 1) {
    ldv_timer_1_3 = 2;
    ldv_timer_1(ldv_timer_1_3, ldv_timer_list_1_3);
  } else {
  }
  goto ldv_36956;
  default:
  ldv_stop();
  }
  ldv_36956: ;
  return;
}
}
void ldv_timer_1(int state , struct timer_list *timer )
{
  {
  LDV_IN_INTERRUPT = 2;
  skd_timer_tick(timer->data);
  LDV_IN_INTERRUPT = 1;
  return;
}
}
void ldv_initialize_block_device_operations_4(void)
{
  void *tmp ;
  {
  tmp = ldv_zalloc(496UL);
  skd_blockdev_ops_group0 = (struct block_device *)tmp;
  return;
}
}
int main(void)
{
  unsigned long ldvarg1 ;
  unsigned long tmp ;
  fmode_t ldvarg3 ;
  struct hd_geometry *ldvarg0 ;
  void *tmp___0 ;
  unsigned int ldvarg2 ;
  unsigned int tmp___1 ;
  pm_message_t ldvarg4 ;
  struct pci_device_id *ldvarg5 ;
  void *tmp___2 ;
  int tmp___3 ;
  int tmp___4 ;
  int tmp___5 ;
  int tmp___6 ;
  {
  tmp = __VERIFIER_nondet_ulong();
  ldvarg1 = tmp;
  tmp___0 = ldv_zalloc(16UL);
  ldvarg0 = (struct hd_geometry *)tmp___0;
  tmp___1 = __VERIFIER_nondet_uint();
  ldvarg2 = tmp___1;
  tmp___2 = ldv_zalloc(32UL);
  ldvarg5 = (struct pci_device_id *)tmp___2;
  ldv_initialize();
  memset((void *)(& ldvarg3), 0, 4UL);
  memset((void *)(& ldvarg4), 0, 4UL);
  ldv_state_variable_4 = 0;
  timer_init_1();
  ldv_state_variable_1 = 1;
  ref_cnt = 0;
  ldv_state_variable_0 = 1;
  ldv_state_variable_3 = 0;
  ldv_state_variable_2 = 1;
  ldv_37006:
  tmp___3 = __VERIFIER_nondet_int();
  switch (tmp___3) {
  case 0: ;
  if (ldv_state_variable_4 != 0) {
    tmp___4 = __VERIFIER_nondet_int();
    switch (tmp___4) {
    case 0: ;
    if (ldv_state_variable_4 == 1) {
      skd_bdev_ioctl(skd_blockdev_ops_group0, ldvarg3, ldvarg2, ldvarg1);
      ldv_state_variable_4 = 1;
    } else {
    }
    goto ldv_36985;
    case 1: ;
    if (ldv_state_variable_4 == 1) {
      skd_bdev_getgeo(skd_blockdev_ops_group0, ldvarg0);
      ldv_state_variable_4 = 1;
    } else {
    }
    goto ldv_36985;
    default:
    ldv_stop();
    }
    ldv_36985: ;
  } else {
  }
  goto ldv_36988;
  case 1: ;
  if (ldv_state_variable_1 != 0) {
    choose_timer_1();
  } else {
  }
  goto ldv_36988;
  case 2: ;
  if (ldv_state_variable_0 != 0) {
    tmp___5 = __VERIFIER_nondet_int();
    switch (tmp___5) {
    case 0: ;
    if (ldv_state_variable_0 == 3 && ref_cnt == 0) {
      skd_exit();
      ldv_state_variable_0 = 2;
      goto ldv_final;
    } else {
    }
    goto ldv_36993;
    case 1: ;
    if (ldv_state_variable_0 == 1) {
      ldv_retval_0 = skd_init();
      if (ldv_retval_0 == 0) {
        ldv_state_variable_0 = 3;
        ldv_state_variable_3 = 1;
        ldv_initialize_pci_driver_3();
        ldv_state_variable_4 = 1;
        ldv_initialize_block_device_operations_4();
      } else {
      }
      if (ldv_retval_0 != 0) {
        ldv_state_variable_0 = 2;
        goto ldv_final;
      } else {
      }
    } else {
    }
    goto ldv_36993;
    default:
    ldv_stop();
    }
    ldv_36993: ;
  } else {
  }
  goto ldv_36988;
  case 3: ;
  if (ldv_state_variable_3 != 0) {
    tmp___6 = __VERIFIER_nondet_int();
    switch (tmp___6) {
    case 0: ;
    if (ldv_state_variable_3 == 1) {
      ldv_retval_3 = skd_pci_probe(skd_driver_group0, (struct pci_device_id const *)ldvarg5);
      if (ldv_retval_3 == 0) {
        ldv_state_variable_3 = 2;
        ref_cnt = ref_cnt + 1;
      } else {
      }
    } else {
    }
    goto ldv_36998;
    case 1: ;
    if (ldv_state_variable_3 == 4) {
      skd_pci_shutdown(skd_driver_group0);
      ldv_state_variable_3 = 3;
    } else {
    }
    if (ldv_state_variable_3 == 2) {
      skd_pci_shutdown(skd_driver_group0);
      ldv_state_variable_3 = 3;
    } else {
    }
    goto ldv_36998;
    case 2: ;
    if (ldv_state_variable_3 == 2) {
      ldv_retval_2 = skd_pci_suspend(skd_driver_group0, ldvarg4);
      if (ldv_retval_2 == 0) {
        ldv_state_variable_3 = 4;
      } else {
      }
    } else {
    }
    goto ldv_36998;
    case 3: ;
    if (ldv_state_variable_3 == 4) {
      skd_pci_remove(skd_driver_group0);
      ldv_state_variable_3 = 1;
      ref_cnt = ref_cnt - 1;
    } else {
    }
    if (ldv_state_variable_3 == 3) {
      skd_pci_remove(skd_driver_group0);
      ldv_state_variable_3 = 1;
      ref_cnt = ref_cnt - 1;
    } else {
    }
    if (ldv_state_variable_3 == 2) {
      skd_pci_remove(skd_driver_group0);
      ldv_state_variable_3 = 1;
      ref_cnt = ref_cnt - 1;
    } else {
    }
    goto ldv_36998;
    case 4: ;
    if (ldv_state_variable_3 == 4) {
      ldv_retval_1 = skd_pci_resume(skd_driver_group0);
      if (ldv_retval_1 == 0) {
        ldv_state_variable_3 = 2;
      } else {
      }
    } else {
    }
    goto ldv_36998;
    default:
    ldv_stop();
    }
    ldv_36998: ;
  } else {
  }
  goto ldv_36988;
  case 4: ;
  if (ldv_state_variable_2 != 0) {
    choose_timer_2(ldv_timer_list_2);
  } else {
  }
  goto ldv_36988;
  default:
  ldv_stop();
  }
  ldv_36988: ;
  goto ldv_37006;
  ldv_final:
  ldv_check_final_state();
  return 0;
}
}
__inline static void spin_lock(spinlock_t *lock )
{
  {
  ldv_spin_lock();
  ldv_spin_lock_1(lock);
  return;
}
}
__inline static void spin_unlock(spinlock_t *lock )
{
  {
  ldv_spin_unlock();
  ldv_spin_unlock_5(lock);
  return;
}
}
__inline static void spin_unlock_irqrestore(spinlock_t *lock , unsigned long flags )
{
  {
  ldv_spin_unlock();
  ldv_spin_unlock_irqrestore_8(lock, flags);
  return;
}
}
void *ldv_malloc(size_t size ) ;
__inline static struct page *alloc_pages(gfp_t flags , unsigned int order )
{
  struct page *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = ldv_alloc_pages_11(flags, order);
  return (tmp);
}
}
__inline static void *kmalloc(size_t size , gfp_t flags )
{
  {
  ldv_check_alloc_flags(flags);
  ldv_kmalloc_12(size, flags);
  return ((void *)0);
}
}
void *ldv_kmem_cache_alloc_16(struct kmem_cache *ldv_func_arg1 , gfp_t flags )
{
  {
  ldv_check_alloc_flags(flags);
  kmem_cache_alloc(ldv_func_arg1, flags);
  return ((void *)0);
}
}
__inline static void *kzalloc(size_t size , gfp_t flags )
{
  {
  ldv_check_alloc_flags(flags);
  return ((void *)0);
}
}
int ldv_mod_timer_20(struct timer_list *ldv_func_arg1 , unsigned long ldv_func_arg2 )
{
  ldv_func_ret_type___2 ldv_func_res ;
  int tmp ;
  {
  tmp = mod_timer(ldv_func_arg1, ldv_func_arg2);
  ldv_func_res = tmp;
  activate_pending_timer_1(ldv_func_arg1, ldv_func_arg2, 1);
  return (ldv_func_res);
}
}
int ldv_mod_timer_21(struct timer_list *ldv_func_arg1 , unsigned long ldv_func_arg2 )
{
  ldv_func_ret_type___3 ldv_func_res ;
  int tmp ;
  {
  tmp = mod_timer(ldv_func_arg1, ldv_func_arg2);
  ldv_func_res = tmp;
  activate_pending_timer_1(ldv_func_arg1, ldv_func_arg2, 1);
  return (ldv_func_res);
}
}
int ldv_del_timer_sync_22(struct timer_list *ldv_func_arg1 )
{
  ldv_func_ret_type___4 ldv_func_res ;
  int tmp ;
  {
  tmp = del_timer_sync(ldv_func_arg1);
  ldv_func_res = tmp;
  disable_suitable_timer_1(ldv_func_arg1);
  return (ldv_func_res);
}
}
__inline static void ldv_error(void);
int ldv_spin = 0;
void ldv_check_alloc_flags(gfp_t flags )
{
  {
  if (ldv_spin == 0 || ! (flags & 16U)) {
  } else {
    ldv_error();
  }
  return;
}
}
extern struct page___0 *ldv_some_page(void) ;
struct page___0 *ldv_check_alloc_flags_and_return_some_page(gfp_t flags )
{
  struct page___0 *tmp ;
  {
  if (ldv_spin == 0 || ! (flags & 16U)) {
  } else {
    ldv_error();
  }
  tmp = ldv_some_page();
  return (tmp);
}
}
void ldv_check_alloc_nonatomic(void)
{
  {
  if (ldv_spin == 0) {
  } else {
    ldv_error();
  }
  return;
}
}
void ldv_spin_lock(void)
{
  {
  ldv_spin = 1;
  return;
}
}
void ldv_spin_unlock(void)
{
  {
  ldv_spin = 0;
  return;
}
}
int ldv_spin_trylock(void)
{
  int is_lock ;
  {
  is_lock = ldv_undef_int();
  if (is_lock) {
    return (0);
  } else {
    ldv_spin = 1;
    return (1);
  }
}
}
void __blk_end_request_all(struct request *arg0, int arg1) {
  return;
}
void __copy_from_user_overflow() {
  return;
}
int __VERIFIER_nondet_int(void);
int __dynamic_pr_debug(struct _ddebug *arg0, const char *arg1, ...) {
  return __VERIFIER_nondet_int();
}
void __free_pages(struct page *arg0, unsigned int arg1) {
  return;
}
void __init_waitqueue_head(wait_queue_head_t *arg0, const char *arg1, struct lock_class_key *arg2) {
  return;
}
void __init_work(struct work_struct *arg0, int arg1) {
  return;
}
int __VERIFIER_nondet_int(void);
int __pci_enable_wake(struct pci_dev *arg0, pci_power_t arg1, bool arg2, bool arg3) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int __pci_register_driver(struct pci_driver *arg0, struct module *arg1, const char *arg2) {
  return __VERIFIER_nondet_int();
}
void __raw_spin_lock_init(raw_spinlock_t *arg0, const char *arg1, struct lock_class_key *arg2) {
  return;
}
void __wake_up(wait_queue_head_t *arg0, unsigned int arg1, int arg2, void *arg3) {
  return;
}
unsigned long __VERIFIER_nondet_ulong(void);
unsigned long int _copy_from_user(void *arg0, const void *arg1, unsigned int arg2) {
  return __VERIFIER_nondet_ulong();
}
void _raw_spin_lock(raw_spinlock_t *arg0) {
  return;
}
void _raw_spin_unlock(raw_spinlock_t *arg0) {
  return;
}
void _raw_spin_unlock_irqrestore(raw_spinlock_t *arg0, unsigned long arg1) {
  return;
}
void add_disk(struct gendisk *arg0) {
  return;
}
void *external_alloc(void);
struct gendisk *alloc_disk(int arg0) {
  return (struct gendisk *)external_alloc();
}
void *external_alloc(void);
struct page *alloc_pages_current(gfp_t arg0, unsigned int arg1) {
  return (struct page *)external_alloc();
}
void blk_add_request_payload(struct request *arg0, struct page *arg1, unsigned int arg2) {
  return;
}
void blk_cleanup_queue(struct request_queue *arg0) {
  return;
}
void *external_alloc(void);
struct request_queue *blk_init_queue(request_fn_proc *arg0, spinlock_t *arg1) {
  return (struct request_queue *)external_alloc();
}
void *external_alloc(void);
struct request *blk_peek_request(struct request_queue *arg0) {
  return (struct request *)external_alloc();
}
void blk_queue_flush(struct request_queue *arg0, unsigned int arg1) {
  return;
}
void blk_queue_io_opt(struct request_queue *arg0, unsigned int arg1) {
  return;
}
void blk_queue_max_hw_sectors(struct request_queue *arg0, unsigned int arg1) {
  return;
}
void blk_queue_max_segments(struct request_queue *arg0, unsigned short arg1) {
  return;
}
void blk_requeue_request(struct request_queue *arg0, struct request *arg1) {
  return;
}
int __VERIFIER_nondet_int(void);
int blk_rq_map_sg(struct request_queue *arg0, struct request *arg1, struct scatterlist *arg2) {
  return __VERIFIER_nondet_int();
}
void blk_start_queue(struct request_queue *arg0) {
  return;
}
void blk_start_request(struct request *arg0) {
  return;
}
void blk_stop_queue(struct request_queue *arg0) {
  return;
}
bool __VERIFIER_nondet_bool(void);
bool capable(int arg0) {
  return __VERIFIER_nondet_bool();
}
void debug_dma_alloc_coherent(struct device *arg0, size_t arg1, dma_addr_t arg2, void *arg3) {
  return;
}
void debug_dma_free_coherent(struct device *arg0, size_t arg1, void *arg2, dma_addr_t arg3) {
  return;
}
void debug_dma_map_sg(struct device *arg0, struct scatterlist *arg1, int arg2, int arg3, int arg4) {
  return;
}
void debug_dma_sync_sg_for_cpu(struct device *arg0, struct scatterlist *arg1, int arg2, int arg3) {
  return;
}
void debug_dma_unmap_sg(struct device *arg0, struct scatterlist *arg1, int arg2, int arg3) {
  return;
}
void del_gendisk(struct gendisk *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int del_timer_sync(struct timer_list *arg0) {
  return __VERIFIER_nondet_int();
}
void devm_free_irq(struct device *arg0, unsigned int arg1, void *arg2) {
  return;
}
int __VERIFIER_nondet_int(void);
int devm_request_threaded_irq(struct device *arg0, unsigned int arg1, irqreturn_t (*arg2)(int, void *), irqreturn_t (*arg3)(int, void *), unsigned long arg4, const char *arg5, void *arg6) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int dma_set_mask(struct device *arg0, u64 arg1) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int dma_supported(struct device *arg0, u64 arg1) {
  return __VERIFIER_nondet_int();
}
void finish_wait(wait_queue_head_t *arg0, wait_queue_t *arg1) {
  return;
}
unsigned long __VERIFIER_nondet_ulong(void);
unsigned long int get_seconds() {
  return __VERIFIER_nondet_ulong();
}
void *external_alloc(void);
void *ioremap_nocache(resource_size_t arg0, unsigned long arg1) {
  return (void *)external_alloc();
}
void iounmap(volatile void *arg0) {
  return;
}
unsigned long __VERIFIER_nondet_ulong(void);
unsigned long int iov_shorten(struct iovec *arg0, unsigned long arg1, size_t arg2) {
  return __VERIFIER_nondet_ulong();
}
void *external_alloc(void);
void *kmem_cache_alloc(struct kmem_cache *arg0, gfp_t arg1) {
  return (void *)external_alloc();
}
void ldv_check_final_state() {
  return;
}
void ldv_initialize() {
  return;
}
void *external_alloc(void);
struct page___0 *ldv_some_page() {
  return (struct page___0 *)external_alloc();
}
int __VERIFIER_nondet_int(void);
int lock_is_held(struct lockdep_map *arg0) {
  return __VERIFIER_nondet_int();
}
void lockdep_init_map(struct lockdep_map *arg0, const char *arg1, struct lock_class_key *arg2, int arg3) {
  return;
}
void might_fault() {
  return;
}
int __VERIFIER_nondet_int(void);
int mod_timer(struct timer_list *arg0, unsigned long arg1) {
  return __VERIFIER_nondet_int();
}
unsigned long __VERIFIER_nondet_ulong(void);
unsigned long int msecs_to_jiffies(const unsigned int arg0) {
  return __VERIFIER_nondet_ulong();
}
int __VERIFIER_nondet_int(void);
int pci_bus_read_config_word(struct pci_bus *arg0, unsigned int arg1, int arg2, u16 *arg3) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
pci_power_t pci_choose_state(struct pci_dev *arg0, pm_message_t arg1) {
  return __VERIFIER_nondet_int();
}
void pci_disable_device(struct pci_dev *arg0) {
  return;
}
void pci_disable_msi(struct pci_dev *arg0) {
  return;
}
void pci_disable_msix(struct pci_dev *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int pci_disable_pcie_error_reporting(struct pci_dev *arg0) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int pci_enable_device(struct pci_dev *arg0) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int pci_enable_msi_range(struct pci_dev *arg0, int arg1, int arg2) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int pci_enable_msix_range(struct pci_dev *arg0, struct msix_entry *arg1, int arg2, int arg3) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int pci_enable_pcie_error_reporting(struct pci_dev *arg0) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int pci_find_capability(struct pci_dev *arg0, int arg1) {
  return __VERIFIER_nondet_int();
}
void pci_release_regions(struct pci_dev *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int pci_request_regions(struct pci_dev *arg0, const char *arg1) {
  return __VERIFIER_nondet_int();
}
void pci_restore_state(struct pci_dev *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int pci_save_state(struct pci_dev *arg0) {
  return __VERIFIER_nondet_int();
}
void pci_set_master(struct pci_dev *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int pci_set_power_state(struct pci_dev *arg0, pci_power_t arg1) {
  return __VERIFIER_nondet_int();
}
void pci_unregister_driver(struct pci_driver *arg0) {
  return;
}
long __VERIFIER_nondet_long(void);
long int prepare_to_wait_event(wait_queue_head_t *arg0, wait_queue_t *arg1, int arg2) {
  return __VERIFIER_nondet_long();
}
int __VERIFIER_nondet_int(void);
int printk(const char *arg0, ...) {
  return __VERIFIER_nondet_int();
}
void put_disk(struct gendisk *arg0) {
  return;
}
bool __VERIFIER_nondet_bool(void);
bool queue_work_on(int arg0, struct workqueue_struct *arg1, struct work_struct *arg2) {
  return __VERIFIER_nondet_bool();
}
int __VERIFIER_nondet_int(void);
int register_blkdev(unsigned int arg0, const char *arg1) {
  return __VERIFIER_nondet_int();
}
long __VERIFIER_nondet_long(void);
long int schedule_timeout(long arg0) {
  return __VERIFIER_nondet_long();
}
int __VERIFIER_nondet_int(void);
int scsi_cmd_ioctl(struct request_queue *arg0, struct gendisk *arg1, fmode_t arg2, unsigned int arg3, void *arg4) {
  return __VERIFIER_nondet_int();
}
void sg_init_table(struct scatterlist *arg0, unsigned int arg1) {
  return;
}
void *external_alloc(void);
struct scatterlist *sg_next(struct scatterlist *arg0) {
  return (struct scatterlist *)external_alloc();
}
void unregister_blkdev(unsigned int arg0, const char *arg1) {
  return;
}
void warn_slowpath_null(const char *arg0, const int arg1) {
  return;
}
void *__VERIFIER_nondet_pointer(void);
void *external_alloc(void) {
  return __VERIFIER_nondet_pointer();
}
void free(void *);
void kfree(void const *p) {
  free((void *)p);
}
