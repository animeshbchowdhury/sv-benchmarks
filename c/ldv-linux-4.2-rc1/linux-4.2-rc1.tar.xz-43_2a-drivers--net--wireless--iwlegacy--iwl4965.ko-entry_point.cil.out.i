extern void __VERIFIER_error() __attribute__ ((__noreturn__));
typedef unsigned char __u8;
typedef unsigned short __u16;
typedef int __s32;
typedef unsigned int __u32;
typedef unsigned long long __u64;
typedef signed char s8;
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
typedef __u16 __le16;
typedef __u16 __be16;
typedef __u32 __le32;
typedef __u32 __be32;
typedef __u64 __le64;
typedef __u32 __wsum;
struct kernel_symbol {
   unsigned long value ;
   char const *name ;
};
struct module;
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
typedef __s32 int32_t;
typedef __u8 uint8_t;
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
struct __anonstruct____missing_field_name_9 {
   unsigned int a ;
   unsigned int b ;
};
struct __anonstruct____missing_field_name_10 {
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
union __anonunion____missing_field_name_8 {
   struct __anonstruct____missing_field_name_9 __annonCompField4 ;
   struct __anonstruct____missing_field_name_10 __annonCompField5 ;
};
struct desc_struct {
   union __anonunion____missing_field_name_8 __annonCompField6 ;
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
struct qspinlock {
   atomic_t val ;
};
typedef struct qspinlock arch_spinlock_t;
struct qrwlock {
   atomic_t cnts ;
   arch_spinlock_t lock ;
};
typedef struct qrwlock arch_rwlock_t;
typedef void (*ctor_fn_t)(void);
struct device;
struct net_device;
struct file_operations;
struct completion;
struct bug_entry {
   int bug_addr_disp ;
   int file_disp ;
   unsigned short line ;
   unsigned short flags ;
};
struct timespec;
struct compat_timespec;
struct __anonstruct_futex_16 {
   u32 *uaddr ;
   u32 val ;
   u32 flags ;
   u32 bitset ;
   u64 time ;
   u32 *uaddr2 ;
};
struct __anonstruct_nanosleep_17 {
   clockid_t clockid ;
   struct timespec *rmtp ;
   struct compat_timespec *compat_rmtp ;
   u64 expires ;
};
struct pollfd;
struct __anonstruct_poll_18 {
   struct pollfd *ufds ;
   int nfds ;
   int has_timeout ;
   unsigned long tv_sec ;
   unsigned long tv_nsec ;
};
union __anonunion____missing_field_name_15 {
   struct __anonstruct_futex_16 futex ;
   struct __anonstruct_nanosleep_17 nanosleep ;
   struct __anonstruct_poll_18 poll ;
};
struct restart_block {
   long (*fn)(struct restart_block * ) ;
   union __anonunion____missing_field_name_15 __annonCompField7 ;
};
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
union __anonunion____missing_field_name_19 {
   struct pt_regs *regs ;
   struct kernel_vm86_regs *vm86 ;
};
struct math_emu_info {
   long ___orig_eip ;
   union __anonunion____missing_field_name_19 __annonCompField8 ;
};
struct cpumask {
   unsigned long bits[128U] ;
};
typedef struct cpumask cpumask_t;
typedef struct cpumask *cpumask_var_t;
struct fregs_state {
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
struct __anonstruct____missing_field_name_29 {
   u64 rip ;
   u64 rdp ;
};
struct __anonstruct____missing_field_name_30 {
   u32 fip ;
   u32 fcs ;
   u32 foo ;
   u32 fos ;
};
union __anonunion____missing_field_name_28 {
   struct __anonstruct____missing_field_name_29 __annonCompField12 ;
   struct __anonstruct____missing_field_name_30 __annonCompField13 ;
};
union __anonunion____missing_field_name_31 {
   u32 padding1[12U] ;
   u32 sw_reserved[12U] ;
};
struct fxregs_state {
   u16 cwd ;
   u16 swd ;
   u16 twd ;
   u16 fop ;
   union __anonunion____missing_field_name_28 __annonCompField14 ;
   u32 mxcsr ;
   u32 mxcsr_mask ;
   u32 st_space[32U] ;
   u32 xmm_space[64U] ;
   u32 padding[12U] ;
   union __anonunion____missing_field_name_31 __annonCompField15 ;
};
struct swregs_state {
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
struct xstate_header {
   u64 xfeatures ;
   u64 xcomp_bv ;
   u64 reserved[6U] ;
};
struct xregs_state {
   struct fxregs_state i387 ;
   struct xstate_header header ;
   u8 __reserved[464U] ;
};
union fpregs_state {
   struct fregs_state fsave ;
   struct fxregs_state fxsave ;
   struct swregs_state soft ;
   struct xregs_state xsave ;
};
struct fpu {
   union fpregs_state state ;
   unsigned int last_cpu ;
   unsigned char fpstate_active ;
   unsigned char fpregs_active ;
   unsigned char counter ;
};
struct seq_operations;
struct perf_event;
struct thread_struct {
   struct desc_struct tls_array[3U] ;
   unsigned long sp0 ;
   unsigned long sp ;
   unsigned short es ;
   unsigned short ds ;
   unsigned short fsindex ;
   unsigned short gsindex ;
   unsigned long fs ;
   unsigned long gs ;
   struct fpu fpu ;
   struct perf_event *ptrace_bps[4U] ;
   unsigned long debugreg6 ;
   unsigned long ptrace_dr7 ;
   unsigned long cr2 ;
   unsigned long trap_nr ;
   unsigned long error_code ;
   unsigned long *io_bitmap_ptr ;
   unsigned long iopl ;
   unsigned int io_bitmap_max ;
};
typedef atomic64_t atomic_long_t;
struct lockdep_map;
struct stack_trace {
   unsigned int nr_entries ;
   unsigned int max_entries ;
   unsigned long *entries ;
   int skip ;
};
struct lockdep_subclass_key {
   char __one_byte ;
};
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
   unsigned int pin_count ;
};
struct raw_spinlock {
   arch_spinlock_t raw_lock ;
   unsigned int magic ;
   unsigned int owner_cpu ;
   void *owner ;
   struct lockdep_map dep_map ;
};
typedef struct raw_spinlock raw_spinlock_t;
struct __anonstruct____missing_field_name_35 {
   u8 __padding[24U] ;
   struct lockdep_map dep_map ;
};
union __anonunion____missing_field_name_34 {
   struct raw_spinlock rlock ;
   struct __anonstruct____missing_field_name_35 __annonCompField17 ;
};
struct spinlock {
   union __anonunion____missing_field_name_34 __annonCompField18 ;
};
typedef struct spinlock spinlock_t;
struct __anonstruct_rwlock_t_36 {
   arch_rwlock_t raw_lock ;
   unsigned int magic ;
   unsigned int owner_cpu ;
   void *owner ;
   struct lockdep_map dep_map ;
};
typedef struct __anonstruct_rwlock_t_36 rwlock_t;
struct seqcount {
   unsigned int sequence ;
   struct lockdep_map dep_map ;
};
typedef struct seqcount seqcount_t;
struct __anonstruct_seqlock_t_45 {
   struct seqcount seqcount ;
   spinlock_t lock ;
};
typedef struct __anonstruct_seqlock_t_45 seqlock_t;
struct timespec {
   __kernel_time_t tv_sec ;
   long tv_nsec ;
};
struct user_namespace;
struct __anonstruct_kuid_t_46 {
   uid_t val ;
};
typedef struct __anonstruct_kuid_t_46 kuid_t;
struct __anonstruct_kgid_t_47 {
   gid_t val ;
};
typedef struct __anonstruct_kgid_t_47 kgid_t;
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
struct vm_area_struct;
struct __wait_queue_head {
   spinlock_t lock ;
   struct list_head task_list ;
};
typedef struct __wait_queue_head wait_queue_head_t;
struct __anonstruct_nodemask_t_48 {
   unsigned long bits[16U] ;
};
typedef struct __anonstruct_nodemask_t_48 nodemask_t;
struct optimistic_spin_queue {
   atomic_t tail ;
};
struct mutex {
   atomic_t count ;
   spinlock_t wait_lock ;
   struct list_head wait_list ;
   struct task_struct *owner ;
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
   struct list_head wait_list ;
   raw_spinlock_t wait_lock ;
   struct optimistic_spin_queue osq ;
   struct task_struct *owner ;
   struct lockdep_map dep_map ;
};
struct completion {
   unsigned int done ;
   wait_queue_head_t wait ;
};
union ktime {
   s64 tv64 ;
};
typedef union ktime ktime_t;
struct notifier_block;
struct timer_list {
   struct hlist_node entry ;
   unsigned long expires ;
   void (*function)(unsigned long ) ;
   unsigned long data ;
   u32 flags ;
   int slack ;
   int start_pid ;
   void *start_site ;
   char start_comm[16U] ;
   struct lockdep_map lockdep_map ;
};
struct hrtimer;
enum hrtimer_restart;
struct rb_node {
   unsigned long __rb_parent_color ;
   struct rb_node *rb_right ;
   struct rb_node *rb_left ;
};
struct rb_root {
   struct rb_node *rb_node ;
};
struct ctl_table;
struct nsproxy;
struct ctl_table_root;
struct ctl_table_header;
struct ctl_dir;
typedef int proc_handler(struct ctl_table * , int , void * , size_t * , loff_t * );
struct ctl_table_poll {
   atomic_t event ;
   wait_queue_head_t wait ;
};
struct ctl_table {
   char const *procname ;
   void *data ;
   int maxlen ;
   umode_t mode ;
   struct ctl_table *child ;
   proc_handler *proc_handler ;
   struct ctl_table_poll *poll ;
   void *extra1 ;
   void *extra2 ;
};
struct ctl_node {
   struct rb_node node ;
   struct ctl_table_header *header ;
};
struct __anonstruct____missing_field_name_50 {
   struct ctl_table *ctl_table ;
   int used ;
   int count ;
   int nreg ;
};
union __anonunion____missing_field_name_49 {
   struct __anonstruct____missing_field_name_50 __annonCompField19 ;
   struct callback_head rcu ;
};
struct ctl_table_set;
struct ctl_table_header {
   union __anonunion____missing_field_name_49 __annonCompField20 ;
   struct completion *unregistering ;
   struct ctl_table *ctl_table_arg ;
   struct ctl_table_root *root ;
   struct ctl_table_set *set ;
   struct ctl_dir *parent ;
   struct ctl_node *node ;
};
struct ctl_dir {
   struct ctl_table_header header ;
   struct rb_root root ;
};
struct ctl_table_set {
   int (*is_seen)(struct ctl_table_set * ) ;
   struct ctl_dir dir ;
};
struct ctl_table_root {
   struct ctl_table_set default_set ;
   struct ctl_table_set *(*lookup)(struct ctl_table_root * , struct nsproxy * ) ;
   int (*permissions)(struct ctl_table_header * , struct ctl_table * ) ;
};
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
struct notifier_block {
   int (*notifier_call)(struct notifier_block * , unsigned long , void * ) ;
   struct notifier_block *next ;
   int priority ;
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
struct wake_irq;
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
   struct wake_irq *wakeirq ;
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
   void (*detach)(struct device * , bool ) ;
   int (*activate)(struct device * ) ;
   void (*sync)(struct device * ) ;
   void (*dismiss)(struct device * ) ;
};
struct pci_bus;
struct __anonstruct_mm_context_t_115 {
   void *ldt ;
   int size ;
   unsigned short ia32_compat ;
   struct mutex lock ;
   void *vdso ;
   atomic_t perf_rdpmc_allowed ;
};
typedef struct __anonstruct_mm_context_t_115 mm_context_t;
struct bio_vec;
struct llist_node;
struct llist_node {
   struct llist_node *next ;
};
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
struct __anonstruct____missing_field_name_148 {
   struct arch_uprobe_task autask ;
   unsigned long vaddr ;
};
struct __anonstruct____missing_field_name_149 {
   struct callback_head dup_xol_work ;
   unsigned long dup_xol_addr ;
};
union __anonunion____missing_field_name_147 {
   struct __anonstruct____missing_field_name_148 __annonCompField33 ;
   struct __anonstruct____missing_field_name_149 __annonCompField34 ;
};
struct uprobe;
struct return_instance;
struct uprobe_task {
   enum uprobe_task_state state ;
   union __anonunion____missing_field_name_147 __annonCompField35 ;
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
struct mem_cgroup;
typedef void compound_page_dtor(struct page * );
union __anonunion____missing_field_name_150 {
   struct address_space *mapping ;
   void *s_mem ;
};
union __anonunion____missing_field_name_152 {
   unsigned long index ;
   void *freelist ;
   bool pfmemalloc ;
};
struct __anonstruct____missing_field_name_156 {
   unsigned short inuse ;
   unsigned short objects : 15 ;
   unsigned char frozen : 1 ;
};
union __anonunion____missing_field_name_155 {
   atomic_t _mapcount ;
   struct __anonstruct____missing_field_name_156 __annonCompField38 ;
   int units ;
};
struct __anonstruct____missing_field_name_154 {
   union __anonunion____missing_field_name_155 __annonCompField39 ;
   atomic_t _count ;
};
union __anonunion____missing_field_name_153 {
   unsigned long counters ;
   struct __anonstruct____missing_field_name_154 __annonCompField40 ;
   unsigned int active ;
};
struct __anonstruct____missing_field_name_151 {
   union __anonunion____missing_field_name_152 __annonCompField37 ;
   union __anonunion____missing_field_name_153 __annonCompField41 ;
};
struct __anonstruct____missing_field_name_158 {
   struct page *next ;
   int pages ;
   int pobjects ;
};
struct slab;
struct __anonstruct____missing_field_name_159 {
   compound_page_dtor *compound_dtor ;
   unsigned long compound_order ;
};
union __anonunion____missing_field_name_157 {
   struct list_head lru ;
   struct __anonstruct____missing_field_name_158 __annonCompField43 ;
   struct slab *slab_page ;
   struct callback_head callback_head ;
   struct __anonstruct____missing_field_name_159 __annonCompField44 ;
   pgtable_t pmd_huge_pte ;
};
struct kmem_cache;
union __anonunion____missing_field_name_160 {
   unsigned long private ;
   spinlock_t *ptl ;
   struct kmem_cache *slab_cache ;
   struct page *first_page ;
};
struct page {
   unsigned long flags ;
   union __anonunion____missing_field_name_150 __annonCompField36 ;
   struct __anonstruct____missing_field_name_151 __annonCompField42 ;
   union __anonunion____missing_field_name_157 __annonCompField45 ;
   union __anonunion____missing_field_name_160 __annonCompField46 ;
   struct mem_cgroup *mem_cgroup ;
};
struct page_frag {
   struct page *page ;
   __u32 offset ;
   __u32 size ;
};
struct __anonstruct_shared_161 {
   struct rb_node rb ;
   unsigned long rb_subtree_last ;
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
   struct __anonstruct_shared_161 shared ;
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
   atomic_long_t nr_pmds ;
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
   void *bd_addr ;
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
union __anonunion____missing_field_name_166 {
   unsigned long bitmap[4U] ;
   struct callback_head callback_head ;
};
struct idr_layer {
   int prefix ;
   int layer ;
   struct idr_layer *ary[256U] ;
   int count ;
   union __anonunion____missing_field_name_166 __annonCompField47 ;
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
   struct kernfs_node *notify_next ;
};
union __anonunion____missing_field_name_171 {
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
   union __anonunion____missing_field_name_171 __annonCompField48 ;
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
   char *prealloc_buf ;
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
   bool prealloc ;
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
union __anonunion____missing_field_name_172 {
   void *arg ;
   struct kparam_string const *str ;
   struct kparam_array const *arr ;
};
struct kernel_param {
   char const *name ;
   struct module *mod ;
   struct kernel_param_ops const *ops ;
   u16 const perm ;
   s8 level ;
   u8 flags ;
   union __anonunion____missing_field_name_172 __annonCompField49 ;
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
struct latch_tree_node {
   struct rb_node node[2U] ;
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
struct mod_tree_node {
   struct module *mod ;
   struct latch_tree_node node ;
};
struct module_sect_attrs;
struct module_notes_attrs;
struct tracepoint;
struct trace_event_call;
struct trace_enum_map;
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
   struct mutex param_lock ;
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
   bool async_probe_requested ;
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
   struct mod_tree_node mtn_core ;
   struct mod_tree_node mtn_init ;
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
   struct trace_event_call **trace_events ;
   unsigned int num_trace_events ;
   struct trace_enum_map **trace_enums ;
   unsigned int num_trace_enums ;
   unsigned int num_ftrace_callsites ;
   unsigned long *ftrace_callsites ;
   bool klp_alive ;
   struct list_head source_list ;
   struct list_head target_list ;
   void (*exit)(void) ;
   atomic_t refcnt ;
   ctor_fn_t (**ctors)(void) ;
   unsigned int num_ctors ;
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
struct user_struct;
struct sysv_shm {
   struct list_head shm_clist ;
};
struct __anonstruct_sigset_t_180 {
   unsigned long sig[1U] ;
};
typedef struct __anonstruct_sigset_t_180 sigset_t;
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
struct __anonstruct__kill_182 {
   __kernel_pid_t _pid ;
   __kernel_uid32_t _uid ;
};
struct __anonstruct__timer_183 {
   __kernel_timer_t _tid ;
   int _overrun ;
   char _pad[0U] ;
   sigval_t _sigval ;
   int _sys_private ;
};
struct __anonstruct__rt_184 {
   __kernel_pid_t _pid ;
   __kernel_uid32_t _uid ;
   sigval_t _sigval ;
};
struct __anonstruct__sigchld_185 {
   __kernel_pid_t _pid ;
   __kernel_uid32_t _uid ;
   int _status ;
   __kernel_clock_t _utime ;
   __kernel_clock_t _stime ;
};
struct __anonstruct__addr_bnd_187 {
   void *_lower ;
   void *_upper ;
};
struct __anonstruct__sigfault_186 {
   void *_addr ;
   short _addr_lsb ;
   struct __anonstruct__addr_bnd_187 _addr_bnd ;
};
struct __anonstruct__sigpoll_188 {
   long _band ;
   int _fd ;
};
struct __anonstruct__sigsys_189 {
   void *_call_addr ;
   int _syscall ;
   unsigned int _arch ;
};
union __anonunion__sifields_181 {
   int _pad[28U] ;
   struct __anonstruct__kill_182 _kill ;
   struct __anonstruct__timer_183 _timer ;
   struct __anonstruct__rt_184 _rt ;
   struct __anonstruct__sigchld_185 _sigchld ;
   struct __anonstruct__sigfault_186 _sigfault ;
   struct __anonstruct__sigpoll_188 _sigpoll ;
   struct __anonstruct__sigsys_189 _sigsys ;
};
struct siginfo {
   int si_signo ;
   int si_errno ;
   int si_code ;
   union __anonunion__sifields_181 _sifields ;
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
   ktime_t (*get_time)(void) ;
   ktime_t offset ;
};
struct hrtimer_cpu_base {
   raw_spinlock_t lock ;
   seqcount_t seq ;
   struct hrtimer *running ;
   unsigned int cpu ;
   unsigned int active_bases ;
   unsigned int clock_was_set_seq ;
   bool migration_enabled ;
   bool nohz_active ;
   unsigned char in_hrtirq : 1 ;
   unsigned char hres_active : 1 ;
   unsigned char hang_detected : 1 ;
   ktime_t expires_next ;
   struct hrtimer *next_timer ;
   unsigned int nr_events ;
   unsigned int nr_retries ;
   unsigned int nr_hangs ;
   unsigned int max_hang_time ;
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
union __anonunion____missing_field_name_196 {
   struct list_head graveyard_link ;
   struct rb_node serial_node ;
};
struct key_user;
union __anonunion____missing_field_name_197 {
   time_t expiry ;
   time_t revoked_at ;
};
struct __anonstruct____missing_field_name_199 {
   struct key_type *type ;
   char *description ;
};
union __anonunion____missing_field_name_198 {
   struct keyring_index_key index_key ;
   struct __anonstruct____missing_field_name_199 __annonCompField52 ;
};
union __anonunion_type_data_200 {
   struct list_head link ;
   unsigned long x[2U] ;
   void *p[2U] ;
   int reject_error ;
};
union __anonunion_payload_202 {
   unsigned long value ;
   void *rcudata ;
   void *data ;
   void *data2[2U] ;
};
union __anonunion____missing_field_name_201 {
   union __anonunion_payload_202 payload ;
   struct assoc_array keys ;
};
struct key {
   atomic_t usage ;
   key_serial_t serial ;
   union __anonunion____missing_field_name_196 __annonCompField50 ;
   struct rw_semaphore sem ;
   struct key_user *user ;
   void *security ;
   union __anonunion____missing_field_name_197 __annonCompField51 ;
   time_t last_used_at ;
   kuid_t uid ;
   kgid_t gid ;
   key_perm_t perm ;
   unsigned short quotalen ;
   unsigned short datalen ;
   unsigned long flags ;
   union __anonunion____missing_field_name_198 __annonCompField53 ;
   union __anonunion_type_data_200 type_data ;
   union __anonunion____missing_field_name_201 __annonCompField54 ;
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
struct percpu_ref;
typedef void percpu_ref_func_t(struct percpu_ref * );
struct percpu_ref {
   atomic_long_t count ;
   unsigned long percpu_count_ptr ;
   percpu_ref_func_t *release ;
   percpu_ref_func_t *confirm_switch ;
   bool force_atomic ;
   struct callback_head rcu ;
};
struct cgroup;
struct cgroup_root;
struct cgroup_subsys;
struct cgroup_taskset;
struct cgroup_subsys_state {
   struct cgroup *cgroup ;
   struct cgroup_subsys *ss ;
   struct percpu_ref refcnt ;
   struct cgroup_subsys_state *parent ;
   struct list_head sibling ;
   struct list_head children ;
   int id ;
   unsigned int flags ;
   u64 serial_nr ;
   struct callback_head callback_head ;
   struct work_struct destroy_work ;
};
struct css_set {
   atomic_t refcount ;
   struct hlist_node hlist ;
   struct list_head tasks ;
   struct list_head mg_tasks ;
   struct list_head cgrp_links ;
   struct cgroup *dfl_cgrp ;
   struct cgroup_subsys_state *subsys[12U] ;
   struct list_head mg_preload_node ;
   struct list_head mg_node ;
   struct cgroup *mg_src_cgrp ;
   struct css_set *mg_dst_cset ;
   struct list_head e_cset_node[12U] ;
   struct callback_head callback_head ;
};
struct cgroup {
   struct cgroup_subsys_state self ;
   unsigned long flags ;
   int id ;
   int populated_cnt ;
   struct kernfs_node *kn ;
   struct kernfs_node *procs_kn ;
   struct kernfs_node *populated_kn ;
   unsigned int subtree_control ;
   unsigned int child_subsys_mask ;
   struct cgroup_subsys_state *subsys[12U] ;
   struct cgroup_root *root ;
   struct list_head cset_links ;
   struct list_head e_csets[12U] ;
   struct list_head pidlists ;
   struct mutex pidlist_mutex ;
   wait_queue_head_t offline_waitq ;
   struct work_struct release_agent_work ;
};
struct cgroup_root {
   struct kernfs_root *kf_root ;
   unsigned int subsys_mask ;
   int hierarchy_id ;
   struct cgroup cgrp ;
   atomic_t nr_cgrps ;
   struct list_head root_list ;
   unsigned int flags ;
   struct idr cgroup_idr ;
   char release_agent_path[4096U] ;
   char name[64U] ;
};
struct cftype {
   char name[64U] ;
   int private ;
   umode_t mode ;
   size_t max_write_len ;
   unsigned int flags ;
   struct cgroup_subsys *ss ;
   struct list_head node ;
   struct kernfs_ops *kf_ops ;
   u64 (*read_u64)(struct cgroup_subsys_state * , struct cftype * ) ;
   s64 (*read_s64)(struct cgroup_subsys_state * , struct cftype * ) ;
   int (*seq_show)(struct seq_file * , void * ) ;
   void *(*seq_start)(struct seq_file * , loff_t * ) ;
   void *(*seq_next)(struct seq_file * , void * , loff_t * ) ;
   void (*seq_stop)(struct seq_file * , void * ) ;
   int (*write_u64)(struct cgroup_subsys_state * , struct cftype * , u64 ) ;
   int (*write_s64)(struct cgroup_subsys_state * , struct cftype * , s64 ) ;
   ssize_t (*write)(struct kernfs_open_file * , char * , size_t , loff_t ) ;
   struct lock_class_key lockdep_key ;
};
struct cgroup_subsys {
   struct cgroup_subsys_state *(*css_alloc)(struct cgroup_subsys_state * ) ;
   int (*css_online)(struct cgroup_subsys_state * ) ;
   void (*css_offline)(struct cgroup_subsys_state * ) ;
   void (*css_released)(struct cgroup_subsys_state * ) ;
   void (*css_free)(struct cgroup_subsys_state * ) ;
   void (*css_reset)(struct cgroup_subsys_state * ) ;
   void (*css_e_css_changed)(struct cgroup_subsys_state * ) ;
   int (*can_attach)(struct cgroup_subsys_state * , struct cgroup_taskset * ) ;
   void (*cancel_attach)(struct cgroup_subsys_state * , struct cgroup_taskset * ) ;
   void (*attach)(struct cgroup_subsys_state * , struct cgroup_taskset * ) ;
   void (*fork)(struct task_struct * ) ;
   void (*exit)(struct cgroup_subsys_state * , struct cgroup_subsys_state * , struct task_struct * ) ;
   void (*bind)(struct cgroup_subsys_state * ) ;
   int disabled ;
   int early_init ;
   bool broken_hierarchy ;
   bool warned_broken_hierarchy ;
   int id ;
   char const *name ;
   struct cgroup_root *root ;
   struct idr css_idr ;
   struct list_head cfts ;
   struct cftype *dfl_cftypes ;
   struct cftype *legacy_cftypes ;
   unsigned int depends_on ;
};
struct futex_pi_state;
struct robust_list_head;
struct bio_list;
struct fs_struct;
struct perf_event_context;
struct blk_plug;
struct nameidata;
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
struct task_cputime_atomic {
   atomic64_t utime ;
   atomic64_t stime ;
   atomic64_t sum_exec_runtime ;
};
struct thread_group_cputimer {
   struct task_cputime_atomic cputime_atomic ;
   int running ;
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
   seqlock_t stats_lock ;
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
   u64 blkio_start ;
   u64 blkio_delay ;
   u64 swapin_delay ;
   u32 blkio_count ;
   u32 swapin_count ;
   u64 freepages_start ;
   u64 freepages_delay ;
   u32 freepages_count ;
};
struct wake_q_node {
   struct wake_q_node *next ;
};
struct io_context;
struct pipe_inode_info;
struct uts_namespace;
struct load_weight {
   unsigned long weight ;
   u32 inv_weight ;
};
struct sched_avg {
   u64 last_runnable_update ;
   s64 decay_count ;
   unsigned long load_avg_contrib ;
   unsigned long utilization_avg_contrib ;
   u32 runnable_avg_sum ;
   u32 avg_period ;
   u32 running_avg_sum ;
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
struct memcg_oom_info {
   struct mem_cgroup *memcg ;
   gfp_t gfp_mask ;
   int order ;
   unsigned char may_oom : 1 ;
};
struct sched_class;
struct files_struct;
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
   unsigned long rcu_tasks_nvcsw ;
   bool rcu_tasks_holdout ;
   struct list_head rcu_tasks_holdout_list ;
   int rcu_tasks_idle_cpu ;
   struct sched_info sched_info ;
   struct list_head tasks ;
   struct plist_node pushable_tasks ;
   struct rb_node pushable_dl_tasks ;
   struct mm_struct *mm ;
   struct mm_struct *active_mm ;
   u32 vmacache_seqnum ;
   struct vm_area_struct *vmacache[4U] ;
   struct task_rss_stat rss_stat ;
   int exit_state ;
   int exit_code ;
   int exit_signal ;
   int pdeath_signal ;
   unsigned long jobctl ;
   unsigned int personality ;
   unsigned char in_execve : 1 ;
   unsigned char in_iowait : 1 ;
   unsigned char sched_reset_on_fork : 1 ;
   unsigned char sched_contributes_to_load : 1 ;
   unsigned char sched_migrated : 1 ;
   unsigned char memcg_kmem_skip_account : 1 ;
   unsigned char brk_randomized : 1 ;
   unsigned long atomic_flags ;
   struct restart_block restart_block ;
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
   u64 start_time ;
   u64 real_start_time ;
   unsigned long min_flt ;
   unsigned long maj_flt ;
   struct task_cputime cputime_expires ;
   struct list_head cpu_timers[3U] ;
   struct cred const *real_cred ;
   struct cred const *cred ;
   char comm[16U] ;
   struct nameidata *nameidata ;
   struct sysv_sem sysvsem ;
   struct sysv_shm sysvshm ;
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
   struct wake_q_node wake_q ;
   struct rb_root pi_waiters ;
   struct rb_node *pi_waiters_leftmost ;
   struct rt_mutex_waiter *pi_blocked_on ;
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
   unsigned long *numa_faults ;
   unsigned long total_numa_faults ;
   unsigned long numa_faults_locality[3U] ;
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
   unsigned int kasan_depth ;
   int curr_ret_stack ;
   struct ftrace_ret_stack *ret_stack ;
   unsigned long long ftrace_timestamp ;
   atomic_t trace_overrun ;
   atomic_t tracing_graph_pause ;
   unsigned long trace ;
   unsigned long trace_recursion ;
   struct memcg_oom_info memcg_oom ;
   struct uprobe_task *utask ;
   unsigned int sequential_io ;
   unsigned int sequential_io_avg ;
   unsigned long task_state_change ;
   int pagefault_disabled ;
};
struct ieee80211_supported_band;
struct ieee80211_vif;
struct device_attribute;
struct ieee80211_hw;
struct il_priv;
struct il_tx_queue;
struct ieee80211_sta;
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
struct fwnode_handle;
struct iommu_ops;
struct iommu_group;
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
   struct iommu_ops const *iommu_ops ;
   struct subsys_private *p ;
   struct lock_class_key lock_key ;
};
struct device_type;
enum probe_type {
    PROBE_DEFAULT_STRATEGY = 0,
    PROBE_PREFER_ASYNCHRONOUS = 1,
    PROBE_FORCE_SYNCHRONOUS = 2
} ;
struct device_driver {
   char const *name ;
   struct bus_type *bus ;
   struct module *owner ;
   char const *mod_name ;
   bool suppress_bind_attrs ;
   enum probe_type probe_type ;
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
   struct fwnode_handle *fwnode ;
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
   struct wake_irq *wakeirq ;
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
union __anonunion____missing_field_name_220 {
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
   unsigned char ignore_hotplug : 1 ;
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
   unsigned char no_64bit_msi : 1 ;
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
   unsigned char irq_managed : 1 ;
   unsigned char has_secondary_link : 1 ;
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
   union __anonunion____missing_field_name_220 __annonCompField58 ;
   struct pci_ats *ats ;
   phys_addr_t rom ;
   size_t romlen ;
   char *driver_override ;
};
struct pci_ops;
struct msi_controller;
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
   struct msi_controller *msi ;
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
   void *(*map_bus)(struct pci_bus * , unsigned int , int ) ;
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
struct shrink_control {
   gfp_t gfp_mask ;
   unsigned long nr_to_scan ;
   int nid ;
   struct mem_cgroup *memcg ;
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
struct writeback_control;
struct bdi_writeback;
struct vm_fault {
   unsigned int flags ;
   unsigned long pgoff ;
   void *virtual_address ;
   struct page *cow_page ;
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
   int (*pfn_mkwrite)(struct vm_area_struct * , struct vm_fault * ) ;
   int (*access)(struct vm_area_struct * , unsigned long , void * , int , int ) ;
   char const *(*name)(struct vm_area_struct * ) ;
   int (*set_policy)(struct vm_area_struct * , struct mempolicy * ) ;
   struct mempolicy *(*get_policy)(struct vm_area_struct * , unsigned long ) ;
   struct page *(*find_special_page)(struct vm_area_struct * , unsigned long ) ;
};
struct kvec;
struct scatterlist {
   unsigned long sg_magic ;
   unsigned long page_link ;
   unsigned int offset ;
   unsigned int length ;
   dma_addr_t dma_address ;
   unsigned int dma_length ;
};
struct sg_table {
   struct scatterlist *sgl ;
   unsigned int nents ;
   unsigned int orig_nents ;
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
struct iovec {
   void *iov_base ;
   __kernel_size_t iov_len ;
};
struct kvec {
   void *iov_base ;
   size_t iov_len ;
};
union __anonunion____missing_field_name_221 {
   struct iovec const *iov ;
   struct kvec const *kvec ;
   struct bio_vec const *bvec ;
};
struct iov_iter {
   int type ;
   size_t iov_offset ;
   size_t count ;
   union __anonunion____missing_field_name_221 __annonCompField59 ;
   unsigned long nr_segs ;
};
typedef unsigned short __kernel_sa_family_t;
typedef __kernel_sa_family_t sa_family_t;
struct sockaddr {
   sa_family_t sa_family ;
   char sa_data[14U] ;
};
struct kiocb;
struct msghdr {
   void *msg_name ;
   int msg_namelen ;
   struct iov_iter msg_iter ;
   void *msg_control ;
   __kernel_size_t msg_controllen ;
   unsigned int msg_flags ;
   struct kiocb *msg_iocb ;
};
enum ldv_22390 {
    SS_FREE = 0,
    SS_UNCONNECTED = 1,
    SS_CONNECTING = 2,
    SS_CONNECTED = 3,
    SS_DISCONNECTING = 4
} ;
typedef enum ldv_22390 socket_state;
struct poll_table_struct;
struct net;
struct fasync_struct;
struct socket_wq {
   wait_queue_head_t wait ;
   struct fasync_struct *fasync_list ;
   struct callback_head rcu ;
};
struct proto_ops;
struct socket {
   socket_state state ;
   short type ;
   unsigned long flags ;
   struct socket_wq *wq ;
   struct file *file ;
   struct sock *sk ;
   struct proto_ops const *ops ;
};
struct proto_ops {
   int family ;
   struct module *owner ;
   int (*release)(struct socket * ) ;
   int (*bind)(struct socket * , struct sockaddr * , int ) ;
   int (*connect)(struct socket * , struct sockaddr * , int , int ) ;
   int (*socketpair)(struct socket * , struct socket * ) ;
   int (*accept)(struct socket * , struct socket * , int ) ;
   int (*getname)(struct socket * , struct sockaddr * , int * , int ) ;
   unsigned int (*poll)(struct file * , struct socket * , struct poll_table_struct * ) ;
   int (*ioctl)(struct socket * , unsigned int , unsigned long ) ;
   int (*compat_ioctl)(struct socket * , unsigned int , unsigned long ) ;
   int (*listen)(struct socket * , int ) ;
   int (*shutdown)(struct socket * , int ) ;
   int (*setsockopt)(struct socket * , int , int , char * , unsigned int ) ;
   int (*getsockopt)(struct socket * , int , int , char * , int * ) ;
   int (*compat_setsockopt)(struct socket * , int , int , char * , unsigned int ) ;
   int (*compat_getsockopt)(struct socket * , int , int , char * , int * ) ;
   int (*sendmsg)(struct socket * , struct msghdr * , size_t ) ;
   int (*recvmsg)(struct socket * , struct msghdr * , size_t , int ) ;
   int (*mmap)(struct file * , struct socket * , struct vm_area_struct * ) ;
   ssize_t (*sendpage)(struct socket * , struct page * , int , size_t , int ) ;
   ssize_t (*splice_read)(struct socket * , loff_t * , struct pipe_inode_info * ,
                          size_t , unsigned int ) ;
   int (*set_peek_off)(struct sock * , int ) ;
};
struct exception_table_entry {
   int insn ;
   int fixup ;
};
struct in6_addr;
struct sk_buff;
typedef u64 netdev_features_t;
union __anonunion_in6_u_222 {
   __u8 u6_addr8[16U] ;
   __be16 u6_addr16[8U] ;
   __be32 u6_addr32[4U] ;
};
struct in6_addr {
   union __anonunion_in6_u_222 in6_u ;
};
struct ethhdr {
   unsigned char h_dest[6U] ;
   unsigned char h_source[6U] ;
   __be16 h_proto ;
};
struct pipe_buf_operations;
struct pipe_buffer {
   struct page *page ;
   unsigned int offset ;
   unsigned int len ;
   struct pipe_buf_operations const *ops ;
   unsigned int flags ;
   unsigned long private ;
};
struct pipe_inode_info {
   struct mutex mutex ;
   wait_queue_head_t wait ;
   unsigned int nrbufs ;
   unsigned int curbuf ;
   unsigned int buffers ;
   unsigned int readers ;
   unsigned int writers ;
   unsigned int files ;
   unsigned int waiting_writers ;
   unsigned int r_counter ;
   unsigned int w_counter ;
   struct page *tmp_page ;
   struct fasync_struct *fasync_readers ;
   struct fasync_struct *fasync_writers ;
   struct pipe_buffer *bufs ;
};
struct pipe_buf_operations {
   int can_merge ;
   int (*confirm)(struct pipe_inode_info * , struct pipe_buffer * ) ;
   void (*release)(struct pipe_inode_info * , struct pipe_buffer * ) ;
   int (*steal)(struct pipe_inode_info * , struct pipe_buffer * ) ;
   void (*get)(struct pipe_inode_info * , struct pipe_buffer * ) ;
};
struct napi_struct;
struct nf_conntrack {
   atomic_t use ;
};
union __anonunion____missing_field_name_227 {
   struct net_device *physoutdev ;
   char neigh_header[8U] ;
};
union __anonunion____missing_field_name_228 {
   __be32 ipv4_daddr ;
   struct in6_addr ipv6_daddr ;
};
struct nf_bridge_info {
   atomic_t use ;
   unsigned char orig_proto ;
   bool pkt_otherhost ;
   __u16 frag_max_size ;
   unsigned int mask ;
   struct net_device *physindev ;
   union __anonunion____missing_field_name_227 __annonCompField63 ;
   union __anonunion____missing_field_name_228 __annonCompField64 ;
};
struct sk_buff_head {
   struct sk_buff *next ;
   struct sk_buff *prev ;
   __u32 qlen ;
   spinlock_t lock ;
};
typedef unsigned int sk_buff_data_t;
struct __anonstruct____missing_field_name_231 {
   u32 stamp_us ;
   u32 stamp_jiffies ;
};
union __anonunion____missing_field_name_230 {
   u64 v64 ;
   struct __anonstruct____missing_field_name_231 __annonCompField65 ;
};
struct skb_mstamp {
   union __anonunion____missing_field_name_230 __annonCompField66 ;
};
union __anonunion____missing_field_name_234 {
   ktime_t tstamp ;
   struct skb_mstamp skb_mstamp ;
};
struct __anonstruct____missing_field_name_233 {
   struct sk_buff *next ;
   struct sk_buff *prev ;
   union __anonunion____missing_field_name_234 __annonCompField67 ;
};
union __anonunion____missing_field_name_232 {
   struct __anonstruct____missing_field_name_233 __annonCompField68 ;
   struct rb_node rbnode ;
};
struct sec_path;
struct __anonstruct____missing_field_name_236 {
   __u16 csum_start ;
   __u16 csum_offset ;
};
union __anonunion____missing_field_name_235 {
   __wsum csum ;
   struct __anonstruct____missing_field_name_236 __annonCompField70 ;
};
union __anonunion____missing_field_name_237 {
   unsigned int napi_id ;
   unsigned int sender_cpu ;
};
union __anonunion____missing_field_name_238 {
   __u32 mark ;
   __u32 reserved_tailroom ;
};
union __anonunion____missing_field_name_239 {
   __be16 inner_protocol ;
   __u8 inner_ipproto ;
};
struct sk_buff {
   union __anonunion____missing_field_name_232 __annonCompField69 ;
   struct sock *sk ;
   struct net_device *dev ;
   char cb[48U] ;
   unsigned long _skb_refdst ;
   void (*destructor)(struct sk_buff * ) ;
   struct sec_path *sp ;
   struct nf_conntrack *nfct ;
   struct nf_bridge_info *nf_bridge ;
   unsigned int len ;
   unsigned int data_len ;
   __u16 mac_len ;
   __u16 hdr_len ;
   __u16 queue_mapping ;
   unsigned char cloned : 1 ;
   unsigned char nohdr : 1 ;
   unsigned char fclone : 2 ;
   unsigned char peeked : 1 ;
   unsigned char head_frag : 1 ;
   unsigned char xmit_more : 1 ;
   __u32 headers_start[0U] ;
   __u8 __pkt_type_offset[0U] ;
   unsigned char pkt_type : 3 ;
   unsigned char pfmemalloc : 1 ;
   unsigned char ignore_df : 1 ;
   unsigned char nfctinfo : 3 ;
   unsigned char nf_trace : 1 ;
   unsigned char ip_summed : 2 ;
   unsigned char ooo_okay : 1 ;
   unsigned char l4_hash : 1 ;
   unsigned char sw_hash : 1 ;
   unsigned char wifi_acked_valid : 1 ;
   unsigned char wifi_acked : 1 ;
   unsigned char no_fcs : 1 ;
   unsigned char encapsulation : 1 ;
   unsigned char encap_hdr_csum : 1 ;
   unsigned char csum_valid : 1 ;
   unsigned char csum_complete_sw : 1 ;
   unsigned char csum_level : 2 ;
   unsigned char csum_bad : 1 ;
   unsigned char ndisc_nodetype : 2 ;
   unsigned char ipvs_property : 1 ;
   unsigned char inner_protocol_type : 1 ;
   unsigned char remcsum_offload : 1 ;
   __u16 tc_index ;
   __u16 tc_verd ;
   union __anonunion____missing_field_name_235 __annonCompField71 ;
   __u32 priority ;
   int skb_iif ;
   __u32 hash ;
   __be16 vlan_proto ;
   __u16 vlan_tci ;
   union __anonunion____missing_field_name_237 __annonCompField72 ;
   __u32 secmark ;
   union __anonunion____missing_field_name_238 __annonCompField73 ;
   union __anonunion____missing_field_name_239 __annonCompField74 ;
   __u16 inner_transport_header ;
   __u16 inner_network_header ;
   __u16 inner_mac_header ;
   __be16 protocol ;
   __u16 transport_header ;
   __u16 network_header ;
   __u16 mac_header ;
   __u32 headers_end[0U] ;
   sk_buff_data_t tail ;
   sk_buff_data_t end ;
   unsigned char *head ;
   unsigned char *data ;
   unsigned int truesize ;
   atomic_t users ;
};
struct dst_entry;
struct dql {
   unsigned int num_queued ;
   unsigned int adj_limit ;
   unsigned int last_obj_cnt ;
   unsigned int limit ;
   unsigned int num_completed ;
   unsigned int prev_ovlimit ;
   unsigned int prev_num_queued ;
   unsigned int prev_last_obj_cnt ;
   unsigned int lowest_slack ;
   unsigned long slack_start_time ;
   unsigned int max_limit ;
   unsigned int min_limit ;
   unsigned int slack_hold_time ;
};
struct __anonstruct_sync_serial_settings_241 {
   unsigned int clock_rate ;
   unsigned int clock_type ;
   unsigned short loopback ;
};
typedef struct __anonstruct_sync_serial_settings_241 sync_serial_settings;
struct __anonstruct_te1_settings_242 {
   unsigned int clock_rate ;
   unsigned int clock_type ;
   unsigned short loopback ;
   unsigned int slot_map ;
};
typedef struct __anonstruct_te1_settings_242 te1_settings;
struct __anonstruct_raw_hdlc_proto_243 {
   unsigned short encoding ;
   unsigned short parity ;
};
typedef struct __anonstruct_raw_hdlc_proto_243 raw_hdlc_proto;
struct __anonstruct_fr_proto_244 {
   unsigned int t391 ;
   unsigned int t392 ;
   unsigned int n391 ;
   unsigned int n392 ;
   unsigned int n393 ;
   unsigned short lmi ;
   unsigned short dce ;
};
typedef struct __anonstruct_fr_proto_244 fr_proto;
struct __anonstruct_fr_proto_pvc_245 {
   unsigned int dlci ;
};
typedef struct __anonstruct_fr_proto_pvc_245 fr_proto_pvc;
struct __anonstruct_fr_proto_pvc_info_246 {
   unsigned int dlci ;
   char master[16U] ;
};
typedef struct __anonstruct_fr_proto_pvc_info_246 fr_proto_pvc_info;
struct __anonstruct_cisco_proto_247 {
   unsigned int interval ;
   unsigned int timeout ;
};
typedef struct __anonstruct_cisco_proto_247 cisco_proto;
struct ifmap {
   unsigned long mem_start ;
   unsigned long mem_end ;
   unsigned short base_addr ;
   unsigned char irq ;
   unsigned char dma ;
   unsigned char port ;
};
union __anonunion_ifs_ifsu_248 {
   raw_hdlc_proto *raw_hdlc ;
   cisco_proto *cisco ;
   fr_proto *fr ;
   fr_proto_pvc *fr_pvc ;
   fr_proto_pvc_info *fr_pvc_info ;
   sync_serial_settings *sync ;
   te1_settings *te1 ;
};
struct if_settings {
   unsigned int type ;
   unsigned int size ;
   union __anonunion_ifs_ifsu_248 ifs_ifsu ;
};
union __anonunion_ifr_ifrn_249 {
   char ifrn_name[16U] ;
};
union __anonunion_ifr_ifru_250 {
   struct sockaddr ifru_addr ;
   struct sockaddr ifru_dstaddr ;
   struct sockaddr ifru_broadaddr ;
   struct sockaddr ifru_netmask ;
   struct sockaddr ifru_hwaddr ;
   short ifru_flags ;
   int ifru_ivalue ;
   int ifru_mtu ;
   struct ifmap ifru_map ;
   char ifru_slave[16U] ;
   char ifru_newname[16U] ;
   void *ifru_data ;
   struct if_settings ifru_settings ;
};
struct ifreq {
   union __anonunion_ifr_ifrn_249 ifr_ifrn ;
   union __anonunion_ifr_ifru_250 ifr_ifru ;
};
struct hlist_bl_node;
struct hlist_bl_head {
   struct hlist_bl_node *first ;
};
struct hlist_bl_node {
   struct hlist_bl_node *next ;
   struct hlist_bl_node **pprev ;
};
struct __anonstruct____missing_field_name_255 {
   spinlock_t lock ;
   int count ;
};
union __anonunion____missing_field_name_254 {
   struct __anonstruct____missing_field_name_255 __annonCompField75 ;
};
struct lockref {
   union __anonunion____missing_field_name_254 __annonCompField76 ;
};
struct vfsmount;
struct __anonstruct____missing_field_name_257 {
   u32 hash ;
   u32 len ;
};
union __anonunion____missing_field_name_256 {
   struct __anonstruct____missing_field_name_257 __annonCompField77 ;
   u64 hash_len ;
};
struct qstr {
   union __anonunion____missing_field_name_256 __annonCompField78 ;
   unsigned char const *name ;
};
struct dentry_operations;
union __anonunion_d_u_258 {
   struct hlist_node d_alias ;
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
   struct list_head d_child ;
   struct list_head d_subdirs ;
   union __anonunion_d_u_258 d_u ;
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
   struct inode *(*d_select_inode)(struct dentry * , unsigned int ) ;
};
struct path {
   struct vfsmount *mnt ;
   struct dentry *dentry ;
};
struct list_lru_one {
   struct list_head list ;
   long nr_items ;
};
struct list_lru_memcg {
   struct list_lru_one *lru[0U] ;
};
struct list_lru_node {
   spinlock_t lock ;
   struct list_lru_one lru ;
   struct list_lru_memcg *memcg_lrus ;
};
struct list_lru {
   struct list_lru_node *node ;
   struct list_head list ;
};
struct __anonstruct____missing_field_name_262 {
   struct radix_tree_node *parent ;
   void *private_data ;
};
union __anonunion____missing_field_name_261 {
   struct __anonstruct____missing_field_name_262 __annonCompField79 ;
   struct callback_head callback_head ;
};
struct radix_tree_node {
   unsigned int path ;
   unsigned int count ;
   union __anonunion____missing_field_name_261 __annonCompField80 ;
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
struct block_device;
struct bio_vec {
   struct page *bv_page ;
   unsigned int bv_len ;
   unsigned int bv_offset ;
};
struct export_operations;
struct kstatfs;
struct swap_info_struct;
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
struct dquot;
typedef __kernel_uid32_t projid_t;
struct __anonstruct_kprojid_t_266 {
   projid_t val ;
};
typedef struct __anonstruct_kprojid_t_266 kprojid_t;
enum quota_type {
    USRQUOTA = 0,
    GRPQUOTA = 1,
    PRJQUOTA = 2
} ;
typedef long long qsize_t;
union __anonunion____missing_field_name_267 {
   kuid_t uid ;
   kgid_t gid ;
   kprojid_t projid ;
};
struct kqid {
   union __anonunion____missing_field_name_267 __annonCompField82 ;
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
   qsize_t dqi_max_spc_limit ;
   qsize_t dqi_max_ino_limit ;
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
   int (*get_projid)(struct inode * , kprojid_t * ) ;
};
struct qc_dqblk {
   int d_fieldmask ;
   u64 d_spc_hardlimit ;
   u64 d_spc_softlimit ;
   u64 d_ino_hardlimit ;
   u64 d_ino_softlimit ;
   u64 d_space ;
   u64 d_ino_count ;
   s64 d_ino_timer ;
   s64 d_spc_timer ;
   int d_ino_warns ;
   int d_spc_warns ;
   u64 d_rt_spc_hardlimit ;
   u64 d_rt_spc_softlimit ;
   u64 d_rt_space ;
   s64 d_rt_spc_timer ;
   int d_rt_spc_warns ;
};
struct qc_type_state {
   unsigned int flags ;
   unsigned int spc_timelimit ;
   unsigned int ino_timelimit ;
   unsigned int rt_spc_timelimit ;
   unsigned int spc_warnlimit ;
   unsigned int ino_warnlimit ;
   unsigned int rt_spc_warnlimit ;
   unsigned long long ino ;
   blkcnt_t blocks ;
   blkcnt_t nextents ;
};
struct qc_state {
   unsigned int s_incoredqs ;
   struct qc_type_state s_state[3U] ;
};
struct qc_info {
   int i_fieldmask ;
   unsigned int i_flags ;
   unsigned int i_spc_timelimit ;
   unsigned int i_ino_timelimit ;
   unsigned int i_rt_spc_timelimit ;
   unsigned int i_spc_warnlimit ;
   unsigned int i_ino_warnlimit ;
   unsigned int i_rt_spc_warnlimit ;
};
struct quotactl_ops {
   int (*quota_on)(struct super_block * , int , int , struct path * ) ;
   int (*quota_off)(struct super_block * , int ) ;
   int (*quota_enable)(struct super_block * , unsigned int ) ;
   int (*quota_disable)(struct super_block * , unsigned int ) ;
   int (*quota_sync)(struct super_block * , int ) ;
   int (*set_info)(struct super_block * , int , struct qc_info * ) ;
   int (*get_dqblk)(struct super_block * , struct kqid , struct qc_dqblk * ) ;
   int (*set_dqblk)(struct super_block * , struct kqid , struct qc_dqblk * ) ;
   int (*get_state)(struct super_block * , struct qc_state * ) ;
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
   struct inode *files[3U] ;
   struct mem_dqinfo info[3U] ;
   struct quota_format_ops const *ops[3U] ;
};
struct kiocb {
   struct file *ki_filp ;
   loff_t ki_pos ;
   void (*ki_complete)(struct kiocb * , long , long ) ;
   void *private ;
   int ki_flags ;
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
   ssize_t (*direct_IO)(struct kiocb * , struct iov_iter * , loff_t ) ;
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
   atomic_t i_mmap_writable ;
   struct rb_root i_mmap ;
   struct rw_semaphore i_mmap_rwsem ;
   unsigned long nrpages ;
   unsigned long nrshadows ;
   unsigned long writeback_index ;
   struct address_space_operations const *a_ops ;
   unsigned long flags ;
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
union __anonunion____missing_field_name_270 {
   unsigned int const i_nlink ;
   unsigned int __i_nlink ;
};
union __anonunion____missing_field_name_271 {
   struct hlist_head i_dentry ;
   struct callback_head i_rcu ;
};
struct file_lock_context;
struct cdev;
union __anonunion____missing_field_name_272 {
   struct pipe_inode_info *i_pipe ;
   struct block_device *i_bdev ;
   struct cdev *i_cdev ;
   char *i_link ;
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
   union __anonunion____missing_field_name_270 __annonCompField83 ;
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
   unsigned long dirtied_time_when ;
   struct hlist_node i_hash ;
   struct list_head i_wb_list ;
   struct bdi_writeback *i_wb ;
   int i_wb_frn_winner ;
   u16 i_wb_frn_avg_time ;
   u16 i_wb_frn_history ;
   struct list_head i_lru ;
   struct list_head i_sb_list ;
   union __anonunion____missing_field_name_271 __annonCompField84 ;
   u64 i_version ;
   atomic_t i_count ;
   atomic_t i_dio_count ;
   atomic_t i_writecount ;
   atomic_t i_readcount ;
   struct file_operations const *i_fop ;
   struct file_lock_context *i_flctx ;
   struct address_space i_data ;
   struct list_head i_devices ;
   union __anonunion____missing_field_name_272 __annonCompField85 ;
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
union __anonunion_f_u_273 {
   struct llist_node fu_llist ;
   struct callback_head fu_rcuhead ;
};
struct file {
   union __anonunion_f_u_273 f_u ;
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
typedef void *fl_owner_t;
struct file_lock;
struct file_lock_operations {
   void (*fl_copy_lock)(struct file_lock * , struct file_lock * ) ;
   void (*fl_release_private)(struct file_lock * ) ;
};
struct lock_manager_operations {
   int (*lm_compare_owner)(struct file_lock * , struct file_lock * ) ;
   unsigned long (*lm_owner_key)(struct file_lock * ) ;
   fl_owner_t (*lm_get_owner)(fl_owner_t ) ;
   void (*lm_put_owner)(fl_owner_t ) ;
   void (*lm_notify)(struct file_lock * ) ;
   int (*lm_grant)(struct file_lock * , int ) ;
   bool (*lm_break)(struct file_lock * ) ;
   int (*lm_change)(struct file_lock * , int , struct list_head * ) ;
   void (*lm_setup)(struct file_lock * , void ** ) ;
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
struct __anonstruct_afs_275 {
   struct list_head link ;
   int state ;
};
union __anonunion_fl_u_274 {
   struct nfs_lock_info nfs_fl ;
   struct nfs4_lock_info nfs4_fl ;
   struct __anonstruct_afs_275 afs ;
};
struct file_lock {
   struct file_lock *fl_next ;
   struct list_head fl_list ;
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
   union __anonunion_fl_u_274 fl_u ;
};
struct file_lock_context {
   spinlock_t flc_lock ;
   struct list_head flc_flock ;
   struct list_head flc_posix ;
   struct list_head flc_lease ;
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
   unsigned long s_iflags ;
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
   unsigned int s_quota_types ;
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
   struct hlist_head s_pins ;
   struct list_lru s_dentry_lru ;
   struct list_lru s_inode_lru ;
   struct callback_head rcu ;
   int s_stack_depth ;
};
struct fiemap_extent_info {
   unsigned int fi_flags ;
   unsigned int fi_extents_mapped ;
   unsigned int fi_extents_max ;
   struct fiemap_extent *fi_extents_start ;
};
struct dir_context;
struct dir_context {
   int (*actor)(struct dir_context * , char const * , int , loff_t , u64 , unsigned int ) ;
   loff_t pos ;
};
struct file_operations {
   struct module *owner ;
   loff_t (*llseek)(struct file * , loff_t , int ) ;
   ssize_t (*read)(struct file * , char * , size_t , loff_t * ) ;
   ssize_t (*write)(struct file * , char const * , size_t , loff_t * ) ;
   ssize_t (*read_iter)(struct kiocb * , struct iov_iter * ) ;
   ssize_t (*write_iter)(struct kiocb * , struct iov_iter * ) ;
   int (*iterate)(struct file * , struct dir_context * ) ;
   unsigned int (*poll)(struct file * , struct poll_table_struct * ) ;
   long (*unlocked_ioctl)(struct file * , unsigned int , unsigned long ) ;
   long (*compat_ioctl)(struct file * , unsigned int , unsigned long ) ;
   int (*mmap)(struct file * , struct vm_area_struct * ) ;
   int (*mremap)(struct file * , struct vm_area_struct * ) ;
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
   int (*setlease)(struct file * , long , struct file_lock ** , void ** ) ;
   long (*fallocate)(struct file * , int , loff_t , loff_t ) ;
   void (*show_fdinfo)(struct seq_file * , struct file * ) ;
};
struct inode_operations {
   struct dentry *(*lookup)(struct inode * , struct dentry * , unsigned int ) ;
   char const *(*follow_link)(struct dentry * , void ** ) ;
   int (*permission)(struct inode * , int ) ;
   struct posix_acl *(*get_acl)(struct inode * , int ) ;
   int (*readlink)(struct dentry * , char * , int ) ;
   void (*put_link)(struct inode * , void * ) ;
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
   int (*freeze_super)(struct super_block * ) ;
   int (*freeze_fs)(struct super_block * ) ;
   int (*thaw_super)(struct super_block * ) ;
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
   struct dquot **(*get_dquots)(struct inode * ) ;
   int (*bdev_try_to_free_page)(struct super_block * , struct page * , gfp_t ) ;
   long (*nr_cached_objects)(struct super_block * , struct shrink_control * ) ;
   long (*free_cached_objects)(struct super_block * , struct shrink_control * ) ;
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
typedef s32 compat_time_t;
typedef s32 compat_long_t;
typedef u32 compat_uptr_t;
struct compat_timespec {
   compat_time_t tv_sec ;
   s32 tv_nsec ;
};
struct compat_robust_list {
   compat_uptr_t next ;
};
struct compat_robust_list_head {
   struct compat_robust_list list ;
   compat_long_t futex_offset ;
   compat_uptr_t list_op_pending ;
};
struct ethtool_cmd {
   __u32 cmd ;
   __u32 supported ;
   __u32 advertising ;
   __u16 speed ;
   __u8 duplex ;
   __u8 port ;
   __u8 phy_address ;
   __u8 transceiver ;
   __u8 autoneg ;
   __u8 mdio_support ;
   __u32 maxtxpkt ;
   __u32 maxrxpkt ;
   __u16 speed_hi ;
   __u8 eth_tp_mdix ;
   __u8 eth_tp_mdix_ctrl ;
   __u32 lp_advertising ;
   __u32 reserved[2U] ;
};
struct ethtool_drvinfo {
   __u32 cmd ;
   char driver[32U] ;
   char version[32U] ;
   char fw_version[32U] ;
   char bus_info[32U] ;
   char erom_version[32U] ;
   char reserved2[12U] ;
   __u32 n_priv_flags ;
   __u32 n_stats ;
   __u32 testinfo_len ;
   __u32 eedump_len ;
   __u32 regdump_len ;
};
struct ethtool_wolinfo {
   __u32 cmd ;
   __u32 supported ;
   __u32 wolopts ;
   __u8 sopass[6U] ;
};
struct ethtool_tunable {
   __u32 cmd ;
   __u32 id ;
   __u32 type_id ;
   __u32 len ;
   void *data[0U] ;
};
struct ethtool_regs {
   __u32 cmd ;
   __u32 version ;
   __u32 len ;
   __u8 data[0U] ;
};
struct ethtool_eeprom {
   __u32 cmd ;
   __u32 magic ;
   __u32 offset ;
   __u32 len ;
   __u8 data[0U] ;
};
struct ethtool_eee {
   __u32 cmd ;
   __u32 supported ;
   __u32 advertised ;
   __u32 lp_advertised ;
   __u32 eee_active ;
   __u32 eee_enabled ;
   __u32 tx_lpi_enabled ;
   __u32 tx_lpi_timer ;
   __u32 reserved[2U] ;
};
struct ethtool_modinfo {
   __u32 cmd ;
   __u32 type ;
   __u32 eeprom_len ;
   __u32 reserved[8U] ;
};
struct ethtool_coalesce {
   __u32 cmd ;
   __u32 rx_coalesce_usecs ;
   __u32 rx_max_coalesced_frames ;
   __u32 rx_coalesce_usecs_irq ;
   __u32 rx_max_coalesced_frames_irq ;
   __u32 tx_coalesce_usecs ;
   __u32 tx_max_coalesced_frames ;
   __u32 tx_coalesce_usecs_irq ;
   __u32 tx_max_coalesced_frames_irq ;
   __u32 stats_block_coalesce_usecs ;
   __u32 use_adaptive_rx_coalesce ;
   __u32 use_adaptive_tx_coalesce ;
   __u32 pkt_rate_low ;
   __u32 rx_coalesce_usecs_low ;
   __u32 rx_max_coalesced_frames_low ;
   __u32 tx_coalesce_usecs_low ;
   __u32 tx_max_coalesced_frames_low ;
   __u32 pkt_rate_high ;
   __u32 rx_coalesce_usecs_high ;
   __u32 rx_max_coalesced_frames_high ;
   __u32 tx_coalesce_usecs_high ;
   __u32 tx_max_coalesced_frames_high ;
   __u32 rate_sample_interval ;
};
struct ethtool_ringparam {
   __u32 cmd ;
   __u32 rx_max_pending ;
   __u32 rx_mini_max_pending ;
   __u32 rx_jumbo_max_pending ;
   __u32 tx_max_pending ;
   __u32 rx_pending ;
   __u32 rx_mini_pending ;
   __u32 rx_jumbo_pending ;
   __u32 tx_pending ;
};
struct ethtool_channels {
   __u32 cmd ;
   __u32 max_rx ;
   __u32 max_tx ;
   __u32 max_other ;
   __u32 max_combined ;
   __u32 rx_count ;
   __u32 tx_count ;
   __u32 other_count ;
   __u32 combined_count ;
};
struct ethtool_pauseparam {
   __u32 cmd ;
   __u32 autoneg ;
   __u32 rx_pause ;
   __u32 tx_pause ;
};
struct ethtool_test {
   __u32 cmd ;
   __u32 flags ;
   __u32 reserved ;
   __u32 len ;
   __u64 data[0U] ;
};
struct ethtool_stats {
   __u32 cmd ;
   __u32 n_stats ;
   __u64 data[0U] ;
};
struct ethtool_tcpip4_spec {
   __be32 ip4src ;
   __be32 ip4dst ;
   __be16 psrc ;
   __be16 pdst ;
   __u8 tos ;
};
struct ethtool_ah_espip4_spec {
   __be32 ip4src ;
   __be32 ip4dst ;
   __be32 spi ;
   __u8 tos ;
};
struct ethtool_usrip4_spec {
   __be32 ip4src ;
   __be32 ip4dst ;
   __be32 l4_4_bytes ;
   __u8 tos ;
   __u8 ip_ver ;
   __u8 proto ;
};
union ethtool_flow_union {
   struct ethtool_tcpip4_spec tcp_ip4_spec ;
   struct ethtool_tcpip4_spec udp_ip4_spec ;
   struct ethtool_tcpip4_spec sctp_ip4_spec ;
   struct ethtool_ah_espip4_spec ah_ip4_spec ;
   struct ethtool_ah_espip4_spec esp_ip4_spec ;
   struct ethtool_usrip4_spec usr_ip4_spec ;
   struct ethhdr ether_spec ;
   __u8 hdata[52U] ;
};
struct ethtool_flow_ext {
   __u8 padding[2U] ;
   unsigned char h_dest[6U] ;
   __be16 vlan_etype ;
   __be16 vlan_tci ;
   __be32 data[2U] ;
};
struct ethtool_rx_flow_spec {
   __u32 flow_type ;
   union ethtool_flow_union h_u ;
   struct ethtool_flow_ext h_ext ;
   union ethtool_flow_union m_u ;
   struct ethtool_flow_ext m_ext ;
   __u64 ring_cookie ;
   __u32 location ;
};
struct ethtool_rxnfc {
   __u32 cmd ;
   __u32 flow_type ;
   __u64 data ;
   struct ethtool_rx_flow_spec fs ;
   __u32 rule_cnt ;
   __u32 rule_locs[0U] ;
};
struct ethtool_flash {
   __u32 cmd ;
   __u32 region ;
   char data[128U] ;
};
struct ethtool_dump {
   __u32 cmd ;
   __u32 version ;
   __u32 flag ;
   __u32 len ;
   __u8 data[0U] ;
};
struct ethtool_ts_info {
   __u32 cmd ;
   __u32 so_timestamping ;
   __s32 phc_index ;
   __u32 tx_types ;
   __u32 tx_reserved[3U] ;
   __u32 rx_filters ;
   __u32 rx_reserved[3U] ;
};
enum ethtool_phys_id_state {
    ETHTOOL_ID_INACTIVE = 0,
    ETHTOOL_ID_ACTIVE = 1,
    ETHTOOL_ID_ON = 2,
    ETHTOOL_ID_OFF = 3
} ;
struct ethtool_ops {
   int (*get_settings)(struct net_device * , struct ethtool_cmd * ) ;
   int (*set_settings)(struct net_device * , struct ethtool_cmd * ) ;
   void (*get_drvinfo)(struct net_device * , struct ethtool_drvinfo * ) ;
   int (*get_regs_len)(struct net_device * ) ;
   void (*get_regs)(struct net_device * , struct ethtool_regs * , void * ) ;
   void (*get_wol)(struct net_device * , struct ethtool_wolinfo * ) ;
   int (*set_wol)(struct net_device * , struct ethtool_wolinfo * ) ;
   u32 (*get_msglevel)(struct net_device * ) ;
   void (*set_msglevel)(struct net_device * , u32 ) ;
   int (*nway_reset)(struct net_device * ) ;
   u32 (*get_link)(struct net_device * ) ;
   int (*get_eeprom_len)(struct net_device * ) ;
   int (*get_eeprom)(struct net_device * , struct ethtool_eeprom * , u8 * ) ;
   int (*set_eeprom)(struct net_device * , struct ethtool_eeprom * , u8 * ) ;
   int (*get_coalesce)(struct net_device * , struct ethtool_coalesce * ) ;
   int (*set_coalesce)(struct net_device * , struct ethtool_coalesce * ) ;
   void (*get_ringparam)(struct net_device * , struct ethtool_ringparam * ) ;
   int (*set_ringparam)(struct net_device * , struct ethtool_ringparam * ) ;
   void (*get_pauseparam)(struct net_device * , struct ethtool_pauseparam * ) ;
   int (*set_pauseparam)(struct net_device * , struct ethtool_pauseparam * ) ;
   void (*self_test)(struct net_device * , struct ethtool_test * , u64 * ) ;
   void (*get_strings)(struct net_device * , u32 , u8 * ) ;
   int (*set_phys_id)(struct net_device * , enum ethtool_phys_id_state ) ;
   void (*get_ethtool_stats)(struct net_device * , struct ethtool_stats * , u64 * ) ;
   int (*begin)(struct net_device * ) ;
   void (*complete)(struct net_device * ) ;
   u32 (*get_priv_flags)(struct net_device * ) ;
   int (*set_priv_flags)(struct net_device * , u32 ) ;
   int (*get_sset_count)(struct net_device * , int ) ;
   int (*get_rxnfc)(struct net_device * , struct ethtool_rxnfc * , u32 * ) ;
   int (*set_rxnfc)(struct net_device * , struct ethtool_rxnfc * ) ;
   int (*flash_device)(struct net_device * , struct ethtool_flash * ) ;
   int (*reset)(struct net_device * , u32 * ) ;
   u32 (*get_rxfh_key_size)(struct net_device * ) ;
   u32 (*get_rxfh_indir_size)(struct net_device * ) ;
   int (*get_rxfh)(struct net_device * , u32 * , u8 * , u8 * ) ;
   int (*set_rxfh)(struct net_device * , u32 const * , u8 const * , u8 const ) ;
   void (*get_channels)(struct net_device * , struct ethtool_channels * ) ;
   int (*set_channels)(struct net_device * , struct ethtool_channels * ) ;
   int (*get_dump_flag)(struct net_device * , struct ethtool_dump * ) ;
   int (*get_dump_data)(struct net_device * , struct ethtool_dump * , void * ) ;
   int (*set_dump)(struct net_device * , struct ethtool_dump * ) ;
   int (*get_ts_info)(struct net_device * , struct ethtool_ts_info * ) ;
   int (*get_module_info)(struct net_device * , struct ethtool_modinfo * ) ;
   int (*get_module_eeprom)(struct net_device * , struct ethtool_eeprom * , u8 * ) ;
   int (*get_eee)(struct net_device * , struct ethtool_eee * ) ;
   int (*set_eee)(struct net_device * , struct ethtool_eee * ) ;
   int (*get_tunable)(struct net_device * , struct ethtool_tunable const * , void * ) ;
   int (*set_tunable)(struct net_device * , struct ethtool_tunable const * , void const * ) ;
};
struct prot_inuse;
struct netns_core {
   struct ctl_table_header *sysctl_hdr ;
   int sysctl_somaxconn ;
   struct prot_inuse *inuse ;
};
struct u64_stats_sync {
};
struct ipstats_mib {
   u64 mibs[36U] ;
   struct u64_stats_sync syncp ;
};
struct icmp_mib {
   unsigned long mibs[28U] ;
};
struct icmpmsg_mib {
   atomic_long_t mibs[512U] ;
};
struct icmpv6_mib {
   unsigned long mibs[6U] ;
};
struct icmpv6msg_mib {
   atomic_long_t mibs[512U] ;
};
struct tcp_mib {
   unsigned long mibs[16U] ;
};
struct udp_mib {
   unsigned long mibs[9U] ;
};
struct linux_mib {
   unsigned long mibs[115U] ;
};
struct linux_xfrm_mib {
   unsigned long mibs[29U] ;
};
struct netns_mib {
   struct tcp_mib *tcp_statistics ;
   struct ipstats_mib *ip_statistics ;
   struct linux_mib *net_statistics ;
   struct udp_mib *udp_statistics ;
   struct udp_mib *udplite_statistics ;
   struct icmp_mib *icmp_statistics ;
   struct icmpmsg_mib *icmpmsg_statistics ;
   struct proc_dir_entry *proc_net_devsnmp6 ;
   struct udp_mib *udp_stats_in6 ;
   struct udp_mib *udplite_stats_in6 ;
   struct ipstats_mib *ipv6_statistics ;
   struct icmpv6_mib *icmpv6_statistics ;
   struct icmpv6msg_mib *icmpv6msg_statistics ;
   struct linux_xfrm_mib *xfrm_statistics ;
};
struct netns_unix {
   int sysctl_max_dgram_qlen ;
   struct ctl_table_header *ctl ;
};
struct netns_packet {
   struct mutex sklist_lock ;
   struct hlist_head sklist ;
};
struct netns_frags {
   struct percpu_counter mem ;
   int timeout ;
   int high_thresh ;
   int low_thresh ;
};
struct ipv4_devconf;
struct fib_rules_ops;
struct fib_table;
struct local_ports {
   seqlock_t lock ;
   int range[2U] ;
   bool warned ;
};
struct ping_group_range {
   seqlock_t lock ;
   kgid_t range[2U] ;
};
struct inet_peer_base;
struct xt_table;
struct netns_ipv4 {
   struct ctl_table_header *forw_hdr ;
   struct ctl_table_header *frags_hdr ;
   struct ctl_table_header *ipv4_hdr ;
   struct ctl_table_header *route_hdr ;
   struct ctl_table_header *xfrm4_hdr ;
   struct ipv4_devconf *devconf_all ;
   struct ipv4_devconf *devconf_dflt ;
   struct fib_rules_ops *rules_ops ;
   bool fib_has_custom_rules ;
   struct fib_table *fib_local ;
   struct fib_table *fib_main ;
   struct fib_table *fib_default ;
   int fib_num_tclassid_users ;
   struct hlist_head *fib_table_hash ;
   bool fib_offload_disabled ;
   struct sock *fibnl ;
   struct sock **icmp_sk ;
   struct sock *mc_autojoin_sk ;
   struct inet_peer_base *peers ;
   struct sock **tcp_sk ;
   struct netns_frags frags ;
   struct xt_table *iptable_filter ;
   struct xt_table *iptable_mangle ;
   struct xt_table *iptable_raw ;
   struct xt_table *arptable_filter ;
   struct xt_table *iptable_security ;
   struct xt_table *nat_table ;
   int sysctl_icmp_echo_ignore_all ;
   int sysctl_icmp_echo_ignore_broadcasts ;
   int sysctl_icmp_ignore_bogus_error_responses ;
   int sysctl_icmp_ratelimit ;
   int sysctl_icmp_ratemask ;
   int sysctl_icmp_errors_use_inbound_ifaddr ;
   struct local_ports ip_local_ports ;
   int sysctl_tcp_ecn ;
   int sysctl_tcp_ecn_fallback ;
   int sysctl_ip_no_pmtu_disc ;
   int sysctl_ip_fwd_use_pmtu ;
   int sysctl_ip_nonlocal_bind ;
   int sysctl_fwmark_reflect ;
   int sysctl_tcp_fwmark_accept ;
   int sysctl_tcp_mtu_probing ;
   int sysctl_tcp_base_mss ;
   int sysctl_tcp_probe_threshold ;
   u32 sysctl_tcp_probe_interval ;
   struct ping_group_range ping_group_range ;
   atomic_t dev_addr_genid ;
   unsigned long *sysctl_local_reserved_ports ;
   struct list_head mr_tables ;
   struct fib_rules_ops *mr_rules_ops ;
   atomic_t rt_genid ;
};
struct neighbour;
struct dst_ops {
   unsigned short family ;
   unsigned int gc_thresh ;
   int (*gc)(struct dst_ops * ) ;
   struct dst_entry *(*check)(struct dst_entry * , __u32 ) ;
   unsigned int (*default_advmss)(struct dst_entry const * ) ;
   unsigned int (*mtu)(struct dst_entry const * ) ;
   u32 *(*cow_metrics)(struct dst_entry * , unsigned long ) ;
   void (*destroy)(struct dst_entry * ) ;
   void (*ifdown)(struct dst_entry * , struct net_device * , int ) ;
   struct dst_entry *(*negative_advice)(struct dst_entry * ) ;
   void (*link_failure)(struct sk_buff * ) ;
   void (*update_pmtu)(struct dst_entry * , struct sock * , struct sk_buff * , u32 ) ;
   void (*redirect)(struct dst_entry * , struct sock * , struct sk_buff * ) ;
   int (*local_out)(struct sk_buff * ) ;
   struct neighbour *(*neigh_lookup)(struct dst_entry const * , struct sk_buff * ,
                                     void const * ) ;
   struct kmem_cache *kmem_cachep ;
   struct percpu_counter pcpuc_entries ;
};
struct netns_sysctl_ipv6 {
   struct ctl_table_header *hdr ;
   struct ctl_table_header *route_hdr ;
   struct ctl_table_header *icmp_hdr ;
   struct ctl_table_header *frags_hdr ;
   struct ctl_table_header *xfrm6_hdr ;
   int bindv6only ;
   int flush_delay ;
   int ip6_rt_max_size ;
   int ip6_rt_gc_min_interval ;
   int ip6_rt_gc_timeout ;
   int ip6_rt_gc_interval ;
   int ip6_rt_gc_elasticity ;
   int ip6_rt_mtu_expires ;
   int ip6_rt_min_advmss ;
   int flowlabel_consistency ;
   int auto_flowlabels ;
   int icmpv6_time ;
   int anycast_src_echo_reply ;
   int fwmark_reflect ;
   int idgen_retries ;
   int idgen_delay ;
   int flowlabel_state_ranges ;
};
struct ipv6_devconf;
struct rt6_info;
struct rt6_statistics;
struct fib6_table;
struct netns_ipv6 {
   struct netns_sysctl_ipv6 sysctl ;
   struct ipv6_devconf *devconf_all ;
   struct ipv6_devconf *devconf_dflt ;
   struct inet_peer_base *peers ;
   struct netns_frags frags ;
   struct xt_table *ip6table_filter ;
   struct xt_table *ip6table_mangle ;
   struct xt_table *ip6table_raw ;
   struct xt_table *ip6table_security ;
   struct xt_table *ip6table_nat ;
   struct rt6_info *ip6_null_entry ;
   struct rt6_statistics *rt6_stats ;
   struct timer_list ip6_fib_timer ;
   struct hlist_head *fib_table_hash ;
   struct fib6_table *fib6_main_tbl ;
   struct dst_ops ip6_dst_ops ;
   unsigned int ip6_rt_gc_expire ;
   unsigned long ip6_rt_last_gc ;
   struct rt6_info *ip6_prohibit_entry ;
   struct rt6_info *ip6_blk_hole_entry ;
   struct fib6_table *fib6_local_tbl ;
   struct fib_rules_ops *fib6_rules_ops ;
   struct sock **icmp_sk ;
   struct sock *ndisc_sk ;
   struct sock *tcp_sk ;
   struct sock *igmp_sk ;
   struct sock *mc_autojoin_sk ;
   struct list_head mr6_tables ;
   struct fib_rules_ops *mr6_rules_ops ;
   atomic_t dev_addr_genid ;
   atomic_t fib6_sernum ;
};
struct netns_nf_frag {
   struct netns_sysctl_ipv6 sysctl ;
   struct netns_frags frags ;
};
struct netns_sysctl_lowpan {
   struct ctl_table_header *frags_hdr ;
};
struct netns_ieee802154_lowpan {
   struct netns_sysctl_lowpan sysctl ;
   struct netns_frags frags ;
};
struct sctp_mib;
struct netns_sctp {
   struct sctp_mib *sctp_statistics ;
   struct proc_dir_entry *proc_net_sctp ;
   struct ctl_table_header *sysctl_header ;
   struct sock *ctl_sock ;
   struct list_head local_addr_list ;
   struct list_head addr_waitq ;
   struct timer_list addr_wq_timer ;
   struct list_head auto_asconf_splist ;
   spinlock_t addr_wq_lock ;
   spinlock_t local_addr_lock ;
   unsigned int rto_initial ;
   unsigned int rto_min ;
   unsigned int rto_max ;
   int rto_alpha ;
   int rto_beta ;
   int max_burst ;
   int cookie_preserve_enable ;
   char *sctp_hmac_alg ;
   unsigned int valid_cookie_life ;
   unsigned int sack_timeout ;
   unsigned int hb_interval ;
   int max_retrans_association ;
   int max_retrans_path ;
   int max_retrans_init ;
   int pf_retrans ;
   int sndbuf_policy ;
   int rcvbuf_policy ;
   int default_auto_asconf ;
   int addip_enable ;
   int addip_noauth ;
   int prsctp_enable ;
   int auth_enable ;
   int scope_policy ;
   int rwnd_upd_shift ;
   unsigned long max_autoclose ;
};
struct netns_dccp {
   struct sock *v4_ctl_sk ;
   struct sock *v6_ctl_sk ;
};
struct nf_logger;
struct netns_nf {
   struct proc_dir_entry *proc_netfilter ;
   struct nf_logger const *nf_loggers[13U] ;
   struct ctl_table_header *nf_log_dir_header ;
};
struct ebt_table;
struct netns_xt {
   struct list_head tables[13U] ;
   bool notrack_deprecated_warning ;
   bool clusterip_deprecated_warning ;
   struct ebt_table *broute_table ;
   struct ebt_table *frame_filter ;
   struct ebt_table *frame_nat ;
};
struct hlist_nulls_node;
struct hlist_nulls_head {
   struct hlist_nulls_node *first ;
};
struct hlist_nulls_node {
   struct hlist_nulls_node *next ;
   struct hlist_nulls_node **pprev ;
};
struct nf_proto_net {
   struct ctl_table_header *ctl_table_header ;
   struct ctl_table *ctl_table ;
   struct ctl_table_header *ctl_compat_header ;
   struct ctl_table *ctl_compat_table ;
   unsigned int users ;
};
struct nf_generic_net {
   struct nf_proto_net pn ;
   unsigned int timeout ;
};
struct nf_tcp_net {
   struct nf_proto_net pn ;
   unsigned int timeouts[14U] ;
   unsigned int tcp_loose ;
   unsigned int tcp_be_liberal ;
   unsigned int tcp_max_retrans ;
};
struct nf_udp_net {
   struct nf_proto_net pn ;
   unsigned int timeouts[2U] ;
};
struct nf_icmp_net {
   struct nf_proto_net pn ;
   unsigned int timeout ;
};
struct nf_ip_net {
   struct nf_generic_net generic ;
   struct nf_tcp_net tcp ;
   struct nf_udp_net udp ;
   struct nf_icmp_net icmp ;
   struct nf_icmp_net icmpv6 ;
   struct ctl_table_header *ctl_table_header ;
   struct ctl_table *ctl_table ;
};
struct ct_pcpu {
   spinlock_t lock ;
   struct hlist_nulls_head unconfirmed ;
   struct hlist_nulls_head dying ;
   struct hlist_nulls_head tmpl ;
};
struct ip_conntrack_stat;
struct nf_ct_event_notifier;
struct nf_exp_event_notifier;
struct netns_ct {
   atomic_t count ;
   unsigned int expect_count ;
   struct delayed_work ecache_dwork ;
   bool ecache_dwork_pending ;
   struct ctl_table_header *sysctl_header ;
   struct ctl_table_header *acct_sysctl_header ;
   struct ctl_table_header *tstamp_sysctl_header ;
   struct ctl_table_header *event_sysctl_header ;
   struct ctl_table_header *helper_sysctl_header ;
   char *slabname ;
   unsigned int sysctl_log_invalid ;
   int sysctl_events ;
   int sysctl_acct ;
   int sysctl_auto_assign_helper ;
   bool auto_assign_helper_warned ;
   int sysctl_tstamp ;
   int sysctl_checksum ;
   unsigned int htable_size ;
   seqcount_t generation ;
   struct kmem_cache *nf_conntrack_cachep ;
   struct hlist_nulls_head *hash ;
   struct hlist_head *expect_hash ;
   struct ct_pcpu *pcpu_lists ;
   struct ip_conntrack_stat *stat ;
   struct nf_ct_event_notifier *nf_conntrack_event_cb ;
   struct nf_exp_event_notifier *nf_expect_event_cb ;
   struct nf_ip_net nf_ct_proto ;
   unsigned int labels_used ;
   u8 label_words ;
   struct hlist_head *nat_bysource ;
   unsigned int nat_htable_size ;
};
struct nft_af_info;
struct netns_nftables {
   struct list_head af_info ;
   struct list_head commit_list ;
   struct nft_af_info *ipv4 ;
   struct nft_af_info *ipv6 ;
   struct nft_af_info *inet ;
   struct nft_af_info *arp ;
   struct nft_af_info *bridge ;
   struct nft_af_info *netdev ;
   unsigned int base_seq ;
   u8 gencursor ;
};
struct tasklet_struct {
   struct tasklet_struct *next ;
   unsigned long state ;
   atomic_t count ;
   void (*func)(unsigned long ) ;
   unsigned long data ;
};
struct flow_cache_percpu {
   struct hlist_head *hash_table ;
   int hash_count ;
   u32 hash_rnd ;
   int hash_rnd_recalc ;
   struct tasklet_struct flush_tasklet ;
};
struct flow_cache {
   u32 hash_shift ;
   struct flow_cache_percpu *percpu ;
   struct notifier_block hotcpu_notifier ;
   int low_watermark ;
   int high_watermark ;
   struct timer_list rnd_timer ;
};
struct xfrm_policy_hash {
   struct hlist_head *table ;
   unsigned int hmask ;
   u8 dbits4 ;
   u8 sbits4 ;
   u8 dbits6 ;
   u8 sbits6 ;
};
struct xfrm_policy_hthresh {
   struct work_struct work ;
   seqlock_t lock ;
   u8 lbits4 ;
   u8 rbits4 ;
   u8 lbits6 ;
   u8 rbits6 ;
};
struct netns_xfrm {
   struct list_head state_all ;
   struct hlist_head *state_bydst ;
   struct hlist_head *state_bysrc ;
   struct hlist_head *state_byspi ;
   unsigned int state_hmask ;
   unsigned int state_num ;
   struct work_struct state_hash_work ;
   struct hlist_head state_gc_list ;
   struct work_struct state_gc_work ;
   struct list_head policy_all ;
   struct hlist_head *policy_byidx ;
   unsigned int policy_idx_hmask ;
   struct hlist_head policy_inexact[3U] ;
   struct xfrm_policy_hash policy_bydst[3U] ;
   unsigned int policy_count[6U] ;
   struct work_struct policy_hash_work ;
   struct xfrm_policy_hthresh policy_hthresh ;
   struct sock *nlsk ;
   struct sock *nlsk_stash ;
   u32 sysctl_aevent_etime ;
   u32 sysctl_aevent_rseqth ;
   int sysctl_larval_drop ;
   u32 sysctl_acq_expires ;
   struct ctl_table_header *sysctl_hdr ;
   struct dst_ops xfrm4_dst_ops ;
   struct dst_ops xfrm6_dst_ops ;
   spinlock_t xfrm_state_lock ;
   rwlock_t xfrm_policy_lock ;
   struct mutex xfrm_cfg_mutex ;
   struct flow_cache flow_cache_global ;
   atomic_t flow_cache_genid ;
   struct list_head flow_cache_gc_list ;
   spinlock_t flow_cache_gc_lock ;
   struct work_struct flow_cache_gc_work ;
   struct work_struct flow_cache_flush_work ;
   struct mutex flow_flush_sem ;
};
struct mpls_route;
struct netns_mpls {
   size_t platform_labels ;
   struct mpls_route **platform_label ;
   struct ctl_table_header *ctl ;
};
struct proc_ns_operations;
struct ns_common {
   atomic_long_t stashed ;
   struct proc_ns_operations const *ops ;
   unsigned int inum ;
};
struct net_generic;
struct netns_ipvs;
struct net {
   atomic_t passive ;
   atomic_t count ;
   spinlock_t rules_mod_lock ;
   atomic64_t cookie_gen ;
   struct list_head list ;
   struct list_head cleanup_list ;
   struct list_head exit_list ;
   struct user_namespace *user_ns ;
   spinlock_t nsid_lock ;
   struct idr netns_ids ;
   struct ns_common ns ;
   struct proc_dir_entry *proc_net ;
   struct proc_dir_entry *proc_net_stat ;
   struct ctl_table_set sysctls ;
   struct sock *rtnl ;
   struct sock *genl_sock ;
   struct list_head dev_base_head ;
   struct hlist_head *dev_name_head ;
   struct hlist_head *dev_index_head ;
   unsigned int dev_base_seq ;
   int ifindex ;
   unsigned int dev_unreg_count ;
   struct list_head rules_ops ;
   struct net_device *loopback_dev ;
   struct netns_core core ;
   struct netns_mib mib ;
   struct netns_packet packet ;
   struct netns_unix unx ;
   struct netns_ipv4 ipv4 ;
   struct netns_ipv6 ipv6 ;
   struct netns_ieee802154_lowpan ieee802154_lowpan ;
   struct netns_sctp sctp ;
   struct netns_dccp dccp ;
   struct netns_nf nf ;
   struct netns_xt xt ;
   struct netns_ct ct ;
   struct netns_nftables nft ;
   struct netns_nf_frag nf_frag ;
   struct sock *nfnl ;
   struct sock *nfnl_stash ;
   struct sk_buff_head wext_nlevents ;
   struct net_generic *gen ;
   struct netns_xfrm xfrm ;
   struct netns_ipvs *ipvs ;
   struct netns_mpls mpls ;
   struct sock *diag_nlsk ;
   atomic_t fnhe_genid ;
};
struct __anonstruct_possible_net_t_306 {
   struct net *net ;
};
typedef struct __anonstruct_possible_net_t_306 possible_net_t;
enum fwnode_type {
    FWNODE_INVALID = 0,
    FWNODE_OF = 1,
    FWNODE_ACPI = 2,
    FWNODE_PDATA = 3
} ;
struct fwnode_handle {
   enum fwnode_type type ;
   struct fwnode_handle *secondary ;
};
typedef u32 phandle;
struct property {
   char *name ;
   int length ;
   void *value ;
   struct property *next ;
   unsigned long _flags ;
   unsigned int unique_id ;
   struct bin_attribute attr ;
};
struct device_node {
   char const *name ;
   char const *type ;
   phandle phandle ;
   char const *full_name ;
   struct fwnode_handle fwnode ;
   struct property *properties ;
   struct property *deadprops ;
   struct device_node *parent ;
   struct device_node *child ;
   struct device_node *sibling ;
   struct kobject kobj ;
   unsigned long _flags ;
   void *data ;
};
enum ldv_28647 {
    PHY_INTERFACE_MODE_NA = 0,
    PHY_INTERFACE_MODE_MII = 1,
    PHY_INTERFACE_MODE_GMII = 2,
    PHY_INTERFACE_MODE_SGMII = 3,
    PHY_INTERFACE_MODE_TBI = 4,
    PHY_INTERFACE_MODE_REVMII = 5,
    PHY_INTERFACE_MODE_RMII = 6,
    PHY_INTERFACE_MODE_RGMII = 7,
    PHY_INTERFACE_MODE_RGMII_ID = 8,
    PHY_INTERFACE_MODE_RGMII_RXID = 9,
    PHY_INTERFACE_MODE_RGMII_TXID = 10,
    PHY_INTERFACE_MODE_RTBI = 11,
    PHY_INTERFACE_MODE_SMII = 12,
    PHY_INTERFACE_MODE_XGMII = 13,
    PHY_INTERFACE_MODE_MOCA = 14,
    PHY_INTERFACE_MODE_QSGMII = 15,
    PHY_INTERFACE_MODE_MAX = 16
} ;
typedef enum ldv_28647 phy_interface_t;
enum ldv_28701 {
    MDIOBUS_ALLOCATED = 1,
    MDIOBUS_REGISTERED = 2,
    MDIOBUS_UNREGISTERED = 3,
    MDIOBUS_RELEASED = 4
} ;
struct phy_device;
struct mii_bus {
   char const *name ;
   char id[17U] ;
   void *priv ;
   int (*read)(struct mii_bus * , int , int ) ;
   int (*write)(struct mii_bus * , int , int , u16 ) ;
   int (*reset)(struct mii_bus * ) ;
   struct mutex mdio_lock ;
   struct device *parent ;
   enum ldv_28701 state ;
   struct device dev ;
   struct phy_device *phy_map[32U] ;
   u32 phy_mask ;
   u32 phy_ignore_ta_mask ;
   int *irq ;
};
enum phy_state {
    PHY_DOWN = 0,
    PHY_STARTING = 1,
    PHY_READY = 2,
    PHY_PENDING = 3,
    PHY_UP = 4,
    PHY_AN = 5,
    PHY_RUNNING = 6,
    PHY_NOLINK = 7,
    PHY_FORCING = 8,
    PHY_CHANGELINK = 9,
    PHY_HALTED = 10,
    PHY_RESUMING = 11
} ;
struct phy_c45_device_ids {
   u32 devices_in_package ;
   u32 device_ids[8U] ;
};
struct phy_driver;
struct phy_device {
   struct phy_driver *drv ;
   struct mii_bus *bus ;
   struct device dev ;
   u32 phy_id ;
   struct phy_c45_device_ids c45_ids ;
   bool is_c45 ;
   bool is_internal ;
   bool has_fixups ;
   bool suspended ;
   enum phy_state state ;
   u32 dev_flags ;
   phy_interface_t interface ;
   int addr ;
   int speed ;
   int duplex ;
   int pause ;
   int asym_pause ;
   int link ;
   u32 interrupts ;
   u32 supported ;
   u32 advertising ;
   u32 lp_advertising ;
   int autoneg ;
   int link_timeout ;
   int irq ;
   void *priv ;
   struct work_struct phy_queue ;
   struct delayed_work state_queue ;
   atomic_t irq_disable ;
   struct mutex lock ;
   struct net_device *attached_dev ;
   void (*adjust_link)(struct net_device * ) ;
};
struct phy_driver {
   u32 phy_id ;
   char *name ;
   unsigned int phy_id_mask ;
   u32 features ;
   u32 flags ;
   void const *driver_data ;
   int (*soft_reset)(struct phy_device * ) ;
   int (*config_init)(struct phy_device * ) ;
   int (*probe)(struct phy_device * ) ;
   int (*suspend)(struct phy_device * ) ;
   int (*resume)(struct phy_device * ) ;
   int (*config_aneg)(struct phy_device * ) ;
   int (*aneg_done)(struct phy_device * ) ;
   int (*read_status)(struct phy_device * ) ;
   int (*ack_interrupt)(struct phy_device * ) ;
   int (*config_intr)(struct phy_device * ) ;
   int (*did_interrupt)(struct phy_device * ) ;
   void (*remove)(struct phy_device * ) ;
   int (*match_phy_device)(struct phy_device * ) ;
   int (*ts_info)(struct phy_device * , struct ethtool_ts_info * ) ;
   int (*hwtstamp)(struct phy_device * , struct ifreq * ) ;
   bool (*rxtstamp)(struct phy_device * , struct sk_buff * , int ) ;
   void (*txtstamp)(struct phy_device * , struct sk_buff * , int ) ;
   int (*set_wol)(struct phy_device * , struct ethtool_wolinfo * ) ;
   void (*get_wol)(struct phy_device * , struct ethtool_wolinfo * ) ;
   void (*link_change_notify)(struct phy_device * ) ;
   int (*read_mmd_indirect)(struct phy_device * , int , int , int ) ;
   void (*write_mmd_indirect)(struct phy_device * , int , int , int , u32 ) ;
   int (*module_info)(struct phy_device * , struct ethtool_modinfo * ) ;
   int (*module_eeprom)(struct phy_device * , struct ethtool_eeprom * , u8 * ) ;
   struct device_driver driver ;
};
struct fixed_phy_status {
   int link ;
   int speed ;
   int duplex ;
   int pause ;
   int asym_pause ;
};
enum dsa_tag_protocol {
    DSA_TAG_PROTO_NONE = 0,
    DSA_TAG_PROTO_DSA = 1,
    DSA_TAG_PROTO_TRAILER = 2,
    DSA_TAG_PROTO_EDSA = 3,
    DSA_TAG_PROTO_BRCM = 4
} ;
struct dsa_chip_data {
   struct device *host_dev ;
   int sw_addr ;
   int eeprom_len ;
   struct device_node *of_node ;
   char *port_names[12U] ;
   struct device_node *port_dn[12U] ;
   s8 *rtable ;
};
struct dsa_platform_data {
   struct device *netdev ;
   struct net_device *of_netdev ;
   int nr_chips ;
   struct dsa_chip_data *chip ;
};
struct packet_type;
struct dsa_switch;
struct dsa_switch_tree {
   struct dsa_platform_data *pd ;
   struct net_device *master_netdev ;
   int (*rcv)(struct sk_buff * , struct net_device * , struct packet_type * , struct net_device * ) ;
   enum dsa_tag_protocol tag_protocol ;
   s8 cpu_switch ;
   s8 cpu_port ;
   int link_poll_needed ;
   struct work_struct link_poll_work ;
   struct timer_list link_poll_timer ;
   struct dsa_switch *ds[4U] ;
};
struct dsa_switch_driver;
struct dsa_switch {
   struct dsa_switch_tree *dst ;
   int index ;
   enum dsa_tag_protocol tag_protocol ;
   struct dsa_chip_data *pd ;
   struct dsa_switch_driver *drv ;
   struct device *master_dev ;
   char hwmon_name[24U] ;
   struct device *hwmon_dev ;
   u32 dsa_port_mask ;
   u32 phys_port_mask ;
   u32 phys_mii_mask ;
   struct mii_bus *slave_mii_bus ;
   struct net_device *ports[12U] ;
};
struct dsa_switch_driver {
   struct list_head list ;
   enum dsa_tag_protocol tag_protocol ;
   int priv_size ;
   char *(*probe)(struct device * , int ) ;
   int (*setup)(struct dsa_switch * ) ;
   int (*set_addr)(struct dsa_switch * , u8 * ) ;
   u32 (*get_phy_flags)(struct dsa_switch * , int ) ;
   int (*phy_read)(struct dsa_switch * , int , int ) ;
   int (*phy_write)(struct dsa_switch * , int , int , u16 ) ;
   void (*poll_link)(struct dsa_switch * ) ;
   void (*adjust_link)(struct dsa_switch * , int , struct phy_device * ) ;
   void (*fixed_link_update)(struct dsa_switch * , int , struct fixed_phy_status * ) ;
   void (*get_strings)(struct dsa_switch * , int , uint8_t * ) ;
   void (*get_ethtool_stats)(struct dsa_switch * , int , uint64_t * ) ;
   int (*get_sset_count)(struct dsa_switch * ) ;
   void (*get_wol)(struct dsa_switch * , int , struct ethtool_wolinfo * ) ;
   int (*set_wol)(struct dsa_switch * , int , struct ethtool_wolinfo * ) ;
   int (*suspend)(struct dsa_switch * ) ;
   int (*resume)(struct dsa_switch * ) ;
   int (*port_enable)(struct dsa_switch * , int , struct phy_device * ) ;
   void (*port_disable)(struct dsa_switch * , int , struct phy_device * ) ;
   int (*set_eee)(struct dsa_switch * , int , struct phy_device * , struct ethtool_eee * ) ;
   int (*get_eee)(struct dsa_switch * , int , struct ethtool_eee * ) ;
   int (*get_temp)(struct dsa_switch * , int * ) ;
   int (*get_temp_limit)(struct dsa_switch * , int * ) ;
   int (*set_temp_limit)(struct dsa_switch * , int ) ;
   int (*get_temp_alarm)(struct dsa_switch * , bool * ) ;
   int (*get_eeprom_len)(struct dsa_switch * ) ;
   int (*get_eeprom)(struct dsa_switch * , struct ethtool_eeprom * , u8 * ) ;
   int (*set_eeprom)(struct dsa_switch * , struct ethtool_eeprom * , u8 * ) ;
   int (*get_regs_len)(struct dsa_switch * , int ) ;
   void (*get_regs)(struct dsa_switch * , int , struct ethtool_regs * , void * ) ;
   int (*port_join_bridge)(struct dsa_switch * , int , u32 ) ;
   int (*port_leave_bridge)(struct dsa_switch * , int , u32 ) ;
   int (*port_stp_update)(struct dsa_switch * , int , u8 ) ;
   int (*fdb_add)(struct dsa_switch * , int , unsigned char const * , u16 ) ;
   int (*fdb_del)(struct dsa_switch * , int , unsigned char const * , u16 ) ;
   int (*fdb_getnext)(struct dsa_switch * , int , unsigned char * , bool * ) ;
};
struct ieee_ets {
   __u8 willing ;
   __u8 ets_cap ;
   __u8 cbs ;
   __u8 tc_tx_bw[8U] ;
   __u8 tc_rx_bw[8U] ;
   __u8 tc_tsa[8U] ;
   __u8 prio_tc[8U] ;
   __u8 tc_reco_bw[8U] ;
   __u8 tc_reco_tsa[8U] ;
   __u8 reco_prio_tc[8U] ;
};
struct ieee_maxrate {
   __u64 tc_maxrate[8U] ;
};
struct ieee_qcn {
   __u8 rpg_enable[8U] ;
   __u32 rppp_max_rps[8U] ;
   __u32 rpg_time_reset[8U] ;
   __u32 rpg_byte_reset[8U] ;
   __u32 rpg_threshold[8U] ;
   __u32 rpg_max_rate[8U] ;
   __u32 rpg_ai_rate[8U] ;
   __u32 rpg_hai_rate[8U] ;
   __u32 rpg_gd[8U] ;
   __u32 rpg_min_dec_fac[8U] ;
   __u32 rpg_min_rate[8U] ;
   __u32 cndd_state_machine[8U] ;
};
struct ieee_qcn_stats {
   __u64 rppp_rp_centiseconds[8U] ;
   __u32 rppp_created_rps[8U] ;
};
struct ieee_pfc {
   __u8 pfc_cap ;
   __u8 pfc_en ;
   __u8 mbc ;
   __u16 delay ;
   __u64 requests[8U] ;
   __u64 indications[8U] ;
};
struct cee_pg {
   __u8 willing ;
   __u8 error ;
   __u8 pg_en ;
   __u8 tcs_supported ;
   __u8 pg_bw[8U] ;
   __u8 prio_pg[8U] ;
};
struct cee_pfc {
   __u8 willing ;
   __u8 error ;
   __u8 pfc_en ;
   __u8 tcs_supported ;
};
struct dcb_app {
   __u8 selector ;
   __u8 priority ;
   __u16 protocol ;
};
struct dcb_peer_app_info {
   __u8 willing ;
   __u8 error ;
};
struct dcbnl_rtnl_ops {
   int (*ieee_getets)(struct net_device * , struct ieee_ets * ) ;
   int (*ieee_setets)(struct net_device * , struct ieee_ets * ) ;
   int (*ieee_getmaxrate)(struct net_device * , struct ieee_maxrate * ) ;
   int (*ieee_setmaxrate)(struct net_device * , struct ieee_maxrate * ) ;
   int (*ieee_getqcn)(struct net_device * , struct ieee_qcn * ) ;
   int (*ieee_setqcn)(struct net_device * , struct ieee_qcn * ) ;
   int (*ieee_getqcnstats)(struct net_device * , struct ieee_qcn_stats * ) ;
   int (*ieee_getpfc)(struct net_device * , struct ieee_pfc * ) ;
   int (*ieee_setpfc)(struct net_device * , struct ieee_pfc * ) ;
   int (*ieee_getapp)(struct net_device * , struct dcb_app * ) ;
   int (*ieee_setapp)(struct net_device * , struct dcb_app * ) ;
   int (*ieee_delapp)(struct net_device * , struct dcb_app * ) ;
   int (*ieee_peer_getets)(struct net_device * , struct ieee_ets * ) ;
   int (*ieee_peer_getpfc)(struct net_device * , struct ieee_pfc * ) ;
   u8 (*getstate)(struct net_device * ) ;
   u8 (*setstate)(struct net_device * , u8 ) ;
   void (*getpermhwaddr)(struct net_device * , u8 * ) ;
   void (*setpgtccfgtx)(struct net_device * , int , u8 , u8 , u8 , u8 ) ;
   void (*setpgbwgcfgtx)(struct net_device * , int , u8 ) ;
   void (*setpgtccfgrx)(struct net_device * , int , u8 , u8 , u8 , u8 ) ;
   void (*setpgbwgcfgrx)(struct net_device * , int , u8 ) ;
   void (*getpgtccfgtx)(struct net_device * , int , u8 * , u8 * , u8 * , u8 * ) ;
   void (*getpgbwgcfgtx)(struct net_device * , int , u8 * ) ;
   void (*getpgtccfgrx)(struct net_device * , int , u8 * , u8 * , u8 * , u8 * ) ;
   void (*getpgbwgcfgrx)(struct net_device * , int , u8 * ) ;
   void (*setpfccfg)(struct net_device * , int , u8 ) ;
   void (*getpfccfg)(struct net_device * , int , u8 * ) ;
   u8 (*setall)(struct net_device * ) ;
   u8 (*getcap)(struct net_device * , int , u8 * ) ;
   int (*getnumtcs)(struct net_device * , int , u8 * ) ;
   int (*setnumtcs)(struct net_device * , int , u8 ) ;
   u8 (*getpfcstate)(struct net_device * ) ;
   void (*setpfcstate)(struct net_device * , u8 ) ;
   void (*getbcncfg)(struct net_device * , int , u32 * ) ;
   void (*setbcncfg)(struct net_device * , int , u32 ) ;
   void (*getbcnrp)(struct net_device * , int , u8 * ) ;
   void (*setbcnrp)(struct net_device * , int , u8 ) ;
   int (*setapp)(struct net_device * , u8 , u16 , u8 ) ;
   int (*getapp)(struct net_device * , u8 , u16 ) ;
   u8 (*getfeatcfg)(struct net_device * , int , u8 * ) ;
   u8 (*setfeatcfg)(struct net_device * , int , u8 ) ;
   u8 (*getdcbx)(struct net_device * ) ;
   u8 (*setdcbx)(struct net_device * , u8 ) ;
   int (*peer_getappinfo)(struct net_device * , struct dcb_peer_app_info * , u16 * ) ;
   int (*peer_getapptable)(struct net_device * , struct dcb_app * ) ;
   int (*cee_peer_getpg)(struct net_device * , struct cee_pg * ) ;
   int (*cee_peer_getpfc)(struct net_device * , struct cee_pfc * ) ;
};
struct taskstats {
   __u16 version ;
   __u32 ac_exitcode ;
   __u8 ac_flag ;
   __u8 ac_nice ;
   __u64 cpu_count ;
   __u64 cpu_delay_total ;
   __u64 blkio_count ;
   __u64 blkio_delay_total ;
   __u64 swapin_count ;
   __u64 swapin_delay_total ;
   __u64 cpu_run_real_total ;
   __u64 cpu_run_virtual_total ;
   char ac_comm[32U] ;
   __u8 ac_sched ;
   __u8 ac_pad[3U] ;
   __u32 ac_uid ;
   __u32 ac_gid ;
   __u32 ac_pid ;
   __u32 ac_ppid ;
   __u32 ac_btime ;
   __u64 ac_etime ;
   __u64 ac_utime ;
   __u64 ac_stime ;
   __u64 ac_minflt ;
   __u64 ac_majflt ;
   __u64 coremem ;
   __u64 virtmem ;
   __u64 hiwater_rss ;
   __u64 hiwater_vm ;
   __u64 read_char ;
   __u64 write_char ;
   __u64 read_syscalls ;
   __u64 write_syscalls ;
   __u64 read_bytes ;
   __u64 write_bytes ;
   __u64 cancelled_write_bytes ;
   __u64 nvcsw ;
   __u64 nivcsw ;
   __u64 ac_utimescaled ;
   __u64 ac_stimescaled ;
   __u64 cpu_scaled_run_real_total ;
   __u64 freepages_count ;
   __u64 freepages_delay_total ;
};
struct netprio_map {
   struct callback_head rcu ;
   u32 priomap_len ;
   u32 priomap[] ;
};
struct mnt_namespace;
struct ipc_namespace;
struct nsproxy {
   atomic_t count ;
   struct uts_namespace *uts_ns ;
   struct ipc_namespace *ipc_ns ;
   struct mnt_namespace *mnt_ns ;
   struct pid_namespace *pid_ns_for_children ;
   struct net *net_ns ;
};
struct nlmsghdr {
   __u32 nlmsg_len ;
   __u16 nlmsg_type ;
   __u16 nlmsg_flags ;
   __u32 nlmsg_seq ;
   __u32 nlmsg_pid ;
};
struct nlattr {
   __u16 nla_len ;
   __u16 nla_type ;
};
struct netlink_callback {
   struct sk_buff *skb ;
   struct nlmsghdr const *nlh ;
   int (*dump)(struct sk_buff * , struct netlink_callback * ) ;
   int (*done)(struct netlink_callback * ) ;
   void *data ;
   struct module *module ;
   u16 family ;
   u16 min_dump_alloc ;
   unsigned int prev_seq ;
   unsigned int seq ;
   long args[6U] ;
};
struct ndmsg {
   __u8 ndm_family ;
   __u8 ndm_pad1 ;
   __u16 ndm_pad2 ;
   __s32 ndm_ifindex ;
   __u16 ndm_state ;
   __u8 ndm_flags ;
   __u8 ndm_type ;
};
struct rtnl_link_stats64 {
   __u64 rx_packets ;
   __u64 tx_packets ;
   __u64 rx_bytes ;
   __u64 tx_bytes ;
   __u64 rx_errors ;
   __u64 tx_errors ;
   __u64 rx_dropped ;
   __u64 tx_dropped ;
   __u64 multicast ;
   __u64 collisions ;
   __u64 rx_length_errors ;
   __u64 rx_over_errors ;
   __u64 rx_crc_errors ;
   __u64 rx_frame_errors ;
   __u64 rx_fifo_errors ;
   __u64 rx_missed_errors ;
   __u64 tx_aborted_errors ;
   __u64 tx_carrier_errors ;
   __u64 tx_fifo_errors ;
   __u64 tx_heartbeat_errors ;
   __u64 tx_window_errors ;
   __u64 rx_compressed ;
   __u64 tx_compressed ;
};
struct ifla_vf_stats {
   __u64 rx_packets ;
   __u64 tx_packets ;
   __u64 rx_bytes ;
   __u64 tx_bytes ;
   __u64 broadcast ;
   __u64 multicast ;
};
struct ifla_vf_info {
   __u32 vf ;
   __u8 mac[32U] ;
   __u32 vlan ;
   __u32 qos ;
   __u32 spoofchk ;
   __u32 linkstate ;
   __u32 min_tx_rate ;
   __u32 max_tx_rate ;
   __u32 rss_query_en ;
};
struct netpoll_info;
struct wireless_dev;
struct wpan_dev;
struct mpls_dev;
enum netdev_tx {
    __NETDEV_TX_MIN = (-0x7FFFFFFF-1),
    NETDEV_TX_OK = 0,
    NETDEV_TX_BUSY = 16,
    NETDEV_TX_LOCKED = 32
} ;
typedef enum netdev_tx netdev_tx_t;
struct net_device_stats {
   unsigned long rx_packets ;
   unsigned long tx_packets ;
   unsigned long rx_bytes ;
   unsigned long tx_bytes ;
   unsigned long rx_errors ;
   unsigned long tx_errors ;
   unsigned long rx_dropped ;
   unsigned long tx_dropped ;
   unsigned long multicast ;
   unsigned long collisions ;
   unsigned long rx_length_errors ;
   unsigned long rx_over_errors ;
   unsigned long rx_crc_errors ;
   unsigned long rx_frame_errors ;
   unsigned long rx_fifo_errors ;
   unsigned long rx_missed_errors ;
   unsigned long tx_aborted_errors ;
   unsigned long tx_carrier_errors ;
   unsigned long tx_fifo_errors ;
   unsigned long tx_heartbeat_errors ;
   unsigned long tx_window_errors ;
   unsigned long rx_compressed ;
   unsigned long tx_compressed ;
};
struct neigh_parms;
struct netdev_hw_addr_list {
   struct list_head list ;
   int count ;
};
struct hh_cache {
   u16 hh_len ;
   u16 __pad ;
   seqlock_t hh_lock ;
   unsigned long hh_data[16U] ;
};
struct header_ops {
   int (*create)(struct sk_buff * , struct net_device * , unsigned short , void const * ,
                 void const * , unsigned int ) ;
   int (*parse)(struct sk_buff const * , unsigned char * ) ;
   int (*cache)(struct neighbour const * , struct hh_cache * , __be16 ) ;
   void (*cache_update)(struct hh_cache * , struct net_device const * , unsigned char const * ) ;
};
struct napi_struct {
   struct list_head poll_list ;
   unsigned long state ;
   int weight ;
   unsigned int gro_count ;
   int (*poll)(struct napi_struct * , int ) ;
   spinlock_t poll_lock ;
   int poll_owner ;
   struct net_device *dev ;
   struct sk_buff *gro_list ;
   struct sk_buff *skb ;
   struct hrtimer timer ;
   struct list_head dev_list ;
   struct hlist_node napi_hash_node ;
   unsigned int napi_id ;
};
enum rx_handler_result {
    RX_HANDLER_CONSUMED = 0,
    RX_HANDLER_ANOTHER = 1,
    RX_HANDLER_EXACT = 2,
    RX_HANDLER_PASS = 3
} ;
typedef enum rx_handler_result rx_handler_result_t;
typedef rx_handler_result_t rx_handler_func_t(struct sk_buff ** );
struct Qdisc;
struct netdev_queue {
   struct net_device *dev ;
   struct Qdisc *qdisc ;
   struct Qdisc *qdisc_sleeping ;
   struct kobject kobj ;
   int numa_node ;
   spinlock_t _xmit_lock ;
   int xmit_lock_owner ;
   unsigned long trans_start ;
   unsigned long trans_timeout ;
   unsigned long state ;
   struct dql dql ;
   unsigned long tx_maxrate ;
};
struct rps_map {
   unsigned int len ;
   struct callback_head rcu ;
   u16 cpus[0U] ;
};
struct rps_dev_flow {
   u16 cpu ;
   u16 filter ;
   unsigned int last_qtail ;
};
struct rps_dev_flow_table {
   unsigned int mask ;
   struct callback_head rcu ;
   struct rps_dev_flow flows[0U] ;
};
struct netdev_rx_queue {
   struct rps_map *rps_map ;
   struct rps_dev_flow_table *rps_flow_table ;
   struct kobject kobj ;
   struct net_device *dev ;
};
struct xps_map {
   unsigned int len ;
   unsigned int alloc_len ;
   struct callback_head rcu ;
   u16 queues[0U] ;
};
struct xps_dev_maps {
   struct callback_head rcu ;
   struct xps_map *cpu_map[0U] ;
};
struct netdev_tc_txq {
   u16 count ;
   u16 offset ;
};
struct netdev_fcoe_hbainfo {
   char manufacturer[64U] ;
   char serial_number[64U] ;
   char hardware_version[64U] ;
   char driver_version[64U] ;
   char optionrom_version[64U] ;
   char firmware_version[64U] ;
   char model[256U] ;
   char model_description[256U] ;
};
struct netdev_phys_item_id {
   unsigned char id[32U] ;
   unsigned char id_len ;
};
struct net_device_ops {
   int (*ndo_init)(struct net_device * ) ;
   void (*ndo_uninit)(struct net_device * ) ;
   int (*ndo_open)(struct net_device * ) ;
   int (*ndo_stop)(struct net_device * ) ;
   netdev_tx_t (*ndo_start_xmit)(struct sk_buff * , struct net_device * ) ;
   u16 (*ndo_select_queue)(struct net_device * , struct sk_buff * , void * , u16 (*)(struct net_device * ,
                                                                                     struct sk_buff * ) ) ;
   void (*ndo_change_rx_flags)(struct net_device * , int ) ;
   void (*ndo_set_rx_mode)(struct net_device * ) ;
   int (*ndo_set_mac_address)(struct net_device * , void * ) ;
   int (*ndo_validate_addr)(struct net_device * ) ;
   int (*ndo_do_ioctl)(struct net_device * , struct ifreq * , int ) ;
   int (*ndo_set_config)(struct net_device * , struct ifmap * ) ;
   int (*ndo_change_mtu)(struct net_device * , int ) ;
   int (*ndo_neigh_setup)(struct net_device * , struct neigh_parms * ) ;
   void (*ndo_tx_timeout)(struct net_device * ) ;
   struct rtnl_link_stats64 *(*ndo_get_stats64)(struct net_device * , struct rtnl_link_stats64 * ) ;
   struct net_device_stats *(*ndo_get_stats)(struct net_device * ) ;
   int (*ndo_vlan_rx_add_vid)(struct net_device * , __be16 , u16 ) ;
   int (*ndo_vlan_rx_kill_vid)(struct net_device * , __be16 , u16 ) ;
   void (*ndo_poll_controller)(struct net_device * ) ;
   int (*ndo_netpoll_setup)(struct net_device * , struct netpoll_info * ) ;
   void (*ndo_netpoll_cleanup)(struct net_device * ) ;
   int (*ndo_busy_poll)(struct napi_struct * ) ;
   int (*ndo_set_vf_mac)(struct net_device * , int , u8 * ) ;
   int (*ndo_set_vf_vlan)(struct net_device * , int , u16 , u8 ) ;
   int (*ndo_set_vf_rate)(struct net_device * , int , int , int ) ;
   int (*ndo_set_vf_spoofchk)(struct net_device * , int , bool ) ;
   int (*ndo_get_vf_config)(struct net_device * , int , struct ifla_vf_info * ) ;
   int (*ndo_set_vf_link_state)(struct net_device * , int , int ) ;
   int (*ndo_get_vf_stats)(struct net_device * , int , struct ifla_vf_stats * ) ;
   int (*ndo_set_vf_port)(struct net_device * , int , struct nlattr ** ) ;
   int (*ndo_get_vf_port)(struct net_device * , int , struct sk_buff * ) ;
   int (*ndo_set_vf_rss_query_en)(struct net_device * , int , bool ) ;
   int (*ndo_setup_tc)(struct net_device * , u8 ) ;
   int (*ndo_fcoe_enable)(struct net_device * ) ;
   int (*ndo_fcoe_disable)(struct net_device * ) ;
   int (*ndo_fcoe_ddp_setup)(struct net_device * , u16 , struct scatterlist * , unsigned int ) ;
   int (*ndo_fcoe_ddp_done)(struct net_device * , u16 ) ;
   int (*ndo_fcoe_ddp_target)(struct net_device * , u16 , struct scatterlist * ,
                              unsigned int ) ;
   int (*ndo_fcoe_get_hbainfo)(struct net_device * , struct netdev_fcoe_hbainfo * ) ;
   int (*ndo_fcoe_get_wwn)(struct net_device * , u64 * , int ) ;
   int (*ndo_rx_flow_steer)(struct net_device * , struct sk_buff const * , u16 ,
                            u32 ) ;
   int (*ndo_add_slave)(struct net_device * , struct net_device * ) ;
   int (*ndo_del_slave)(struct net_device * , struct net_device * ) ;
   netdev_features_t (*ndo_fix_features)(struct net_device * , netdev_features_t ) ;
   int (*ndo_set_features)(struct net_device * , netdev_features_t ) ;
   int (*ndo_neigh_construct)(struct neighbour * ) ;
   void (*ndo_neigh_destroy)(struct neighbour * ) ;
   int (*ndo_fdb_add)(struct ndmsg * , struct nlattr ** , struct net_device * , unsigned char const * ,
                      u16 , u16 ) ;
   int (*ndo_fdb_del)(struct ndmsg * , struct nlattr ** , struct net_device * , unsigned char const * ,
                      u16 ) ;
   int (*ndo_fdb_dump)(struct sk_buff * , struct netlink_callback * , struct net_device * ,
                       struct net_device * , int ) ;
   int (*ndo_bridge_setlink)(struct net_device * , struct nlmsghdr * , u16 ) ;
   int (*ndo_bridge_getlink)(struct sk_buff * , u32 , u32 , struct net_device * ,
                             u32 , int ) ;
   int (*ndo_bridge_dellink)(struct net_device * , struct nlmsghdr * , u16 ) ;
   int (*ndo_change_carrier)(struct net_device * , bool ) ;
   int (*ndo_get_phys_port_id)(struct net_device * , struct netdev_phys_item_id * ) ;
   int (*ndo_get_phys_port_name)(struct net_device * , char * , size_t ) ;
   void (*ndo_add_vxlan_port)(struct net_device * , sa_family_t , __be16 ) ;
   void (*ndo_del_vxlan_port)(struct net_device * , sa_family_t , __be16 ) ;
   void *(*ndo_dfwd_add_station)(struct net_device * , struct net_device * ) ;
   void (*ndo_dfwd_del_station)(struct net_device * , void * ) ;
   netdev_tx_t (*ndo_dfwd_start_xmit)(struct sk_buff * , struct net_device * , void * ) ;
   int (*ndo_get_lock_subclass)(struct net_device * ) ;
   netdev_features_t (*ndo_features_check)(struct sk_buff * , struct net_device * ,
                                           netdev_features_t ) ;
   int (*ndo_set_tx_maxrate)(struct net_device * , int , u32 ) ;
   int (*ndo_get_iflink)(struct net_device const * ) ;
};
struct __anonstruct_adj_list_316 {
   struct list_head upper ;
   struct list_head lower ;
};
struct __anonstruct_all_adj_list_317 {
   struct list_head upper ;
   struct list_head lower ;
};
struct iw_handler_def;
struct iw_public_data;
struct switchdev_ops;
struct vlan_info;
struct tipc_bearer;
struct in_device;
struct dn_dev;
struct inet6_dev;
struct tcf_proto;
struct cpu_rmap;
struct pcpu_lstats;
struct pcpu_sw_netstats;
struct pcpu_dstats;
struct pcpu_vstats;
union __anonunion____missing_field_name_318 {
   void *ml_priv ;
   struct pcpu_lstats *lstats ;
   struct pcpu_sw_netstats *tstats ;
   struct pcpu_dstats *dstats ;
   struct pcpu_vstats *vstats ;
};
struct garp_port;
struct mrp_port;
struct rtnl_link_ops;
struct net_device {
   char name[16U] ;
   struct hlist_node name_hlist ;
   char *ifalias ;
   unsigned long mem_end ;
   unsigned long mem_start ;
   unsigned long base_addr ;
   int irq ;
   atomic_t carrier_changes ;
   unsigned long state ;
   struct list_head dev_list ;
   struct list_head napi_list ;
   struct list_head unreg_list ;
   struct list_head close_list ;
   struct list_head ptype_all ;
   struct list_head ptype_specific ;
   struct __anonstruct_adj_list_316 adj_list ;
   struct __anonstruct_all_adj_list_317 all_adj_list ;
   netdev_features_t features ;
   netdev_features_t hw_features ;
   netdev_features_t wanted_features ;
   netdev_features_t vlan_features ;
   netdev_features_t hw_enc_features ;
   netdev_features_t mpls_features ;
   int ifindex ;
   int group ;
   struct net_device_stats stats ;
   atomic_long_t rx_dropped ;
   atomic_long_t tx_dropped ;
   struct iw_handler_def const *wireless_handlers ;
   struct iw_public_data *wireless_data ;
   struct net_device_ops const *netdev_ops ;
   struct ethtool_ops const *ethtool_ops ;
   struct switchdev_ops const *switchdev_ops ;
   struct header_ops const *header_ops ;
   unsigned int flags ;
   unsigned int priv_flags ;
   unsigned short gflags ;
   unsigned short padded ;
   unsigned char operstate ;
   unsigned char link_mode ;
   unsigned char if_port ;
   unsigned char dma ;
   unsigned int mtu ;
   unsigned short type ;
   unsigned short hard_header_len ;
   unsigned short needed_headroom ;
   unsigned short needed_tailroom ;
   unsigned char perm_addr[32U] ;
   unsigned char addr_assign_type ;
   unsigned char addr_len ;
   unsigned short neigh_priv_len ;
   unsigned short dev_id ;
   unsigned short dev_port ;
   spinlock_t addr_list_lock ;
   unsigned char name_assign_type ;
   bool uc_promisc ;
   struct netdev_hw_addr_list uc ;
   struct netdev_hw_addr_list mc ;
   struct netdev_hw_addr_list dev_addrs ;
   struct kset *queues_kset ;
   unsigned int promiscuity ;
   unsigned int allmulti ;
   struct vlan_info *vlan_info ;
   struct dsa_switch_tree *dsa_ptr ;
   struct tipc_bearer *tipc_ptr ;
   void *atalk_ptr ;
   struct in_device *ip_ptr ;
   struct dn_dev *dn_ptr ;
   struct inet6_dev *ip6_ptr ;
   void *ax25_ptr ;
   struct wireless_dev *ieee80211_ptr ;
   struct wpan_dev *ieee802154_ptr ;
   struct mpls_dev *mpls_ptr ;
   unsigned long last_rx ;
   unsigned char *dev_addr ;
   struct netdev_rx_queue *_rx ;
   unsigned int num_rx_queues ;
   unsigned int real_num_rx_queues ;
   unsigned long gro_flush_timeout ;
   rx_handler_func_t *rx_handler ;
   void *rx_handler_data ;
   struct tcf_proto *ingress_cl_list ;
   struct netdev_queue *ingress_queue ;
   struct list_head nf_hooks_ingress ;
   unsigned char broadcast[32U] ;
   struct cpu_rmap *rx_cpu_rmap ;
   struct hlist_node index_hlist ;
   struct netdev_queue *_tx ;
   unsigned int num_tx_queues ;
   unsigned int real_num_tx_queues ;
   struct Qdisc *qdisc ;
   unsigned long tx_queue_len ;
   spinlock_t tx_global_lock ;
   int watchdog_timeo ;
   struct xps_dev_maps *xps_maps ;
   unsigned long trans_start ;
   struct timer_list watchdog_timer ;
   int *pcpu_refcnt ;
   struct list_head todo_list ;
   struct list_head link_watch_list ;
   unsigned char reg_state ;
   bool dismantle ;
   unsigned short rtnl_link_state ;
   void (*destructor)(struct net_device * ) ;
   struct netpoll_info *npinfo ;
   possible_net_t nd_net ;
   union __anonunion____missing_field_name_318 __annonCompField95 ;
   struct garp_port *garp_port ;
   struct mrp_port *mrp_port ;
   struct device dev ;
   struct attribute_group const *sysfs_groups[4U] ;
   struct attribute_group const *sysfs_rx_queue_group ;
   struct rtnl_link_ops const *rtnl_link_ops ;
   unsigned int gso_max_size ;
   u16 gso_max_segs ;
   u16 gso_min_segs ;
   struct dcbnl_rtnl_ops const *dcbnl_ops ;
   u8 num_tc ;
   struct netdev_tc_txq tc_to_txq[16U] ;
   u8 prio_tc_map[16U] ;
   unsigned int fcoe_ddp_xid ;
   struct netprio_map *priomap ;
   struct phy_device *phydev ;
   struct lock_class_key *qdisc_tx_busylock ;
};
struct packet_type {
   __be16 type ;
   struct net_device *dev ;
   int (*func)(struct sk_buff * , struct net_device * , struct packet_type * , struct net_device * ) ;
   bool (*id_match)(struct packet_type * , struct sock * ) ;
   void *af_packet_priv ;
   struct list_head list ;
};
struct pcpu_sw_netstats {
   u64 rx_packets ;
   u64 rx_bytes ;
   u64 tx_packets ;
   u64 tx_bytes ;
   struct u64_stats_sync syncp ;
};
struct ieee80211_hdr {
   __le16 frame_control ;
   __le16 duration_id ;
   u8 addr1[6U] ;
   u8 addr2[6U] ;
   u8 addr3[6U] ;
   __le16 seq_ctrl ;
   u8 addr4[6U] ;
};
struct ieee80211_p2p_noa_desc {
   u8 count ;
   __le32 duration ;
   __le32 interval ;
   __le32 start_time ;
};
struct ieee80211_p2p_noa_attr {
   u8 index ;
   u8 oppps_ctwindow ;
   struct ieee80211_p2p_noa_desc desc[4U] ;
};
struct ieee80211_mcs_info {
   u8 rx_mask[10U] ;
   __le16 rx_highest ;
   u8 tx_params ;
   u8 reserved[3U] ;
};
struct ieee80211_ht_cap {
   __le16 cap_info ;
   u8 ampdu_params_info ;
   struct ieee80211_mcs_info mcs ;
   __le16 extended_ht_cap_info ;
   __le32 tx_BF_cap_info ;
   u8 antenna_selection_info ;
};
struct ieee80211_vht_mcs_info {
   __le16 rx_mcs_map ;
   __le16 rx_highest ;
   __le16 tx_mcs_map ;
   __le16 tx_highest ;
};
struct ieee80211_vht_cap {
   __le32 vht_cap_info ;
   struct ieee80211_vht_mcs_info supp_mcs ;
};
enum nl80211_iftype {
    NL80211_IFTYPE_UNSPECIFIED = 0,
    NL80211_IFTYPE_ADHOC = 1,
    NL80211_IFTYPE_STATION = 2,
    NL80211_IFTYPE_AP = 3,
    NL80211_IFTYPE_AP_VLAN = 4,
    NL80211_IFTYPE_WDS = 5,
    NL80211_IFTYPE_MONITOR = 6,
    NL80211_IFTYPE_MESH_POINT = 7,
    NL80211_IFTYPE_P2P_CLIENT = 8,
    NL80211_IFTYPE_P2P_GO = 9,
    NL80211_IFTYPE_P2P_DEVICE = 10,
    NL80211_IFTYPE_OCB = 11,
    NUM_NL80211_IFTYPES = 12,
    NL80211_IFTYPE_MAX = 11
} ;
enum nl80211_reg_initiator {
    NL80211_REGDOM_SET_BY_CORE = 0,
    NL80211_REGDOM_SET_BY_USER = 1,
    NL80211_REGDOM_SET_BY_DRIVER = 2,
    NL80211_REGDOM_SET_BY_COUNTRY_IE = 3
} ;
enum nl80211_dfs_regions {
    NL80211_DFS_UNSET = 0,
    NL80211_DFS_FCC = 1,
    NL80211_DFS_ETSI = 2,
    NL80211_DFS_JP = 3
} ;
enum nl80211_user_reg_hint_type {
    NL80211_USER_REG_HINT_USER = 0,
    NL80211_USER_REG_HINT_CELL_BASE = 1,
    NL80211_USER_REG_HINT_INDOOR = 2
} ;
enum nl80211_chan_width {
    NL80211_CHAN_WIDTH_20_NOHT = 0,
    NL80211_CHAN_WIDTH_20 = 1,
    NL80211_CHAN_WIDTH_40 = 2,
    NL80211_CHAN_WIDTH_80 = 3,
    NL80211_CHAN_WIDTH_80P80 = 4,
    NL80211_CHAN_WIDTH_160 = 5,
    NL80211_CHAN_WIDTH_5 = 6,
    NL80211_CHAN_WIDTH_10 = 7
} ;
enum nl80211_bss_scan_width {
    NL80211_BSS_CHAN_WIDTH_20 = 0,
    NL80211_BSS_CHAN_WIDTH_10 = 1,
    NL80211_BSS_CHAN_WIDTH_5 = 2
} ;
enum nl80211_auth_type {
    NL80211_AUTHTYPE_OPEN_SYSTEM = 0,
    NL80211_AUTHTYPE_SHARED_KEY = 1,
    NL80211_AUTHTYPE_FT = 2,
    NL80211_AUTHTYPE_NETWORK_EAP = 3,
    NL80211_AUTHTYPE_SAE = 4,
    __NL80211_AUTHTYPE_NUM = 5,
    NL80211_AUTHTYPE_MAX = 4,
    NL80211_AUTHTYPE_AUTOMATIC = 5
} ;
enum nl80211_mfp {
    NL80211_MFP_NO = 0,
    NL80211_MFP_REQUIRED = 1
} ;
enum nl80211_tx_power_setting {
    NL80211_TX_POWER_AUTOMATIC = 0,
    NL80211_TX_POWER_LIMITED = 1,
    NL80211_TX_POWER_FIXED = 2
} ;
struct nl80211_wowlan_tcp_data_seq {
   __u32 start ;
   __u32 offset ;
   __u32 len ;
};
struct nl80211_wowlan_tcp_data_token {
   __u32 offset ;
   __u32 len ;
   __u8 token_stream[] ;
};
struct nl80211_wowlan_tcp_data_token_feature {
   __u32 min_len ;
   __u32 max_len ;
   __u32 bufsize ;
};
enum nl80211_dfs_state {
    NL80211_DFS_USABLE = 0,
    NL80211_DFS_UNAVAILABLE = 1,
    NL80211_DFS_AVAILABLE = 2
} ;
struct nl80211_vendor_cmd_info {
   __u32 vendor_id ;
   __u32 subcmd ;
};
enum environment_cap {
    ENVIRON_ANY = 0,
    ENVIRON_INDOOR = 1,
    ENVIRON_OUTDOOR = 2
} ;
struct regulatory_request {
   struct callback_head callback_head ;
   int wiphy_idx ;
   enum nl80211_reg_initiator initiator ;
   enum nl80211_user_reg_hint_type user_reg_hint_type ;
   char alpha2[2U] ;
   enum nl80211_dfs_regions dfs_region ;
   bool intersect ;
   bool processed ;
   enum environment_cap country_ie_env ;
   struct list_head list ;
};
struct ieee80211_freq_range {
   u32 start_freq_khz ;
   u32 end_freq_khz ;
   u32 max_bandwidth_khz ;
};
struct ieee80211_power_rule {
   u32 max_antenna_gain ;
   u32 max_eirp ;
};
struct ieee80211_reg_rule {
   struct ieee80211_freq_range freq_range ;
   struct ieee80211_power_rule power_rule ;
   u32 flags ;
   u32 dfs_cac_ms ;
};
struct ieee80211_regdomain {
   struct callback_head callback_head ;
   u32 n_reg_rules ;
   char alpha2[3U] ;
   enum nl80211_dfs_regions dfs_region ;
   struct ieee80211_reg_rule reg_rules[] ;
};
struct wiphy;
enum ieee80211_band {
    IEEE80211_BAND_2GHZ = 0,
    IEEE80211_BAND_5GHZ = 1,
    IEEE80211_BAND_60GHZ = 2,
    IEEE80211_NUM_BANDS = 3
} ;
struct ieee80211_channel {
   enum ieee80211_band band ;
   u16 center_freq ;
   u16 hw_value ;
   u32 flags ;
   int max_antenna_gain ;
   int max_power ;
   int max_reg_power ;
   bool beacon_found ;
   u32 orig_flags ;
   int orig_mag ;
   int orig_mpwr ;
   enum nl80211_dfs_state dfs_state ;
   unsigned long dfs_state_entered ;
   unsigned int dfs_cac_ms ;
};
struct ieee80211_rate {
   u32 flags ;
   u16 bitrate ;
   u16 hw_value ;
   u16 hw_value_short ;
};
struct ieee80211_sta_ht_cap {
   u16 cap ;
   bool ht_supported ;
   u8 ampdu_factor ;
   u8 ampdu_density ;
   struct ieee80211_mcs_info mcs ;
};
struct ieee80211_sta_vht_cap {
   bool vht_supported ;
   u32 cap ;
   struct ieee80211_vht_mcs_info vht_mcs ;
};
struct ieee80211_supported_band {
   struct ieee80211_channel *channels ;
   struct ieee80211_rate *bitrates ;
   enum ieee80211_band band ;
   int n_channels ;
   int n_bitrates ;
   struct ieee80211_sta_ht_cap ht_cap ;
   struct ieee80211_sta_vht_cap vht_cap ;
};
struct cfg80211_chan_def {
   struct ieee80211_channel *chan ;
   enum nl80211_chan_width width ;
   u32 center_freq1 ;
   u32 center_freq2 ;
};
struct cfg80211_crypto_settings {
   u32 wpa_versions ;
   u32 cipher_group ;
   int n_ciphers_pairwise ;
   u32 ciphers_pairwise[5U] ;
   int n_akm_suites ;
   u32 akm_suites[2U] ;
   bool control_port ;
   __be16 control_port_ethertype ;
   bool control_port_no_encrypt ;
};
struct mac_address {
   u8 addr[6U] ;
};
struct cfg80211_ssid {
   u8 ssid[32U] ;
   u8 ssid_len ;
};
struct cfg80211_scan_request {
   struct cfg80211_ssid *ssids ;
   int n_ssids ;
   u32 n_channels ;
   enum nl80211_bss_scan_width scan_width ;
   u8 const *ie ;
   size_t ie_len ;
   u32 flags ;
   u32 rates[3U] ;
   struct wireless_dev *wdev ;
   u8 mac_addr[6U] ;
   u8 mac_addr_mask[6U] ;
   struct wiphy *wiphy ;
   unsigned long scan_start ;
   bool aborted ;
   bool notified ;
   bool no_cck ;
   struct ieee80211_channel *channels[0U] ;
};
struct cfg80211_match_set {
   struct cfg80211_ssid ssid ;
   s32 rssi_thold ;
};
struct cfg80211_sched_scan_request {
   struct cfg80211_ssid *ssids ;
   int n_ssids ;
   u32 n_channels ;
   enum nl80211_bss_scan_width scan_width ;
   u32 interval ;
   u8 const *ie ;
   size_t ie_len ;
   u32 flags ;
   struct cfg80211_match_set *match_sets ;
   int n_match_sets ;
   s32 min_rssi_thold ;
   u32 delay ;
   u8 mac_addr[6U] ;
   u8 mac_addr_mask[6U] ;
   struct wiphy *wiphy ;
   struct net_device *dev ;
   unsigned long scan_start ;
   struct callback_head callback_head ;
   u32 owner_nlportid ;
   struct ieee80211_channel *channels[0U] ;
};
enum cfg80211_signal_type {
    CFG80211_SIGNAL_TYPE_NONE = 0,
    CFG80211_SIGNAL_TYPE_MBM = 1,
    CFG80211_SIGNAL_TYPE_UNSPEC = 2
} ;
struct cfg80211_ibss_params {
   u8 const *ssid ;
   u8 const *bssid ;
   struct cfg80211_chan_def chandef ;
   u8 const *ie ;
   u8 ssid_len ;
   u8 ie_len ;
   u16 beacon_interval ;
   u32 basic_rates ;
   bool channel_fixed ;
   bool privacy ;
   bool control_port ;
   bool userspace_handles_dfs ;
   int mcast_rate[3U] ;
   struct ieee80211_ht_cap ht_capa ;
   struct ieee80211_ht_cap ht_capa_mask ;
};
struct cfg80211_connect_params {
   struct ieee80211_channel *channel ;
   struct ieee80211_channel *channel_hint ;
   u8 const *bssid ;
   u8 const *bssid_hint ;
   u8 const *ssid ;
   size_t ssid_len ;
   enum nl80211_auth_type auth_type ;
   u8 const *ie ;
   size_t ie_len ;
   bool privacy ;
   enum nl80211_mfp mfp ;
   struct cfg80211_crypto_settings crypto ;
   u8 const *key ;
   u8 key_len ;
   u8 key_idx ;
   u32 flags ;
   int bg_scan_period ;
   struct ieee80211_ht_cap ht_capa ;
   struct ieee80211_ht_cap ht_capa_mask ;
   struct ieee80211_vht_cap vht_capa ;
   struct ieee80211_vht_cap vht_capa_mask ;
};
struct cfg80211_pkt_pattern {
   u8 const *mask ;
   u8 const *pattern ;
   int pattern_len ;
   int pkt_offset ;
};
struct cfg80211_wowlan_tcp {
   struct socket *sock ;
   __be32 src ;
   __be32 dst ;
   u16 src_port ;
   u16 dst_port ;
   u8 dst_mac[6U] ;
   int payload_len ;
   u8 const *payload ;
   struct nl80211_wowlan_tcp_data_seq payload_seq ;
   u32 data_interval ;
   u32 wake_len ;
   u8 const *wake_data ;
   u8 const *wake_mask ;
   u32 tokens_size ;
   struct nl80211_wowlan_tcp_data_token payload_tok ;
};
struct cfg80211_wowlan {
   bool any ;
   bool disconnect ;
   bool magic_pkt ;
   bool gtk_rekey_failure ;
   bool eap_identity_req ;
   bool four_way_handshake ;
   bool rfkill_release ;
   struct cfg80211_pkt_pattern *patterns ;
   struct cfg80211_wowlan_tcp *tcp ;
   int n_patterns ;
   struct cfg80211_sched_scan_request *nd_config ;
};
struct ieee80211_iface_limit {
   u16 max ;
   u16 types ;
};
struct ieee80211_iface_combination {
   struct ieee80211_iface_limit const *limits ;
   u32 num_different_channels ;
   u16 max_interfaces ;
   u8 n_limits ;
   bool beacon_int_infra_match ;
   u8 radar_detect_widths ;
   u8 radar_detect_regions ;
};
struct ieee80211_txrx_stypes {
   u16 tx ;
   u16 rx ;
};
struct wiphy_wowlan_tcp_support {
   struct nl80211_wowlan_tcp_data_token_feature const *tok ;
   u32 data_payload_max ;
   u32 data_interval_max ;
   u32 wake_payload_max ;
   bool seq ;
};
struct wiphy_wowlan_support {
   u32 flags ;
   int n_patterns ;
   int pattern_max_len ;
   int pattern_min_len ;
   int max_pkt_offset ;
   int max_nd_match_sets ;
   struct wiphy_wowlan_tcp_support const *tcp ;
};
struct wiphy_coalesce_support {
   int n_rules ;
   int max_delay ;
   int n_patterns ;
   int pattern_max_len ;
   int pattern_min_len ;
   int max_pkt_offset ;
};
struct wiphy_vendor_command {
   struct nl80211_vendor_cmd_info info ;
   u32 flags ;
   int (*doit)(struct wiphy * , struct wireless_dev * , void const * , int ) ;
};
struct wiphy {
   u8 perm_addr[6U] ;
   u8 addr_mask[6U] ;
   struct mac_address *addresses ;
   struct ieee80211_txrx_stypes const *mgmt_stypes ;
   struct ieee80211_iface_combination const *iface_combinations ;
   int n_iface_combinations ;
   u16 software_iftypes ;
   u16 n_addresses ;
   u16 interface_modes ;
   u16 max_acl_mac_addrs ;
   u32 flags ;
   u32 regulatory_flags ;
   u32 features ;
   u8 ext_features[1U] ;
   u32 ap_sme_capa ;
   enum cfg80211_signal_type signal_type ;
   int bss_priv_size ;
   u8 max_scan_ssids ;
   u8 max_sched_scan_ssids ;
   u8 max_match_sets ;
   u16 max_scan_ie_len ;
   u16 max_sched_scan_ie_len ;
   int n_cipher_suites ;
   u32 const *cipher_suites ;
   u8 retry_short ;
   u8 retry_long ;
   u32 frag_threshold ;
   u32 rts_threshold ;
   u8 coverage_class ;
   char fw_version[32U] ;
   u32 hw_version ;
   struct wiphy_wowlan_support const *wowlan ;
   struct cfg80211_wowlan *wowlan_config ;
   u16 max_remain_on_channel_duration ;
   u8 max_num_pmkids ;
   u32 available_antennas_tx ;
   u32 available_antennas_rx ;
   u32 probe_resp_offload ;
   u8 const *extended_capabilities ;
   u8 const *extended_capabilities_mask ;
   u8 extended_capabilities_len ;
   void const *privid ;
   struct ieee80211_supported_band *bands[3U] ;
   void (*reg_notifier)(struct wiphy * , struct regulatory_request * ) ;
   struct ieee80211_regdomain const *regd ;
   struct device dev ;
   bool registered ;
   struct dentry *debugfsdir ;
   struct ieee80211_ht_cap const *ht_capa_mod_mask ;
   struct ieee80211_vht_cap const *vht_capa_mod_mask ;
   possible_net_t _net ;
   struct iw_handler_def const *wext ;
   struct wiphy_coalesce_support const *coalesce ;
   struct wiphy_vendor_command const *vendor_commands ;
   struct nl80211_vendor_cmd_info const *vendor_events ;
   int n_vendor_commands ;
   int n_vendor_events ;
   u16 max_ap_assoc_sta ;
   u8 max_num_csa_counters ;
   u8 max_adj_channel_rssi_comp ;
   char priv[0U] ;
};
struct cfg80211_conn;
struct cfg80211_internal_bss;
struct cfg80211_cached_keys;
struct __anonstruct_wext_363 {
   struct cfg80211_ibss_params ibss ;
   struct cfg80211_connect_params connect ;
   struct cfg80211_cached_keys *keys ;
   u8 const *ie ;
   size_t ie_len ;
   u8 bssid[6U] ;
   u8 prev_bssid[6U] ;
   u8 ssid[32U] ;
   s8 default_key ;
   s8 default_mgmt_key ;
   bool prev_bssid_valid ;
};
struct wireless_dev {
   struct wiphy *wiphy ;
   enum nl80211_iftype iftype ;
   struct list_head list ;
   struct net_device *netdev ;
   u32 identifier ;
   struct list_head mgmt_registrations ;
   spinlock_t mgmt_registrations_lock ;
   struct mutex mtx ;
   bool use_4addr ;
   bool p2p_started ;
   u8 address[6U] ;
   u8 ssid[32U] ;
   u8 ssid_len ;
   u8 mesh_id_len ;
   u8 mesh_id_up_len ;
   struct cfg80211_conn *conn ;
   struct cfg80211_cached_keys *connect_keys ;
   struct list_head event_list ;
   spinlock_t event_lock ;
   struct cfg80211_internal_bss *current_bss ;
   struct cfg80211_chan_def preset_chandef ;
   struct cfg80211_chan_def chandef ;
   bool ibss_fixed ;
   bool ibss_dfs_possible ;
   bool ps ;
   int ps_timeout ;
   int beacon_interval ;
   u32 ap_unexpected_nlportid ;
   bool cac_started ;
   unsigned long cac_start_time ;
   unsigned int cac_time_ms ;
   u32 owner_nlportid ;
   struct __anonstruct_wext_363 wext ;
};
struct ieee80211_chanctx_conf {
   struct cfg80211_chan_def def ;
   struct cfg80211_chan_def min_def ;
   u8 rx_chains_static ;
   u8 rx_chains_dynamic ;
   bool radar_enabled ;
   u8 drv_priv[0U] ;
};
struct ieee80211_bss_conf {
   u8 const *bssid ;
   bool assoc ;
   bool ibss_joined ;
   bool ibss_creator ;
   u16 aid ;
   bool use_cts_prot ;
   bool use_short_preamble ;
   bool use_short_slot ;
   bool enable_beacon ;
   u8 dtim_period ;
   u16 beacon_int ;
   u16 assoc_capability ;
   u64 sync_tsf ;
   u32 sync_device_ts ;
   u8 sync_dtim_count ;
   u32 basic_rates ;
   struct ieee80211_rate *beacon_rate ;
   int mcast_rate[3U] ;
   u16 ht_operation_mode ;
   s32 cqm_rssi_thold ;
   u32 cqm_rssi_hyst ;
   struct cfg80211_chan_def chandef ;
   __be32 arp_addr_list[4U] ;
   int arp_addr_cnt ;
   bool qos ;
   bool idle ;
   bool ps ;
   u8 ssid[32U] ;
   size_t ssid_len ;
   bool hidden_ssid ;
   int txpower ;
   enum nl80211_tx_power_setting txpower_type ;
   struct ieee80211_p2p_noa_attr p2p_noa_attr ;
};
enum ieee80211_smps_mode {
    IEEE80211_SMPS_AUTOMATIC = 0,
    IEEE80211_SMPS_OFF = 1,
    IEEE80211_SMPS_STATIC = 2,
    IEEE80211_SMPS_DYNAMIC = 3,
    IEEE80211_SMPS_NUM_MODES = 4
} ;
struct ieee80211_conf {
   u32 flags ;
   int power_level ;
   int dynamic_ps_timeout ;
   int max_sleep_period ;
   u16 listen_interval ;
   u8 ps_dtim_period ;
   u8 long_frame_max_tx_count ;
   u8 short_frame_max_tx_count ;
   struct cfg80211_chan_def chandef ;
   bool radar_enabled ;
   enum ieee80211_smps_mode smps_mode ;
};
struct ieee80211_channel_switch {
   u64 timestamp ;
   u32 device_timestamp ;
   bool block_tx ;
   struct cfg80211_chan_def chandef ;
   u8 count ;
};
struct ieee80211_txq;
struct ieee80211_vif {
   enum nl80211_iftype type ;
   struct ieee80211_bss_conf bss_conf ;
   u8 addr[6U] ;
   bool p2p ;
   bool csa_active ;
   u8 cab_queue ;
   u8 hw_queue[4U] ;
   struct ieee80211_txq *txq ;
   struct ieee80211_chanctx_conf *chanctx_conf ;
   u32 driver_flags ;
   struct dentry *debugfs_dir ;
   u8 drv_priv[0U] ;
};
struct ieee80211_cipher_scheme {
   u32 cipher ;
   u16 iftype ;
   u8 hdr_len ;
   u8 pn_len ;
   u8 pn_off ;
   u8 key_idx_off ;
   u8 key_idx_mask ;
   u8 key_idx_shift ;
   u8 mic_len ;
};
enum ieee80211_sta_rx_bandwidth {
    IEEE80211_STA_RX_BW_20 = 0,
    IEEE80211_STA_RX_BW_40 = 1,
    IEEE80211_STA_RX_BW_80 = 2,
    IEEE80211_STA_RX_BW_160 = 3
} ;
struct __anonstruct_rate_379 {
   s8 idx ;
   u8 count ;
   u8 count_cts ;
   u8 count_rts ;
   u16 flags ;
};
struct ieee80211_sta_rates {
   struct callback_head callback_head ;
   struct __anonstruct_rate_379 rate[4U] ;
};
struct ieee80211_sta {
   u32 supp_rates[3U] ;
   u8 addr[6U] ;
   u16 aid ;
   struct ieee80211_sta_ht_cap ht_cap ;
   struct ieee80211_sta_vht_cap vht_cap ;
   bool wme ;
   u8 uapsd_queues ;
   u8 max_sp ;
   u8 rx_nss ;
   enum ieee80211_sta_rx_bandwidth bandwidth ;
   enum ieee80211_smps_mode smps_mode ;
   struct ieee80211_sta_rates *rates ;
   bool tdls ;
   bool tdls_initiator ;
   bool mfp ;
   struct ieee80211_txq *txq[16U] ;
   u8 drv_priv[0U] ;
};
struct ieee80211_txq {
   struct ieee80211_vif *vif ;
   struct ieee80211_sta *sta ;
   u8 tid ;
   u8 ac ;
   u8 drv_priv[0U] ;
};
struct ieee80211_hw {
   struct ieee80211_conf conf ;
   struct wiphy *wiphy ;
   char const *rate_control_algorithm ;
   void *priv ;
   unsigned long flags[1U] ;
   unsigned int extra_tx_headroom ;
   unsigned int extra_beacon_tailroom ;
   int vif_data_size ;
   int sta_data_size ;
   int chanctx_data_size ;
   int txq_data_size ;
   u16 queues ;
   u16 max_listen_interval ;
   s8 max_signal ;
   u8 max_rates ;
   u8 max_report_rates ;
   u8 max_rate_tries ;
   u8 max_rx_aggregation_subframes ;
   u8 max_tx_aggregation_subframes ;
   u8 offchannel_tx_hw_queue ;
   u8 radiotap_mcs_details ;
   u16 radiotap_vht_details ;
   netdev_features_t netdev_features ;
   u8 uapsd_queues ;
   u8 uapsd_max_sp_len ;
   u8 n_cipher_schemes ;
   struct ieee80211_cipher_scheme const *cipher_schemes ;
   int txq_ac_max_pending ;
};
enum led_brightness {
    LED_OFF = 0,
    LED_HALF = 127,
    LED_FULL = 255
} ;
struct led_trigger;
struct led_classdev {
   char const *name ;
   enum led_brightness brightness ;
   enum led_brightness max_brightness ;
   int flags ;
   void (*brightness_set)(struct led_classdev * , enum led_brightness ) ;
   int (*brightness_set_sync)(struct led_classdev * , enum led_brightness ) ;
   enum led_brightness (*brightness_get)(struct led_classdev * ) ;
   int (*blink_set)(struct led_classdev * , unsigned long * , unsigned long * ) ;
   struct device *dev ;
   struct attribute_group const **groups ;
   struct list_head node ;
   char const *default_trigger ;
   unsigned long blink_delay_on ;
   unsigned long blink_delay_off ;
   struct timer_list blink_timer ;
   int blink_brightness ;
   void (*flash_resume)(struct led_classdev * ) ;
   struct work_struct set_brightness_work ;
   int delayed_set_value ;
   struct rw_semaphore trigger_lock ;
   struct led_trigger *trigger ;
   struct list_head trig_list ;
   void *trigger_data ;
   bool activated ;
   struct mutex led_access ;
};
struct led_trigger {
   char const *name ;
   void (*activate)(struct led_classdev * ) ;
   void (*deactivate)(struct led_classdev * ) ;
   rwlock_t leddev_list_lock ;
   struct list_head led_cdevs ;
   struct list_head next_trig ;
};
struct il_cmd_header {
   u8 cmd ;
   u8 flags ;
   __le16 sequence ;
   u8 data[0U] ;
};
struct il3945_tx_power {
   u8 tx_gain ;
   u8 dsp_atten ;
};
struct __anonstruct_s_385 {
   u8 radio_tx_gain[2U] ;
   u8 dsp_predis_atten[2U] ;
};
union il4965_tx_power_dual_stream {
   struct __anonstruct_s_385 s ;
   u32 dw ;
};
struct tx_power_dual_stream {
   __le32 dw ;
};
struct il4965_tx_power_db {
   struct tx_power_dual_stream power_tbl[33U] ;
};
struct il_init_alive_resp {
   u8 ucode_minor ;
   u8 ucode_major ;
   __le16 reserved1 ;
   u8 sw_rev[8U] ;
   u8 ver_type ;
   u8 ver_subtype ;
   __le16 reserved2 ;
   __le32 log_event_table_ptr ;
   __le32 error_event_table_ptr ;
   __le32 timestamp ;
   __le32 is_valid ;
   __le32 voltage ;
   __le32 therm_r1[2U] ;
   __le32 therm_r2[2U] ;
   __le32 therm_r3[2U] ;
   __le32 therm_r4[2U] ;
   __le32 tx_atten[5U][2U] ;
};
struct il_alive_resp {
   u8 ucode_minor ;
   u8 ucode_major ;
   __le16 reserved1 ;
   u8 sw_rev[8U] ;
   u8 ver_type ;
   u8 ver_subtype ;
   __le16 reserved2 ;
   __le32 log_event_table_ptr ;
   __le32 error_event_table_ptr ;
   __le32 timestamp ;
   __le32 is_valid ;
};
struct il_error_resp {
   __le32 error_type ;
   u8 cmd_id ;
   u8 reserved1 ;
   __le16 bad_cmd_seq_num ;
   __le32 error_info ;
   __le64 timestamp ;
};
struct il_rxon_cmd {
   u8 node_addr[6U] ;
   __le16 reserved1 ;
   u8 bssid_addr[6U] ;
   __le16 reserved2 ;
   u8 wlap_bssid_addr[6U] ;
   __le16 reserved3 ;
   u8 dev_type ;
   u8 air_propagation ;
   __le16 rx_chain ;
   u8 ofdm_basic_rates ;
   u8 cck_basic_rates ;
   __le16 assoc_id ;
   __le32 flags ;
   __le32 filter_flags ;
   __le16 channel ;
   u8 ofdm_ht_single_stream_basic_rates ;
   u8 ofdm_ht_dual_stream_basic_rates ;
   u8 reserved4 ;
   u8 reserved5 ;
};
struct il4965_rxon_assoc_cmd {
   __le32 flags ;
   __le32 filter_flags ;
   u8 ofdm_basic_rates ;
   u8 cck_basic_rates ;
   u8 ofdm_ht_single_stream_basic_rates ;
   u8 ofdm_ht_dual_stream_basic_rates ;
   __le16 rx_chain_select_flags ;
   __le16 reserved ;
};
struct il_rxon_time_cmd {
   __le64 timestamp ;
   __le16 beacon_interval ;
   __le16 atim_win ;
   __le32 beacon_init_val ;
   __le16 listen_interval ;
   u8 dtim_period ;
   u8 delta_cp_bss_tbtts ;
};
struct il4965_channel_switch_cmd {
   u8 band ;
   u8 expect_beacon ;
   __le16 channel ;
   __le32 rxon_flags ;
   __le32 rxon_filter_flags ;
   __le32 switch_time ;
   struct il4965_tx_power_db tx_power ;
};
struct il_csa_notification {
   __le16 band ;
   __le16 channel ;
   __le32 status ;
};
struct il_ac_qos {
   __le16 cw_min ;
   __le16 cw_max ;
   u8 aifsn ;
   u8 reserved1 ;
   __le16 edca_txop ;
};
struct il_qosparam_cmd {
   __le32 qos_flags ;
   struct il_ac_qos ac[4U] ;
};
struct il4965_keyinfo {
   __le16 key_flags ;
   u8 tkip_rx_tsc_byte2 ;
   u8 reserved1 ;
   __le16 tkip_rx_ttak[5U] ;
   u8 key_offset ;
   u8 reserved2 ;
   u8 key[16U] ;
};
struct sta_id_modify {
   u8 addr[6U] ;
   __le16 reserved1 ;
   u8 sta_id ;
   u8 modify_mask ;
   __le16 reserved2 ;
};
struct il4965_addsta_cmd {
   u8 mode ;
   u8 reserved[3U] ;
   struct sta_id_modify sta ;
   struct il4965_keyinfo key ;
   __le32 station_flags ;
   __le32 station_flags_msk ;
   __le16 tid_disable_tx ;
   __le16 reserved1 ;
   u8 add_immediate_ba_tid ;
   u8 remove_immediate_ba_tid ;
   __le16 add_immediate_ba_ssn ;
   __le16 sleep_tx_count ;
   __le16 reserved2 ;
};
struct il_addsta_cmd {
   u8 mode ;
   u8 reserved[3U] ;
   struct sta_id_modify sta ;
   struct il4965_keyinfo key ;
   __le32 station_flags ;
   __le32 station_flags_msk ;
   __le16 tid_disable_tx ;
   __le16 rate_n_flags ;
   u8 add_immediate_ba_tid ;
   u8 remove_immediate_ba_tid ;
   __le16 add_immediate_ba_ssn ;
   __le16 sleep_tx_count ;
   __le16 reserved2 ;
};
struct il_add_sta_resp {
   u8 status ;
};
struct il_rem_sta_resp {
   u8 status ;
};
struct il_wep_key {
   u8 key_idx ;
   u8 key_offset ;
   u8 reserved1[2U] ;
   u8 key_size ;
   u8 reserved2[3U] ;
   u8 key[16U] ;
};
struct il3945_rx_frame_stats {
   u8 phy_count ;
   u8 id ;
   u8 rssi ;
   u8 agc ;
   __le16 sig_avg ;
   __le16 noise_diff ;
   u8 payload[0U] ;
};
struct il3945_rx_frame_hdr {
   __le16 channel ;
   __le16 phy_flags ;
   u8 reserved1 ;
   u8 rate ;
   __le16 len ;
   u8 payload[0U] ;
};
struct il3945_rx_frame_end {
   __le32 status ;
   __le64 timestamp ;
   __le32 beacon_timestamp ;
};
struct il3945_rx_frame {
   struct il3945_rx_frame_stats stats ;
   struct il3945_rx_frame_hdr hdr ;
   struct il3945_rx_frame_end end ;
};
struct il_rx_phy_res {
   u8 non_cfg_phy_cnt ;
   u8 cfg_phy_cnt ;
   u8 stat_id ;
   u8 reserved1 ;
   __le64 timestamp ;
   __le32 beacon_time_stamp ;
   __le16 phy_flags ;
   __le16 channel ;
   u8 non_cfg_phy_buf[32U] ;
   __le32 rate_n_flags ;
   __le16 byte_count ;
   __le16 frame_time ;
};
struct il3945_tx_resp {
   u8 failure_rts ;
   u8 failure_frame ;
   u8 bt_kill_count ;
   u8 rate ;
   __le32 wireless_media_time ;
   __le32 status ;
};
struct il_dram_scratch {
   u8 try_cnt ;
   u8 bt_kill_cnt ;
   __le16 reserved ;
};
union __anonunion_stop_time_389 {
   __le32 life_time ;
   __le32 attempt ;
};
union __anonunion_timeout_390 {
   __le16 pm_frame_timeout ;
   __le16 attempt_duration ;
};
struct il_tx_cmd {
   __le16 len ;
   __le16 next_frame_len ;
   __le32 tx_flags ;
   struct il_dram_scratch scratch ;
   __le32 rate_n_flags ;
   u8 sta_id ;
   u8 sec_ctl ;
   u8 initial_rate_idx ;
   u8 reserved ;
   u8 key[16U] ;
   __le16 next_frame_flags ;
   __le16 reserved2 ;
   union __anonunion_stop_time_389 stop_time ;
   __le32 dram_lsb_ptr ;
   u8 dram_msb_ptr ;
   u8 rts_retry_limit ;
   u8 data_retry_limit ;
   u8 tid_tspec ;
   union __anonunion_timeout_390 timeout ;
   __le16 driver_txop ;
   u8 payload[0U] ;
   struct ieee80211_hdr hdr[0U] ;
};
struct il_compressed_ba_resp {
   __le32 sta_addr_lo32 ;
   __le16 sta_addr_hi16 ;
   __le16 reserved ;
   u8 sta_id ;
   u8 tid ;
   __le16 seq_ctl ;
   __le64 bitmap ;
   __le16 scd_flow ;
   __le16 scd_ssn ;
};
struct il4965_txpowertable_cmd {
   u8 band ;
   u8 reserved ;
   __le16 channel ;
   struct il4965_tx_power_db tx_power ;
};
struct il_link_qual_general_params {
   u8 flags ;
   u8 mimo_delimiter ;
   u8 single_stream_ant_msk ;
   u8 dual_stream_ant_msk ;
   u8 start_rate_idx[4U] ;
};
struct il_link_qual_agg_params {
   __le16 agg_time_limit ;
   u8 agg_dis_start_th ;
   u8 agg_frame_cnt_limit ;
   __le32 reserved ;
};
struct __anonstruct_rs_table_392 {
   __le32 rate_n_flags ;
};
struct il_link_quality_cmd {
   u8 sta_id ;
   u8 reserved1 ;
   __le16 control ;
   struct il_link_qual_general_params general_params ;
   struct il_link_qual_agg_params agg_params ;
   struct __anonstruct_rs_table_392 rs_table[16U] ;
   __le32 reserved2 ;
};
struct il_spectrum_resp {
   u8 token ;
   u8 id ;
   __le16 status ;
};
struct il_measurement_histogram {
   __le32 ofdm[8U] ;
   __le32 cck[8U] ;
};
struct il_spectrum_notification {
   u8 id ;
   u8 token ;
   u8 channel_idx ;
   u8 state ;
   __le32 start_time ;
   u8 band ;
   u8 channel ;
   u8 type ;
   u8 reserved1 ;
   __le32 cca_ofdm ;
   __le32 cca_cck ;
   __le32 cca_time ;
   u8 basic_type ;
   u8 reserved2[3U] ;
   struct il_measurement_histogram histogram ;
   __le32 stop_time ;
   __le32 status ;
};
struct il_powertable_cmd {
   __le16 flags ;
   u8 keep_alive_seconds ;
   u8 debug_flags ;
   __le32 rx_data_timeout ;
   __le32 tx_data_timeout ;
   __le32 sleep_interval[5U] ;
   __le32 keep_alive_beacons ;
};
struct il_sleep_notification {
   u8 pm_sleep_mode ;
   u8 pm_wakeup_src ;
   __le16 reserved ;
   __le32 sleep_time ;
   __le32 tsf_low ;
   __le32 bcon_timer ;
};
struct il_card_state_notif {
   __le32 flags ;
};
struct il3945_beacon_notif {
   struct il3945_tx_resp beacon_notify_hdr ;
   __le32 low_tsf ;
   __le32 high_tsf ;
   __le32 ibss_mgr_status ;
};
struct iwl39_stats_rx_phy {
   __le32 ina_cnt ;
   __le32 fina_cnt ;
   __le32 plcp_err ;
   __le32 crc32_err ;
   __le32 overrun_err ;
   __le32 early_overrun_err ;
   __le32 crc32_good ;
   __le32 false_alarm_cnt ;
   __le32 fina_sync_err_cnt ;
   __le32 sfd_timeout ;
   __le32 fina_timeout ;
   __le32 unresponded_rts ;
   __le32 rxe_frame_limit_overrun ;
   __le32 sent_ack_cnt ;
   __le32 sent_cts_cnt ;
};
struct iwl39_stats_rx_non_phy {
   __le32 bogus_cts ;
   __le32 bogus_ack ;
   __le32 non_bssid_frames ;
   __le32 filtered_frames ;
   __le32 non_channel_beacons ;
};
struct iwl39_stats_rx {
   struct iwl39_stats_rx_phy ofdm ;
   struct iwl39_stats_rx_phy cck ;
   struct iwl39_stats_rx_non_phy general ;
};
struct iwl39_stats_tx {
   __le32 preamble_cnt ;
   __le32 rx_detected_cnt ;
   __le32 bt_prio_defer_cnt ;
   __le32 bt_prio_kill_cnt ;
   __le32 few_bytes_cnt ;
   __le32 cts_timeout ;
   __le32 ack_timeout ;
   __le32 expected_ack_cnt ;
   __le32 actual_ack_cnt ;
};
struct stats_dbg {
   __le32 burst_check ;
   __le32 burst_count ;
   __le32 wait_for_silence_timeout_cnt ;
   __le32 reserved[3U] ;
};
struct iwl39_stats_div {
   __le32 tx_on_a ;
   __le32 tx_on_b ;
   __le32 exec_time ;
   __le32 probe_time ;
};
struct iwl39_stats_general {
   __le32 temperature ;
   struct stats_dbg dbg ;
   __le32 sleep_time ;
   __le32 slots_out ;
   __le32 slots_idle ;
   __le32 ttl_timestamp ;
   struct iwl39_stats_div div ;
};
struct stats_rx_phy {
   __le32 ina_cnt ;
   __le32 fina_cnt ;
   __le32 plcp_err ;
   __le32 crc32_err ;
   __le32 overrun_err ;
   __le32 early_overrun_err ;
   __le32 crc32_good ;
   __le32 false_alarm_cnt ;
   __le32 fina_sync_err_cnt ;
   __le32 sfd_timeout ;
   __le32 fina_timeout ;
   __le32 unresponded_rts ;
   __le32 rxe_frame_limit_overrun ;
   __le32 sent_ack_cnt ;
   __le32 sent_cts_cnt ;
   __le32 sent_ba_rsp_cnt ;
   __le32 dsp_self_kill ;
   __le32 mh_format_err ;
   __le32 re_acq_main_rssi_sum ;
   __le32 reserved3 ;
};
struct stats_rx_ht_phy {
   __le32 plcp_err ;
   __le32 overrun_err ;
   __le32 early_overrun_err ;
   __le32 crc32_good ;
   __le32 crc32_err ;
   __le32 mh_format_err ;
   __le32 agg_crc32_good ;
   __le32 agg_mpdu_cnt ;
   __le32 agg_cnt ;
   __le32 unsupport_mcs ;
};
struct stats_rx_non_phy {
   __le32 bogus_cts ;
   __le32 bogus_ack ;
   __le32 non_bssid_frames ;
   __le32 filtered_frames ;
   __le32 non_channel_beacons ;
   __le32 channel_beacons ;
   __le32 num_missed_bcon ;
   __le32 adc_rx_saturation_time ;
   __le32 ina_detection_search_time ;
   __le32 beacon_silence_rssi_a ;
   __le32 beacon_silence_rssi_b ;
   __le32 beacon_silence_rssi_c ;
   __le32 interference_data_flag ;
   __le32 channel_load ;
   __le32 dsp_false_alarms ;
   __le32 beacon_rssi_a ;
   __le32 beacon_rssi_b ;
   __le32 beacon_rssi_c ;
   __le32 beacon_energy_a ;
   __le32 beacon_energy_b ;
   __le32 beacon_energy_c ;
};
struct stats_rx {
   struct stats_rx_phy ofdm ;
   struct stats_rx_phy cck ;
   struct stats_rx_non_phy general ;
   struct stats_rx_ht_phy ofdm_ht ;
};
struct stats_tx_non_phy_agg {
   __le32 ba_timeout ;
   __le32 ba_reschedule_frames ;
   __le32 scd_query_agg_frame_cnt ;
   __le32 scd_query_no_agg ;
   __le32 scd_query_agg ;
   __le32 scd_query_mismatch ;
   __le32 frame_not_ready ;
   __le32 underrun ;
   __le32 bt_prio_kill ;
   __le32 rx_ba_rsp_cnt ;
};
struct stats_tx {
   __le32 preamble_cnt ;
   __le32 rx_detected_cnt ;
   __le32 bt_prio_defer_cnt ;
   __le32 bt_prio_kill_cnt ;
   __le32 few_bytes_cnt ;
   __le32 cts_timeout ;
   __le32 ack_timeout ;
   __le32 expected_ack_cnt ;
   __le32 actual_ack_cnt ;
   __le32 dump_msdu_cnt ;
   __le32 burst_abort_next_frame_mismatch_cnt ;
   __le32 burst_abort_missing_next_frame_cnt ;
   __le32 cts_timeout_collision ;
   __le32 ack_or_ba_timeout_collision ;
   struct stats_tx_non_phy_agg agg ;
   __le32 reserved1 ;
};
struct stats_div {
   __le32 tx_on_a ;
   __le32 tx_on_b ;
   __le32 exec_time ;
   __le32 probe_time ;
   __le32 reserved1 ;
   __le32 reserved2 ;
};
struct stats_general_common {
   __le32 temperature ;
   struct stats_dbg dbg ;
   __le32 sleep_time ;
   __le32 slots_out ;
   __le32 slots_idle ;
   __le32 ttl_timestamp ;
   struct stats_div div ;
   __le32 rx_enable_counter ;
   __le32 num_of_sos_states ;
};
struct stats_general {
   struct stats_general_common common ;
   __le32 reserved2 ;
   __le32 reserved3 ;
};
struct il3945_notif_stats {
   __le32 flag ;
   struct iwl39_stats_rx rx ;
   struct iwl39_stats_tx tx ;
   struct iwl39_stats_general general ;
};
struct il_notif_stats {
   __le32 flag ;
   struct stats_rx rx ;
   struct stats_tx tx ;
   struct stats_general general ;
};
struct il_missed_beacon_notif {
   __le32 consecutive_missed_beacons ;
   __le32 total_missed_becons ;
   __le32 num_expected_beacons ;
   __le32 num_recvd_beacons ;
};
struct il_calib_hdr {
   u8 op_code ;
   u8 first_group ;
   u8 groups_num ;
   u8 data_valid ;
};
struct il_calib_diff_gain_cmd {
   struct il_calib_hdr hdr ;
   s8 diff_gain_a ;
   s8 diff_gain_b ;
   s8 diff_gain_c ;
   u8 reserved1 ;
};
struct il_led_cmd {
   __le32 interval ;
   u8 id ;
   u8 off ;
   u8 on ;
   u8 reserved ;
};
union __anonunion_u_395 {
   struct il3945_rx_frame rx_frame ;
   struct il3945_tx_resp tx_resp ;
   struct il3945_beacon_notif beacon_status ;
   struct il_alive_resp alive_frame ;
   struct il_spectrum_notification spectrum_notif ;
   struct il_csa_notification csa_notif ;
   struct il_error_resp err_resp ;
   struct il_card_state_notif card_state_notif ;
   struct il_add_sta_resp add_sta ;
   struct il_rem_sta_resp rem_sta ;
   struct il_sleep_notification sleep_notif ;
   struct il_spectrum_resp spectrum ;
   struct il_notif_stats stats ;
   struct il_compressed_ba_resp compressed_ba ;
   struct il_missed_beacon_notif missed_beacon ;
   __le32 status ;
   u8 raw[0U] ;
};
struct il_rx_pkt {
   __le32 len_n_flags ;
   struct il_cmd_header hdr ;
   union __anonunion_u_395 u ;
};
struct il_host_cmd;
struct il_rx_buf {
   dma_addr_t page_dma ;
   struct page *page ;
   struct list_head list ;
};
struct il_device_cmd;
struct il_cmd_meta {
   struct il_host_cmd *source ;
   void (*callback)(struct il_priv * , struct il_device_cmd * , struct il_rx_pkt * ) ;
   u32 flags ;
   dma_addr_t mapping ;
   __u32 len ;
};
struct il_queue {
   int n_bd ;
   int write_ptr ;
   int read_ptr ;
   dma_addr_t dma_addr ;
   int n_win ;
   u32 id ;
   int low_mark ;
   int high_mark ;
};
struct il_tx_queue {
   struct il_queue q ;
   void *tfds ;
   struct il_device_cmd **cmd ;
   struct il_cmd_meta *meta ;
   struct sk_buff **skbs ;
   unsigned long time_stamp ;
   u8 need_update ;
   u8 sched_retry ;
   u8 active ;
   u8 swq_id ;
};
struct il_eeprom_channel {
   u8 flags ;
   s8 max_power_avg ;
};
struct il_eeprom_calib_measure {
   u8 temperature ;
   u8 gain_idx ;
   u8 actual_pow ;
   s8 pa_det ;
};
struct il_eeprom_calib_ch_info {
   u8 ch_num ;
   struct il_eeprom_calib_measure measurements[2U][3U] ;
};
struct il_eeprom_calib_subband_info {
   u8 ch_from ;
   u8 ch_to ;
   struct il_eeprom_calib_ch_info ch1 ;
   struct il_eeprom_calib_ch_info ch2 ;
};
struct il_eeprom_calib_info {
   u8 saturation_power24 ;
   u8 saturation_power52 ;
   __le16 voltage ;
   struct il_eeprom_calib_subband_info band_info[8U] ;
};
struct il_channel_info;
struct il4965_channel_tgd_info {
   u8 type ;
   s8 max_power ;
};
struct il4965_channel_tgh_info {
   s64 last_radar_time ;
};
struct il3945_clip_group {
   s8 const clip_powers[12U] ;
};
struct il3945_channel_power_info {
   struct il3945_tx_power tpc ;
   s8 power_table_idx ;
   s8 base_power_idx ;
   s8 requested_power ;
};
struct il3945_scan_power_info {
   struct il3945_tx_power tpc ;
   s8 power_table_idx ;
   s8 requested_power ;
};
struct il_channel_info {
   struct il4965_channel_tgd_info tgd ;
   struct il4965_channel_tgh_info tgh ;
   struct il_eeprom_channel eeprom ;
   struct il_eeprom_channel ht40_eeprom ;
   u8 channel ;
   u8 flags ;
   s8 max_power_avg ;
   s8 curr_txpow ;
   s8 min_power ;
   s8 scan_power ;
   u8 group_idx ;
   u8 band_idx ;
   enum ieee80211_band band ;
   s8 ht40_max_power_avg ;
   u8 ht40_flags ;
   u8 ht40_extension_channel ;
   struct il3945_channel_power_info power_info[33U] ;
   struct il3945_scan_power_info scan_pwr_info[2U] ;
};
union __anonunion_cmd_397 {
   u32 flags ;
   u8 val8 ;
   u16 val16 ;
   u32 val32 ;
   struct il_tx_cmd tx ;
   u8 payload[320U] ;
};
struct il_device_cmd {
   struct il_cmd_header hdr ;
   union __anonunion_cmd_397 cmd ;
};
struct il_host_cmd {
   void const *data ;
   unsigned long reply_page ;
   void (*callback)(struct il_priv * , struct il_device_cmd * , struct il_rx_pkt * ) ;
   u32 flags ;
   u16 len ;
   u8 id ;
};
struct il_rb_status;
struct il_rx_queue {
   __le32 *bd ;
   dma_addr_t bd_dma ;
   struct il_rx_buf pool[320U] ;
   struct il_rx_buf *queue[256U] ;
   u32 read ;
   u32 write ;
   u32 free_count ;
   u32 write_actual ;
   struct list_head rx_free ;
   struct list_head rx_used ;
   int need_update ;
   struct il_rb_status *rb_stts ;
   dma_addr_t rb_stts_dma ;
   spinlock_t lock ;
};
struct il_ht_agg {
   u16 txq_id ;
   u16 frame_count ;
   u16 wait_for_ba ;
   u16 start_idx ;
   u64 bitmap ;
   u32 rate_n_flags ;
   u8 state ;
};
struct il_tid_data {
   u16 seq_number ;
   u16 tfds_in_queue ;
   struct il_ht_agg agg ;
};
struct il_hw_key {
   u32 cipher ;
   int keylen ;
   u8 keyidx ;
   u8 key[32U] ;
};
struct il_ht_config {
   bool single_chain_sufficient ;
   enum ieee80211_smps_mode smps ;
};
struct il_qos_info {
   int qos_active ;
   struct il_qosparam_cmd def_qos_parm ;
};
struct il_station_entry {
   struct il_addsta_cmd sta ;
   struct il_tid_data tid[9U] ;
   u8 used ;
   struct il_hw_key keyinfo ;
   struct il_link_quality_cmd *lq ;
};
struct fw_desc {
   void *v_addr ;
   dma_addr_t p_addr ;
   u32 len ;
};
struct il_sensitivity_ranges {
   u16 min_nrg_cck ;
   u16 max_nrg_cck ;
   u16 nrg_th_cck ;
   u16 nrg_th_ofdm ;
   u16 auto_corr_min_ofdm ;
   u16 auto_corr_min_ofdm_mrc ;
   u16 auto_corr_min_ofdm_x1 ;
   u16 auto_corr_min_ofdm_mrc_x1 ;
   u16 auto_corr_max_ofdm ;
   u16 auto_corr_max_ofdm_mrc ;
   u16 auto_corr_max_ofdm_x1 ;
   u16 auto_corr_max_ofdm_mrc_x1 ;
   u16 auto_corr_max_cck ;
   u16 auto_corr_max_cck_mrc ;
   u16 auto_corr_min_cck ;
   u16 auto_corr_min_cck_mrc ;
   u16 barker_corr_th_min ;
   u16 barker_corr_th_min_mrc ;
   u16 nrg_th_cca ;
};
struct il_hw_params {
   u8 bcast_id ;
   u8 max_txq_num ;
   u8 dma_chnl_num ;
   u16 scd_bc_tbls_size ;
   u32 tfd_size ;
   u8 tx_chains_num ;
   u8 rx_chains_num ;
   u8 valid_tx_ant ;
   u8 valid_rx_ant ;
   u16 max_rxq_size ;
   u16 max_rxq_log ;
   u32 rx_page_order ;
   u32 rx_wrt_ptr_reg ;
   u8 max_stations ;
   u8 ht40_channel ;
   u8 max_beacon_itrvl ;
   u32 max_inst_size ;
   u32 max_data_size ;
   u32 max_bsm_size ;
   u32 ct_kill_threshold ;
   u16 beacon_time_tsf_bits ;
   struct il_sensitivity_ranges const *sens ;
};
struct il_dma_ptr {
   dma_addr_t dma ;
   void *addr ;
   size_t size ;
};
enum ucode_type {
    UCODE_NONE = 0,
    UCODE_INIT = 1,
    UCODE_RT = 2
} ;
struct il_sensitivity_data {
   u32 auto_corr_ofdm ;
   u32 auto_corr_ofdm_mrc ;
   u32 auto_corr_ofdm_x1 ;
   u32 auto_corr_ofdm_mrc_x1 ;
   u32 auto_corr_cck ;
   u32 auto_corr_cck_mrc ;
   u32 last_bad_plcp_cnt_ofdm ;
   u32 last_fa_cnt_ofdm ;
   u32 last_bad_plcp_cnt_cck ;
   u32 last_fa_cnt_cck ;
   u32 nrg_curr_state ;
   u32 nrg_prev_state ;
   u32 nrg_value[10U] ;
   u8 nrg_silence_rssi[20U] ;
   u32 nrg_silence_ref ;
   u32 nrg_energy_idx ;
   u32 nrg_silence_idx ;
   u32 nrg_th_cck ;
   s32 nrg_auto_corr_silence_diff ;
   u32 num_in_cck_no_fa ;
   u32 nrg_th_ofdm ;
   u16 barker_corr_th_min ;
   u16 barker_corr_th_min_mrc ;
   u16 nrg_th_cca ;
};
struct il_chain_noise_data {
   u32 active_chains ;
   u32 chain_noise_a ;
   u32 chain_noise_b ;
   u32 chain_noise_c ;
   u32 chain_signal_a ;
   u32 chain_signal_b ;
   u32 chain_signal_c ;
   u16 beacon_count ;
   u8 disconn_array[3U] ;
   u8 delta_gain_code[3U] ;
   u8 radio_write ;
   u8 state ;
};
struct isr_stats {
   u32 hw ;
   u32 sw ;
   u32 err_code ;
   u32 sch ;
   u32 alive ;
   u32 rfkill ;
   u32 ctkill ;
   u32 wakeup ;
   u32 rx ;
   u32 handlers[255U] ;
   u32 tx ;
   u32 unhandled ;
};
struct traffic_stats {
   u32 mgmt[12U] ;
   u32 ctrl[8U] ;
   u32 data_cnt ;
   u64 data_bytes ;
};
struct il_force_reset {
   int reset_request_count ;
   int reset_success_count ;
   int reset_reject_count ;
   unsigned long reset_duration ;
   unsigned long last_force_reset_jiffies ;
};
struct il_power_mgr {
   struct il_powertable_cmd sleep_cmd ;
   struct il_powertable_cmd sleep_cmd_next ;
   int debug_sleep_level_override ;
   bool pci_pm ;
   bool ps_disabled ;
};
struct il_cfg;
struct il_ops;
struct il_debugfs_ops;
struct __anonstruct_ht_400 {
   bool enabled ;
   bool is_40mhz ;
   bool non_gf_sta_present ;
   u8 protection ;
   u8 extension_chan_offset ;
};
struct __anonstruct__3945_402 {
   void *shared_virt ;
   dma_addr_t shared_phys ;
   struct delayed_work thermal_periodic ;
   struct delayed_work rfkill_poll ;
   struct il3945_notif_stats stats ;
   struct il3945_notif_stats accum_stats ;
   struct il3945_notif_stats delta_stats ;
   struct il3945_notif_stats max_delta ;
   u32 sta_supp_rates ;
   int last_rx_rssi ;
   u32 last_beacon_time ;
   u64 last_tsf ;
   struct il3945_clip_group const clip_groups[5U] ;
};
struct __anonstruct__4965_403 {
   struct il_rx_phy_res last_phy_res ;
   bool last_phy_res_valid ;
   u32 ampdu_ref ;
   struct completion firmware_loading_complete ;
   u8 phy_calib_chain_noise_reset_cmd ;
   u8 phy_calib_chain_noise_gain_cmd ;
   u8 key_mapping_keys ;
   struct il_wep_key wep_keys[4U] ;
   struct il_notif_stats stats ;
   struct il_notif_stats accum_stats ;
   struct il_notif_stats delta_stats ;
   struct il_notif_stats max_delta ;
};
union __anonunion____missing_field_name_401 {
   struct __anonstruct__3945_402 _3945 ;
   struct __anonstruct__4965_403 _4965 ;
};
struct il_priv {
   struct ieee80211_hw *hw ;
   struct ieee80211_channel *ieee_channels ;
   struct ieee80211_rate *ieee_rates ;
   struct il_cfg *cfg ;
   struct il_ops const *ops ;
   struct il_debugfs_ops const *debugfs_ops ;
   struct list_head free_frames ;
   int frames_count ;
   enum ieee80211_band band ;
   int alloc_rxb_page ;
   void (*handlers[255U])(struct il_priv * , struct il_rx_buf * ) ;
   struct ieee80211_supported_band bands[3U] ;
   struct il_spectrum_notification measure_report ;
   u8 measurement_status ;
   u32 ucode_beacon_time ;
   int missed_beacon_threshold ;
   u32 ibss_manager ;
   struct il_force_reset force_reset ;
   struct il_channel_info *channel_info ;
   u8 channel_count ;
   s32 temperature ;
   s32 last_temperature ;
   unsigned long scan_start ;
   unsigned long scan_start_tsf ;
   void *scan_cmd ;
   enum ieee80211_band scan_band ;
   struct cfg80211_scan_request *scan_request ;
   struct ieee80211_vif *scan_vif ;
   u8 scan_tx_ant[3U] ;
   u8 mgmt_tx_ant ;
   spinlock_t lock ;
   spinlock_t hcmd_lock ;
   spinlock_t reg_lock ;
   struct mutex mutex ;
   struct pci_dev *pci_dev ;
   void *hw_base ;
   u32 hw_rev ;
   u32 hw_wa_rev ;
   u8 rev_id ;
   u8 cmd_queue ;
   u8 sta_key_max_num ;
   struct mac_address addresses[1U] ;
   int fw_idx ;
   u32 ucode_ver ;
   struct fw_desc ucode_code ;
   struct fw_desc ucode_data ;
   struct fw_desc ucode_data_backup ;
   struct fw_desc ucode_init ;
   struct fw_desc ucode_init_data ;
   struct fw_desc ucode_boot ;
   enum ucode_type ucode_type ;
   u8 ucode_write_complete ;
   char firmware_name[25U] ;
   struct ieee80211_vif *vif ;
   struct il_qos_info qos_data ;
   struct __anonstruct_ht_400 ht ;
   struct il_rxon_cmd const active ;
   struct il_rxon_cmd staging ;
   struct il_rxon_time_cmd timing ;
   __le16 switch_channel ;
   struct il_init_alive_resp card_alive_init ;
   struct il_alive_resp card_alive ;
   u16 active_rate ;
   u8 start_calib ;
   struct il_sensitivity_data sensitivity_data ;
   struct il_chain_noise_data chain_noise_data ;
   __le16 sensitivity_tbl[11U] ;
   struct il_ht_config current_ht_config ;
   u8 retry_rate ;
   wait_queue_head_t wait_command_queue ;
   int activity_timer_active ;
   struct il_rx_queue rxq ;
   struct il_tx_queue *txq ;
   unsigned long txq_ctx_active_msk ;
   struct il_dma_ptr kw ;
   struct il_dma_ptr scd_bc_tbls ;
   u32 scd_base_addr ;
   unsigned long status ;
   struct traffic_stats tx_stats ;
   struct traffic_stats rx_stats ;
   struct isr_stats isr_stats ;
   struct il_power_mgr power_data ;
   u8 bssid[6U] ;
   spinlock_t sta_lock ;
   int num_stations ;
   struct il_station_entry stations[32U] ;
   unsigned long ucode_key_table ;
   unsigned long queue_stopped[1U] ;
   unsigned long stop_reason ;
   atomic_t queue_stop_count[4U] ;
   u8 is_open ;
   u8 mac80211_registered ;
   u8 *eeprom ;
   struct il_eeprom_calib_info *calib_info ;
   enum nl80211_iftype iw_mode ;
   u64 timestamp ;
   union __anonunion____missing_field_name_401 __annonCompField103 ;
   struct il_hw_params hw_params ;
   u32 inta_mask ;
   struct workqueue_struct *workqueue ;
   struct work_struct restart ;
   struct work_struct scan_completed ;
   struct work_struct rx_replenish ;
   struct work_struct abort_scan ;
   bool beacon_enabled ;
   struct sk_buff *beacon_skb ;
   struct work_struct tx_flush ;
   struct tasklet_struct irq_tasklet ;
   struct delayed_work init_alive_start ;
   struct delayed_work alive_start ;
   struct delayed_work scan_check ;
   s8 tx_power_user_lmt ;
   s8 tx_power_device_lmt ;
   s8 tx_power_next ;
   u32 debug_level ;
   u16 tx_traffic_idx ;
   u16 rx_traffic_idx ;
   u8 *tx_traffic ;
   u8 *rx_traffic ;
   struct dentry *debugfs_dir ;
   u32 dbgfs_sram_offset ;
   u32 dbgfs_sram_len ;
   bool disable_ht40 ;
   struct work_struct txpower_work ;
   u32 disable_sens_cal ;
   u32 disable_chain_noise_cal ;
   u32 disable_tx_power_cal ;
   struct work_struct run_time_calib_work ;
   struct timer_list stats_periodic ;
   struct timer_list watchdog ;
   bool hw_ready ;
   struct led_classdev led ;
   unsigned long blink_on ;
   unsigned long blink_off ;
   bool led_registered ;
};
struct il_debugfs_ops {
   ssize_t (*rx_stats_read)(struct file * , char * , size_t , loff_t * ) ;
   ssize_t (*tx_stats_read)(struct file * , char * , size_t , loff_t * ) ;
   ssize_t (*general_stats_read)(struct file * , char * , size_t , loff_t * ) ;
};
struct il_ops {
   void (*txq_update_byte_cnt_tbl)(struct il_priv * , struct il_tx_queue * , u16 ) ;
   int (*txq_attach_buf_to_tfd)(struct il_priv * , struct il_tx_queue * , dma_addr_t ,
                                u16 , u8 , u8 ) ;
   void (*txq_free_tfd)(struct il_priv * , struct il_tx_queue * ) ;
   int (*txq_init)(struct il_priv * , struct il_tx_queue * ) ;
   void (*init_alive_start)(struct il_priv * ) ;
   int (*is_valid_rtc_data_addr)(u32 ) ;
   int (*load_ucode)(struct il_priv * ) ;
   void (*dump_nic_error_log)(struct il_priv * ) ;
   int (*dump_fh)(struct il_priv * , char ** , bool ) ;
   int (*set_channel_switch)(struct il_priv * , struct ieee80211_channel_switch * ) ;
   int (*apm_init)(struct il_priv * ) ;
   int (*send_tx_power)(struct il_priv * ) ;
   void (*update_chain_flags)(struct il_priv * ) ;
   int (*eeprom_acquire_semaphore)(struct il_priv * ) ;
   void (*eeprom_release_semaphore)(struct il_priv * ) ;
   int (*rxon_assoc)(struct il_priv * ) ;
   int (*commit_rxon)(struct il_priv * ) ;
   void (*set_rxon_chain)(struct il_priv * ) ;
   u16 (*get_hcmd_size)(u8 , u16 ) ;
   u16 (*build_addsta_hcmd)(struct il_addsta_cmd const * , u8 * ) ;
   int (*request_scan)(struct il_priv * , struct ieee80211_vif * ) ;
   void (*post_scan)(struct il_priv * ) ;
   void (*post_associate)(struct il_priv * ) ;
   void (*config_ap)(struct il_priv * ) ;
   int (*update_bcast_stations)(struct il_priv * ) ;
   int (*manage_ibss_station)(struct il_priv * , struct ieee80211_vif * , bool ) ;
   int (*send_led_cmd)(struct il_priv * , struct il_led_cmd * ) ;
};
struct il_mod_params {
   int sw_crypto ;
   int disable_hw_scan ;
   int num_of_queues ;
   int disable_11n ;
   int amsdu_size_8K ;
   int antenna ;
   int restart_fw ;
};
enum il_led_mode {
    IL_LED_DEFAULT = 0,
    IL_LED_RF_STATE = 1,
    IL_LED_BLINK = 2
} ;
struct il_base_params;
struct il_cfg {
   char const *name ;
   char const *fw_name_pre ;
   unsigned int const ucode_api_max ;
   unsigned int const ucode_api_min ;
   u8 valid_tx_ant ;
   u8 valid_rx_ant ;
   unsigned int sku ;
   u16 eeprom_ver ;
   u16 eeprom_calib_ver ;
   struct il_mod_params const *mod_params ;
   struct il_base_params *base_params ;
   u8 scan_rx_antennas[3U] ;
   enum il_led_mode led_mode ;
   int eeprom_size ;
   int num_of_queues ;
   int num_of_ampdu_queues ;
   u32 pll_cfg_val ;
   bool set_l0s ;
   bool use_bsm ;
   u16 led_compensation ;
   int chain_noise_num_beacons ;
   unsigned int wd_timeout ;
   bool temperature_kelvin ;
   bool const ucode_tracing ;
   bool const sensitivity_calib_by_driver ;
   bool const chain_noise_calib_by_driver ;
   u32 const regulatory_bands[7U] ;
};
struct il_rb_status {
   __le16 closed_rb_num ;
   __le16 closed_fr_num ;
   __le16 finished_rb_num ;
   __le16 finished_fr_nam ;
   __le32 __unused ;
};
struct il4965_scd_bc_tbl {
   __le16 tfd_offset[320U] ;
   u8 pad[384U] ;
};
struct il4965_txpower_comp_entry {
   s32 degrees_per_05db_a ;
   s32 degrees_per_05db_a_denom ;
};
struct gain_entry {
   u8 dsp ;
   u8 radio ;
};
typedef bool ldv_func_ret_type___2;
typedef bool ldv_func_ret_type___3;
typedef bool ldv_func_ret_type___4;
typedef bool ldv_func_ret_type___5;
typedef int pao_T__;
typedef int pao_T_____0;
struct __wait_queue;
typedef struct __wait_queue wait_queue_t;
struct __wait_queue {
   unsigned int flags ;
   void *private ;
   int (*func)(wait_queue_t * , unsigned int , int , void * ) ;
   struct list_head task_list ;
};
enum hrtimer_restart;
enum irqreturn {
    IRQ_NONE = 0,
    IRQ_HANDLED = 1,
    IRQ_WAKE_THREAD = 2
} ;
typedef enum irqreturn irqreturn_t;
enum skb_free_reason {
    SKB_REASON_CONSUMED = 0,
    SKB_REASON_DROPPED = 1
} ;
struct firmware {
   size_t size ;
   u8 const *data ;
   struct page **pages ;
   void *priv ;
};
struct ieee80211_msrment_ie {
   u8 token ;
   u8 mode ;
   u8 type ;
   u8 request[0U] ;
};
struct ieee80211_ext_chansw_ie {
   u8 mode ;
   u8 new_operating_class ;
   u8 new_ch_num ;
   u8 count ;
};
struct ieee80211_tpc_report_ie {
   u8 tx_power ;
   u8 link_margin ;
};
struct __anonstruct_auth_328 {
   __le16 auth_alg ;
   __le16 auth_transaction ;
   __le16 status_code ;
   u8 variable[0U] ;
};
struct __anonstruct_deauth_329 {
   __le16 reason_code ;
};
struct __anonstruct_assoc_req_330 {
   __le16 capab_info ;
   __le16 listen_interval ;
   u8 variable[0U] ;
};
struct __anonstruct_assoc_resp_331 {
   __le16 capab_info ;
   __le16 status_code ;
   __le16 aid ;
   u8 variable[0U] ;
};
struct __anonstruct_reassoc_resp_332 {
   __le16 capab_info ;
   __le16 status_code ;
   __le16 aid ;
   u8 variable[0U] ;
};
struct __anonstruct_reassoc_req_333 {
   __le16 capab_info ;
   __le16 listen_interval ;
   u8 current_ap[6U] ;
   u8 variable[0U] ;
};
struct __anonstruct_disassoc_334 {
   __le16 reason_code ;
};
struct __anonstruct_beacon_335 {
   __le64 timestamp ;
   __le16 beacon_int ;
   __le16 capab_info ;
   u8 variable[0U] ;
};
struct __anonstruct_probe_req_336 {
   u8 variable[0U] ;
};
struct __anonstruct_probe_resp_337 {
   __le64 timestamp ;
   __le16 beacon_int ;
   __le16 capab_info ;
   u8 variable[0U] ;
};
struct __anonstruct_wme_action_340 {
   u8 action_code ;
   u8 dialog_token ;
   u8 status_code ;
   u8 variable[0U] ;
};
struct __anonstruct_chan_switch_341 {
   u8 action_code ;
   u8 variable[0U] ;
};
struct __anonstruct_ext_chan_switch_342 {
   u8 action_code ;
   struct ieee80211_ext_chansw_ie data ;
   u8 variable[0U] ;
};
struct __anonstruct_measurement_343 {
   u8 action_code ;
   u8 dialog_token ;
   u8 element_id ;
   u8 length ;
   struct ieee80211_msrment_ie msr_elem ;
};
struct __anonstruct_addba_req_344 {
   u8 action_code ;
   u8 dialog_token ;
   __le16 capab ;
   __le16 timeout ;
   __le16 start_seq_num ;
};
struct __anonstruct_addba_resp_345 {
   u8 action_code ;
   u8 dialog_token ;
   __le16 status ;
   __le16 capab ;
   __le16 timeout ;
};
struct __anonstruct_delba_346 {
   u8 action_code ;
   __le16 params ;
   __le16 reason_code ;
};
struct __anonstruct_self_prot_347 {
   u8 action_code ;
   u8 variable[0U] ;
};
struct __anonstruct_mesh_action_348 {
   u8 action_code ;
   u8 variable[0U] ;
};
struct __anonstruct_sa_query_349 {
   u8 action ;
   u8 trans_id[2U] ;
};
struct __anonstruct_ht_smps_350 {
   u8 action ;
   u8 smps_control ;
};
struct __anonstruct_ht_notify_cw_351 {
   u8 action_code ;
   u8 chanwidth ;
};
struct __anonstruct_tdls_discover_resp_352 {
   u8 action_code ;
   u8 dialog_token ;
   __le16 capability ;
   u8 variable[0U] ;
};
struct __anonstruct_vht_opmode_notif_353 {
   u8 action_code ;
   u8 operating_mode ;
};
struct __anonstruct_tpc_report_354 {
   u8 action_code ;
   u8 dialog_token ;
   u8 tpc_elem_id ;
   u8 tpc_elem_length ;
   struct ieee80211_tpc_report_ie tpc ;
};
union __anonunion_u_339 {
   struct __anonstruct_wme_action_340 wme_action ;
   struct __anonstruct_chan_switch_341 chan_switch ;
   struct __anonstruct_ext_chan_switch_342 ext_chan_switch ;
   struct __anonstruct_measurement_343 measurement ;
   struct __anonstruct_addba_req_344 addba_req ;
   struct __anonstruct_addba_resp_345 addba_resp ;
   struct __anonstruct_delba_346 delba ;
   struct __anonstruct_self_prot_347 self_prot ;
   struct __anonstruct_mesh_action_348 mesh_action ;
   struct __anonstruct_sa_query_349 sa_query ;
   struct __anonstruct_ht_smps_350 ht_smps ;
   struct __anonstruct_ht_notify_cw_351 ht_notify_cw ;
   struct __anonstruct_tdls_discover_resp_352 tdls_discover_resp ;
   struct __anonstruct_vht_opmode_notif_353 vht_opmode_notif ;
   struct __anonstruct_tpc_report_354 tpc_report ;
};
struct __anonstruct_action_338 {
   u8 category ;
   union __anonunion_u_339 u ;
};
union __anonunion_u_327 {
   struct __anonstruct_auth_328 auth ;
   struct __anonstruct_deauth_329 deauth ;
   struct __anonstruct_assoc_req_330 assoc_req ;
   struct __anonstruct_assoc_resp_331 assoc_resp ;
   struct __anonstruct_reassoc_resp_332 reassoc_resp ;
   struct __anonstruct_reassoc_req_333 reassoc_req ;
   struct __anonstruct_disassoc_334 disassoc ;
   struct __anonstruct_beacon_335 beacon ;
   struct __anonstruct_probe_req_336 probe_req ;
   struct __anonstruct_probe_resp_337 probe_resp ;
   struct __anonstruct_action_338 action ;
};
struct ieee80211_mgmt {
   __le16 frame_control ;
   __le16 duration ;
   u8 da[6U] ;
   u8 sa[6U] ;
   u8 bssid[6U] ;
   __le16 seq_ctrl ;
   union __anonunion_u_327 u ;
};
struct nl80211_sta_flag_update {
   __u32 mask ;
   __u32 set ;
};
enum nl80211_mesh_power_mode {
    NL80211_MESH_POWER_UNKNOWN = 0,
    NL80211_MESH_POWER_ACTIVE = 1,
    NL80211_MESH_POWER_LIGHT_SLEEP = 2,
    NL80211_MESH_POWER_DEEP_SLEEP = 3,
    __NL80211_MESH_POWER_AFTER_LAST = 4,
    NL80211_MESH_POWER_MAX = 3
} ;
enum nl80211_channel_type {
    NL80211_CHAN_NO_HT = 0,
    NL80211_CHAN_HT20 = 1,
    NL80211_CHAN_HT40MINUS = 2,
    NL80211_CHAN_HT40PLUS = 3
} ;
enum nl80211_txrate_gi {
    NL80211_TXRATE_DEFAULT_GI = 0,
    NL80211_TXRATE_FORCE_SGI = 1,
    NL80211_TXRATE_FORCE_LGI = 2
} ;
struct survey_info {
   struct ieee80211_channel *channel ;
   u64 time ;
   u64 time_busy ;
   u64 time_ext_busy ;
   u64 time_rx ;
   u64 time_tx ;
   u64 time_scan ;
   u32 filled ;
   s8 noise ;
};
struct rate_info {
   u8 flags ;
   u8 mcs ;
   u16 legacy ;
   u8 nss ;
   u8 bw ;
};
struct sta_bss_parameters {
   u8 flags ;
   u8 dtim_period ;
   u16 beacon_interval ;
};
struct cfg80211_tid_stats {
   u32 filled ;
   u64 rx_msdu ;
   u64 tx_msdu ;
   u64 tx_msdu_retries ;
   u64 tx_msdu_failed ;
};
struct station_info {
   u32 filled ;
   u32 connected_time ;
   u32 inactive_time ;
   u64 rx_bytes ;
   u64 tx_bytes ;
   u16 llid ;
   u16 plid ;
   u8 plink_state ;
   s8 signal ;
   s8 signal_avg ;
   u8 chains ;
   s8 chain_signal[4U] ;
   s8 chain_signal_avg[4U] ;
   struct rate_info txrate ;
   struct rate_info rxrate ;
   u32 rx_packets ;
   u32 tx_packets ;
   u32 tx_retries ;
   u32 tx_failed ;
   u32 rx_dropped_misc ;
   struct sta_bss_parameters bss_param ;
   struct nl80211_sta_flag_update sta_flags ;
   int generation ;
   u8 const *assoc_req_ies ;
   size_t assoc_req_ies_len ;
   u32 beacon_loss_count ;
   s64 t_offset ;
   enum nl80211_mesh_power_mode local_pm ;
   enum nl80211_mesh_power_mode peer_pm ;
   enum nl80211_mesh_power_mode nonpeer_pm ;
   u32 expected_throughput ;
   u64 rx_beacon ;
   u8 rx_beacon_signal_avg ;
   struct cfg80211_tid_stats pertid[17U] ;
};
struct __anonstruct_control_366 {
   u32 legacy ;
   u8 ht_mcs[10U] ;
   u16 vht_mcs[8U] ;
   enum nl80211_txrate_gi gi ;
};
struct cfg80211_bitrate_mask {
   struct __anonstruct_control_366 control[3U] ;
};
struct cfg80211_gtk_rekey_data {
   u8 const *kek ;
   u8 const *kck ;
   u8 const *replay_ctr ;
};
struct ieee80211_tx_queue_params {
   u16 txop ;
   u16 cw_min ;
   u16 cw_max ;
   u8 aifs ;
   bool acm ;
   bool uapsd ;
};
struct ieee80211_low_level_stats {
   unsigned int dot11ACKFailureCount ;
   unsigned int dot11RTSFailureCount ;
   unsigned int dot11FCSErrorCount ;
   unsigned int dot11RTSSuccessCount ;
};
enum ieee80211_chanctx_switch_mode {
    CHANCTX_SWMODE_REASSIGN_VIF = 0,
    CHANCTX_SWMODE_SWAP_CONTEXTS = 1
} ;
struct ieee80211_vif_chanctx_switch {
   struct ieee80211_vif *vif ;
   struct ieee80211_chanctx_conf *old_ctx ;
   struct ieee80211_chanctx_conf *new_ctx ;
};
enum ieee80211_event_type {
    RSSI_EVENT = 0,
    MLME_EVENT = 1,
    BAR_RX_EVENT = 2,
    BA_FRAME_TIMEOUT = 3
} ;
enum ieee80211_rssi_event_data {
    RSSI_EVENT_HIGH = 0,
    RSSI_EVENT_LOW = 1
} ;
struct ieee80211_rssi_event {
   enum ieee80211_rssi_event_data data ;
};
enum ieee80211_mlme_event_data {
    AUTH_EVENT = 0,
    ASSOC_EVENT = 1,
    DEAUTH_RX_EVENT = 2,
    DEAUTH_TX_EVENT = 3
} ;
enum ieee80211_mlme_event_status {
    MLME_SUCCESS = 0,
    MLME_DENIED = 1,
    MLME_TIMEOUT = 2
} ;
struct ieee80211_mlme_event {
   enum ieee80211_mlme_event_data data ;
   enum ieee80211_mlme_event_status status ;
   u16 reason ;
};
struct ieee80211_ba_event {
   struct ieee80211_sta *sta ;
   u16 tid ;
   u16 ssn ;
};
union __anonunion_u_368 {
   struct ieee80211_rssi_event rssi ;
   struct ieee80211_mlme_event mlme ;
   struct ieee80211_ba_event ba ;
};
struct ieee80211_event {
   enum ieee80211_event_type type ;
   union __anonunion_u_368 u ;
};
struct ieee80211_tx_rate {
   s8 idx ;
   unsigned char count : 5 ;
   unsigned short flags : 11 ;
};
struct __anonstruct____missing_field_name_372 {
   struct ieee80211_tx_rate rates[4U] ;
   s8 rts_cts_rate_idx ;
   unsigned char use_rts : 1 ;
   unsigned char use_cts_prot : 1 ;
   unsigned char short_preamble : 1 ;
   unsigned char skip_table : 1 ;
};
union __anonunion____missing_field_name_371 {
   struct __anonstruct____missing_field_name_372 __annonCompField97 ;
   unsigned long jiffies ;
};
struct ieee80211_key_conf;
struct __anonstruct_control_370 {
   union __anonunion____missing_field_name_371 __annonCompField98 ;
   struct ieee80211_vif *vif ;
   struct ieee80211_key_conf *hw_key ;
   u32 flags ;
};
struct __anonstruct_ack_373 {
   u64 cookie ;
};
struct __anonstruct_status_374 {
   struct ieee80211_tx_rate rates[4U] ;
   s32 ack_signal ;
   u8 ampdu_ack_len ;
   u8 ampdu_len ;
   u8 antenna ;
   u16 tx_time ;
   void *status_driver_data[2U] ;
};
struct __anonstruct____missing_field_name_375 {
   struct ieee80211_tx_rate driver_rates[4U] ;
   u8 pad[4U] ;
   void *rate_driver_data[3U] ;
};
union __anonunion____missing_field_name_369 {
   struct __anonstruct_control_370 control ;
   struct __anonstruct_ack_373 ack ;
   struct __anonstruct_status_374 status ;
   struct __anonstruct____missing_field_name_375 __annonCompField99 ;
   void *driver_data[5U] ;
};
struct ieee80211_tx_info {
   u32 flags ;
   u8 band ;
   u8 hw_queue ;
   u16 ack_frame_id ;
   union __anonunion____missing_field_name_369 __annonCompField100 ;
};
struct ieee80211_scan_ies {
   u8 const *ies[3U] ;
   size_t len[3U] ;
   u8 const *common_ies ;
   size_t common_ie_len ;
};
struct ieee80211_rx_status;
struct ieee80211_rx_status {
   u64 mactime ;
   u32 device_timestamp ;
   u32 ampdu_reference ;
   u32 flag ;
   u16 freq ;
   u8 vht_flag ;
   u8 rate_idx ;
   u8 vht_nss ;
   u8 rx_flags ;
   u8 band ;
   u8 antenna ;
   s8 signal ;
   u8 chains ;
   s8 chain_signal[4U] ;
   u8 ampdu_delimiter_crc ;
};
struct ieee80211_key_conf {
   atomic64_t tx_pn ;
   u32 cipher ;
   u8 icv_len ;
   u8 iv_len ;
   u8 hw_key_idx ;
   u8 flags ;
   s8 keyidx ;
   u8 keylen ;
   u8 key[0U] ;
};
struct __anonstruct_tkip_377 {
   u32 iv32 ;
   u16 iv16 ;
};
struct __anonstruct_ccmp_378 {
   u8 pn[6U] ;
};
struct __anonstruct_aes_cmac_379 {
   u8 pn[6U] ;
};
struct __anonstruct_aes_gmac_380 {
   u8 pn[6U] ;
};
struct __anonstruct_gcmp_381 {
   u8 pn[6U] ;
};
struct __anonstruct_hw_382 {
   u8 seq[16U] ;
   u8 seq_len ;
};
union __anonunion____missing_field_name_376 {
   struct __anonstruct_tkip_377 tkip ;
   struct __anonstruct_ccmp_378 ccmp ;
   struct __anonstruct_aes_cmac_379 aes_cmac ;
   struct __anonstruct_aes_gmac_380 aes_gmac ;
   struct __anonstruct_gcmp_381 gcmp ;
   struct __anonstruct_hw_382 hw ;
};
struct ieee80211_key_seq {
   union __anonunion____missing_field_name_376 __annonCompField101 ;
};
enum set_key_cmd {
    SET_KEY = 0,
    DISABLE_KEY = 1
} ;
enum ieee80211_sta_state {
    IEEE80211_STA_NOTEXIST = 0,
    IEEE80211_STA_NONE = 1,
    IEEE80211_STA_AUTH = 2,
    IEEE80211_STA_ASSOC = 3,
    IEEE80211_STA_AUTHORIZED = 4
} ;
enum sta_notify_cmd {
    STA_NOTIFY_SLEEP = 0,
    STA_NOTIFY_AWAKE = 1
} ;
struct ieee80211_tx_control {
   struct ieee80211_sta *sta ;
};
enum ieee80211_hw_flags {
    IEEE80211_HW_HAS_RATE_CONTROL = 0,
    IEEE80211_HW_RX_INCLUDES_FCS = 1,
    IEEE80211_HW_HOST_BROADCAST_PS_BUFFERING = 2,
    IEEE80211_HW_SIGNAL_UNSPEC = 3,
    IEEE80211_HW_SIGNAL_DBM = 4,
    IEEE80211_HW_NEED_DTIM_BEFORE_ASSOC = 5,
    IEEE80211_HW_SPECTRUM_MGMT = 6,
    IEEE80211_HW_AMPDU_AGGREGATION = 7,
    IEEE80211_HW_SUPPORTS_PS = 8,
    IEEE80211_HW_PS_NULLFUNC_STACK = 9,
    IEEE80211_HW_SUPPORTS_DYNAMIC_PS = 10,
    IEEE80211_HW_MFP_CAPABLE = 11,
    IEEE80211_HW_WANT_MONITOR_VIF = 12,
    IEEE80211_HW_NO_AUTO_VIF = 13,
    IEEE80211_HW_SW_CRYPTO_CONTROL = 14,
    IEEE80211_HW_SUPPORT_FAST_XMIT = 15,
    IEEE80211_HW_REPORTS_TX_ACK_STATUS = 16,
    IEEE80211_HW_CONNECTION_MONITOR = 17,
    IEEE80211_HW_QUEUE_CONTROL = 18,
    IEEE80211_HW_SUPPORTS_PER_STA_GTK = 19,
    IEEE80211_HW_AP_LINK_PS = 20,
    IEEE80211_HW_TX_AMPDU_SETUP_IN_HW = 21,
    IEEE80211_HW_SUPPORTS_RC_TABLE = 22,
    IEEE80211_HW_P2P_DEV_ADDR_FOR_INTF = 23,
    IEEE80211_HW_TIMING_BEACON_ONLY = 24,
    IEEE80211_HW_SUPPORTS_HT_CCK_RATES = 25,
    IEEE80211_HW_CHANCTX_STA_CSA = 26,
    IEEE80211_HW_SUPPORTS_CLONED_SKBS = 27,
    IEEE80211_HW_SINGLE_SCAN_ON_ALL_BANDS = 28,
    NUM_IEEE80211_HW_FLAGS = 29
} ;
struct ieee80211_scan_request {
   struct ieee80211_scan_ies ies ;
   struct cfg80211_scan_request req ;
};
struct ieee80211_tdls_ch_sw_params {
   struct ieee80211_sta *sta ;
   struct cfg80211_chan_def *chandef ;
   u8 action_code ;
   u32 status ;
   u32 timestamp ;
   u16 switch_time ;
   u16 switch_timeout ;
   struct sk_buff *tmpl_skb ;
   u32 ch_sw_tm_ie ;
};
enum ieee80211_ampdu_mlme_action {
    IEEE80211_AMPDU_RX_START = 0,
    IEEE80211_AMPDU_RX_STOP = 1,
    IEEE80211_AMPDU_TX_START = 2,
    IEEE80211_AMPDU_TX_STOP_CONT = 3,
    IEEE80211_AMPDU_TX_STOP_FLUSH = 4,
    IEEE80211_AMPDU_TX_STOP_FLUSH_CONT = 5,
    IEEE80211_AMPDU_TX_OPERATIONAL = 6
} ;
enum ieee80211_frame_release_type {
    IEEE80211_FRAME_RELEASE_PSPOLL = 0,
    IEEE80211_FRAME_RELEASE_UAPSD = 1
} ;
enum ieee80211_roc_type {
    IEEE80211_ROC_TYPE_NORMAL = 0,
    IEEE80211_ROC_TYPE_MGMT_TX = 1
} ;
enum ieee80211_reconfig_type {
    IEEE80211_RECONFIG_TYPE_RESTART = 0,
    IEEE80211_RECONFIG_TYPE_SUSPEND = 1
} ;
struct ieee80211_ops {
   void (*tx)(struct ieee80211_hw * , struct ieee80211_tx_control * , struct sk_buff * ) ;
   int (*start)(struct ieee80211_hw * ) ;
   void (*stop)(struct ieee80211_hw * ) ;
   int (*suspend)(struct ieee80211_hw * , struct cfg80211_wowlan * ) ;
   int (*resume)(struct ieee80211_hw * ) ;
   void (*set_wakeup)(struct ieee80211_hw * , bool ) ;
   int (*add_interface)(struct ieee80211_hw * , struct ieee80211_vif * ) ;
   int (*change_interface)(struct ieee80211_hw * , struct ieee80211_vif * , enum nl80211_iftype ,
                           bool ) ;
   void (*remove_interface)(struct ieee80211_hw * , struct ieee80211_vif * ) ;
   int (*config)(struct ieee80211_hw * , u32 ) ;
   void (*bss_info_changed)(struct ieee80211_hw * , struct ieee80211_vif * , struct ieee80211_bss_conf * ,
                            u32 ) ;
   int (*start_ap)(struct ieee80211_hw * , struct ieee80211_vif * ) ;
   void (*stop_ap)(struct ieee80211_hw * , struct ieee80211_vif * ) ;
   u64 (*prepare_multicast)(struct ieee80211_hw * , struct netdev_hw_addr_list * ) ;
   void (*configure_filter)(struct ieee80211_hw * , unsigned int , unsigned int * ,
                            u64 ) ;
   int (*set_tim)(struct ieee80211_hw * , struct ieee80211_sta * , bool ) ;
   int (*set_key)(struct ieee80211_hw * , enum set_key_cmd , struct ieee80211_vif * ,
                  struct ieee80211_sta * , struct ieee80211_key_conf * ) ;
   void (*update_tkip_key)(struct ieee80211_hw * , struct ieee80211_vif * , struct ieee80211_key_conf * ,
                           struct ieee80211_sta * , u32 , u16 * ) ;
   void (*set_rekey_data)(struct ieee80211_hw * , struct ieee80211_vif * , struct cfg80211_gtk_rekey_data * ) ;
   void (*set_default_unicast_key)(struct ieee80211_hw * , struct ieee80211_vif * ,
                                   int ) ;
   int (*hw_scan)(struct ieee80211_hw * , struct ieee80211_vif * , struct ieee80211_scan_request * ) ;
   void (*cancel_hw_scan)(struct ieee80211_hw * , struct ieee80211_vif * ) ;
   int (*sched_scan_start)(struct ieee80211_hw * , struct ieee80211_vif * , struct cfg80211_sched_scan_request * ,
                           struct ieee80211_scan_ies * ) ;
   int (*sched_scan_stop)(struct ieee80211_hw * , struct ieee80211_vif * ) ;
   void (*sw_scan_start)(struct ieee80211_hw * , struct ieee80211_vif * , u8 const * ) ;
   void (*sw_scan_complete)(struct ieee80211_hw * , struct ieee80211_vif * ) ;
   int (*get_stats)(struct ieee80211_hw * , struct ieee80211_low_level_stats * ) ;
   void (*get_key_seq)(struct ieee80211_hw * , struct ieee80211_key_conf * , struct ieee80211_key_seq * ) ;
   int (*set_frag_threshold)(struct ieee80211_hw * , u32 ) ;
   int (*set_rts_threshold)(struct ieee80211_hw * , u32 ) ;
   int (*sta_add)(struct ieee80211_hw * , struct ieee80211_vif * , struct ieee80211_sta * ) ;
   int (*sta_remove)(struct ieee80211_hw * , struct ieee80211_vif * , struct ieee80211_sta * ) ;
   void (*sta_add_debugfs)(struct ieee80211_hw * , struct ieee80211_vif * , struct ieee80211_sta * ,
                           struct dentry * ) ;
   void (*sta_remove_debugfs)(struct ieee80211_hw * , struct ieee80211_vif * , struct ieee80211_sta * ,
                              struct dentry * ) ;
   void (*sta_notify)(struct ieee80211_hw * , struct ieee80211_vif * , enum sta_notify_cmd ,
                      struct ieee80211_sta * ) ;
   int (*sta_state)(struct ieee80211_hw * , struct ieee80211_vif * , struct ieee80211_sta * ,
                    enum ieee80211_sta_state , enum ieee80211_sta_state ) ;
   void (*sta_pre_rcu_remove)(struct ieee80211_hw * , struct ieee80211_vif * , struct ieee80211_sta * ) ;
   void (*sta_rc_update)(struct ieee80211_hw * , struct ieee80211_vif * , struct ieee80211_sta * ,
                         u32 ) ;
   void (*sta_rate_tbl_update)(struct ieee80211_hw * , struct ieee80211_vif * , struct ieee80211_sta * ) ;
   void (*sta_statistics)(struct ieee80211_hw * , struct ieee80211_vif * , struct ieee80211_sta * ,
                          struct station_info * ) ;
   int (*conf_tx)(struct ieee80211_hw * , struct ieee80211_vif * , u16 , struct ieee80211_tx_queue_params const * ) ;
   u64 (*get_tsf)(struct ieee80211_hw * , struct ieee80211_vif * ) ;
   void (*set_tsf)(struct ieee80211_hw * , struct ieee80211_vif * , u64 ) ;
   void (*reset_tsf)(struct ieee80211_hw * , struct ieee80211_vif * ) ;
   int (*tx_last_beacon)(struct ieee80211_hw * ) ;
   int (*ampdu_action)(struct ieee80211_hw * , struct ieee80211_vif * , enum ieee80211_ampdu_mlme_action ,
                       struct ieee80211_sta * , u16 , u16 * , u8 ) ;
   int (*get_survey)(struct ieee80211_hw * , int , struct survey_info * ) ;
   void (*rfkill_poll)(struct ieee80211_hw * ) ;
   void (*set_coverage_class)(struct ieee80211_hw * , s16 ) ;
   int (*testmode_cmd)(struct ieee80211_hw * , struct ieee80211_vif * , void * , int ) ;
   int (*testmode_dump)(struct ieee80211_hw * , struct sk_buff * , struct netlink_callback * ,
                        void * , int ) ;
   void (*flush)(struct ieee80211_hw * , struct ieee80211_vif * , u32 , bool ) ;
   void (*channel_switch)(struct ieee80211_hw * , struct ieee80211_vif * , struct ieee80211_channel_switch * ) ;
   int (*set_antenna)(struct ieee80211_hw * , u32 , u32 ) ;
   int (*get_antenna)(struct ieee80211_hw * , u32 * , u32 * ) ;
   int (*remain_on_channel)(struct ieee80211_hw * , struct ieee80211_vif * , struct ieee80211_channel * ,
                            int , enum ieee80211_roc_type ) ;
   int (*cancel_remain_on_channel)(struct ieee80211_hw * ) ;
   int (*set_ringparam)(struct ieee80211_hw * , u32 , u32 ) ;
   void (*get_ringparam)(struct ieee80211_hw * , u32 * , u32 * , u32 * , u32 * ) ;
   bool (*tx_frames_pending)(struct ieee80211_hw * ) ;
   int (*set_bitrate_mask)(struct ieee80211_hw * , struct ieee80211_vif * , struct cfg80211_bitrate_mask const * ) ;
   void (*event_callback)(struct ieee80211_hw * , struct ieee80211_vif * , struct ieee80211_event const * ) ;
   void (*allow_buffered_frames)(struct ieee80211_hw * , struct ieee80211_sta * ,
                                 u16 , int , enum ieee80211_frame_release_type ,
                                 bool ) ;
   void (*release_buffered_frames)(struct ieee80211_hw * , struct ieee80211_sta * ,
                                   u16 , int , enum ieee80211_frame_release_type ,
                                   bool ) ;
   int (*get_et_sset_count)(struct ieee80211_hw * , struct ieee80211_vif * , int ) ;
   void (*get_et_stats)(struct ieee80211_hw * , struct ieee80211_vif * , struct ethtool_stats * ,
                        u64 * ) ;
   void (*get_et_strings)(struct ieee80211_hw * , struct ieee80211_vif * , u32 ,
                          u8 * ) ;
   void (*mgd_prepare_tx)(struct ieee80211_hw * , struct ieee80211_vif * ) ;
   void (*mgd_protect_tdls_discover)(struct ieee80211_hw * , struct ieee80211_vif * ) ;
   int (*add_chanctx)(struct ieee80211_hw * , struct ieee80211_chanctx_conf * ) ;
   void (*remove_chanctx)(struct ieee80211_hw * , struct ieee80211_chanctx_conf * ) ;
   void (*change_chanctx)(struct ieee80211_hw * , struct ieee80211_chanctx_conf * ,
                          u32 ) ;
   int (*assign_vif_chanctx)(struct ieee80211_hw * , struct ieee80211_vif * , struct ieee80211_chanctx_conf * ) ;
   void (*unassign_vif_chanctx)(struct ieee80211_hw * , struct ieee80211_vif * , struct ieee80211_chanctx_conf * ) ;
   int (*switch_vif_chanctx)(struct ieee80211_hw * , struct ieee80211_vif_chanctx_switch * ,
                             int , enum ieee80211_chanctx_switch_mode ) ;
   void (*reconfig_complete)(struct ieee80211_hw * , enum ieee80211_reconfig_type ) ;
   void (*ipv6_addr_change)(struct ieee80211_hw * , struct ieee80211_vif * , struct inet6_dev * ) ;
   void (*channel_switch_beacon)(struct ieee80211_hw * , struct ieee80211_vif * ,
                                 struct cfg80211_chan_def * ) ;
   int (*pre_channel_switch)(struct ieee80211_hw * , struct ieee80211_vif * , struct ieee80211_channel_switch * ) ;
   int (*post_channel_switch)(struct ieee80211_hw * , struct ieee80211_vif * ) ;
   int (*join_ibss)(struct ieee80211_hw * , struct ieee80211_vif * ) ;
   void (*leave_ibss)(struct ieee80211_hw * , struct ieee80211_vif * ) ;
   u32 (*get_expected_throughput)(struct ieee80211_sta * ) ;
   int (*get_txpower)(struct ieee80211_hw * , struct ieee80211_vif * , int * ) ;
   int (*tdls_channel_switch)(struct ieee80211_hw * , struct ieee80211_vif * , struct ieee80211_sta * ,
                              u8 , struct cfg80211_chan_def * , struct sk_buff * ,
                              u32 ) ;
   void (*tdls_cancel_channel_switch)(struct ieee80211_hw * , struct ieee80211_vif * ,
                                      struct ieee80211_sta * ) ;
   void (*tdls_recv_channel_switch)(struct ieee80211_hw * , struct ieee80211_vif * ,
                                    struct ieee80211_tdls_ch_sw_params * ) ;
   void (*wake_tx_queue)(struct ieee80211_hw * , struct ieee80211_txq * ) ;
};
struct il_wep_cmd {
   u8 num_keys ;
   u8 global_key_type ;
   u8 flags ;
   u8 reserved ;
   struct il_wep_key key[0U] ;
};
struct il4965_rx_non_cfg_phy {
   __le16 ant_selection ;
   __le16 agc_info ;
   u8 rssi_info[6U] ;
   u8 pad[0U] ;
};
struct il_rx_mpdu_res_start {
   __le16 byte_count ;
   __le16 reserved ;
};
struct agg_tx_status {
   __le16 status ;
   __le16 sequence ;
};
union __anonunion_u_391 {
   __le32 status ;
   struct agg_tx_status agg_status[0U] ;
};
struct il4965_tx_resp {
   u8 frame_count ;
   u8 bt_kill_count ;
   u8 failure_rts ;
   u8 failure_frame ;
   __le32 rate_n_flags ;
   __le16 wireless_media_time ;
   __le16 reserved ;
   __le32 pa_power1 ;
   __le32 pa_power2 ;
   union __anonunion_u_391 u ;
};
struct il_ct_kill_config {
   __le32 reserved ;
   __le32 critical_temperature_M ;
   __le32 critical_temperature_R ;
};
struct il_scan_channel {
   __le32 type ;
   __le16 channel ;
   u8 tx_gain ;
   u8 dsp_atten ;
   __le16 active_dwell ;
   __le16 passive_dwell ;
};
struct il_ssid_ie {
   u8 id ;
   u8 len ;
   u8 ssid[32U] ;
};
struct il_scan_cmd {
   __le16 len ;
   u8 reserved0 ;
   u8 channel_count ;
   __le16 quiet_time ;
   __le16 quiet_plcp_th ;
   __le16 good_CRC_th ;
   __le16 rx_chain ;
   __le32 max_out_time ;
   __le32 suspend_time ;
   __le32 flags ;
   __le32 filter_flags ;
   struct il_tx_cmd tx_cmd ;
   struct il_ssid_ie direct_scan[20U] ;
   u8 data[0U] ;
};
struct il4965_beacon_notif {
   struct il4965_tx_resp beacon_notify_hdr ;
   __le32 low_tsf ;
   __le32 high_tsf ;
   __le32 ibss_mgr_status ;
};
struct il_tx_beacon_cmd {
   struct il_tx_cmd tx ;
   __le16 tim_idx ;
   u8 tim_size ;
   u8 reserved1 ;
   struct ieee80211_hdr frame[0U] ;
};
union __anonunion_u_396 {
   struct ieee80211_hdr frame ;
   struct il_tx_beacon_cmd beacon ;
   u8 raw[2334U] ;
   u8 cmd[360U] ;
};
struct il_frame {
   union __anonunion_u_396 u ;
   struct list_head list ;
};
struct il_station_priv_common {
   u8 sta_id ;
};
struct il_vif_priv {
   u8 ibss_bssid_sta_id ;
};
struct __anonstruct_v1_399 {
   __le32 inst_size ;
   __le32 data_size ;
   __le32 init_size ;
   __le32 init_data_size ;
   __le32 boot_size ;
   u8 data[0U] ;
};
struct il_ucode_header {
   __le32 ver ;
   struct __anonstruct_v1_399 v1 ;
};
struct il_tfd_tb {
   __le32 lo ;
   __le16 hi_n_len ;
};
struct il_tfd {
   u8 __reserved1[3U] ;
   u8 num_tbs ;
   struct il_tfd_tb tbs[20U] ;
   __le32 __pad ;
};
struct il_rate_info {
   u8 plcp ;
   u8 plcp_siso ;
   u8 plcp_mimo2 ;
   u8 ieee ;
   u8 prev_ieee ;
   u8 next_ieee ;
   u8 prev_rs ;
   u8 next_rs ;
   u8 prev_rs_tgg ;
   u8 next_rs_tgg ;
};
enum il_table_type {
    LQ_NONE = 0,
    LQ_G = 1,
    LQ_A = 2,
    LQ_SISO = 3,
    LQ_MIMO2 = 4,
    LQ_MAX = 5
} ;
struct il_rate_scale_data {
   u64 data ;
   s32 success_counter ;
   s32 success_ratio ;
   s32 counter ;
   s32 average_tpt ;
   unsigned long stamp ;
};
struct il_scale_tbl_info {
   enum il_table_type lq_type ;
   u8 ant_type ;
   u8 is_SGI ;
   u8 is_ht40 ;
   u8 is_dup ;
   u8 action ;
   u8 max_search ;
   s32 *expected_tpt ;
   u32 current_rate ;
   struct il_rate_scale_data win[13U] ;
};
struct il_traffic_load {
   unsigned long time_stamp ;
   u32 packet_count[20U] ;
   u32 total ;
   u8 queue_count ;
   u8 head ;
};
struct il_lq_sta {
   u8 active_tbl ;
   u8 enable_counter ;
   u8 stay_in_tbl ;
   u8 search_better_tbl ;
   s32 last_tpt ;
   u32 table_count_limit ;
   u32 max_failure_limit ;
   u32 max_success_limit ;
   u32 table_count ;
   u32 total_failed ;
   u32 total_success ;
   u64 flush_timer ;
   u8 action_counter ;
   u8 is_green ;
   u8 is_dup ;
   enum ieee80211_band band ;
   u32 supp_rates ;
   u16 active_legacy_rate ;
   u16 active_siso_rate ;
   u16 active_mimo2_rate ;
   s8 max_rate_idx ;
   u8 missed_rate_counter ;
   struct il_link_quality_cmd lq ;
   struct il_scale_tbl_info lq_info[2U] ;
   struct il_traffic_load load[8U] ;
   u8 tx_agg_tid_en ;
   struct dentry *rs_sta_dbgfs_scale_table_file ;
   struct dentry *rs_sta_dbgfs_stats_table_file ;
   struct dentry *rs_sta_dbgfs_rate_scale_data_file ;
   struct dentry *rs_sta_dbgfs_tx_agg_tid_en_file ;
   u32 dbg_fixed_rate ;
   struct il_priv *drv ;
   int last_txrate_idx ;
   u32 last_rate_n_flags ;
   u8 is_agg ;
};
struct il_station_priv {
   struct il_station_priv_common common ;
   struct il_lq_sta lq_sta ;
   atomic_t pending_frames ;
   bool client ;
   bool asleep ;
};
struct il4965_firmware_pieces {
   void const *inst ;
   void const *data ;
   void const *init ;
   void const *init_data ;
   void const *boot ;
   size_t inst_size ;
   size_t data_size ;
   size_t init_size ;
   size_t init_data_size ;
   size_t boot_size ;
};
struct __anonstruct_advanced_lookup_409 {
   char *name ;
   u8 num ;
};
typedef int ldv_func_ret_type___6;
typedef int ldv_func_ret_type___7;
typedef bool ldv_func_ret_type___8;
typedef bool ldv_func_ret_type___9;
typedef bool ldv_func_ret_type___10;
typedef bool ldv_func_ret_type___11;
typedef int ldv_func_ret_type___12;
typedef struct ieee80211_hw *ldv_func_ret_type___13;
typedef int ldv_func_ret_type___14;
typedef int ldv_func_ret_type___15;
enum hrtimer_restart;
enum mac80211_rate_control_flags {
    IEEE80211_TX_RC_USE_RTS_CTS = 1,
    IEEE80211_TX_RC_USE_CTS_PROTECT = 2,
    IEEE80211_TX_RC_USE_SHORT_PREAMBLE = 4,
    IEEE80211_TX_RC_MCS = 8,
    IEEE80211_TX_RC_GREEN_FIELD = 16,
    IEEE80211_TX_RC_40_MHZ_WIDTH = 32,
    IEEE80211_TX_RC_DUP_DATA = 64,
    IEEE80211_TX_RC_SHORT_GI = 128,
    IEEE80211_TX_RC_VHT_MCS = 256,
    IEEE80211_TX_RC_80_MHZ_WIDTH = 512,
    IEEE80211_TX_RC_160_MHZ_WIDTH = 1024
} ;
struct ieee80211_tx_rate_control {
   struct ieee80211_hw *hw ;
   struct ieee80211_supported_band *sband ;
   struct ieee80211_bss_conf *bss_conf ;
   struct sk_buff *skb ;
   struct ieee80211_tx_rate reported_rate ;
   bool rts ;
   bool short_preamble ;
   u8 max_rate_idx ;
   u32 rate_idx_mask ;
   u8 *rate_idx_mcs_mask ;
   bool bss ;
};
struct rate_control_ops {
   char const *name ;
   void *(*alloc)(struct ieee80211_hw * , struct dentry * ) ;
   void (*free)(void * ) ;
   void *(*alloc_sta)(void * , struct ieee80211_sta * , gfp_t ) ;
   void (*rate_init)(void * , struct ieee80211_supported_band * , struct cfg80211_chan_def * ,
                     struct ieee80211_sta * , void * ) ;
   void (*rate_update)(void * , struct ieee80211_supported_band * , struct cfg80211_chan_def * ,
                       struct ieee80211_sta * , void * , u32 ) ;
   void (*free_sta)(void * , struct ieee80211_sta * , void * ) ;
   void (*tx_status_noskb)(void * , struct ieee80211_supported_band * , struct ieee80211_sta * ,
                           void * , struct ieee80211_tx_info * ) ;
   void (*tx_status)(void * , struct ieee80211_supported_band * , struct ieee80211_sta * ,
                     void * , struct sk_buff * ) ;
   void (*get_rate)(void * , struct ieee80211_sta * , void * , struct ieee80211_tx_rate_control * ) ;
   void (*add_sta_debugfs)(void * , void * , struct dentry * ) ;
   void (*remove_sta_debugfs)(void * , void * ) ;
   u32 (*get_expected_throughput)(void * ) ;
};
struct il_rate_mcs_info {
   char mbps[12U] ;
   char mcs[12U] ;
};
enum hrtimer_restart;
struct il_sensitivity_cmd {
   __le16 control ;
   __le16 table[11U] ;
};
struct stats_general_data {
   u32 beacon_silence_rssi_a ;
   u32 beacon_silence_rssi_b ;
   u32 beacon_silence_rssi_c ;
   u32 beacon_energy_a ;
   u32 beacon_energy_b ;
   u32 beacon_energy_c ;
};
enum hrtimer_restart;
__inline static long ldv__builtin_expect(long exp , long c ) ;
__inline static void set_bit(long nr , unsigned long volatile *addr )
{
  {
  __asm__ volatile (".pushsection .smp_locks,\"a\"\n.balign 4\n.long 671f - .\n.popsection\n671:\n\tlock; bts %1,%0": "+m" (*((long volatile *)addr)): "Ir" (nr): "memory");
  return;
}
}
__inline static int constant_test_bit(long nr , unsigned long const volatile *addr )
{
  {
  return ((int )((unsigned long )*(addr + (unsigned long )(nr >> 6)) >> ((int )nr & 63)) & 1);
}
}
__inline static __s32 sign_extend32(__u32 value , int index )
{
  __u8 shift ;
  {
  shift = 31U - (unsigned int )((__u8 )index);
  return ((int )(value << (int )shift) >> (int )shift);
}
}
void ldv_spin_lock(void) ;
void ldv_spin_unlock(void) ;
extern void *malloc(size_t ) ;
extern void *calloc(size_t , size_t ) ;
extern void *memset(void * , int , size_t ) ;
extern int __VERIFIER_nondet_int(void) ;
extern unsigned long __VERIFIER_nondet_ulong(void) ;
extern void *__VERIFIER_nondet_pointer(void) ;
extern void __VERIFIER_assume(int ) ;
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
void *ldv_init_zalloc(size_t size )
{
  void *p ;
  void *tmp ;
  {
  tmp = calloc(1UL, size);
  p = tmp;
  __VERIFIER_assume((unsigned long )p != (unsigned long )((void *)0));
  return (p);
}
}
void *ldv_memset(void *s , int c , size_t n )
{
  void *tmp ;
  {
  tmp = memset(s, c, n);
  return (tmp);
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
__inline static void ldv_stop(void)
{
  {
  LDV_STOP: ;
  goto LDV_STOP;
}
}
__inline static long ldv__builtin_expect(long exp , long c )
{
  {
  return (exp);
}
}
extern void __bad_percpu_size(void) ;
extern void warn_slowpath_fmt(char const * , int const , char const * , ...) ;
extern void warn_slowpath_null(char const * , int const ) ;
extern void *memcpy(void * , void const * , size_t ) ;
extern void *memset(void * , int , size_t ) ;
extern int memcmp(void const * , void const * , size_t ) ;
extern int __preempt_count ;
__inline static int preempt_count(void)
{
  int pfo_ret__ ;
  {
  switch (4UL) {
  case 1UL:
  __asm__ ("movb %%gs:%1,%0": "=q" (pfo_ret__): "m" (__preempt_count));
  goto ldv_6106;
  case 2UL:
  __asm__ ("movw %%gs:%1,%0": "=r" (pfo_ret__): "m" (__preempt_count));
  goto ldv_6106;
  case 4UL:
  __asm__ ("movl %%gs:%1,%0": "=r" (pfo_ret__): "m" (__preempt_count));
  goto ldv_6106;
  case 8UL:
  __asm__ ("movq %%gs:%1,%0": "=r" (pfo_ret__): "m" (__preempt_count));
  goto ldv_6106;
  default:
  __bad_percpu_size();
  }
  ldv_6106: ;
  return (pfo_ret__ & 2147483647);
}
}
extern int debug_locks ;
extern int lock_is_held(struct lockdep_map * ) ;
extern void _raw_spin_unlock_irqrestore(raw_spinlock_t * , unsigned long ) ;
__inline static void ldv_spin_unlock_irqrestore_12(spinlock_t *lock , unsigned long flags )
{
  {
  _raw_spin_unlock_irqrestore(& lock->__annonCompField18.rlock, flags);
  return;
}
}
__inline static void spin_unlock_irqrestore(spinlock_t *lock , unsigned long flags ) ;
extern bool queue_work_on(int , struct workqueue_struct * , struct work_struct * ) ;
bool ldv_queue_work_on_15(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                          struct work_struct *ldv_func_arg3 ) ;
bool ldv_queue_work_on_17(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                          struct work_struct *ldv_func_arg3 ) ;
extern bool queue_delayed_work_on(int , struct workqueue_struct * , struct delayed_work * ,
                                  unsigned long ) ;
bool ldv_queue_delayed_work_on_16(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                  struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 ) ;
bool ldv_queue_delayed_work_on_19(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                  struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 ) ;
extern void flush_workqueue(struct workqueue_struct * ) ;
void ldv_flush_workqueue_18(struct workqueue_struct *ldv_func_arg1 ) ;
__inline static bool queue_work(struct workqueue_struct *wq , struct work_struct *work )
{
  bool tmp ;
  {
  tmp = ldv_queue_work_on_15(8192, wq, work);
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
void *ldv_kmem_cache_alloc_25(struct kmem_cache *ldv_func_arg1 , gfp_t flags ) ;
void ldv_check_alloc_flags(gfp_t flags ) ;
int ldv_state_variable_20 ;
struct ieee80211_vif *il4965_ops_group1 ;
int ldv_irq_1_3 = 0;
int LDV_IN_INTERRUPT = 1;
int ldv_irq_1_1 = 0;
struct il_priv *il4965_ops_group0 ;
struct il_tx_queue *il4965_ops_group2 ;
int ldv_irq_1_0 = 0;
int ldv_irq_1_2 = 0;
void call_and_disable_all_7(int state ) ;
void ldv_initialize_il_ops_20(void) ;
void activate_work_7(struct work_struct *work , int state ) ;
extern void dev_err(struct device const * , char const * , ...) ;
extern void dev_warn(struct device const * , char const * , ...) ;
extern void _dev_info(struct device const * , char const * , ...) ;
extern void __const_udelay(unsigned long ) ;
struct sk_buff *ldv_skb_clone_33(struct sk_buff *ldv_func_arg1 , gfp_t flags ) ;
struct sk_buff *ldv_skb_clone_41(struct sk_buff *ldv_func_arg1 , gfp_t flags ) ;
struct sk_buff *ldv_skb_copy_35(struct sk_buff const *ldv_func_arg1 , gfp_t flags ) ;
int ldv_pskb_expand_head_31(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                            gfp_t flags ) ;
int ldv_pskb_expand_head_39(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                            gfp_t flags ) ;
int ldv_pskb_expand_head_40(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                            gfp_t flags ) ;
struct sk_buff *ldv___netdev_alloc_skb_36(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                          gfp_t flags ) ;
struct sk_buff *ldv___netdev_alloc_skb_37(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                          gfp_t flags ) ;
struct sk_buff *ldv___netdev_alloc_skb_38(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                          gfp_t flags ) ;
extern u8 const *il_eeprom_query_addr(struct il_priv const * , size_t ) ;
extern u16 il_eeprom_query16(struct il_priv const * , size_t ) ;
extern struct il_channel_info const *il_get_channel_info(struct il_priv const * ,
                                                           enum ieee80211_band ,
                                                           u16 ) ;
void il4965_update_chain_flags(struct il_priv *il ) ;
__inline static int il_is_associated(struct il_priv *il )
{
  {
  return (((unsigned int )il->active.filter_flags & 32U) != 0U);
}
}
__inline static int il_is_any_associated(struct il_priv *il )
{
  int tmp ;
  {
  tmp = il_is_associated(il);
  return (tmp);
}
}
__inline static int il_is_channel_valid(struct il_channel_info const *ch_info )
{
  {
  if ((unsigned long )ch_info == (unsigned long )((struct il_channel_info const *)0)) {
    return (0);
  } else {
  }
  return ((int )ch_info->flags & 1);
}
}
__inline static int il_is_channel_radar(struct il_channel_info const *ch_info )
{
  {
  return (((int )ch_info->flags & 16) != 0);
}
}
extern void il_set_rxon_hwcrypto(struct il_priv * , int ) ;
extern int il_check_rxon_cmd(struct il_priv * ) ;
extern int il_full_rxon_required(struct il_priv * ) ;
extern void il_set_rxon_ht(struct il_priv * , struct il_ht_config * ) ;
extern void il_chswitch_done(struct il_priv * , bool ) ;
extern int il_set_tx_power(struct il_priv * , s8 , bool ) ;
extern int il_scan_cancel_timeout(struct il_priv * , unsigned long ) ;
extern int il_send_cmd(struct il_priv * , struct il_host_cmd * ) ;
extern int il_send_cmd_pdu(struct il_priv * , u8 , u16 , void const * ) ;
extern int il_send_cmd_pdu_async(struct il_priv * , u8 , u16 , void const * ,
                                 void (*)(struct il_priv * , struct il_device_cmd * ,
                                          struct il_rx_pkt * ) ) ;
extern u32 il_usecs_to_beacons(struct il_priv * , u32 , u32 ) ;
extern __le32 il_add_beacon_time(struct il_priv * , u32 , u32 , u32 ) ;
void il4965_dump_nic_error_log(struct il_priv *il ) ;
extern void il_print_rx_config_cmd(struct il_priv * ) ;
__inline static int il_is_alive(struct il_priv *il )
{
  int tmp ;
  {
  tmp = constant_test_bit(6L, (unsigned long const volatile *)(& il->status));
  return (tmp);
}
}
extern int il_apm_init(struct il_priv * ) ;
extern int il_send_rxon_timing(struct il_priv * ) ;
__inline static int il_send_rxon_assoc(struct il_priv *il )
{
  int tmp ;
  {
  tmp = (*((il->ops)->rxon_assoc))(il);
  return (tmp);
}
}
__inline static int il_commit_rxon(struct il_priv *il )
{
  int tmp ;
  {
  tmp = (*((il->ops)->commit_rxon))(il);
  return (tmp);
}
}
extern void il_set_bit(struct il_priv * , u32 , u32 ) ;
extern void il_clear_bit(struct il_priv * , u32 , u32 ) ;
extern bool _il_grab_nic_access(struct il_priv * ) ;
extern int _il_poll_bit(struct il_priv * , u32 , u32 , u32 , int ) ;
extern u32 il_rd_prph(struct il_priv * , u32 ) ;
extern void il_wr_prph(struct il_priv * , u32 , u32 ) ;
__inline static void _il_wr(struct il_priv *il , u32 ofs , u32 val )
{
  {
  writel(val, (void volatile *)il->hw_base + (unsigned long )ofs);
  return;
}
}
__inline static u32 _il_rd(struct il_priv *il , u32 ofs )
{
  unsigned int tmp ;
  {
  tmp = readl((void const volatile *)il->hw_base + (unsigned long )ofs);
  return (tmp);
}
}
__inline static void _il_clear_bit(struct il_priv *il , u32 reg , u32 mask )
{
  u32 tmp ;
  {
  tmp = _il_rd(il, reg);
  _il_wr(il, reg, tmp & ~ mask);
  return;
}
}
__inline static void _il_release_nic_access(struct il_priv *il )
{
  {
  _il_clear_bit(il, 36U, 8U);
  __asm__ volatile ("": : : "memory");
  return;
}
}
__inline static void il_wr(struct il_priv *il , u32 reg , u32 value )
{
  unsigned long reg_flags ;
  bool tmp ;
  long tmp___0 ;
  {
  ldv_spin_lock();
  tmp = _il_grab_nic_access(il);
  tmp___0 = ldv__builtin_expect((long )tmp, 1L);
  if (tmp___0 != 0L) {
    _il_wr(il, reg, value);
    _il_release_nic_access(il);
  } else {
  }
  spin_unlock_irqrestore(& il->reg_lock, reg_flags);
  return;
}
}
__inline static void _il_wr_prph(struct il_priv *il , u32 addr , u32 val )
{
  {
  _il_wr(il, 1092U, (addr & 65535U) | 50331648U);
  _il_wr(il, 1100U, val);
  return;
}
}
extern void il_restore_stations(struct il_priv * ) ;
extern void il_clear_ucode_stations(struct il_priv * ) ;
extern int il_power_update_mode(struct il_priv * , bool ) ;
extern u32 il_debug_level ;
__inline static u32 il_get_debug_level(struct il_priv *il )
{
  {
  if (il->debug_level != 0U) {
    return (il->debug_level);
  } else {
    return (il_debug_level);
  }
}
}
struct il_cfg il4965_cfg ;
struct il_ops const il4965_ops ;
struct il_mod_params il4965_mod_params ;
void il4965_set_rxon_chain(struct il_priv *il ) ;
int il4965_verify_ucode(struct il_priv *il ) ;
int il4965_dump_fh(struct il_priv *il , char **buf , bool display ) ;
void il4965_nic_config(struct il_priv *il ) ;
void il4965_hw_txq_free_tfd(struct il_priv *il , struct il_tx_queue *txq ) ;
int il4965_hw_txq_attach_buf_to_tfd(struct il_priv *il , struct il_tx_queue *txq ,
                                    dma_addr_t addr , u16 len , u8 reset , u8 pad ) ;
int il4965_hw_tx_queue_init(struct il_priv *il , struct il_tx_queue *txq ) ;
int il4965_request_scan(struct il_priv *il , struct ieee80211_vif *vif ) ;
int il4965_manage_ibss_station(struct il_priv *il , struct ieee80211_vif *vif , bool add ) ;
int il4965_send_beacon_cmd(struct il_priv *il ) ;
int il4965_restore_default_wep_keys(struct il_priv *il ) ;
int il4965_update_bcast_stations(struct il_priv *il ) ;
void il4965_eeprom_get_mac(struct il_priv const *il , u8 *mac ) ;
int il4965_eeprom_acquire_semaphore(struct il_priv *il ) ;
void il4965_eeprom_release_semaphore(struct il_priv *il ) ;
int il4965_eeprom_check_version(struct il_priv *il ) ;
void il4965_led_enable(struct il_priv *il ) ;
__inline static int il4965_hw_valid_rtc_data_addr(u32 addr )
{
  {
  return (addr > 8388607U && addr <= 8429567U);
}
}
void il4965_temperature_calib(struct il_priv *il ) ;
void il4965_init_sensitivity(struct il_priv *il ) ;
static int il4965_verify_inst_sparse(struct il_priv *il , __le32 *image , u32 len )
{
  u32 val ;
  int ret ;
  u32 errcnt ;
  u32 i ;
  int tmp ;
  u32 tmp___0 ;
  {
  ret = 0;
  errcnt = 0U;
  tmp___0 = il_get_debug_level(il);
  if ((int )tmp___0 & 1) {
    tmp = preempt_count();
    dev_err((struct device const *)(& ((il->hw)->wiphy)->dev), "%c %s ucode inst image size is %u\n",
            ((unsigned long )tmp & 2096896UL) != 0UL ? 73 : 85, "il4965_verify_inst_sparse",
            len);
  } else {
  }
  i = 0U;
  goto ldv_54322;
  ldv_54321:
  il_wr(il, 1036U, i);
  val = _il_rd(il, 1052U);
  if (*image != val) {
    ret = -5;
    errcnt = errcnt + 1U;
    if (errcnt > 2U) {
      goto ldv_54320;
    } else {
    }
  } else {
  }
  i = i + 100U;
  image = image + 25UL;
  ldv_54322: ;
  if (i < len) {
    goto ldv_54321;
  } else {
  }
  ldv_54320: ;
  return (ret);
}
}
static int il4965_verify_inst_full(struct il_priv *il , __le32 *image , u32 len )
{
  u32 val ;
  u32 save_len ;
  int ret ;
  u32 errcnt ;
  int tmp ;
  u32 tmp___0 ;
  int tmp___1 ;
  u32 tmp___2 ;
  {
  save_len = len;
  ret = 0;
  tmp___0 = il_get_debug_level(il);
  if ((int )tmp___0 & 1) {
    tmp = preempt_count();
    dev_err((struct device const *)(& ((il->hw)->wiphy)->dev), "%c %s ucode inst image size is %u\n",
            ((unsigned long )tmp & 2096896UL) != 0UL ? 73 : 85, "il4965_verify_inst_full",
            len);
  } else {
  }
  il_wr(il, 1036U, 0U);
  errcnt = 0U;
  goto ldv_54335;
  ldv_54334:
  val = _il_rd(il, 1052U);
  if (*image != val) {
    dev_err((struct device const *)(& (il->pci_dev)->dev), "uCode INST section is invalid at offset 0x%x, is 0x%x, s/b 0x%x\n",
            save_len - len, val, *image);
    ret = -5;
    errcnt = errcnt + 1U;
    if (errcnt > 19U) {
      goto ldv_54333;
    } else {
    }
  } else {
  }
  len = len - 4U;
  image = image + 1;
  ldv_54335: ;
  if (len != 0U) {
    goto ldv_54334;
  } else {
  }
  ldv_54333: ;
  if (errcnt == 0U) {
    tmp___2 = il_get_debug_level(il);
    if ((int )tmp___2 & 1) {
      tmp___1 = preempt_count();
      dev_err((struct device const *)(& ((il->hw)->wiphy)->dev), "%c %s ucode image in INSTRUCTION memory is good\n",
              ((unsigned long )tmp___1 & 2096896UL) != 0UL ? 73 : 85, "il4965_verify_inst_full");
    } else {
    }
  } else {
  }
  return (ret);
}
}
int il4965_verify_ucode(struct il_priv *il )
{
  __le32 *image ;
  u32 len ;
  int ret ;
  int tmp ;
  u32 tmp___0 ;
  int tmp___1 ;
  u32 tmp___2 ;
  int tmp___3 ;
  u32 tmp___4 ;
  {
  image = (__le32 *)il->ucode_boot.v_addr;
  len = il->ucode_boot.len;
  ret = il4965_verify_inst_sparse(il, image, len);
  if (ret == 0) {
    tmp___0 = il_get_debug_level(il);
    if ((int )tmp___0 & 1) {
      tmp = preempt_count();
      dev_err((struct device const *)(& ((il->hw)->wiphy)->dev), "%c %s Bootstrap uCode is good in inst SRAM\n",
              ((unsigned long )tmp & 2096896UL) != 0UL ? 73 : 85, "il4965_verify_ucode");
    } else {
    }
    return (0);
  } else {
  }
  image = (__le32 *)il->ucode_init.v_addr;
  len = il->ucode_init.len;
  ret = il4965_verify_inst_sparse(il, image, len);
  if (ret == 0) {
    tmp___2 = il_get_debug_level(il);
    if ((int )tmp___2 & 1) {
      tmp___1 = preempt_count();
      dev_err((struct device const *)(& ((il->hw)->wiphy)->dev), "%c %s Initialize uCode is good in inst SRAM\n",
              ((unsigned long )tmp___1 & 2096896UL) != 0UL ? 73 : 85, "il4965_verify_ucode");
    } else {
    }
    return (0);
  } else {
  }
  image = (__le32 *)il->ucode_code.v_addr;
  len = il->ucode_code.len;
  ret = il4965_verify_inst_sparse(il, image, len);
  if (ret == 0) {
    tmp___4 = il_get_debug_level(il);
    if ((int )tmp___4 & 1) {
      tmp___3 = preempt_count();
      dev_err((struct device const *)(& ((il->hw)->wiphy)->dev), "%c %s Runtime uCode is good in inst SRAM\n",
              ((unsigned long )tmp___3 & 2096896UL) != 0UL ? 73 : 85, "il4965_verify_ucode");
    } else {
    }
    return (0);
  } else {
  }
  dev_err((struct device const *)(& (il->pci_dev)->dev), "NO VALID UCODE IMAGE IN INSTRUCTION SRAM!!\n");
  image = (__le32 *)il->ucode_boot.v_addr;
  len = il->ucode_boot.len;
  ret = il4965_verify_inst_full(il, image, len);
  return (ret);
}
}
int il4965_eeprom_acquire_semaphore(struct il_priv *il )
{
  u16 count ;
  int ret ;
  {
  count = 0U;
  goto ldv_54349;
  ldv_54348:
  il_set_bit(il, 0U, 2097152U);
  ret = _il_poll_bit(il, 0U, 2097152U, 2097152U, 10);
  if (ret >= 0) {
    return (ret);
  } else {
  }
  count = (u16 )((int )count + 1);
  ldv_54349: ;
  if ((unsigned int )count <= 999U) {
    goto ldv_54348;
  } else {
  }
  return (ret);
}
}
void il4965_eeprom_release_semaphore(struct il_priv *il )
{
  {
  il_clear_bit(il, 0U, 2097152U);
  return;
}
}
int il4965_eeprom_check_version(struct il_priv *il )
{
  u16 eeprom_ver ;
  u16 calib_ver ;
  {
  eeprom_ver = il_eeprom_query16((struct il_priv const *)il, 136UL);
  calib_ver = il_eeprom_query16((struct il_priv const *)il, 364UL);
  if ((int )(il->cfg)->eeprom_ver > (int )eeprom_ver || (int )(il->cfg)->eeprom_calib_ver > (int )calib_ver) {
    goto err;
  } else {
  }
  _dev_info((struct device const *)(& (il->pci_dev)->dev), "device EEPROM VER=0x%x, CALIB=0x%x\n",
            (int )eeprom_ver, (int )calib_ver);
  return (0);
  err:
  dev_err((struct device const *)(& (il->pci_dev)->dev), "Unsupported (too old) EEPROM VER=0x%x < 0x%x CALIB=0x%x < 0x%x\n",
          (int )eeprom_ver, (int )(il->cfg)->eeprom_ver, (int )calib_ver, (int )(il->cfg)->eeprom_calib_ver);
  return (-22);
}
}
void il4965_eeprom_get_mac(struct il_priv const *il , u8 *mac )
{
  u8 const *addr ;
  u8 const *tmp ;
  {
  tmp = il_eeprom_query_addr(il, 42UL);
  addr = tmp;
  memcpy((void *)mac, (void const *)addr, 6UL);
  return;
}
}
static int il4965_send_led_cmd(struct il_priv *il , struct il_led_cmd *led_cmd )
{
  struct il_host_cmd cmd ;
  u32 reg ;
  int tmp ;
  {
  cmd.data = (void const *)led_cmd;
  cmd.reply_page = 0UL;
  cmd.callback = (void (*)(struct il_priv * , struct il_device_cmd * , struct il_rx_pkt * ))0;
  cmd.flags = 2U;
  cmd.len = 8U;
  cmd.id = 72U;
  reg = _il_rd(il, 148U);
  if ((reg & 4294967263U) != reg) {
    _il_wr(il, 148U, reg & 4294967263U);
  } else {
  }
  tmp = il_send_cmd(il, & cmd);
  return (tmp);
}
}
void il4965_led_enable(struct il_priv *il )
{
  {
  _il_wr(il, 148U, 120U);
  return;
}
}
static int il4965_send_tx_power(struct il_priv *il ) ;
static int il4965_hw_get_temperature(struct il_priv *il ) ;
static int il4965_verify_bsm(struct il_priv *il )
{
  __le32 *image ;
  u32 len ;
  u32 reg ;
  u32 val ;
  int tmp ;
  u32 tmp___0 ;
  int tmp___1 ;
  u32 tmp___2 ;
  {
  image = (__le32 *)il->ucode_boot.v_addr;
  len = il->ucode_boot.len;
  tmp___0 = il_get_debug_level(il);
  if ((int )tmp___0 & 1) {
    tmp = preempt_count();
    dev_err((struct device const *)(& ((il->hw)->wiphy)->dev), "%c %s Begin verify bsm\n",
            ((unsigned long )tmp & 2096896UL) != 0UL ? 73 : 85, "il4965_verify_bsm");
  } else {
  }
  val = il_rd_prph(il, 13324U);
  reg = 14336U;
  goto ldv_54387;
  ldv_54386:
  val = il_rd_prph(il, reg);
  if (*image != val) {
    dev_err((struct device const *)(& (il->pci_dev)->dev), "BSM uCode verification failed at addr 0x%08X+%u (of %u), is 0x%x, s/b 0x%x\n",
            14336, reg - 14336U, len, val, *image);
    return (-5);
  } else {
  }
  reg = reg + 4U;
  image = image + 1;
  ldv_54387: ;
  if (len + 14336U > reg) {
    goto ldv_54386;
  } else {
  }
  tmp___2 = il_get_debug_level(il);
  if ((int )tmp___2 & 1) {
    tmp___1 = preempt_count();
    dev_err((struct device const *)(& ((il->hw)->wiphy)->dev), "%c %s BSM bootstrap uCode image OK\n",
            ((unsigned long )tmp___1 & 2096896UL) != 0UL ? 73 : 85, "il4965_verify_bsm");
  } else {
  }
  return (0);
}
}
static int il4965_load_bsm(struct il_priv *il )
{
  __le32 *image ;
  u32 len ;
  dma_addr_t pinst ;
  dma_addr_t pdata ;
  u32 inst_len ;
  u32 data_len ;
  int i ;
  u32 done ;
  u32 reg_offset ;
  int ret ;
  int tmp ;
  u32 tmp___0 ;
  int tmp___1 ;
  u32 tmp___2 ;
  {
  image = (__le32 *)il->ucode_boot.v_addr;
  len = il->ucode_boot.len;
  tmp___0 = il_get_debug_level(il);
  if ((int )tmp___0 & 1) {
    tmp = preempt_count();
    dev_err((struct device const *)(& ((il->hw)->wiphy)->dev), "%c %s Begin load bsm\n",
            ((unsigned long )tmp & 2096896UL) != 0UL ? 73 : 85, "il4965_load_bsm");
  } else {
  }
  il->ucode_type = 2;
  if (len > 1024U) {
    return (-22);
  } else {
  }
  pinst = il->ucode_init.p_addr >> 4;
  pdata = il->ucode_init_data.p_addr >> 4;
  inst_len = il->ucode_init.len;
  data_len = il->ucode_init_data.len;
  il_wr_prph(il, 13456U, (u32 )pinst);
  il_wr_prph(il, 13464U, (u32 )pdata);
  il_wr_prph(il, 13460U, inst_len);
  il_wr_prph(il, 13468U, data_len);
  reg_offset = 14336U;
  goto ldv_54404;
  ldv_54403:
  _il_wr_prph(il, reg_offset, *image);
  reg_offset = reg_offset + 4U;
  image = image + 1;
  ldv_54404: ;
  if (len + 14336U > reg_offset) {
    goto ldv_54403;
  } else {
  }
  ret = il4965_verify_bsm(il);
  if (ret != 0) {
    return (ret);
  } else {
  }
  il_wr_prph(il, 13316U, 0U);
  il_wr_prph(il, 13320U, 0U);
  il_wr_prph(il, 13324U, len / 4U);
  il_wr_prph(il, 13312U, 2147483648U);
  i = 0;
  goto ldv_54408;
  ldv_54407:
  done = il_rd_prph(il, 13312U);
  if ((int )done >= 0) {
    goto ldv_54406;
  } else {
  }
  __const_udelay(42950UL);
  i = i + 1;
  ldv_54408: ;
  if (i <= 99) {
    goto ldv_54407;
  } else {
  }
  ldv_54406: ;
  if (i <= 99) {
    tmp___2 = il_get_debug_level(il);
    if ((int )tmp___2 & 1) {
      tmp___1 = preempt_count();
      dev_err((struct device const *)(& ((il->hw)->wiphy)->dev), "%c %s BSM write complete, poll %d iterations\n",
              ((unsigned long )tmp___1 & 2096896UL) != 0UL ? 73 : 85, "il4965_load_bsm",
              i);
    } else {
    }
  } else {
    dev_err((struct device const *)(& (il->pci_dev)->dev), "BSM write did not complete!\n");
    return (-5);
  }
  il_wr_prph(il, 13312U, 1073741824U);
  return (0);
}
}
static int il4965_set_ucode_ptrs(struct il_priv *il )
{
  dma_addr_t pinst ;
  dma_addr_t pdata ;
  int ret ;
  int tmp ;
  u32 tmp___0 ;
  {
  ret = 0;
  pinst = il->ucode_code.p_addr >> 4;
  pdata = il->ucode_data_backup.p_addr >> 4;
  il_wr_prph(il, 13456U, (u32 )pinst);
  il_wr_prph(il, 13464U, (u32 )pdata);
  il_wr_prph(il, 13468U, il->ucode_data.len);
  il_wr_prph(il, 13460U, il->ucode_code.len | 2147483648U);
  tmp___0 = il_get_debug_level(il);
  if ((int )tmp___0 & 1) {
    tmp = preempt_count();
    dev_err((struct device const *)(& ((il->hw)->wiphy)->dev), "%c %s Runtime uCode pointers are set.\n",
            ((unsigned long )tmp & 2096896UL) != 0UL ? 73 : 85, "il4965_set_ucode_ptrs");
  } else {
  }
  return (ret);
}
}
static void il4965_init_alive_start(struct il_priv *il )
{
  int tmp ;
  u32 tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  u32 tmp___3 ;
  int tmp___4 ;
  u32 tmp___5 ;
  int tmp___6 ;
  {
  tmp___1 = il4965_verify_ucode(il);
  if (tmp___1 != 0) {
    tmp___0 = il_get_debug_level(il);
    if ((int )tmp___0 & 1) {
      tmp = preempt_count();
      dev_err((struct device const *)(& ((il->hw)->wiphy)->dev), "%c %s Bad \"initialize\" uCode load.\n",
              ((unsigned long )tmp & 2096896UL) != 0UL ? 73 : 85, "il4965_init_alive_start");
    } else {
    }
    goto restart;
  } else {
  }
  il->temperature = il4965_hw_get_temperature(il);
  tmp___3 = il_get_debug_level(il);
  if ((int )tmp___3 & 1) {
    tmp___2 = preempt_count();
    dev_err((struct device const *)(& ((il->hw)->wiphy)->dev), "%c %s Initialization Alive received.\n",
            ((unsigned long )tmp___2 & 2096896UL) != 0UL ? 73 : 85, "il4965_init_alive_start");
  } else {
  }
  tmp___6 = il4965_set_ucode_ptrs(il);
  if (tmp___6 != 0) {
    tmp___5 = il_get_debug_level(il);
    if ((int )tmp___5 & 1) {
      tmp___4 = preempt_count();
      dev_err((struct device const *)(& ((il->hw)->wiphy)->dev), "%c %s Couldn\'t set up uCode pointers.\n",
              ((unsigned long )tmp___4 & 2096896UL) != 0UL ? 73 : 85, "il4965_init_alive_start");
    } else {
    }
    goto restart;
  } else {
  }
  return;
  restart:
  queue_work(il->workqueue, & il->restart);
  return;
}
}
static bool iw4965_is_ht40_channel(__le32 rxon_flags )
{
  int chan_mod ;
  {
  chan_mod = (int )((rxon_flags & 100663296U) >> 25);
  return ((bool )(chan_mod == 1 || chan_mod == 2));
}
}
void il4965_nic_config(struct il_priv *il )
{
  unsigned long flags ;
  u16 radio_cfg ;
  u8 const *tmp ;
  {
  ldv_spin_lock();
  radio_cfg = il_eeprom_query16((struct il_priv const *)il, 144UL);
  if (((int )radio_cfg & 3) == 1) {
    il_set_bit(il, 0U, (u32 )(((int )radio_cfg | ((int )radio_cfg >> 2)) | ((int )radio_cfg >> 4)) & 3U);
  } else {
  }
  il_set_bit(il, 0U, 768U);
  tmp = il_eeprom_query_addr((struct il_priv const *)il, 464UL);
  il->calib_info = (struct il_eeprom_calib_info *)tmp;
  spin_unlock_irqrestore(& il->lock, flags);
  return;
}
}
static void il4965_chain_noise_reset(struct il_priv *il )
{
  struct il_chain_noise_data *data ;
  struct il_calib_diff_gain_cmd cmd ;
  int tmp ;
  int tmp___0 ;
  u32 tmp___1 ;
  int tmp___2 ;
  {
  data = & il->chain_noise_data;
  if ((unsigned int )data->state == 0U) {
    tmp___2 = il_is_any_associated(il);
    if (tmp___2 != 0) {
      data->chain_noise_a = 0U;
      data->chain_noise_b = 0U;
      data->chain_noise_c = 0U;
      data->chain_signal_a = 0U;
      data->chain_signal_b = 0U;
      data->chain_signal_c = 0U;
      data->beacon_count = 0U;
      memset((void *)(& cmd), 0, 8UL);
      cmd.hdr.op_code = 7U;
      cmd.diff_gain_a = 0;
      cmd.diff_gain_b = 0;
      cmd.diff_gain_c = 0;
      tmp = il_send_cmd_pdu(il, 176, 8, (void const *)(& cmd));
      if (tmp != 0) {
        dev_err((struct device const *)(& (il->pci_dev)->dev), "Could not send C_PHY_CALIBRATION\n");
      } else {
      }
      data->state = 1U;
      tmp___1 = il_get_debug_level(il);
      if ((tmp___1 & 2097152U) != 0U) {
        tmp___0 = preempt_count();
        dev_err((struct device const *)(& ((il->hw)->wiphy)->dev), "%c %s Run chain_noise_calibrate\n",
                ((unsigned long )tmp___0 & 2096896UL) != 0UL ? 73 : 85, "il4965_chain_noise_reset");
      } else {
      }
    } else {
    }
  } else {
  }
  return;
}
}
static s32 il4965_math_div_round(s32 num , s32 denom , s32 *res )
{
  s32 sign ;
  {
  sign = 1;
  if (num < 0) {
    sign = - sign;
    num = - num;
  } else {
  }
  if (denom < 0) {
    sign = - sign;
    denom = - denom;
  } else {
  }
  *res = 1;
  *res = ((num * 2 + denom) / (denom * 2)) * sign;
  return (1);
}
}
static s32 il4965_get_voltage_compensation(s32 eeprom_voltage , s32 current_voltage )
{
  s32 comp ;
  {
  comp = 0;
  if (eeprom_voltage == -10000 || current_voltage == -10000) {
    return (0);
  } else {
  }
  il4965_math_div_round(current_voltage - eeprom_voltage, 7, & comp);
  if (current_voltage > eeprom_voltage) {
    comp = comp * 2;
  } else {
  }
  if (comp < -2 || comp > 2) {
    comp = 0;
  } else {
  }
  return (comp);
}
}
static s32 il4965_get_tx_atten_grp(u16 channel )
{
  {
  if ((unsigned int )channel != 0U && (unsigned int )channel <= 20U) {
    return (4);
  } else {
  }
  if ((unsigned int )channel > 33U && (unsigned int )channel <= 43U) {
    return (0);
  } else {
  }
  if ((unsigned int )channel > 43U && (unsigned int )channel <= 70U) {
    return (1);
  } else {
  }
  if ((unsigned int )channel > 70U && (unsigned int )channel <= 124U) {
    return (2);
  } else {
  }
  if ((unsigned int )channel > 124U && (unsigned int )channel <= 200U) {
    return (3);
  } else {
  }
  return (-22);
}
}
static u32 il4965_get_sub_band(struct il_priv const *il , u32 channel )
{
  s32 b ;
  {
  b = -1;
  b = 0;
  goto ldv_54458;
  ldv_54457: ;
  if ((unsigned int )(il->calib_info)->band_info[b].ch_from == 0U) {
    goto ldv_54455;
  } else {
  }
  if ((u32 )(il->calib_info)->band_info[b].ch_from <= channel && (u32 )(il->calib_info)->band_info[b].ch_to >= channel) {
    goto ldv_54456;
  } else {
  }
  ldv_54455:
  b = b + 1;
  ldv_54458: ;
  if (b <= 7) {
    goto ldv_54457;
  } else {
  }
  ldv_54456: ;
  return ((u32 )b);
}
}
static s32 il4965_interpolate_value(s32 x , s32 x1 , s32 y1 , s32 x2 , s32 y2 )
{
  s32 val ;
  {
  if (x2 == x1) {
    return (y1);
  } else {
    il4965_math_div_round((x2 - x) * (y1 - y2), x2 - x1, & val);
    return (val + y2);
  }
}
}
static int il4965_interpolate_chan(struct il_priv *il , u32 channel , struct il_eeprom_calib_ch_info *chan_info )
{
  s32 s ;
  u32 c ;
  u32 m ;
  struct il_eeprom_calib_measure const *m1 ;
  struct il_eeprom_calib_measure const *m2 ;
  struct il_eeprom_calib_measure *omeas ;
  u32 ch_i1 ;
  u32 ch_i2 ;
  u32 tmp ;
  int tmp___0 ;
  u32 tmp___1 ;
  s32 tmp___2 ;
  s32 tmp___3 ;
  s32 tmp___4 ;
  s32 tmp___5 ;
  int tmp___6 ;
  u32 tmp___7 ;
  int tmp___8 ;
  u32 tmp___9 ;
  int tmp___10 ;
  u32 tmp___11 ;
  int tmp___12 ;
  u32 tmp___13 ;
  {
  s = -1;
  tmp = il4965_get_sub_band((struct il_priv const *)il, channel);
  s = (s32 )tmp;
  if (s > 7) {
    dev_err((struct device const *)(& (il->pci_dev)->dev), "Tx Power can not find channel %d\n",
            channel);
    return (-1);
  } else {
  }
  ch_i1 = (u32 )(il->calib_info)->band_info[s].ch1.ch_num;
  ch_i2 = (u32 )(il->calib_info)->band_info[s].ch2.ch_num;
  chan_info->ch_num = (unsigned char )channel;
  tmp___1 = il_get_debug_level(il);
  if ((tmp___1 & 16384U) != 0U) {
    tmp___0 = preempt_count();
    dev_err((struct device const *)(& ((il->hw)->wiphy)->dev), "%c %s channel %d subband %d factory cal ch %d & %d\n",
            ((unsigned long )tmp___0 & 2096896UL) != 0UL ? 73 : 85, "il4965_interpolate_chan",
            channel, s, ch_i1, ch_i2);
  } else {
  }
  c = 0U;
  goto ldv_54485;
  ldv_54484:
  m = 0U;
  goto ldv_54482;
  ldv_54481:
  m1 = (struct il_eeprom_calib_measure const *)(& (il->calib_info)->band_info[s].ch1.measurements) + ((unsigned long )c + (unsigned long )m);
  m2 = (struct il_eeprom_calib_measure const *)(& (il->calib_info)->band_info[s].ch2.measurements) + ((unsigned long )c + (unsigned long )m);
  omeas = (struct il_eeprom_calib_measure *)(& chan_info->measurements) + ((unsigned long )c + (unsigned long )m);
  tmp___2 = il4965_interpolate_value((s32 )channel, (s32 )ch_i1, (s32 )m1->actual_pow,
                                     (s32 )ch_i2, (s32 )m2->actual_pow);
  omeas->actual_pow = (unsigned char )tmp___2;
  tmp___3 = il4965_interpolate_value((s32 )channel, (s32 )ch_i1, (s32 )m1->gain_idx,
                                     (s32 )ch_i2, (s32 )m2->gain_idx);
  omeas->gain_idx = (unsigned char )tmp___3;
  tmp___4 = il4965_interpolate_value((s32 )channel, (s32 )ch_i1, (s32 )m1->temperature,
                                     (s32 )ch_i2, (s32 )m2->temperature);
  omeas->temperature = (unsigned char )tmp___4;
  tmp___5 = il4965_interpolate_value((s32 )channel, (s32 )ch_i1, (s32 )m1->pa_det,
                                     (s32 )ch_i2, (s32 )m2->pa_det);
  omeas->pa_det = (signed char )tmp___5;
  tmp___7 = il_get_debug_level(il);
  if ((tmp___7 & 16384U) != 0U) {
    tmp___6 = preempt_count();
    dev_err((struct device const *)(& ((il->hw)->wiphy)->dev), "%c %s chain %d meas %d AP1=%d AP2=%d AP=%d\n",
            ((unsigned long )tmp___6 & 2096896UL) != 0UL ? 73 : 85, "il4965_interpolate_chan",
            c, m, (int )m1->actual_pow, (int )m2->actual_pow, (int )omeas->actual_pow);
  } else {
  }
  tmp___9 = il_get_debug_level(il);
  if ((tmp___9 & 16384U) != 0U) {
    tmp___8 = preempt_count();
    dev_err((struct device const *)(& ((il->hw)->wiphy)->dev), "%c %s chain %d meas %d NI1=%d NI2=%d NI=%d\n",
            ((unsigned long )tmp___8 & 2096896UL) != 0UL ? 73 : 85, "il4965_interpolate_chan",
            c, m, (int )m1->gain_idx, (int )m2->gain_idx, (int )omeas->gain_idx);
  } else {
  }
  tmp___11 = il_get_debug_level(il);
  if ((tmp___11 & 16384U) != 0U) {
    tmp___10 = preempt_count();
    dev_err((struct device const *)(& ((il->hw)->wiphy)->dev), "%c %s chain %d meas %d PA1=%d PA2=%d PA=%d\n",
            ((unsigned long )tmp___10 & 2096896UL) != 0UL ? 73 : 85, "il4965_interpolate_chan",
            c, m, (int )m1->pa_det, (int )m2->pa_det, (int )omeas->pa_det);
  } else {
  }
  tmp___13 = il_get_debug_level(il);
  if ((tmp___13 & 16384U) != 0U) {
    tmp___12 = preempt_count();
    dev_err((struct device const *)(& ((il->hw)->wiphy)->dev), "%c %s chain %d meas %d  T1=%d  T2=%d  T=%d\n",
            ((unsigned long )tmp___12 & 2096896UL) != 0UL ? 73 : 85, "il4965_interpolate_chan",
            c, m, (int )m1->temperature, (int )m2->temperature, (int )omeas->temperature);
  } else {
  }
  m = m + 1U;
  ldv_54482: ;
  if (m <= 2U) {
    goto ldv_54481;
  } else {
  }
  c = c + 1U;
  ldv_54485: ;
  if (c <= 1U) {
    goto ldv_54484;
  } else {
  }
  return (0);
}
}
static s32 back_off_table[33U] =
  { 10, 10, 10, 10,
        10, 15, 17, 20,
        10, 10, 10, 10,
        10, 15, 17, 20,
        10, 10, 10, 10,
        10, 15, 17, 20,
        10, 10, 10, 10,
        10, 15, 17, 20,
        10};
static struct il4965_txpower_comp_entry tx_power_cmp_tble[5U] = { {9, 2},
        {4, 1},
        {4, 1},
        {4, 1},
        {3, 1}};
static s32 get_min_power_idx(s32 rate_power_idx , u32 band )
{
  {
  if (band == 0U) {
    if ((rate_power_idx & 7) <= 4) {
      return (-9);
    } else {
    }
  } else {
  }
  return (0);
}
}
static struct gain_entry const gain_table[2U][108U] = { { {123U, 63U},
            {117U, 63U},
            {110U, 63U},
            {104U, 63U},
            {98U, 63U},
            {110U, 62U},
            {104U, 62U},
            {98U, 62U},
            {110U, 61U},
            {104U, 61U},
            {98U, 61U},
            {110U, 60U},
            {104U, 60U},
            {98U, 60U},
            {110U, 59U},
            {104U, 59U},
            {98U, 59U},
            {110U, 58U},
            {104U, 58U},
            {98U, 58U},
            {110U, 57U},
            {104U, 57U},
            {98U, 57U},
            {110U, 56U},
            {104U, 56U},
            {98U, 56U},
            {110U, 55U},
            {104U, 55U},
            {98U, 55U},
            {110U, 54U},
            {104U, 54U},
            {98U, 54U},
            {110U, 53U},
            {104U, 53U},
            {98U, 53U},
            {110U, 52U},
            {104U, 52U},
            {98U, 52U},
            {110U, 51U},
            {104U, 51U},
            {98U, 51U},
            {110U, 50U},
            {104U, 50U},
            {98U, 50U},
            {110U, 49U},
            {104U, 49U},
            {98U, 49U},
            {110U, 48U},
            {104U, 48U},
            {98U, 48U},
            {110U, 37U},
            {104U, 37U},
            {98U, 37U},
            {110U, 36U},
            {104U, 36U},
            {98U, 36U},
            {110U, 35U},
            {104U, 35U},
            {98U, 35U},
            {110U, 34U},
            {104U, 24U},
            {98U, 24U},
            {110U, 23U},
            {104U, 23U},
            {98U, 23U},
            {110U, 22U},
            {104U, 22U},
            {98U, 22U},
            {110U, 21U},
            {104U, 21U},
            {98U, 21U},
            {110U, 20U},
            {104U, 20U},
            {98U, 20U},
            {110U, 19U},
            {104U, 19U},
            {98U, 19U},
            {110U, 18U},
            {104U, 8U},
            {98U, 8U},
            {110U, 7U},
            {104U, 7U},
            {98U, 7U},
            {110U, 6U},
            {104U, 6U},
            {98U, 6U},
            {110U, 5U},
            {104U, 5U},
            {98U, 5U},
            {110U, 4U},
            {104U, 4U},
            {98U, 4U},
            {110U, 3U},
            {104U, 3U},
            {98U, 3U},
            {110U, 2U},
            {104U, 2U},
            {98U, 2U},
            {110U, 1U},
            {104U, 1U},
            {98U, 1U},
            {110U, 0U},
            {104U, 0U},
            {98U, 0U},
            {93U, 0U},
            {88U, 0U},
            {83U, 0U},
            {78U, 0U}},
   { {110U, 63U},
            {104U, 63U},
            {98U, 63U},
            {110U, 62U},
            {104U, 62U},
            {98U, 62U},
            {110U, 61U},
            {104U, 61U},
            {98U, 61U},
            {110U, 60U},
            {104U, 60U},
            {98U, 60U},
            {110U, 59U},
            {104U, 59U},
            {98U, 59U},
            {110U, 58U},
            {104U, 58U},
            {98U, 58U},
            {110U, 57U},
            {104U, 57U},
            {98U, 57U},
            {110U, 56U},
            {104U, 56U},
            {98U, 56U},
            {110U, 55U},
            {104U, 55U},
            {98U, 55U},
            {110U, 54U},
            {104U, 54U},
            {98U, 54U},
            {110U, 53U},
            {104U, 53U},
            {98U, 53U},
            {110U, 52U},
            {104U, 52U},
            {98U, 52U},
            {110U, 51U},
            {104U, 51U},
            {98U, 51U},
            {110U, 50U},
            {104U, 50U},
            {98U, 50U},
            {110U, 49U},
            {104U, 49U},
            {98U, 49U},
            {110U, 48U},
            {104U, 48U},
            {98U, 48U},
            {110U, 6U},
            {104U, 6U},
            {98U, 6U},
            {110U, 5U},
            {104U, 5U},
            {98U, 5U},
            {110U, 4U},
            {104U, 4U},
            {98U, 4U},
            {110U, 3U},
            {104U, 3U},
            {98U, 3U},
            {110U, 2U},
            {104U, 2U},
            {98U, 2U},
            {110U, 1U},
            {104U, 1U},
            {98U, 1U},
            {110U, 0U},
            {104U, 0U},
            {98U, 0U},
            {97U, 0U},
            {96U, 0U},
            {95U, 0U},
            {94U, 0U},
            {93U, 0U},
            {92U, 0U},
            {91U, 0U},
            {90U, 0U},
            {89U, 0U},
            {88U, 0U},
            {87U, 0U},
            {86U, 0U},
            {85U, 0U},
            {84U, 0U},
            {83U, 0U},
            {82U, 0U},
            {81U, 0U},
            {80U, 0U},
            {79U, 0U},
            {78U, 0U},
            {77U, 0U},
            {76U, 0U},
            {75U, 0U},
            {74U, 0U},
            {73U, 0U},
            {72U, 0U},
            {71U, 0U},
            {70U, 0U},
            {69U, 0U},
            {68U, 0U},
            {67U, 0U},
            {66U, 0U},
            {65U, 0U},
            {64U, 0U},
            {63U, 0U},
            {62U, 0U},
            {61U, 0U},
            {60U, 0U},
            {59U, 0U}}};
static int il4965_fill_txpower_tbl(struct il_priv *il , u8 band , u16 channel , u8 is_ht40 ,
                                   u8 ctrl_chan_high , struct il4965_tx_power_db *tx_power_tbl )
{
  u8 saturation_power ;
  s32 target_power ;
  s32 user_target_power ;
  s32 power_limit ;
  s32 current_temp ;
  s32 reg_limit ;
  s32 current_regulatory ;
  s32 txatten_grp ;
  int i ;
  int c ;
  struct il_channel_info const *ch_info ;
  struct il_eeprom_calib_ch_info ch_eeprom_info ;
  struct il_eeprom_calib_measure const *measurement ;
  s16 voltage ;
  s32 init_voltage ;
  s32 voltage_compensation ;
  s32 degrees_per_05db_num ;
  s32 degrees_per_05db_denom ;
  s32 factory_temp ;
  s32 temperature_comp[2U] ;
  s32 factory_gain_idx[2U] ;
  s32 factory_actual_pwr[2U] ;
  s32 power_idx ;
  int tmp ;
  u32 tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  u32 tmp___3 ;
  int tmp___4 ;
  u32 tmp___5 ;
  s32 _max1 ;
  int _max2 ;
  s32 _min1 ;
  int _min2 ;
  int tmp___6 ;
  u32 tmp___7 ;
  int tmp___8 ;
  u32 tmp___9 ;
  int tmp___10 ;
  u32 tmp___11 ;
  u8 is_mimo_rate ;
  union il4965_tx_power_dual_stream tx_power ;
  int tmp___12 ;
  u32 tmp___13 ;
  s32 atten_value ;
  s32 tmp___14 ;
  int tmp___15 ;
  u32 tmp___16 ;
  {
  txatten_grp = 5;
  ch_info = (struct il_channel_info const *)0;
  user_target_power = (int )il->tx_power_user_lmt * 2;
  tmp___0 = il_get_debug_level(il);
  if ((tmp___0 & 16384U) != 0U) {
    tmp = preempt_count();
    dev_err((struct device const *)(& ((il->hw)->wiphy)->dev), "%c %s chan %d band %d is_ht40 %d\n",
            ((unsigned long )tmp & 2096896UL) != 0UL ? 73 : 85, "il4965_fill_txpower_tbl",
            (int )channel, (int )band, (int )is_ht40);
  } else {
  }
  ch_info = il_get_channel_info((struct il_priv const *)il, il->band, (int )channel);
  tmp___1 = il_is_channel_valid(ch_info);
  if (tmp___1 == 0) {
    return (-22);
  } else {
  }
  txatten_grp = il4965_get_tx_atten_grp((int )channel);
  if (txatten_grp < 0) {
    dev_err((struct device const *)(& (il->pci_dev)->dev), "Can\'t find txatten group for channel %d.\n",
            (int )channel);
    return (txatten_grp);
  } else {
  }
  tmp___3 = il_get_debug_level(il);
  if ((tmp___3 & 16384U) != 0U) {
    tmp___2 = preempt_count();
    dev_err((struct device const *)(& ((il->hw)->wiphy)->dev), "%c %s channel %d belongs to txatten group %d\n",
            ((unsigned long )tmp___2 & 2096896UL) != 0UL ? 73 : 85, "il4965_fill_txpower_tbl",
            (int )channel, txatten_grp);
  } else {
  }
  if ((unsigned int )is_ht40 != 0U) {
    if ((unsigned int )ctrl_chan_high != 0U) {
      channel = (unsigned int )channel + 65534U;
    } else {
      channel = (unsigned int )channel + 2U;
    }
  } else {
  }
  if ((unsigned int )band != 0U) {
    saturation_power = (il->calib_info)->saturation_power24;
  } else {
    saturation_power = (il->calib_info)->saturation_power52;
  }
  if ((unsigned int )saturation_power <= 19U || (unsigned int )saturation_power > 50U) {
    if ((unsigned int )band != 0U) {
      saturation_power = 38U;
    } else {
      saturation_power = 38U;
    }
  } else {
  }
  if ((unsigned int )is_ht40 != 0U) {
    reg_limit = (int )ch_info->ht40_max_power_avg * 2;
  } else {
    reg_limit = (int )ch_info->max_power_avg * 2;
  }
  if (reg_limit < 0 || reg_limit > 34) {
    if ((unsigned int )band != 0U) {
      reg_limit = 34;
    } else {
      reg_limit = 34;
    }
  } else {
  }
  il4965_interpolate_chan(il, (u32 )channel, & ch_eeprom_info);
  voltage = (s16 )(il->calib_info)->voltage;
  init_voltage = (int )il->card_alive_init.voltage;
  voltage_compensation = il4965_get_voltage_compensation((s32 )voltage, init_voltage);
  tmp___5 = il_get_debug_level(il);
  if ((tmp___5 & 16384U) != 0U) {
    tmp___4 = preempt_count();
    dev_err((struct device const *)(& ((il->hw)->wiphy)->dev), "%c %s curr volt %d eeprom volt %d volt comp %d\n",
            ((unsigned long )tmp___4 & 2096896UL) != 0UL ? 73 : 85, "il4965_fill_txpower_tbl",
            init_voltage, (int )voltage, voltage_compensation);
  } else {
  }
  _max1 = il->temperature;
  _max2 = 263;
  current_temp = _max1 > _max2 ? _max1 : _max2;
  _min1 = il->temperature;
  _min2 = 410;
  current_temp = _min1 < _min2 ? _min1 : _min2;
  current_temp = current_temp + -273;
  degrees_per_05db_num = tx_power_cmp_tble[txatten_grp].degrees_per_05db_a;
  degrees_per_05db_denom = tx_power_cmp_tble[txatten_grp].degrees_per_05db_a_denom;
  c = 0;
  goto ldv_54539;
  ldv_54538:
  measurement = (struct il_eeprom_calib_measure const *)(& ch_eeprom_info.measurements) + ((unsigned long )c + 1UL);
  factory_temp = (s32 )measurement->temperature;
  il4965_math_div_round((current_temp - factory_temp) * degrees_per_05db_denom, degrees_per_05db_num,
                        (s32 *)(& temperature_comp) + (unsigned long )c);
  factory_gain_idx[c] = (s32 )measurement->gain_idx;
  factory_actual_pwr[c] = (s32 )measurement->actual_pow;
  tmp___7 = il_get_debug_level(il);
  if ((tmp___7 & 16384U) != 0U) {
    tmp___6 = preempt_count();
    dev_err((struct device const *)(& ((il->hw)->wiphy)->dev), "%c %s chain = %d\n",
            ((unsigned long )tmp___6 & 2096896UL) != 0UL ? 73 : 85, "il4965_fill_txpower_tbl",
            c);
  } else {
  }
  tmp___9 = il_get_debug_level(il);
  if ((tmp___9 & 16384U) != 0U) {
    tmp___8 = preempt_count();
    dev_err((struct device const *)(& ((il->hw)->wiphy)->dev), "%c %s fctry tmp %d, curr tmp %d, comp %d steps\n",
            ((unsigned long )tmp___8 & 2096896UL) != 0UL ? 73 : 85, "il4965_fill_txpower_tbl",
            factory_temp, current_temp, temperature_comp[c]);
  } else {
  }
  tmp___11 = il_get_debug_level(il);
  if ((tmp___11 & 16384U) != 0U) {
    tmp___10 = preempt_count();
    dev_err((struct device const *)(& ((il->hw)->wiphy)->dev), "%c %s fctry idx %d, fctry pwr %d\n",
            ((unsigned long )tmp___10 & 2096896UL) != 0UL ? 73 : 85, "il4965_fill_txpower_tbl",
            factory_gain_idx[c], factory_actual_pwr[c]);
  } else {
  }
  c = c + 1;
  ldv_54539: ;
  if (c <= 1) {
    goto ldv_54538;
  } else {
  }
  i = 0;
  goto ldv_54548;
  ldv_54547: ;
  if ((i & 8) != 0) {
    current_regulatory = reg_limit + -6;
    is_mimo_rate = 1U;
  } else {
    current_regulatory = reg_limit;
    is_mimo_rate = 0U;
  }
  power_limit = (s32 )saturation_power - back_off_table[i];
  if (power_limit > current_regulatory) {
    power_limit = current_regulatory;
  } else {
  }
  target_power = user_target_power;
  if (target_power > power_limit) {
    target_power = power_limit;
  } else {
  }
  tmp___13 = il_get_debug_level(il);
  if ((tmp___13 & 16384U) != 0U) {
    tmp___12 = preempt_count();
    dev_err((struct device const *)(& ((il->hw)->wiphy)->dev), "%c %s rate %d sat %d reg %d usr %d tgt %d\n",
            ((unsigned long )tmp___12 & 2096896UL) != 0UL ? 73 : 85, "il4965_fill_txpower_tbl",
            i, (s32 )saturation_power - back_off_table[i], current_regulatory, user_target_power,
            target_power);
  } else {
  }
  c = 0;
  goto ldv_54545;
  ldv_54544: ;
  if ((unsigned int )is_mimo_rate != 0U) {
    atten_value = (int )il->card_alive_init.tx_atten[txatten_grp][c];
  } else {
    atten_value = 0;
  }
  power_idx = ((((int )((unsigned char )factory_gain_idx[c]) + ((int )((unsigned char )factory_actual_pwr[c]) - (int )((unsigned char )target_power))) - (int )((unsigned char )temperature_comp[c])) - (int )((unsigned char )voltage_compensation)) + (int )((unsigned char )atten_value);
  tmp___14 = get_min_power_idx(i, (u32 )band);
  if (tmp___14 > power_idx) {
    power_idx = get_min_power_idx(i, (u32 )band);
  } else {
  }
  if ((unsigned int )band == 0U) {
    power_idx = power_idx + 9;
  } else {
  }
  if (i == 32) {
    power_idx = power_idx + 5;
  } else {
  }
  if (power_idx > 107) {
    dev_warn((struct device const *)(& (il->pci_dev)->dev), "txpower idx %d > 107\n",
             power_idx);
    power_idx = 107;
  } else {
  }
  if (power_idx < 0) {
    dev_warn((struct device const *)(& (il->pci_dev)->dev), "txpower idx %d < 0\n",
             power_idx);
    power_idx = 0;
  } else {
  }
  tx_power.s.radio_tx_gain[c] = gain_table[(int )band][power_idx].radio;
  tx_power.s.dsp_predis_atten[c] = gain_table[(int )band][power_idx].dsp;
  tmp___16 = il_get_debug_level(il);
  if ((tmp___16 & 16384U) != 0U) {
    tmp___15 = preempt_count();
    dev_err((struct device const *)(& ((il->hw)->wiphy)->dev), "%c %s chain %d mimo %d idx %d gain 0x%02x dsp %d\n",
            ((unsigned long )tmp___15 & 2096896UL) != 0UL ? 73 : 85, "il4965_fill_txpower_tbl",
            c, atten_value, power_idx, (int )tx_power.s.radio_tx_gain[c], (int )tx_power.s.dsp_predis_atten[c]);
  } else {
  }
  c = c + 1;
  ldv_54545: ;
  if (c <= 1) {
    goto ldv_54544;
  } else {
  }
  tx_power_tbl->power_tbl[i].dw = tx_power.dw;
  i = i + 1;
  ldv_54548: ;
  if (i <= 32) {
    goto ldv_54547;
  } else {
  }
  return (0);
}
}
static int il4965_send_tx_power(struct il_priv *il )
{
  struct il4965_txpowertable_cmd cmd ;
  int ret ;
  u8 band ;
  bool is_ht40 ;
  u8 ctrl_chan_high ;
  bool __warned ;
  int __ret_warn_once ;
  int tmp ;
  int __ret_warn_on ;
  long tmp___0 ;
  long tmp___1 ;
  long tmp___2 ;
  long tmp___3 ;
  {
  cmd.band = 0U;
  cmd.reserved = (unsigned char)0;
  cmd.channel = (unsigned short)0;
  cmd.tx_power.power_tbl[0].dw = 0U;
  cmd.tx_power.power_tbl[1].dw = 0U;
  cmd.tx_power.power_tbl[2].dw = 0U;
  cmd.tx_power.power_tbl[3].dw = 0U;
  cmd.tx_power.power_tbl[4].dw = 0U;
  cmd.tx_power.power_tbl[5].dw = 0U;
  cmd.tx_power.power_tbl[6].dw = 0U;
  cmd.tx_power.power_tbl[7].dw = 0U;
  cmd.tx_power.power_tbl[8].dw = 0U;
  cmd.tx_power.power_tbl[9].dw = 0U;
  cmd.tx_power.power_tbl[10].dw = 0U;
  cmd.tx_power.power_tbl[11].dw = 0U;
  cmd.tx_power.power_tbl[12].dw = 0U;
  cmd.tx_power.power_tbl[13].dw = 0U;
  cmd.tx_power.power_tbl[14].dw = 0U;
  cmd.tx_power.power_tbl[15].dw = 0U;
  cmd.tx_power.power_tbl[16].dw = 0U;
  cmd.tx_power.power_tbl[17].dw = 0U;
  cmd.tx_power.power_tbl[18].dw = 0U;
  cmd.tx_power.power_tbl[19].dw = 0U;
  cmd.tx_power.power_tbl[20].dw = 0U;
  cmd.tx_power.power_tbl[21].dw = 0U;
  cmd.tx_power.power_tbl[22].dw = 0U;
  cmd.tx_power.power_tbl[23].dw = 0U;
  cmd.tx_power.power_tbl[24].dw = 0U;
  cmd.tx_power.power_tbl[25].dw = 0U;
  cmd.tx_power.power_tbl[26].dw = 0U;
  cmd.tx_power.power_tbl[27].dw = 0U;
  cmd.tx_power.power_tbl[28].dw = 0U;
  cmd.tx_power.power_tbl[29].dw = 0U;
  cmd.tx_power.power_tbl[30].dw = 0U;
  cmd.tx_power.power_tbl[31].dw = 0U;
  cmd.tx_power.power_tbl[32].dw = 0U;
  band = 0U;
  is_ht40 = 0;
  ctrl_chan_high = 0U;
  tmp = constant_test_bit(15L, (unsigned long const volatile *)(& il->status));
  __ret_warn_once = tmp != 0;
  tmp___2 = ldv__builtin_expect(__ret_warn_once != 0, 0L);
  if (tmp___2 != 0L) {
    __ret_warn_on = ! __warned;
    tmp___0 = ldv__builtin_expect(__ret_warn_on != 0, 0L);
    if (tmp___0 != 0L) {
      warn_slowpath_fmt("/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/11700/dscv_tempdir/dscv/ri/43_2a/drivers/net/wireless/iwlegacy/4965.c",
                        1267, "TX Power requested while scanning!\n");
    } else {
    }
    tmp___1 = ldv__builtin_expect(__ret_warn_on != 0, 0L);
    if (tmp___1 != 0L) {
      __warned = 1;
    } else {
    }
  } else {
  }
  tmp___3 = ldv__builtin_expect(__ret_warn_once != 0, 0L);
  if (tmp___3 != 0L) {
    return (-11);
  } else {
  }
  band = (unsigned int )il->band == 0U;
  is_ht40 = iw4965_is_ht40_channel(il->active.flags);
  if ((int )is_ht40 && ((unsigned int )il->active.flags & 4194304U) != 0U) {
    ctrl_chan_high = 1U;
  } else {
  }
  cmd.band = band;
  cmd.channel = il->active.channel;
  ret = il4965_fill_txpower_tbl(il, (int )band, (int )il->active.channel, (int )is_ht40,
                                (int )ctrl_chan_high, & cmd.tx_power);
  if (ret != 0) {
    goto out;
  } else {
  }
  ret = il_send_cmd_pdu(il, 151, 136, (void const *)(& cmd));
  out: ;
  return (ret);
}
}
static int il4965_send_rxon_assoc(struct il_priv *il )
{
  int ret ;
  struct il4965_rxon_assoc_cmd rxon_assoc ;
  struct il_rxon_cmd const *rxon1 ;
  struct il_rxon_cmd const *rxon2 ;
  int tmp ;
  u32 tmp___0 ;
  {
  ret = 0;
  rxon1 = (struct il_rxon_cmd const *)(& il->staging);
  rxon2 = & il->active;
  if (((((((unsigned int )rxon1->flags == (unsigned int )rxon2->flags && (unsigned int )rxon1->filter_flags == (unsigned int )rxon2->filter_flags) && (int )((unsigned char )rxon1->cck_basic_rates) == (int )((unsigned char )rxon2->cck_basic_rates)) && (int )((unsigned char )rxon1->ofdm_ht_single_stream_basic_rates) == (int )((unsigned char )rxon2->ofdm_ht_single_stream_basic_rates)) && (int )((unsigned char )rxon1->ofdm_ht_dual_stream_basic_rates) == (int )((unsigned char )rxon2->ofdm_ht_dual_stream_basic_rates)) && (int )((unsigned short )rxon1->rx_chain) == (int )((unsigned short )rxon2->rx_chain)) && (int )((unsigned char )rxon1->ofdm_basic_rates) == (int )((unsigned char )rxon2->ofdm_basic_rates)) {
    tmp___0 = il_get_debug_level(il);
    if ((int )tmp___0 & 1) {
      tmp = preempt_count();
      dev_err((struct device const *)(& ((il->hw)->wiphy)->dev), "%c %s Using current RXON_ASSOC.  Not resending.\n",
              ((unsigned long )tmp & 2096896UL) != 0UL ? 73 : 85, "il4965_send_rxon_assoc");
    } else {
    }
    return (0);
  } else {
  }
  rxon_assoc.flags = il->staging.flags;
  rxon_assoc.filter_flags = il->staging.filter_flags;
  rxon_assoc.ofdm_basic_rates = il->staging.ofdm_basic_rates;
  rxon_assoc.cck_basic_rates = il->staging.cck_basic_rates;
  rxon_assoc.reserved = 0U;
  rxon_assoc.ofdm_ht_single_stream_basic_rates = il->staging.ofdm_ht_single_stream_basic_rates;
  rxon_assoc.ofdm_ht_dual_stream_basic_rates = il->staging.ofdm_ht_dual_stream_basic_rates;
  rxon_assoc.rx_chain_select_flags = il->staging.rx_chain;
  ret = il_send_cmd_pdu_async(il, 17, 16, (void const *)(& rxon_assoc), (void (*)(struct il_priv * ,
                                                                                    struct il_device_cmd * ,
                                                                                    struct il_rx_pkt * ))0);
  return (ret);
}
}
static int il4965_commit_rxon(struct il_priv *il )
{
  struct il_rxon_cmd *active_rxon ;
  int ret ;
  bool new_assoc ;
  int tmp ;
  int tmp___0 ;
  u32 tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  int tmp___4 ;
  u32 tmp___5 ;
  int tmp___6 ;
  int tmp___7 ;
  u32 tmp___8 ;
  int tmp___9 ;
  u32 tmp___10 ;
  {
  active_rxon = (struct il_rxon_cmd *)(& il->active);
  new_assoc = (il->staging.filter_flags & 32U) != 0U;
  tmp = il_is_alive(il);
  if (tmp == 0) {
    return (-16);
  } else {
  }
  il->staging.flags = il->staging.flags | 32768U;
  ret = il_check_rxon_cmd(il);
  if (ret != 0) {
    dev_err((struct device const *)(& (il->pci_dev)->dev), "Invalid RXON configuration.  Not committing.\n");
    return (-22);
  } else {
  }
  tmp___2 = constant_test_bit(18L, (unsigned long const volatile *)(& il->status));
  if (tmp___2 != 0 && (int )il->switch_channel != (int )il->staging.channel) {
    tmp___1 = il_get_debug_level(il);
    if ((tmp___1 & 268435456U) != 0U) {
      tmp___0 = preempt_count();
      dev_err((struct device const *)(& ((il->hw)->wiphy)->dev), "%c %s abort channel switch on %d\n",
              ((unsigned long )tmp___0 & 2096896UL) != 0UL ? 73 : 85, "il4965_commit_rxon",
              (int )il->switch_channel);
    } else {
    }
    il_chswitch_done(il, 0);
  } else {
  }
  tmp___3 = il_full_rxon_required(il);
  if (tmp___3 == 0) {
    ret = il_send_rxon_assoc(il);
    if (ret != 0) {
      dev_err((struct device const *)(& (il->pci_dev)->dev), "Error setting RXON_ASSOC (%d)\n",
              ret);
      return (ret);
    } else {
    }
    memcpy((void *)active_rxon, (void const *)(& il->staging), 46UL);
    il_print_rx_config_cmd(il);
    il_set_tx_power(il, (int )il->tx_power_next, 0);
    return (0);
  } else {
  }
  tmp___6 = il_is_associated(il);
  if (tmp___6 != 0 && (int )new_assoc) {
    tmp___5 = il_get_debug_level(il);
    if ((int )tmp___5 & 1) {
      tmp___4 = preempt_count();
      dev_err((struct device const *)(& ((il->hw)->wiphy)->dev), "%c %s Toggling associated bit on current RXON\n",
              ((unsigned long )tmp___4 & 2096896UL) != 0UL ? 73 : 85, "il4965_commit_rxon");
    } else {
    }
    active_rxon->filter_flags = active_rxon->filter_flags & 4294967263U;
    ret = il_send_cmd_pdu(il, 16, 46, (void const *)active_rxon);
    if (ret != 0) {
      active_rxon->filter_flags = active_rxon->filter_flags | 32U;
      dev_err((struct device const *)(& (il->pci_dev)->dev), "Error clearing ASSOC_MSK (%d)\n",
              ret);
      return (ret);
    } else {
    }
    il_clear_ucode_stations(il);
    il_restore_stations(il);
    ret = il4965_restore_default_wep_keys(il);
    if (ret != 0) {
      dev_err((struct device const *)(& (il->pci_dev)->dev), "Failed to restore WEP keys (%d)\n",
              ret);
      return (ret);
    } else {
    }
  } else {
  }
  tmp___8 = il_get_debug_level(il);
  if ((int )tmp___8 & 1) {
    tmp___7 = preempt_count();
    dev_err((struct device const *)(& ((il->hw)->wiphy)->dev), "%c %s Sending RXON\n* with%s RXON_FILTER_ASSOC_MSK\n* channel = %d\n* bssid = %pM\n",
            ((unsigned long )tmp___7 & 2096896UL) != 0UL ? 73 : 85, "il4965_commit_rxon",
            (int )new_assoc ? (char *)"" : (char *)"out", (int )il->staging.channel,
            (u8 *)(& il->staging.bssid_addr));
  } else {
  }
  il_set_rxon_hwcrypto(il, (int )((il->cfg)->mod_params)->sw_crypto == 0);
  if (! new_assoc) {
    ret = il_send_cmd_pdu(il, 16, 46, (void const *)(& il->staging));
    if (ret != 0) {
      dev_err((struct device const *)(& (il->pci_dev)->dev), "Error setting new RXON (%d)\n",
              ret);
      return (ret);
    } else {
    }
    tmp___10 = il_get_debug_level(il);
    if ((int )tmp___10 & 1) {
      tmp___9 = preempt_count();
      dev_err((struct device const *)(& ((il->hw)->wiphy)->dev), "%c %s Return from !new_assoc RXON.\n",
              ((unsigned long )tmp___9 & 2096896UL) != 0UL ? 73 : 85, "il4965_commit_rxon");
    } else {
    }
    memcpy((void *)active_rxon, (void const *)(& il->staging), 46UL);
    il_clear_ucode_stations(il);
    il_restore_stations(il);
    ret = il4965_restore_default_wep_keys(il);
    if (ret != 0) {
      dev_err((struct device const *)(& (il->pci_dev)->dev), "Failed to restore WEP keys (%d)\n",
              ret);
      return (ret);
    } else {
    }
  } else {
  }
  if ((int )new_assoc) {
    il->start_calib = 0U;
    ret = il_send_cmd_pdu(il, 16, 46, (void const *)(& il->staging));
    if (ret != 0) {
      dev_err((struct device const *)(& (il->pci_dev)->dev), "Error setting new RXON (%d)\n",
              ret);
      return (ret);
    } else {
    }
    memcpy((void *)active_rxon, (void const *)(& il->staging), 46UL);
  } else {
  }
  il_print_rx_config_cmd(il);
  il4965_init_sensitivity(il);
  ret = il_set_tx_power(il, (int )il->tx_power_next, 1);
  if (ret != 0) {
    dev_err((struct device const *)(& (il->pci_dev)->dev), "Error sending TX power (%d)\n",
            ret);
    return (ret);
  } else {
  }
  return (0);
}
}
static int il4965_hw_channel_switch(struct il_priv *il , struct ieee80211_channel_switch *ch_switch )
{
  int rc ;
  u8 band ;
  bool is_ht40 ;
  u8 ctrl_chan_high ;
  struct il4965_channel_switch_cmd cmd ;
  struct il_channel_info const *ch_info ;
  u32 switch_time_in_usec ;
  u32 ucode_switch_time ;
  u16 ch ;
  u32 tsf_low ;
  u8 switch_count ;
  u16 beacon_interval ;
  struct ieee80211_vif *vif ;
  bool __warned ;
  int __ret_warn_once ;
  int __ret_warn_on ;
  long tmp ;
  long tmp___0 ;
  long tmp___1 ;
  long tmp___2 ;
  int tmp___3 ;
  u32 tmp___4 ;
  int tmp___5 ;
  int tmp___6 ;
  u32 tmp___7 ;
  int tmp___8 ;
  {
  band = 0U;
  is_ht40 = 0;
  ctrl_chan_high = 0U;
  beacon_interval = il->timing.beacon_interval;
  vif = il->vif;
  band = (unsigned int )il->band == 0U;
  __ret_warn_once = (unsigned long )vif == (unsigned long )((struct ieee80211_vif *)0);
  tmp___1 = ldv__builtin_expect(__ret_warn_once != 0, 0L);
  if (tmp___1 != 0L) {
    __ret_warn_on = ! __warned;
    tmp = ldv__builtin_expect(__ret_warn_on != 0, 0L);
    if (tmp != 0L) {
      warn_slowpath_null("/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/11700/dscv_tempdir/dscv/ri/43_2a/drivers/net/wireless/iwlegacy/4965.c",
                         1485);
    } else {
    }
    tmp___0 = ldv__builtin_expect(__ret_warn_on != 0, 0L);
    if (tmp___0 != 0L) {
      __warned = 1;
    } else {
    }
  } else {
  }
  tmp___2 = ldv__builtin_expect(__ret_warn_once != 0, 0L);
  if (tmp___2 != 0L) {
    return (-5);
  } else {
  }
  is_ht40 = iw4965_is_ht40_channel(il->staging.flags);
  if ((int )is_ht40 && (il->staging.flags & 4194304U) != 0U) {
    ctrl_chan_high = 1U;
  } else {
  }
  cmd.band = band;
  cmd.expect_beacon = 0U;
  ch = (ch_switch->chandef.chan)->hw_value;
  cmd.channel = ch;
  cmd.rxon_flags = il->staging.flags;
  cmd.rxon_filter_flags = il->staging.filter_flags;
  switch_count = ch_switch->count;
  tsf_low = (u32 )ch_switch->timestamp;
  if (il->ucode_beacon_time > tsf_low && (unsigned int )beacon_interval != 0U) {
    if ((u32 )switch_count > (il->ucode_beacon_time - tsf_low) / (u32 )beacon_interval) {
      switch_count = (int )switch_count - (int )((u8 )((il->ucode_beacon_time - tsf_low) / (u32 )beacon_interval));
    } else {
      switch_count = 0U;
    }
  } else {
  }
  if ((unsigned int )switch_count <= 1U) {
    cmd.switch_time = il->ucode_beacon_time;
  } else {
    switch_time_in_usec = (u32 )(((int )vif->bss_conf.beacon_int * (int )switch_count) * 1024);
    ucode_switch_time = il_usecs_to_beacons(il, switch_time_in_usec, (u32 )beacon_interval);
    cmd.switch_time = il_add_beacon_time(il, il->ucode_beacon_time, ucode_switch_time,
                                         (u32 )beacon_interval);
  }
  tmp___4 = il_get_debug_level(il);
  if ((tmp___4 & 268435456U) != 0U) {
    tmp___3 = preempt_count();
    dev_err((struct device const *)(& ((il->hw)->wiphy)->dev), "%c %s uCode time for the switch is 0x%x\n",
            ((unsigned long )tmp___3 & 2096896UL) != 0UL ? 73 : 85, "il4965_hw_channel_switch",
            cmd.switch_time);
  } else {
  }
  ch_info = il_get_channel_info((struct il_priv const *)il, il->band, (int )ch);
  if ((unsigned long )ch_info != (unsigned long )((struct il_channel_info const *)0)) {
    tmp___5 = il_is_channel_radar(ch_info);
    cmd.expect_beacon = (u8 )tmp___5;
  } else {
    dev_err((struct device const *)(& (il->pci_dev)->dev), "invalid channel switch from %u to %u\n",
            (int )il->active.channel, (int )ch);
    return (-14);
  }
  rc = il4965_fill_txpower_tbl(il, (int )band, (int )ch, (int )is_ht40, (int )ctrl_chan_high,
                               & cmd.tx_power);
  if (rc != 0) {
    tmp___7 = il_get_debug_level(il);
    if ((tmp___7 & 268435456U) != 0U) {
      tmp___6 = preempt_count();
      dev_err((struct device const *)(& ((il->hw)->wiphy)->dev), "%c %s error:%d  fill txpower_tbl\n",
              ((unsigned long )tmp___6 & 2096896UL) != 0UL ? 73 : 85, "il4965_hw_channel_switch",
              rc);
    } else {
    }
    return (rc);
  } else {
  }
  tmp___8 = il_send_cmd_pdu(il, 114, 148, (void const *)(& cmd));
  return (tmp___8);
}
}
static void il4965_txq_update_byte_cnt_tbl(struct il_priv *il , struct il_tx_queue *txq ,
                                           u16 byte_cnt )
{
  struct il4965_scd_bc_tbl *scd_bc_tbl ;
  int txq_id ;
  int write_ptr ;
  int len ;
  __le16 bc_ent ;
  int __ret_warn_on ;
  long tmp ;
  {
  scd_bc_tbl = (struct il4965_scd_bc_tbl *)il->scd_bc_tbls.addr;
  txq_id = (int )txq->q.id;
  write_ptr = txq->q.write_ptr;
  len = (int )byte_cnt + 8;
  __ret_warn_on = len > 4095 || write_ptr > 255;
  tmp = ldv__builtin_expect(__ret_warn_on != 0, 0L);
  if (tmp != 0L) {
    warn_slowpath_null("/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/11700/dscv_tempdir/dscv/ri/43_2a/drivers/net/wireless/iwlegacy/4965.c",
                       1558);
  } else {
  }
  ldv__builtin_expect(__ret_warn_on != 0, 0L);
  bc_ent = (unsigned int )((unsigned short )len) & 4095U;
  (scd_bc_tbl + (unsigned long )txq_id)->tfd_offset[write_ptr] = bc_ent;
  if (write_ptr <= 63) {
    (scd_bc_tbl + (unsigned long )txq_id)->tfd_offset[write_ptr + 256] = bc_ent;
  } else {
  }
  return;
}
}
static int il4965_hw_get_temperature(struct il_priv *il )
{
  s32 temperature ;
  s32 vt ;
  s32 R1 ;
  s32 R2 ;
  s32 R3 ;
  u32 R4 ;
  int tmp ;
  u32 tmp___0 ;
  int tmp___1 ;
  u32 tmp___2 ;
  int tmp___3 ;
  int tmp___4 ;
  int tmp___5 ;
  u32 tmp___6 ;
  int tmp___7 ;
  u32 tmp___8 ;
  {
  tmp___3 = constant_test_bit(8L, (unsigned long const volatile *)(& il->status));
  if (tmp___3 != 0 && (il->__annonCompField103._4965.stats.flag & 8U) != 0U) {
    tmp___0 = il_get_debug_level(il);
    if ((tmp___0 & 512U) != 0U) {
      tmp = preempt_count();
      dev_err((struct device const *)(& ((il->hw)->wiphy)->dev), "%c %s Running HT40 temperature calibration\n",
              ((unsigned long )tmp & 2096896UL) != 0UL ? 73 : 85, "il4965_hw_get_temperature");
    } else {
    }
    R1 = (int )il->card_alive_init.therm_r1[1];
    R2 = (int )il->card_alive_init.therm_r2[1];
    R3 = (int )il->card_alive_init.therm_r3[1];
    R4 = il->card_alive_init.therm_r4[1];
  } else {
    tmp___2 = il_get_debug_level(il);
    if ((tmp___2 & 512U) != 0U) {
      tmp___1 = preempt_count();
      dev_err((struct device const *)(& ((il->hw)->wiphy)->dev), "%c %s Running temperature calibration\n",
              ((unsigned long )tmp___1 & 2096896UL) != 0UL ? 73 : 85, "il4965_hw_get_temperature");
    } else {
    }
    R1 = (int )il->card_alive_init.therm_r1[0];
    R2 = (int )il->card_alive_init.therm_r2[0];
    R3 = (int )il->card_alive_init.therm_r3[0];
    R4 = il->card_alive_init.therm_r4[0];
  }
  tmp___4 = constant_test_bit(8L, (unsigned long const volatile *)(& il->status));
  if (tmp___4 == 0) {
    vt = sign_extend32(R4, 23);
  } else {
    vt = sign_extend32(il->__annonCompField103._4965.stats.general.common.temperature,
                       23);
  }
  tmp___6 = il_get_debug_level(il);
  if ((tmp___6 & 512U) != 0U) {
    tmp___5 = preempt_count();
    dev_err((struct device const *)(& ((il->hw)->wiphy)->dev), "%c %s Calib values R[1-3]: %d %d %d R4: %d\n",
            ((unsigned long )tmp___5 & 2096896UL) != 0UL ? 73 : 85, "il4965_hw_get_temperature",
            R1, R2, R3, vt);
  } else {
  }
  if (R3 == R1) {
    dev_err((struct device const *)(& (il->pci_dev)->dev), "Calibration conflict R1 == R3\n");
    return (-1);
  } else {
  }
  temperature = (vt - R2) * 259;
  temperature = temperature / (R3 - R1);
  temperature = (temperature * 97) / 100 + 8;
  tmp___8 = il_get_debug_level(il);
  if ((tmp___8 & 512U) != 0U) {
    tmp___7 = preempt_count();
    dev_err((struct device const *)(& ((il->hw)->wiphy)->dev), "%c %s Calibrated temperature: %dK, %dC\n",
            ((unsigned long )tmp___7 & 2096896UL) != 0UL ? 73 : 85, "il4965_hw_get_temperature",
            temperature, temperature + -273);
  } else {
  }
  return (temperature);
}
}
static int il4965_is_temp_calib_needed(struct il_priv *il )
{
  int temp_diff ;
  int tmp ;
  u32 tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  u32 tmp___3 ;
  int tmp___4 ;
  u32 tmp___5 ;
  int tmp___6 ;
  u32 tmp___7 ;
  int tmp___8 ;
  u32 tmp___9 ;
  int tmp___10 ;
  u32 tmp___11 ;
  {
  tmp___1 = constant_test_bit(12L, (unsigned long const volatile *)(& il->status));
  if (tmp___1 == 0) {
    tmp___0 = il_get_debug_level(il);
    if ((tmp___0 & 512U) != 0U) {
      tmp = preempt_count();
      dev_err((struct device const *)(& ((il->hw)->wiphy)->dev), "%c %s Temperature not updated -- no stats.\n",
              ((unsigned long )tmp & 2096896UL) != 0UL ? 73 : 85, "il4965_is_temp_calib_needed");
    } else {
    }
    return (0);
  } else {
  }
  temp_diff = il->temperature - il->last_temperature;
  if (temp_diff < 0) {
    tmp___3 = il_get_debug_level(il);
    if ((tmp___3 & 256U) != 0U) {
      tmp___2 = preempt_count();
      dev_err((struct device const *)(& ((il->hw)->wiphy)->dev), "%c %s Getting cooler, delta %d\n",
              ((unsigned long )tmp___2 & 2096896UL) != 0UL ? 73 : 85, "il4965_is_temp_calib_needed",
              temp_diff);
    } else {
    }
    temp_diff = - temp_diff;
  } else
  if (temp_diff == 0) {
    tmp___5 = il_get_debug_level(il);
    if ((tmp___5 & 256U) != 0U) {
      tmp___4 = preempt_count();
      dev_err((struct device const *)(& ((il->hw)->wiphy)->dev), "%c %s Temperature unchanged\n",
              ((unsigned long )tmp___4 & 2096896UL) != 0UL ? 73 : 85, "il4965_is_temp_calib_needed");
    } else {
    }
  } else {
    tmp___7 = il_get_debug_level(il);
    if ((tmp___7 & 256U) != 0U) {
      tmp___6 = preempt_count();
      dev_err((struct device const *)(& ((il->hw)->wiphy)->dev), "%c %s Getting warmer, delta %d\n",
              ((unsigned long )tmp___6 & 2096896UL) != 0UL ? 73 : 85, "il4965_is_temp_calib_needed",
              temp_diff);
    } else {
    }
  }
  if (temp_diff <= 2) {
    tmp___9 = il_get_debug_level(il);
    if ((tmp___9 & 256U) != 0U) {
      tmp___8 = preempt_count();
      dev_err((struct device const *)(& ((il->hw)->wiphy)->dev), "%c %s  => thermal txpower calib not needed\n",
              ((unsigned long )tmp___8 & 2096896UL) != 0UL ? 73 : 85, "il4965_is_temp_calib_needed");
    } else {
    }
    return (0);
  } else {
  }
  tmp___11 = il_get_debug_level(il);
  if ((tmp___11 & 256U) != 0U) {
    tmp___10 = preempt_count();
    dev_err((struct device const *)(& ((il->hw)->wiphy)->dev), "%c %s  => thermal txpower calib needed\n",
            ((unsigned long )tmp___10 & 2096896UL) != 0UL ? 73 : 85, "il4965_is_temp_calib_needed");
  } else {
  }
  return (1);
}
}
void il4965_temperature_calib(struct il_priv *il )
{
  s32 temp ;
  int tmp ;
  u32 tmp___0 ;
  int tmp___1 ;
  u32 tmp___2 ;
  int tmp___3 ;
  long tmp___4 ;
  int tmp___5 ;
  {
  temp = il4965_hw_get_temperature(il);
  if (temp <= 262 || temp > 410) {
    return;
  } else {
  }
  if (il->temperature != temp) {
    if (il->temperature != 0) {
      tmp___0 = il_get_debug_level(il);
      if ((tmp___0 & 512U) != 0U) {
        tmp = preempt_count();
        dev_err((struct device const *)(& ((il->hw)->wiphy)->dev), "%c %s Temperature changed from %dC to %dC\n",
                ((unsigned long )tmp & 2096896UL) != 0UL ? 73 : 85, "il4965_temperature_calib",
                il->temperature + -273, temp + -273);
      } else {
      }
    } else {
      tmp___2 = il_get_debug_level(il);
      if ((tmp___2 & 512U) != 0U) {
        tmp___1 = preempt_count();
        dev_err((struct device const *)(& ((il->hw)->wiphy)->dev), "%c %s Temperature initialized to %dC\n",
                ((unsigned long )tmp___1 & 2096896UL) != 0UL ? 73 : 85, "il4965_temperature_calib",
                temp + -273);
      } else {
      }
    }
  } else {
  }
  il->temperature = temp;
  set_bit(8L, (unsigned long volatile *)(& il->status));
  if (il->disable_tx_power_cal == 0U) {
    tmp___3 = constant_test_bit(13L, (unsigned long const volatile *)(& il->status));
    tmp___4 = ldv__builtin_expect(tmp___3 == 0, 0L);
    if (tmp___4 != 0L) {
      tmp___5 = il4965_is_temp_calib_needed(il);
      if (tmp___5 != 0) {
        queue_work(il->workqueue, & il->txpower_work);
      } else {
      }
    } else {
    }
  } else {
  }
  return;
}
}
static u16 il4965_get_hcmd_size(u8 cmd_id , u16 len )
{
  {
  switch ((int )cmd_id) {
  case 16: ;
  return (44U);
  default: ;
  return (len);
  }
}
}
static u16 il4965_build_addsta_hcmd(struct il_addsta_cmd const *cmd , u8 *data )
{
  struct il4965_addsta_cmd *addsta ;
  {
  addsta = (struct il4965_addsta_cmd *)data;
  addsta->mode = cmd->mode;
  memcpy((void *)(& addsta->sta), (void const *)(& cmd->sta), 12UL);
  memcpy((void *)(& addsta->key), (void const *)(& cmd->key), 32UL);
  addsta->station_flags = cmd->station_flags;
  addsta->station_flags_msk = cmd->station_flags_msk;
  addsta->tid_disable_tx = cmd->tid_disable_tx;
  addsta->add_immediate_ba_tid = cmd->add_immediate_ba_tid;
  addsta->remove_immediate_ba_tid = cmd->remove_immediate_ba_tid;
  addsta->add_immediate_ba_ssn = cmd->add_immediate_ba_ssn;
  addsta->sleep_tx_count = cmd->sleep_tx_count;
  addsta->reserved1 = 0U;
  addsta->reserved2 = 0U;
  return (68U);
}
}
static void il4965_post_scan(struct il_priv *il )
{
  int tmp ;
  {
  tmp = memcmp((void const *)(& il->staging), (void const *)(& il->active), 46UL);
  if (tmp != 0) {
    il_commit_rxon(il);
  } else {
  }
  return;
}
}
static void il4965_post_associate(struct il_priv *il )
{
  struct ieee80211_vif *vif ;
  int ret ;
  int tmp ;
  int tmp___0 ;
  u32 tmp___1 ;
  int tmp___2 ;
  u32 tmp___3 ;
  {
  vif = il->vif;
  ret = 0;
  if ((unsigned long )vif == (unsigned long )((struct ieee80211_vif *)0) || (unsigned int )il->is_open == 0U) {
    return;
  } else {
  }
  tmp = constant_test_bit(10L, (unsigned long const volatile *)(& il->status));
  if (tmp != 0) {
    return;
  } else {
  }
  il_scan_cancel_timeout(il, 200UL);
  il->staging.filter_flags = il->staging.filter_flags & 4294967263U;
  il_commit_rxon(il);
  ret = il_send_rxon_timing(il);
  if (ret != 0) {
    dev_warn((struct device const *)(& (il->pci_dev)->dev), "RXON timing - Attempting to continue.\n");
  } else {
  }
  il->staging.filter_flags = il->staging.filter_flags | 32U;
  il_set_rxon_ht(il, & il->current_ht_config);
  if ((unsigned long )(il->ops)->set_rxon_chain != (unsigned long )((void (* )(struct il_priv * ))0)) {
    (*((il->ops)->set_rxon_chain))(il);
  } else {
  }
  il->staging.assoc_id = vif->bss_conf.aid;
  tmp___1 = il_get_debug_level(il);
  if ((tmp___1 & 4096U) != 0U) {
    tmp___0 = preempt_count();
    dev_err((struct device const *)(& ((il->hw)->wiphy)->dev), "%c %s assoc id %d beacon interval %d\n",
            ((unsigned long )tmp___0 & 2096896UL) != 0UL ? 73 : 85, "il4965_post_associate",
            (int )vif->bss_conf.aid, (int )vif->bss_conf.beacon_int);
  } else {
  }
  if ((int )vif->bss_conf.use_short_preamble) {
    il->staging.flags = il->staging.flags | 32U;
  } else {
    il->staging.flags = il->staging.flags & 4294967263U;
  }
  if ((int )il->staging.flags & 1) {
    if ((int )vif->bss_conf.use_short_slot) {
      il->staging.flags = il->staging.flags | 16U;
    } else {
      il->staging.flags = il->staging.flags & 4294967279U;
    }
  } else {
  }
  il_commit_rxon(il);
  tmp___3 = il_get_debug_level(il);
  if ((tmp___3 & 4096U) != 0U) {
    tmp___2 = preempt_count();
    dev_err((struct device const *)(& ((il->hw)->wiphy)->dev), "%c %s Associated as %d to: %pM\n",
            ((unsigned long )tmp___2 & 2096896UL) != 0UL ? 73 : 85, "il4965_post_associate",
            (int )vif->bss_conf.aid, (u8 const *)(& il->active.bssid_addr));
  } else {
  }
  switch ((unsigned int )vif->type) {
  case 2U: ;
  goto ldv_54655;
  case 1U:
  il4965_send_beacon_cmd(il);
  goto ldv_54655;
  default:
  dev_err((struct device const *)(& (il->pci_dev)->dev), "%s Should not be called in %d mode\n",
          "il4965_post_associate", (unsigned int )vif->type);
  goto ldv_54655;
  }
  ldv_54655: ;
  if ((unsigned int )il->chain_noise_data.state == 3U) {
    il_power_update_mode(il, 0);
  } else {
  }
  il4965_chain_noise_reset(il);
  il->start_calib = 1U;
  return;
}
}
static void il4965_config_ap(struct il_priv *il )
{
  struct ieee80211_vif *vif ;
  int ret ;
  int __ret_warn_on ;
  int tmp ;
  int tmp___0 ;
  long tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  {
  vif = il->vif;
  ret = 0;
  if (debug_locks != 0) {
    tmp = lock_is_held(& il->mutex.dep_map);
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
    warn_slowpath_null("/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/11700/dscv_tempdir/dscv/ri/43_2a/drivers/net/wireless/iwlegacy/4965.c",
                       1825);
  } else {
  }
  ldv__builtin_expect(__ret_warn_on != 0, 0L);
  tmp___2 = constant_test_bit(10L, (unsigned long const volatile *)(& il->status));
  if (tmp___2 != 0) {
    return;
  } else {
  }
  tmp___3 = il_is_associated(il);
  if (tmp___3 == 0) {
    il->staging.filter_flags = il->staging.filter_flags & 4294967263U;
    il_commit_rxon(il);
    ret = il_send_rxon_timing(il);
    if (ret != 0) {
      dev_warn((struct device const *)(& (il->pci_dev)->dev), "RXON timing failed - Attempting to continue.\n");
    } else {
    }
    il->chain_noise_data.active_chains = (u32 )il->hw_params.valid_rx_ant;
    il_set_rxon_ht(il, & il->current_ht_config);
    if ((unsigned long )(il->ops)->set_rxon_chain != (unsigned long )((void (* )(struct il_priv * ))0)) {
      (*((il->ops)->set_rxon_chain))(il);
    } else {
    }
    il->staging.assoc_id = 0U;
    if ((int )vif->bss_conf.use_short_preamble) {
      il->staging.flags = il->staging.flags | 32U;
    } else {
      il->staging.flags = il->staging.flags & 4294967263U;
    }
    if ((int )il->staging.flags & 1) {
      if ((int )vif->bss_conf.use_short_slot) {
        il->staging.flags = il->staging.flags | 16U;
      } else {
        il->staging.flags = il->staging.flags & 4294967279U;
      }
    } else {
    }
    il4965_send_beacon_cmd(il);
    il->staging.filter_flags = il->staging.filter_flags | 32U;
    il_commit_rxon(il);
  } else {
  }
  il4965_send_beacon_cmd(il);
  return;
}
}
struct il_ops const il4965_ops =
     {& il4965_txq_update_byte_cnt_tbl, & il4965_hw_txq_attach_buf_to_tfd, & il4965_hw_txq_free_tfd,
    & il4965_hw_tx_queue_init, & il4965_init_alive_start, & il4965_hw_valid_rtc_data_addr,
    & il4965_load_bsm, & il4965_dump_nic_error_log, & il4965_dump_fh, & il4965_hw_channel_switch,
    & il_apm_init, & il4965_send_tx_power, & il4965_update_chain_flags, & il4965_eeprom_acquire_semaphore,
    & il4965_eeprom_release_semaphore, & il4965_send_rxon_assoc, & il4965_commit_rxon,
    & il4965_set_rxon_chain, & il4965_get_hcmd_size, & il4965_build_addsta_hcmd, & il4965_request_scan,
    & il4965_post_scan, & il4965_post_associate, & il4965_config_ap, & il4965_update_bcast_stations,
    & il4965_manage_ibss_station, & il4965_send_led_cmd};
struct il_cfg il4965_cfg =
     {"Intel(R) Wireless WiFi Link 4965AGN", "iwlwifi-4965-", 2U, 2U, 3U, 7U, 11U, 47U,
    5U, (struct il_mod_params const *)(& il4965_mod_params), 0, {(unsigned char)0,
                                                                   6U}, 2, 1024, 16,
    8, 0U, 1, 1, 61U, 20, 2000U, 1, 1, 1, 1, {198U, 228U, 256U, 282U, 306U, 320U,
                                              336U}};
void ldv_initialize_il_ops_20(void)
{
  void *tmp ;
  void *tmp___0 ;
  void *tmp___1 ;
  {
  tmp = ldv_init_zalloc(35736UL);
  il4965_ops_group0 = (struct il_priv *)tmp;
  tmp___0 = ldv_init_zalloc(296UL);
  il4965_ops_group1 = (struct ieee80211_vif *)tmp___0;
  tmp___1 = ldv_init_zalloc(88UL);
  il4965_ops_group2 = (struct il_tx_queue *)tmp___1;
  return;
}
}
void ldv_main_exported_20(void)
{
  u16 ldvarg83 ;
  u8 ldvarg82 ;
  u16 ldvarg89 ;
  struct il_addsta_cmd *ldvarg92 ;
  void *tmp ;
  struct ieee80211_channel_switch *ldvarg79 ;
  void *tmp___0 ;
  u8 *ldvarg93 ;
  void *tmp___1 ;
  bool ldvarg86 ;
  u8 ldvarg87 ;
  struct il_led_cmd *ldvarg90 ;
  void *tmp___2 ;
  bool ldvarg80 ;
  u16 ldvarg88 ;
  u32 ldvarg91 ;
  dma_addr_t ldvarg84 ;
  u8 ldvarg85 ;
  char **ldvarg81 ;
  void *tmp___3 ;
  int tmp___4 ;
  {
  tmp = ldv_init_zalloc(68UL);
  ldvarg92 = (struct il_addsta_cmd *)tmp;
  tmp___0 = ldv_init_zalloc(48UL);
  ldvarg79 = (struct ieee80211_channel_switch *)tmp___0;
  tmp___1 = ldv_init_zalloc(1UL);
  ldvarg93 = (u8 *)tmp___1;
  tmp___2 = ldv_init_zalloc(8UL);
  ldvarg90 = (struct il_led_cmd *)tmp___2;
  tmp___3 = ldv_init_zalloc(8UL);
  ldvarg81 = (char **)tmp___3;
  ldv_memset((void *)(& ldvarg83), 0, 2UL);
  ldv_memset((void *)(& ldvarg82), 0, 1UL);
  ldv_memset((void *)(& ldvarg89), 0, 2UL);
  ldv_memset((void *)(& ldvarg86), 0, 1UL);
  ldv_memset((void *)(& ldvarg87), 0, 1UL);
  ldv_memset((void *)(& ldvarg80), 0, 1UL);
  ldv_memset((void *)(& ldvarg88), 0, 2UL);
  ldv_memset((void *)(& ldvarg91), 0, 4UL);
  ldv_memset((void *)(& ldvarg84), 0, 8UL);
  ldv_memset((void *)(& ldvarg85), 0, 1UL);
  tmp___4 = __VERIFIER_nondet_int();
  switch (tmp___4) {
  case 0: ;
  if (ldv_state_variable_20 == 1) {
    il4965_build_addsta_hcmd((struct il_addsta_cmd const *)ldvarg92, ldvarg93);
    ldv_state_variable_20 = 1;
  } else {
  }
  goto ldv_54690;
  case 1: ;
  if (ldv_state_variable_20 == 1) {
    il4965_hw_valid_rtc_data_addr(ldvarg91);
    ldv_state_variable_20 = 1;
  } else {
  }
  goto ldv_54690;
  case 2: ;
  if (ldv_state_variable_20 == 1) {
    il4965_commit_rxon(il4965_ops_group0);
    ldv_state_variable_20 = 1;
  } else {
  }
  goto ldv_54690;
  case 3: ;
  if (ldv_state_variable_20 == 1) {
    il4965_send_led_cmd(il4965_ops_group0, ldvarg90);
    ldv_state_variable_20 = 1;
  } else {
  }
  goto ldv_54690;
  case 4: ;
  if (ldv_state_variable_20 == 1) {
    il4965_eeprom_release_semaphore(il4965_ops_group0);
    ldv_state_variable_20 = 1;
  } else {
  }
  goto ldv_54690;
  case 5: ;
  if (ldv_state_variable_20 == 1) {
    il4965_update_bcast_stations(il4965_ops_group0);
    ldv_state_variable_20 = 1;
  } else {
  }
  goto ldv_54690;
  case 6: ;
  if (ldv_state_variable_20 == 1) {
    il4965_dump_nic_error_log(il4965_ops_group0);
    ldv_state_variable_20 = 1;
  } else {
  }
  goto ldv_54690;
  case 7: ;
  if (ldv_state_variable_20 == 1) {
    il4965_send_tx_power(il4965_ops_group0);
    ldv_state_variable_20 = 1;
  } else {
  }
  goto ldv_54690;
  case 8: ;
  if (ldv_state_variable_20 == 1) {
    il4965_post_associate(il4965_ops_group0);
    ldv_state_variable_20 = 1;
  } else {
  }
  goto ldv_54690;
  case 9: ;
  if (ldv_state_variable_20 == 1) {
    il4965_txq_update_byte_cnt_tbl(il4965_ops_group0, il4965_ops_group2, (int )ldvarg89);
    ldv_state_variable_20 = 1;
  } else {
  }
  goto ldv_54690;
  case 10: ;
  if (ldv_state_variable_20 == 1) {
    il4965_post_scan(il4965_ops_group0);
    ldv_state_variable_20 = 1;
  } else {
  }
  goto ldv_54690;
  case 11: ;
  if (ldv_state_variable_20 == 1) {
    il_apm_init(il4965_ops_group0);
    ldv_state_variable_20 = 1;
  } else {
  }
  goto ldv_54690;
  case 12: ;
  if (ldv_state_variable_20 == 1) {
    il4965_hw_tx_queue_init(il4965_ops_group0, il4965_ops_group2);
    ldv_state_variable_20 = 1;
  } else {
  }
  goto ldv_54690;
  case 13: ;
  if (ldv_state_variable_20 == 1) {
    il4965_get_hcmd_size((int )ldvarg87, (int )ldvarg88);
    ldv_state_variable_20 = 1;
  } else {
  }
  goto ldv_54690;
  case 14: ;
  if (ldv_state_variable_20 == 1) {
    il4965_load_bsm(il4965_ops_group0);
    ldv_state_variable_20 = 1;
  } else {
  }
  goto ldv_54690;
  case 15: ;
  if (ldv_state_variable_20 == 1) {
    il4965_send_rxon_assoc(il4965_ops_group0);
    ldv_state_variable_20 = 1;
  } else {
  }
  goto ldv_54690;
  case 16: ;
  if (ldv_state_variable_20 == 1) {
    il4965_manage_ibss_station(il4965_ops_group0, il4965_ops_group1, (int )ldvarg86);
    ldv_state_variable_20 = 1;
  } else {
  }
  goto ldv_54690;
  case 17: ;
  if (ldv_state_variable_20 == 1) {
    il4965_set_rxon_chain(il4965_ops_group0);
    ldv_state_variable_20 = 1;
  } else {
  }
  goto ldv_54690;
  case 18: ;
  if (ldv_state_variable_20 == 1) {
    il4965_config_ap(il4965_ops_group0);
    ldv_state_variable_20 = 1;
  } else {
  }
  goto ldv_54690;
  case 19: ;
  if (ldv_state_variable_20 == 1) {
    il4965_hw_txq_attach_buf_to_tfd(il4965_ops_group0, il4965_ops_group2, ldvarg84,
                                    (int )ldvarg83, (int )ldvarg85, (int )ldvarg82);
    ldv_state_variable_20 = 1;
  } else {
  }
  goto ldv_54690;
  case 20: ;
  if (ldv_state_variable_20 == 1) {
    il4965_dump_fh(il4965_ops_group0, ldvarg81, (int )ldvarg80);
    ldv_state_variable_20 = 1;
  } else {
  }
  goto ldv_54690;
  case 21: ;
  if (ldv_state_variable_20 == 1) {
    il4965_hw_txq_free_tfd(il4965_ops_group0, il4965_ops_group2);
    ldv_state_variable_20 = 1;
  } else {
  }
  goto ldv_54690;
  case 22: ;
  if (ldv_state_variable_20 == 1) {
    il4965_request_scan(il4965_ops_group0, il4965_ops_group1);
    ldv_state_variable_20 = 1;
  } else {
  }
  goto ldv_54690;
  case 23: ;
  if (ldv_state_variable_20 == 1) {
    il4965_update_chain_flags(il4965_ops_group0);
    ldv_state_variable_20 = 1;
  } else {
  }
  goto ldv_54690;
  case 24: ;
  if (ldv_state_variable_20 == 1) {
    il4965_init_alive_start(il4965_ops_group0);
    ldv_state_variable_20 = 1;
  } else {
  }
  goto ldv_54690;
  case 25: ;
  if (ldv_state_variable_20 == 1) {
    il4965_eeprom_acquire_semaphore(il4965_ops_group0);
    ldv_state_variable_20 = 1;
  } else {
  }
  goto ldv_54690;
  case 26: ;
  if (ldv_state_variable_20 == 1) {
    il4965_hw_channel_switch(il4965_ops_group0, ldvarg79);
    ldv_state_variable_20 = 1;
  } else {
  }
  goto ldv_54690;
  default:
  ldv_stop();
  }
  ldv_54690: ;
  return;
}
}
__inline static void spin_unlock_irqrestore(spinlock_t *lock , unsigned long flags )
{
  {
  ldv_spin_unlock();
  ldv_spin_unlock_irqrestore_12(lock, flags);
  return;
}
}
bool ldv_queue_work_on_15(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                          struct work_struct *ldv_func_arg3 )
{
  ldv_func_ret_type___2 ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3);
  ldv_func_res = tmp;
  activate_work_7(ldv_func_arg3, 2);
  return (ldv_func_res);
}
}
bool ldv_queue_delayed_work_on_16(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                  struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 )
{
  ldv_func_ret_type___3 ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_delayed_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, ldv_func_arg4);
  ldv_func_res = tmp;
  activate_work_7(& ldv_func_arg3->work, 2);
  return (ldv_func_res);
}
}
bool ldv_queue_work_on_17(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                          struct work_struct *ldv_func_arg3 )
{
  ldv_func_ret_type___4 ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3);
  ldv_func_res = tmp;
  activate_work_7(ldv_func_arg3, 2);
  return (ldv_func_res);
}
}
void ldv_flush_workqueue_18(struct workqueue_struct *ldv_func_arg1 )
{
  {
  flush_workqueue(ldv_func_arg1);
  call_and_disable_all_7(2);
  return;
}
}
bool ldv_queue_delayed_work_on_19(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                  struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 )
{
  ldv_func_ret_type___5 ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_delayed_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, ldv_func_arg4);
  ldv_func_res = tmp;
  activate_work_7(& ldv_func_arg3->work, 2);
  return (ldv_func_res);
}
}
void *ldv_kmem_cache_alloc_25(struct kmem_cache *ldv_func_arg1 , gfp_t flags )
{
  void *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = ldv_undef_ptr();
  return (tmp);
}
}
int ldv_pskb_expand_head_31(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                            gfp_t flags )
{
  void *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = ldv_undef_ptr();
  return ((int )((long )tmp));
}
}
struct sk_buff *ldv_skb_clone_33(struct sk_buff *ldv_func_arg1 , gfp_t flags )
{
  void *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = ldv_undef_ptr();
  return ((struct sk_buff *)tmp);
}
}
struct sk_buff *ldv_skb_copy_35(struct sk_buff const *ldv_func_arg1 , gfp_t flags )
{
  void *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = ldv_undef_ptr();
  return ((struct sk_buff *)tmp);
}
}
struct sk_buff *ldv___netdev_alloc_skb_36(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                          gfp_t flags )
{
  void *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = ldv_undef_ptr();
  return ((struct sk_buff *)tmp);
}
}
struct sk_buff *ldv___netdev_alloc_skb_37(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                          gfp_t flags )
{
  void *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = ldv_undef_ptr();
  return ((struct sk_buff *)tmp);
}
}
struct sk_buff *ldv___netdev_alloc_skb_38(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                          gfp_t flags )
{
  void *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = ldv_undef_ptr();
  return ((struct sk_buff *)tmp);
}
}
int ldv_pskb_expand_head_39(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                            gfp_t flags )
{
  void *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = ldv_undef_ptr();
  return ((int )((long )tmp));
}
}
int ldv_pskb_expand_head_40(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                            gfp_t flags )
{
  void *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = ldv_undef_ptr();
  return ((int )((long )tmp));
}
}
struct sk_buff *ldv_skb_clone_41(struct sk_buff *ldv_func_arg1 , gfp_t flags )
{
  void *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = ldv_undef_ptr();
  return ((struct sk_buff *)tmp);
}
}
__inline static long ldv__builtin_expect(long exp , long c ) ;
extern struct module __this_module ;
__inline static void clear_bit(long nr , unsigned long volatile *addr )
{
  {
  __asm__ volatile (".pushsection .smp_locks,\"a\"\n.balign 4\n.long 671f - .\n.popsection\n671:\n\tlock; btr %1,%0": "+m" (*((long volatile *)addr)): "Ir" (nr));
  return;
}
}
__inline static int test_and_set_bit(long nr , unsigned long volatile *addr )
{
  char c ;
  {
  __asm__ volatile (".pushsection .smp_locks,\"a\"\n.balign 4\n.long 671f - .\n.popsection\n671:\n\tlock; bts %2, %0; setc %1": "+m" (*addr),
                       "=qm" (c): "Ir" (nr): "memory");
  return ((int )((signed char )c) != 0);
}
}
__inline static int test_and_clear_bit(long nr , unsigned long volatile *addr )
{
  char c ;
  {
  __asm__ volatile (".pushsection .smp_locks,\"a\"\n.balign 4\n.long 671f - .\n.popsection\n671:\n\tlock; btr %2, %0; setc %1": "+m" (*addr),
                       "=qm" (c): "Ir" (nr): "memory");
  return ((int )((signed char )c) != 0);
}
}
__inline static int variable_test_bit(long nr , unsigned long const volatile *addr )
{
  int oldbit ;
  {
  __asm__ volatile ("bt %2,%1\n\tsbb %0,%0": "=r" (oldbit): "m" (*((unsigned long *)addr)),
                       "Ir" (nr));
  return (oldbit);
}
}
__inline static __u32 __le32_to_cpup(__le32 const *p )
{
  {
  return ((__u32 )*p);
}
}
extern int printk(char const * , ...) ;
extern void print_hex_dump(char const * , char const * , int , int , int ,
                           void const * , size_t , bool ) ;
extern void __might_sleep(char const * , int , int ) ;
extern int kstrtoull(char const * , unsigned int , unsigned long long * ) ;
__inline static int kstrtoul(char const *s , unsigned int base , unsigned long *res )
{
  int tmp ;
  {
  tmp = kstrtoull(s, base, (unsigned long long *)res);
  return (tmp);
}
}
extern int sprintf(char * , char const * , ...) ;
extern int snprintf(char * , size_t , char const * , ...) ;
extern int scnprintf(char * , size_t , char const * , ...) ;
__inline static void INIT_LIST_HEAD(struct list_head *list )
{
  {
  list->next = list;
  list->prev = list;
  return;
}
}
extern void __list_add(struct list_head * , struct list_head * , struct list_head * ) ;
__inline static void list_add(struct list_head *new , struct list_head *head )
{
  {
  __list_add(new, head, head->next);
  return;
}
}
__inline static void list_add_tail(struct list_head *new , struct list_head *head )
{
  {
  __list_add(new, head->prev, head);
  return;
}
}
extern void list_del(struct list_head * ) ;
__inline static int list_empty(struct list_head const *head )
{
  {
  return ((unsigned long )((struct list_head const *)head->next) == (unsigned long )head);
}
}
extern unsigned long __phys_addr(unsigned long ) ;
extern __kernel_size_t strnlen(char const * , __kernel_size_t ) ;
extern void __xadd_wrong_size(void) ;
__inline static void atomic_set(atomic_t *v , int i )
{
  {
  v->counter = i;
  return;
}
}
__inline static void atomic_inc(atomic_t *v )
{
  {
  __asm__ volatile (".pushsection .smp_locks,\"a\"\n.balign 4\n.long 671f - .\n.popsection\n671:\n\tlock; incl %0": "+m" (v->counter));
  return;
}
}
__inline static int atomic_add_return(int i , atomic_t *v )
{
  int __ret ;
  {
  __ret = i;
  switch (4UL) {
  case 1UL:
  __asm__ volatile (".pushsection .smp_locks,\"a\"\n.balign 4\n.long 671f - .\n.popsection\n671:\n\tlock; xaddb %b0, %1\n": "+q" (__ret),
                       "+m" (v->counter): : "memory", "cc");
  goto ldv_5763;
  case 2UL:
  __asm__ volatile (".pushsection .smp_locks,\"a\"\n.balign 4\n.long 671f - .\n.popsection\n671:\n\tlock; xaddw %w0, %1\n": "+r" (__ret),
                       "+m" (v->counter): : "memory", "cc");
  goto ldv_5763;
  case 4UL:
  __asm__ volatile (".pushsection .smp_locks,\"a\"\n.balign 4\n.long 671f - .\n.popsection\n671:\n\tlock; xaddl %0, %1\n": "+r" (__ret),
                       "+m" (v->counter): : "memory", "cc");
  goto ldv_5763;
  case 8UL:
  __asm__ volatile (".pushsection .smp_locks,\"a\"\n.balign 4\n.long 671f - .\n.popsection\n671:\n\tlock; xaddq %q0, %1\n": "+r" (__ret),
                       "+m" (v->counter): : "memory", "cc");
  goto ldv_5763;
  default:
  __xadd_wrong_size();
  }
  ldv_5763: ;
  return (__ret + i);
}
}
__inline static int atomic_sub_return(int i , atomic_t *v )
{
  int tmp ;
  {
  tmp = atomic_add_return(- i, v);
  return (tmp);
}
}
__inline static void __preempt_count_add(int val )
{
  int pao_ID__ ;
  {
  pao_ID__ = 0;
  switch (4UL) {
  case 1UL: ;
  if (pao_ID__ == 1) {
    __asm__ ("incb %%gs:%0": "+m" (__preempt_count));
  } else
  if (pao_ID__ == -1) {
    __asm__ ("decb %%gs:%0": "+m" (__preempt_count));
  } else {
    __asm__ ("addb %1, %%gs:%0": "+m" (__preempt_count): "qi" (val));
  }
  goto ldv_6163;
  case 2UL: ;
  if (pao_ID__ == 1) {
    __asm__ ("incw %%gs:%0": "+m" (__preempt_count));
  } else
  if (pao_ID__ == -1) {
    __asm__ ("decw %%gs:%0": "+m" (__preempt_count));
  } else {
    __asm__ ("addw %1, %%gs:%0": "+m" (__preempt_count): "ri" (val));
  }
  goto ldv_6163;
  case 4UL: ;
  if (pao_ID__ == 1) {
    __asm__ ("incl %%gs:%0": "+m" (__preempt_count));
  } else
  if (pao_ID__ == -1) {
    __asm__ ("decl %%gs:%0": "+m" (__preempt_count));
  } else {
    __asm__ ("addl %1, %%gs:%0": "+m" (__preempt_count): "ri" (val));
  }
  goto ldv_6163;
  case 8UL: ;
  if (pao_ID__ == 1) {
    __asm__ ("incq %%gs:%0": "+m" (__preempt_count));
  } else
  if (pao_ID__ == -1) {
    __asm__ ("decq %%gs:%0": "+m" (__preempt_count));
  } else {
    __asm__ ("addq %1, %%gs:%0": "+m" (__preempt_count): "re" (val));
  }
  goto ldv_6163;
  default:
  __bad_percpu_size();
  }
  ldv_6163: ;
  return;
}
}
__inline static void __preempt_count_sub(int val )
{
  int pao_ID__ ;
  {
  pao_ID__ = 0;
  switch (4UL) {
  case 1UL: ;
  if (pao_ID__ == 1) {
    __asm__ ("incb %%gs:%0": "+m" (__preempt_count));
  } else
  if (pao_ID__ == -1) {
    __asm__ ("decb %%gs:%0": "+m" (__preempt_count));
  } else {
    __asm__ ("addb %1, %%gs:%0": "+m" (__preempt_count): "qi" (- val));
  }
  goto ldv_6175;
  case 2UL: ;
  if (pao_ID__ == 1) {
    __asm__ ("incw %%gs:%0": "+m" (__preempt_count));
  } else
  if (pao_ID__ == -1) {
    __asm__ ("decw %%gs:%0": "+m" (__preempt_count));
  } else {
    __asm__ ("addw %1, %%gs:%0": "+m" (__preempt_count): "ri" (- val));
  }
  goto ldv_6175;
  case 4UL: ;
  if (pao_ID__ == 1) {
    __asm__ ("incl %%gs:%0": "+m" (__preempt_count));
  } else
  if (pao_ID__ == -1) {
    __asm__ ("decl %%gs:%0": "+m" (__preempt_count));
  } else {
    __asm__ ("addl %1, %%gs:%0": "+m" (__preempt_count): "ri" (- val));
  }
  goto ldv_6175;
  case 8UL: ;
  if (pao_ID__ == 1) {
    __asm__ ("incq %%gs:%0": "+m" (__preempt_count));
  } else
  if (pao_ID__ == -1) {
    __asm__ ("decq %%gs:%0": "+m" (__preempt_count));
  } else {
    __asm__ ("addq %1, %%gs:%0": "+m" (__preempt_count): "re" (- val));
  }
  goto ldv_6175;
  default:
  __bad_percpu_size();
  }
  ldv_6175: ;
  return;
}
}
extern void lockdep_init_map(struct lockdep_map * , char const * , struct lock_class_key * ,
                             int ) ;
extern void lock_acquire(struct lockdep_map * , unsigned int , int , int , int ,
                         struct lockdep_map * , unsigned long ) ;
extern void lock_release(struct lockdep_map * , int , unsigned long ) ;
extern void lockdep_rcu_suspicious(char const * , int const , char const * ) ;
extern void __raw_spin_lock_init(raw_spinlock_t * , char const * , struct lock_class_key * ) ;
extern void _raw_spin_lock(raw_spinlock_t * ) ;
extern void _raw_spin_lock_irq(raw_spinlock_t * ) ;
extern void _raw_spin_unlock(raw_spinlock_t * ) ;
extern void _raw_spin_unlock_irq(raw_spinlock_t * ) ;
__inline static raw_spinlock_t *spinlock_check(spinlock_t *lock )
{
  {
  return (& lock->__annonCompField18.rlock);
}
}
__inline static void ldv_spin_lock_51(spinlock_t *lock )
{
  {
  _raw_spin_lock(& lock->__annonCompField18.rlock);
  return;
}
}
__inline static void spin_lock(spinlock_t *lock ) ;
__inline static void ldv_spin_lock_irq_54(spinlock_t *lock )
{
  {
  _raw_spin_lock_irq(& lock->__annonCompField18.rlock);
  return;
}
}
__inline static void spin_lock_irq(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_55(spinlock_t *lock )
{
  {
  _raw_spin_unlock(& lock->__annonCompField18.rlock);
  return;
}
}
__inline static void spin_unlock(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_irq_57(spinlock_t *lock )
{
  {
  _raw_spin_unlock_irq(& lock->__annonCompField18.rlock);
  return;
}
}
__inline static void spin_unlock_irq(spinlock_t *lock ) ;
__inline static void spin_unlock_irqrestore(spinlock_t *lock , unsigned long flags ) ;
extern void __init_waitqueue_head(wait_queue_head_t * , char const * , struct lock_class_key * ) ;
extern void __wake_up(wait_queue_head_t * , unsigned int , int , void * ) ;
extern long prepare_to_wait_event(wait_queue_head_t * , wait_queue_t * , int ) ;
extern void finish_wait(wait_queue_head_t * , wait_queue_t * ) ;
extern void __mutex_init(struct mutex * , char const * , struct lock_class_key * ) ;
extern void mutex_lock_nested(struct mutex * , unsigned int ) ;
extern void mutex_unlock(struct mutex * ) ;
__inline static void init_completion(struct completion *x )
{
  struct lock_class_key __key ;
  {
  x->done = 0U;
  __init_waitqueue_head(& x->wait, "&x->wait", & __key);
  return;
}
}
extern void wait_for_completion(struct completion * ) ;
extern void complete(struct completion * ) ;
extern unsigned long volatile jiffies ;
extern unsigned int jiffies_to_msecs(unsigned long const ) ;
extern unsigned long __msecs_to_jiffies(unsigned int const ) ;
__inline static unsigned long msecs_to_jiffies(unsigned int const m )
{
  unsigned long tmp___0 ;
  {
  tmp___0 = __msecs_to_jiffies(m);
  return (tmp___0);
}
}
__inline static void __rcu_read_lock(void)
{
  {
  __preempt_count_add(1);
  __asm__ volatile ("": : : "memory");
  return;
}
}
__inline static void __rcu_read_unlock(void)
{
  {
  __asm__ volatile ("": : : "memory");
  __preempt_count_sub(1);
  return;
}
}
extern bool rcu_is_watching(void) ;
__inline static void rcu_lock_acquire(struct lockdep_map *map )
{
  {
  lock_acquire(map, 0U, 0, 2, 0, (struct lockdep_map *)0, 0UL);
  return;
}
}
__inline static void rcu_lock_release(struct lockdep_map *map )
{
  {
  lock_release(map, 1, 0UL);
  return;
}
}
extern struct lockdep_map rcu_lock_map ;
extern int debug_lockdep_rcu_enabled(void) ;
__inline static void rcu_read_lock(void)
{
  bool __warned ;
  int tmp ;
  bool tmp___0 ;
  int tmp___1 ;
  {
  __rcu_read_lock();
  rcu_lock_acquire(& rcu_lock_map);
  tmp = debug_lockdep_rcu_enabled();
  if (tmp != 0 && ! __warned) {
    tmp___0 = rcu_is_watching();
    if (tmp___0) {
      tmp___1 = 0;
    } else {
      tmp___1 = 1;
    }
    if (tmp___1) {
      __warned = 1;
      lockdep_rcu_suspicious("include/linux/rcupdate.h", 849, "rcu_read_lock() used illegally while idle");
    } else {
    }
  } else {
  }
  return;
}
}
__inline static void rcu_read_unlock(void)
{
  bool __warned ;
  int tmp ;
  bool tmp___0 ;
  int tmp___1 ;
  {
  tmp = debug_lockdep_rcu_enabled();
  if (tmp != 0 && ! __warned) {
    tmp___0 = rcu_is_watching();
    if (tmp___0) {
      tmp___1 = 0;
    } else {
      tmp___1 = 1;
    }
    if (tmp___1) {
      __warned = 1;
      lockdep_rcu_suspicious("include/linux/rcupdate.h", 900, "rcu_read_unlock() used illegally while idle");
    } else {
    }
  } else {
  }
  __rcu_read_unlock();
  rcu_lock_release(& rcu_lock_map);
  return;
}
}
extern void init_timer_key(struct timer_list * , unsigned int , char const * ,
                           struct lock_class_key * ) ;
extern int mod_timer(struct timer_list * , unsigned long ) ;
int ldv_mod_timer_88(struct timer_list *ldv_func_arg1 , unsigned long ldv_func_arg2 ) ;
extern int del_timer_sync(struct timer_list * ) ;
int ldv_del_timer_sync_89(struct timer_list *ldv_func_arg1 ) ;
int ldv_del_timer_sync_95(struct timer_list *ldv_func_arg1 ) ;
extern void delayed_work_timer_fn(unsigned long ) ;
extern void __init_work(struct work_struct * , int ) ;
extern struct workqueue_struct *__alloc_workqueue_key(char const * , unsigned int ,
                                                      int , struct lock_class_key * ,
                                                      char const * , ...) ;
extern void destroy_workqueue(struct workqueue_struct * ) ;
void ldv_destroy_workqueue_98(struct workqueue_struct *ldv_func_arg1 ) ;
void ldv_destroy_workqueue_102(struct workqueue_struct *ldv_func_arg1 ) ;
bool ldv_queue_work_on_61(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                          struct work_struct *ldv_func_arg3 ) ;
bool ldv_queue_work_on_63(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                          struct work_struct *ldv_func_arg3 ) ;
bool ldv_queue_delayed_work_on_62(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                  struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 ) ;
bool ldv_queue_delayed_work_on_65(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                  struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 ) ;
void ldv_flush_workqueue_64(struct workqueue_struct *ldv_func_arg1 ) ;
void ldv_flush_workqueue_90(struct workqueue_struct *ldv_func_arg1 ) ;
void ldv_flush_workqueue_101(struct workqueue_struct *ldv_func_arg1 ) ;
extern bool cancel_work_sync(struct work_struct * ) ;
bool ldv_cancel_work_sync_91(struct work_struct *ldv_func_arg1 ) ;
bool ldv_cancel_work_sync_94(struct work_struct *ldv_func_arg1 ) ;
extern bool cancel_delayed_work(struct delayed_work * ) ;
bool ldv_cancel_delayed_work_93(struct delayed_work *ldv_func_arg1 ) ;
extern bool cancel_delayed_work_sync(struct delayed_work * ) ;
bool ldv_cancel_delayed_work_sync_92(struct delayed_work *ldv_func_arg1 ) ;
__inline static bool queue_work___0(struct workqueue_struct *wq , struct work_struct *work )
{
  bool tmp ;
  {
  tmp = ldv_queue_work_on_61(8192, wq, work);
  return (tmp);
}
}
__inline static bool queue_delayed_work(struct workqueue_struct *wq , struct delayed_work *dwork ,
                                        unsigned long delay )
{
  bool tmp ;
  {
  tmp = ldv_queue_delayed_work_on_62(8192, wq, dwork, delay);
  return (tmp);
}
}
__inline static void writeb(unsigned char val , void volatile *addr )
{
  {
  __asm__ volatile ("movb %0,%1": : "q" (val), "m" (*((unsigned char volatile *)addr)): "memory");
  return;
}
}
extern void iounmap(void volatile * ) ;
__inline static struct page *alloc_pages(gfp_t flags , unsigned int order ) ;
extern void __free_pages(struct page * , unsigned int ) ;
extern int sysfs_create_group(struct kobject * , struct attribute_group const * ) ;
extern void sysfs_remove_group(struct kobject * , struct attribute_group const * ) ;
extern long schedule_timeout(long ) ;
extern void kfree(void const * ) ;
void *ldv_kmem_cache_alloc_71(struct kmem_cache *ldv_func_arg1 , gfp_t flags ) ;
__inline static void *kmalloc(size_t size , gfp_t flags ) ;
__inline static void *kmalloc(size_t size , gfp_t flags ) ;
int ldv_state_variable_20 ;
int pci_counter ;
struct work_struct *ldv_work_struct_3_1 ;
int ldv_state_variable_0 ;
struct timer_list *ldv_timer_list_9_3 ;
struct timer_list *ldv_timer_list_8_1 ;
int ldv_state_variable_12 ;
struct dentry *rs_4965_ops_group2 ;
int ldv_state_variable_14 ;
int ldv_timer_9_1 ;
int ldv_timer_9_0 ;
int ldv_state_variable_17 ;
int ldv_timer_9_3 ;
struct work_struct *ldv_work_struct_2_0 ;
int ldv_work_7_2 ;
int ldv_state_variable_19 ;
struct work_struct *ldv_work_struct_4_3 ;
int ldv_state_variable_9 ;
struct work_struct *ldv_work_struct_7_1 ;
int ldv_work_6_0 ;
struct work_struct *ldv_work_struct_2_2 ;
struct work_struct *ldv_work_struct_6_1 ;
struct inode *rs_sta_dbgfs_scale_table_ops_group1 ;
int ref_cnt ;
int ldv_irq_line_1_1 ;
int ldv_work_3_3 ;
struct work_struct *ldv_work_struct_4_0 ;
int ldv_state_variable_7 ;
struct work_struct *ldv_work_struct_3_3 ;
struct ieee80211_supported_band *rs_4965_ops_group0 ;
int ldv_timer_8_2 ;
struct ieee80211_vif *il4965_ops_group1 ;
struct timer_list *ldv_timer_list_9_2 ;
int ldv_timer_9_2 ;
struct device_attribute *dev_attr_tx_power_group0 ;
struct work_struct *ldv_work_struct_2_1 ;
int ldv_work_4_0 ;
struct work_struct *ldv_work_struct_3_2 ;
int ldv_state_variable_6 ;
void *ldv_irq_data_1_0 ;
void *ldv_irq_data_1_3 ;
int ldv_work_5_0 ;
struct work_struct *ldv_work_struct_7_2 ;
struct work_struct *ldv_work_struct_4_2 ;
struct work_struct *ldv_work_struct_7_0 ;
struct timer_list *ldv_timer_list_8_3 ;
struct device *dev_attr_debug_level_group1 ;
struct file *rs_sta_dbgfs_rate_scale_data_ops_group2 ;
struct work_struct *ldv_work_struct_6_0 ;
struct work_struct *ldv_work_struct_5_1 ;
int ldv_work_5_2 ;
int ldv_work_7_1 ;
int ldv_state_variable_3 ;
int ldv_irq_line_1_0 ;
int ldv_work_6_2 ;
struct timer_list *ldv_timer_list_9_0 ;
int ldv_timer_8_3 ;
int ldv_state_variable_4 ;
int ldv_work_2_1 ;
int ldv_state_variable_8 ;
int ldv_state_variable_15 ;
struct ieee80211_hw *il4965_mac_ops_group0 ;
struct work_struct *ldv_work_struct_6_3 ;
struct work_struct *ldv_work_struct_5_2 ;
struct work_struct *ldv_work_struct_5_3 ;
int ldv_state_variable_5 ;
int ldv_state_variable_13 ;
struct il_priv *il4965_ops_group0 ;
struct inode *rs_sta_dbgfs_stats_table_ops_group1 ;
int ldv_work_3_2 ;
struct pci_dev *il4965_driver_group1 ;
int ldv_work_3_0 ;
struct work_struct *ldv_work_struct_2_3 ;
struct il_tx_queue *il4965_ops_group2 ;
int ldv_work_7_3 ;
struct device_attribute *dev_attr_debug_level_group0 ;
int ldv_state_variable_1 ;
int ldv_work_5_3 ;
int ldv_irq_line_1_2 ;
int ldv_timer_8_0 ;
struct file *rs_sta_dbgfs_scale_table_ops_group2 ;
int ldv_work_6_1 ;
void *ldv_irq_data_1_1 ;
struct work_struct *ldv_work_struct_6_2 ;
int ldv_state_variable_10 ;
int ldv_work_7_0 ;
int ldv_work_4_1 ;
int ldv_work_4_3 ;
int ldv_timer_8_1 ;
int ldv_state_variable_16 ;
int ldv_work_3_1 ;
struct inode *rs_sta_dbgfs_rate_scale_data_ops_group1 ;
struct work_struct *ldv_work_struct_7_3 ;
int ldv_state_variable_2 ;
int ldv_work_2_0 ;
int ldv_work_5_1 ;
void *ldv_irq_data_1_2 ;
int ldv_work_6_3 ;
struct ieee80211_sta *rs_4965_ops_group1 ;
struct work_struct *ldv_work_struct_3_0 ;
int ldv_work_4_2 ;
int ldv_state_variable_11 ;
int ldv_state_variable_18 ;
struct work_struct *ldv_work_struct_5_0 ;
struct timer_list *ldv_timer_list_8_0 ;
int ldv_irq_line_1_3 ;
struct device *dev_attr_tx_power_group1 ;
int ldv_work_2_2 ;
struct file *il4965_debugfs_ops_group0 ;
struct work_struct *ldv_work_struct_4_1 ;
int ldv_work_2_3 ;
struct timer_list *ldv_timer_list_8_2 ;
struct timer_list *ldv_timer_list_9_1 ;
struct file *rs_sta_dbgfs_stats_table_ops_group2 ;
void activate_work_5(struct work_struct *work , int state ) ;
void work_init_3(void) ;
void invoke_work_6(void) ;
void activate_pending_timer_9(struct timer_list *timer , unsigned long data , int pending_flag ) ;
void call_and_disable_all_2(int state ) ;
int reg_check_1(irqreturn_t (*handler)(int , void * ) ) ;
void ldv_pci_driver_15(void) ;
void disable_suitable_timer_8(struct timer_list *timer ) ;
void activate_work_3(struct work_struct *work , int state ) ;
void work_init_5(void) ;
void ldv_file_operations_14(void) ;
void call_and_disable_all_4(int state ) ;
void work_init_7(void) ;
void invoke_work_7(void) ;
void disable_work_5(struct work_struct *work ) ;
void ldv_initialize_ieee80211_ops_16(void) ;
void call_and_disable_work_3(struct work_struct *work ) ;
void disable_work_7(struct work_struct *work ) ;
void disable_work_3(struct work_struct *work ) ;
void ldv_timer_9(int state , struct timer_list *timer ) ;
void call_and_disable_all_6(int state ) ;
void activate_pending_timer_8(struct timer_list *timer , unsigned long data , int pending_flag ) ;
void disable_suitable_irq_1(int line , void *data ) ;
void activate_suitable_irq_1(int line , void *data ) ;
void invoke_work_4(void) ;
void timer_init_9(void) ;
void call_and_disable_work_5(struct work_struct *work ) ;
void ldv_file_operations_12(void) ;
void invoke_work_2(void) ;
void activate_suitable_timer_9(struct timer_list *timer , unsigned long data ) ;
void activate_work_6(struct work_struct *work , int state ) ;
void activate_work_4(struct work_struct *work , int state ) ;
void call_and_disable_work_7(struct work_struct *work ) ;
void call_and_disable_all_5(int state ) ;
void choose_timer_8(void) ;
void work_init_2(void) ;
int reg_timer_9(struct timer_list *timer , void (*function)(unsigned long ) , unsigned long data ) ;
int reg_timer_8(struct timer_list *timer , void (*function)(unsigned long ) , unsigned long data ) ;
void ldv_initialize_device_attribute_17(void) ;
void disable_suitable_timer_9(struct timer_list *timer ) ;
void activate_work_2(struct work_struct *work , int state ) ;
void work_init_6(void) ;
void disable_work_6(struct work_struct *work ) ;
void ldv_initialize_rate_control_ops_11(void) ;
void choose_interrupt_1(void) ;
void invoke_work_5(void) ;
void ldv_initialize_il_debugfs_ops_10(void) ;
void ldv_initialize_device_attribute_19(void) ;
void choose_timer_9(void) ;
void ldv_file_operations_13(void) ;
void disable_work_2(struct work_struct *work ) ;
void disable_work_4(struct work_struct *work ) ;
void work_init_4(void) ;
void invoke_work_3(void) ;
int ldv_irq_1(int state , int line , void *data ) ;
void ldv_timer_8(int state , struct timer_list *timer ) ;
void timer_init_8(void) ;
void call_and_disable_all_3(int state ) ;
void activate_suitable_timer_8(struct timer_list *timer , unsigned long data ) ;
void call_and_disable_work_6(struct work_struct *work ) ;
void call_and_disable_work_4(struct work_struct *work ) ;
void call_and_disable_work_2(struct work_struct *work ) ;
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
extern void device_release_driver(struct device * ) ;
extern int pci_bus_read_config_word(struct pci_bus * , unsigned int , int , u16 * ) ;
extern int pci_bus_write_config_byte(struct pci_bus * , unsigned int , int , u8 ) ;
extern int pci_bus_write_config_word(struct pci_bus * , unsigned int , int , u16 ) ;
__inline static int pci_read_config_word(struct pci_dev const *dev , int where ,
                                         u16 *val )
{
  int tmp ;
  {
  tmp = pci_bus_read_config_word(dev->bus, dev->devfn, where, val);
  return (tmp);
}
}
__inline static int pci_write_config_byte(struct pci_dev const *dev , int where ,
                                          u8 val )
{
  int tmp ;
  {
  tmp = pci_bus_write_config_byte(dev->bus, dev->devfn, where, (int )val);
  return (tmp);
}
}
__inline static int pci_write_config_word(struct pci_dev const *dev , int where ,
                                          u16 val )
{
  int tmp ;
  {
  tmp = pci_bus_write_config_word(dev->bus, dev->devfn, where, (int )val);
  return (tmp);
}
}
extern int pci_enable_device(struct pci_dev * ) ;
extern void pci_disable_device(struct pci_dev * ) ;
extern void pci_set_master(struct pci_dev * ) ;
extern int pci_request_regions(struct pci_dev * , char const * ) ;
extern void pci_release_regions(struct pci_dev * ) ;
extern int __pci_register_driver(struct pci_driver * , struct module * , char const * ) ;
int ldv___pci_register_driver_105(struct pci_driver *ldv_func_arg1 , struct module *ldv_func_arg2 ,
                                  char const *ldv_func_arg3 ) ;
extern void pci_unregister_driver(struct pci_driver * ) ;
void ldv_pci_unregister_driver_106(struct pci_driver *ldv_func_arg1 ) ;
__inline static void *lowmem_page_address(struct page const *page )
{
  {
  return ((void *)((unsigned long )((unsigned long long )(((long )page + 24189255811072L) / 64L) << 12) + 0xffff880000000000UL));
}
}
extern void pci_disable_msi(struct pci_dev * ) ;
extern int pci_enable_msi_range(struct pci_dev * , int , int ) ;
__inline static int pci_enable_msi_exact(struct pci_dev *dev , int nvec )
{
  int rc ;
  int tmp ;
  {
  tmp = pci_enable_msi_range(dev, nvec, nvec);
  rc = tmp;
  if (rc < 0) {
    return (rc);
  } else {
  }
  return (0);
}
}
__inline static int valid_dma_direction(int dma_direction )
{
  {
  return ((dma_direction == 0 || dma_direction == 1) || dma_direction == 2);
}
}
__inline static void kmemcheck_mark_initialized(void *address , unsigned int n )
{
  {
  return;
}
}
extern void debug_dma_map_page(struct device * , struct page * , size_t , size_t ,
                               int , dma_addr_t , bool ) ;
extern void debug_dma_mapping_error(struct device * , dma_addr_t ) ;
extern void debug_dma_unmap_page(struct device * , dma_addr_t , size_t , int ,
                                 bool ) ;
extern void debug_dma_sync_single_for_cpu(struct device * , dma_addr_t , size_t ,
                                          int ) ;
extern void debug_dma_sync_single_for_device(struct device * , dma_addr_t , size_t ,
                                             int ) ;
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
__inline static dma_addr_t dma_map_single_attrs(struct device *dev , void *ptr , size_t size ,
                                                enum dma_data_direction dir , struct dma_attrs *attrs )
{
  struct dma_map_ops *ops ;
  struct dma_map_ops *tmp ;
  dma_addr_t addr ;
  int tmp___0 ;
  long tmp___1 ;
  unsigned long tmp___2 ;
  unsigned long tmp___3 ;
  {
  tmp = get_dma_ops(dev);
  ops = tmp;
  kmemcheck_mark_initialized(ptr, (unsigned int )size);
  tmp___0 = valid_dma_direction((int )dir);
  tmp___1 = ldv__builtin_expect(tmp___0 == 0, 0L);
  if (tmp___1 != 0L) {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"include/asm-generic/dma-mapping-common.h"),
                         "i" (19), "i" (12UL));
    ldv_26713: ;
    goto ldv_26713;
  } else {
  }
  tmp___2 = __phys_addr((unsigned long )ptr);
  addr = (*(ops->map_page))(dev, (struct page *)-24189255811072L + (tmp___2 >> 12),
                            (unsigned long )ptr & 4095UL, size, dir, attrs);
  tmp___3 = __phys_addr((unsigned long )ptr);
  debug_dma_map_page(dev, (struct page *)-24189255811072L + (tmp___3 >> 12), (unsigned long )ptr & 4095UL,
                     size, (int )dir, addr, 1);
  return (addr);
}
}
__inline static void dma_unmap_single_attrs(struct device *dev , dma_addr_t addr ,
                                            size_t size , enum dma_data_direction dir ,
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
                         "i" (36), "i" (12UL));
    ldv_26722: ;
    goto ldv_26722;
  } else {
  }
  if ((unsigned long )ops->unmap_page != (unsigned long )((void (*)(struct device * ,
                                                                    dma_addr_t ,
                                                                    size_t , enum dma_data_direction ,
                                                                    struct dma_attrs * ))0)) {
    (*(ops->unmap_page))(dev, addr, size, dir, attrs);
  } else {
  }
  debug_dma_unmap_page(dev, addr, size, (int )dir, 1);
  return;
}
}
__inline static dma_addr_t dma_map_page(struct device *dev , struct page *page , size_t offset ,
                                        size_t size , enum dma_data_direction dir )
{
  struct dma_map_ops *ops ;
  struct dma_map_ops *tmp ;
  dma_addr_t addr ;
  void *tmp___0 ;
  int tmp___1 ;
  long tmp___2 ;
  {
  tmp = get_dma_ops(dev);
  ops = tmp;
  tmp___0 = lowmem_page_address((struct page const *)page);
  kmemcheck_mark_initialized(tmp___0 + offset, (unsigned int )size);
  tmp___1 = valid_dma_direction((int )dir);
  tmp___2 = ldv__builtin_expect(tmp___1 == 0, 0L);
  if (tmp___2 != 0L) {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"include/asm-generic/dma-mapping-common.h"),
                         "i" (84), "i" (12UL));
    ldv_26757: ;
    goto ldv_26757;
  } else {
  }
  addr = (*(ops->map_page))(dev, page, offset, size, dir, (struct dma_attrs *)0);
  debug_dma_map_page(dev, page, offset, size, (int )dir, addr, 0);
  return (addr);
}
}
__inline static void dma_unmap_page(struct device *dev , dma_addr_t addr , size_t size ,
                                    enum dma_data_direction dir )
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
                         "i" (96), "i" (12UL));
    ldv_26765: ;
    goto ldv_26765;
  } else {
  }
  if ((unsigned long )ops->unmap_page != (unsigned long )((void (*)(struct device * ,
                                                                    dma_addr_t ,
                                                                    size_t , enum dma_data_direction ,
                                                                    struct dma_attrs * ))0)) {
    (*(ops->unmap_page))(dev, addr, size, dir, (struct dma_attrs *)0);
  } else {
  }
  debug_dma_unmap_page(dev, addr, size, (int )dir, 0);
  return;
}
}
__inline static void dma_sync_single_for_cpu(struct device *dev , dma_addr_t addr ,
                                             size_t size , enum dma_data_direction dir )
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
                         "i" (108), "i" (12UL));
    ldv_26773: ;
    goto ldv_26773;
  } else {
  }
  if ((unsigned long )ops->sync_single_for_cpu != (unsigned long )((void (*)(struct device * ,
                                                                             dma_addr_t ,
                                                                             size_t ,
                                                                             enum dma_data_direction ))0)) {
    (*(ops->sync_single_for_cpu))(dev, addr, size, dir);
  } else {
  }
  debug_dma_sync_single_for_cpu(dev, addr, size, (int )dir);
  return;
}
}
__inline static void dma_sync_single_for_device(struct device *dev , dma_addr_t addr ,
                                                size_t size , enum dma_data_direction dir )
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
                         "i" (120), "i" (12UL));
    ldv_26781: ;
    goto ldv_26781;
  } else {
  }
  if ((unsigned long )ops->sync_single_for_device != (unsigned long )((void (*)(struct device * ,
                                                                                dma_addr_t ,
                                                                                size_t ,
                                                                                enum dma_data_direction ))0)) {
    (*(ops->sync_single_for_device))(dev, addr, size, dir);
  } else {
  }
  debug_dma_sync_single_for_device(dev, addr, size, (int )dir);
  return;
}
}
__inline static int dma_mapping_error(struct device *dev , dma_addr_t dma_addr )
{
  struct dma_map_ops *ops ;
  struct dma_map_ops *tmp ;
  int tmp___0 ;
  {
  tmp = get_dma_ops(dev);
  ops = tmp;
  debug_dma_mapping_error(dev, dma_addr);
  if ((unsigned long )ops->mapping_error != (unsigned long )((int (*)(struct device * ,
                                                                      dma_addr_t ))0)) {
    tmp___0 = (*(ops->mapping_error))(dev, dma_addr);
    return (tmp___0);
  } else {
  }
  return (dma_addr == 0ULL);
}
}
extern int dma_supported(struct device * , u64 ) ;
extern int dma_set_mask(struct device * , u64 ) ;
extern void *dma_alloc_attrs(struct device * , size_t , dma_addr_t * , gfp_t , struct dma_attrs * ) ;
extern void dma_free_attrs(struct device * , size_t , void * , dma_addr_t , struct dma_attrs * ) ;
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
__inline static dma_addr_t pci_map_single(struct pci_dev *hwdev , void *ptr , size_t size ,
                                          int direction )
{
  dma_addr_t tmp ;
  {
  tmp = dma_map_single_attrs((unsigned long )hwdev != (unsigned long )((struct pci_dev *)0) ? & hwdev->dev : (struct device *)0,
                             ptr, size, (enum dma_data_direction )direction, (struct dma_attrs *)0);
  return (tmp);
}
}
__inline static void pci_unmap_single(struct pci_dev *hwdev , dma_addr_t dma_addr ,
                                      size_t size , int direction )
{
  {
  dma_unmap_single_attrs((unsigned long )hwdev != (unsigned long )((struct pci_dev *)0) ? & hwdev->dev : (struct device *)0,
                         dma_addr, size, (enum dma_data_direction )direction, (struct dma_attrs *)0);
  return;
}
}
__inline static dma_addr_t pci_map_page(struct pci_dev *hwdev , struct page *page ,
                                        unsigned long offset , size_t size , int direction )
{
  dma_addr_t tmp ;
  {
  tmp = dma_map_page((unsigned long )hwdev != (unsigned long )((struct pci_dev *)0) ? & hwdev->dev : (struct device *)0,
                     page, offset, size, (enum dma_data_direction )direction);
  return (tmp);
}
}
__inline static void pci_unmap_page(struct pci_dev *hwdev , dma_addr_t dma_address ,
                                    size_t size , int direction )
{
  {
  dma_unmap_page((unsigned long )hwdev != (unsigned long )((struct pci_dev *)0) ? & hwdev->dev : (struct device *)0,
                 dma_address, size, (enum dma_data_direction )direction);
  return;
}
}
__inline static void pci_dma_sync_single_for_cpu(struct pci_dev *hwdev , dma_addr_t dma_handle ,
                                                 size_t size , int direction )
{
  {
  dma_sync_single_for_cpu((unsigned long )hwdev != (unsigned long )((struct pci_dev *)0) ? & hwdev->dev : (struct device *)0,
                          dma_handle, size, (enum dma_data_direction )direction);
  return;
}
}
__inline static void pci_dma_sync_single_for_device(struct pci_dev *hwdev , dma_addr_t dma_handle ,
                                                    size_t size , int direction )
{
  {
  dma_sync_single_for_device((unsigned long )hwdev != (unsigned long )((struct pci_dev *)0) ? & hwdev->dev : (struct device *)0,
                             dma_handle, size, (enum dma_data_direction )direction);
  return;
}
}
__inline static int pci_dma_mapping_error(struct pci_dev *pdev , dma_addr_t dma_addr )
{
  int tmp ;
  {
  tmp = dma_mapping_error(& pdev->dev, dma_addr);
  return (tmp);
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
extern void *pci_ioremap_bar(struct pci_dev * , int ) ;
extern void pci_disable_link_state(struct pci_dev * , int ) ;
extern int net_ratelimit(void) ;
extern void consume_skb(struct sk_buff * ) ;
struct sk_buff *ldv_skb_clone_79(struct sk_buff *ldv_func_arg1 , gfp_t flags ) ;
struct sk_buff *ldv_skb_clone_87(struct sk_buff *ldv_func_arg1 , gfp_t flags ) ;
struct sk_buff *ldv_skb_copy_81(struct sk_buff const *ldv_func_arg1 , gfp_t flags ) ;
int ldv_pskb_expand_head_77(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                            gfp_t flags ) ;
int ldv_pskb_expand_head_85(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                            gfp_t flags ) ;
int ldv_pskb_expand_head_86(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                            gfp_t flags ) ;
extern void skb_add_rx_frag(struct sk_buff * , int , struct page * , int , int ,
                            unsigned int ) ;
extern unsigned char *skb_put(struct sk_buff * , unsigned int ) ;
struct sk_buff *ldv___netdev_alloc_skb_82(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                          gfp_t flags ) ;
struct sk_buff *ldv___netdev_alloc_skb_83(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                          gfp_t flags ) ;
struct sk_buff *ldv___netdev_alloc_skb_84(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                          gfp_t flags ) ;
__inline static struct sk_buff *netdev_alloc_skb(struct net_device *dev , unsigned int length )
{
  struct sk_buff *tmp ;
  {
  tmp = ldv___netdev_alloc_skb_82(dev, length, 32U);
  return (tmp);
}
}
__inline static struct sk_buff *dev_alloc_skb(unsigned int length )
{
  struct sk_buff *tmp ;
  {
  tmp = netdev_alloc_skb((struct net_device *)0, length);
  return (tmp);
}
}
__inline static u16 skb_get_queue_mapping(struct sk_buff const *skb )
{
  {
  return ((u16 )skb->queue_mapping);
}
}
extern void synchronize_irq(unsigned int ) ;
extern int request_threaded_irq(unsigned int , irqreturn_t (*)(int , void * ) ,
                                irqreturn_t (*)(int , void * ) , unsigned long ,
                                char const * , void * ) ;
__inline static int request_irq(unsigned int irq , irqreturn_t (*handler)(int , void * ) ,
                                unsigned long flags , char const *name , void *dev )
{
  int tmp ;
  {
  tmp = request_threaded_irq(irq, handler, (irqreturn_t (*)(int , void * ))0, flags,
                             name, dev);
  return (tmp);
}
}
__inline static int ldv_request_irq_97(unsigned int irq , irqreturn_t (*handler)(int ,
                                                                                 void * ) ,
                                       unsigned long flags , char const *name ,
                                       void *dev ) ;
extern void free_irq(unsigned int , void * ) ;
void ldv_free_irq_99(unsigned int ldv_func_arg1 , void *ldv_func_arg2 ) ;
void ldv_free_irq_103(unsigned int ldv_func_arg1 , void *ldv_func_arg2 ) ;
extern void tasklet_kill(struct tasklet_struct * ) ;
extern void tasklet_init(struct tasklet_struct * , void (*)(unsigned long ) , unsigned long ) ;
extern void __dev_kfree_skb_any(struct sk_buff * , enum skb_free_reason ) ;
__inline static void dev_kfree_skb_any(struct sk_buff *skb )
{
  {
  __dev_kfree_skb_any(skb, 1);
  return;
}
}
extern int request_firmware_nowait(struct module * , bool , char const * , struct device * ,
                                   gfp_t , void * , void (*)(struct firmware const * ,
                                                              void * ) ) ;
extern void release_firmware(struct firmware const * ) ;
__inline static u32 get_unaligned_le32(void const *p )
{
  __u32 tmp ;
  {
  tmp = __le32_to_cpup((__le32 const *)p);
  return (tmp);
}
}
__inline static void put_unaligned_le32(u32 val , void *p )
{
  {
  *((__le32 *)p) = val;
  return;
}
}
__inline static bool is_broadcast_ether_addr(u8 const *addr )
{
  {
  return ((unsigned int )(((int )((unsigned short )*((u16 const *)addr)) & (int )((unsigned short )*((u16 const *)addr + 2U))) & (int )((unsigned short )*((u16 const *)addr + 4U))) == 65535U);
}
}
__inline static bool ether_addr_equal(u8 const *addr1 , u8 const *addr2 )
{
  u32 fold ;
  {
  fold = ((unsigned int )*((u32 const *)addr1) ^ (unsigned int )*((u32 const *)addr2)) | (unsigned int )((int )((unsigned short )*((u16 const *)addr1 + 4U)) ^ (int )((unsigned short )*((u16 const *)addr2 + 4U)));
  return (fold == 0U);
}
}
__inline static int ieee80211_has_tods(__le16 fc )
{
  {
  return (((int )fc & 256) != 0);
}
}
__inline static int ieee80211_has_a4(__le16 fc )
{
  __le16 tmp ;
  {
  tmp = 768U;
  return (((int )fc & (int )tmp) == (int )tmp);
}
}
__inline static int ieee80211_has_morefrags(__le16 fc )
{
  {
  return (((int )fc & 1024) != 0);
}
}
__inline static int ieee80211_is_mgmt(__le16 fc )
{
  {
  return (((int )fc & 12) == 0);
}
}
__inline static int ieee80211_is_data(__le16 fc )
{
  {
  return (((int )fc & 12) == 8);
}
}
__inline static int ieee80211_is_data_qos(__le16 fc )
{
  {
  return (((int )fc & 140) == 136);
}
}
__inline static int ieee80211_is_assoc_req(__le16 fc )
{
  {
  return (((int )fc & 252) == 0);
}
}
__inline static int ieee80211_is_reassoc_req(__le16 fc )
{
  {
  return (((int )fc & 252) == 32);
}
}
__inline static int ieee80211_is_probe_resp(__le16 fc )
{
  {
  return (((int )fc & 252) == 80);
}
}
__inline static int ieee80211_is_auth(__le16 fc )
{
  {
  return (((int )fc & 252) == 176);
}
}
__inline static int ieee80211_is_back_req(__le16 fc )
{
  {
  return (((int )fc & 252) == 132);
}
}
__inline static u8 *ieee80211_get_qos_ctl(struct ieee80211_hdr *hdr )
{
  int tmp ;
  {
  tmp = ieee80211_has_a4((int )hdr->frame_control);
  if (tmp != 0) {
    return ((u8 *)hdr + 30UL);
  } else {
    return ((u8 *)hdr + 24UL);
  }
}
}
__inline static u8 *ieee80211_get_DA(struct ieee80211_hdr *hdr )
{
  int tmp ;
  {
  tmp = ieee80211_has_tods((int )hdr->frame_control);
  if (tmp != 0) {
    return ((u8 *)(& hdr->addr3));
  } else {
    return ((u8 *)(& hdr->addr1));
  }
}
}
__inline static enum nl80211_channel_type cfg80211_get_chandef_type(struct cfg80211_chan_def const *chandef )
{
  int __ret_warn_on ;
  long tmp ;
  {
  switch ((unsigned int )chandef->width) {
  case 0U: ;
  return (0);
  case 1U: ;
  return (1);
  case 2U: ;
  if ((unsigned int )chandef->center_freq1 > (unsigned int )(chandef->chan)->center_freq) {
    return (3);
  } else {
  }
  return (2);
  default:
  __ret_warn_on = 1;
  tmp = ldv__builtin_expect(__ret_warn_on != 0, 0L);
  if (tmp != 0L) {
    warn_slowpath_null("include/net/cfg80211.h", 423);
  } else {
  }
  ldv__builtin_expect(__ret_warn_on != 0, 0L);
  return (0);
  }
}
}
__inline static void set_wiphy_dev(struct wiphy *wiphy , struct device *dev )
{
  {
  wiphy->dev.parent = dev;
  return;
}
}
extern int ieee80211_channel_to_frequency(int , enum ieee80211_band ) ;
extern unsigned int ieee80211_hdrlen(__le16 ) ;
extern void wiphy_rfkill_set_hw_state(struct wiphy * , bool ) ;
__inline static struct ieee80211_tx_info *IEEE80211_SKB_CB(struct sk_buff *skb )
{
  {
  return ((struct ieee80211_tx_info *)(& skb->cb));
}
}
__inline static struct ieee80211_rx_status *IEEE80211_SKB_RXCB(struct sk_buff *skb )
{
  {
  return ((struct ieee80211_rx_status *)(& skb->cb));
}
}
__inline static void _ieee80211_hw_set(struct ieee80211_hw *hw , enum ieee80211_hw_flags flg )
{
  {
  return;
}
}
__inline static void SET_IEEE80211_DEV(struct ieee80211_hw *hw , struct device *dev )
{
  {
  set_wiphy_dev(hw->wiphy, dev);
  return;
}
}
__inline static struct ieee80211_rate *ieee80211_get_tx_rate(struct ieee80211_hw const *hw ,
                                                             struct ieee80211_tx_info const *c )
{
  bool __warned ;
  int __ret_warn_once ;
  int __ret_warn_on ;
  long tmp ;
  long tmp___0 ;
  long tmp___1 ;
  long tmp___2 ;
  {
  __ret_warn_once = (int )((signed char )c->__annonCompField100.control.__annonCompField98.__annonCompField97.rates[0].idx) < 0;
  tmp___1 = ldv__builtin_expect(__ret_warn_once != 0, 0L);
  if (tmp___1 != 0L) {
    __ret_warn_on = ! __warned;
    tmp = ldv__builtin_expect(__ret_warn_on != 0, 0L);
    if (tmp != 0L) {
      warn_slowpath_null("include/net/mac80211.h", 2151);
    } else {
    }
    tmp___0 = ldv__builtin_expect(__ret_warn_on != 0, 0L);
    if (tmp___0 != 0L) {
      __warned = 1;
    } else {
    }
  } else {
  }
  tmp___2 = ldv__builtin_expect(__ret_warn_once != 0, 0L);
  if (tmp___2 != 0L) {
    return ((struct ieee80211_rate *)0);
  } else {
  }
  return (((hw->wiphy)->bands[(int )c->band])->bitrates + (unsigned long )c->__annonCompField100.control.__annonCompField98.__annonCompField97.rates[0].idx);
}
}
extern struct ieee80211_hw *ieee80211_alloc_hw_nm(size_t , struct ieee80211_ops const * ,
                                                  char const * ) ;
__inline static struct ieee80211_hw *ieee80211_alloc_hw(size_t priv_data_len , struct ieee80211_ops const *ops )
{
  struct ieee80211_hw *tmp ;
  {
  tmp = ieee80211_alloc_hw_nm(priv_data_len, ops, (char const *)0);
  return (tmp);
}
}
__inline static struct ieee80211_hw *ldv_ieee80211_alloc_hw_96(size_t priv_data_len ,
                                                               struct ieee80211_ops const *ops ) ;
extern int ieee80211_register_hw(struct ieee80211_hw * ) ;
extern void ieee80211_unregister_hw(struct ieee80211_hw * ) ;
extern void ieee80211_free_hw(struct ieee80211_hw * ) ;
void ldv_ieee80211_free_hw_100(struct ieee80211_hw *ldv_func_arg1 ) ;
void ldv_ieee80211_free_hw_104(struct ieee80211_hw *ldv_func_arg1 ) ;
extern void ieee80211_restart_hw(struct ieee80211_hw * ) ;
extern void ieee80211_rx(struct ieee80211_hw * , struct sk_buff * ) ;
extern void ieee80211_tx_status_irqsafe(struct ieee80211_hw * , struct sk_buff * ) ;
extern void ieee80211_get_tkip_p2k(struct ieee80211_key_conf * , struct sk_buff * ,
                                   u8 * ) ;
extern void ieee80211_wake_queue(struct ieee80211_hw * , int ) ;
extern void ieee80211_stop_queue(struct ieee80211_hw * , int ) ;
extern void ieee80211_stop_queues(struct ieee80211_hw * ) ;
extern void ieee80211_wake_queues(struct ieee80211_hw * ) ;
extern void ieee80211_start_tx_ba_cb_irqsafe(struct ieee80211_vif * , u8 const * ,
                                             u16 ) ;
extern void ieee80211_stop_tx_ba_cb_irqsafe(struct ieee80211_vif * , u8 const * ,
                                            u16 ) ;
extern struct ieee80211_sta *ieee80211_find_sta(struct ieee80211_vif * , u8 const * ) ;
extern void ieee80211_sta_block_awake(struct ieee80211_hw * , struct ieee80211_sta * ,
                                      bool ) ;
extern void ieee80211_chswitch_done(struct ieee80211_vif * , bool ) ;
__inline static int rate_supported(struct ieee80211_sta *sta , enum ieee80211_band band ,
                                   int index )
{
  {
  return ((unsigned long )sta == (unsigned long )((struct ieee80211_sta *)0) || (int )((unsigned long )sta->supp_rates[(unsigned int )band] >> index) & 1);
}
}
__inline static s8 rate_lowest_index(struct ieee80211_supported_band *sband , struct ieee80211_sta *sta )
{
  int i ;
  int tmp ;
  bool __warned ;
  int __ret_warn_once ;
  int __ret_warn_on ;
  long tmp___0 ;
  long tmp___1 ;
  long tmp___2 ;
  {
  i = 0;
  goto ldv_51470;
  ldv_51469:
  tmp = rate_supported(sta, sband->band, i);
  if (tmp != 0) {
    return ((s8 )i);
  } else {
  }
  i = i + 1;
  ldv_51470: ;
  if (sband->n_bitrates > i) {
    goto ldv_51469;
  } else {
  }
  __ret_warn_once = 1;
  tmp___2 = ldv__builtin_expect(__ret_warn_once != 0, 0L);
  if (tmp___2 != 0L) {
    __ret_warn_on = ! __warned;
    tmp___0 = ldv__builtin_expect(__ret_warn_on != 0, 0L);
    if (tmp___0 != 0L) {
      warn_slowpath_null("include/net/mac80211.h", 5189);
    } else {
    }
    tmp___1 = ldv__builtin_expect(__ret_warn_on != 0, 0L);
    if (tmp___1 != 0L) {
      __warned = 1;
    } else {
    }
  } else {
  }
  ldv__builtin_expect(__ret_warn_once != 0, 0L);
  return (0);
}
}
extern int il_eeprom_init(struct il_priv * ) ;
extern void il_eeprom_free(struct il_priv * ) ;
extern int il_init_channel_map(struct il_priv * ) ;
extern void il_free_channel_map(struct il_priv * ) ;
extern u8 const il_bcast_addr[6U] ;
extern int il_queue_space(struct il_queue const * ) ;
__inline static int il_queue_used(struct il_queue const *q , int i )
{
  {
  return ((int )q->write_ptr >= (int )q->read_ptr ? (int )q->read_ptr <= i && (int )q->write_ptr > i : (int )q->read_ptr <= i || (int )q->write_ptr > i);
}
}
__inline static void il_txq_ctx_activate(struct il_priv *il , int txq_id )
{
  {
  set_bit((long )txq_id, (unsigned long volatile *)(& il->txq_ctx_active_msk));
  return;
}
}
__inline static void il_txq_ctx_deactivate(struct il_priv *il , int txq_id )
{
  {
  clear_bit((long )txq_id, (unsigned long volatile *)(& il->txq_ctx_active_msk));
  return;
}
}
__inline static int il_is_channel_passive(struct il_channel_info const *ch )
{
  {
  return (((int )ch->flags & 8) == 0);
}
}
__inline static void __il_free_pages(struct il_priv *il , struct page *page )
{
  {
  __free_pages(page, il->hw_params.rx_page_order);
  il->alloc_rxb_page = il->alloc_rxb_page - 1;
  return;
}
}
extern void il_leds_init(struct il_priv * ) ;
extern void il_leds_exit(struct il_priv * ) ;
extern int il_mac_conf_tx(struct ieee80211_hw * , struct ieee80211_vif * , u16 ,
                          struct ieee80211_tx_queue_params const * ) ;
extern int il_mac_tx_last_beacon(struct ieee80211_hw * ) ;
extern int il_set_rxon_channel(struct il_priv * , struct ieee80211_channel * ) ;
extern void il_set_flags_for_band(struct il_priv * , enum ieee80211_band , struct ieee80211_vif * ) ;
extern void il_connection_init_rx_config(struct il_priv * ) ;
extern void il_set_rate(struct il_priv * ) ;
extern int il_set_decrypted_flag(struct il_priv * , struct ieee80211_hdr * , u32 ,
                                 struct ieee80211_rx_status * ) ;
extern void il_irq_handle_error(struct il_priv * ) ;
extern int il_mac_add_interface(struct ieee80211_hw * , struct ieee80211_vif * ) ;
extern void il_mac_remove_interface(struct ieee80211_hw * , struct ieee80211_vif * ) ;
extern int il_mac_change_interface(struct ieee80211_hw * , struct ieee80211_vif * ,
                                   enum nl80211_iftype , bool ) ;
extern void il_mac_flush(struct ieee80211_hw * , struct ieee80211_vif * , u32 , bool ) ;
extern int il_alloc_txq_mem(struct il_priv * ) ;
extern void il_free_txq_mem(struct il_priv * ) ;
extern void il_update_stats(struct il_priv * , bool , __le16 , u16 ) ;
extern void il_hdl_pm_sleep(struct il_priv * , struct il_rx_buf * ) ;
extern void il_hdl_pm_debug_stats(struct il_priv * , struct il_rx_buf * ) ;
extern void il_hdl_error(struct il_priv * , struct il_rx_buf * ) ;
extern void il_hdl_csa(struct il_priv * , struct il_rx_buf * ) ;
extern void il_cmd_queue_unmap(struct il_priv * ) ;
extern void il_cmd_queue_free(struct il_priv * ) ;
extern int il_rx_queue_alloc(struct il_priv * ) ;
extern void il_rx_queue_update_write_ptr(struct il_priv * , struct il_rx_queue * ) ;
extern int il_rx_queue_space(struct il_rx_queue const * ) ;
extern void il_tx_cmd_complete(struct il_priv * , struct il_rx_buf * ) ;
extern void il_hdl_spectrum_measurement(struct il_priv * , struct il_rx_buf * ) ;
extern void il_txq_update_write_ptr(struct il_priv * , struct il_tx_queue * ) ;
extern int il_tx_queue_init(struct il_priv * , u32 ) ;
extern void il_tx_queue_reset(struct il_priv * , u32 ) ;
extern void il_tx_queue_unmap(struct il_priv * , int ) ;
extern void il_tx_queue_free(struct il_priv * , int ) ;
extern void il_setup_watchdog(struct il_priv * ) ;
extern u8 il_get_lowest_plcp(struct il_priv * ) ;
extern void il_init_scan_params(struct il_priv * ) ;
extern int il_scan_cancel(struct il_priv * ) ;
extern int il_mac_hw_scan(struct ieee80211_hw * , struct ieee80211_vif * , struct ieee80211_scan_request * ) ;
extern int il_force_reset(struct il_priv * , bool ) ;
extern u16 il_fill_probe_req(struct il_priv * , struct ieee80211_mgmt * , u8 const * ,
                             u8 const * , int , int ) ;
extern void il_setup_rx_scan_handlers(struct il_priv * ) ;
extern u16 il_get_active_dwell_time(struct il_priv * , enum ieee80211_band , u8 ) ;
extern u16 il_get_passive_dwell_time(struct il_priv * , enum ieee80211_band , struct ieee80211_vif * ) ;
extern void il_setup_scan_deferred_work(struct il_priv * ) ;
extern void il_cancel_scan_deferred_work(struct il_priv * ) ;
extern char const *il_get_cmd_string(u8 ) ;
extern int il_send_cmd_sync(struct il_priv * , struct il_host_cmd * ) ;
extern void il_bg_watchdog(unsigned long ) ;
extern struct dev_pm_ops const il_pm_ops ;
extern int il_init_geos(struct il_priv * ) ;
extern void il_free_geos(struct il_priv * ) ;
__inline static int il_is_ready(struct il_priv *il )
{
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  {
  tmp = constant_test_bit(7L, (unsigned long const volatile *)(& il->status));
  if (tmp != 0) {
    tmp___0 = constant_test_bit(9L, (unsigned long const volatile *)(& il->status));
    if (tmp___0 != 0) {
      tmp___1 = constant_test_bit(10L, (unsigned long const volatile *)(& il->status));
      if (tmp___1 == 0) {
        tmp___2 = 1;
      } else {
        tmp___2 = 0;
      }
    } else {
      tmp___2 = 0;
    }
  } else {
    tmp___2 = 0;
  }
  return (tmp___2);
}
}
__inline static int il_is_init(struct il_priv *il )
{
  int tmp ;
  {
  tmp = constant_test_bit(5L, (unsigned long const volatile *)(& il->status));
  return (tmp);
}
}
__inline static int il_is_rfkill(struct il_priv *il )
{
  int tmp ;
  {
  tmp = constant_test_bit(3L, (unsigned long const volatile *)(& il->status));
  return (tmp);
}
}
__inline static int il_is_ready_rf(struct il_priv *il )
{
  int tmp ;
  int tmp___0 ;
  {
  tmp = il_is_rfkill(il);
  if (tmp != 0) {
    return (0);
  } else {
  }
  tmp___0 = il_is_ready(il);
  return (tmp___0);
}
}
extern void il_send_bt_config(struct il_priv * ) ;
extern int il_send_stats_request(struct il_priv * , u8 , bool ) ;
extern void il_apm_stop(struct il_priv * ) ;
extern void _il_apm_stop(struct il_priv * ) ;
__inline static struct ieee80211_supported_band const *il_get_hw_mode(struct il_priv *il ,
                                                                        enum ieee80211_band band )
{
  {
  return ((struct ieee80211_supported_band const *)((il->hw)->wiphy)->bands[(unsigned int )band]);
}
}
extern int il_mac_config(struct ieee80211_hw * , u32 ) ;
extern void il_mac_reset_tsf(struct ieee80211_hw * , struct ieee80211_vif * ) ;
extern void il_mac_bss_info_changed(struct ieee80211_hw * , struct ieee80211_vif * ,
                                    struct ieee80211_bss_conf * , u32 ) ;
extern void il_tx_cmd_protection(struct il_priv * , struct ieee80211_tx_info * , __le16 ,
                                 __le32 * ) ;
extern irqreturn_t il_isr(int , void * ) ;
extern u32 il_read_targ_mem(struct il_priv * , u32 ) ;
extern void il_write_targ_mem(struct il_priv * , u32 , u32 ) ;
__inline static bool il_need_reclaim(struct il_priv *il , struct il_rx_pkt *pkt )
{
  {
  return ((bool )(((((((int )((short )pkt->hdr.sequence) >= 0 && (unsigned int )pkt->hdr.cmd != 157U) && (unsigned int )pkt->hdr.cmd != 28U) && (unsigned int )pkt->hdr.cmd != 192U) && (unsigned int )pkt->hdr.cmd != 195U) && (unsigned int )pkt->hdr.cmd != 193U) && (unsigned int )pkt->hdr.cmd != 197U));
}
}
__inline static void _il_write8(struct il_priv *il , u32 ofs , u8 val )
{
  {
  writeb((int )val, (void volatile *)il->hw_base + (unsigned long )ofs);
  return;
}
}
__inline static u32 il_rd(struct il_priv *il , u32 reg )
{
  u32 value ;
  unsigned long reg_flags ;
  {
  ldv_spin_lock();
  _il_grab_nic_access(il);
  value = _il_rd(il, reg);
  _il_release_nic_access(il);
  spin_unlock_irqrestore(& il->reg_lock, reg_flags);
  return (value);
}
}
__inline static void il_wr___0(struct il_priv *il , u32 reg , u32 value )
{
  unsigned long reg_flags ;
  bool tmp ;
  long tmp___0 ;
  {
  ldv_spin_lock();
  tmp = _il_grab_nic_access(il);
  tmp___0 = ldv__builtin_expect((long )tmp, 1L);
  if (tmp___0 != 0L) {
    _il_wr(il, reg, value);
    _il_release_nic_access(il);
  } else {
  }
  spin_unlock_irqrestore(& il->reg_lock, reg_flags);
  return;
}
}
__inline static u32 _il_rd_prph(struct il_priv *il , u32 reg )
{
  u32 tmp ;
  {
  _il_wr(il, 1096U, reg | 50331648U);
  tmp = _il_rd(il, 1104U);
  return (tmp);
}
}
__inline static void il_set_bits_prph(struct il_priv *il , u32 reg , u32 mask )
{
  unsigned long reg_flags ;
  u32 tmp ;
  bool tmp___0 ;
  long tmp___1 ;
  {
  ldv_spin_lock();
  tmp___0 = _il_grab_nic_access(il);
  tmp___1 = ldv__builtin_expect((long )tmp___0, 1L);
  if (tmp___1 != 0L) {
    tmp = _il_rd_prph(il, reg);
    _il_wr_prph(il, reg, tmp | mask);
    _il_release_nic_access(il);
  } else {
  }
  spin_unlock_irqrestore(& il->reg_lock, reg_flags);
  return;
}
}
__inline static void il_set_bits_mask_prph(struct il_priv *il , u32 reg , u32 bits ,
                                           u32 mask )
{
  unsigned long reg_flags ;
  u32 tmp ;
  bool tmp___0 ;
  long tmp___1 ;
  {
  ldv_spin_lock();
  tmp___0 = _il_grab_nic_access(il);
  tmp___1 = ldv__builtin_expect((long )tmp___0, 1L);
  if (tmp___1 != 0L) {
    tmp = _il_rd_prph(il, reg);
    _il_wr_prph(il, reg, (tmp & mask) | bits);
    _il_release_nic_access(il);
  } else {
  }
  spin_unlock_irqrestore(& il->reg_lock, reg_flags);
  return;
}
}
__inline static void il_clear_bits_prph(struct il_priv *il , u32 reg , u32 mask )
{
  unsigned long reg_flags ;
  u32 val ;
  bool tmp ;
  long tmp___0 ;
  {
  ldv_spin_lock();
  tmp = _il_grab_nic_access(il);
  tmp___0 = ldv__builtin_expect((long )tmp, 1L);
  if (tmp___0 != 0L) {
    val = _il_rd_prph(il, reg);
    _il_wr_prph(il, reg, ~ mask & val);
    _il_release_nic_access(il);
  } else {
  }
  spin_unlock_irqrestore(& il->reg_lock, reg_flags);
  return;
}
}
extern void il_dealloc_bcast_stations(struct il_priv * ) ;
extern int il_get_free_ucode_key_idx(struct il_priv * ) ;
extern int il_send_add_sta(struct il_priv * , struct il_addsta_cmd * , u8 ) ;
extern int il_add_station_common(struct il_priv * , u8 const * , bool , struct ieee80211_sta * ,
                                 u8 * ) ;
extern int il_remove_station(struct il_priv * , u8 const , u8 const * ) ;
extern int il_mac_sta_remove(struct ieee80211_hw * , struct ieee80211_vif * , struct ieee80211_sta * ) ;
extern u8 il_prep_station(struct il_priv * , u8 const * , bool , struct ieee80211_sta * ) ;
extern int il_send_lq_cmd(struct il_priv * , struct il_link_quality_cmd * , u8 ,
                          bool ) ;
__inline static void il_clear_driver_stations(struct il_priv *il )
{
  unsigned long flags ;
  {
  ldv_spin_lock();
  memset((void *)(& il->stations), 0, 13312UL);
  il->num_stations = 0;
  il->ucode_key_table = 0UL;
  spin_unlock_irqrestore(& il->sta_lock, flags);
  return;
}
}
__inline static int il_sta_id(struct ieee80211_sta *sta )
{
  int __ret_warn_on ;
  long tmp ;
  long tmp___0 ;
  {
  __ret_warn_on = (unsigned long )sta == (unsigned long )((struct ieee80211_sta *)0);
  tmp = ldv__builtin_expect(__ret_warn_on != 0, 0L);
  if (tmp != 0L) {
    warn_slowpath_null("/home/ldvuser/mutilin/launch/inst/current/envs/linux-4.2-rc1.tar.xz/linux-4.2-rc1/drivers/net/wireless/iwlegacy/common.h",
                       2175);
  } else {
  }
  tmp___0 = ldv__builtin_expect(__ret_warn_on != 0, 0L);
  if (tmp___0 != 0L) {
    return (255);
  } else {
  }
  return ((int )((struct il_station_priv_common *)(& sta->drv_priv))->sta_id);
}
}
__inline static int il_sta_id_or_broadcast(struct il_priv *il , struct ieee80211_sta *sta )
{
  int sta_id ;
  int __ret_warn_on ;
  long tmp ;
  {
  if ((unsigned long )sta == (unsigned long )((struct ieee80211_sta *)0)) {
    return ((int )il->hw_params.bcast_id);
  } else {
  }
  sta_id = il_sta_id(sta);
  __ret_warn_on = sta_id == 255;
  tmp = ldv__builtin_expect(__ret_warn_on != 0, 0L);
  if (tmp != 0L) {
    warn_slowpath_null("/home/ldvuser/mutilin/launch/inst/current/envs/linux-4.2-rc1.tar.xz/linux-4.2-rc1/drivers/net/wireless/iwlegacy/common.h",
                       2206);
  } else {
  }
  ldv__builtin_expect(__ret_warn_on != 0, 0L);
  return (sta_id);
}
}
__inline static int il_queue_inc_wrap(int idx , int n_bd )
{
  {
  idx = idx + 1;
  return (idx & (n_bd + -1));
}
}
__inline static int il_queue_dec_wrap(int idx , int n_bd )
{
  {
  idx = idx - 1;
  return (idx & (n_bd + -1));
}
}
__inline static void il_free_fw_desc(struct pci_dev *pci_dev , struct fw_desc *desc )
{
  {
  if ((unsigned long )desc->v_addr != (unsigned long )((void *)0)) {
    dma_free_attrs(& pci_dev->dev, (size_t )desc->len, desc->v_addr, desc->p_addr,
                   (struct dma_attrs *)0);
  } else {
  }
  desc->v_addr = (void *)0;
  desc->len = 0U;
  return;
}
}
__inline static int il_alloc_fw_desc(struct pci_dev *pci_dev , struct fw_desc *desc )
{
  {
  if (desc->len == 0U) {
    desc->v_addr = (void *)0;
    return (-22);
  } else {
  }
  desc->v_addr = dma_alloc_attrs(& pci_dev->dev, (size_t )desc->len, & desc->p_addr,
                                 208U, (struct dma_attrs *)0);
  return ((unsigned long )desc->v_addr != (unsigned long )((void *)0) ? 0 : -12);
}
}
__inline static void il_set_swq_id(struct il_tx_queue *txq , u8 ac , u8 hwq )
{
  long tmp ;
  long tmp___0 ;
  {
  tmp = ldv__builtin_expect((unsigned int )ac > 3U, 0L);
  if (tmp != 0L) {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"/home/ldvuser/mutilin/launch/inst/current/envs/linux-4.2-rc1.tar.xz/linux-4.2-rc1/drivers/net/wireless/iwlegacy/common.h"),
                         "i" (2271), "i" (12UL));
    ldv_53949: ;
    goto ldv_53949;
  } else {
  }
  tmp___0 = ldv__builtin_expect((unsigned int )hwq > 31U, 0L);
  if (tmp___0 != 0L) {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"/home/ldvuser/mutilin/launch/inst/current/envs/linux-4.2-rc1.tar.xz/linux-4.2-rc1/drivers/net/wireless/iwlegacy/common.h"),
                         "i" (2272), "i" (12UL));
    ldv_53950: ;
    goto ldv_53950;
  } else {
  }
  txq->swq_id = (u8 )((int )((signed char )((int )hwq << 2)) | (int )((signed char )ac));
  return;
}
}
__inline static void _il_wake_queue(struct il_priv *il , u8 ac )
{
  int tmp ;
  {
  tmp = atomic_sub_return(1, (atomic_t *)(& il->queue_stop_count) + (unsigned long )ac);
  if (tmp <= 0) {
    ieee80211_wake_queue(il->hw, (int )ac);
  } else {
  }
  return;
}
}
__inline static void _il_stop_queue(struct il_priv *il , u8 ac )
{
  int tmp ;
  {
  tmp = atomic_add_return(1, (atomic_t *)(& il->queue_stop_count) + (unsigned long )ac);
  if (tmp > 0) {
    ieee80211_stop_queue(il->hw, (int )ac);
  } else {
  }
  return;
}
}
__inline static void il_wake_queue(struct il_priv *il , struct il_tx_queue *txq )
{
  u8 queue ;
  u8 ac ;
  u8 hwq ;
  int tmp ;
  {
  queue = txq->swq_id;
  ac = (unsigned int )queue & 3U;
  hwq = (unsigned int )((u8 )((int )queue >> 2)) & 31U;
  tmp = test_and_clear_bit((long )hwq, (unsigned long volatile *)(& il->queue_stopped));
  if (tmp != 0) {
    _il_wake_queue(il, (int )ac);
  } else {
  }
  return;
}
}
__inline static void il_stop_queue(struct il_priv *il , struct il_tx_queue *txq )
{
  u8 queue ;
  u8 ac ;
  u8 hwq ;
  int tmp ;
  {
  queue = txq->swq_id;
  ac = (unsigned int )queue & 3U;
  hwq = (unsigned int )((u8 )((int )queue >> 2)) & 31U;
  tmp = test_and_set_bit((long )hwq, (unsigned long volatile *)(& il->queue_stopped));
  if (tmp == 0) {
    _il_stop_queue(il, (int )ac);
  } else {
  }
  return;
}
}
__inline static void il_wake_queues_by_reason(struct il_priv *il , int reason )
{
  u8 ac ;
  int tmp ;
  {
  tmp = test_and_clear_bit((long )reason, (unsigned long volatile *)(& il->stop_reason));
  if (tmp != 0) {
    ac = 0U;
    goto ldv_53979;
    ldv_53978:
    _il_wake_queue(il, (int )ac);
    ac = (u8 )((int )ac + 1);
    ldv_53979: ;
    if ((unsigned int )ac <= 3U) {
      goto ldv_53978;
    } else {
    }
  } else {
  }
  return;
}
}
__inline static void il_stop_queues_by_reason(struct il_priv *il , int reason )
{
  u8 ac ;
  int tmp ;
  {
  tmp = test_and_set_bit((long )reason, (unsigned long volatile *)(& il->stop_reason));
  if (tmp == 0) {
    ac = 0U;
    goto ldv_53987;
    ldv_53986:
    _il_stop_queue(il, (int )ac);
    ac = (u8 )((int )ac + 1);
    ldv_53987: ;
    if ((unsigned int )ac <= 3U) {
      goto ldv_53986;
    } else {
    }
  } else {
  }
  return;
}
}
__inline static void il_disable_interrupts(struct il_priv *il )
{
  {
  clear_bit(2L, (unsigned long volatile *)(& il->status));
  _il_wr(il, 12U, 0U);
  _il_wr(il, 8U, 4294967295U);
  _il_wr(il, 16U, 4294967295U);
  return;
}
}
__inline static void il_enable_rfkill_int(struct il_priv *il )
{
  {
  _il_wr(il, 12U, 128U);
  return;
}
}
__inline static void il_enable_interrupts(struct il_priv *il )
{
  {
  set_bit(2L, (unsigned long volatile *)(& il->status));
  _il_wr(il, 12U, il->inta_mask);
  return;
}
}
__inline static u8 il_get_dma_hi_addr(dma_addr_t addr )
{
  {
  return ((unsigned int )((u8 )(addr >> 32ULL)) & 15U);
}
}
struct il_rate_info const il_rates[13U] ;
__inline static u8 il4965_num_of_ant(u8 m )
{
  {
  return ((((unsigned int )m & 1U) + (unsigned int )(((unsigned long )m & 2UL) != 0UL)) + (unsigned int )(((unsigned long )m & 4UL) != 0UL));
}
}
__inline static u8 il4965_first_antenna(u8 mask )
{
  {
  if ((int )mask & 1) {
    return (1U);
  } else {
  }
  if (((unsigned long )mask & 2UL) != 0UL) {
    return (2U);
  } else {
  }
  return (4U);
}
}
void il4965_rs_rate_init(struct il_priv *il , struct ieee80211_sta *sta , u8 sta_id ) ;
int il4965_rate_control_register(void) ;
void il4965_rate_control_unregister(void) ;
extern void il_power_initialize(struct il_priv * ) ;
extern int il_dbgfs_register(struct il_priv * , char const * ) ;
extern void il_dbgfs_unregister(struct il_priv * ) ;
void il4965_free_tfds_in_queue(struct il_priv *il , int sta_id , int tid , int freed ) ;
void il4965_check_abort_status(struct il_priv *il , u8 frame_count , u32 status ) ;
void il4965_rx_queue_reset(struct il_priv *il , struct il_rx_queue *rxq ) ;
int il4965_rx_init(struct il_priv *il , struct il_rx_queue *rxq ) ;
int il4965_hw_nic_init(struct il_priv *il ) ;
void il4965_rx_queue_restock(struct il_priv *il ) ;
void il4965_rx_replenish(struct il_priv *il ) ;
void il4965_rx_replenish_now(struct il_priv *il ) ;
void il4965_rx_queue_free(struct il_priv *il , struct il_rx_queue *rxq ) ;
int il4965_rxq_stop(struct il_priv *il ) ;
int il4965_hwrate_to_mac80211_idx(u32 rate_n_flags , enum ieee80211_band band ) ;
void il4965_rx_handle(struct il_priv *il ) ;
void il4965_hwrate_to_tx_control(struct il_priv *il , u32 rate_n_flags , struct ieee80211_tx_info *info ) ;
int il4965_tx_skb(struct il_priv *il , struct ieee80211_sta *sta , struct sk_buff *skb ) ;
int il4965_tx_agg_start(struct il_priv *il , struct ieee80211_vif *vif , struct ieee80211_sta *sta ,
                        u16 tid , u16 *ssn ) ;
int il4965_tx_agg_stop(struct il_priv *il , struct ieee80211_vif *vif , struct ieee80211_sta *sta ,
                       u16 tid ) ;
int il4965_txq_check_empty(struct il_priv *il , int sta_id , u8 tid , int txq_id ) ;
int il4965_tx_queue_reclaim(struct il_priv *il , int txq_id , int idx ) ;
void il4965_hw_txq_ctx_free(struct il_priv *il ) ;
int il4965_txq_ctx_alloc(struct il_priv *il ) ;
void il4965_txq_ctx_reset(struct il_priv *il ) ;
void il4965_txq_ctx_stop(struct il_priv *il ) ;
void il4965_txq_set_sched(struct il_priv *il , u32 mask ) ;
void il4965_set_wr_ptrs(struct il_priv *il , int txq_id , u32 idx ) ;
void il4965_tx_queue_set_status(struct il_priv *il , struct il_tx_queue *txq , int tx_fifo_id ,
                                int scd_retry ) ;
char const *il4965_get_tx_fail_reason(u32 status ) ;
int il4965_alloc_bcast_station(struct il_priv *il ) ;
int il4965_add_bssid_station(struct il_priv *il , u8 const *addr , u8 *sta_id_r ) ;
int il4965_remove_default_wep_key(struct il_priv *il , struct ieee80211_key_conf *keyconf ) ;
int il4965_set_default_wep_key(struct il_priv *il , struct ieee80211_key_conf *keyconf ) ;
int il4965_set_dynamic_key(struct il_priv *il , struct ieee80211_key_conf *keyconf ,
                           u8 sta_id ) ;
int il4965_remove_dynamic_key(struct il_priv *il , struct ieee80211_key_conf *keyconf ,
                              u8 sta_id ) ;
void il4965_update_tkip_key(struct il_priv *il , struct ieee80211_key_conf *keyconf ,
                            struct ieee80211_sta *sta , u32 iv32 , u16 *phase1key ) ;
int il4965_sta_tx_modify_enable_tid(struct il_priv *il , int sta_id , int tid ) ;
int il4965_sta_rx_agg_start(struct il_priv *il , struct ieee80211_sta *sta , int tid ,
                            u16 ssn ) ;
int il4965_sta_rx_agg_stop(struct il_priv *il , struct ieee80211_sta *sta , int tid ) ;
void il4965_sta_modify_sleep_tx_count(struct il_priv *il , int sta_id , int cnt ) ;
__inline static u8 il4965_hw_get_rate(__le32 rate_n_flags )
{
  {
  return ((u8 )rate_n_flags);
}
}
void il4965_mac_tx(struct ieee80211_hw *hw , struct ieee80211_tx_control *control ,
                   struct sk_buff *skb ) ;
int il4965_mac_start(struct ieee80211_hw *hw ) ;
void il4965_mac_stop(struct ieee80211_hw *hw ) ;
void il4965_configure_filter(struct ieee80211_hw *hw , unsigned int changed_flags ,
                             unsigned int *total_flags , u64 multicast ) ;
int il4965_mac_set_key(struct ieee80211_hw *hw , enum set_key_cmd cmd , struct ieee80211_vif *vif ,
                       struct ieee80211_sta *sta , struct ieee80211_key_conf *key ) ;
void il4965_mac_update_tkip_key(struct ieee80211_hw *hw , struct ieee80211_vif *vif ,
                                struct ieee80211_key_conf *keyconf , struct ieee80211_sta *sta ,
                                u32 iv32 , u16 *phase1key ) ;
int il4965_mac_ampdu_action(struct ieee80211_hw *hw , struct ieee80211_vif *vif ,
                            enum ieee80211_ampdu_mlme_action action , struct ieee80211_sta *sta ,
                            u16 tid , u16 *ssn , u8 buf_size ) ;
int il4965_mac_sta_add(struct ieee80211_hw *hw , struct ieee80211_vif *vif , struct ieee80211_sta *sta ) ;
void il4965_mac_channel_switch(struct ieee80211_hw *hw , struct ieee80211_vif *vif ,
                               struct ieee80211_channel_switch *ch_switch ) ;
void il4965_chain_noise_calibration(struct il_priv *il , void *stat_resp ) ;
void il4965_sensitivity_calibration(struct il_priv *il , void *resp ) ;
void il4965_reset_run_time_calib(struct il_priv *il ) ;
struct il_debugfs_ops const il4965_debugfs_ops ;
void il4965_check_abort_status(struct il_priv *il , u8 frame_count , u32 status )
{
  int tmp ;
  {
  if ((unsigned int )frame_count == 1U && status == 134U) {
    dev_err((struct device const *)(& (il->pci_dev)->dev), "Tx flush command to flush out all frames\n");
    tmp = constant_test_bit(10L, (unsigned long const volatile *)(& il->status));
    if (tmp == 0) {
      queue_work___0(il->workqueue, & il->tx_flush);
    } else {
    }
  } else {
  }
  return;
}
}
struct il_mod_params il4965_mod_params = {0, 0, 0, 0, 0, 0, 1};
void il4965_rx_queue_reset(struct il_priv *il , struct il_rx_queue *rxq )
{
  unsigned long flags ;
  int i ;
  u32 tmp ;
  {
  ldv_spin_lock();
  INIT_LIST_HEAD(& rxq->rx_free);
  INIT_LIST_HEAD(& rxq->rx_used);
  i = 0;
  goto ldv_54511;
  ldv_54510: ;
  if ((unsigned long )rxq->pool[i].page != (unsigned long )((struct page *)0)) {
    pci_unmap_page(il->pci_dev, rxq->pool[i].page_dma, 4096UL << (int )il->hw_params.rx_page_order,
                   2);
    __il_free_pages(il, rxq->pool[i].page);
    rxq->pool[i].page = (struct page *)0;
  } else {
  }
  list_add_tail(& rxq->pool[i].list, & rxq->rx_used);
  i = i + 1;
  ldv_54511: ;
  if (i <= 319) {
    goto ldv_54510;
  } else {
  }
  i = 0;
  goto ldv_54514;
  ldv_54513:
  rxq->queue[i] = (struct il_rx_buf *)0;
  i = i + 1;
  ldv_54514: ;
  if (i <= 255) {
    goto ldv_54513;
  } else {
  }
  tmp = 0U;
  rxq->write = tmp;
  rxq->read = tmp;
  rxq->write_actual = 0U;
  rxq->free_count = 0U;
  spin_unlock_irqrestore(& rxq->lock, flags);
  return;
}
}
int il4965_rx_init(struct il_priv *il , struct il_rx_queue *rxq )
{
  u32 rb_size ;
  u32 rfdnlog ;
  u32 rb_timeout ;
  {
  rfdnlog = 8U;
  rb_timeout = 0U;
  if ((int )((il->cfg)->mod_params)->amsdu_size_8K != 0) {
    rb_size = 65536U;
  } else {
    rb_size = 0U;
  }
  il_wr___0(il, 7168U, 0U);
  il_wr___0(il, 7112U, 0U);
  il_wr___0(il, 7108U, (unsigned int )(rxq->bd_dma >> 8));
  il_wr___0(il, 7104U, (u32 )(rxq->rb_stts_dma >> 4));
  il_wr___0(il, 7168U, (((rb_timeout << 4) | rb_size) | (rfdnlog << 20)) | 2147520512U);
  _il_write8(il, 4U, 64);
  return (0);
}
}
static void il4965_set_pwr_vmain(struct il_priv *il )
{
  {
  il_set_bits_mask_prph(il, 12300U, 0U, 4244635647U);
  return;
}
}
int il4965_hw_nic_init(struct il_priv *il )
{
  unsigned long flags ;
  struct il_rx_queue *rxq ;
  int ret ;
  {
  rxq = & il->rxq;
  ldv_spin_lock();
  il_apm_init(il);
  _il_write8(il, 4U, 16);
  spin_unlock_irqrestore(& il->lock, flags);
  il4965_set_pwr_vmain(il);
  il4965_nic_config(il);
  if ((unsigned long )rxq->bd == (unsigned long )((__le32 *)0U)) {
    ret = il_rx_queue_alloc(il);
    if (ret != 0) {
      dev_err((struct device const *)(& (il->pci_dev)->dev), "Unable to initialize Rx queue\n");
      return (-12);
    } else {
    }
  } else {
    il4965_rx_queue_reset(il, rxq);
  }
  il4965_rx_replenish(il);
  il4965_rx_init(il, rxq);
  ldv_spin_lock();
  rxq->need_update = 1;
  il_rx_queue_update_write_ptr(il, rxq);
  spin_unlock_irqrestore(& il->lock, flags);
  if ((unsigned long )il->txq == (unsigned long )((struct il_tx_queue *)0)) {
    ret = il4965_txq_ctx_alloc(il);
    if (ret != 0) {
      return (ret);
    } else {
    }
  } else {
    il4965_txq_ctx_reset(il);
  }
  set_bit(5L, (unsigned long volatile *)(& il->status));
  return (0);
}
}
__inline static __le32 il4965_dma_addr2rbd_ptr(struct il_priv *il , dma_addr_t dma_addr )
{
  {
  return ((__le32 )(dma_addr >> 8));
}
}
void il4965_rx_queue_restock(struct il_priv *il )
{
  struct il_rx_queue *rxq ;
  struct list_head *element ;
  struct il_rx_buf *rxb ;
  unsigned long flags ;
  long tmp ;
  struct list_head const *__mptr ;
  int tmp___0 ;
  {
  rxq = & il->rxq;
  ldv_spin_lock();
  goto ldv_54547;
  ldv_54546:
  rxb = rxq->queue[rxq->write];
  tmp = ldv__builtin_expect((long )((unsigned long )rxb != (unsigned long )((struct il_rx_buf *)0) && (unsigned long )rxb->page != (unsigned long )((struct page *)0)),
                         0L);
  if (tmp != 0L) {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/11700/dscv_tempdir/dscv/ri/43_2a/drivers/net/wireless/iwlegacy/4965-mac.c"),
                         "i" (276), "i" (12UL));
    ldv_54543: ;
    goto ldv_54543;
  } else {
  }
  element = rxq->rx_free.next;
  __mptr = (struct list_head const *)element;
  rxb = (struct il_rx_buf *)__mptr + 0xfffffffffffffff0UL;
  list_del(element);
  *(rxq->bd + (unsigned long )rxq->write) = il4965_dma_addr2rbd_ptr(il, rxb->page_dma);
  rxq->queue[rxq->write] = rxb;
  rxq->write = (rxq->write + 1U) & 255U;
  rxq->free_count = rxq->free_count - 1U;
  ldv_54547:
  tmp___0 = il_rx_queue_space((struct il_rx_queue const *)rxq);
  if (tmp___0 > 0 && rxq->free_count != 0U) {
    goto ldv_54546;
  } else {
  }
  spin_unlock_irqrestore(& rxq->lock, flags);
  if (rxq->free_count <= 8U) {
    queue_work___0(il->workqueue, & il->rx_replenish);
  } else {
  }
  if (rxq->write_actual != (rxq->write & 4294967288U)) {
    ldv_spin_lock();
    rxq->need_update = 1;
    spin_unlock_irqrestore(& rxq->lock, flags);
    il_rx_queue_update_write_ptr(il, rxq);
  } else {
  }
  return;
}
}
static void il4965_rx_allocate(struct il_priv *il , gfp_t priority )
{
  struct il_rx_queue *rxq ;
  struct list_head *element ;
  struct il_rx_buf *rxb ;
  struct page *page ;
  dma_addr_t page_dma ;
  unsigned long flags ;
  gfp_t gfp_mask ;
  int tmp ;
  int tmp___0 ;
  u32 tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  int tmp___4 ;
  long tmp___5 ;
  int tmp___6 ;
  struct list_head const *__mptr ;
  long tmp___7 ;
  {
  rxq = & il->rxq;
  gfp_mask = priority;
  ldv_54565:
  ldv_spin_lock();
  tmp = list_empty((struct list_head const *)(& rxq->rx_used));
  if (tmp != 0) {
    spin_unlock_irqrestore(& rxq->lock, flags);
    return;
  } else {
  }
  spin_unlock_irqrestore(& rxq->lock, flags);
  if (rxq->free_count > 8U) {
    gfp_mask = gfp_mask | 512U;
  } else {
  }
  if (il->hw_params.rx_page_order != 0U) {
    gfp_mask = gfp_mask | 16384U;
  } else {
  }
  page = alloc_pages(gfp_mask, il->hw_params.rx_page_order);
  if ((unsigned long )page == (unsigned long )((struct page *)0)) {
    tmp___2 = net_ratelimit();
    if (tmp___2 != 0) {
      tmp___1 = il_get_debug_level(il);
      if ((int )tmp___1 & 1) {
        tmp___0 = preempt_count();
        dev_err((struct device const *)(& ((il->hw)->wiphy)->dev), "%c %s alloc_pages failed, order: %d\n",
                ((unsigned long )tmp___0 & 2096896UL) != 0UL ? 73 : 85, "il4965_rx_allocate",
                il->hw_params.rx_page_order);
      } else {
      }
    } else {
    }
    if (rxq->free_count <= 8U) {
      tmp___3 = net_ratelimit();
      if (tmp___3 != 0) {
        dev_err((struct device const *)(& (il->pci_dev)->dev), "Failed to alloc_pages with %s. Only %u free buffers remaining.\n",
                priority == 32U ? (char *)"GFP_ATOMIC" : (char *)"GFP_KERNEL", rxq->free_count);
      } else {
      }
    } else {
    }
    return;
  } else {
  }
  page_dma = pci_map_page(il->pci_dev, page, 0UL, 4096UL << (int )il->hw_params.rx_page_order,
                          2);
  tmp___4 = pci_dma_mapping_error(il->pci_dev, page_dma);
  tmp___5 = ldv__builtin_expect(tmp___4 != 0, 0L);
  if (tmp___5 != 0L) {
    __free_pages(page, il->hw_params.rx_page_order);
    goto ldv_54561;
  } else {
  }
  ldv_spin_lock();
  tmp___6 = list_empty((struct list_head const *)(& rxq->rx_used));
  if (tmp___6 != 0) {
    spin_unlock_irqrestore(& rxq->lock, flags);
    pci_unmap_page(il->pci_dev, page_dma, 4096UL << (int )il->hw_params.rx_page_order,
                   2);
    __free_pages(page, il->hw_params.rx_page_order);
    return;
  } else {
  }
  element = rxq->rx_used.next;
  __mptr = (struct list_head const *)element;
  rxb = (struct il_rx_buf *)__mptr + 0xfffffffffffffff0UL;
  list_del(element);
  tmp___7 = ldv__builtin_expect((unsigned long )rxb->page != (unsigned long )((struct page *)0),
                             0L);
  if (tmp___7 != 0L) {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/11700/dscv_tempdir/dscv/ri/43_2a/drivers/net/wireless/iwlegacy/4965-mac.c"),
                         "i" (384), "i" (12UL));
    ldv_54564: ;
    goto ldv_54564;
  } else {
  }
  rxb->page = page;
  rxb->page_dma = page_dma;
  list_add_tail(& rxb->list, & rxq->rx_free);
  rxq->free_count = rxq->free_count + 1U;
  il->alloc_rxb_page = il->alloc_rxb_page + 1;
  spin_unlock_irqrestore(& rxq->lock, flags);
  goto ldv_54565;
  ldv_54561: ;
  return;
}
}
void il4965_rx_replenish(struct il_priv *il )
{
  unsigned long flags ;
  {
  il4965_rx_allocate(il, 208U);
  ldv_spin_lock();
  il4965_rx_queue_restock(il);
  spin_unlock_irqrestore(& il->lock, flags);
  return;
}
}
void il4965_rx_replenish_now(struct il_priv *il )
{
  {
  il4965_rx_allocate(il, 32U);
  il4965_rx_queue_restock(il);
  return;
}
}
void il4965_rx_queue_free(struct il_priv *il , struct il_rx_queue *rxq )
{
  int i ;
  {
  i = 0;
  goto ldv_54579;
  ldv_54578: ;
  if ((unsigned long )rxq->pool[i].page != (unsigned long )((struct page *)0)) {
    pci_unmap_page(il->pci_dev, rxq->pool[i].page_dma, 4096UL << (int )il->hw_params.rx_page_order,
                   2);
    __il_free_pages(il, rxq->pool[i].page);
    rxq->pool[i].page = (struct page *)0;
  } else {
  }
  i = i + 1;
  ldv_54579: ;
  if (i <= 319) {
    goto ldv_54578;
  } else {
  }
  dma_free_attrs(& (il->pci_dev)->dev, 1024UL, (void *)rxq->bd, rxq->bd_dma, (struct dma_attrs *)0);
  dma_free_attrs(& (il->pci_dev)->dev, 12UL, (void *)rxq->rb_stts, rxq->rb_stts_dma,
                 (struct dma_attrs *)0);
  rxq->bd = (__le32 *)0U;
  rxq->rb_stts = (struct il_rb_status *)0;
  return;
}
}
int il4965_rxq_stop(struct il_priv *il )
{
  int ret ;
  {
  _il_wr(il, 7168U, 0U);
  ret = _il_poll_bit(il, 7236U, 16777216U, 16777216U, 1000);
  if (ret < 0) {
    dev_err((struct device const *)(& (il->pci_dev)->dev), "Can\'t stop Rx DMA.\n");
  } else {
  }
  return (0);
}
}
int il4965_hwrate_to_mac80211_idx(u32 rate_n_flags , enum ieee80211_band band )
{
  int idx ;
  int band_offset ;
  {
  idx = 0;
  band_offset = 0;
  if ((rate_n_flags & 256U) != 0U) {
    idx = (int )rate_n_flags & 255;
    return (idx);
  } else {
    if ((unsigned int )band == 1U) {
      band_offset = 4;
    } else {
    }
    idx = band_offset;
    goto ldv_54592;
    ldv_54591: ;
    if ((u32 )il_rates[idx].plcp == (rate_n_flags & 255U)) {
      return (idx - band_offset);
    } else {
    }
    idx = idx + 1;
    ldv_54592: ;
    if (idx <= 11) {
      goto ldv_54591;
    } else {
    }
  }
  return (-1);
}
}
static int il4965_calc_rssi(struct il_priv *il , struct il_rx_phy_res *rx_resp )
{
  struct il4965_rx_non_cfg_phy *ncphy ;
  u32 agc ;
  u32 valid_antennae ;
  u8 max_rssi ;
  u32 i ;
  u8 _max1 ;
  u8 _max2 ;
  int tmp ;
  u32 tmp___0 ;
  {
  ncphy = (struct il4965_rx_non_cfg_phy *)(& rx_resp->non_cfg_phy_buf);
  agc = (u32 )(((int )ncphy->agc_info & 16256) >> 7);
  valid_antennae = (u32 )(((int )rx_resp->phy_flags & 112) >> 4);
  max_rssi = 0U;
  i = 0U;
  goto ldv_54607;
  ldv_54606: ;
  if (((u32 )(1 << (int )i) & valid_antennae) != 0U) {
    _max1 = ncphy->rssi_info[i << 1];
    _max2 = max_rssi;
    max_rssi = (u8 )((int )_max1 > (int )_max2 ? _max1 : _max2);
  } else {
  }
  i = i + 1U;
  ldv_54607: ;
  if (i <= 2U) {
    goto ldv_54606;
  } else {
  }
  tmp___0 = il_get_debug_level(il);
  if ((tmp___0 & 536870912U) != 0U) {
    tmp = preempt_count();
    dev_err((struct device const *)(& ((il->hw)->wiphy)->dev), "%c %s Rssi In A %d B %d C %d Max %d AGC dB %d\n",
            ((unsigned long )tmp & 2096896UL) != 0UL ? 73 : 85, "il4965_calc_rssi",
            (int )ncphy->rssi_info[0], (int )ncphy->rssi_info[2], (int )ncphy->rssi_info[4],
            (int )max_rssi, agc);
  } else {
  }
  return ((int )(((u32 )max_rssi - agc) - 44U));
}
}
static u32 il4965_translate_rx_status(struct il_priv *il , u32 decrypt_in )
{
  u32 decrypt_out ;
  int tmp ;
  u32 tmp___0 ;
  {
  decrypt_out = 0U;
  if ((decrypt_in & 64U) != 0U) {
    decrypt_out = decrypt_out | 192U;
  } else {
  }
  decrypt_out = (decrypt_in & 1792U) | decrypt_out;
  if ((decrypt_in & 1792U) == 0U) {
    return (decrypt_out);
  } else {
  }
  if ((decrypt_in & 1792U) == 1792U) {
    return (decrypt_out);
  } else {
  }
  if ((decrypt_in & 2048U) == 0U) {
    return (decrypt_out);
  } else {
  }
  switch (decrypt_in & 1792U) {
  case 512U: ;
  if ((decrypt_in & 64U) == 0U) {
    decrypt_out = decrypt_out | 2048U;
  } else {
    decrypt_out = decrypt_out | 6144U;
  }
  goto ldv_54616;
  case 768U: ;
  if ((decrypt_in & 128U) == 0U) {
    decrypt_out = decrypt_out | 4096U;
    goto ldv_54616;
  } else {
  }
  default: ;
  if ((decrypt_in & 32U) == 0U) {
    decrypt_out = decrypt_out | 2048U;
  } else {
    decrypt_out = decrypt_out | 6144U;
  }
  goto ldv_54616;
  }
  ldv_54616:
  tmp___0 = il_get_debug_level(il);
  if ((tmp___0 & 16777216U) != 0U) {
    tmp = preempt_count();
    dev_err((struct device const *)(& ((il->hw)->wiphy)->dev), "%c %s decrypt_in:0x%x  decrypt_out = 0x%x\n",
            ((unsigned long )tmp & 2096896UL) != 0UL ? 73 : 85, "il4965_translate_rx_status",
            decrypt_in, decrypt_out);
  } else {
  }
  return (decrypt_out);
}
}
static void il4965_pass_packet_to_mac80211(struct il_priv *il , struct ieee80211_hdr *hdr ,
                                           u32 len , u32 ampdu_status , struct il_rx_buf *rxb ,
                                           struct ieee80211_rx_status *stats )
{
  struct sk_buff *skb ;
  __le16 fc ;
  int tmp ;
  u32 tmp___0 ;
  long tmp___1 ;
  int tmp___2 ;
  u32 tmp___3 ;
  int tmp___4 ;
  long tmp___5 ;
  int tmp___6 ;
  unsigned char *tmp___7 ;
  void *tmp___8 ;
  struct ieee80211_rx_status *tmp___9 ;
  {
  fc = hdr->frame_control;
  tmp___1 = ldv__builtin_expect((unsigned int )il->is_open == 0U, 0L);
  if (tmp___1 != 0L) {
    tmp___0 = il_get_debug_level(il);
    if ((tmp___0 & 8192U) != 0U) {
      tmp = preempt_count();
      dev_err((struct device const *)(& ((il->hw)->wiphy)->dev), "%c %s Dropping packet while interface is not open.\n",
              ((unsigned long )tmp & 2096896UL) != 0UL ? 73 : 85, "il4965_pass_packet_to_mac80211");
    } else {
    }
    return;
  } else {
  }
  tmp___4 = constant_test_bit(0L, (unsigned long const volatile *)(& il->stop_reason));
  tmp___5 = ldv__builtin_expect(tmp___4 != 0, 0L);
  if (tmp___5 != 0L) {
    il_wake_queues_by_reason(il, 0);
    tmp___3 = il_get_debug_level(il);
    if ((int )tmp___3 & 1) {
      tmp___2 = preempt_count();
      dev_err((struct device const *)(& ((il->hw)->wiphy)->dev), "%c %s Woke queues - frame received on passive channel\n",
              ((unsigned long )tmp___2 & 2096896UL) != 0UL ? 73 : 85, "il4965_pass_packet_to_mac80211");
    } else {
    }
  } else {
  }
  if ((int )((il->cfg)->mod_params)->sw_crypto == 0) {
    tmp___6 = il_set_decrypted_flag(il, hdr, ampdu_status, stats);
    if (tmp___6 != 0) {
      return;
    } else {
    }
  } else {
  }
  skb = dev_alloc_skb(256U);
  if ((unsigned long )skb == (unsigned long )((struct sk_buff *)0)) {
    dev_err((struct device const *)(& (il->pci_dev)->dev), "dev_alloc_skb failed\n");
    return;
  } else {
  }
  if (len <= 256U) {
    tmp___7 = skb_put(skb, len);
    memcpy((void *)tmp___7, (void const *)hdr, (size_t )len);
  } else {
    tmp___8 = lowmem_page_address((struct page const *)rxb->page);
    skb_add_rx_frag(skb, 0, rxb->page, (int )((unsigned int )((long )hdr) - (unsigned int )((long )tmp___8)),
                    (int )len, (unsigned int )(4096UL << (int )il->hw_params.rx_page_order));
    il->alloc_rxb_page = il->alloc_rxb_page - 1;
    rxb->page = (struct page *)0;
  }
  il_update_stats(il, 0, (int )fc, (int )((u16 )len));
  tmp___9 = IEEE80211_SKB_RXCB(skb);
  memcpy((void *)tmp___9, (void const *)stats, 40UL);
  ieee80211_rx(il->hw, skb);
  return;
}
}
static void il4965_hdl_rx(struct il_priv *il , struct il_rx_buf *rxb )
{
  struct ieee80211_hdr *header ;
  struct ieee80211_rx_status rx_status ;
  struct il_rx_pkt *pkt ;
  void *tmp ;
  struct il_rx_phy_res *phy_res ;
  __le32 rx_pkt_status ;
  struct il_rx_mpdu_res_start *amsdu ;
  u32 len ;
  u32 ampdu_status ;
  u32 rate_n_flags ;
  int tmp___0 ;
  u32 tmp___1 ;
  long tmp___2 ;
  int tmp___3 ;
  u32 tmp___4 ;
  int tmp___5 ;
  int tmp___6 ;
  int tmp___7 ;
  int tmp___8 ;
  u32 tmp___9 ;
  {
  rx_status.mactime = 0ULL;
  rx_status.device_timestamp = 0U;
  rx_status.ampdu_reference = 0U;
  rx_status.flag = 0U;
  rx_status.freq = (unsigned short)0;
  rx_status.vht_flag = (unsigned char)0;
  rx_status.rate_idx = (unsigned char)0;
  rx_status.vht_nss = (unsigned char)0;
  rx_status.rx_flags = (unsigned char)0;
  rx_status.band = (unsigned char)0;
  rx_status.antenna = (unsigned char)0;
  rx_status.signal = (signed char)0;
  rx_status.chains = (unsigned char)0;
  rx_status.chain_signal[0] = (signed char)0;
  rx_status.chain_signal[1] = (signed char)0;
  rx_status.chain_signal[2] = (signed char)0;
  rx_status.chain_signal[3] = (signed char)0;
  rx_status.ampdu_delimiter_crc = (unsigned char)0;
  tmp = lowmem_page_address((struct page const *)rxb->page);
  pkt = (struct il_rx_pkt *)tmp;
  if ((unsigned int )pkt->hdr.cmd == 195U) {
    phy_res = (struct il_rx_phy_res *)(& pkt->u.raw);
    header = (struct ieee80211_hdr *)(& pkt->u.raw) + ((unsigned long )phy_res->cfg_phy_cnt + 60UL);
    len = (u32 )phy_res->byte_count;
    rx_pkt_status = *((__le32 *)(& pkt->u.raw) + (((unsigned long )phy_res->cfg_phy_cnt + (unsigned long )len) + 60UL));
    ampdu_status = rx_pkt_status;
  } else {
    if (! il->__annonCompField103._4965.last_phy_res_valid) {
      dev_err((struct device const *)(& (il->pci_dev)->dev), "MPDU frame without cached PHY data\n");
      return;
    } else {
    }
    phy_res = & il->__annonCompField103._4965.last_phy_res;
    amsdu = (struct il_rx_mpdu_res_start *)(& pkt->u.raw);
    header = (struct ieee80211_hdr *)(& pkt->u.raw) + 4U;
    len = (u32 )amsdu->byte_count;
    rx_pkt_status = *((__le32 *)(& pkt->u.raw) + ((unsigned long )len + 4UL));
    ampdu_status = il4965_translate_rx_status(il, rx_pkt_status);
  }
  tmp___2 = ldv__builtin_expect((unsigned int )phy_res->cfg_phy_cnt > 20U, 0L);
  if (tmp___2 != 0L) {
    tmp___1 = il_get_debug_level(il);
    if ((tmp___1 & 8192U) != 0U) {
      tmp___0 = preempt_count();
      dev_err((struct device const *)(& ((il->hw)->wiphy)->dev), "%c %s dsp size out of range [0,20]: %d\n",
              ((unsigned long )tmp___0 & 2096896UL) != 0UL ? 73 : 85, "il4965_hdl_rx",
              (int )phy_res->cfg_phy_cnt);
    } else {
    }
    return;
  } else {
  }
  if ((rx_pkt_status & 1U) == 0U || (rx_pkt_status & 2U) == 0U) {
    tmp___4 = il_get_debug_level(il);
    if ((tmp___4 & 16777216U) != 0U) {
      tmp___3 = preempt_count();
      dev_err((struct device const *)(& ((il->hw)->wiphy)->dev), "%c %s Bad CRC or FIFO: 0x%08X.\n",
              ((unsigned long )tmp___3 & 2096896UL) != 0UL ? 73 : 85, "il4965_hdl_rx",
              rx_pkt_status);
    } else {
    }
    return;
  } else {
  }
  rate_n_flags = phy_res->rate_n_flags;
  rx_status.mactime = phy_res->timestamp;
  rx_status.band = (int )phy_res->phy_flags & 1 ? 0U : 1U;
  tmp___5 = ieee80211_channel_to_frequency((int )phy_res->channel, (enum ieee80211_band )rx_status.band);
  rx_status.freq = (u16 )tmp___5;
  tmp___6 = il4965_hwrate_to_mac80211_idx(rate_n_flags, (enum ieee80211_band )rx_status.band);
  rx_status.rate_idx = (u8 )tmp___6;
  rx_status.flag = 0U;
  il->ucode_beacon_time = phy_res->beacon_time_stamp;
  tmp___7 = il4965_calc_rssi(il, phy_res);
  rx_status.signal = (s8 )tmp___7;
  tmp___9 = il_get_debug_level(il);
  if ((tmp___9 & 536870912U) != 0U) {
    tmp___8 = preempt_count();
    dev_err((struct device const *)(& ((il->hw)->wiphy)->dev), "%c %s Rssi %d, TSF %llu\n",
            ((unsigned long )tmp___8 & 2096896UL) != 0UL ? 73 : 85, "il4965_hdl_rx",
            (int )rx_status.signal, rx_status.mactime);
  } else {
  }
  rx_status.antenna = (u8 )(((int )phy_res->phy_flags & 112) >> 4);
  if (((int )phy_res->phy_flags & 4) != 0) {
    rx_status.flag = rx_status.flag | 256U;
  } else {
  }
  if ((rate_n_flags & 256U) != 0U) {
    rx_status.flag = rx_status.flag | 512U;
  } else {
  }
  if ((rate_n_flags & 2048U) != 0U) {
    rx_status.flag = rx_status.flag | 1024U;
  } else {
  }
  if ((rate_n_flags & 8192U) != 0U) {
    rx_status.flag = rx_status.flag | 2048U;
  } else {
  }
  if (((int )phy_res->phy_flags & 128) != 0) {
    rx_status.flag = rx_status.flag | 16384U;
    rx_status.ampdu_reference = il->__annonCompField103._4965.ampdu_ref;
  } else {
  }
  il4965_pass_packet_to_mac80211(il, header, len, ampdu_status, rxb, & rx_status);
  return;
}
}
static void il4965_hdl_rx_phy(struct il_priv *il , struct il_rx_buf *rxb )
{
  struct il_rx_pkt *pkt ;
  void *tmp ;
  {
  tmp = lowmem_page_address((struct page const *)rxb->page);
  pkt = (struct il_rx_pkt *)tmp;
  il->__annonCompField103._4965.last_phy_res_valid = 1;
  il->__annonCompField103._4965.ampdu_ref = il->__annonCompField103._4965.ampdu_ref + 1U;
  memcpy((void *)(& il->__annonCompField103._4965.last_phy_res), (void const *)(& pkt->u.raw),
           60UL);
  return;
}
}
static int il4965_get_channels_for_scan(struct il_priv *il , struct ieee80211_vif *vif ,
                                        enum ieee80211_band band , u8 is_active ,
                                        u8 n_probes , struct il_scan_channel *scan_ch )
{
  struct ieee80211_channel *chan ;
  struct ieee80211_supported_band const *sband ;
  struct il_channel_info const *ch_info ;
  u16 passive_dwell ;
  u16 active_dwell ;
  int added ;
  int i ;
  u16 channel ;
  int tmp ;
  u32 tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  u32 tmp___4 ;
  int tmp___5 ;
  u32 tmp___6 ;
  {
  passive_dwell = 0U;
  active_dwell = 0U;
  sband = il_get_hw_mode(il, band);
  if ((unsigned long )sband == (unsigned long )((struct ieee80211_supported_band const *)0)) {
    return (0);
  } else {
  }
  active_dwell = il_get_active_dwell_time(il, band, (int )n_probes);
  passive_dwell = il_get_passive_dwell_time(il, band, vif);
  if ((int )passive_dwell <= (int )active_dwell) {
    passive_dwell = (unsigned int )active_dwell + 1U;
  } else {
  }
  i = 0;
  added = 0;
  goto ldv_54669;
  ldv_54668:
  chan = (il->scan_request)->channels[i];
  if ((unsigned int )chan->band != (unsigned int )band) {
    goto ldv_54666;
  } else {
  }
  channel = chan->hw_value;
  scan_ch->channel = channel;
  ch_info = il_get_channel_info((struct il_priv const *)il, band, (int )channel);
  tmp___1 = il_is_channel_valid(ch_info);
  if (tmp___1 == 0) {
    tmp___0 = il_get_debug_level(il);
    if ((tmp___0 & 2048U) != 0U) {
      tmp = preempt_count();
      dev_err((struct device const *)(& ((il->hw)->wiphy)->dev), "%c %s Channel %d is INVALID for this band.\n",
              ((unsigned long )tmp & 2096896UL) != 0UL ? 73 : 85, "il4965_get_channels_for_scan",
              (int )channel);
    } else {
    }
    goto ldv_54666;
  } else {
  }
  if ((unsigned int )is_active == 0U) {
    scan_ch->type = 0U;
  } else {
    tmp___2 = il_is_channel_passive(ch_info);
    if (tmp___2 != 0) {
      scan_ch->type = 0U;
    } else
    if ((chan->flags & 2U) != 0U) {
      scan_ch->type = 0U;
    } else {
      scan_ch->type = 1U;
    }
  }
  if ((unsigned int )n_probes != 0U) {
    scan_ch->type = scan_ch->type | ((unsigned int )(1UL << (int )n_probes) | ((unsigned int )(1UL << (int )n_probes) - 2U));
  } else {
  }
  scan_ch->active_dwell = active_dwell;
  scan_ch->passive_dwell = passive_dwell;
  scan_ch->dsp_atten = 110U;
  if ((unsigned int )band == 1U) {
    scan_ch->tx_gain = 59U;
  } else {
    scan_ch->tx_gain = 40U;
  }
  tmp___4 = il_get_debug_level(il);
  if ((tmp___4 & 2048U) != 0U) {
    tmp___3 = preempt_count();
    dev_err((struct device const *)(& ((il->hw)->wiphy)->dev), "%c %s Scanning ch=%d prob=0x%X [%s %d]\n",
            ((unsigned long )tmp___3 & 2096896UL) != 0UL ? 73 : 85, "il4965_get_channels_for_scan",
            (int )channel, scan_ch->type, (int )scan_ch->type & 1 ? (char *)"ACTIVE" : (char *)"PASSIVE",
            (int )scan_ch->type & 1 ? (int )active_dwell : (int )passive_dwell);
  } else {
  }
  scan_ch = scan_ch + 1;
  added = added + 1;
  ldv_54666:
  i = i + 1;
  ldv_54669: ;
  if ((u32 )i < (il->scan_request)->n_channels) {
    goto ldv_54668;
  } else {
  }
  tmp___6 = il_get_debug_level(il);
  if ((tmp___6 & 2048U) != 0U) {
    tmp___5 = preempt_count();
    dev_err((struct device const *)(& ((il->hw)->wiphy)->dev), "%c %s total channels to scan %d\n",
            ((unsigned long )tmp___5 & 2096896UL) != 0UL ? 73 : 85, "il4965_get_channels_for_scan",
            added);
  } else {
  }
  return (added);
}
}
static void il4965_toggle_tx_ant(struct il_priv *il , u8 *ant , u8 valid )
{
  int i ;
  u8 ind ;
  {
  ind = *ant;
  i = 0;
  goto ldv_54679;
  ldv_54678:
  ind = (int )ind + 1 <= 2 ? (unsigned int )ind + 1U : 0U;
  if ((int )((unsigned long )valid >> (int )ind) & 1) {
    *ant = ind;
    return;
  } else {
  }
  i = i + 1;
  ldv_54679: ;
  if (i <= 1) {
    goto ldv_54678;
  } else {
  }
  return;
}
}
int il4965_request_scan(struct il_priv *il , struct ieee80211_vif *vif )
{
  struct il_host_cmd cmd ;
  struct il_scan_cmd *scan ;
  u32 rate_flags ;
  u16 cmd_len ;
  u16 rx_chain ;
  enum ieee80211_band band ;
  u8 n_probes ;
  u8 rx_ant ;
  u8 rate ;
  bool is_active ;
  int chan_mod ;
  u8 active_chains ;
  u8 scan_tx_antennas ;
  int ret ;
  int __ret_warn_on ;
  int tmp ;
  int tmp___0 ;
  long tmp___1 ;
  int tmp___2 ;
  u32 tmp___3 ;
  u16 interval ;
  u32 extra ;
  u32 suspend_time ;
  u32 scan_suspend_time ;
  int tmp___4 ;
  u32 tmp___5 ;
  int tmp___6 ;
  u32 tmp___7 ;
  int tmp___8 ;
  int i ;
  int p ;
  int tmp___9 ;
  u32 tmp___10 ;
  int tmp___11 ;
  u32 tmp___12 ;
  int tmp___13 ;
  u32 tmp___14 ;
  int tmp___15 ;
  int tmp___16 ;
  int tmp___17 ;
  u32 tmp___18 ;
  {
  cmd.data = 0;
  cmd.reply_page = 0UL;
  cmd.callback = 0;
  cmd.flags = 1U;
  cmd.len = 764U;
  cmd.id = 128U;
  rate_flags = 0U;
  rx_chain = 0U;
  n_probes = 0U;
  rx_ant = il->hw_params.valid_rx_ant;
  is_active = 0;
  scan_tx_antennas = il->hw_params.valid_tx_ant;
  if (debug_locks != 0) {
    tmp = lock_is_held(& il->mutex.dep_map);
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
    warn_slowpath_null("/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/11700/dscv_tempdir/dscv/ri/43_2a/drivers/net/wireless/iwlegacy/4965-mac.c",
                       883);
  } else {
  }
  ldv__builtin_expect(__ret_warn_on != 0, 0L);
  if ((unsigned long )il->scan_cmd == (unsigned long )((void *)0)) {
    il->scan_cmd = kmalloc(1788UL, 208U);
    if ((unsigned long )il->scan_cmd == (unsigned long )((void *)0)) {
      tmp___3 = il_get_debug_level(il);
      if ((tmp___3 & 2048U) != 0U) {
        tmp___2 = preempt_count();
        dev_err((struct device const *)(& ((il->hw)->wiphy)->dev), "%c %s fail to allocate memory for scan\n",
                ((unsigned long )tmp___2 & 2096896UL) != 0UL ? 73 : 85, "il4965_request_scan");
      } else {
      }
      return (-12);
    } else {
    }
  } else {
  }
  scan = (struct il_scan_cmd *)il->scan_cmd;
  memset((void *)scan, 0, 1788UL);
  scan->quiet_plcp_th = 1U;
  scan->quiet_time = 10U;
  tmp___8 = il_is_any_associated(il);
  if (tmp___8 != 0) {
    suspend_time = 100U;
    scan_suspend_time = 100U;
    tmp___5 = il_get_debug_level(il);
    if ((int )tmp___5 & 1) {
      tmp___4 = preempt_count();
      dev_err((struct device const *)(& ((il->hw)->wiphy)->dev), "%c %s Scanning while associated...\n",
              ((unsigned long )tmp___4 & 2096896UL) != 0UL ? 73 : 85, "il4965_request_scan");
    } else {
    }
    interval = vif->bss_conf.beacon_int;
    scan->suspend_time = 0U;
    scan->max_out_time = 204800U;
    if ((unsigned int )interval == 0U) {
      interval = (u16 )suspend_time;
    } else {
    }
    extra = suspend_time / (u32 )interval << 22;
    scan_suspend_time = (suspend_time % (u32 )interval) * 1024U | extra;
    scan->suspend_time = scan_suspend_time;
    tmp___7 = il_get_debug_level(il);
    if ((tmp___7 & 2048U) != 0U) {
      tmp___6 = preempt_count();
      dev_err((struct device const *)(& ((il->hw)->wiphy)->dev), "%c %s suspend_time 0x%X beacon interval %d\n",
              ((unsigned long )tmp___6 & 2096896UL) != 0UL ? 73 : 85, "il4965_request_scan",
              scan_suspend_time, (int )interval);
    } else {
    }
  } else {
  }
  if ((il->scan_request)->n_ssids != 0) {
    p = 0;
    tmp___10 = il_get_debug_level(il);
    if ((tmp___10 & 2048U) != 0U) {
      tmp___9 = preempt_count();
      dev_err((struct device const *)(& ((il->hw)->wiphy)->dev), "%c %s Kicking off active scan\n",
              ((unsigned long )tmp___9 & 2096896UL) != 0UL ? 73 : 85, "il4965_request_scan");
    } else {
    }
    i = 0;
    goto ldv_54710;
    ldv_54709: ;
    if ((unsigned int )((il->scan_request)->ssids + (unsigned long )i)->ssid_len == 0U) {
      goto ldv_54708;
    } else {
    }
    scan->direct_scan[p].id = 0U;
    scan->direct_scan[p].len = ((il->scan_request)->ssids + (unsigned long )i)->ssid_len;
    memcpy((void *)(& scan->direct_scan[p].ssid), (void const *)(& ((il->scan_request)->ssids + (unsigned long )i)->ssid),
             (size_t )((il->scan_request)->ssids + (unsigned long )i)->ssid_len);
    n_probes = (u8 )((int )n_probes + 1);
    p = p + 1;
    ldv_54708:
    i = i + 1;
    ldv_54710: ;
    if ((il->scan_request)->n_ssids > i) {
      goto ldv_54709;
    } else {
    }
    is_active = 1;
  } else {
    tmp___12 = il_get_debug_level(il);
    if ((tmp___12 & 2048U) != 0U) {
      tmp___11 = preempt_count();
      dev_err((struct device const *)(& ((il->hw)->wiphy)->dev), "%c %s Start passive scan.\n",
              ((unsigned long )tmp___11 & 2096896UL) != 0UL ? 73 : 85, "il4965_request_scan");
    } else {
    }
  }
  scan->tx_cmd.tx_flags = 8192U;
  scan->tx_cmd.sta_id = il->hw_params.bcast_id;
  scan->tx_cmd.stop_time.life_time = 4294967295U;
  switch ((unsigned int )il->scan_band) {
  case 0U:
  scan->flags = 5U;
  chan_mod = (int )(((unsigned int )il->active.flags & 100663296U) >> 25);
  if (chan_mod == 1) {
    rate = 13U;
  } else {
    rate = 10U;
    rate_flags = 512U;
  }
  goto ldv_54713;
  case 1U:
  rate = 13U;
  goto ldv_54713;
  default:
  dev_warn((struct device const *)(& (il->pci_dev)->dev), "Invalid scan band\n");
  return (-5);
  }
  ldv_54713:
  scan->good_CRC_th = (int )is_active ? 1U : 65535U;
  band = il->scan_band;
  if ((unsigned int )(il->cfg)->scan_rx_antennas[(unsigned int )band] != 0U) {
    rx_ant = (il->cfg)->scan_rx_antennas[(unsigned int )band];
  } else {
  }
  il4965_toggle_tx_ant(il, (u8 *)(& il->scan_tx_ant) + (unsigned long )band, (int )scan_tx_antennas);
  rate_flags = ((u32 )(1UL << (int )il->scan_tx_ant[(unsigned int )band]) << 14U) | rate_flags;
  scan->tx_cmd.rate_n_flags = (u32 )rate | rate_flags;
  tmp___15 = constant_test_bit(16L, (unsigned long const volatile *)(& il->status));
  if (tmp___15 != 0) {
    active_chains = (u8 )((int )((unsigned char )il->chain_noise_data.active_chains) & (int )rx_ant);
    if ((unsigned int )active_chains == 0U) {
      active_chains = rx_ant;
    } else {
    }
    tmp___14 = il_get_debug_level(il);
    if ((tmp___14 & 2048U) != 0U) {
      tmp___13 = preempt_count();
      dev_err((struct device const *)(& ((il->hw)->wiphy)->dev), "%c %s chain_noise_data.active_chains: %u\n",
              ((unsigned long )tmp___13 & 2096896UL) != 0UL ? 73 : 85, "il4965_request_scan",
              il->chain_noise_data.active_chains);
    } else {
    }
    rx_ant = il4965_first_antenna((int )active_chains);
  } else {
  }
  rx_chain = (u16 )((int )((short )((int )il->hw_params.valid_rx_ant << 1)) | (int )((short )rx_chain));
  rx_chain = (u16 )((int )((short )((int )rx_ant << 7)) | (int )((short )rx_chain));
  rx_chain = (u16 )((int )((short )((int )rx_ant << 4)) | (int )((short )rx_chain));
  rx_chain = (u16 )((unsigned int )rx_chain | 1U);
  scan->rx_chain = rx_chain;
  cmd_len = il_fill_probe_req(il, (struct ieee80211_mgmt *)(& scan->data), (u8 const *)(& vif->addr),
                              (il->scan_request)->ie, (int )(il->scan_request)->ie_len,
                              260);
  scan->tx_cmd.len = cmd_len;
  scan->filter_flags = scan->filter_flags | 68U;
  tmp___16 = il4965_get_channels_for_scan(il, vif, band, (int )is_active, (int )n_probes,
                                          (struct il_scan_channel *)(& scan->data) + (unsigned long )cmd_len);
  scan->channel_count = (u8 )tmp___16;
  if ((unsigned int )scan->channel_count == 0U) {
    tmp___18 = il_get_debug_level(il);
    if ((tmp___18 & 2048U) != 0U) {
      tmp___17 = preempt_count();
      dev_err((struct device const *)(& ((il->hw)->wiphy)->dev), "%c %s channel count %d\n",
              ((unsigned long )tmp___17 & 2096896UL) != 0UL ? 73 : 85, "il4965_request_scan",
              (int )scan->channel_count);
    } else {
    }
    return (-5);
  } else {
  }
  cmd.len = (unsigned int )cmd.len + ((unsigned int )scan->tx_cmd.len + (unsigned int )((u16 )scan->channel_count) * 12U);
  cmd.data = (void const *)scan;
  scan->len = cmd.len;
  set_bit(15L, (unsigned long volatile *)(& il->status));
  ret = il_send_cmd_sync(il, & cmd);
  if (ret != 0) {
    clear_bit(15L, (unsigned long volatile *)(& il->status));
  } else {
  }
  return (ret);
}
}
int il4965_manage_ibss_station(struct il_priv *il , struct ieee80211_vif *vif , bool add )
{
  struct il_vif_priv *vif_priv ;
  int tmp ;
  int tmp___0 ;
  {
  vif_priv = (struct il_vif_priv *)(& vif->drv_priv);
  if ((int )add) {
    tmp = il4965_add_bssid_station(il, vif->bss_conf.bssid, & vif_priv->ibss_bssid_sta_id);
    return (tmp);
  } else {
  }
  tmp___0 = il_remove_station(il, (int )vif_priv->ibss_bssid_sta_id, vif->bss_conf.bssid);
  return (tmp___0);
}
}
void il4965_free_tfds_in_queue(struct il_priv *il , int sta_id , int tid , int freed )
{
  int __ret_warn_on ;
  int tmp ;
  int tmp___0 ;
  long tmp___1 ;
  int tmp___2 ;
  u32 tmp___3 ;
  {
  if (debug_locks != 0) {
    tmp = lock_is_held(& il->sta_lock.__annonCompField18.__annonCompField17.dep_map);
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
    warn_slowpath_null("/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/11700/dscv_tempdir/dscv/ri/43_2a/drivers/net/wireless/iwlegacy/4965-mac.c",
                       1066);
  } else {
  }
  ldv__builtin_expect(__ret_warn_on != 0, 0L);
  if ((int )il->stations[sta_id].tid[tid].tfds_in_queue >= freed) {
    il->stations[sta_id].tid[tid].tfds_in_queue = (int )il->stations[sta_id].tid[tid].tfds_in_queue - (int )((u16 )freed);
  } else {
    tmp___3 = il_get_debug_level(il);
    if ((tmp___3 & 8388608U) != 0U) {
      tmp___2 = preempt_count();
      dev_err((struct device const *)(& ((il->hw)->wiphy)->dev), "%c %s free more than tfds_in_queue (%u:%d)\n",
              ((unsigned long )tmp___2 & 2096896UL) != 0UL ? 73 : 85, "il4965_free_tfds_in_queue",
              (int )il->stations[sta_id].tid[tid].tfds_in_queue, freed);
    } else {
    }
    il->stations[sta_id].tid[tid].tfds_in_queue = 0U;
  }
  return;
}
}
static bool il4965_is_single_rx_stream(struct il_priv *il )
{
  {
  return ((bool )((unsigned int )il->current_ht_config.smps == 2U || (int )il->current_ht_config.single_chain_sufficient));
}
}
static int il4965_get_active_rx_chain_count(struct il_priv *il )
{
  bool tmp ;
  {
  tmp = il4965_is_single_rx_stream(il);
  if ((int )tmp) {
    return (2);
  } else {
    return (3);
  }
}
}
static int il4965_get_idle_rx_chain_count(struct il_priv *il , int active_cnt )
{
  int __ret_warn_on ;
  long tmp ;
  {
  switch ((unsigned int )il->current_ht_config.smps) {
  case 2U: ;
  case 3U: ;
  return (1);
  case 1U: ;
  return (active_cnt);
  default:
  __ret_warn_on = 1;
  tmp = ldv__builtin_expect(__ret_warn_on != 0, 0L);
  if (tmp != 0L) {
    warn_slowpath_fmt("/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/11700/dscv_tempdir/dscv/ri/43_2a/drivers/net/wireless/iwlegacy/4965-mac.c",
                      1126, "invalid SMPS mode %d", (unsigned int )il->current_ht_config.smps);
  } else {
  }
  ldv__builtin_expect(__ret_warn_on != 0, 0L);
  return (active_cnt);
  }
}
}
static u8 il4965_count_chain_bitmap(u32 chain_bitmap )
{
  u8 res ;
  {
  res = (unsigned int )((u8 )chain_bitmap) & 1U;
  res = (int )((u8 )(((unsigned long )chain_bitmap & 2UL) >> 1)) + (int )res;
  res = (int )((u8 )(((unsigned long )chain_bitmap & 4UL) >> 2)) + (int )res;
  res = (int )((u8 )(((unsigned long )chain_bitmap & 8UL) >> 3)) + (int )res;
  return (res);
}
}
void il4965_set_rxon_chain(struct il_priv *il )
{
  bool is_single ;
  bool tmp ;
  bool is_cam ;
  int tmp___0 ;
  u8 idle_rx_cnt ;
  u8 active_rx_cnt ;
  u8 valid_rx_cnt ;
  u32 active_chains ;
  u16 rx_chain ;
  int tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  u32 tmp___4 ;
  int __ret_warn_on ;
  long tmp___5 ;
  {
  tmp = il4965_is_single_rx_stream(il);
  is_single = tmp;
  tmp___0 = constant_test_bit(16L, (unsigned long const volatile *)(& il->status));
  is_cam = tmp___0 == 0;
  if (il->chain_noise_data.active_chains != 0U) {
    active_chains = il->chain_noise_data.active_chains;
  } else {
    active_chains = (u32 )il->hw_params.valid_rx_ant;
  }
  rx_chain = (int )((u16 )active_chains) << 1U;
  tmp___1 = il4965_get_active_rx_chain_count(il);
  active_rx_cnt = (u8 )tmp___1;
  tmp___2 = il4965_get_idle_rx_chain_count(il, (int )active_rx_cnt);
  idle_rx_cnt = (u8 )tmp___2;
  valid_rx_cnt = il4965_count_chain_bitmap(active_chains);
  if ((int )valid_rx_cnt < (int )active_rx_cnt) {
    active_rx_cnt = valid_rx_cnt;
  } else {
  }
  if ((int )valid_rx_cnt < (int )idle_rx_cnt) {
    idle_rx_cnt = valid_rx_cnt;
  } else {
  }
  rx_chain = (u16 )((int )((short )((int )active_rx_cnt << 12)) | (int )((short )rx_chain));
  rx_chain = (u16 )((int )((short )((int )idle_rx_cnt << 10)) | (int )((short )rx_chain));
  il->staging.rx_chain = rx_chain;
  if ((! is_single && (unsigned int )active_rx_cnt > 1U) && (int )is_cam) {
    il->staging.rx_chain = (__le16 )((unsigned int )il->staging.rx_chain | 16384U);
  } else {
    il->staging.rx_chain = (unsigned int )il->staging.rx_chain & 49151U;
  }
  tmp___4 = il_get_debug_level(il);
  if ((tmp___4 & 4096U) != 0U) {
    tmp___3 = preempt_count();
    dev_err((struct device const *)(& ((il->hw)->wiphy)->dev), "%c %s rx_chain=0x%X active=%d idle=%d\n",
            ((unsigned long )tmp___3 & 2096896UL) != 0UL ? 73 : 85, "il4965_set_rxon_chain",
            (int )il->staging.rx_chain, (int )active_rx_cnt, (int )idle_rx_cnt);
  } else {
  }
  __ret_warn_on = ((unsigned int )active_rx_cnt == 0U || (unsigned int )idle_rx_cnt == 0U) || (int )active_rx_cnt < (int )idle_rx_cnt;
  tmp___5 = ldv__builtin_expect(__ret_warn_on != 0, 0L);
  if (tmp___5 != 0L) {
    warn_slowpath_null("/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/11700/dscv_tempdir/dscv/ri/43_2a/drivers/net/wireless/iwlegacy/4965-mac.c",
                       1197);
  } else {
  }
  ldv__builtin_expect(__ret_warn_on != 0, 0L);
  return;
}
}
static char const *il4965_get_fh_string(int cmd )
{
  {
  switch (cmd) {
  case 7104: ;
  return ("FH49_RSCSR_CHNL0_STTS_WPTR_REG");
  case 7108: ;
  return ("FH49_RSCSR_CHNL0_RBDCB_BASE_REG");
  case 7112: ;
  return ("FH49_RSCSR_CHNL0_WPTR");
  case 7168: ;
  return ("FH49_MEM_RCSR_CHNL0_CONFIG_REG");
  case 7232: ;
  return ("FH49_MEM_RSSR_SHARED_CTRL_REG");
  case 7236: ;
  return ("FH49_MEM_RSSR_RX_STATUS_REG");
  case 7240: ;
  return ("FH49_MEM_RSSR_RX_ENABLE_ERR_IRQ2DRV");
  case 7856: ;
  return ("FH49_TSSR_TX_STATUS_REG");
  case 7864: ;
  return ("FH49_TSSR_TX_ERROR_REG");
  default: ;
  return ("UNKNOWN");
  }
}
}
int il4965_dump_fh(struct il_priv *il , char **buf , bool display )
{
  int i ;
  int pos ;
  size_t bufsz ;
  u32 fh_tbl[9U] ;
  void *tmp ;
  int tmp___0 ;
  u32 tmp___1 ;
  char const *tmp___2 ;
  int tmp___3 ;
  u32 tmp___4 ;
  char const *tmp___5 ;
  {
  pos = 0;
  bufsz = 0UL;
  fh_tbl[0] = 7104U;
  fh_tbl[1] = 7108U;
  fh_tbl[2] = 7112U;
  fh_tbl[3] = 7168U;
  fh_tbl[4] = 7232U;
  fh_tbl[5] = 7236U;
  fh_tbl[6] = 7240U;
  fh_tbl[7] = 7856U;
  fh_tbl[8] = 7864U;
  if ((int )display) {
    bufsz = 472UL;
    tmp = kmalloc(bufsz, 208U);
    *buf = (char *)tmp;
    if ((unsigned long )*buf == (unsigned long )((char *)0)) {
      return (-12);
    } else {
    }
    tmp___0 = scnprintf(*buf + (unsigned long )pos, bufsz - (size_t )pos, "FH register values:\n");
    pos = tmp___0 + pos;
    i = 0;
    goto ldv_54791;
    ldv_54790:
    tmp___1 = il_rd(il, fh_tbl[i]);
    tmp___2 = il4965_get_fh_string((int )fh_tbl[i]);
    tmp___3 = scnprintf(*buf + (unsigned long )pos, bufsz - (size_t )pos, "  %34s: 0X%08x\n",
                        tmp___2, tmp___1);
    pos = tmp___3 + pos;
    i = i + 1;
    ldv_54791: ;
    if ((unsigned int )i <= 8U) {
      goto ldv_54790;
    } else {
    }
    return (pos);
  } else {
  }
  dev_err((struct device const *)(& (il->pci_dev)->dev), "FH register values:\n");
  i = 0;
  goto ldv_54796;
  ldv_54795:
  tmp___4 = il_rd(il, fh_tbl[i]);
  tmp___5 = il4965_get_fh_string((int )fh_tbl[i]);
  dev_err((struct device const *)(& (il->pci_dev)->dev), "  %34s: 0X%08x\n", tmp___5,
          tmp___4);
  i = i + 1;
  ldv_54796: ;
  if ((unsigned int )i <= 8U) {
    goto ldv_54795;
  } else {
  }
  return (0);
}
}
static void il4965_hdl_missed_beacon(struct il_priv *il , struct il_rx_buf *rxb )
{
  struct il_rx_pkt *pkt ;
  void *tmp ;
  struct il_missed_beacon_notif *missed_beacon ;
  int tmp___0 ;
  u32 tmp___1 ;
  int tmp___2 ;
  {
  tmp = lowmem_page_address((struct page const *)rxb->page);
  pkt = (struct il_rx_pkt *)tmp;
  missed_beacon = & pkt->u.missed_beacon;
  if (missed_beacon->consecutive_missed_beacons > (__le32 )il->missed_beacon_threshold) {
    tmp___1 = il_get_debug_level(il);
    if ((tmp___1 & 2097152U) != 0U) {
      tmp___0 = preempt_count();
      dev_err((struct device const *)(& ((il->hw)->wiphy)->dev), "%c %s missed bcn cnsq %d totl %d rcd %d expctd %d\n",
              ((unsigned long )tmp___0 & 2096896UL) != 0UL ? 73 : 85, "il4965_hdl_missed_beacon",
              missed_beacon->consecutive_missed_beacons, missed_beacon->total_missed_becons,
              missed_beacon->num_recvd_beacons, missed_beacon->num_expected_beacons);
    } else {
    }
    tmp___2 = constant_test_bit(13L, (unsigned long const volatile *)(& il->status));
    if (tmp___2 == 0) {
      il4965_init_sensitivity(il);
    } else {
    }
  } else {
  }
  return;
}
}
static void il4965_rx_calc_noise(struct il_priv *il )
{
  struct stats_rx_non_phy *rx_info ;
  int num_active_rx ;
  int total_silence ;
  int bcn_silence_a ;
  int bcn_silence_b ;
  int bcn_silence_c ;
  int last_rx_noise ;
  int tmp ;
  u32 tmp___0 ;
  {
  num_active_rx = 0;
  total_silence = 0;
  rx_info = & il->__annonCompField103._4965.stats.rx.general;
  bcn_silence_a = (int )rx_info->beacon_silence_rssi_a & 255;
  bcn_silence_b = (int )rx_info->beacon_silence_rssi_b & 255;
  bcn_silence_c = (int )rx_info->beacon_silence_rssi_c & 255;
  if (bcn_silence_a != 0) {
    total_silence = total_silence + bcn_silence_a;
    num_active_rx = num_active_rx + 1;
  } else {
  }
  if (bcn_silence_b != 0) {
    total_silence = total_silence + bcn_silence_b;
    num_active_rx = num_active_rx + 1;
  } else {
  }
  if (bcn_silence_c != 0) {
    total_silence = total_silence + bcn_silence_c;
    num_active_rx = num_active_rx + 1;
  } else {
  }
  if (num_active_rx != 0) {
    last_rx_noise = total_silence / num_active_rx + -107;
  } else {
    last_rx_noise = -127;
  }
  tmp___0 = il_get_debug_level(il);
  if ((tmp___0 & 2097152U) != 0U) {
    tmp = preempt_count();
    dev_err((struct device const *)(& ((il->hw)->wiphy)->dev), "%c %s inband silence a %u, b %u, c %u, dBm %d\n",
            ((unsigned long )tmp & 2096896UL) != 0UL ? 73 : 85, "il4965_rx_calc_noise",
            bcn_silence_a, bcn_silence_b, bcn_silence_c, last_rx_noise);
  } else {
  }
  return;
}
}
static void il4965_accumulative_stats(struct il_priv *il , __le32 *stats )
{
  int i ;
  int size ;
  __le32 *prev_stats ;
  u32 *accum_stats ;
  u32 *delta ;
  u32 *max_delta ;
  struct stats_general_common *general ;
  struct stats_general_common *accum_general ;
  struct stats_tx *tx ;
  struct stats_tx *accum_tx ;
  {
  prev_stats = (__le32 *)(& il->__annonCompField103._4965.stats);
  accum_stats = (u32 *)(& il->__annonCompField103._4965.accum_stats);
  size = 472;
  general = & il->__annonCompField103._4965.stats.general.common;
  accum_general = & il->__annonCompField103._4965.accum_stats.general.common;
  tx = & il->__annonCompField103._4965.stats.tx;
  accum_tx = & il->__annonCompField103._4965.accum_stats.tx;
  delta = (u32 *)(& il->__annonCompField103._4965.delta_stats);
  max_delta = (u32 *)(& il->__annonCompField103._4965.max_delta);
  i = 4;
  goto ldv_54831;
  ldv_54830: ;
  if (*stats > *prev_stats) {
    *delta = *stats - *prev_stats;
    *accum_stats = *accum_stats + *delta;
    if (*delta > *max_delta) {
      *max_delta = *delta;
    } else {
    }
  } else {
  }
  i = (int )((unsigned int )i + 4U);
  stats = stats + 1;
  prev_stats = prev_stats + 1;
  delta = delta + 1;
  max_delta = max_delta + 1;
  accum_stats = accum_stats + 1;
  ldv_54831: ;
  if (i < size) {
    goto ldv_54830;
  } else {
  }
  accum_general->temperature = general->temperature;
  accum_general->ttl_timestamp = general->ttl_timestamp;
  return;
}
}
static void il4965_hdl_stats(struct il_priv *il , struct il_rx_buf *rxb )
{
  int recalib_seconds ;
  bool change ;
  struct il_rx_pkt *pkt ;
  void *tmp ;
  int tmp___0 ;
  u32 tmp___1 ;
  unsigned long tmp___2 ;
  int tmp___3 ;
  long tmp___4 ;
  {
  recalib_seconds = 60;
  tmp = lowmem_page_address((struct page const *)rxb->page);
  pkt = (struct il_rx_pkt *)tmp;
  tmp___1 = il_get_debug_level(il);
  if ((tmp___1 & 16777216U) != 0U) {
    tmp___0 = preempt_count();
    dev_err((struct device const *)(& ((il->hw)->wiphy)->dev), "%c %s Statistics notification received (%d vs %d).\n",
            ((unsigned long )tmp___0 & 2096896UL) != 0UL ? 73 : 85, "il4965_hdl_stats",
            472, pkt->len_n_flags & 16383U);
  } else {
  }
  change = (bool )(il->__annonCompField103._4965.stats.general.common.temperature != pkt->u.stats.general.common.temperature || ((il->__annonCompField103._4965.stats.flag ^ pkt->u.stats.flag) & 8U) != 0U);
  il4965_accumulative_stats(il, (__le32 *)(& pkt->u.stats));
  memcpy((void *)(& il->__annonCompField103._4965.stats), (void const *)(& pkt->u.stats),
           472UL);
  set_bit(12L, (unsigned long volatile *)(& il->status));
  tmp___2 = msecs_to_jiffies((unsigned int const )(recalib_seconds * 1000));
  ldv_mod_timer_88(& il->stats_periodic, tmp___2 + (unsigned long )jiffies);
  tmp___3 = constant_test_bit(13L, (unsigned long const volatile *)(& il->status));
  tmp___4 = ldv__builtin_expect(tmp___3 == 0, 0L);
  if (tmp___4 != 0L && (unsigned int )pkt->hdr.cmd == 157U) {
    il4965_rx_calc_noise(il);
    queue_work___0(il->workqueue, & il->run_time_calib_work);
  } else {
  }
  if ((int )change) {
    il4965_temperature_calib(il);
  } else {
  }
  return;
}
}
static void il4965_hdl_c_stats(struct il_priv *il , struct il_rx_buf *rxb )
{
  struct il_rx_pkt *pkt ;
  void *tmp ;
  int tmp___0 ;
  u32 tmp___1 ;
  {
  tmp = lowmem_page_address((struct page const *)rxb->page);
  pkt = (struct il_rx_pkt *)tmp;
  if ((int )pkt->u.stats.flag & 1) {
    memset((void *)(& il->__annonCompField103._4965.accum_stats), 0, 472UL);
    memset((void *)(& il->__annonCompField103._4965.delta_stats), 0, 472UL);
    memset((void *)(& il->__annonCompField103._4965.max_delta), 0, 472UL);
    tmp___1 = il_get_debug_level(il);
    if ((tmp___1 & 16777216U) != 0U) {
      tmp___0 = preempt_count();
      dev_err((struct device const *)(& ((il->hw)->wiphy)->dev), "%c %s Statistics have been cleared\n",
              ((unsigned long )tmp___0 & 2096896UL) != 0UL ? 73 : 85, "il4965_hdl_c_stats");
    } else {
    }
  } else {
  }
  il4965_hdl_stats(il, rxb);
  return;
}
}
static u8 const tid_to_ac[8U] =
  { 2U, 3U, 3U, 2U,
        1U, 1U, 0U, 0U};
__inline static int il4965_get_ac_from_tid(u16 tid )
{
  long tmp ;
  {
  tmp = ldv__builtin_expect((unsigned int )tid <= 7U, 1L);
  if (tmp != 0L) {
    return ((int )tid_to_ac[(int )tid]);
  } else {
  }
  return (-22);
}
}
__inline static int il4965_get_fifo_from_tid(u16 tid )
{
  u8 ac_to_fifo[4U] ;
  long tmp ;
  {
  ac_to_fifo[0] = 3U;
  ac_to_fifo[1] = 2U;
  ac_to_fifo[2] = 1U;
  ac_to_fifo[3] = 0U;
  tmp = ldv__builtin_expect((unsigned int )tid <= 7U, 1L);
  if (tmp != 0L) {
    return ((int )ac_to_fifo[(int )tid_to_ac[(int )tid]]);
  } else {
  }
  return (-22);
}
}
static void il4965_tx_cmd_build_basic(struct il_priv *il , struct sk_buff *skb , struct il_tx_cmd *tx_cmd ,
                                      struct ieee80211_tx_info *info , struct ieee80211_hdr *hdr ,
                                      u8 std_id )
{
  __le16 fc ;
  __le32 tx_flags ;
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  u8 *qc ;
  u8 *tmp___3 ;
  int tmp___4 ;
  int tmp___5 ;
  int tmp___6 ;
  int tmp___7 ;
  {
  fc = hdr->frame_control;
  tx_flags = tx_cmd->tx_flags;
  tx_cmd->stop_time.life_time = 4294967295U;
  if ((info->flags & 4U) == 0U) {
    tx_flags = tx_flags | 8U;
    tmp = ieee80211_is_mgmt((int )fc);
    if (tmp != 0) {
      tx_flags = tx_flags | 8192U;
    } else {
    }
    tmp___0 = ieee80211_is_probe_resp((int )fc);
    if (tmp___0 != 0 && ((int )hdr->seq_ctrl & 15) == 0) {
      tx_flags = tx_flags | 65536U;
    } else {
    }
  } else {
    tx_flags = tx_flags & 4294967287U;
    tx_flags = tx_flags | 8192U;
  }
  tmp___1 = ieee80211_is_back_req((int )fc);
  if (tmp___1 != 0) {
    tx_flags = tx_flags | 72U;
  } else {
  }
  tx_cmd->sta_id = std_id;
  tmp___2 = ieee80211_has_morefrags((int )fc);
  if (tmp___2 != 0) {
    tx_flags = tx_flags | 16384U;
  } else {
  }
  tmp___4 = ieee80211_is_data_qos((int )fc);
  if (tmp___4 != 0) {
    tmp___3 = ieee80211_get_qos_ctl(hdr);
    qc = tmp___3;
    tx_cmd->tid_tspec = (unsigned int )*qc & 15U;
    tx_flags = tx_flags & 4294959103U;
  } else {
    tx_flags = tx_flags | 8192U;
  }
  il_tx_cmd_protection(il, info, (int )fc, & tx_flags);
  tx_flags = tx_flags & 4294963455U;
  tmp___7 = ieee80211_is_mgmt((int )fc);
  if (tmp___7 != 0) {
    tmp___5 = ieee80211_is_assoc_req((int )fc);
    if (tmp___5 != 0) {
      tx_cmd->timeout.pm_frame_timeout = 3U;
    } else {
      tmp___6 = ieee80211_is_reassoc_req((int )fc);
      if (tmp___6 != 0) {
        tx_cmd->timeout.pm_frame_timeout = 3U;
      } else {
        tx_cmd->timeout.pm_frame_timeout = 2U;
      }
    }
  } else {
    tx_cmd->timeout.pm_frame_timeout = 0U;
  }
  tx_cmd->driver_txop = 0U;
  tx_cmd->tx_flags = tx_flags;
  tx_cmd->next_frame_len = 0U;
  return;
}
}
static void il4965_tx_cmd_build_rate(struct il_priv *il , struct il_tx_cmd *tx_cmd ,
                                     struct ieee80211_tx_info *info , struct ieee80211_sta *sta ,
                                     __le16 fc )
{
  u8 rts_retry_limit ;
  u32 rate_flags ;
  int rate_idx ;
  u8 data_retry_limit ;
  u8 rate_plcp ;
  int tmp ;
  u8 _min1 ;
  unsigned char _min2 ;
  int tmp___0 ;
  s8 tmp___1 ;
  {
  rts_retry_limit = 60U;
  tmp = ieee80211_is_probe_resp((int )fc);
  if (tmp != 0) {
    data_retry_limit = 3U;
  } else {
    data_retry_limit = 15U;
  }
  tx_cmd->data_retry_limit = data_retry_limit;
  _min1 = data_retry_limit;
  _min2 = rts_retry_limit;
  tx_cmd->rts_retry_limit = (u8 )((int )_min1 < (int )_min2 ? _min1 : _min2);
  tmp___0 = ieee80211_is_data((int )fc);
  if (tmp___0 != 0) {
    tx_cmd->initial_rate_idx = 0U;
    tx_cmd->tx_flags = tx_cmd->tx_flags | 16U;
    return;
  } else {
  }
  rate_idx = (int )info->__annonCompField100.control.__annonCompField98.__annonCompField97.rates[0].idx;
  if ((((int )info->__annonCompField100.control.__annonCompField98.__annonCompField97.rates[0].flags & 8) != 0 || rate_idx < 0) || rate_idx > 12) {
    tmp___1 = rate_lowest_index((struct ieee80211_supported_band *)(& il->bands) + (unsigned long )info->band,
                                sta);
    rate_idx = (int )tmp___1;
  } else {
  }
  if ((unsigned int )info->band == 1U) {
    rate_idx = rate_idx + 4;
  } else {
  }
  rate_plcp = il_rates[rate_idx].plcp;
  rate_flags = 0U;
  if (rate_idx >= 0 && rate_idx <= 3) {
    rate_flags = rate_flags | 512U;
  } else {
  }
  il4965_toggle_tx_ant(il, & il->mgmt_tx_ant, (int )il->hw_params.valid_tx_ant);
  rate_flags = ((u32 )(1UL << (int )il->mgmt_tx_ant) << 14U) | rate_flags;
  tx_cmd->rate_n_flags = (u32 )rate_plcp | rate_flags;
  return;
}
}
static void il4965_tx_cmd_build_hwcrypto(struct il_priv *il , struct ieee80211_tx_info *info ,
                                         struct il_tx_cmd *tx_cmd , struct sk_buff *skb_frag ,
                                         int sta_id )
{
  struct ieee80211_key_conf *keyconf ;
  int tmp ;
  u32 tmp___0 ;
  int tmp___1 ;
  u32 tmp___2 ;
  int tmp___3 ;
  u32 tmp___4 ;
  {
  keyconf = info->__annonCompField100.control.hw_key;
  switch (keyconf->cipher) {
  case 1027076U:
  tx_cmd->sec_ctl = 2U;
  memcpy((void *)(& tx_cmd->key), (void const *)(& keyconf->key), (size_t )keyconf->keylen);
  if ((info->flags & 64U) != 0U) {
    tx_cmd->tx_flags = tx_cmd->tx_flags | 4194304U;
  } else {
  }
  tmp___0 = il_get_debug_level(il);
  if ((tmp___0 & 8388608U) != 0U) {
    tmp = preempt_count();
    dev_err((struct device const *)(& ((il->hw)->wiphy)->dev), "%c %s tx_cmd with AES hwcrypto\n",
            ((unsigned long )tmp & 2096896UL) != 0UL ? 73 : 85, "il4965_tx_cmd_build_hwcrypto");
  } else {
  }
  goto ldv_54895;
  case 1027074U:
  tx_cmd->sec_ctl = 3U;
  ieee80211_get_tkip_p2k(keyconf, skb_frag, (u8 *)(& tx_cmd->key));
  tmp___2 = il_get_debug_level(il);
  if ((tmp___2 & 8388608U) != 0U) {
    tmp___1 = preempt_count();
    dev_err((struct device const *)(& ((il->hw)->wiphy)->dev), "%c %s tx_cmd with tkip hwcrypto\n",
            ((unsigned long )tmp___1 & 2096896UL) != 0UL ? 73 : 85, "il4965_tx_cmd_build_hwcrypto");
  } else {
  }
  goto ldv_54895;
  case 1027077U:
  tx_cmd->sec_ctl = (u8 )((unsigned int )tx_cmd->sec_ctl | 8U);
  case 1027073U:
  tx_cmd->sec_ctl = (u8 )((int )((signed char )tx_cmd->sec_ctl) | ((int )((signed char )((int )keyconf->keyidx << 6)) | 1));
  memcpy((void *)(& tx_cmd->key) + 3U, (void const *)(& keyconf->key), (size_t )keyconf->keylen);
  tmp___4 = il_get_debug_level(il);
  if ((tmp___4 & 8388608U) != 0U) {
    tmp___3 = preempt_count();
    dev_err((struct device const *)(& ((il->hw)->wiphy)->dev), "%c %s Configuring packet for WEP encryption with key %d\n",
            ((unsigned long )tmp___3 & 2096896UL) != 0UL ? 73 : 85, "il4965_tx_cmd_build_hwcrypto",
            (int )keyconf->keyidx);
  } else {
  }
  goto ldv_54895;
  default:
  dev_err((struct device const *)(& (il->pci_dev)->dev), "Unknown encode cipher %x\n",
          keyconf->cipher);
  goto ldv_54895;
  }
  ldv_54895: ;
  return;
}
}
int il4965_tx_skb(struct il_priv *il , struct ieee80211_sta *sta , struct sk_buff *skb )
{
  struct ieee80211_hdr *hdr ;
  struct ieee80211_tx_info *info ;
  struct ieee80211_tx_info *tmp ;
  struct il_station_priv *sta_priv ;
  struct il_tx_queue *txq ;
  struct il_queue *q ;
  struct il_device_cmd *out_cmd ;
  struct il_cmd_meta *out_meta ;
  struct il_tx_cmd *tx_cmd ;
  int txq_id ;
  dma_addr_t phys_addr ;
  dma_addr_t txcmd_phys ;
  dma_addr_t scratch_phys ;
  u16 len ;
  u16 firstlen ;
  u16 secondlen ;
  u16 seq_number ;
  __le16 fc ;
  u8 hdr_len ;
  u8 sta_id ;
  u8 wait_write_ptr ;
  u8 tid ;
  u8 *qc ;
  unsigned long flags ;
  bool is_agg ;
  int tmp___0 ;
  u32 tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  u32 tmp___4 ;
  int tmp___5 ;
  u32 tmp___6 ;
  int tmp___7 ;
  u32 tmp___8 ;
  int tmp___9 ;
  int tmp___10 ;
  int tmp___11 ;
  unsigned int tmp___12 ;
  int tmp___13 ;
  int tmp___14 ;
  u32 tmp___15 ;
  int tmp___16 ;
  int tmp___17 ;
  u32 tmp___18 ;
  bool __warned ;
  int __ret_warn_once ;
  int __ret_warn_on ;
  long tmp___19 ;
  long tmp___20 ;
  long tmp___21 ;
  u16 tmp___22 ;
  bool __warned___0 ;
  int __ret_warn_once___0 ;
  int __ret_warn_on___0 ;
  long tmp___23 ;
  long tmp___24 ;
  long tmp___25 ;
  long tmp___26 ;
  int tmp___27 ;
  int tmp___28 ;
  long tmp___29 ;
  int tmp___30 ;
  int tmp___31 ;
  int tmp___32 ;
  long tmp___33 ;
  int tmp___34 ;
  long tmp___35 ;
  int tmp___36 ;
  int tmp___37 ;
  u32 tmp___38 ;
  int tmp___39 ;
  u32 tmp___40 ;
  u32 tmp___41 ;
  u32 tmp___42 ;
  int tmp___43 ;
  {
  hdr = (struct ieee80211_hdr *)skb->data;
  tmp = IEEE80211_SKB_CB(skb);
  info = tmp;
  sta_priv = (struct il_station_priv *)0;
  seq_number = 0U;
  wait_write_ptr = 0U;
  tid = 0U;
  qc = (u8 *)0U;
  is_agg = 0;
  ldv_spin_lock();
  tmp___2 = il_is_rfkill(il);
  if (tmp___2 != 0) {
    tmp___1 = il_get_debug_level(il);
    if ((tmp___1 & 8192U) != 0U) {
      tmp___0 = preempt_count();
      dev_err((struct device const *)(& ((il->hw)->wiphy)->dev), "%c %s Dropping - RF KILL\n",
              ((unsigned long )tmp___0 & 2096896UL) != 0UL ? 73 : 85, "il4965_tx_skb");
    } else {
    }
    goto drop_unlock;
  } else {
  }
  fc = hdr->frame_control;
  tmp___11 = ieee80211_is_auth((int )fc);
  if (tmp___11 != 0) {
    tmp___4 = il_get_debug_level(il);
    if ((tmp___4 & 8388608U) != 0U) {
      tmp___3 = preempt_count();
      dev_err((struct device const *)(& ((il->hw)->wiphy)->dev), "%c %s Sending AUTH frame\n",
              ((unsigned long )tmp___3 & 2096896UL) != 0UL ? 73 : 85, "il4965_tx_skb");
    } else {
    }
  } else {
    tmp___10 = ieee80211_is_assoc_req((int )fc);
    if (tmp___10 != 0) {
      tmp___6 = il_get_debug_level(il);
      if ((tmp___6 & 8388608U) != 0U) {
        tmp___5 = preempt_count();
        dev_err((struct device const *)(& ((il->hw)->wiphy)->dev), "%c %s Sending ASSOC frame\n",
                ((unsigned long )tmp___5 & 2096896UL) != 0UL ? 73 : 85, "il4965_tx_skb");
      } else {
      }
    } else {
      tmp___9 = ieee80211_is_reassoc_req((int )fc);
      if (tmp___9 != 0) {
        tmp___8 = il_get_debug_level(il);
        if ((tmp___8 & 8388608U) != 0U) {
          tmp___7 = preempt_count();
          dev_err((struct device const *)(& ((il->hw)->wiphy)->dev), "%c %s Sending REASSOC frame\n",
                  ((unsigned long )tmp___7 & 2096896UL) != 0UL ? 73 : 85, "il4965_tx_skb");
        } else {
        }
      } else {
      }
    }
  }
  tmp___12 = ieee80211_hdrlen((int )fc);
  hdr_len = (u8 )tmp___12;
  tmp___16 = ieee80211_is_data((int )fc);
  if (tmp___16 == 0) {
    sta_id = il->hw_params.bcast_id;
  } else {
    tmp___13 = il_sta_id_or_broadcast(il, sta);
    sta_id = (u8 )tmp___13;
    if ((unsigned int )sta_id == 255U) {
      tmp___15 = il_get_debug_level(il);
      if ((tmp___15 & 8192U) != 0U) {
        tmp___14 = preempt_count();
        dev_err((struct device const *)(& ((il->hw)->wiphy)->dev), "%c %s Dropping - INVALID STATION: %pM\n",
                ((unsigned long )tmp___14 & 2096896UL) != 0UL ? 73 : 85, "il4965_tx_skb",
                (u8 *)(& hdr->addr1));
      } else {
      }
      goto drop_unlock;
    } else {
    }
  }
  tmp___18 = il_get_debug_level(il);
  if ((tmp___18 & 8388608U) != 0U) {
    tmp___17 = preempt_count();
    dev_err((struct device const *)(& ((il->hw)->wiphy)->dev), "%c %s station Id %d\n",
            ((unsigned long )tmp___17 & 2096896UL) != 0UL ? 73 : 85, "il4965_tx_skb",
            (int )sta_id);
  } else {
  }
  if ((unsigned long )sta != (unsigned long )((struct ieee80211_sta *)0)) {
    sta_priv = (struct il_station_priv *)(& sta->drv_priv);
  } else {
  }
  if (((unsigned long )sta_priv != (unsigned long )((struct il_station_priv *)0) && (int )sta_priv->asleep) && (info->flags & 131072U) != 0U) {
    il4965_sta_modify_sleep_tx_count(il, (int )sta_id, 1);
  } else {
  }
  __ret_warn_once = (info->flags & 32U) != 0U;
  tmp___21 = ldv__builtin_expect(__ret_warn_once != 0, 0L);
  if (tmp___21 != 0L) {
    __ret_warn_on = ! __warned;
    tmp___19 = ldv__builtin_expect(__ret_warn_on != 0, 0L);
    if (tmp___19 != 0L) {
      warn_slowpath_null("/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/11700/dscv_tempdir/dscv/ri/43_2a/drivers/net/wireless/iwlegacy/4965-mac.c",
                         1737);
    } else {
    }
    tmp___20 = ldv__builtin_expect(__ret_warn_on != 0, 0L);
    if (tmp___20 != 0L) {
      __warned = 1;
    } else {
    }
  } else {
  }
  ldv__builtin_expect(__ret_warn_once != 0, 0L);
  tmp___22 = skb_get_queue_mapping((struct sk_buff const *)skb);
  txq_id = (int )tmp___22;
  spin_lock(& il->sta_lock);
  tmp___27 = ieee80211_is_data_qos((int )fc);
  if (tmp___27 != 0) {
    qc = ieee80211_get_qos_ctl(hdr);
    tid = (unsigned int )*qc & 15U;
    __ret_warn_once___0 = (unsigned int )tid > 8U;
    tmp___25 = ldv__builtin_expect(__ret_warn_once___0 != 0, 0L);
    if (tmp___25 != 0L) {
      __ret_warn_on___0 = ! __warned___0;
      tmp___23 = ldv__builtin_expect(__ret_warn_on___0 != 0, 0L);
      if (tmp___23 != 0L) {
        warn_slowpath_null("/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/11700/dscv_tempdir/dscv/ri/43_2a/drivers/net/wireless/iwlegacy/4965-mac.c",
                           1748);
      } else {
      }
      tmp___24 = ldv__builtin_expect(__ret_warn_on___0 != 0, 0L);
      if (tmp___24 != 0L) {
        __warned___0 = 1;
      } else {
      }
    } else {
    }
    tmp___26 = ldv__builtin_expect(__ret_warn_once___0 != 0, 0L);
    if (tmp___26 != 0L) {
      spin_unlock(& il->sta_lock);
      goto drop_unlock;
    } else {
    }
    seq_number = il->stations[(int )sta_id].tid[(int )tid].seq_number;
    seq_number = (unsigned int )seq_number & 65520U;
    hdr->seq_ctrl = (unsigned int )hdr->seq_ctrl & 15U;
    hdr->seq_ctrl = (__le16 )((int )hdr->seq_ctrl | (int )seq_number);
    seq_number = (unsigned int )seq_number + 16U;
    if ((info->flags & 64U) != 0U && (unsigned int )il->stations[(int )sta_id].tid[(int )tid].agg.state == 1U) {
      txq_id = (int )il->stations[(int )sta_id].tid[(int )tid].agg.txq_id;
      is_agg = 1;
    } else {
    }
  } else {
  }
  txq = il->txq + (unsigned long )txq_id;
  q = & txq->q;
  tmp___28 = il_queue_space((struct il_queue const *)q);
  tmp___29 = ldv__builtin_expect(tmp___28 < q->high_mark, 0L);
  if (tmp___29 != 0L) {
    spin_unlock(& il->sta_lock);
    goto drop_unlock;
  } else {
  }
  tmp___31 = ieee80211_is_data_qos((int )fc);
  if (tmp___31 != 0) {
    il->stations[(int )sta_id].tid[(int )tid].tfds_in_queue = (u16 )((int )il->stations[(int )sta_id].tid[(int )tid].tfds_in_queue + 1);
    tmp___30 = ieee80211_has_morefrags((int )fc);
    if (tmp___30 == 0) {
      il->stations[(int )sta_id].tid[(int )tid].seq_number = seq_number;
    } else {
    }
  } else {
  }
  spin_unlock(& il->sta_lock);
  *(txq->skbs + (unsigned long )q->write_ptr) = skb;
  out_cmd = *(txq->cmd + (unsigned long )q->write_ptr);
  out_meta = txq->meta + (unsigned long )q->write_ptr;
  tx_cmd = & out_cmd->cmd.tx;
  memset((void *)(& out_cmd->hdr), 0, 4UL);
  memset((void *)tx_cmd, 0, 56UL);
  out_cmd->hdr.cmd = 28U;
  out_cmd->hdr.sequence = (unsigned short )((int )((short )((txq_id & 31) << 8)) | ((int )((short )q->write_ptr) & 255));
  memcpy((void *)(& tx_cmd->hdr), (void const *)hdr, (size_t )hdr_len);
  tx_cmd->len = (unsigned short )skb->len;
  if ((unsigned long )info->__annonCompField100.control.hw_key != (unsigned long )((struct ieee80211_key_conf *)0)) {
    il4965_tx_cmd_build_hwcrypto(il, info, tx_cmd, skb, (int )sta_id);
  } else {
  }
  il4965_tx_cmd_build_basic(il, skb, tx_cmd, info, hdr, (int )sta_id);
  il4965_tx_cmd_build_rate(il, tx_cmd, info, sta, (int )fc);
  len = (unsigned int )((u16 )hdr_len) + 60U;
  firstlen = (unsigned int )((u16 )((unsigned int )len + 3U)) & 65532U;
  if ((int )firstlen != (int )len) {
    tx_cmd->tx_flags = tx_cmd->tx_flags | 1048576U;
  } else {
  }
  txcmd_phys = pci_map_single(il->pci_dev, (void *)(& out_cmd->hdr), (size_t )firstlen,
                              0);
  tmp___32 = pci_dma_mapping_error(il->pci_dev, txcmd_phys);
  tmp___33 = ldv__builtin_expect(tmp___32 != 0, 0L);
  if (tmp___33 != 0L) {
    goto drop_unlock;
  } else {
  }
  secondlen = (int )((u16 )skb->len) - (int )((u16 )hdr_len);
  if ((unsigned int )secondlen != 0U) {
    phys_addr = pci_map_single(il->pci_dev, (void *)skb->data + (unsigned long )hdr_len,
                               (size_t )secondlen, 1);
    tmp___34 = pci_dma_mapping_error(il->pci_dev, phys_addr);
    tmp___35 = ldv__builtin_expect(tmp___34 != 0, 0L);
    if (tmp___35 != 0L) {
      goto drop_unlock;
    } else {
    }
  } else {
  }
  (*((il->ops)->txq_attach_buf_to_tfd))(il, txq, txcmd_phys, (int )firstlen, 1, 0);
  out_meta->mapping = txcmd_phys;
  out_meta->len = (__u32 )firstlen;
  if ((unsigned int )secondlen != 0U) {
    (*((il->ops)->txq_attach_buf_to_tfd))(il, txq, phys_addr, (int )secondlen, 0,
                                          0);
  } else {
  }
  tmp___36 = ieee80211_has_morefrags((int )hdr->frame_control);
  if (tmp___36 == 0) {
    txq->need_update = 1U;
  } else {
    wait_write_ptr = 1U;
    txq->need_update = 0U;
  }
  scratch_phys = txcmd_phys + 12ULL;
  pci_dma_sync_single_for_cpu(il->pci_dev, txcmd_phys, (size_t )firstlen, 0);
  tx_cmd->dram_lsb_ptr = (unsigned int )scratch_phys;
  tx_cmd->dram_msb_ptr = il_get_dma_hi_addr(scratch_phys);
  il_update_stats(il, 1, (int )fc, (int )((u16 )skb->len));
  tmp___38 = il_get_debug_level(il);
  if ((tmp___38 & 8388608U) != 0U) {
    tmp___37 = preempt_count();
    dev_err((struct device const *)(& ((il->hw)->wiphy)->dev), "%c %s sequence nr = 0X%x\n",
            ((unsigned long )tmp___37 & 2096896UL) != 0UL ? 73 : 85, "il4965_tx_skb",
            (int )out_cmd->hdr.sequence);
  } else {
  }
  tmp___40 = il_get_debug_level(il);
  if ((tmp___40 & 8388608U) != 0U) {
    tmp___39 = preempt_count();
    dev_err((struct device const *)(& ((il->hw)->wiphy)->dev), "%c %s tx_flags = 0X%x\n",
            ((unsigned long )tmp___39 & 2096896UL) != 0UL ? 73 : 85, "il4965_tx_skb",
            tx_cmd->tx_flags);
  } else {
  }
  tmp___41 = il_get_debug_level(il);
  if ((tmp___41 & 8388608U) != 0U) {
    print_hex_dump("\017", "iwl data: ", 2, 16, 1, (void const *)tx_cmd, 56UL, 1);
  } else {
  }
  tmp___42 = il_get_debug_level(il);
  if ((tmp___42 & 8388608U) != 0U) {
    print_hex_dump("\017", "iwl data: ", 2, 16, 1, (void const *)(& tx_cmd->hdr),
                   (size_t )hdr_len, 1);
  } else {
  }
  if ((info->flags & 64U) != 0U) {
    (*((il->ops)->txq_update_byte_cnt_tbl))(il, txq, (int )tx_cmd->len);
  } else {
  }
  pci_dma_sync_single_for_device(il->pci_dev, txcmd_phys, (size_t )firstlen, 0);
  q->write_ptr = il_queue_inc_wrap(q->write_ptr, q->n_bd);
  il_txq_update_write_ptr(il, txq);
  spin_unlock_irqrestore(& il->lock, flags);
  if (((unsigned long )sta_priv != (unsigned long )((struct il_station_priv *)0) && (int )sta_priv->client) && ! is_agg) {
    atomic_inc(& sta_priv->pending_frames);
  } else {
  }
  tmp___43 = il_queue_space((struct il_queue const *)q);
  if (tmp___43 < q->high_mark && (unsigned int )il->mac80211_registered != 0U) {
    if ((unsigned int )wait_write_ptr != 0U) {
      ldv_spin_lock();
      txq->need_update = 1U;
      il_txq_update_write_ptr(il, txq);
      spin_unlock_irqrestore(& il->lock, flags);
    } else {
      il_stop_queue(il, txq);
    }
  } else {
  }
  return (0);
  drop_unlock:
  spin_unlock_irqrestore(& il->lock, flags);
  return (-1);
}
}
__inline static int il4965_alloc_dma_ptr(struct il_priv *il , struct il_dma_ptr *ptr ,
                                         size_t size )
{
  {
  ptr->addr = dma_alloc_attrs(& (il->pci_dev)->dev, size, & ptr->dma, 208U, (struct dma_attrs *)0);
  if ((unsigned long )ptr->addr == (unsigned long )((void *)0)) {
    return (-12);
  } else {
  }
  ptr->size = size;
  return (0);
}
}
__inline static void il4965_free_dma_ptr(struct il_priv *il , struct il_dma_ptr *ptr )
{
  long tmp ;
  {
  tmp = ldv__builtin_expect((unsigned long )ptr->addr == (unsigned long )((void *)0),
                         0L);
  if (tmp != 0L) {
    return;
  } else {
  }
  dma_free_attrs(& (il->pci_dev)->dev, ptr->size, ptr->addr, ptr->dma, (struct dma_attrs *)0);
  memset((void *)ptr, 0, 24UL);
  return;
}
}
void il4965_hw_txq_ctx_free(struct il_priv *il )
{
  int txq_id ;
  {
  if ((unsigned long )il->txq != (unsigned long )((struct il_tx_queue *)0)) {
    txq_id = 0;
    goto ldv_54955;
    ldv_54954: ;
    if ((int )il->cmd_queue == txq_id) {
      il_cmd_queue_free(il);
    } else {
      il_tx_queue_free(il, txq_id);
    }
    txq_id = txq_id + 1;
    ldv_54955: ;
    if ((int )il->hw_params.max_txq_num > txq_id) {
      goto ldv_54954;
    } else {
    }
  } else {
  }
  il4965_free_dma_ptr(il, & il->kw);
  il4965_free_dma_ptr(il, & il->scd_bc_tbls);
  il_free_txq_mem(il);
  return;
}
}
int il4965_txq_ctx_alloc(struct il_priv *il )
{
  int ret ;
  int txq_id ;
  unsigned long flags ;
  {
  il4965_hw_txq_ctx_free(il);
  ret = il4965_alloc_dma_ptr(il, & il->scd_bc_tbls, (size_t )il->hw_params.scd_bc_tbls_size);
  if (ret != 0) {
    dev_err((struct device const *)(& (il->pci_dev)->dev), "Scheduler BC Table allocation failed\n");
    goto error_bc_tbls;
  } else {
  }
  ret = il4965_alloc_dma_ptr(il, & il->kw, 4096UL);
  if (ret != 0) {
    dev_err((struct device const *)(& (il->pci_dev)->dev), "Keep Warm allocation failed\n");
    goto error_kw;
  } else {
  }
  ret = il_alloc_txq_mem(il);
  if (ret != 0) {
    goto error;
  } else {
  }
  ldv_spin_lock();
  il4965_txq_set_sched(il, 0U);
  il_wr___0(il, 6524U, (u32 )(il->kw.dma >> 4));
  spin_unlock_irqrestore(& il->lock, flags);
  txq_id = 0;
  goto ldv_54967;
  ldv_54966:
  ret = il_tx_queue_init(il, (u32 )txq_id);
  if (ret != 0) {
    dev_err((struct device const *)(& (il->pci_dev)->dev), "Tx %d queue init failed\n",
            txq_id);
    goto error;
  } else {
  }
  txq_id = txq_id + 1;
  ldv_54967: ;
  if ((int )il->hw_params.max_txq_num > txq_id) {
    goto ldv_54966;
  } else {
  }
  return (ret);
  error:
  il4965_hw_txq_ctx_free(il);
  il4965_free_dma_ptr(il, & il->kw);
  error_kw:
  il4965_free_dma_ptr(il, & il->scd_bc_tbls);
  error_bc_tbls: ;
  return (ret);
}
}
void il4965_txq_ctx_reset(struct il_priv *il )
{
  int txq_id ;
  unsigned long flags ;
  {
  ldv_spin_lock();
  il4965_txq_set_sched(il, 0U);
  il_wr___0(il, 6524U, (u32 )(il->kw.dma >> 4));
  spin_unlock_irqrestore(& il->lock, flags);
  txq_id = 0;
  goto ldv_54975;
  ldv_54974:
  il_tx_queue_reset(il, (u32 )txq_id);
  txq_id = txq_id + 1;
  ldv_54975: ;
  if ((int )il->hw_params.max_txq_num > txq_id) {
    goto ldv_54974;
  } else {
  }
  return;
}
}
static void il4965_txq_ctx_unmap(struct il_priv *il )
{
  int txq_id ;
  {
  if ((unsigned long )il->txq == (unsigned long )((struct il_tx_queue *)0)) {
    return;
  } else {
  }
  txq_id = 0;
  goto ldv_54982;
  ldv_54981: ;
  if ((int )il->cmd_queue == txq_id) {
    il_cmd_queue_unmap(il);
  } else {
    il_tx_queue_unmap(il, txq_id);
  }
  txq_id = txq_id + 1;
  ldv_54982: ;
  if ((int )il->hw_params.max_txq_num > txq_id) {
    goto ldv_54981;
  } else {
  }
  return;
}
}
void il4965_txq_ctx_stop(struct il_priv *il )
{
  int ch ;
  int ret ;
  u32 tmp ;
  {
  _il_wr_prph(il, 10497052U, 0U);
  ch = 0;
  goto ldv_54990;
  ldv_54989:
  _il_wr(il, (u32 )((ch + 232) * 32), 0U);
  ret = _il_poll_bit(il, 7856U, (u32 )((1 << ch) << 16), (u32 )((1 << ch) << 16),
                     1000);
  if (ret < 0) {
    tmp = _il_rd(il, 7856U);
    dev_err((struct device const *)(& (il->pci_dev)->dev), "Timeout stopping DMA channel %d [0x%08x]",
            ch, tmp);
  } else {
  }
  ch = ch + 1;
  ldv_54990: ;
  if ((int )il->hw_params.dma_chnl_num > ch) {
    goto ldv_54989;
  } else {
  }
  return;
}
}
static int il4965_txq_ctx_activate_free(struct il_priv *il )
{
  int txq_id ;
  int tmp ;
  {
  txq_id = 0;
  goto ldv_54997;
  ldv_54996:
  tmp = test_and_set_bit((long )txq_id, (unsigned long volatile *)(& il->txq_ctx_active_msk));
  if (tmp == 0) {
    return (txq_id);
  } else {
  }
  txq_id = txq_id + 1;
  ldv_54997: ;
  if ((int )il->hw_params.max_txq_num > txq_id) {
    goto ldv_54996;
  } else {
  }
  return (-1);
}
}
static void il4965_tx_queue_stop_scheduler(struct il_priv *il , u16 txq_id )
{
  {
  il_wr_prph(il, (u32 )(((int )txq_id + 2624321) * 4), 1024U);
  return;
}
}
static int il4965_tx_queue_set_q2ratid(struct il_priv *il , u16 ra_tid , u16 txq_id )
{
  u32 tbl_dw_addr ;
  u32 tbl_dw ;
  u16 scd_q2ratid ;
  {
  scd_q2ratid = (unsigned int )ra_tid & 511U;
  tbl_dw_addr = il->scd_base_addr + ((u32 )(((int )txq_id + 640) * 2) & 4294967292U);
  tbl_dw = il_read_targ_mem(il, tbl_dw_addr);
  if ((int )txq_id & 1) {
    tbl_dw = (u32 )((int )scd_q2ratid << 16) | (tbl_dw & 65535U);
  } else {
    tbl_dw = (u32 )scd_q2ratid | (tbl_dw & 4294901760U);
  }
  il_write_targ_mem(il, tbl_dw_addr, tbl_dw);
  return (0);
}
}
static int il4965_txq_agg_enable(struct il_priv *il , int txq_id , int tx_fifo , int sta_id ,
                                 int tid , u16 ssn_idx )
{
  unsigned long flags ;
  u16 ra_tid ;
  int ret ;
  {
  if (txq_id <= 6 || (il->cfg)->num_of_ampdu_queues + 7 <= txq_id) {
    dev_warn((struct device const *)(& (il->pci_dev)->dev), "queue number out of range: %d, must be %d to %d\n",
             txq_id, 7, (il->cfg)->num_of_ampdu_queues + 6);
    return (-22);
  } else {
  }
  ra_tid = ((int )((u16 )sta_id) << 4U) + (int )((u16 )tid);
  ret = il4965_sta_tx_modify_enable_tid(il, sta_id, tid);
  if (ret != 0) {
    return (ret);
  } else {
  }
  ldv_spin_lock();
  il4965_tx_queue_stop_scheduler(il, (int )((u16 )txq_id));
  il4965_tx_queue_set_q2ratid(il, (int )ra_tid, (int )((u16 )txq_id));
  il_set_bits_prph(il, 10497232U, (u32 )(1 << txq_id));
  (il->txq + (unsigned long )txq_id)->q.read_ptr = (int )ssn_idx & 255;
  (il->txq + (unsigned long )txq_id)->q.write_ptr = (int )ssn_idx & 255;
  il4965_set_wr_ptrs(il, txq_id, (u32 )ssn_idx);
  il_write_targ_mem(il, il->scd_base_addr + (u32 )((txq_id + 112) * 8), 64U);
  il_write_targ_mem(il, (il->scd_base_addr + (u32 )((txq_id + 112) * 8)) + 4U, 4194304U);
  il_set_bits_prph(il, 10497252U, (u32 )(1 << txq_id));
  il4965_tx_queue_set_status(il, il->txq + (unsigned long )txq_id, tx_fifo, 1);
  spin_unlock_irqrestore(& il->lock, flags);
  return (0);
}
}
int il4965_tx_agg_start(struct il_priv *il , struct ieee80211_vif *vif , struct ieee80211_sta *sta ,
                        u16 tid , u16 *ssn )
{
  int sta_id ;
  int tx_fifo ;
  int txq_id ;
  int ret ;
  unsigned long flags ;
  struct il_tid_data *tid_data ;
  long tmp ;
  int tmp___0 ;
  u32 tmp___1 ;
  long tmp___2 ;
  int tmp___3 ;
  int tmp___4 ;
  u32 tmp___5 ;
  int tmp___6 ;
  u32 tmp___7 ;
  {
  tx_fifo = il4965_get_fifo_from_tid((int )tid);
  tmp = ldv__builtin_expect(tx_fifo < 0, 0L);
  if (tmp != 0L) {
    return (tx_fifo);
  } else {
  }
  tmp___1 = il_get_debug_level(il);
  if ((tmp___1 & 67108864U) != 0U) {
    tmp___0 = preempt_count();
    dev_err((struct device const *)(& ((il->hw)->wiphy)->dev), "%c %s %s on ra = %pM tid = %d\n",
            ((unsigned long )tmp___0 & 2096896UL) != 0UL ? 73 : 85, "il4965_tx_agg_start",
            "il4965_tx_agg_start", (u8 *)(& sta->addr), (int )tid);
  } else {
  }
  sta_id = il_sta_id(sta);
  if (sta_id == 255) {
    dev_err((struct device const *)(& (il->pci_dev)->dev), "Start AGG on invalid station\n");
    return (-6);
  } else {
  }
  tmp___2 = ldv__builtin_expect((unsigned int )tid > 8U, 0L);
  if (tmp___2 != 0L) {
    return (-22);
  } else {
  }
  if ((unsigned int )il->stations[sta_id].tid[(int )tid].agg.state != 0U) {
    dev_err((struct device const *)(& (il->pci_dev)->dev), "Start AGG when state is not IL_AGG_OFF !\n");
    return (-6);
  } else {
  }
  txq_id = il4965_txq_ctx_activate_free(il);
  if (txq_id == -1) {
    dev_err((struct device const *)(& (il->pci_dev)->dev), "No free aggregation queue available\n");
    return (-6);
  } else {
  }
  ldv_spin_lock();
  tid_data = (struct il_tid_data *)(& il->stations[sta_id].tid) + (unsigned long )tid;
  *ssn = (int )tid_data->seq_number >> 4;
  tid_data->agg.txq_id = (u16 )txq_id;
  tmp___3 = il4965_get_ac_from_tid((int )tid);
  il_set_swq_id(il->txq + (unsigned long )txq_id, (int )((u8 )tmp___3), (int )((u8 )txq_id));
  spin_unlock_irqrestore(& il->sta_lock, flags);
  ret = il4965_txq_agg_enable(il, txq_id, tx_fifo, sta_id, (int )tid, (int )*ssn);
  if (ret != 0) {
    return (ret);
  } else {
  }
  ldv_spin_lock();
  tid_data = (struct il_tid_data *)(& il->stations[sta_id].tid) + (unsigned long )tid;
  if ((unsigned int )tid_data->tfds_in_queue == 0U) {
    tmp___5 = il_get_debug_level(il);
    if ((tmp___5 & 67108864U) != 0U) {
      tmp___4 = preempt_count();
      dev_err((struct device const *)(& ((il->hw)->wiphy)->dev), "%c %s HW queue is empty\n",
              ((unsigned long )tmp___4 & 2096896UL) != 0UL ? 73 : 85, "il4965_tx_agg_start");
    } else {
    }
    tid_data->agg.state = 1U;
    ieee80211_start_tx_ba_cb_irqsafe(vif, (u8 const *)(& sta->addr), (int )tid);
  } else {
    tmp___7 = il_get_debug_level(il);
    if ((tmp___7 & 67108864U) != 0U) {
      tmp___6 = preempt_count();
      dev_err((struct device const *)(& ((il->hw)->wiphy)->dev), "%c %s HW queue is NOT empty: %d packets in HW queue\n",
              ((unsigned long )tmp___6 & 2096896UL) != 0UL ? 73 : 85, "il4965_tx_agg_start",
              (int )tid_data->tfds_in_queue);
    } else {
    }
    tid_data->agg.state = 2U;
  }
  spin_unlock_irqrestore(& il->sta_lock, flags);
  return (ret);
}
}
static int il4965_txq_agg_disable(struct il_priv *il , u16 txq_id , u16 ssn_idx ,
                                  u8 tx_fifo )
{
  {
  if ((unsigned int )txq_id <= 6U || (il->cfg)->num_of_ampdu_queues + 7 <= (int )txq_id) {
    dev_warn((struct device const *)(& (il->pci_dev)->dev), "queue number out of range: %d, must be %d to %d\n",
             (int )txq_id, 7, (il->cfg)->num_of_ampdu_queues + 6);
    return (-22);
  } else {
  }
  il4965_tx_queue_stop_scheduler(il, (int )txq_id);
  il_clear_bits_prph(il, 10497232U, (u32 )(1 << (int )txq_id));
  (il->txq + (unsigned long )txq_id)->q.read_ptr = (int )ssn_idx & 255;
  (il->txq + (unsigned long )txq_id)->q.write_ptr = (int )ssn_idx & 255;
  il4965_set_wr_ptrs(il, (int )txq_id, (u32 )ssn_idx);
  il_clear_bits_prph(il, 10497252U, (u32 )(1 << (int )txq_id));
  il_txq_ctx_deactivate(il, (int )txq_id);
  il4965_tx_queue_set_status(il, il->txq + (unsigned long )txq_id, (int )tx_fifo,
                             0);
  return (0);
}
}
int il4965_tx_agg_stop(struct il_priv *il , struct ieee80211_vif *vif , struct ieee80211_sta *sta ,
                       u16 tid )
{
  int tx_fifo_id ;
  int txq_id ;
  int sta_id ;
  int ssn ;
  struct il_tid_data *tid_data ;
  int write_ptr ;
  int read_ptr ;
  unsigned long flags ;
  long tmp ;
  int tmp___0 ;
  u32 tmp___1 ;
  int tmp___2 ;
  u32 tmp___3 ;
  int tmp___4 ;
  u32 tmp___5 ;
  {
  tx_fifo_id = il4965_get_fifo_from_tid((int )tid);
  tmp = ldv__builtin_expect(tx_fifo_id < 0, 0L);
  if (tmp != 0L) {
    return (tx_fifo_id);
  } else {
  }
  sta_id = il_sta_id(sta);
  if (sta_id == 255) {
    dev_err((struct device const *)(& (il->pci_dev)->dev), "Invalid station for AGG tid %d\n",
            (int )tid);
    return (-6);
  } else {
  }
  ldv_spin_lock();
  tid_data = (struct il_tid_data *)(& il->stations[sta_id].tid) + (unsigned long )tid;
  ssn = (int )tid_data->seq_number >> 4;
  txq_id = (int )tid_data->agg.txq_id;
  switch ((int )il->stations[sta_id].tid[(int )tid].agg.state) {
  case 2:
  tmp___1 = il_get_debug_level(il);
  if ((tmp___1 & 67108864U) != 0U) {
    tmp___0 = preempt_count();
    dev_err((struct device const *)(& ((il->hw)->wiphy)->dev), "%c %s AGG stop before setup done\n",
            ((unsigned long )tmp___0 & 2096896UL) != 0UL ? 73 : 85, "il4965_tx_agg_stop");
  } else {
  }
  goto turn_off;
  case 1: ;
  goto ldv_55060;
  default:
  dev_warn((struct device const *)(& (il->pci_dev)->dev), "Stopping AGG while state not ON or starting\n");
  }
  ldv_55060:
  write_ptr = (il->txq + (unsigned long )txq_id)->q.write_ptr;
  read_ptr = (il->txq + (unsigned long )txq_id)->q.read_ptr;
  if (write_ptr != read_ptr) {
    tmp___3 = il_get_debug_level(il);
    if ((tmp___3 & 67108864U) != 0U) {
      tmp___2 = preempt_count();
      dev_err((struct device const *)(& ((il->hw)->wiphy)->dev), "%c %s Stopping a non empty AGG HW QUEUE\n",
              ((unsigned long )tmp___2 & 2096896UL) != 0UL ? 73 : 85, "il4965_tx_agg_stop");
    } else {
    }
    il->stations[sta_id].tid[(int )tid].agg.state = 3U;
    spin_unlock_irqrestore(& il->sta_lock, flags);
    return (0);
  } else {
  }
  tmp___5 = il_get_debug_level(il);
  if ((tmp___5 & 67108864U) != 0U) {
    tmp___4 = preempt_count();
    dev_err((struct device const *)(& ((il->hw)->wiphy)->dev), "%c %s HW queue is empty\n",
            ((unsigned long )tmp___4 & 2096896UL) != 0UL ? 73 : 85, "il4965_tx_agg_stop");
  } else {
  }
  turn_off:
  il->stations[sta_id].tid[(int )tid].agg.state = 0U;
  spin_unlock(& il->sta_lock);
  spin_lock(& il->lock);
  il4965_txq_agg_disable(il, (int )((u16 )txq_id), (int )((u16 )ssn), (int )((u8 )tx_fifo_id));
  spin_unlock_irqrestore(& il->lock, flags);
  ieee80211_stop_tx_ba_cb_irqsafe(vif, (u8 const *)(& sta->addr), (int )tid);
  return (0);
}
}
int il4965_txq_check_empty(struct il_priv *il , int sta_id , u8 tid , int txq_id )
{
  struct il_queue *q ;
  u8 *addr ;
  struct il_tid_data *tid_data ;
  int __ret_warn_on ;
  int tmp ;
  int tmp___0 ;
  long tmp___1 ;
  u16 ssn ;
  int tx_fifo ;
  int tmp___2 ;
  int tmp___3 ;
  u32 tmp___4 ;
  int tmp___5 ;
  u32 tmp___6 ;
  {
  q = & (il->txq + (unsigned long )txq_id)->q;
  addr = (u8 *)(& il->stations[sta_id].sta.sta.addr);
  tid_data = (struct il_tid_data *)(& il->stations[sta_id].tid) + (unsigned long )tid;
  if (debug_locks != 0) {
    tmp = lock_is_held(& il->sta_lock.__annonCompField18.__annonCompField17.dep_map);
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
    warn_slowpath_null("/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/11700/dscv_tempdir/dscv/ri/43_2a/drivers/net/wireless/iwlegacy/4965-mac.c",
                       2413);
  } else {
  }
  ldv__builtin_expect(__ret_warn_on != 0, 0L);
  switch ((int )il->stations[sta_id].tid[(int )tid].agg.state) {
  case 3: ;
  if ((int )tid_data->agg.txq_id == txq_id && q->read_ptr == q->write_ptr) {
    ssn = (int )tid_data->seq_number >> 4;
    tmp___2 = il4965_get_fifo_from_tid((int )tid);
    tx_fifo = tmp___2;
    tmp___4 = il_get_debug_level(il);
    if ((tmp___4 & 67108864U) != 0U) {
      tmp___3 = preempt_count();
      dev_err((struct device const *)(& ((il->hw)->wiphy)->dev), "%c %s HW queue empty: continue DELBA flow\n",
              ((unsigned long )tmp___3 & 2096896UL) != 0UL ? 73 : 85, "il4965_txq_check_empty");
    } else {
    }
    il4965_txq_agg_disable(il, (int )((u16 )txq_id), (int )ssn, (int )((u8 )tx_fifo));
    tid_data->agg.state = 0U;
    ieee80211_stop_tx_ba_cb_irqsafe(il->vif, (u8 const *)addr, (int )tid);
  } else {
  }
  goto ldv_55077;
  case 2: ;
  if ((unsigned int )tid_data->tfds_in_queue == 0U) {
    tmp___6 = il_get_debug_level(il);
    if ((tmp___6 & 67108864U) != 0U) {
      tmp___5 = preempt_count();
      dev_err((struct device const *)(& ((il->hw)->wiphy)->dev), "%c %s HW queue empty: continue ADDBA flow\n",
              ((unsigned long )tmp___5 & 2096896UL) != 0UL ? 73 : 85, "il4965_txq_check_empty");
    } else {
    }
    tid_data->agg.state = 1U;
    ieee80211_start_tx_ba_cb_irqsafe(il->vif, (u8 const *)addr, (int )tid);
  } else {
  }
  goto ldv_55077;
  }
  ldv_55077: ;
  return (0);
}
}
static void il4965_non_agg_tx_status(struct il_priv *il , u8 const *addr1 )
{
  struct ieee80211_sta *sta ;
  struct il_station_priv *sta_priv ;
  int tmp ;
  {
  rcu_read_lock();
  sta = ieee80211_find_sta(il->vif, addr1);
  if ((unsigned long )sta != (unsigned long )((struct ieee80211_sta *)0)) {
    sta_priv = (struct il_station_priv *)(& sta->drv_priv);
    if ((int )sta_priv->client) {
      tmp = atomic_sub_return(1, & sta_priv->pending_frames);
      if (tmp == 0) {
        ieee80211_sta_block_awake(il->hw, sta, 0);
      } else {
      }
    } else {
    }
  } else {
  }
  rcu_read_unlock();
  return;
}
}
static void il4965_tx_status(struct il_priv *il , struct sk_buff *skb , bool is_agg )
{
  struct ieee80211_hdr *hdr ;
  {
  hdr = (struct ieee80211_hdr *)skb->data;
  if (! is_agg) {
    il4965_non_agg_tx_status(il, (u8 const *)(& hdr->addr1));
  } else {
  }
  ieee80211_tx_status_irqsafe(il->hw, skb);
  return;
}
}
int il4965_tx_queue_reclaim(struct il_priv *il , int txq_id , int idx )
{
  struct il_tx_queue *txq ;
  struct il_queue *q ;
  int nfreed ;
  struct ieee80211_hdr *hdr ;
  struct sk_buff *skb ;
  int tmp ;
  bool __warned ;
  int __ret_warn_once ;
  int __ret_warn_on ;
  long tmp___0 ;
  long tmp___1 ;
  long tmp___2 ;
  long tmp___3 ;
  int tmp___4 ;
  {
  txq = il->txq + (unsigned long )txq_id;
  q = & txq->q;
  nfreed = 0;
  if (q->n_bd <= idx) {
    dev_err((struct device const *)(& (il->pci_dev)->dev), "Read idx for DMA queue txq id (%d), idx %d, is out of range [0-%d] %d %d.\n",
            txq_id, idx, q->n_bd, q->write_ptr, q->read_ptr);
    return (0);
  } else {
    tmp = il_queue_used((struct il_queue const *)q, idx);
    if (tmp == 0) {
      dev_err((struct device const *)(& (il->pci_dev)->dev), "Read idx for DMA queue txq id (%d), idx %d, is out of range [0-%d] %d %d.\n",
              txq_id, idx, q->n_bd, q->write_ptr, q->read_ptr);
      return (0);
    } else {
    }
  }
  idx = il_queue_inc_wrap(idx, q->n_bd);
  goto ldv_55108;
  ldv_55107:
  skb = *(txq->skbs + (unsigned long )txq->q.read_ptr);
  __ret_warn_once = (unsigned long )skb == (unsigned long )((struct sk_buff *)0);
  tmp___2 = ldv__builtin_expect(__ret_warn_once != 0, 0L);
  if (tmp___2 != 0L) {
    __ret_warn_on = ! __warned;
    tmp___0 = ldv__builtin_expect(__ret_warn_on != 0, 0L);
    if (tmp___0 != 0L) {
      warn_slowpath_null("/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/11700/dscv_tempdir/dscv/ri/43_2a/drivers/net/wireless/iwlegacy/4965-mac.c",
                         2492);
    } else {
    }
    tmp___1 = ldv__builtin_expect(__ret_warn_on != 0, 0L);
    if (tmp___1 != 0L) {
      __warned = 1;
    } else {
    }
  } else {
  }
  tmp___3 = ldv__builtin_expect(__ret_warn_once != 0, 0L);
  if (tmp___3 != 0L) {
    goto ldv_55106;
  } else {
  }
  hdr = (struct ieee80211_hdr *)skb->data;
  tmp___4 = ieee80211_is_data_qos((int )hdr->frame_control);
  if (tmp___4 != 0) {
    nfreed = nfreed + 1;
  } else {
  }
  il4965_tx_status(il, skb, txq_id > 9);
  *(txq->skbs + (unsigned long )txq->q.read_ptr) = (struct sk_buff *)0;
  (*((il->ops)->txq_free_tfd))(il, txq);
  ldv_55106:
  q->read_ptr = il_queue_inc_wrap(q->read_ptr, q->n_bd);
  ldv_55108: ;
  if (q->read_ptr != idx) {
    goto ldv_55107;
  } else {
  }
  return (nfreed);
}
}
static int il4965_tx_status_reply_compressed_ba(struct il_priv *il , struct il_ht_agg *agg ,
                                                struct il_compressed_ba_resp *ba_resp )
{
  int i ;
  int sh ;
  int ack ;
  u16 seq_ctl ;
  u16 scd_flow ;
  int successes ;
  struct ieee80211_tx_info *info ;
  u64 bitmap ;
  u64 sent_bitmap ;
  long tmp ;
  long tmp___0 ;
  int tmp___1 ;
  u32 tmp___2 ;
  int tmp___3 ;
  u32 tmp___4 ;
  int tmp___5 ;
  u32 tmp___6 ;
  int tmp___7 ;
  u32 tmp___8 ;
  {
  seq_ctl = ba_resp->seq_ctl;
  scd_flow = ba_resp->scd_flow;
  successes = 0;
  tmp___0 = ldv__builtin_expect((unsigned int )agg->wait_for_ba == 0U, 0L);
  if (tmp___0 != 0L) {
    tmp = ldv__builtin_expect(ba_resp->bitmap != 0ULL, 0L);
    if (tmp != 0L) {
      dev_err((struct device const *)(& (il->pci_dev)->dev), "Received BA when not expected\n");
    } else {
    }
    return (-22);
  } else {
  }
  agg->wait_for_ba = 0U;
  tmp___2 = il_get_debug_level(il);
  if ((tmp___2 & 1073741824U) != 0U) {
    tmp___1 = preempt_count();
    dev_err((struct device const *)(& ((il->hw)->wiphy)->dev), "%c %s BA %d %d\n",
            ((unsigned long )tmp___1 & 2096896UL) != 0UL ? 73 : 85, "il4965_tx_status_reply_compressed_ba",
            (int )agg->start_idx, (int )ba_resp->seq_ctl);
  } else {
  }
  sh = (int )agg->start_idx - (((int )seq_ctl >> 4) & 255);
  if (sh < 0) {
    sh = sh + 256;
  } else {
  }
  if ((int )agg->frame_count > 64 - sh) {
    tmp___4 = il_get_debug_level(il);
    if ((tmp___4 & 1073741824U) != 0U) {
      tmp___3 = preempt_count();
      dev_err((struct device const *)(& ((il->hw)->wiphy)->dev), "%c %s more frames than bitmap size",
              ((unsigned long )tmp___3 & 2096896UL) != 0UL ? 73 : 85, "il4965_tx_status_reply_compressed_ba");
    } else {
    }
    return (-1);
  } else {
  }
  bitmap = ba_resp->bitmap >> sh;
  sent_bitmap = agg->bitmap & bitmap;
  i = 0;
  goto ldv_55126;
  ldv_55125:
  ack = (int )sent_bitmap & 1;
  successes = successes + ack;
  tmp___6 = il_get_debug_level(il);
  if ((tmp___6 & 1073741824U) != 0U) {
    tmp___5 = preempt_count();
    dev_err((struct device const *)(& ((il->hw)->wiphy)->dev), "%c %s %s ON i=%d idx=%d raw=%d\n",
            ((unsigned long )tmp___5 & 2096896UL) != 0UL ? 73 : 85, "il4965_tx_status_reply_compressed_ba",
            ack != 0 ? (char *)"ACK" : (char *)"NACK", i, ((int )agg->start_idx + i) & 255,
            (int )agg->start_idx + i);
  } else {
  }
  sent_bitmap = sent_bitmap >> 1;
  i = i + 1;
  ldv_55126: ;
  if (sent_bitmap != 0ULL) {
    goto ldv_55125;
  } else {
  }
  tmp___8 = il_get_debug_level(il);
  if ((tmp___8 & 1073741824U) != 0U) {
    tmp___7 = preempt_count();
    dev_err((struct device const *)(& ((il->hw)->wiphy)->dev), "%c %s Bitmap %llx\n",
            ((unsigned long )tmp___7 & 2096896UL) != 0UL ? 73 : 85, "il4965_tx_status_reply_compressed_ba",
            bitmap);
  } else {
  }
  info = IEEE80211_SKB_CB(*((il->txq + (unsigned long )scd_flow)->skbs + (unsigned long )agg->start_idx));
  memset((void *)(& info->__annonCompField100.status), 0, 40UL);
  info->flags = info->flags | 512U;
  info->flags = info->flags | 1024U;
  info->__annonCompField100.status.ampdu_ack_len = (u8 )successes;
  info->__annonCompField100.status.ampdu_len = (u8 )agg->frame_count;
  il4965_hwrate_to_tx_control(il, agg->rate_n_flags, info);
  return (0);
}
}
__inline static bool il4965_is_tx_success(u32 status )
{
  {
  status = status & 255U;
  return ((bool )(status == 1U || status == 2U));
}
}
static u8 il4965_find_station(struct il_priv *il , u8 const *addr )
{
  int i ;
  int start ;
  int ret ;
  unsigned long flags ;
  bool tmp ;
  bool tmp___0 ;
  int tmp___1 ;
  u32 tmp___2 ;
  {
  start = 0;
  ret = 255;
  if ((unsigned int )il->iw_mode == 1U) {
    start = 2;
  } else {
  }
  tmp = is_broadcast_ether_addr(addr);
  if ((int )tmp) {
    return (il->hw_params.bcast_id);
  } else {
  }
  ldv_spin_lock();
  i = start;
  goto ldv_55141;
  ldv_55140: ;
  if ((unsigned int )il->stations[i].used != 0U) {
    tmp___0 = ether_addr_equal((u8 const *)(& il->stations[i].sta.sta.addr), addr);
    if ((int )tmp___0) {
      ret = i;
      goto out;
    } else {
    }
  } else {
  }
  i = i + 1;
  ldv_55141: ;
  if ((int )il->hw_params.max_stations > i) {
    goto ldv_55140;
  } else {
  }
  tmp___2 = il_get_debug_level(il);
  if ((tmp___2 & 4096U) != 0U) {
    tmp___1 = preempt_count();
    dev_err((struct device const *)(& ((il->hw)->wiphy)->dev), "%c %s can not find STA %pM total %d\n",
            ((unsigned long )tmp___1 & 2096896UL) != 0UL ? 73 : 85, "il4965_find_station",
            addr, il->num_stations);
  } else {
  }
  out: ;
  if (ret != 255 && (((unsigned long )il->stations[ret].used & 2UL) == 0UL || (((unsigned long )il->stations[ret].used & 2UL) != 0UL && ((unsigned long )il->stations[ret].used & 4UL) != 0UL))) {
    dev_err((struct device const *)(& (il->pci_dev)->dev), "Requested station info for sta %d before ready.\n",
            ret);
    ret = 255;
  } else {
  }
  spin_unlock_irqrestore(& il->sta_lock, flags);
  return ((u8 )ret);
}
}
static int il4965_get_ra_sta_id(struct il_priv *il , struct ieee80211_hdr *hdr )
{
  u8 *da ;
  u8 *tmp ;
  u8 tmp___0 ;
  {
  if ((unsigned int )il->iw_mode == 2U) {
    return (0);
  } else {
    tmp = ieee80211_get_DA(hdr);
    da = tmp;
    tmp___0 = il4965_find_station(il, (u8 const *)da);
    return ((int )tmp___0);
  }
}
}
__inline static u32 il4965_get_scd_ssn(struct il4965_tx_resp *tx_resp )
{
  __u32 tmp ;
  {
  tmp = __le32_to_cpup((__le32 const *)(& tx_resp->u.status) + (unsigned long )tx_resp->frame_count);
  return (tmp & 4095U);
}
}
__inline static u32 il4965_tx_status_to_mac80211(u32 status )
{
  {
  status = status & 255U;
  switch (status) {
  case 1U: ;
  case 2U: ;
  return (512U);
  case 136U: ;
  return (256U);
  default: ;
  return (0U);
  }
}
}
static int il4965_tx_status_reply_tx(struct il_priv *il , struct il_ht_agg *agg ,
                                     struct il4965_tx_resp *tx_resp , int txq_id ,
                                     u16 start_idx )
{
  u16 status ;
  struct agg_tx_status *frame_status ;
  struct ieee80211_tx_info *info ;
  struct ieee80211_hdr *hdr ;
  u32 rate_n_flags ;
  int i ;
  int sh ;
  int idx ;
  u16 seq ;
  int tmp ;
  u32 tmp___0 ;
  int tmp___1 ;
  u32 tmp___2 ;
  u32 tmp___3 ;
  int tmp___4 ;
  u32 tmp___5 ;
  int tmp___6 ;
  u32 tmp___7 ;
  u64 bitmap ;
  int start ;
  struct sk_buff *skb ;
  u16 sc ;
  int tmp___8 ;
  u32 tmp___9 ;
  bool __warned ;
  int __ret_warn_once ;
  int __ret_warn_on ;
  long tmp___10 ;
  long tmp___11 ;
  long tmp___12 ;
  long tmp___13 ;
  int tmp___14 ;
  u32 tmp___15 ;
  int tmp___16 ;
  u32 tmp___17 ;
  int tmp___18 ;
  u32 tmp___19 ;
  {
  frame_status = (struct agg_tx_status *)(& tx_resp->u.agg_status);
  info = (struct ieee80211_tx_info *)0;
  hdr = (struct ieee80211_hdr *)0;
  rate_n_flags = tx_resp->rate_n_flags;
  if ((unsigned int )agg->wait_for_ba != 0U) {
    tmp___0 = il_get_debug_level(il);
    if ((tmp___0 & 1073741824U) != 0U) {
      tmp = preempt_count();
      dev_err((struct device const *)(& ((il->hw)->wiphy)->dev), "%c %s got tx response w/o block-ack\n",
              ((unsigned long )tmp & 2096896UL) != 0UL ? 73 : 85, "il4965_tx_status_reply_tx");
    } else {
    }
  } else {
  }
  agg->frame_count = (u16 )tx_resp->frame_count;
  agg->start_idx = start_idx;
  agg->rate_n_flags = rate_n_flags;
  agg->bitmap = 0ULL;
  if ((unsigned int )agg->frame_count == 1U) {
    status = frame_status->status;
    idx = (int )start_idx;
    tmp___2 = il_get_debug_level(il);
    if ((tmp___2 & 1073741824U) != 0U) {
      tmp___1 = preempt_count();
      dev_err((struct device const *)(& ((il->hw)->wiphy)->dev), "%c %s FrameCnt = %d, StartIdx=%d idx=%d\n",
              ((unsigned long )tmp___1 & 2096896UL) != 0UL ? 73 : 85, "il4965_tx_status_reply_tx",
              (int )agg->frame_count, (int )agg->start_idx, idx);
    } else {
    }
    info = IEEE80211_SKB_CB(*((il->txq + (unsigned long )txq_id)->skbs + (unsigned long )idx));
    info->__annonCompField100.status.rates[0].count = (unsigned char )((unsigned int )tx_resp->failure_frame + 1U);
    info->flags = info->flags & 4294967231U;
    tmp___3 = il4965_tx_status_to_mac80211((u32 )status);
    info->flags = info->flags | tmp___3;
    il4965_hwrate_to_tx_control(il, rate_n_flags, info);
    tmp___5 = il_get_debug_level(il);
    if ((tmp___5 & 1073741824U) != 0U) {
      tmp___4 = preempt_count();
      dev_err((struct device const *)(& ((il->hw)->wiphy)->dev), "%c %s 1 Frame 0x%x failure :%d\n",
              ((unsigned long )tmp___4 & 2096896UL) != 0UL ? 73 : 85, "il4965_tx_status_reply_tx",
              (int )status & 255, (int )tx_resp->failure_frame);
    } else {
    }
    tmp___7 = il_get_debug_level(il);
    if ((tmp___7 & 1073741824U) != 0U) {
      tmp___6 = preempt_count();
      dev_err((struct device const *)(& ((il->hw)->wiphy)->dev), "%c %s Rate Info rate_n_flags=%x\n",
              ((unsigned long )tmp___6 & 2096896UL) != 0UL ? 73 : 85, "il4965_tx_status_reply_tx",
              rate_n_flags);
    } else {
    }
    agg->wait_for_ba = 0U;
  } else {
    bitmap = 0ULL;
    start = (int )agg->start_idx;
    i = 0;
    goto ldv_55187;
    ldv_55186:
    status = (frame_status + (unsigned long )i)->status;
    seq = (frame_status + (unsigned long )i)->sequence;
    idx = (int )seq & 255;
    txq_id = ((int )seq >> 8) & 31;
    if (((int )status & 12) != 0) {
      goto ldv_55180;
    } else {
    }
    tmp___9 = il_get_debug_level(il);
    if ((tmp___9 & 1073741824U) != 0U) {
      tmp___8 = preempt_count();
      dev_err((struct device const *)(& ((il->hw)->wiphy)->dev), "%c %s FrameCnt = %d, txq_id=%d idx=%d\n",
              ((unsigned long )tmp___8 & 2096896UL) != 0UL ? 73 : 85, "il4965_tx_status_reply_tx",
              (int )agg->frame_count, txq_id, idx);
    } else {
    }
    skb = *((il->txq + (unsigned long )txq_id)->skbs + (unsigned long )idx);
    __ret_warn_once = (unsigned long )skb == (unsigned long )((struct sk_buff *)0);
    tmp___12 = ldv__builtin_expect(__ret_warn_once != 0, 0L);
    if (tmp___12 != 0L) {
      __ret_warn_on = ! __warned;
      tmp___10 = ldv__builtin_expect(__ret_warn_on != 0, 0L);
      if (tmp___10 != 0L) {
        warn_slowpath_null("/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/11700/dscv_tempdir/dscv/ri/43_2a/drivers/net/wireless/iwlegacy/4965-mac.c",
                           2726);
      } else {
      }
      tmp___11 = ldv__builtin_expect(__ret_warn_on != 0, 0L);
      if (tmp___11 != 0L) {
        __warned = 1;
      } else {
      }
    } else {
    }
    tmp___13 = ldv__builtin_expect(__ret_warn_once != 0, 0L);
    if (tmp___13 != 0L) {
      return (-1);
    } else {
    }
    hdr = (struct ieee80211_hdr *)skb->data;
    sc = hdr->seq_ctrl;
    if ((((int )sc >> 4) & 255) != idx) {
      dev_err((struct device const *)(& (il->pci_dev)->dev), "BUG_ON idx doesn\'t match seq control idx=%d, seq_idx=%d, seq=%d\n",
              idx, (int )sc >> 4, (int )hdr->seq_ctrl);
      return (-1);
    } else {
    }
    tmp___15 = il_get_debug_level(il);
    if ((tmp___15 & 1073741824U) != 0U) {
      tmp___14 = preempt_count();
      dev_err((struct device const *)(& ((il->hw)->wiphy)->dev), "%c %s AGG Frame i=%d idx %d seq=%d\n",
              ((unsigned long )tmp___14 & 2096896UL) != 0UL ? 73 : 85, "il4965_tx_status_reply_tx",
              i, idx, (int )sc >> 4);
    } else {
    }
    sh = idx - start;
    if (sh > 64) {
      sh = (start - idx) + 255;
      bitmap = bitmap << sh;
      sh = 0;
      start = idx;
    } else
    if (sh < -64) {
      sh = (idx - start) + 255;
    } else
    if (sh < 0) {
      sh = start - idx;
      start = idx;
      bitmap = bitmap << sh;
      sh = 0;
    } else {
    }
    bitmap = (1ULL << sh) | bitmap;
    tmp___17 = il_get_debug_level(il);
    if ((tmp___17 & 1073741824U) != 0U) {
      tmp___16 = preempt_count();
      dev_err((struct device const *)(& ((il->hw)->wiphy)->dev), "%c %s start=%d bitmap=0x%llx\n",
              ((unsigned long )tmp___16 & 2096896UL) != 0UL ? 73 : 85, "il4965_tx_status_reply_tx",
              start, bitmap);
    } else {
    }
    ldv_55180:
    i = i + 1;
    ldv_55187: ;
    if ((int )agg->frame_count > i) {
      goto ldv_55186;
    } else {
    }
    agg->bitmap = bitmap;
    agg->start_idx = (u16 )start;
    tmp___19 = il_get_debug_level(il);
    if ((tmp___19 & 1073741824U) != 0U) {
      tmp___18 = preempt_count();
      dev_err((struct device const *)(& ((il->hw)->wiphy)->dev), "%c %s Frames %d start_idx=%d bitmap=0x%llx\n",
              ((unsigned long )tmp___18 & 2096896UL) != 0UL ? 73 : 85, "il4965_tx_status_reply_tx",
              (int )agg->frame_count, (int )agg->start_idx, agg->bitmap);
    } else {
    }
    if (bitmap != 0ULL) {
      agg->wait_for_ba = 1U;
    } else {
    }
  }
  return (0);
}
}
static void il4965_hdl_tx(struct il_priv *il , struct il_rx_buf *rxb )
{
  struct il_rx_pkt *pkt ;
  void *tmp ;
  u16 sequence ;
  int txq_id ;
  int idx ;
  struct il_tx_queue *txq ;
  struct sk_buff *skb ;
  struct ieee80211_hdr *hdr ;
  struct ieee80211_tx_info *info ;
  struct il4965_tx_resp *tx_resp ;
  u32 status ;
  int tid ;
  int sta_id ;
  int freed ;
  u8 *qc ;
  unsigned long flags ;
  int tmp___0 ;
  int tmp___1 ;
  long tmp___2 ;
  int tmp___3 ;
  u32 tmp___4 ;
  long tmp___5 ;
  u32 scd_ssn ;
  u32 tmp___6 ;
  struct il_ht_agg *agg ;
  int __ret_warn_on ;
  long tmp___7 ;
  bool tmp___8 ;
  int tmp___9 ;
  int tmp___10 ;
  u32 tmp___11 ;
  int tmp___12 ;
  u32 tmp___13 ;
  char const *tmp___14 ;
  int tmp___15 ;
  u32 tmp___16 ;
  int tmp___17 ;
  u32 tmp___18 ;
  long tmp___19 ;
  int tmp___20 ;
  long tmp___21 ;
  {
  tmp = lowmem_page_address((struct page const *)rxb->page);
  pkt = (struct il_rx_pkt *)tmp;
  sequence = pkt->hdr.sequence;
  txq_id = ((int )sequence >> 8) & 31;
  idx = (int )sequence & 255;
  txq = il->txq + (unsigned long )txq_id;
  tx_resp = (struct il4965_tx_resp *)(& pkt->u.raw);
  status = tx_resp->u.status;
  tid = tid;
  qc = (u8 *)0U;
  if (txq->q.n_bd <= idx) {
    dev_err((struct device const *)(& (il->pci_dev)->dev), "Read idx for DMA queue txq_id (%d) idx %d is out of range [0-%d] %d %d\n",
            txq_id, idx, txq->q.n_bd, txq->q.write_ptr, txq->q.read_ptr);
    return;
  } else {
    tmp___0 = il_queue_used((struct il_queue const *)(& txq->q), idx);
    if (tmp___0 == 0) {
      dev_err((struct device const *)(& (il->pci_dev)->dev), "Read idx for DMA queue txq_id (%d) idx %d is out of range [0-%d] %d %d\n",
              txq_id, idx, txq->q.n_bd, txq->q.write_ptr, txq->q.read_ptr);
      return;
    } else {
    }
  }
  txq->time_stamp = jiffies;
  skb = *(txq->skbs + (unsigned long )txq->q.read_ptr);
  info = IEEE80211_SKB_CB(skb);
  memset((void *)(& info->__annonCompField100.status), 0, 40UL);
  hdr = (struct ieee80211_hdr *)skb->data;
  tmp___1 = ieee80211_is_data_qos((int )hdr->frame_control);
  if (tmp___1 != 0) {
    qc = ieee80211_get_qos_ctl(hdr);
    tid = (int )*qc & 15;
  } else {
  }
  sta_id = il4965_get_ra_sta_id(il, hdr);
  if ((unsigned int )txq->sched_retry != 0U) {
    tmp___2 = ldv__builtin_expect(sta_id == 255, 0L);
    if (tmp___2 != 0L) {
      dev_err((struct device const *)(& (il->pci_dev)->dev), "Station not known\n");
      return;
    } else {
    }
  } else {
  }
  tmp___5 = ldv__builtin_expect((status & 255U) == 144U, 0L);
  if (tmp___5 != 0L && (unsigned int )il->iw_mode == 2U) {
    il_stop_queues_by_reason(il, 0);
    tmp___4 = il_get_debug_level(il);
    if ((int )tmp___4 & 1) {
      tmp___3 = preempt_count();
      dev_err((struct device const *)(& ((il->hw)->wiphy)->dev), "%c %s Stopped queues - RX waiting on passive channel\n",
              ((unsigned long )tmp___3 & 2096896UL) != 0UL ? 73 : 85, "il4965_hdl_tx");
    } else {
    }
  } else {
  }
  ldv_spin_lock();
  if ((unsigned int )txq->sched_retry != 0U) {
    tmp___6 = il4965_get_scd_ssn(tx_resp);
    scd_ssn = tmp___6;
    agg = (struct il_ht_agg *)0;
    __ret_warn_on = (unsigned long )qc == (unsigned long )((u8 *)0U);
    tmp___7 = ldv__builtin_expect(__ret_warn_on != 0, 0L);
    if (tmp___7 != 0L) {
      warn_slowpath_null("/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/11700/dscv_tempdir/dscv/ri/43_2a/drivers/net/wireless/iwlegacy/4965-mac.c",
                         2836);
    } else {
    }
    ldv__builtin_expect(__ret_warn_on != 0, 0L);
    agg = & il->stations[sta_id].tid[tid].agg;
    il4965_tx_status_reply_tx(il, agg, tx_resp, txq_id, (int )((u16 )idx));
    if ((unsigned int )tx_resp->frame_count == 1U) {
      tmp___8 = il4965_is_tx_success(status);
      if (tmp___8) {
        tmp___9 = 0;
      } else {
        tmp___9 = 1;
      }
      if (tmp___9) {
        info->flags = info->flags | 2048U;
      } else {
      }
    } else {
    }
    if ((unsigned int )txq->q.read_ptr != (scd_ssn & 255U)) {
      idx = il_queue_dec_wrap((int )scd_ssn & 255, txq->q.n_bd);
      tmp___11 = il_get_debug_level(il);
      if ((tmp___11 & 1073741824U) != 0U) {
        tmp___10 = preempt_count();
        dev_err((struct device const *)(& ((il->hw)->wiphy)->dev), "%c %s Retry scheduler reclaim scd_ssn %d idx %d\n",
                ((unsigned long )tmp___10 & 2096896UL) != 0UL ? 73 : 85, "il4965_hdl_tx",
                scd_ssn, idx);
      } else {
      }
      freed = il4965_tx_queue_reclaim(il, txq_id, idx);
      if ((unsigned long )qc != (unsigned long )((u8 *)0U)) {
        il4965_free_tfds_in_queue(il, sta_id, tid, freed);
      } else {
      }
      if ((unsigned int )il->mac80211_registered != 0U) {
        tmp___12 = il_queue_space((struct il_queue const *)(& txq->q));
        if (tmp___12 > txq->q.low_mark) {
          if ((unsigned int )agg->state != 3U) {
            il_wake_queue(il, txq);
          } else {
          }
        } else {
        }
      } else {
      }
    } else {
    }
  } else {
    info->__annonCompField100.status.rates[0].count = (unsigned char )((unsigned int )tx_resp->failure_frame + 1U);
    tmp___13 = il4965_tx_status_to_mac80211(status);
    info->flags = info->flags | tmp___13;
    il4965_hwrate_to_tx_control(il, tx_resp->rate_n_flags, info);
    tmp___16 = il_get_debug_level(il);
    if ((tmp___16 & 1073741824U) != 0U) {
      tmp___14 = il4965_get_tx_fail_reason(status);
      tmp___15 = preempt_count();
      dev_err((struct device const *)(& ((il->hw)->wiphy)->dev), "%c %s TXQ %d status %s (0x%08x) rate_n_flags 0x%x retries %d\n",
              ((unsigned long )tmp___15 & 2096896UL) != 0UL ? 73 : 85, "il4965_hdl_tx",
              txq_id, tmp___14, status, tx_resp->rate_n_flags, (int )tx_resp->failure_frame);
    } else {
    }
    freed = il4965_tx_queue_reclaim(il, txq_id, idx);
    if ((unsigned long )qc != (unsigned long )((u8 *)0U)) {
      tmp___19 = ldv__builtin_expect(sta_id != 255, 1L);
      if (tmp___19 != 0L) {
        il4965_free_tfds_in_queue(il, sta_id, tid, freed);
      } else {
        goto _L;
      }
    } else
    _L:
    if (sta_id == 255) {
      tmp___18 = il_get_debug_level(il);
      if ((tmp___18 & 1073741824U) != 0U) {
        tmp___17 = preempt_count();
        dev_err((struct device const *)(& ((il->hw)->wiphy)->dev), "%c %s Station not known\n",
                ((unsigned long )tmp___17 & 2096896UL) != 0UL ? 73 : 85, "il4965_hdl_tx");
      } else {
      }
    } else {
    }
    if ((unsigned int )il->mac80211_registered != 0U) {
      tmp___20 = il_queue_space((struct il_queue const *)(& txq->q));
      if (tmp___20 > txq->q.low_mark) {
        il_wake_queue(il, txq);
      } else {
      }
    } else {
    }
  }
  if ((unsigned long )qc != (unsigned long )((u8 *)0U)) {
    tmp___21 = ldv__builtin_expect(sta_id != 255, 1L);
    if (tmp___21 != 0L) {
      il4965_txq_check_empty(il, sta_id, (int )((u8 )tid), txq_id);
    } else {
    }
  } else {
  }
  il4965_check_abort_status(il, (int )tx_resp->frame_count, status);
  spin_unlock_irqrestore(& il->sta_lock, flags);
  return;
}
}
void il4965_hwrate_to_tx_control(struct il_priv *il , u32 rate_n_flags , struct ieee80211_tx_info *info )
{
  struct ieee80211_tx_rate *r ;
  int tmp ;
  {
  r = (struct ieee80211_tx_rate *)(& info->__annonCompField100.status.rates);
  info->__annonCompField100.status.antenna = (u8 )((rate_n_flags & 114688U) >> 14);
  if ((rate_n_flags & 256U) != 0U) {
    r->flags = (unsigned short )((unsigned int )r->flags | 8U);
  } else {
  }
  if ((rate_n_flags & 1024U) != 0U) {
    r->flags = (unsigned short )((unsigned int )r->flags | 16U);
  } else {
  }
  if ((rate_n_flags & 2048U) != 0U) {
    r->flags = (unsigned short )((unsigned int )r->flags | 32U);
  } else {
  }
  if ((rate_n_flags & 4096U) != 0U) {
    r->flags = (unsigned short )((unsigned int )r->flags | 64U);
  } else {
  }
  if ((rate_n_flags & 8192U) != 0U) {
    r->flags = (unsigned short )((unsigned int )r->flags | 128U);
  } else {
  }
  tmp = il4965_hwrate_to_mac80211_idx(rate_n_flags, (enum ieee80211_band )info->band);
  r->idx = (s8 )tmp;
  return;
}
}
static void il4965_hdl_compressed_ba(struct il_priv *il , struct il_rx_buf *rxb )
{
  struct il_rx_pkt *pkt ;
  void *tmp ;
  struct il_compressed_ba_resp *ba_resp ;
  struct il_tx_queue *txq ;
  struct il_ht_agg *agg ;
  int idx ;
  int sta_id ;
  int tid ;
  unsigned long flags ;
  u16 scd_flow ;
  u16 ba_resp_scd_ssn ;
  int tmp___0 ;
  u32 tmp___1 ;
  long tmp___2 ;
  int tmp___3 ;
  u32 tmp___4 ;
  int tmp___5 ;
  u32 tmp___6 ;
  int tmp___7 ;
  u32 tmp___8 ;
  int freed ;
  int tmp___9 ;
  int tmp___10 ;
  {
  tmp = lowmem_page_address((struct page const *)rxb->page);
  pkt = (struct il_rx_pkt *)tmp;
  ba_resp = & pkt->u.compressed_ba;
  txq = (struct il_tx_queue *)0;
  scd_flow = ba_resp->scd_flow;
  ba_resp_scd_ssn = ba_resp->scd_ssn;
  if ((int )((unsigned short )il->hw_params.max_txq_num) <= (int )scd_flow) {
    dev_err((struct device const *)(& (il->pci_dev)->dev), "BUG_ON scd_flow is bigger than number of queues\n");
    return;
  } else {
  }
  txq = il->txq + (unsigned long )scd_flow;
  sta_id = (int )ba_resp->sta_id;
  tid = (int )ba_resp->tid;
  agg = & il->stations[sta_id].tid[tid].agg;
  tmp___2 = ldv__builtin_expect((int )agg->txq_id != (int )scd_flow, 0L);
  if (tmp___2 != 0L) {
    tmp___1 = il_get_debug_level(il);
    if ((tmp___1 & 1073741824U) != 0U) {
      tmp___0 = preempt_count();
      dev_err((struct device const *)(& ((il->hw)->wiphy)->dev), "%c %s BA scd_flow %d does not match txq_id %d\n",
              ((unsigned long )tmp___0 & 2096896UL) != 0UL ? 73 : 85, "il4965_hdl_compressed_ba",
              (int )scd_flow, (int )agg->txq_id);
    } else {
    }
    return;
  } else {
  }
  idx = il_queue_dec_wrap((int )ba_resp_scd_ssn & 255, txq->q.n_bd);
  ldv_spin_lock();
  tmp___4 = il_get_debug_level(il);
  if ((tmp___4 & 1073741824U) != 0U) {
    tmp___3 = preempt_count();
    dev_err((struct device const *)(& ((il->hw)->wiphy)->dev), "%c %s N_COMPRESSED_BA [%d] Received from %pM, sta_id = %d\n",
            ((unsigned long )tmp___3 & 2096896UL) != 0UL ? 73 : 85, "il4965_hdl_compressed_ba",
            (int )agg->wait_for_ba, (u8 *)(& ba_resp->sta_addr_lo32), (int )ba_resp->sta_id);
  } else {
  }
  tmp___6 = il_get_debug_level(il);
  if ((tmp___6 & 1073741824U) != 0U) {
    tmp___5 = preempt_count();
    dev_err((struct device const *)(& ((il->hw)->wiphy)->dev), "%c %s TID = %d, SeqCtl = %d, bitmap = 0x%llx,scd_flow = %d, scd_ssn = %d\n",
            ((unsigned long )tmp___5 & 2096896UL) != 0UL ? 73 : 85, "il4965_hdl_compressed_ba",
            (int )ba_resp->tid, (int )ba_resp->seq_ctl, ba_resp->bitmap, (int )ba_resp->scd_flow,
            (int )ba_resp->scd_ssn);
  } else {
  }
  tmp___8 = il_get_debug_level(il);
  if ((tmp___8 & 1073741824U) != 0U) {
    tmp___7 = preempt_count();
    dev_err((struct device const *)(& ((il->hw)->wiphy)->dev), "%c %s DAT start_idx = %d, bitmap = 0x%llx\n",
            ((unsigned long )tmp___7 & 2096896UL) != 0UL ? 73 : 85, "il4965_hdl_compressed_ba",
            (int )agg->start_idx, agg->bitmap);
  } else {
  }
  il4965_tx_status_reply_compressed_ba(il, agg, ba_resp);
  if (txq->q.read_ptr != ((int )ba_resp_scd_ssn & 255)) {
    tmp___9 = il4965_tx_queue_reclaim(il, (int )scd_flow, idx);
    freed = tmp___9;
    il4965_free_tfds_in_queue(il, sta_id, tid, freed);
    tmp___10 = il_queue_space((struct il_queue const *)(& txq->q));
    if ((tmp___10 > txq->q.low_mark && (unsigned int )il->mac80211_registered != 0U) && (unsigned int )agg->state != 3U) {
      il_wake_queue(il, txq);
    } else {
    }
    il4965_txq_check_empty(il, sta_id, (int )((u8 )tid), (int )scd_flow);
  } else {
  }
  spin_unlock_irqrestore(& il->sta_lock, flags);
  return;
}
}
char const *il4965_get_tx_fail_reason(u32 status )
{
  {
  switch (status & 255U) {
  case 1U: ;
  return ("SUCCESS");
  case 64U: ;
  return ("DELAY");
  case 65U: ;
  return ("FEW_BYTES");
  case 67U: ;
  return ("QUIET_PERIOD");
  case 68U: ;
  return ("CALC_TTAK");
  case 129U: ;
  return ("INTERNAL_CROSSED_RETRY");
  case 130U: ;
  return ("SHORT_LIMIT");
  case 131U: ;
  return ("LONG_LIMIT");
  case 132U: ;
  return ("FIFO_UNDERRUN");
  case 133U: ;
  return ("DRAIN_FLOW");
  case 134U: ;
  return ("RFKILL_FLUSH");
  case 135U: ;
  return ("LIFE_EXPIRE");
  case 136U: ;
  return ("DEST_PS");
  case 137U: ;
  return ("HOST_ABORTED");
  case 138U: ;
  return ("BT_RETRY");
  case 139U: ;
  return ("STA_INVALID");
  case 140U: ;
  return ("FRAG_DROPPED");
  case 141U: ;
  return ("TID_DISABLE");
  case 142U: ;
  return ("FIFO_FLUSHED");
  case 143U: ;
  return ("INSUFFICIENT_CF_POLL");
  case 144U: ;
  return ("PASSIVE_NO_RX");
  case 145U: ;
  return ("NO_BEACON_ON_RADAR");
  }
  return ("UNKNOWN");
}
}
static struct il_link_quality_cmd *il4965_sta_alloc_lq(struct il_priv *il , u8 sta_id )
{
  int i ;
  int r ;
  struct il_link_quality_cmd *link_cmd ;
  u32 rate_flags ;
  __le32 rate_n_flags ;
  void *tmp ;
  u8 tmp___0 ;
  u8 tmp___1 ;
  u8 tmp___2 ;
  {
  rate_flags = 0U;
  tmp = kmalloc(88UL, 208U);
  link_cmd = (struct il_link_quality_cmd *)tmp;
  if ((unsigned long )link_cmd == (unsigned long )((struct il_link_quality_cmd *)0)) {
    dev_err((struct device const *)(& (il->pci_dev)->dev), "Unable to allocate memory for LQ cmd.\n");
    return ((struct il_link_quality_cmd *)0);
  } else {
  }
  if ((unsigned int )il->band == 1U) {
    r = 4;
  } else {
    r = 0;
  }
  if (r >= 0 && r <= 3) {
    rate_flags = rate_flags | 512U;
  } else {
  }
  tmp___0 = il4965_first_antenna((int )il->hw_params.valid_tx_ant);
  rate_flags = (u32 )((int )tmp___0 << 14) | rate_flags;
  rate_n_flags = (u32 )il_rates[r].plcp | rate_flags;
  i = 0;
  goto ldv_55270;
  ldv_55269:
  link_cmd->rs_table[i].rate_n_flags = rate_n_flags;
  i = i + 1;
  ldv_55270: ;
  if (i <= 15) {
    goto ldv_55269;
  } else {
  }
  link_cmd->general_params.single_stream_ant_msk = il4965_first_antenna((int )il->hw_params.valid_tx_ant);
  tmp___1 = il4965_first_antenna((int )il->hw_params.valid_tx_ant);
  link_cmd->general_params.dual_stream_ant_msk = (u8 )((int )((signed char )il->hw_params.valid_tx_ant) & ~ ((int )((signed char )tmp___1)));
  if ((unsigned int )link_cmd->general_params.dual_stream_ant_msk == 0U) {
    link_cmd->general_params.dual_stream_ant_msk = 3U;
  } else {
    tmp___2 = il4965_num_of_ant((int )il->hw_params.valid_tx_ant);
    if ((unsigned int )tmp___2 == 2U) {
      link_cmd->general_params.dual_stream_ant_msk = il->hw_params.valid_tx_ant;
    } else {
    }
  }
  link_cmd->agg_params.agg_dis_start_th = 3U;
  link_cmd->agg_params.agg_time_limit = 4000U;
  link_cmd->sta_id = sta_id;
  return (link_cmd);
}
}
int il4965_add_bssid_station(struct il_priv *il , u8 const *addr , u8 *sta_id_r )
{
  int ret ;
  u8 sta_id ;
  struct il_link_quality_cmd *link_cmd ;
  unsigned long flags ;
  {
  if ((unsigned long )sta_id_r != (unsigned long )((u8 *)0U)) {
    *sta_id_r = 255U;
  } else {
  }
  ret = il_add_station_common(il, addr, 0, (struct ieee80211_sta *)0, & sta_id);
  if (ret != 0) {
    dev_err((struct device const *)(& (il->pci_dev)->dev), "Unable to add station %pM\n",
            addr);
    return (ret);
  } else {
  }
  if ((unsigned long )sta_id_r != (unsigned long )((u8 *)0U)) {
    *sta_id_r = sta_id;
  } else {
  }
  ldv_spin_lock();
  il->stations[(int )sta_id].used = (u8 )((unsigned int )il->stations[(int )sta_id].used | 8U);
  spin_unlock_irqrestore(& il->sta_lock, flags);
  link_cmd = il4965_sta_alloc_lq(il, (int )sta_id);
  if ((unsigned long )link_cmd == (unsigned long )((struct il_link_quality_cmd *)0)) {
    dev_err((struct device const *)(& (il->pci_dev)->dev), "Unable to initialize rate scaling for station %pM.\n",
            addr);
    return (-12);
  } else {
  }
  ret = il_send_lq_cmd(il, link_cmd, 0, 1);
  if (ret != 0) {
    dev_err((struct device const *)(& (il->pci_dev)->dev), "Link quality command failed (%d)\n",
            ret);
  } else {
  }
  ldv_spin_lock();
  il->stations[(int )sta_id].lq = link_cmd;
  spin_unlock_irqrestore(& il->sta_lock, flags);
  return (0);
}
}
static int il4965_static_wepkey_cmd(struct il_priv *il , bool send_if_empty )
{
  int i ;
  u8 buff[100U] ;
  struct il_wep_cmd *wep_cmd ;
  size_t cmd_size ;
  struct il_host_cmd cmd ;
  bool not_empty ;
  u8 key_size ;
  int tmp ;
  {
  wep_cmd = (struct il_wep_cmd *)(& buff);
  cmd_size = 4UL;
  cmd.data = (void const *)wep_cmd;
  cmd.reply_page = 0UL;
  cmd.callback = 0;
  cmd.flags = 0U;
  cmd.len = (unsigned short)0;
  cmd.id = 32U;
  not_empty = 0;
  __might_sleep("/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/11700/dscv_tempdir/dscv/ri/43_2a/drivers/net/wireless/iwlegacy/4965-mac.c",
                3154, 0);
  memset((void *)wep_cmd, 0, cmd_size + 96UL);
  i = 0;
  goto ldv_55293;
  ldv_55292:
  key_size = il->__annonCompField103._4965.wep_keys[i].key_size;
  wep_cmd->key[i].key_idx = (u8 )i;
  if ((unsigned int )key_size != 0U) {
    wep_cmd->key[i].key_offset = (u8 )i;
    not_empty = 1;
  } else {
    wep_cmd->key[i].key_offset = 255U;
  }
  wep_cmd->key[i].key_size = key_size;
  memcpy((void *)(& wep_cmd->key[i].key) + 3U, (void const *)(& il->__annonCompField103._4965.wep_keys[i].key),
           (size_t )key_size);
  i = i + 1;
  ldv_55293: ;
  if (i <= 3) {
    goto ldv_55292;
  } else {
  }
  wep_cmd->global_key_type = 1U;
  wep_cmd->num_keys = 4U;
  cmd_size = cmd_size + 96UL;
  cmd.len = (u16 )cmd_size;
  if ((int )not_empty || (int )send_if_empty) {
    tmp = il_send_cmd(il, & cmd);
    return (tmp);
  } else {
    return (0);
  }
}
}
int il4965_restore_default_wep_keys(struct il_priv *il )
{
  int __ret_warn_on ;
  int tmp ;
  int tmp___0 ;
  long tmp___1 ;
  int tmp___2 ;
  {
  if (debug_locks != 0) {
    tmp = lock_is_held(& il->mutex.dep_map);
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
    warn_slowpath_null("/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/11700/dscv_tempdir/dscv/ri/43_2a/drivers/net/wireless/iwlegacy/4965-mac.c",
                       3188);
  } else {
  }
  ldv__builtin_expect(__ret_warn_on != 0, 0L);
  tmp___2 = il4965_static_wepkey_cmd(il, 0);
  return (tmp___2);
}
}
int il4965_remove_default_wep_key(struct il_priv *il , struct ieee80211_key_conf *keyconf )
{
  int ret ;
  int idx ;
  int __ret_warn_on ;
  int tmp ;
  int tmp___0 ;
  long tmp___1 ;
  int tmp___2 ;
  u32 tmp___3 ;
  int tmp___4 ;
  u32 tmp___5 ;
  int tmp___6 ;
  int tmp___7 ;
  u32 tmp___8 ;
  {
  idx = (int )keyconf->keyidx;
  if (debug_locks != 0) {
    tmp = lock_is_held(& il->mutex.dep_map);
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
    warn_slowpath_null("/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/11700/dscv_tempdir/dscv/ri/43_2a/drivers/net/wireless/iwlegacy/4965-mac.c",
                       3200);
  } else {
  }
  ldv__builtin_expect(__ret_warn_on != 0, 0L);
  tmp___3 = il_get_debug_level(il);
  if ((tmp___3 & 4194304U) != 0U) {
    tmp___2 = preempt_count();
    dev_err((struct device const *)(& ((il->hw)->wiphy)->dev), "%c %s Removing default WEP key: idx=%d\n",
            ((unsigned long )tmp___2 & 2096896UL) != 0UL ? 73 : 85, "il4965_remove_default_wep_key",
            idx);
  } else {
  }
  memset((void *)(& il->__annonCompField103._4965.wep_keys) + (unsigned long )idx,
           0, 24UL);
  tmp___6 = il_is_rfkill(il);
  if (tmp___6 != 0) {
    tmp___5 = il_get_debug_level(il);
    if ((tmp___5 & 4194304U) != 0U) {
      tmp___4 = preempt_count();
      dev_err((struct device const *)(& ((il->hw)->wiphy)->dev), "%c %s Not sending C_WEPKEY command due to RFKILL.\n",
              ((unsigned long )tmp___4 & 2096896UL) != 0UL ? 73 : 85, "il4965_remove_default_wep_key");
    } else {
    }
    return (0);
  } else {
  }
  ret = il4965_static_wepkey_cmd(il, 1);
  tmp___8 = il_get_debug_level(il);
  if ((tmp___8 & 4194304U) != 0U) {
    tmp___7 = preempt_count();
    dev_err((struct device const *)(& ((il->hw)->wiphy)->dev), "%c %s Remove default WEP key: idx=%d ret=%d\n",
            ((unsigned long )tmp___7 & 2096896UL) != 0UL ? 73 : 85, "il4965_remove_default_wep_key",
            idx, ret);
  } else {
  }
  return (ret);
}
}
int il4965_set_default_wep_key(struct il_priv *il , struct ieee80211_key_conf *keyconf )
{
  int ret ;
  int len ;
  int idx ;
  int __ret_warn_on ;
  int tmp ;
  int tmp___0 ;
  long tmp___1 ;
  int tmp___2 ;
  u32 tmp___3 ;
  int tmp___4 ;
  u32 tmp___5 ;
  {
  len = (int )keyconf->keylen;
  idx = (int )keyconf->keyidx;
  if (debug_locks != 0) {
    tmp = lock_is_held(& il->mutex.dep_map);
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
    warn_slowpath_null("/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/11700/dscv_tempdir/dscv/ri/43_2a/drivers/net/wireless/iwlegacy/4965-mac.c",
                       3224);
  } else {
  }
  ldv__builtin_expect(__ret_warn_on != 0, 0L);
  if (len != 13 && len != 5) {
    tmp___3 = il_get_debug_level(il);
    if ((tmp___3 & 4194304U) != 0U) {
      tmp___2 = preempt_count();
      dev_err((struct device const *)(& ((il->hw)->wiphy)->dev), "%c %s Bad WEP key length %d\n",
              ((unsigned long )tmp___2 & 2096896UL) != 0UL ? 73 : 85, "il4965_set_default_wep_key",
              (int )keyconf->keylen);
    } else {
    }
    return (-22);
  } else {
  }
  keyconf->flags = (unsigned int )keyconf->flags & 253U;
  keyconf->hw_key_idx = 1U;
  il->stations[0].keyinfo.cipher = keyconf->cipher;
  il->__annonCompField103._4965.wep_keys[idx].key_size = (u8 )len;
  memcpy((void *)(& il->__annonCompField103._4965.wep_keys[idx].key), (void const *)(& keyconf->key),
           (size_t )len);
  ret = il4965_static_wepkey_cmd(il, 0);
  tmp___5 = il_get_debug_level(il);
  if ((tmp___5 & 4194304U) != 0U) {
    tmp___4 = preempt_count();
    dev_err((struct device const *)(& ((il->hw)->wiphy)->dev), "%c %s Set default WEP key: len=%d idx=%d ret=%d\n",
            ((unsigned long )tmp___4 & 2096896UL) != 0UL ? 73 : 85, "il4965_set_default_wep_key",
            len, idx, ret);
  } else {
  }
  return (ret);
}
}
static int il4965_set_wep_dynamic_key_info(struct il_priv *il , struct ieee80211_key_conf *keyconf ,
                                           u8 sta_id )
{
  unsigned long flags ;
  __le16 key_flags ;
  struct il_addsta_cmd sta_cmd ;
  int __ret_warn_on ;
  int tmp ;
  int tmp___0 ;
  long tmp___1 ;
  int tmp___2 ;
  int __ret_warn_on___0 ;
  long tmp___3 ;
  int tmp___4 ;
  {
  key_flags = 0U;
  if (debug_locks != 0) {
    tmp = lock_is_held(& il->mutex.dep_map);
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
    warn_slowpath_null("/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/11700/dscv_tempdir/dscv/ri/43_2a/drivers/net/wireless/iwlegacy/4965-mac.c",
                       3252);
  } else {
  }
  ldv__builtin_expect(__ret_warn_on != 0, 0L);
  keyconf->flags = (unsigned int )keyconf->flags & 253U;
  key_flags = (__le16 )((unsigned int )key_flags | 9U);
  key_flags = (__le16 )(((int )((unsigned short )keyconf->keyidx) << 8U) | (int )key_flags);
  key_flags = (unsigned int )key_flags & 63487U;
  if ((unsigned int )keyconf->keylen == 13U) {
    key_flags = (__le16 )((unsigned int )key_flags | 4096U);
  } else {
  }
  if ((int )il->hw_params.bcast_id == (int )sta_id) {
    key_flags = (__le16 )((unsigned int )key_flags | 16384U);
  } else {
  }
  ldv_spin_lock();
  il->stations[(int )sta_id].keyinfo.cipher = keyconf->cipher;
  il->stations[(int )sta_id].keyinfo.keylen = (int )keyconf->keylen;
  il->stations[(int )sta_id].keyinfo.keyidx = (u8 )keyconf->keyidx;
  memcpy((void *)(& il->stations[(int )sta_id].keyinfo.key), (void const *)(& keyconf->key),
           (size_t )keyconf->keylen);
  memcpy((void *)(& il->stations[(int )sta_id].sta.key.key) + 3U, (void const *)(& keyconf->key),
           (size_t )keyconf->keylen);
  if (((int )il->stations[(int )sta_id].sta.key.key_flags & 7) == 0) {
    tmp___2 = il_get_free_ucode_key_idx(il);
    il->stations[(int )sta_id].sta.key.key_offset = (u8 )tmp___2;
  } else {
  }
  __ret_warn_on___0 = (unsigned int )il->stations[(int )sta_id].sta.key.key_offset == 255U;
  tmp___3 = ldv__builtin_expect(__ret_warn_on___0 != 0, 0L);
  if (tmp___3 != 0L) {
    warn_slowpath_fmt("/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/11700/dscv_tempdir/dscv/ri/43_2a/drivers/net/wireless/iwlegacy/4965-mac.c",
                      3285, "no space for a new key");
  } else {
  }
  ldv__builtin_expect(__ret_warn_on___0 != 0, 0L);
  il->stations[(int )sta_id].sta.key.key_flags = key_flags;
  il->stations[(int )sta_id].sta.sta.modify_mask = 1U;
  il->stations[(int )sta_id].sta.mode = 1U;
  memcpy((void *)(& sta_cmd), (void const *)(& il->stations[(int )sta_id].sta),
           68UL);
  spin_unlock_irqrestore(& il->sta_lock, flags);
  tmp___4 = il_send_add_sta(il, & sta_cmd, 0);
  return (tmp___4);
}
}
static int il4965_set_ccmp_dynamic_key_info(struct il_priv *il , struct ieee80211_key_conf *keyconf ,
                                            u8 sta_id )
{
  unsigned long flags ;
  __le16 key_flags ;
  struct il_addsta_cmd sta_cmd ;
  int __ret_warn_on ;
  int tmp ;
  int tmp___0 ;
  long tmp___1 ;
  int tmp___2 ;
  int __ret_warn_on___0 ;
  long tmp___3 ;
  int tmp___4 ;
  {
  key_flags = 0U;
  if (debug_locks != 0) {
    tmp = lock_is_held(& il->mutex.dep_map);
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
    warn_slowpath_null("/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/11700/dscv_tempdir/dscv/ri/43_2a/drivers/net/wireless/iwlegacy/4965-mac.c",
                       3306);
  } else {
  }
  ldv__builtin_expect(__ret_warn_on != 0, 0L);
  key_flags = (__le16 )((unsigned int )key_flags | 10U);
  key_flags = (__le16 )(((int )((unsigned short )keyconf->keyidx) << 8U) | (int )key_flags);
  key_flags = (unsigned int )key_flags & 63487U;
  if ((int )il->hw_params.bcast_id == (int )sta_id) {
    key_flags = (__le16 )((unsigned int )key_flags | 16384U);
  } else {
  }
  keyconf->flags = (u8 )((unsigned int )keyconf->flags | 2U);
  ldv_spin_lock();
  il->stations[(int )sta_id].keyinfo.cipher = keyconf->cipher;
  il->stations[(int )sta_id].keyinfo.keylen = (int )keyconf->keylen;
  memcpy((void *)(& il->stations[(int )sta_id].keyinfo.key), (void const *)(& keyconf->key),
           (size_t )keyconf->keylen);
  memcpy((void *)(& il->stations[(int )sta_id].sta.key.key), (void const *)(& keyconf->key),
           (size_t )keyconf->keylen);
  if (((int )il->stations[(int )sta_id].sta.key.key_flags & 7) == 0) {
    tmp___2 = il_get_free_ucode_key_idx(il);
    il->stations[(int )sta_id].sta.key.key_offset = (u8 )tmp___2;
  } else {
  }
  __ret_warn_on___0 = (unsigned int )il->stations[(int )sta_id].sta.key.key_offset == 255U;
  tmp___3 = ldv__builtin_expect(__ret_warn_on___0 != 0, 0L);
  if (tmp___3 != 0L) {
    warn_slowpath_fmt("/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/11700/dscv_tempdir/dscv/ri/43_2a/drivers/net/wireless/iwlegacy/4965-mac.c",
                      3333, "no space for a new key");
  } else {
  }
  ldv__builtin_expect(__ret_warn_on___0 != 0, 0L);
  il->stations[(int )sta_id].sta.key.key_flags = key_flags;
  il->stations[(int )sta_id].sta.sta.modify_mask = 1U;
  il->stations[(int )sta_id].sta.mode = 1U;
  memcpy((void *)(& sta_cmd), (void const *)(& il->stations[(int )sta_id].sta),
           68UL);
  spin_unlock_irqrestore(& il->sta_lock, flags);
  tmp___4 = il_send_add_sta(il, & sta_cmd, 0);
  return (tmp___4);
}
}
static int il4965_set_tkip_dynamic_key_info(struct il_priv *il , struct ieee80211_key_conf *keyconf ,
                                            u8 sta_id )
{
  unsigned long flags ;
  int ret ;
  __le16 key_flags ;
  int tmp ;
  int __ret_warn_on ;
  long tmp___0 ;
  {
  ret = 0;
  key_flags = 0U;
  key_flags = (__le16 )((unsigned int )key_flags | 11U);
  key_flags = (__le16 )(((int )((unsigned short )keyconf->keyidx) << 8U) | (int )key_flags);
  key_flags = (unsigned int )key_flags & 63487U;
  if ((int )il->hw_params.bcast_id == (int )sta_id) {
    key_flags = (__le16 )((unsigned int )key_flags | 16384U);
  } else {
  }
  keyconf->flags = (u8 )((unsigned int )keyconf->flags | 2U);
  keyconf->flags = (u8 )((unsigned int )keyconf->flags | 4U);
  ldv_spin_lock();
  il->stations[(int )sta_id].keyinfo.cipher = keyconf->cipher;
  il->stations[(int )sta_id].keyinfo.keylen = 16;
  if (((int )il->stations[(int )sta_id].sta.key.key_flags & 7) == 0) {
    tmp = il_get_free_ucode_key_idx(il);
    il->stations[(int )sta_id].sta.key.key_offset = (u8 )tmp;
  } else {
  }
  __ret_warn_on = (unsigned int )il->stations[(int )sta_id].sta.key.key_offset == 255U;
  tmp___0 = ldv__builtin_expect(__ret_warn_on != 0, 0L);
  if (tmp___0 != 0L) {
    warn_slowpath_fmt("/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/11700/dscv_tempdir/dscv/ri/43_2a/drivers/net/wireless/iwlegacy/4965-mac.c",
                      3377, "no space for a new key");
  } else {
  }
  ldv__builtin_expect(__ret_warn_on != 0, 0L);
  il->stations[(int )sta_id].sta.key.key_flags = key_flags;
  memcpy((void *)(& il->stations[(int )sta_id].keyinfo.key), (void const *)(& keyconf->key),
           16UL);
  memcpy((void *)(& il->stations[(int )sta_id].sta.key.key), (void const *)(& keyconf->key),
           16UL);
  spin_unlock_irqrestore(& il->sta_lock, flags);
  return (ret);
}
}
void il4965_update_tkip_key(struct il_priv *il , struct ieee80211_key_conf *keyconf ,
                            struct ieee80211_sta *sta , u32 iv32 , u16 *phase1key )
{
  u8 sta_id ;
  unsigned long flags ;
  int i ;
  int tmp ;
  int tmp___0 ;
  {
  tmp = il_scan_cancel(il);
  if (tmp != 0) {
    return;
  } else {
  }
  tmp___0 = il_sta_id_or_broadcast(il, sta);
  sta_id = (u8 )tmp___0;
  if ((unsigned int )sta_id == 255U) {
    return;
  } else {
  }
  ldv_spin_lock();
  il->stations[(int )sta_id].sta.key.tkip_rx_tsc_byte2 = (unsigned char )iv32;
  i = 0;
  goto ldv_55364;
  ldv_55363:
  il->stations[(int )sta_id].sta.key.tkip_rx_ttak[i] = *(phase1key + (unsigned long )i);
  i = i + 1;
  ldv_55364: ;
  if (i <= 4) {
    goto ldv_55363;
  } else {
  }
  il->stations[(int )sta_id].sta.sta.modify_mask = 1U;
  il->stations[(int )sta_id].sta.mode = 1U;
  il_send_add_sta(il, & il->stations[(int )sta_id].sta, 2);
  spin_unlock_irqrestore(& il->sta_lock, flags);
  return;
}
}
int il4965_remove_dynamic_key(struct il_priv *il , struct ieee80211_key_conf *keyconf ,
                              u8 sta_id )
{
  unsigned long flags ;
  u16 key_flags ;
  u8 keyidx ;
  struct il_addsta_cmd sta_cmd ;
  int __ret_warn_on ;
  int tmp ;
  int tmp___0 ;
  long tmp___1 ;
  int tmp___2 ;
  u32 tmp___3 ;
  int tmp___4 ;
  int tmp___5 ;
  u32 tmp___6 ;
  int tmp___7 ;
  int tmp___8 ;
  {
  if (debug_locks != 0) {
    tmp = lock_is_held(& il->mutex.dep_map);
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
    warn_slowpath_null("/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/11700/dscv_tempdir/dscv/ri/43_2a/drivers/net/wireless/iwlegacy/4965-mac.c",
                       3434);
  } else {
  }
  ldv__builtin_expect(__ret_warn_on != 0, 0L);
  il->__annonCompField103._4965.key_mapping_keys = (u8 )((int )il->__annonCompField103._4965.key_mapping_keys - 1);
  ldv_spin_lock();
  key_flags = il->stations[(int )sta_id].sta.key.key_flags;
  keyidx = (unsigned int )((u8 )((int )key_flags >> 8)) & 3U;
  tmp___3 = il_get_debug_level(il);
  if ((tmp___3 & 4194304U) != 0U) {
    tmp___2 = preempt_count();
    dev_err((struct device const *)(& ((il->hw)->wiphy)->dev), "%c %s Remove dynamic key: idx=%d sta=%d\n",
            ((unsigned long )tmp___2 & 2096896UL) != 0UL ? 73 : 85, "il4965_remove_dynamic_key",
            (int )keyconf->keyidx, (int )sta_id);
  } else {
  }
  if ((int )keyconf->keyidx != (int )keyidx) {
    spin_unlock_irqrestore(& il->sta_lock, flags);
    return (0);
  } else {
  }
  if (((int )il->stations[(int )sta_id].sta.key.key_flags & 2048) != 0) {
    dev_warn((struct device const *)(& (il->pci_dev)->dev), "Removing wrong key %d 0x%x\n",
             (int )keyconf->keyidx, (int )key_flags);
    spin_unlock_irqrestore(& il->sta_lock, flags);
    return (0);
  } else {
  }
  tmp___4 = test_and_clear_bit((long )il->stations[(int )sta_id].sta.key.key_offset,
                               (unsigned long volatile *)(& il->ucode_key_table));
  if (tmp___4 == 0) {
    dev_err((struct device const *)(& (il->pci_dev)->dev), "idx %d not used in uCode key table.\n",
            (int )il->stations[(int )sta_id].sta.key.key_offset);
  } else {
  }
  memset((void *)(& il->stations[(int )sta_id].keyinfo), 0, 44UL);
  memset((void *)(& il->stations[(int )sta_id].sta.key), 0, 32UL);
  il->stations[(int )sta_id].sta.key.key_flags = 2048U;
  il->stations[(int )sta_id].sta.key.key_offset = keyconf->hw_key_idx;
  il->stations[(int )sta_id].sta.sta.modify_mask = 1U;
  il->stations[(int )sta_id].sta.mode = 1U;
  tmp___7 = il_is_rfkill(il);
  if (tmp___7 != 0) {
    tmp___6 = il_get_debug_level(il);
    if ((tmp___6 & 4194304U) != 0U) {
      tmp___5 = preempt_count();
      dev_err((struct device const *)(& ((il->hw)->wiphy)->dev), "%c %s Not sending C_ADD_STA command because RFKILL enabled.\n",
              ((unsigned long )tmp___5 & 2096896UL) != 0UL ? 73 : 85, "il4965_remove_dynamic_key");
    } else {
    }
    spin_unlock_irqrestore(& il->sta_lock, flags);
    return (0);
  } else {
  }
  memcpy((void *)(& sta_cmd), (void const *)(& il->stations[(int )sta_id].sta),
           68UL);
  spin_unlock_irqrestore(& il->sta_lock, flags);
  tmp___8 = il_send_add_sta(il, & sta_cmd, 0);
  return (tmp___8);
}
}
int il4965_set_dynamic_key(struct il_priv *il , struct ieee80211_key_conf *keyconf ,
                           u8 sta_id )
{
  int ret ;
  int __ret_warn_on ;
  int tmp ;
  int tmp___0 ;
  long tmp___1 ;
  int tmp___2 ;
  u32 tmp___3 ;
  {
  if (debug_locks != 0) {
    tmp = lock_is_held(& il->mutex.dep_map);
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
    warn_slowpath_null("/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/11700/dscv_tempdir/dscv/ri/43_2a/drivers/net/wireless/iwlegacy/4965-mac.c",
                       3492);
  } else {
  }
  ldv__builtin_expect(__ret_warn_on != 0, 0L);
  il->__annonCompField103._4965.key_mapping_keys = (u8 )((int )il->__annonCompField103._4965.key_mapping_keys + 1);
  keyconf->hw_key_idx = 0U;
  switch (keyconf->cipher) {
  case 1027076U:
  ret = il4965_set_ccmp_dynamic_key_info(il, keyconf, (int )sta_id);
  goto ldv_55387;
  case 1027074U:
  ret = il4965_set_tkip_dynamic_key_info(il, keyconf, (int )sta_id);
  goto ldv_55387;
  case 1027073U: ;
  case 1027077U:
  ret = il4965_set_wep_dynamic_key_info(il, keyconf, (int )sta_id);
  goto ldv_55387;
  default:
  dev_err((struct device const *)(& (il->pci_dev)->dev), "Unknown alg: %s cipher = %x\n",
          "il4965_set_dynamic_key", keyconf->cipher);
  ret = -22;
  }
  ldv_55387:
  tmp___3 = il_get_debug_level(il);
  if ((tmp___3 & 4194304U) != 0U) {
    tmp___2 = preempt_count();
    dev_err((struct device const *)(& ((il->hw)->wiphy)->dev), "%c %s Set dynamic key: cipher=%x len=%d idx=%d sta=%d ret=%d\n",
            ((unsigned long )tmp___2 & 2096896UL) != 0UL ? 73 : 85, "il4965_set_dynamic_key",
            keyconf->cipher, (int )keyconf->keylen, (int )keyconf->keyidx, (int )sta_id,
            ret);
  } else {
  }
  return (ret);
}
}
int il4965_alloc_bcast_station(struct il_priv *il )
{
  struct il_link_quality_cmd *link_cmd ;
  unsigned long flags ;
  u8 sta_id ;
  {
  ldv_spin_lock();
  sta_id = il_prep_station(il, (u8 const *)(& il_bcast_addr), 0, (struct ieee80211_sta *)0);
  if ((unsigned int )sta_id == 255U) {
    dev_err((struct device const *)(& (il->pci_dev)->dev), "Unable to prepare broadcast station\n");
    spin_unlock_irqrestore(& il->sta_lock, flags);
    return (-22);
  } else {
  }
  il->stations[(int )sta_id].used = (u8 )((unsigned int )il->stations[(int )sta_id].used | 1U);
  il->stations[(int )sta_id].used = (u8 )((unsigned int )il->stations[(int )sta_id].used | 16U);
  spin_unlock_irqrestore(& il->sta_lock, flags);
  link_cmd = il4965_sta_alloc_lq(il, (int )sta_id);
  if ((unsigned long )link_cmd == (unsigned long )((struct il_link_quality_cmd *)0)) {
    dev_err((struct device const *)(& (il->pci_dev)->dev), "Unable to initialize rate scaling for bcast station.\n");
    return (-12);
  } else {
  }
  ldv_spin_lock();
  il->stations[(int )sta_id].lq = link_cmd;
  spin_unlock_irqrestore(& il->sta_lock, flags);
  return (0);
}
}
static int il4965_update_bcast_station(struct il_priv *il )
{
  unsigned long flags ;
  struct il_link_quality_cmd *link_cmd ;
  u8 sta_id ;
  int tmp ;
  u32 tmp___0 ;
  {
  sta_id = il->hw_params.bcast_id;
  link_cmd = il4965_sta_alloc_lq(il, (int )sta_id);
  if ((unsigned long )link_cmd == (unsigned long )((struct il_link_quality_cmd *)0)) {
    dev_err((struct device const *)(& (il->pci_dev)->dev), "Unable to initialize rate scaling for bcast sta.\n");
    return (-12);
  } else {
  }
  ldv_spin_lock();
  if ((unsigned long )il->stations[(int )sta_id].lq != (unsigned long )((struct il_link_quality_cmd *)0)) {
    kfree((void const *)il->stations[(int )sta_id].lq);
  } else {
    tmp___0 = il_get_debug_level(il);
    if ((int )tmp___0 & 1) {
      tmp = preempt_count();
      dev_err((struct device const *)(& ((il->hw)->wiphy)->dev), "%c %s Bcast sta rate scaling has not been initialized.\n",
              ((unsigned long )tmp & 2096896UL) != 0UL ? 73 : 85, "il4965_update_bcast_station");
    } else {
    }
  }
  il->stations[(int )sta_id].lq = link_cmd;
  spin_unlock_irqrestore(& il->sta_lock, flags);
  return (0);
}
}
int il4965_update_bcast_stations(struct il_priv *il )
{
  int tmp ;
  {
  tmp = il4965_update_bcast_station(il);
  return (tmp);
}
}
int il4965_sta_tx_modify_enable_tid(struct il_priv *il , int sta_id , int tid )
{
  unsigned long flags ;
  struct il_addsta_cmd sta_cmd ;
  int __ret_warn_on ;
  int tmp ;
  int tmp___0 ;
  long tmp___1 ;
  int tmp___2 ;
  {
  if (debug_locks != 0) {
    tmp = lock_is_held(& il->mutex.dep_map);
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
    warn_slowpath_null("/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/11700/dscv_tempdir/dscv/ri/43_2a/drivers/net/wireless/iwlegacy/4965-mac.c",
                       3608);
  } else {
  }
  ldv__builtin_expect(__ret_warn_on != 0, 0L);
  ldv_spin_lock();
  il->stations[sta_id].sta.sta.modify_mask = 2U;
  il->stations[sta_id].sta.tid_disable_tx = (__le16 )((int )il->stations[sta_id].sta.tid_disable_tx & ~ ((int )((unsigned short )(1 << tid))));
  il->stations[sta_id].sta.mode = 1U;
  memcpy((void *)(& sta_cmd), (void const *)(& il->stations[sta_id].sta), 68UL);
  spin_unlock_irqrestore(& il->sta_lock, flags);
  tmp___2 = il_send_add_sta(il, & sta_cmd, 0);
  return (tmp___2);
}
}
int il4965_sta_rx_agg_start(struct il_priv *il , struct ieee80211_sta *sta , int tid ,
                            u16 ssn )
{
  unsigned long flags ;
  int sta_id ;
  struct il_addsta_cmd sta_cmd ;
  int __ret_warn_on ;
  int tmp ;
  int tmp___0 ;
  long tmp___1 ;
  int tmp___2 ;
  {
  if (debug_locks != 0) {
    tmp = lock_is_held(& il->mutex.dep_map);
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
    warn_slowpath_null("/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/11700/dscv_tempdir/dscv/ri/43_2a/drivers/net/wireless/iwlegacy/4965-mac.c",
                       3630);
  } else {
  }
  ldv__builtin_expect(__ret_warn_on != 0, 0L);
  sta_id = il_sta_id(sta);
  if (sta_id == 255) {
    return (-6);
  } else {
  }
  ldv_spin_lock();
  il->stations[sta_id].sta.station_flags_msk = 0U;
  il->stations[sta_id].sta.sta.modify_mask = 8U;
  il->stations[sta_id].sta.add_immediate_ba_tid = (unsigned char )tid;
  il->stations[sta_id].sta.add_immediate_ba_ssn = ssn;
  il->stations[sta_id].sta.mode = 1U;
  memcpy((void *)(& sta_cmd), (void const *)(& il->stations[sta_id].sta), 68UL);
  spin_unlock_irqrestore(& il->sta_lock, flags);
  tmp___2 = il_send_add_sta(il, & sta_cmd, 0);
  return (tmp___2);
}
}
int il4965_sta_rx_agg_stop(struct il_priv *il , struct ieee80211_sta *sta , int tid )
{
  unsigned long flags ;
  int sta_id ;
  struct il_addsta_cmd sta_cmd ;
  int __ret_warn_on ;
  int tmp ;
  int tmp___0 ;
  long tmp___1 ;
  int tmp___2 ;
  {
  if (debug_locks != 0) {
    tmp = lock_is_held(& il->mutex.dep_map);
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
    warn_slowpath_null("/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/11700/dscv_tempdir/dscv/ri/43_2a/drivers/net/wireless/iwlegacy/4965-mac.c",
                       3656);
  } else {
  }
  ldv__builtin_expect(__ret_warn_on != 0, 0L);
  sta_id = il_sta_id(sta);
  if (sta_id == 255) {
    dev_err((struct device const *)(& (il->pci_dev)->dev), "Invalid station for AGG tid %d\n",
            tid);
    return (-6);
  } else {
  }
  ldv_spin_lock();
  il->stations[sta_id].sta.station_flags_msk = 0U;
  il->stations[sta_id].sta.sta.modify_mask = 16U;
  il->stations[sta_id].sta.remove_immediate_ba_tid = (unsigned char )tid;
  il->stations[sta_id].sta.mode = 1U;
  memcpy((void *)(& sta_cmd), (void const *)(& il->stations[sta_id].sta), 68UL);
  spin_unlock_irqrestore(& il->sta_lock, flags);
  tmp___2 = il_send_add_sta(il, & sta_cmd, 0);
  return (tmp___2);
}
}
void il4965_sta_modify_sleep_tx_count(struct il_priv *il , int sta_id , int cnt )
{
  unsigned long flags ;
  {
  ldv_spin_lock();
  il->stations[sta_id].sta.station_flags = il->stations[sta_id].sta.station_flags | 256U;
  il->stations[sta_id].sta.station_flags_msk = 256U;
  il->stations[sta_id].sta.sta.modify_mask = 32U;
  il->stations[sta_id].sta.sleep_tx_count = (unsigned short )cnt;
  il->stations[sta_id].sta.mode = 1U;
  il_send_add_sta(il, & il->stations[sta_id].sta, 2);
  spin_unlock_irqrestore(& il->sta_lock, flags);
  return;
}
}
void il4965_update_chain_flags(struct il_priv *il )
{
  {
  if ((unsigned long )(il->ops)->set_rxon_chain != (unsigned long )((void (* )(struct il_priv * ))0)) {
    (*((il->ops)->set_rxon_chain))(il);
    if ((int )((unsigned short )il->active.rx_chain) != (int )il->staging.rx_chain) {
      il_commit_rxon(il);
    } else {
    }
  } else {
  }
  return;
}
}
static void il4965_clear_free_frames(struct il_priv *il )
{
  struct list_head *element ;
  int tmp ;
  u32 tmp___0 ;
  struct list_head const *__mptr ;
  int tmp___1 ;
  {
  tmp___0 = il_get_debug_level(il);
  if ((int )tmp___0 & 1) {
    tmp = preempt_count();
    dev_err((struct device const *)(& ((il->hw)->wiphy)->dev), "%c %s %d frames on pre-allocated heap on clear.\n",
            ((unsigned long )tmp & 2096896UL) != 0UL ? 73 : 85, "il4965_clear_free_frames",
            il->frames_count);
  } else {
  }
  goto ldv_55456;
  ldv_55455:
  element = il->free_frames.next;
  list_del(element);
  __mptr = (struct list_head const *)element;
  kfree((void const *)((struct il_frame *)__mptr + 0xfffffffffffff6e0UL));
  il->frames_count = il->frames_count - 1;
  ldv_55456:
  tmp___1 = list_empty((struct list_head const *)(& il->free_frames));
  if (tmp___1 == 0) {
    goto ldv_55455;
  } else {
  }
  if (il->frames_count != 0) {
    dev_warn((struct device const *)(& (il->pci_dev)->dev), "%d frames still in use.  Did we lose one?\n",
             il->frames_count);
    il->frames_count = 0;
  } else {
  }
  return;
}
}
static struct il_frame *il4965_get_free_frame(struct il_priv *il )
{
  struct il_frame *frame ;
  struct list_head *element ;
  void *tmp ;
  int tmp___0 ;
  struct list_head const *__mptr ;
  {
  tmp___0 = list_empty((struct list_head const *)(& il->free_frames));
  if (tmp___0 != 0) {
    tmp = kmalloc(2352UL, 208U);
    frame = (struct il_frame *)tmp;
    if ((unsigned long )frame == (unsigned long )((struct il_frame *)0)) {
      dev_err((struct device const *)(& (il->pci_dev)->dev), "Could not allocate frame!\n");
      return ((struct il_frame *)0);
    } else {
    }
    il->frames_count = il->frames_count + 1;
    return (frame);
  } else {
  }
  element = il->free_frames.next;
  list_del(element);
  __mptr = (struct list_head const *)element;
  return ((struct il_frame *)__mptr + 0xfffffffffffff6e0UL);
}
}
static void il4965_free_frame(struct il_priv *il , struct il_frame *frame )
{
  {
  memset((void *)frame, 0, 2352UL);
  list_add(& frame->list, & il->free_frames);
  return;
}
}
static u32 il4965_fill_beacon_frame(struct il_priv *il , struct ieee80211_hdr *hdr ,
                                    int left )
{
  int __ret_warn_on ;
  int tmp ;
  int tmp___0 ;
  long tmp___1 ;
  {
  if (debug_locks != 0) {
    tmp = lock_is_held(& il->mutex.dep_map);
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
    warn_slowpath_null("/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/11700/dscv_tempdir/dscv/ri/43_2a/drivers/net/wireless/iwlegacy/4965-mac.c",
                       3756);
  } else {
  }
  ldv__builtin_expect(__ret_warn_on != 0, 0L);
  if ((unsigned long )il->beacon_skb == (unsigned long )((struct sk_buff *)0)) {
    return (0U);
  } else {
  }
  if ((il->beacon_skb)->len > (unsigned int )left) {
    return (0U);
  } else {
  }
  memcpy((void *)hdr, (void const *)(il->beacon_skb)->data, (size_t )(il->beacon_skb)->len);
  return ((il->beacon_skb)->len);
}
}
static void il4965_set_beacon_tim(struct il_priv *il , struct il_tx_beacon_cmd *tx_beacon_cmd ,
                                  u8 *beacon , u32 frame_size )
{
  u16 tim_idx ;
  struct ieee80211_mgmt *mgmt ;
  {
  mgmt = (struct ieee80211_mgmt *)beacon;
  tim_idx = (int )((u16 )((long )(& mgmt->u.beacon.variable))) - (int )((u16 )((long )beacon));
  goto ldv_55485;
  ldv_55484:
  tim_idx = (unsigned int )((int )((u16 )*(beacon + ((unsigned long )tim_idx + 1UL))) + (int )tim_idx) + 2U;
  ldv_55485: ;
  if ((u32 )tim_idx < frame_size - 2U && (unsigned int )*(beacon + (unsigned long )tim_idx) != 5U) {
    goto ldv_55484;
  } else {
  }
  if ((u32 )tim_idx < frame_size - 1U && (unsigned int )*(beacon + (unsigned long )tim_idx) == 5U) {
    tx_beacon_cmd->tim_idx = tim_idx;
    tx_beacon_cmd->tim_size = *(beacon + ((unsigned long )tim_idx + 1UL));
  } else {
    dev_warn((struct device const *)(& (il->pci_dev)->dev), "Unable to find TIM Element in beacon\n");
  }
  return;
}
}
static unsigned int il4965_hw_get_beacon_cmd(struct il_priv *il , struct il_frame *frame )
{
  struct il_tx_beacon_cmd *tx_beacon_cmd ;
  u32 frame_size ;
  u32 rate_flags ;
  u32 rate ;
  int __ret_warn_on ;
  int tmp ;
  int tmp___0 ;
  long tmp___1 ;
  bool __warned ;
  int __ret_warn_once ;
  int __ret_warn_on___0 ;
  long tmp___2 ;
  long tmp___3 ;
  long tmp___4 ;
  long tmp___5 ;
  u8 tmp___6 ;
  {
  if (debug_locks != 0) {
    tmp = lock_is_held(& il->mutex.dep_map);
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
    warn_slowpath_null("/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/11700/dscv_tempdir/dscv/ri/43_2a/drivers/net/wireless/iwlegacy/4965-mac.c",
                       3809);
  } else {
  }
  ldv__builtin_expect(__ret_warn_on != 0, 0L);
  if (! il->beacon_enabled) {
    dev_err((struct device const *)(& (il->pci_dev)->dev), "Trying to build beacon without beaconing enabled\n");
    return (0U);
  } else {
  }
  tx_beacon_cmd = & frame->u.beacon;
  memset((void *)tx_beacon_cmd, 0, 60UL);
  frame_size = il4965_fill_beacon_frame(il, (struct ieee80211_hdr *)(& tx_beacon_cmd->frame),
                                        2274);
  __ret_warn_once = frame_size > 2346U;
  tmp___4 = ldv__builtin_expect(__ret_warn_once != 0, 0L);
  if (tmp___4 != 0L) {
    __ret_warn_on___0 = ! __warned;
    tmp___2 = ldv__builtin_expect(__ret_warn_on___0 != 0, 0L);
    if (tmp___2 != 0L) {
      warn_slowpath_null("/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/11700/dscv_tempdir/dscv/ri/43_2a/drivers/net/wireless/iwlegacy/4965-mac.c",
                         3824);
    } else {
    }
    tmp___3 = ldv__builtin_expect(__ret_warn_on___0 != 0, 0L);
    if (tmp___3 != 0L) {
      __warned = 1;
    } else {
    }
  } else {
  }
  tmp___5 = ldv__builtin_expect(__ret_warn_once != 0, 0L);
  if (tmp___5 != 0L) {
    return (0U);
  } else {
  }
  if (frame_size == 0U) {
    return (0U);
  } else {
  }
  tx_beacon_cmd->tx.len = (unsigned short )frame_size;
  tx_beacon_cmd->tx.sta_id = il->hw_params.bcast_id;
  tx_beacon_cmd->tx.stop_time.life_time = 4294967295U;
  tx_beacon_cmd->tx.tx_flags = 73744U;
  il4965_set_beacon_tim(il, tx_beacon_cmd, (u8 *)(& tx_beacon_cmd->frame), frame_size);
  tmp___6 = il_get_lowest_plcp(il);
  rate = (u32 )tmp___6;
  il4965_toggle_tx_ant(il, & il->mgmt_tx_ant, (int )il->hw_params.valid_tx_ant);
  rate_flags = (u32 )(1UL << (int )il->mgmt_tx_ant) << 14U;
  if (rate <= 3U) {
    rate_flags = rate_flags | 512U;
  } else {
  }
  tx_beacon_cmd->tx.rate_n_flags = rate | rate_flags;
  return (frame_size + 60U);
}
}
int il4965_send_beacon_cmd(struct il_priv *il )
{
  struct il_frame *frame ;
  unsigned int frame_size ;
  int rc ;
  {
  frame = il4965_get_free_frame(il);
  if ((unsigned long )frame == (unsigned long )((struct il_frame *)0)) {
    dev_err((struct device const *)(& (il->pci_dev)->dev), "Could not obtain free frame buffer for beacon command.\n");
    return (-12);
  } else {
  }
  frame_size = il4965_hw_get_beacon_cmd(il, frame);
  if (frame_size == 0U) {
    dev_err((struct device const *)(& (il->pci_dev)->dev), "Error configuring the beacon command\n");
    il4965_free_frame(il, frame);
    return (-22);
  } else {
  }
  rc = il_send_cmd_pdu(il, 145, (int )((u16 )frame_size), (void const *)(& frame->u.cmd));
  il4965_free_frame(il, frame);
  return (rc);
}
}
__inline static dma_addr_t il4965_tfd_tb_get_addr(struct il_tfd *tfd , u8 idx )
{
  struct il_tfd_tb *tb ;
  dma_addr_t addr ;
  u32 tmp ;
  {
  tb = (struct il_tfd_tb *)(& tfd->tbs) + (unsigned long )idx;
  tmp = get_unaligned_le32((void const *)(& tb->lo));
  addr = (dma_addr_t )tmp;
  addr = (((unsigned long long )tb->hi_n_len & 15ULL) << 32ULL) | addr;
  return (addr);
}
}
__inline static u16 il4965_tfd_tb_get_len(struct il_tfd *tfd , u8 idx )
{
  struct il_tfd_tb *tb ;
  {
  tb = (struct il_tfd_tb *)(& tfd->tbs) + (unsigned long )idx;
  return ((u16 )((int )tb->hi_n_len >> 4));
}
}
__inline static void il4965_tfd_set_tb(struct il_tfd *tfd , u8 idx , dma_addr_t addr ,
                                       u16 len )
{
  struct il_tfd_tb *tb ;
  u16 hi_n_len ;
  {
  tb = (struct il_tfd_tb *)(& tfd->tbs) + (unsigned long )idx;
  hi_n_len = (int )len << 4U;
  put_unaligned_le32((u32 )addr, (void *)(& tb->lo));
  hi_n_len = ((unsigned int )((u16 )(addr >> 32ULL)) & 15U) | (unsigned int )hi_n_len;
  tb->hi_n_len = hi_n_len;
  tfd->num_tbs = (unsigned int )idx + 1U;
  return;
}
}
__inline static u8 il4965_tfd_get_num_tbs(struct il_tfd *tfd )
{
  {
  return ((unsigned int )tfd->num_tbs & 31U);
}
}
void il4965_hw_txq_free_tfd(struct il_priv *il , struct il_tx_queue *txq )
{
  struct il_tfd *tfd_tmp ;
  struct il_tfd *tfd ;
  struct pci_dev *dev ;
  int idx ;
  int i ;
  int num_tbs ;
  u8 tmp ;
  u16 tmp___0 ;
  dma_addr_t tmp___1 ;
  struct sk_buff *skb ;
  {
  tfd_tmp = (struct il_tfd *)txq->tfds;
  dev = il->pci_dev;
  idx = txq->q.read_ptr;
  tfd = tfd_tmp + (unsigned long )idx;
  tmp = il4965_tfd_get_num_tbs(tfd);
  num_tbs = (int )tmp;
  if (num_tbs > 19) {
    dev_err((struct device const *)(& (il->pci_dev)->dev), "Too many chunks: %i\n",
            num_tbs);
    return;
  } else {
  }
  if (num_tbs != 0) {
    pci_unmap_single(dev, (txq->meta + (unsigned long )idx)->mapping, (size_t )(txq->meta + (unsigned long )idx)->len,
                     0);
  } else {
  }
  i = 1;
  goto ldv_55541;
  ldv_55540:
  tmp___0 = il4965_tfd_tb_get_len(tfd, (int )((u8 )i));
  tmp___1 = il4965_tfd_tb_get_addr(tfd, (int )((u8 )i));
  pci_unmap_single(dev, tmp___1, (size_t )tmp___0, 1);
  i = i + 1;
  ldv_55541: ;
  if (i < num_tbs) {
    goto ldv_55540;
  } else {
  }
  if ((unsigned long )txq->skbs != (unsigned long )((struct sk_buff **)0)) {
    skb = *(txq->skbs + (unsigned long )txq->q.read_ptr);
    if ((unsigned long )skb != (unsigned long )((struct sk_buff *)0)) {
      dev_kfree_skb_any(skb);
      *(txq->skbs + (unsigned long )txq->q.read_ptr) = (struct sk_buff *)0;
    } else {
    }
  } else {
  }
  return;
}
}
int il4965_hw_txq_attach_buf_to_tfd(struct il_priv *il , struct il_tx_queue *txq ,
                                    dma_addr_t addr , u16 len , u8 reset , u8 pad )
{
  struct il_queue *q ;
  struct il_tfd *tfd ;
  struct il_tfd *tfd_tmp ;
  u32 num_tbs ;
  u8 tmp ;
  long tmp___0 ;
  long tmp___1 ;
  {
  q = & txq->q;
  tfd_tmp = (struct il_tfd *)txq->tfds;
  tfd = tfd_tmp + (unsigned long )q->write_ptr;
  if ((unsigned int )reset != 0U) {
    memset((void *)tfd, 0, 128UL);
  } else {
  }
  tmp = il4965_tfd_get_num_tbs(tfd);
  num_tbs = (u32 )tmp;
  if (num_tbs > 19U) {
    dev_err((struct device const *)(& (il->pci_dev)->dev), "Error can not send more than %d chunks\n",
            20);
    return (-22);
  } else {
  }
  tmp___0 = ldv__builtin_expect((addr & 0xfffffff000000000ULL) != 0ULL, 0L);
  if (tmp___0 != 0L) {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/11700/dscv_tempdir/dscv/ri/43_2a/drivers/net/wireless/iwlegacy/4965-mac.c"),
                         "i" (4000), "i" (12UL));
    ldv_55556: ;
    goto ldv_55556;
  } else {
  }
  tmp___1 = ldv__builtin_expect((addr & 0xfffffff000000000ULL) != 0ULL, 0L);
  if (tmp___1 != 0L) {
    dev_err((struct device const *)(& (il->pci_dev)->dev), "Unaligned address = %llx\n",
            addr);
  } else {
  }
  il4965_tfd_set_tb(tfd, (int )((u8 )num_tbs), addr, (int )len);
  return (0);
}
}
int il4965_hw_tx_queue_init(struct il_priv *il , struct il_tx_queue *txq )
{
  int txq_id ;
  {
  txq_id = (int )txq->q.id;
  il_wr___0(il, (u32 )((txq_id + 1652) * 4), (u32 )(txq->q.dma_addr >> 8));
  return (0);
}
}
static void il4965_hdl_alive(struct il_priv *il , struct il_rx_buf *rxb )
{
  struct il_rx_pkt *pkt ;
  void *tmp ;
  struct il_alive_resp *palive ;
  struct delayed_work *pwork ;
  int tmp___0 ;
  u32 tmp___1 ;
  int tmp___2 ;
  u32 tmp___3 ;
  int tmp___4 ;
  u32 tmp___5 ;
  unsigned long tmp___6 ;
  {
  tmp = lowmem_page_address((struct page const *)rxb->page);
  pkt = (struct il_rx_pkt *)tmp;
  palive = & pkt->u.alive_frame;
  tmp___1 = il_get_debug_level(il);
  if ((int )tmp___1 & 1) {
    tmp___0 = preempt_count();
    dev_err((struct device const *)(& ((il->hw)->wiphy)->dev), "%c %s Alive ucode status 0x%08X revision 0x%01X 0x%01X\n",
            ((unsigned long )tmp___0 & 2096896UL) != 0UL ? 73 : 85, "il4965_hdl_alive",
            palive->is_valid, (int )palive->ver_type, (int )palive->ver_subtype);
  } else {
  }
  if ((unsigned int )palive->ver_subtype == 9U) {
    tmp___3 = il_get_debug_level(il);
    if ((int )tmp___3 & 1) {
      tmp___2 = preempt_count();
      dev_err((struct device const *)(& ((il->hw)->wiphy)->dev), "%c %s Initialization Alive received.\n",
              ((unsigned long )tmp___2 & 2096896UL) != 0UL ? 73 : 85, "il4965_hdl_alive");
    } else {
    }
    memcpy((void *)(& il->card_alive_init), (void const *)(& pkt->u.alive_frame),
             108UL);
    pwork = & il->init_alive_start;
  } else {
    tmp___5 = il_get_debug_level(il);
    if ((int )tmp___5 & 1) {
      tmp___4 = preempt_count();
      dev_err((struct device const *)(& ((il->hw)->wiphy)->dev), "%c %s Runtime Alive received.\n",
              ((unsigned long )tmp___4 & 2096896UL) != 0UL ? 73 : 85, "il4965_hdl_alive");
    } else {
    }
    memcpy((void *)(& il->card_alive), (void const *)(& pkt->u.alive_frame), 32UL);
    pwork = & il->alive_start;
  }
  if (palive->is_valid == 1U) {
    tmp___6 = msecs_to_jiffies(5U);
    queue_delayed_work(il->workqueue, pwork, tmp___6);
  } else {
    dev_warn((struct device const *)(& (il->pci_dev)->dev), "uCode did not respond OK.\n");
  }
  return;
}
}
static void il4965_bg_stats_periodic(unsigned long data )
{
  struct il_priv *il ;
  int tmp ;
  int tmp___0 ;
  {
  il = (struct il_priv *)data;
  tmp = constant_test_bit(10L, (unsigned long const volatile *)(& il->status));
  if (tmp != 0) {
    return;
  } else {
  }
  tmp___0 = il_is_ready_rf(il);
  if (tmp___0 == 0) {
    return;
  } else {
  }
  il_send_stats_request(il, 2, 0);
  return;
}
}
static void il4965_hdl_beacon(struct il_priv *il , struct il_rx_buf *rxb )
{
  struct il_rx_pkt *pkt ;
  void *tmp ;
  struct il4965_beacon_notif *beacon ;
  u8 rate ;
  u8 tmp___0 ;
  int tmp___1 ;
  u32 tmp___2 ;
  {
  tmp = lowmem_page_address((struct page const *)rxb->page);
  pkt = (struct il_rx_pkt *)tmp;
  beacon = (struct il4965_beacon_notif *)(& pkt->u.raw);
  tmp___0 = il4965_hw_get_rate(beacon->beacon_notify_hdr.rate_n_flags);
  rate = tmp___0;
  tmp___2 = il_get_debug_level(il);
  if ((tmp___2 & 16777216U) != 0U) {
    tmp___1 = preempt_count();
    dev_err((struct device const *)(& ((il->hw)->wiphy)->dev), "%c %s beacon status %x retries %d iss %d tsf:0x%.8x%.8x rate %d\n",
            ((unsigned long )tmp___1 & 2096896UL) != 0UL ? 73 : 85, "il4965_hdl_beacon",
            beacon->beacon_notify_hdr.u.status & 255U, (int )beacon->beacon_notify_hdr.failure_frame,
            beacon->ibss_mgr_status, beacon->high_tsf, beacon->low_tsf, (int )rate);
  } else {
  }
  il->ibss_manager = beacon->ibss_mgr_status;
  return;
}
}
static void il4965_perform_ct_kill_task(struct il_priv *il )
{
  unsigned long flags ;
  int tmp ;
  u32 tmp___0 ;
  bool tmp___1 ;
  long tmp___2 ;
  {
  tmp___0 = il_get_debug_level(il);
  if ((tmp___0 & 256U) != 0U) {
    tmp = preempt_count();
    dev_err((struct device const *)(& ((il->hw)->wiphy)->dev), "%c %s Stop all queues\n",
            ((unsigned long )tmp & 2096896UL) != 0UL ? 73 : 85, "il4965_perform_ct_kill_task");
  } else {
  }
  if ((unsigned int )il->mac80211_registered != 0U) {
    ieee80211_stop_queues(il->hw);
  } else {
  }
  _il_wr(il, 88U, 8U);
  _il_rd(il, 84U);
  ldv_spin_lock();
  tmp___1 = _il_grab_nic_access(il);
  tmp___2 = ldv__builtin_expect((long )tmp___1, 1L);
  if (tmp___2 != 0L) {
    _il_release_nic_access(il);
  } else {
  }
  spin_unlock_irqrestore(& il->reg_lock, flags);
  return;
}
}
static void il4965_hdl_card_state(struct il_priv *il , struct il_rx_buf *rxb )
{
  struct il_rx_pkt *pkt ;
  void *tmp ;
  u32 flags ;
  unsigned long status ;
  int tmp___0 ;
  u32 tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  int tmp___4 ;
  {
  tmp = lowmem_page_address((struct page const *)rxb->page);
  pkt = (struct il_rx_pkt *)tmp;
  flags = pkt->u.card_state_notif.flags;
  status = il->status;
  tmp___1 = il_get_debug_level(il);
  if ((tmp___1 & 131072U) != 0U) {
    tmp___0 = preempt_count();
    dev_err((struct device const *)(& ((il->hw)->wiphy)->dev), "%c %s Card state received: HW:%s SW:%s CT:%s\n",
            ((unsigned long )tmp___0 & 2096896UL) != 0UL ? 73 : 85, "il4965_hdl_card_state",
            (int )flags & 1 ? (char *)"Kill" : (char *)"On", (flags & 2U) != 0U ? (char *)"Kill" : (char *)"On",
            (flags & 4U) != 0U ? (char *)"Reached" : (char *)"Not reached");
  } else {
  }
  if ((flags & 7U) != 0U) {
    _il_wr(il, 88U, 4U);
    il_wr___0(il, 1072U, 4U);
    if ((flags & 16U) == 0U) {
      _il_wr(il, 92U, 4U);
      il_wr___0(il, 1072U, 4U);
    } else {
    }
  } else {
  }
  if ((flags & 4U) != 0U) {
    il4965_perform_ct_kill_task(il);
  } else {
  }
  if ((int )flags & 1) {
    set_bit(3L, (unsigned long volatile *)(& il->status));
  } else {
    clear_bit(3L, (unsigned long volatile *)(& il->status));
  }
  if ((flags & 16U) == 0U) {
    il_scan_cancel(il);
  } else {
  }
  tmp___3 = constant_test_bit(3L, (unsigned long const volatile *)(& status));
  tmp___4 = constant_test_bit(3L, (unsigned long const volatile *)(& il->status));
  if (tmp___3 != tmp___4) {
    tmp___2 = constant_test_bit(3L, (unsigned long const volatile *)(& il->status));
    wiphy_rfkill_set_hw_state((il->hw)->wiphy, tmp___2 != 0);
  } else {
    __wake_up(& il->wait_command_queue, 3U, 1, (void *)0);
  }
  return;
}
}
static void il4965_setup_handlers(struct il_priv *il )
{
  {
  il->handlers[1] = & il4965_hdl_alive;
  il->handlers[2] = & il_hdl_error;
  il->handlers[115] = & il_hdl_csa;
  il->handlers[117] = & il_hdl_spectrum_measurement;
  il->handlers[122] = & il_hdl_pm_sleep;
  il->handlers[123] = & il_hdl_pm_debug_stats;
  il->handlers[144] = & il4965_hdl_beacon;
  il->handlers[156] = & il4965_hdl_c_stats;
  il->handlers[157] = & il4965_hdl_stats;
  il_setup_rx_scan_handlers(il);
  il->handlers[161] = & il4965_hdl_card_state;
  il->handlers[162] = & il4965_hdl_missed_beacon;
  il->handlers[192] = & il4965_hdl_rx_phy;
  il->handlers[193] = & il4965_hdl_rx;
  il->handlers[195] = & il4965_hdl_rx;
  il->handlers[197] = & il4965_hdl_compressed_ba;
  il->handlers[28] = & il4965_hdl_tx;
  return;
}
}
void il4965_rx_handle(struct il_priv *il )
{
  struct il_rx_buf *rxb ;
  struct il_rx_pkt *pkt ;
  struct il_rx_queue *rxq ;
  u32 r ;
  u32 i ;
  int reclaim ;
  unsigned long flags ;
  u8 fill_rx ;
  u32 count ;
  int total_empty ;
  int tmp ;
  u32 tmp___0 ;
  int len ;
  long tmp___1 ;
  void *tmp___2 ;
  bool tmp___3 ;
  char const *tmp___4 ;
  int tmp___5 ;
  u32 tmp___6 ;
  char const *tmp___7 ;
  int tmp___8 ;
  u32 tmp___9 ;
  int tmp___10 ;
  long tmp___11 ;
  {
  rxq = & il->rxq;
  fill_rx = 0U;
  count = 8U;
  r = (u32 )(rxq->rb_stts)->closed_rb_num & 4095U;
  i = rxq->read;
  if (i == r) {
    tmp___0 = il_get_debug_level(il);
    if ((tmp___0 & 16777216U) != 0U) {
      tmp = preempt_count();
      dev_err((struct device const *)(& ((il->hw)->wiphy)->dev), "%c %s r = %d, i = %d\n",
              ((unsigned long )tmp & 2096896UL) != 0UL ? 73 : 85, "il4965_rx_handle",
              r, i);
    } else {
    }
  } else {
  }
  total_empty = (int )(r - rxq->write_actual);
  if (total_empty < 0) {
    total_empty = total_empty + 256;
  } else {
  }
  if (total_empty > 128) {
    fill_rx = 1U;
  } else {
  }
  goto ldv_55615;
  ldv_55614:
  rxb = rxq->queue[i];
  tmp___1 = ldv__builtin_expect((unsigned long )rxb == (unsigned long )((struct il_rx_buf *)0),
                             0L);
  if (tmp___1 != 0L) {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/11700/dscv_tempdir/dscv/ri/43_2a/drivers/net/wireless/iwlegacy/4965-mac.c"),
                         "i" (4264), "i" (12UL));
    ldv_55613: ;
    goto ldv_55613;
  } else {
  }
  rxq->queue[i] = (struct il_rx_buf *)0;
  pci_unmap_page(il->pci_dev, rxb->page_dma, 4096UL << (int )il->hw_params.rx_page_order,
                 2);
  tmp___2 = lowmem_page_address((struct page const *)rxb->page);
  pkt = (struct il_rx_pkt *)tmp___2;
  len = (int )pkt->len_n_flags & 16383;
  len = (int )((unsigned int )len + 4U);
  tmp___3 = il_need_reclaim(il, pkt);
  reclaim = (int )tmp___3;
  if ((unsigned long )il->handlers[(int )pkt->hdr.cmd] != (unsigned long )((void (*)(struct il_priv * ,
                                                                                     struct il_rx_buf * ))0)) {
    tmp___6 = il_get_debug_level(il);
    if ((tmp___6 & 16777216U) != 0U) {
      tmp___4 = il_get_cmd_string((int )pkt->hdr.cmd);
      tmp___5 = preempt_count();
      dev_err((struct device const *)(& ((il->hw)->wiphy)->dev), "%c %s r = %d, i = %d, %s, 0x%02x\n",
              ((unsigned long )tmp___5 & 2096896UL) != 0UL ? 73 : 85, "il4965_rx_handle",
              r, i, tmp___4, (int )pkt->hdr.cmd);
    } else {
    }
    il->isr_stats.handlers[(int )pkt->hdr.cmd] = il->isr_stats.handlers[(int )pkt->hdr.cmd] + 1U;
    (*(il->handlers[(int )pkt->hdr.cmd]))(il, rxb);
  } else {
    tmp___9 = il_get_debug_level(il);
    if ((tmp___9 & 16777216U) != 0U) {
      tmp___7 = il_get_cmd_string((int )pkt->hdr.cmd);
      tmp___8 = preempt_count();
      dev_err((struct device const *)(& ((il->hw)->wiphy)->dev), "%c %s r %d i %d No handler needed for %s, 0x%02x\n",
              ((unsigned long )tmp___8 & 2096896UL) != 0UL ? 73 : 85, "il4965_rx_handle",
              r, i, tmp___7, (int )pkt->hdr.cmd);
    } else {
    }
  }
  if (reclaim != 0) {
    if ((unsigned long )rxb->page != (unsigned long )((struct page *)0)) {
      il_tx_cmd_complete(il, rxb);
    } else {
      dev_warn((struct device const *)(& (il->pci_dev)->dev), "Claim null rxb?\n");
    }
  } else {
  }
  ldv_spin_lock();
  if ((unsigned long )rxb->page != (unsigned long )((struct page *)0)) {
    rxb->page_dma = pci_map_page(il->pci_dev, rxb->page, 0UL, 4096UL << (int )il->hw_params.rx_page_order,
                                 2);
    tmp___10 = pci_dma_mapping_error(il->pci_dev, rxb->page_dma);
    tmp___11 = ldv__builtin_expect(tmp___10 != 0, 0L);
    if (tmp___11 != 0L) {
      __il_free_pages(il, rxb->page);
      rxb->page = (struct page *)0;
      list_add_tail(& rxb->list, & rxq->rx_used);
    } else {
      list_add_tail(& rxb->list, & rxq->rx_free);
      rxq->free_count = rxq->free_count + 1U;
    }
  } else {
    list_add_tail(& rxb->list, & rxq->rx_used);
  }
  spin_unlock_irqrestore(& rxq->lock, flags);
  i = (i + 1U) & 255U;
  if ((unsigned int )fill_rx != 0U) {
    count = count + 1U;
    if (count > 7U) {
      rxq->read = i;
      il4965_rx_replenish_now(il);
      count = 0U;
    } else {
    }
  } else {
  }
  ldv_55615: ;
  if (i != r) {
    goto ldv_55614;
  } else {
  }
  rxq->read = i;
  if ((unsigned int )fill_rx != 0U) {
    il4965_rx_replenish_now(il);
  } else {
    il4965_rx_queue_restock(il);
  }
  return;
}
}
__inline static void il4965_synchronize_irq(struct il_priv *il )
{
  {
  synchronize_irq((il->pci_dev)->irq);
  tasklet_kill(& il->irq_tasklet);
  return;
}
}
static void il4965_irq_tasklet(struct il_priv *il )
{
  u32 inta ;
  u32 handled ;
  u32 inta_fh ;
  unsigned long flags ;
  u32 i ;
  u32 inta_mask ;
  int tmp ;
  u32 tmp___0 ;
  u32 tmp___1 ;
  int tmp___2 ;
  u32 tmp___3 ;
  int tmp___4 ;
  u32 tmp___5 ;
  u32 tmp___6 ;
  int hw_rf_kill ;
  u32 tmp___7 ;
  int tmp___8 ;
  u32 tmp___9 ;
  int tmp___10 ;
  u32 tmp___11 ;
  int tmp___12 ;
  int tmp___13 ;
  u32 tmp___14 ;
  u32 tmp___15 ;
  {
  handled = 0U;
  ldv_spin_lock();
  inta = _il_rd(il, 8U);
  _il_wr(il, 8U, inta);
  inta_fh = _il_rd(il, 16U);
  _il_wr(il, 16U, inta_fh);
  tmp___1 = il_get_debug_level(il);
  if ((tmp___1 & 33554432U) != 0U) {
    inta_mask = _il_rd(il, 12U);
    tmp___0 = il_get_debug_level(il);
    if ((tmp___0 & 33554432U) != 0U) {
      tmp = preempt_count();
      dev_err((struct device const *)(& ((il->hw)->wiphy)->dev), "%c %s inta 0x%08x, enabled 0x%08x, fh 0x%08x\n",
              ((unsigned long )tmp & 2096896UL) != 0UL ? 73 : 85, "il4965_irq_tasklet",
              inta, inta_mask, inta_fh);
    } else {
    }
  } else {
  }
  spin_unlock_irqrestore(& il->lock, flags);
  if ((inta_fh & 1073938432U) != 0U) {
    inta = inta | 2147483648U;
  } else {
  }
  if ((inta_fh & 3U) != 0U) {
    inta = inta | 134217728U;
  } else {
  }
  if ((inta & 536870912U) != 0U) {
    dev_err((struct device const *)(& (il->pci_dev)->dev), "Hardware error detected.  Restarting.\n");
    il_disable_interrupts(il);
    il->isr_stats.hw = il->isr_stats.hw + 1U;
    il_irq_handle_error(il);
    handled = handled | 536870912U;
    return;
  } else {
  }
  tmp___6 = il_get_debug_level(il);
  if ((tmp___6 & 33554432U) != 0U) {
    if ((inta & 67108864U) != 0U) {
      tmp___3 = il_get_debug_level(il);
      if ((tmp___3 & 33554432U) != 0U) {
        tmp___2 = preempt_count();
        dev_err((struct device const *)(& ((il->hw)->wiphy)->dev), "%c %s Scheduler finished to transmit the frame/frames.\n",
                ((unsigned long )tmp___2 & 2096896UL) != 0UL ? 73 : 85, "il4965_irq_tasklet");
      } else {
      }
      il->isr_stats.sch = il->isr_stats.sch + 1U;
    } else {
    }
    if ((int )inta & 1) {
      tmp___5 = il_get_debug_level(il);
      if ((tmp___5 & 33554432U) != 0U) {
        tmp___4 = preempt_count();
        dev_err((struct device const *)(& ((il->hw)->wiphy)->dev), "%c %s Alive interrupt\n",
                ((unsigned long )tmp___4 & 2096896UL) != 0UL ? 73 : 85, "il4965_irq_tasklet");
      } else {
      }
      il->isr_stats.alive = il->isr_stats.alive + 1U;
    } else {
    }
  } else {
  }
  inta = inta & 4227858430U;
  if ((inta & 128U) != 0U) {
    hw_rf_kill = 0;
    tmp___7 = _il_rd(il, 36U);
    if ((tmp___7 & 134217728U) == 0U) {
      hw_rf_kill = 1;
    } else {
    }
    dev_warn((struct device const *)(& (il->pci_dev)->dev), "RF_KILL bit toggled to %s.\n",
             hw_rf_kill != 0 ? (char *)"disable radio" : (char *)"enable radio");
    il->isr_stats.rfkill = il->isr_stats.rfkill + 1U;
    if (hw_rf_kill != 0) {
      set_bit(3L, (unsigned long volatile *)(& il->status));
    } else {
      clear_bit(3L, (unsigned long volatile *)(& il->status));
      il_force_reset(il, 1);
    }
    wiphy_rfkill_set_hw_state((il->hw)->wiphy, hw_rf_kill != 0);
    handled = handled | 128U;
  } else {
  }
  if ((inta & 64U) != 0U) {
    dev_err((struct device const *)(& (il->pci_dev)->dev), "Microcode CT kill error detected.\n");
    il->isr_stats.ctkill = il->isr_stats.ctkill + 1U;
    handled = handled | 64U;
  } else {
  }
  if ((inta & 33554432U) != 0U) {
    dev_err((struct device const *)(& (il->pci_dev)->dev), "Microcode SW error detected.  Restarting 0x%X.\n",
            inta);
    il->isr_stats.sw = il->isr_stats.sw + 1U;
    il_irq_handle_error(il);
    handled = handled | 33554432U;
  } else {
  }
  if ((inta & 2U) != 0U) {
    tmp___9 = il_get_debug_level(il);
    if ((tmp___9 & 33554432U) != 0U) {
      tmp___8 = preempt_count();
      dev_err((struct device const *)(& ((il->hw)->wiphy)->dev), "%c %s Wakeup interrupt\n",
              ((unsigned long )tmp___8 & 2096896UL) != 0UL ? 73 : 85, "il4965_irq_tasklet");
    } else {
    }
    il_rx_queue_update_write_ptr(il, & il->rxq);
    i = 0U;
    goto ldv_55632;
    ldv_55631:
    il_txq_update_write_ptr(il, il->txq + (unsigned long )i);
    i = i + 1U;
    ldv_55632: ;
    if ((u32 )il->hw_params.max_txq_num > i) {
      goto ldv_55631;
    } else {
    }
    il->isr_stats.wakeup = il->isr_stats.wakeup + 1U;
    handled = handled | 2U;
  } else {
  }
  if ((inta & 2147483656U) != 0U) {
    il4965_rx_handle(il);
    il->isr_stats.rx = il->isr_stats.rx + 1U;
    handled = handled | 2147483656U;
  } else {
  }
  if ((inta & 134217728U) != 0U) {
    tmp___11 = il_get_debug_level(il);
    if ((tmp___11 & 33554432U) != 0U) {
      tmp___10 = preempt_count();
      dev_err((struct device const *)(& ((il->hw)->wiphy)->dev), "%c %s uCode load interrupt\n",
              ((unsigned long )tmp___10 & 2096896UL) != 0UL ? 73 : 85, "il4965_irq_tasklet");
    } else {
    }
    il->isr_stats.tx = il->isr_stats.tx + 1U;
    handled = handled | 134217728U;
    il->ucode_write_complete = 1U;
    __wake_up(& il->wait_command_queue, 3U, 1, (void *)0);
  } else {
  }
  if ((~ handled & inta) != 0U) {
    dev_err((struct device const *)(& (il->pci_dev)->dev), "Unhandled INTA bits 0x%08x\n",
            ~ handled & inta);
    il->isr_stats.unhandled = il->isr_stats.unhandled + 1U;
  } else {
  }
  if ((~ il->inta_mask & inta) != 0U) {
    dev_warn((struct device const *)(& (il->pci_dev)->dev), "Disabled INTA bits 0x%08x were pending\n",
             ~ il->inta_mask & inta);
    dev_warn((struct device const *)(& (il->pci_dev)->dev), "   with FH49_INT = 0x%08x\n",
             inta_fh);
  } else {
  }
  tmp___12 = constant_test_bit(2L, (unsigned long const volatile *)(& il->status));
  if (tmp___12 != 0) {
    il_enable_interrupts(il);
  } else
  if ((handled & 128U) != 0U) {
    il_enable_rfkill_int(il);
  } else {
  }
  tmp___15 = il_get_debug_level(il);
  if ((tmp___15 & 33554432U) != 0U) {
    inta = _il_rd(il, 8U);
    inta_mask = _il_rd(il, 12U);
    inta_fh = _il_rd(il, 16U);
    tmp___14 = il_get_debug_level(il);
    if ((tmp___14 & 33554432U) != 0U) {
      tmp___13 = preempt_count();
      dev_err((struct device const *)(& ((il->hw)->wiphy)->dev), "%c %s End inta 0x%08x, enabled 0x%08x, fh 0x%08x, flags 0x%08lx\n",
              ((unsigned long )tmp___13 & 2096896UL) != 0UL ? 73 : 85, "il4965_irq_tasklet",
              inta, inta_mask, inta_fh, flags);
    } else {
    }
  } else {
  }
  return;
}
}
static ssize_t il4965_show_debug_level(struct device *d , struct device_attribute *attr ,
                                       char *buf )
{
  struct il_priv *il ;
  void *tmp ;
  u32 tmp___0 ;
  int tmp___1 ;
  {
  tmp = dev_get_drvdata((struct device const *)d);
  il = (struct il_priv *)tmp;
  tmp___0 = il_get_debug_level(il);
  tmp___1 = sprintf(buf, "0x%08X\n", tmp___0);
  return ((ssize_t )tmp___1);
}
}
static ssize_t il4965_store_debug_level(struct device *d , struct device_attribute *attr ,
                                        char const *buf , size_t count )
{
  struct il_priv *il ;
  void *tmp ;
  unsigned long val ;
  int ret ;
  __kernel_size_t tmp___0 ;
  {
  tmp = dev_get_drvdata((struct device const *)d);
  il = (struct il_priv *)tmp;
  ret = kstrtoul(buf, 0U, & val);
  if (ret != 0) {
    dev_err((struct device const *)(& (il->pci_dev)->dev), "%s is not in hex or decimal form.\n",
            buf);
  } else {
    il->debug_level = (u32 )val;
  }
  tmp___0 = strnlen(buf, count);
  return ((ssize_t )tmp___0);
}
}
static struct device_attribute dev_attr_debug_level = {{"debug_level", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                         {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
    & il4965_show_debug_level, & il4965_store_debug_level};
static ssize_t il4965_show_temperature(struct device *d , struct device_attribute *attr ,
                                       char *buf )
{
  struct il_priv *il ;
  void *tmp ;
  int tmp___0 ;
  int tmp___1 ;
  {
  tmp = dev_get_drvdata((struct device const *)d);
  il = (struct il_priv *)tmp;
  tmp___0 = il_is_alive(il);
  if (tmp___0 == 0) {
    return (-11L);
  } else {
  }
  tmp___1 = sprintf(buf, "%d\n", il->temperature);
  return ((ssize_t )tmp___1);
}
}
static struct device_attribute dev_attr_temperature = {{"temperature", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                         {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
    & il4965_show_temperature, (ssize_t (*)(struct device * , struct device_attribute * ,
                                            char const * , size_t ))0};
static ssize_t il4965_show_tx_power(struct device *d , struct device_attribute *attr ,
                                    char *buf )
{
  struct il_priv *il ;
  void *tmp ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  {
  tmp = dev_get_drvdata((struct device const *)d);
  il = (struct il_priv *)tmp;
  tmp___2 = il_is_ready_rf(il);
  if (tmp___2 == 0) {
    tmp___0 = sprintf(buf, "off\n");
    return ((ssize_t )tmp___0);
  } else {
    tmp___1 = sprintf(buf, "%d\n", (int )il->tx_power_user_lmt);
    return ((ssize_t )tmp___1);
  }
}
}
static ssize_t il4965_store_tx_power(struct device *d , struct device_attribute *attr ,
                                     char const *buf , size_t count )
{
  struct il_priv *il ;
  void *tmp ;
  unsigned long val ;
  int ret ;
  {
  tmp = dev_get_drvdata((struct device const *)d);
  il = (struct il_priv *)tmp;
  ret = kstrtoul(buf, 10U, & val);
  if (ret != 0) {
    _dev_info((struct device const *)(& (il->pci_dev)->dev), "%s is not in decimal form.\n",
              buf);
  } else {
    ret = il_set_tx_power(il, (int )((s8 )val), 0);
    if (ret != 0) {
      dev_err((struct device const *)(& (il->pci_dev)->dev), "failed setting tx power (0x%08x).\n",
              ret);
    } else {
      ret = (int )count;
    }
  }
  return ((ssize_t )ret);
}
}
static struct device_attribute dev_attr_tx_power = {{"tx_power", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                      {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
    & il4965_show_tx_power, & il4965_store_tx_power};
static struct attribute *il_sysfs_entries[4U] = { & dev_attr_temperature.attr, & dev_attr_tx_power.attr, & dev_attr_debug_level.attr, (struct attribute *)0};
static struct attribute_group il_attribute_group = {(char const *)0, 0, (struct attribute **)(& il_sysfs_entries), 0};
static void il4965_dealloc_ucode_pci(struct il_priv *il )
{
  {
  il_free_fw_desc(il->pci_dev, & il->ucode_code);
  il_free_fw_desc(il->pci_dev, & il->ucode_data);
  il_free_fw_desc(il->pci_dev, & il->ucode_data_backup);
  il_free_fw_desc(il->pci_dev, & il->ucode_init);
  il_free_fw_desc(il->pci_dev, & il->ucode_init_data);
  il_free_fw_desc(il->pci_dev, & il->ucode_boot);
  return;
}
}
static void il4965_nic_start(struct il_priv *il )
{
  {
  _il_wr(il, 32U, 0U);
  return;
}
}
static void il4965_ucode_callback(struct firmware const *ucode_raw , void *context ) ;
static int il4965_mac_setup_register(struct il_priv *il , u32 max_probe_length ) ;
static int il4965_request_firmware(struct il_priv *il , bool first )
{
  char const *name_pre ;
  char tag[8U] ;
  int tmp ;
  u32 tmp___0 ;
  int tmp___1 ;
  {
  name_pre = (il->cfg)->fw_name_pre;
  if ((int )first) {
    il->fw_idx = (int )(il->cfg)->ucode_api_max;
    sprintf((char *)(& tag), "%d", il->fw_idx);
  } else {
    il->fw_idx = il->fw_idx - 1;
    sprintf((char *)(& tag), "%d", il->fw_idx);
  }
  if ((unsigned int )il->fw_idx < (unsigned int )(il->cfg)->ucode_api_min) {
    dev_err((struct device const *)(& (il->pci_dev)->dev), "no suitable firmware found!\n");
    return (-2);
  } else {
  }
  sprintf((char *)(& il->firmware_name), "%s%s%s", name_pre, (char *)(& tag), (char *)".ucode");
  tmp___0 = il_get_debug_level(il);
  if ((int )tmp___0 & 1) {
    tmp = preempt_count();
    dev_err((struct device const *)(& ((il->hw)->wiphy)->dev), "%c %s attempting to load firmware \'%s\'\n",
            ((unsigned long )tmp & 2096896UL) != 0UL ? 73 : 85, "il4965_request_firmware",
            (char *)(& il->firmware_name));
  } else {
  }
  tmp___1 = request_firmware_nowait(& __this_module, 1, (char const *)(& il->firmware_name),
                                    & (il->pci_dev)->dev, 208U, (void *)il, & il4965_ucode_callback);
  return (tmp___1);
}
}
static int il4965_load_firmware(struct il_priv *il , struct firmware const *ucode_raw ,
                                struct il4965_firmware_pieces *pieces )
{
  struct il_ucode_header *ucode ;
  u32 api_ver ;
  u32 hdr_size ;
  u8 const *src ;
  {
  ucode = (struct il_ucode_header *)ucode_raw->data;
  il->ucode_ver = ucode->ver;
  api_ver = (il->ucode_ver & 65280U) >> 8;
  switch (api_ver) {
  default: ;
  case 0U: ;
  case 1U: ;
  case 2U:
  hdr_size = 24U;
  if ((unsigned long )ucode_raw->size < (unsigned long )hdr_size) {
    dev_err((struct device const *)(& (il->pci_dev)->dev), "File size too small!\n");
    return (-22);
  } else {
  }
  pieces->inst_size = (size_t )ucode->v1.inst_size;
  pieces->data_size = (size_t )ucode->v1.data_size;
  pieces->init_size = (size_t )ucode->v1.init_size;
  pieces->init_data_size = (size_t )ucode->v1.init_data_size;
  pieces->boot_size = (size_t )ucode->v1.boot_size;
  src = (u8 const *)(& ucode->v1.data);
  goto ldv_55754;
  }
  ldv_55754: ;
  if ((unsigned long )ucode_raw->size != (((((size_t )hdr_size + pieces->inst_size) + pieces->data_size) + pieces->init_size) + pieces->init_data_size) + pieces->boot_size) {
    dev_err((struct device const *)(& (il->pci_dev)->dev), "uCode file size %d does not match expected size\n",
            (int )ucode_raw->size);
    return (-22);
  } else {
  }
  pieces->inst = (void const *)src;
  src = src + pieces->inst_size;
  pieces->data = (void const *)src;
  src = src + pieces->data_size;
  pieces->init = (void const *)src;
  src = src + pieces->init_size;
  pieces->init_data = (void const *)src;
  src = src + pieces->init_data_size;
  pieces->boot = (void const *)src;
  src = src + pieces->boot_size;
  return (0);
}
}
static void il4965_ucode_callback(struct firmware const *ucode_raw , void *context )
{
  struct il_priv *il ;
  struct il_ucode_header *ucode ;
  int err ;
  struct il4965_firmware_pieces pieces ;
  unsigned int api_max ;
  unsigned int api_min ;
  u32 api_ver ;
  u32 max_probe_length ;
  u32 standard_phy_calibration_size ;
  int tmp ;
  u32 tmp___0 ;
  int tmp___1 ;
  u32 tmp___2 ;
  int tmp___3 ;
  u32 tmp___4 ;
  int tmp___5 ;
  u32 tmp___6 ;
  int tmp___7 ;
  u32 tmp___8 ;
  int tmp___9 ;
  u32 tmp___10 ;
  int tmp___11 ;
  u32 tmp___12 ;
  int tmp___13 ;
  u32 tmp___14 ;
  int tmp___15 ;
  u32 tmp___16 ;
  int tmp___17 ;
  u32 tmp___18 ;
  int tmp___19 ;
  u32 tmp___20 ;
  int tmp___21 ;
  u32 tmp___22 ;
  int tmp___23 ;
  u32 tmp___24 ;
  int tmp___25 ;
  {
  il = (struct il_priv *)context;
  api_max = (il->cfg)->ucode_api_max;
  api_min = (il->cfg)->ucode_api_min;
  max_probe_length = 200U;
  standard_phy_calibration_size = 18U;
  memset((void *)(& pieces), 0, 80UL);
  if ((unsigned long )ucode_raw == (unsigned long )((struct firmware const *)0)) {
    if ((unsigned int )il->fw_idx <= (unsigned int )(il->cfg)->ucode_api_max) {
      dev_err((struct device const *)(& (il->pci_dev)->dev), "request for firmware file \'%s\' failed.\n",
              (char *)(& il->firmware_name));
    } else {
    }
    goto try_again;
  } else {
  }
  tmp___0 = il_get_debug_level(il);
  if ((int )tmp___0 & 1) {
    tmp = preempt_count();
    dev_err((struct device const *)(& ((il->hw)->wiphy)->dev), "%c %s Loaded firmware file \'%s\' (%zd bytes).\n",
            ((unsigned long )tmp & 2096896UL) != 0UL ? 73 : 85, "il4965_ucode_callback",
            (char *)(& il->firmware_name), ucode_raw->size);
  } else {
  }
  if ((unsigned long )ucode_raw->size <= 3UL) {
    dev_err((struct device const *)(& (il->pci_dev)->dev), "File size way too small!\n");
    goto try_again;
  } else {
  }
  ucode = (struct il_ucode_header *)ucode_raw->data;
  err = il4965_load_firmware(il, ucode_raw, & pieces);
  if (err != 0) {
    goto try_again;
  } else {
  }
  api_ver = (il->ucode_ver & 65280U) >> 8;
  if (api_ver < api_min || api_ver > api_max) {
    dev_err((struct device const *)(& (il->pci_dev)->dev), "Driver unable to support your firmware API. Driver supports v%u, firmware is v%u.\n",
            api_max, api_ver);
    goto try_again;
  } else {
  }
  if (api_ver != api_max) {
    dev_err((struct device const *)(& (il->pci_dev)->dev), "Firmware has old API version. Expected v%u, got v%u. New firmware can be obtained from http://www.intellinuxwireless.org.\n",
            api_max, api_ver);
  } else {
  }
  _dev_info((struct device const *)(& (il->pci_dev)->dev), "loaded firmware version %u.%u.%u.%u\n",
            il->ucode_ver >> 24, (il->ucode_ver & 16711680U) >> 16, (il->ucode_ver & 65280U) >> 8,
            il->ucode_ver & 255U);
  snprintf((char *)(& ((il->hw)->wiphy)->fw_version), 32UL, "%u.%u.%u.%u", il->ucode_ver >> 24,
           (il->ucode_ver & 16711680U) >> 16, (il->ucode_ver & 65280U) >> 8, il->ucode_ver & 255U);
  tmp___2 = il_get_debug_level(il);
  if ((int )tmp___2 & 1) {
    tmp___1 = preempt_count();
    dev_err((struct device const *)(& ((il->hw)->wiphy)->dev), "%c %s f/w package hdr ucode version raw = 0x%x\n",
            ((unsigned long )tmp___1 & 2096896UL) != 0UL ? 73 : 85, "il4965_ucode_callback",
            il->ucode_ver);
  } else {
  }
  tmp___4 = il_get_debug_level(il);
  if ((int )tmp___4 & 1) {
    tmp___3 = preempt_count();
    dev_err((struct device const *)(& ((il->hw)->wiphy)->dev), "%c %s f/w package hdr runtime inst size = %Zd\n",
            ((unsigned long )tmp___3 & 2096896UL) != 0UL ? 73 : 85, "il4965_ucode_callback",
            pieces.inst_size);
  } else {
  }
  tmp___6 = il_get_debug_level(il);
  if ((int )tmp___6 & 1) {
    tmp___5 = preempt_count();
    dev_err((struct device const *)(& ((il->hw)->wiphy)->dev), "%c %s f/w package hdr runtime data size = %Zd\n",
            ((unsigned long )tmp___5 & 2096896UL) != 0UL ? 73 : 85, "il4965_ucode_callback",
            pieces.data_size);
  } else {
  }
  tmp___8 = il_get_debug_level(il);
  if ((int )tmp___8 & 1) {
    tmp___7 = preempt_count();
    dev_err((struct device const *)(& ((il->hw)->wiphy)->dev), "%c %s f/w package hdr init inst size = %Zd\n",
            ((unsigned long )tmp___7 & 2096896UL) != 0UL ? 73 : 85, "il4965_ucode_callback",
            pieces.init_size);
  } else {
  }
  tmp___10 = il_get_debug_level(il);
  if ((int )tmp___10 & 1) {
    tmp___9 = preempt_count();
    dev_err((struct device const *)(& ((il->hw)->wiphy)->dev), "%c %s f/w package hdr init data size = %Zd\n",
            ((unsigned long )tmp___9 & 2096896UL) != 0UL ? 73 : 85, "il4965_ucode_callback",
            pieces.init_data_size);
  } else {
  }
  tmp___12 = il_get_debug_level(il);
  if ((int )tmp___12 & 1) {
    tmp___11 = preempt_count();
    dev_err((struct device const *)(& ((il->hw)->wiphy)->dev), "%c %s f/w package hdr boot inst size = %Zd\n",
            ((unsigned long )tmp___11 & 2096896UL) != 0UL ? 73 : 85, "il4965_ucode_callback",
            pieces.boot_size);
  } else {
  }
  if (pieces.inst_size > (size_t )il->hw_params.max_inst_size) {
    dev_err((struct device const *)(& (il->pci_dev)->dev), "uCode instr len %Zd too large to fit in\n",
            pieces.inst_size);
    goto try_again;
  } else {
  }
  if (pieces.data_size > (size_t )il->hw_params.max_data_size) {
    dev_err((struct device const *)(& (il->pci_dev)->dev), "uCode data len %Zd too large to fit in\n",
            pieces.data_size);
    goto try_again;
  } else {
  }
  if (pieces.init_size > (size_t )il->hw_params.max_inst_size) {
    dev_err((struct device const *)(& (il->pci_dev)->dev), "uCode init instr len %Zd too large to fit in\n",
            pieces.init_size);
    goto try_again;
  } else {
  }
  if (pieces.init_data_size > (size_t )il->hw_params.max_data_size) {
    dev_err((struct device const *)(& (il->pci_dev)->dev), "uCode init data len %Zd too large to fit in\n",
            pieces.init_data_size);
    goto try_again;
  } else {
  }
  if (pieces.boot_size > (size_t )il->hw_params.max_bsm_size) {
    dev_err((struct device const *)(& (il->pci_dev)->dev), "uCode boot instr len %Zd too large to fit in\n",
            pieces.boot_size);
    goto try_again;
  } else {
  }
  il->ucode_code.len = (u32 )pieces.inst_size;
  il_alloc_fw_desc(il->pci_dev, & il->ucode_code);
  il->ucode_data.len = (u32 )pieces.data_size;
  il_alloc_fw_desc(il->pci_dev, & il->ucode_data);
  il->ucode_data_backup.len = (u32 )pieces.data_size;
  il_alloc_fw_desc(il->pci_dev, & il->ucode_data_backup);
  if (((unsigned long )il->ucode_code.v_addr == (unsigned long )((void *)0) || (unsigned long )il->ucode_data.v_addr == (unsigned long )((void *)0)) || (unsigned long )il->ucode_data_backup.v_addr == (unsigned long )((void *)0)) {
    goto err_pci_alloc;
  } else {
  }
  if (pieces.init_size != 0UL && pieces.init_data_size != 0UL) {
    il->ucode_init.len = (u32 )pieces.init_size;
    il_alloc_fw_desc(il->pci_dev, & il->ucode_init);
    il->ucode_init_data.len = (u32 )pieces.init_data_size;
    il_alloc_fw_desc(il->pci_dev, & il->ucode_init_data);
    if ((unsigned long )il->ucode_init.v_addr == (unsigned long )((void *)0) || (unsigned long )il->ucode_init_data.v_addr == (unsigned long )((void *)0)) {
      goto err_pci_alloc;
    } else {
    }
  } else {
  }
  if (pieces.boot_size != 0UL) {
    il->ucode_boot.len = (u32 )pieces.boot_size;
    il_alloc_fw_desc(il->pci_dev, & il->ucode_boot);
    if ((unsigned long )il->ucode_boot.v_addr == (unsigned long )((void *)0)) {
      goto err_pci_alloc;
    } else {
    }
  } else {
  }
  il->sta_key_max_num = 8U;
  tmp___14 = il_get_debug_level(il);
  if ((int )tmp___14 & 1) {
    tmp___13 = preempt_count();
    dev_err((struct device const *)(& ((il->hw)->wiphy)->dev), "%c %s Copying (but not loading) uCode instr len %Zd\n",
            ((unsigned long )tmp___13 & 2096896UL) != 0UL ? 73 : 85, "il4965_ucode_callback",
            pieces.inst_size);
  } else {
  }
  memcpy(il->ucode_code.v_addr, pieces.inst, pieces.inst_size);
  tmp___16 = il_get_debug_level(il);
  if ((int )tmp___16 & 1) {
    tmp___15 = preempt_count();
    dev_err((struct device const *)(& ((il->hw)->wiphy)->dev), "%c %s uCode instr buf vaddr = 0x%p, paddr = 0x%08x\n",
            ((unsigned long )tmp___15 & 2096896UL) != 0UL ? 73 : 85, "il4965_ucode_callback",
            il->ucode_code.v_addr, (unsigned int )il->ucode_code.p_addr);
  } else {
  }
  tmp___18 = il_get_debug_level(il);
  if ((int )tmp___18 & 1) {
    tmp___17 = preempt_count();
    dev_err((struct device const *)(& ((il->hw)->wiphy)->dev), "%c %s Copying (but not loading) uCode data len %Zd\n",
            ((unsigned long )tmp___17 & 2096896UL) != 0UL ? 73 : 85, "il4965_ucode_callback",
            pieces.data_size);
  } else {
  }
  memcpy(il->ucode_data.v_addr, pieces.data, pieces.data_size);
  memcpy(il->ucode_data_backup.v_addr, pieces.data, pieces.data_size);
  if (pieces.init_size != 0UL) {
    tmp___20 = il_get_debug_level(il);
    if ((int )tmp___20 & 1) {
      tmp___19 = preempt_count();
      dev_err((struct device const *)(& ((il->hw)->wiphy)->dev), "%c %s Copying (but not loading) init instr len %Zd\n",
              ((unsigned long )tmp___19 & 2096896UL) != 0UL ? 73 : 85, "il4965_ucode_callback",
              pieces.init_size);
    } else {
    }
    memcpy(il->ucode_init.v_addr, pieces.init, pieces.init_size);
  } else {
  }
  if (pieces.init_data_size != 0UL) {
    tmp___22 = il_get_debug_level(il);
    if ((int )tmp___22 & 1) {
      tmp___21 = preempt_count();
      dev_err((struct device const *)(& ((il->hw)->wiphy)->dev), "%c %s Copying (but not loading) init data len %Zd\n",
              ((unsigned long )tmp___21 & 2096896UL) != 0UL ? 73 : 85, "il4965_ucode_callback",
              pieces.init_data_size);
    } else {
    }
    memcpy(il->ucode_init_data.v_addr, pieces.init_data, pieces.init_data_size);
  } else {
  }
  tmp___24 = il_get_debug_level(il);
  if ((int )tmp___24 & 1) {
    tmp___23 = preempt_count();
    dev_err((struct device const *)(& ((il->hw)->wiphy)->dev), "%c %s Copying (but not loading) boot instr len %Zd\n",
            ((unsigned long )tmp___23 & 2096896UL) != 0UL ? 73 : 85, "il4965_ucode_callback",
            pieces.boot_size);
  } else {
  }
  memcpy(il->ucode_boot.v_addr, pieces.boot, pieces.boot_size);
  il->__annonCompField103._4965.phy_calib_chain_noise_reset_cmd = (u8 )standard_phy_calibration_size;
  il->__annonCompField103._4965.phy_calib_chain_noise_gain_cmd = (unsigned int )((u8 )standard_phy_calibration_size) + 1U;
  err = il4965_mac_setup_register(il, max_probe_length);
  if (err != 0) {
    goto out_unbind;
  } else {
  }
  err = il_dbgfs_register(il, "iwl4965");
  if (err != 0) {
    dev_err((struct device const *)(& (il->pci_dev)->dev), "failed to create debugfs files. Ignoring error: %d\n",
            err);
  } else {
  }
  err = sysfs_create_group(& (il->pci_dev)->dev.kobj, (struct attribute_group const *)(& il_attribute_group));
  if (err != 0) {
    dev_err((struct device const *)(& (il->pci_dev)->dev), "failed to create sysfs device attributes\n");
    goto out_unbind;
  } else {
  }
  release_firmware(ucode_raw);
  complete(& il->__annonCompField103._4965.firmware_loading_complete);
  return;
  try_again:
  tmp___25 = il4965_request_firmware(il, 0);
  if (tmp___25 != 0) {
    goto out_unbind;
  } else {
  }
  release_firmware(ucode_raw);
  return;
  err_pci_alloc:
  dev_err((struct device const *)(& (il->pci_dev)->dev), "failed to allocate pci memory\n");
  il4965_dealloc_ucode_pci(il);
  out_unbind:
  complete(& il->__annonCompField103._4965.firmware_loading_complete);
  device_release_driver(& (il->pci_dev)->dev);
  release_firmware(ucode_raw);
  return;
}
}
static char const * const desc_lookup_text[28U] =
  { "OK", "FAIL", "BAD_PARAM", "BAD_CHECKSUM",
        "NMI_INTERRUPT_WDG", "SYSASSERT", "FATAL_ERROR", "BAD_COMMAND",
        "HW_ERROR_TUNE_LOCK", "HW_ERROR_TEMPERATURE", "ILLEGAL_CHAN_FREQ", "VCC_NOT_STBL",
        "FH49_ERROR", "NMI_INTERRUPT_HOST", "NMI_INTERRUPT_ACTION_PT", "NMI_INTERRUPT_UNKNOWN",
        "UCODE_VERSION_MISMATCH", "HW_ERROR_ABS_LOCK", "HW_ERROR_CAL_LOCK_FAIL", "NMI_INTERRUPT_INST_ACTION_PT",
        "NMI_INTERRUPT_DATA_ACTION_PT", "NMI_TRM_HW_ER", "NMI_INTERRUPT_TRM", "NMI_INTERRUPT_BREAK_POINT",
        "DEBUG_0", "DEBUG_1", "DEBUG_2", "DEBUG_3"};
static struct __anonstruct_advanced_lookup_409 advanced_lookup[16U] =
  { {(char *)"NMI_INTERRUPT_WDG", 52U},
        {(char *)"SYSASSERT", 53U},
        {(char *)"UCODE_VERSION_MISMATCH", 55U},
        {(char *)"BAD_COMMAND", 56U},
        {(char *)"NMI_INTERRUPT_DATA_ACTION_PT", 60U},
        {(char *)"FATAL_ERROR", 61U},
        {(char *)"NMI_TRM_HW_ERR", 70U},
        {(char *)"NMI_INTERRUPT_TRM", 76U},
        {(char *)"NMI_INTERRUPT_BREAK_POINT", 84U},
        {(char *)"NMI_INTERRUPT_WDG_RXF_FULL", 92U},
        {(char *)"NMI_INTERRUPT_WDG_NO_RBD_RXF_FULL", 100U},
        {(char *)"NMI_INTERRUPT_HOST", 102U},
        {(char *)"NMI_INTERRUPT_ACTION_PT", 124U},
        {(char *)"NMI_INTERRUPT_UNKNOWN", 132U},
        {(char *)"NMI_INTERRUPT_INST_ACTION_PT", 134U},
        {(char *)"ADVANCED_SYSASSERT", 0U}};
static char const *il4965_desc_lookup(u32 num )
{
  int i ;
  int max ;
  {
  max = 28;
  if ((u32 )max > num) {
    return ((char const *)desc_lookup_text[num]);
  } else {
  }
  max = 15;
  i = 0;
  goto ldv_55788;
  ldv_55787: ;
  if ((u32 )advanced_lookup[i].num == num) {
    goto ldv_55786;
  } else {
  }
  i = i + 1;
  ldv_55788: ;
  if (i < max) {
    goto ldv_55787;
  } else {
  }
  ldv_55786: ;
  return ((char const *)advanced_lookup[i].name);
}
}
void il4965_dump_nic_error_log(struct il_priv *il )
{
  u32 data2 ;
  u32 line ;
  u32 desc ;
  u32 time ;
  u32 count ;
  u32 base ;
  u32 data1 ;
  u32 blink1 ;
  u32 blink2 ;
  u32 ilink1 ;
  u32 ilink2 ;
  u32 pc ;
  u32 hcmd ;
  int tmp ;
  char const *tmp___0 ;
  {
  if ((unsigned int )il->ucode_type == 1U) {
    base = il->card_alive_init.error_event_table_ptr;
  } else {
    base = il->card_alive.error_event_table_ptr;
  }
  tmp = (*((il->ops)->is_valid_rtc_data_addr))(base);
  if (tmp == 0) {
    dev_err((struct device const *)(& (il->pci_dev)->dev), "Not valid error log pointer 0x%08X for %s uCode\n",
            base, (unsigned int )il->ucode_type == 1U ? (char *)"Init" : (char *)"RT");
    return;
  } else {
  }
  count = il_read_targ_mem(il, base);
  if ((unsigned long )count * 28UL > 3UL) {
    dev_err((struct device const *)(& (il->pci_dev)->dev), "Start IWL Error Log Dump:\n");
    dev_err((struct device const *)(& (il->pci_dev)->dev), "Status: 0x%08lX, count: %d\n",
            il->status, count);
  } else {
  }
  desc = il_read_targ_mem(il, base + 4U);
  il->isr_stats.err_code = desc;
  pc = il_read_targ_mem(il, base + 8U);
  blink1 = il_read_targ_mem(il, base + 12U);
  blink2 = il_read_targ_mem(il, base + 16U);
  ilink1 = il_read_targ_mem(il, base + 20U);
  ilink2 = il_read_targ_mem(il, base + 24U);
  data1 = il_read_targ_mem(il, base + 28U);
  data2 = il_read_targ_mem(il, base + 32U);
  line = il_read_targ_mem(il, base + 36U);
  time = il_read_targ_mem(il, base + 44U);
  hcmd = il_read_targ_mem(il, base + 88U);
  dev_err((struct device const *)(& (il->pci_dev)->dev), "Desc                                  Time       data1      data2      line\n");
  tmp___0 = il4965_desc_lookup(desc);
  dev_err((struct device const *)(& (il->pci_dev)->dev), "%-28s (0x%04X) %010u 0x%08X 0x%08X %u\n",
          tmp___0, desc, time, data1, data2, line);
  dev_err((struct device const *)(& (il->pci_dev)->dev), "pc      blink1  blink2  ilink1  ilink2  hcmd\n");
  dev_err((struct device const *)(& (il->pci_dev)->dev), "0x%05X 0x%05X 0x%05X 0x%05X 0x%05X 0x%05X\n",
          pc, blink1, blink2, ilink1, ilink2, hcmd);
  return;
}
}
static void il4965_rf_kill_ct_config(struct il_priv *il )
{
  struct il_ct_kill_config cmd ;
  unsigned long flags ;
  int ret ;
  int tmp ;
  u32 tmp___0 ;
  {
  ret = 0;
  ldv_spin_lock();
  _il_wr(il, 92U, 8U);
  spin_unlock_irqrestore(& il->lock, flags);
  cmd.critical_temperature_R = il->hw_params.ct_kill_threshold;
  ret = il_send_cmd_pdu(il, 164, 12, (void const *)(& cmd));
  if (ret != 0) {
    dev_err((struct device const *)(& (il->pci_dev)->dev), "C_CT_KILL_CONFIG failed\n");
  } else {
    tmp___0 = il_get_debug_level(il);
    if ((int )tmp___0 & 1) {
      tmp = preempt_count();
      dev_err((struct device const *)(& ((il->hw)->wiphy)->dev), "%c %s C_CT_KILL_CONFIG succeeded, critical temperature is %d\n",
              ((unsigned long )tmp & 2096896UL) != 0UL ? 73 : 85, "il4965_rf_kill_ct_config",
              il->hw_params.ct_kill_threshold);
    } else {
    }
  }
  return;
}
}
static s8 const default_queue_to_tx_fifo[7U] = { 3, 2, 1, 0,
        4, -1, -1};
static int il4965_alive_notify(struct il_priv *il )
{
  u32 a ;
  unsigned long flags ;
  int i ;
  int chan ;
  u32 reg_val ;
  int ac ;
  {
  ldv_spin_lock();
  il->scd_base_addr = il_rd_prph(il, 10497024U);
  a = il->scd_base_addr + 896U;
  goto ldv_55822;
  ldv_55821:
  il_write_targ_mem(il, a, 0U);
  a = a + 4U;
  ldv_55822: ;
  if (il->scd_base_addr + 1024U > a) {
    goto ldv_55821;
  } else {
  }
  goto ldv_55825;
  ldv_55824:
  il_write_targ_mem(il, a, 0U);
  a = a + 4U;
  ldv_55825: ;
  if (il->scd_base_addr + 1280U > a) {
    goto ldv_55824;
  } else {
  }
  goto ldv_55828;
  ldv_55827:
  il_write_targ_mem(il, a, 0U);
  a = a + 4U;
  ldv_55828: ;
  if (il->scd_base_addr + ((u32 )(((int )il->hw_params.max_txq_num + 640) * 2) & 4294967292U) > a) {
    goto ldv_55827;
  } else {
  }
  il_wr_prph(il, 10497040U, (u32 )(il->scd_bc_tbls.dma >> 10));
  chan = 0;
  goto ldv_55831;
  ldv_55830:
  il_wr___0(il, (u32 )((chan + 232) * 32), 2147483656U);
  chan = chan + 1;
  ldv_55831: ;
  if (chan <= 6) {
    goto ldv_55830;
  } else {
  }
  reg_val = il_rd(il, 7832U);
  il_wr___0(il, 7832U, reg_val | 2U);
  il_wr_prph(il, 10497232U, 0U);
  i = 0;
  goto ldv_55834;
  ldv_55833:
  il_wr_prph(il, (u32 )((i + 2624281) * 4), 0U);
  il_wr___0(il, 1120U, (u32 )(i << 8));
  il_write_targ_mem(il, il->scd_base_addr + (u32 )((i + 112) * 8), 64U);
  il_write_targ_mem(il, (il->scd_base_addr + (u32 )((i + 112) * 8)) + 4U, 4194304U);
  i = i + 1;
  ldv_55834: ;
  if ((int )il->hw_params.max_txq_num > i) {
    goto ldv_55833;
  } else {
  }
  il_wr_prph(il, 10497252U, (u32 )((1 << (int )il->hw_params.max_txq_num) + -1));
  il4965_txq_set_sched(il, 127U);
  il4965_set_wr_ptrs(il, 4, 0U);
  memset((void *)(& il->queue_stopped), 0, 8UL);
  i = 0;
  goto ldv_55837;
  ldv_55836:
  atomic_set((atomic_t *)(& il->queue_stop_count) + (unsigned long )i, 0);
  i = i + 1;
  ldv_55837: ;
  if (i <= 3) {
    goto ldv_55836;
  } else {
  }
  il->txq_ctx_active_msk = 0UL;
  i = 0;
  goto ldv_55844;
  ldv_55843:
  ac = (int )default_queue_to_tx_fifo[i];
  il_txq_ctx_activate(il, i);
  if (ac == -1) {
    goto ldv_55842;
  } else {
  }
  il4965_tx_queue_set_status(il, il->txq + (unsigned long )i, ac, 0);
  ldv_55842:
  i = i + 1;
  ldv_55844: ;
  if ((unsigned int )i <= 6U) {
    goto ldv_55843;
  } else {
  }
  spin_unlock_irqrestore(& il->lock, flags);
  return (0);
}
}
static void il4965_alive_start(struct il_priv *il )
{
  int ret ;
  int tmp ;
  u32 tmp___0 ;
  int tmp___1 ;
  u32 tmp___2 ;
  int tmp___3 ;
  u32 tmp___4 ;
  int tmp___5 ;
  int tmp___6 ;
  int tmp___7 ;
  u32 tmp___8 ;
  struct il_rxon_cmd *active_rxon ;
  int tmp___9 ;
  int tmp___10 ;
  u32 tmp___11 ;
  {
  ret = 0;
  tmp___0 = il_get_debug_level(il);
  if ((int )tmp___0 & 1) {
    tmp = preempt_count();
    dev_err((struct device const *)(& ((il->hw)->wiphy)->dev), "%c %s Runtime Alive received.\n",
            ((unsigned long )tmp & 2096896UL) != 0UL ? 73 : 85, "il4965_alive_start");
  } else {
  }
  if (il->card_alive.is_valid != 1U) {
    tmp___2 = il_get_debug_level(il);
    if ((int )tmp___2 & 1) {
      tmp___1 = preempt_count();
      dev_err((struct device const *)(& ((il->hw)->wiphy)->dev), "%c %s Alive failed.\n",
              ((unsigned long )tmp___1 & 2096896UL) != 0UL ? 73 : 85, "il4965_alive_start");
    } else {
    }
    goto restart;
  } else {
  }
  tmp___5 = il4965_verify_ucode(il);
  if (tmp___5 != 0) {
    tmp___4 = il_get_debug_level(il);
    if ((int )tmp___4 & 1) {
      tmp___3 = preempt_count();
      dev_err((struct device const *)(& ((il->hw)->wiphy)->dev), "%c %s Bad runtime uCode load.\n",
              ((unsigned long )tmp___3 & 2096896UL) != 0UL ? 73 : 85, "il4965_alive_start");
    } else {
    }
    goto restart;
  } else {
  }
  ret = il4965_alive_notify(il);
  if (ret != 0) {
    dev_warn((struct device const *)(& (il->pci_dev)->dev), "Could not complete ALIVE transition [ntf]: %d\n",
             ret);
    goto restart;
  } else {
  }
  set_bit(6L, (unsigned long volatile *)(& il->status));
  il_setup_watchdog(il);
  tmp___6 = il_is_rfkill(il);
  if (tmp___6 != 0) {
    return;
  } else {
  }
  ieee80211_wake_queues(il->hw);
  il->active_rate = 8191U;
  il_power_update_mode(il, 1);
  tmp___8 = il_get_debug_level(il);
  if ((int )tmp___8 & 1) {
    tmp___7 = preempt_count();
    dev_err((struct device const *)(& ((il->hw)->wiphy)->dev), "%c %s Updated power mode\n",
            ((unsigned long )tmp___7 & 2096896UL) != 0UL ? 73 : 85, "il4965_alive_start");
  } else {
  }
  tmp___9 = il_is_associated(il);
  if (tmp___9 != 0) {
    active_rxon = (struct il_rxon_cmd *)(& il->active);
    il->staging.filter_flags = il->staging.filter_flags | 32U;
    active_rxon->filter_flags = active_rxon->filter_flags & 4294967263U;
  } else {
    il_connection_init_rx_config(il);
    if ((unsigned long )(il->ops)->set_rxon_chain != (unsigned long )((void (* )(struct il_priv * ))0)) {
      (*((il->ops)->set_rxon_chain))(il);
    } else {
    }
  }
  il_send_bt_config(il);
  il4965_reset_run_time_calib(il);
  set_bit(7L, (unsigned long volatile *)(& il->status));
  il_commit_rxon(il);
  il4965_rf_kill_ct_config(il);
  tmp___11 = il_get_debug_level(il);
  if ((int )tmp___11 & 1) {
    tmp___10 = preempt_count();
    dev_err((struct device const *)(& ((il->hw)->wiphy)->dev), "%c %s ALIVE processing complete.\n",
            ((unsigned long )tmp___10 & 2096896UL) != 0UL ? 73 : 85, "il4965_alive_start");
  } else {
  }
  __wake_up(& il->wait_command_queue, 3U, 1, (void *)0);
  return;
  restart:
  queue_work___0(il->workqueue, & il->restart);
  return;
}
}
static void il4965_cancel_deferred_work(struct il_priv *il ) ;
static void __il4965_down(struct il_priv *il )
{
  unsigned long flags ;
  int exit_pending ;
  int tmp ;
  u32 tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  int tmp___4 ;
  int tmp___5 ;
  int tmp___6 ;
  int tmp___7 ;
  int tmp___8 ;
  {
  tmp___0 = il_get_debug_level(il);
  if ((int )tmp___0 & 1) {
    tmp = preempt_count();
    dev_err((struct device const *)(& ((il->hw)->wiphy)->dev), "%c %s iwl4965 is going down\n",
            ((unsigned long )tmp & 2096896UL) != 0UL ? 73 : 85, "__il4965_down");
  } else {
  }
  il_scan_cancel_timeout(il, 200UL);
  exit_pending = test_and_set_bit(10L, (unsigned long volatile *)(& il->status));
  ldv_del_timer_sync_89(& il->watchdog);
  il_clear_ucode_stations(il);
  spin_lock_irq(& il->sta_lock);
  memset((void *)(& il->__annonCompField103._4965.wep_keys), 0, 96UL);
  il->__annonCompField103._4965.key_mapping_keys = 0U;
  spin_unlock_irq(& il->sta_lock);
  il_dealloc_bcast_stations(il);
  il_clear_driver_stations(il);
  __wake_up(& il->wait_command_queue, 3U, 0, (void *)0);
  if (exit_pending == 0) {
    clear_bit(10L, (unsigned long volatile *)(& il->status));
  } else {
  }
  _il_wr(il, 32U, 1U);
  ldv_spin_lock();
  il_disable_interrupts(il);
  spin_unlock_irqrestore(& il->lock, flags);
  il4965_synchronize_irq(il);
  if ((unsigned int )il->mac80211_registered != 0U) {
    ieee80211_stop_queues(il->hw);
  } else {
  }
  tmp___4 = il_is_init(il);
  if (tmp___4 == 0) {
    tmp___1 = constant_test_bit(3L, (unsigned long const volatile *)(& il->status));
    tmp___2 = constant_test_bit(9L, (unsigned long const volatile *)(& il->status));
    tmp___3 = constant_test_bit(10L, (unsigned long const volatile *)(& il->status));
    il->status = (unsigned long )(((tmp___1 << 3) | (tmp___2 << 9)) | (tmp___3 << 10));
    goto exit;
  } else {
  }
  tmp___5 = constant_test_bit(3L, (unsigned long const volatile *)(& il->status));
  tmp___6 = constant_test_bit(9L, (unsigned long const volatile *)(& il->status));
  tmp___7 = constant_test_bit(17L, (unsigned long const volatile *)(& il->status));
  tmp___8 = constant_test_bit(10L, (unsigned long const volatile *)(& il->status));
  il->status = il->status & (unsigned long )((((tmp___5 << 3) | (tmp___6 << 9)) | (tmp___7 << 17)) | (tmp___8 << 10));
  spin_lock_irq(& il->reg_lock);
  il4965_txq_ctx_stop(il);
  il4965_rxq_stop(il);
  _il_wr_prph(il, 12296U, 512U);
  __const_udelay(21475UL);
  _il_clear_bit(il, 36U, 8U);
  _il_apm_stop(il);
  spin_unlock_irq(& il->reg_lock);
  il4965_txq_ctx_unmap(il);
  exit:
  memset((void *)(& il->card_alive), 0, 32UL);
  consume_skb(il->beacon_skb);
  il->beacon_skb = (struct sk_buff *)0;
  il4965_clear_free_frames(il);
  return;
}
}
static void il4965_down(struct il_priv *il )
{
  {
  mutex_lock_nested(& il->mutex, 0U);
  __il4965_down(il);
  mutex_unlock(& il->mutex);
  il4965_cancel_deferred_work(il);
  return;
}
}
static void il4965_set_hw_ready(struct il_priv *il )
{
  int ret ;
  int tmp ;
  u32 tmp___0 ;
  {
  il_set_bit(il, 0U, 4194304U);
  ret = _il_poll_bit(il, 0U, 4194304U, 4194304U, 100);
  if (ret >= 0) {
    il->hw_ready = 1;
  } else {
  }
  tmp___0 = il_get_debug_level(il);
  if ((int )tmp___0 & 1) {
    tmp = preempt_count();
    dev_err((struct device const *)(& ((il->hw)->wiphy)->dev), "%c %s hardware %s ready\n",
            ((unsigned long )tmp & 2096896UL) != 0UL ? 73 : 85, "il4965_set_hw_ready",
            (int )il->hw_ready ? (char *)"" : (char *)"not");
  } else {
  }
  return;
}
}
static void il4965_prepare_card_hw(struct il_priv *il )
{
  int ret ;
  {
  il->hw_ready = 0;
  il4965_set_hw_ready(il);
  if ((int )il->hw_ready) {
    return;
  } else {
  }
  il_set_bit(il, 0U, 134217728U);
  ret = _il_poll_bit(il, 0U, 4261412863U, 33554432U, 150000);
  if (ret != -110) {
    il4965_set_hw_ready(il);
  } else {
  }
  return;
}
}
static int __il4965_up(struct il_priv *il )
{
  int i ;
  int ret ;
  int tmp ;
  u32 tmp___0 ;
  int tmp___1 ;
  u32 tmp___2 ;
  {
  tmp = constant_test_bit(10L, (unsigned long const volatile *)(& il->status));
  if (tmp != 0) {
    dev_warn((struct device const *)(& (il->pci_dev)->dev), "Exit pending; will not bring the NIC up\n");
    return (-5);
  } else {
  }
  if ((unsigned long )il->ucode_data_backup.v_addr == (unsigned long )((void *)0) || (unsigned long )il->ucode_data.v_addr == (unsigned long )((void *)0)) {
    dev_err((struct device const *)(& (il->pci_dev)->dev), "ucode not available for device bringup\n");
    return (-5);
  } else {
  }
  ret = il4965_alloc_bcast_station(il);
  if (ret != 0) {
    il_dealloc_bcast_stations(il);
    return (ret);
  } else {
  }
  il4965_prepare_card_hw(il);
  if (! il->hw_ready) {
    dev_err((struct device const *)(& (il->pci_dev)->dev), "HW not ready\n");
    return (-5);
  } else {
  }
  tmp___0 = _il_rd(il, 36U);
  if ((tmp___0 & 134217728U) != 0U) {
    clear_bit(3L, (unsigned long volatile *)(& il->status));
  } else {
    set_bit(3L, (unsigned long volatile *)(& il->status));
    wiphy_rfkill_set_hw_state((il->hw)->wiphy, 1);
    il_enable_rfkill_int(il);
    dev_warn((struct device const *)(& (il->pci_dev)->dev), "Radio disabled by HW RF Kill switch\n");
    return (0);
  }
  _il_wr(il, 8U, 4294967295U);
  il->cmd_queue = 4U;
  ret = il4965_hw_nic_init(il);
  if (ret != 0) {
    dev_err((struct device const *)(& (il->pci_dev)->dev), "Unable to init nic\n");
    return (ret);
  } else {
  }
  _il_wr(il, 92U, 2U);
  _il_wr(il, 92U, 4U);
  _il_wr(il, 8U, 4294967295U);
  il_enable_interrupts(il);
  _il_wr(il, 92U, 2U);
  _il_wr(il, 92U, 2U);
  memcpy(il->ucode_data_backup.v_addr, (void const *)il->ucode_data.v_addr, (size_t )il->ucode_data.len);
  i = 0;
  goto ldv_55882;
  ldv_55881:
  ret = (*((il->ops)->load_ucode))(il);
  if (ret != 0) {
    dev_err((struct device const *)(& (il->pci_dev)->dev), "Unable to set up bootstrap uCode: %d\n",
            ret);
    goto ldv_55879;
  } else {
  }
  il4965_nic_start(il);
  tmp___2 = il_get_debug_level(il);
  if ((int )tmp___2 & 1) {
    tmp___1 = preempt_count();
    dev_err((struct device const *)(& ((il->hw)->wiphy)->dev), "%c %s iwl4965 is coming up\n",
            ((unsigned long )tmp___1 & 2096896UL) != 0UL ? 73 : 85, "__il4965_up");
  } else {
  }
  return (0);
  ldv_55879:
  i = i + 1;
  ldv_55882: ;
  if (i <= 4) {
    goto ldv_55881;
  } else {
  }
  set_bit(10L, (unsigned long volatile *)(& il->status));
  __il4965_down(il);
  clear_bit(10L, (unsigned long volatile *)(& il->status));
  dev_err((struct device const *)(& (il->pci_dev)->dev), "Unable to initialize device after %d attempts.\n",
          i);
  return (-5);
}
}
static void il4965_bg_init_alive_start(struct work_struct *data )
{
  struct il_priv *il ;
  struct work_struct const *__mptr ;
  int tmp ;
  {
  __mptr = (struct work_struct const *)data;
  il = (struct il_priv *)__mptr + 0xffffffffffff7bd0UL;
  mutex_lock_nested(& il->mutex, 0U);
  tmp = constant_test_bit(10L, (unsigned long const volatile *)(& il->status));
  if (tmp != 0) {
    goto out;
  } else {
  }
  (*((il->ops)->init_alive_start))(il);
  out:
  mutex_unlock(& il->mutex);
  return;
}
}
static void il4965_bg_alive_start(struct work_struct *data )
{
  struct il_priv *il ;
  struct work_struct const *__mptr ;
  int tmp ;
  {
  __mptr = (struct work_struct const *)data;
  il = (struct il_priv *)__mptr + 0xffffffffffff7af0UL;
  mutex_lock_nested(& il->mutex, 0U);
  tmp = constant_test_bit(10L, (unsigned long const volatile *)(& il->status));
  if (tmp != 0) {
    goto out;
  } else {
  }
  il4965_alive_start(il);
  out:
  mutex_unlock(& il->mutex);
  return;
}
}
static void il4965_bg_run_time_calib_work(struct work_struct *work )
{
  struct il_priv *il ;
  struct work_struct const *__mptr ;
  int tmp ;
  int tmp___0 ;
  {
  __mptr = (struct work_struct const *)work;
  il = (struct il_priv *)__mptr + 0xffffffffffff7898UL;
  mutex_lock_nested(& il->mutex, 0U);
  tmp = constant_test_bit(10L, (unsigned long const volatile *)(& il->status));
  if (tmp != 0) {
    mutex_unlock(& il->mutex);
    return;
  } else {
    tmp___0 = constant_test_bit(13L, (unsigned long const volatile *)(& il->status));
    if (tmp___0 != 0) {
      mutex_unlock(& il->mutex);
      return;
    } else {
    }
  }
  if ((unsigned int )il->start_calib != 0U) {
    il4965_chain_noise_calibration(il, (void *)(& il->__annonCompField103._4965.stats));
    il4965_sensitivity_calibration(il, (void *)(& il->__annonCompField103._4965.stats));
  } else {
  }
  mutex_unlock(& il->mutex);
  return;
}
}
static void il4965_bg_restart(struct work_struct *data )
{
  struct il_priv *il ;
  struct work_struct const *__mptr ;
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  {
  __mptr = (struct work_struct const *)data;
  il = (struct il_priv *)__mptr + 0xffffffffffff7d98UL;
  tmp = constant_test_bit(10L, (unsigned long const volatile *)(& il->status));
  if (tmp != 0) {
    return;
  } else {
  }
  tmp___1 = test_and_clear_bit(17L, (unsigned long volatile *)(& il->status));
  if (tmp___1 != 0) {
    mutex_lock_nested(& il->mutex, 0U);
    il->is_open = 0U;
    __il4965_down(il);
    mutex_unlock(& il->mutex);
    il4965_cancel_deferred_work(il);
    ieee80211_restart_hw(il->hw);
  } else {
    il4965_down(il);
    mutex_lock_nested(& il->mutex, 0U);
    tmp___0 = constant_test_bit(10L, (unsigned long const volatile *)(& il->status));
    if (tmp___0 != 0) {
      mutex_unlock(& il->mutex);
      return;
    } else {
    }
    __il4965_up(il);
    mutex_unlock(& il->mutex);
  }
  return;
}
}
static void il4965_bg_rx_replenish(struct work_struct *data )
{
  struct il_priv *il ;
  struct work_struct const *__mptr ;
  int tmp ;
  {
  __mptr = (struct work_struct const *)data;
  il = (struct il_priv *)__mptr + 0xffffffffffff7cf8UL;
  tmp = constant_test_bit(10L, (unsigned long const volatile *)(& il->status));
  if (tmp != 0) {
    return;
  } else {
  }
  mutex_lock_nested(& il->mutex, 0U);
  il4965_rx_replenish(il);
  mutex_unlock(& il->mutex);
  return;
}
}
static int il4965_mac_setup_register(struct il_priv *il , u32 max_probe_length )
{
  int ret ;
  struct ieee80211_hw *hw ;
  {
  hw = il->hw;
  hw->rate_control_algorithm = "iwl-4965-rs";
  _ieee80211_hw_set(hw, 10);
  _ieee80211_hw_set(hw, 8);
  _ieee80211_hw_set(hw, 16);
  _ieee80211_hw_set(hw, 6);
  _ieee80211_hw_set(hw, 5);
  _ieee80211_hw_set(hw, 4);
  _ieee80211_hw_set(hw, 7);
  if (((il->cfg)->sku & 8U) != 0U) {
    (hw->wiphy)->features = (hw->wiphy)->features | 50331648U;
  } else {
  }
  hw->sta_data_size = 1904;
  hw->vif_data_size = 1;
  (hw->wiphy)->interface_modes = 6U;
  (hw->wiphy)->flags = (hw->wiphy)->flags | 256U;
  (hw->wiphy)->regulatory_flags = (hw->wiphy)->regulatory_flags | 5U;
  (hw->wiphy)->flags = (hw->wiphy)->flags & 4294967279U;
  (hw->wiphy)->max_scan_ssids = 20U;
  (hw->wiphy)->max_scan_ie_len = (unsigned int )((u16 )max_probe_length) - 26U;
  hw->queues = 4U;
  hw->max_listen_interval = 10U;
  if (il->bands[0].n_channels != 0) {
    ((il->hw)->wiphy)->bands[0] = (struct ieee80211_supported_band *)(& il->bands);
  } else {
  }
  if (il->bands[1].n_channels != 0) {
    ((il->hw)->wiphy)->bands[1] = (struct ieee80211_supported_band *)(& il->bands) + 1UL;
  } else {
  }
  il_leds_init(il);
  ret = ieee80211_register_hw(il->hw);
  if (ret != 0) {
    dev_err((struct device const *)(& (il->pci_dev)->dev), "Failed to register hw (error %d)\n",
            ret);
    return (ret);
  } else {
  }
  il->mac80211_registered = 1U;
  return (0);
}
}
int il4965_mac_start(struct ieee80211_hw *hw )
{
  struct il_priv *il ;
  int ret ;
  int tmp ;
  u32 tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  u32 tmp___3 ;
  long __ret ;
  wait_queue_t __wait ;
  long __ret___0 ;
  long __int ;
  long tmp___4 ;
  bool __cond ;
  int tmp___5 ;
  bool __cond___0 ;
  int tmp___6 ;
  unsigned int tmp___7 ;
  int tmp___8 ;
  int tmp___9 ;
  u32 tmp___10 ;
  {
  il = (struct il_priv *)hw->priv;
  tmp___0 = il_get_debug_level(il);
  if ((tmp___0 & 2U) != 0U) {
    tmp = preempt_count();
    dev_err((struct device const *)(& ((il->hw)->wiphy)->dev), "%c %s enter\n",
            ((unsigned long )tmp & 2096896UL) != 0UL ? 73 : 85, "il4965_mac_start");
  } else {
  }
  mutex_lock_nested(& il->mutex, 0U);
  ret = __il4965_up(il);
  mutex_unlock(& il->mutex);
  if (ret != 0) {
    return (ret);
  } else {
  }
  tmp___1 = il_is_rfkill(il);
  if (tmp___1 != 0) {
    goto out;
  } else {
  }
  tmp___3 = il_get_debug_level(il);
  if ((int )tmp___3 & 1) {
    tmp___2 = preempt_count();
    dev_err((struct device const *)(& ((il->hw)->wiphy)->dev), "%c %s Start UP work done.\n",
            ((unsigned long )tmp___2 & 2096896UL) != 0UL ? 73 : 85, "il4965_mac_start");
  } else {
  }
  __ret = 1000L;
  __might_sleep("/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/11700/dscv_tempdir/dscv/ri/43_2a/drivers/net/wireless/iwlegacy/4965-mac.c",
                5834, 0);
  tmp___6 = constant_test_bit(7L, (unsigned long const volatile *)(& il->status));
  __cond___0 = tmp___6 != 0;
  if ((int )__cond___0 && __ret == 0L) {
    __ret = 1L;
  } else {
  }
  if (((int )__cond___0 || __ret == 0L) == 0) {
    __ret___0 = 1000L;
    INIT_LIST_HEAD(& __wait.task_list);
    __wait.flags = 0U;
    ldv_55939:
    tmp___4 = prepare_to_wait_event(& il->wait_command_queue, & __wait, 2);
    __int = tmp___4;
    tmp___5 = constant_test_bit(7L, (unsigned long const volatile *)(& il->status));
    __cond = tmp___5 != 0;
    if ((int )__cond && __ret___0 == 0L) {
      __ret___0 = 1L;
    } else {
    }
    if (((int )__cond || __ret___0 == 0L) != 0) {
      goto ldv_55938;
    } else {
    }
    __ret___0 = schedule_timeout(__ret___0);
    goto ldv_55939;
    ldv_55938:
    finish_wait(& il->wait_command_queue, & __wait);
    __ret = __ret___0;
  } else {
  }
  ret = (int )__ret;
  if (ret == 0) {
    tmp___8 = constant_test_bit(7L, (unsigned long const volatile *)(& il->status));
    if (tmp___8 == 0) {
      tmp___7 = jiffies_to_msecs(1000UL);
      dev_err((struct device const *)(& (il->pci_dev)->dev), "START_ALIVE timeout after %dms.\n",
              tmp___7);
      return (-110);
    } else {
    }
  } else {
  }
  il4965_led_enable(il);
  out:
  il->is_open = 1U;
  tmp___10 = il_get_debug_level(il);
  if ((tmp___10 & 2U) != 0U) {
    tmp___9 = preempt_count();
    dev_err((struct device const *)(& ((il->hw)->wiphy)->dev), "%c %s leave\n",
            ((unsigned long )tmp___9 & 2096896UL) != 0UL ? 73 : 85, "il4965_mac_start");
  } else {
  }
  return (0);
}
}
void il4965_mac_stop(struct ieee80211_hw *hw )
{
  struct il_priv *il ;
  int tmp ;
  u32 tmp___0 ;
  int tmp___1 ;
  u32 tmp___2 ;
  {
  il = (struct il_priv *)hw->priv;
  tmp___0 = il_get_debug_level(il);
  if ((tmp___0 & 2U) != 0U) {
    tmp = preempt_count();
    dev_err((struct device const *)(& ((il->hw)->wiphy)->dev), "%c %s enter\n",
            ((unsigned long )tmp & 2096896UL) != 0UL ? 73 : 85, "il4965_mac_stop");
  } else {
  }
  if ((unsigned int )il->is_open == 0U) {
    return;
  } else {
  }
  il->is_open = 0U;
  il4965_down(il);
  ldv_flush_workqueue_90(il->workqueue);
  _il_wr(il, 8U, 4294967295U);
  il_enable_rfkill_int(il);
  tmp___2 = il_get_debug_level(il);
  if ((tmp___2 & 2U) != 0U) {
    tmp___1 = preempt_count();
    dev_err((struct device const *)(& ((il->hw)->wiphy)->dev), "%c %s leave\n",
            ((unsigned long )tmp___1 & 2096896UL) != 0UL ? 73 : 85, "il4965_mac_stop");
  } else {
  }
  return;
}
}
void il4965_mac_tx(struct ieee80211_hw *hw , struct ieee80211_tx_control *control ,
                   struct sk_buff *skb )
{
  struct il_priv *il ;
  int tmp ;
  u32 tmp___0 ;
  struct ieee80211_tx_info *tmp___1 ;
  struct ieee80211_rate *tmp___2 ;
  int tmp___3 ;
  u32 tmp___4 ;
  int tmp___5 ;
  int tmp___6 ;
  u32 tmp___7 ;
  {
  il = (struct il_priv *)hw->priv;
  tmp___0 = il_get_debug_level(il);
  if ((tmp___0 & 16U) != 0U) {
    tmp = preempt_count();
    dev_err((struct device const *)(& ((il->hw)->wiphy)->dev), "%c %s enter\n",
            ((unsigned long )tmp & 2096896UL) != 0UL ? 73 : 85, "il4965_mac_tx");
  } else {
  }
  tmp___4 = il_get_debug_level(il);
  if ((tmp___4 & 8388608U) != 0U) {
    tmp___1 = IEEE80211_SKB_CB(skb);
    tmp___2 = ieee80211_get_tx_rate((struct ieee80211_hw const *)hw, (struct ieee80211_tx_info const *)tmp___1);
    tmp___3 = preempt_count();
    dev_err((struct device const *)(& ((il->hw)->wiphy)->dev), "%c %s dev->xmit(%d bytes) at rate 0x%02x\n",
            ((unsigned long )tmp___3 & 2096896UL) != 0UL ? 73 : 85, "il4965_mac_tx",
            skb->len, (int )tmp___2->bitrate);
  } else {
  }
  tmp___5 = il4965_tx_skb(il, control->sta, skb);
  if (tmp___5 != 0) {
    dev_kfree_skb_any(skb);
  } else {
  }
  tmp___7 = il_get_debug_level(il);
  if ((tmp___7 & 16U) != 0U) {
    tmp___6 = preempt_count();
    dev_err((struct device const *)(& ((il->hw)->wiphy)->dev), "%c %s leave\n",
            ((unsigned long )tmp___6 & 2096896UL) != 0UL ? 73 : 85, "il4965_mac_tx");
  } else {
  }
  return;
}
}
void il4965_mac_update_tkip_key(struct ieee80211_hw *hw , struct ieee80211_vif *vif ,
                                struct ieee80211_key_conf *keyconf , struct ieee80211_sta *sta ,
                                u32 iv32 , u16 *phase1key )
{
  struct il_priv *il ;
  int tmp ;
  u32 tmp___0 ;
  int tmp___1 ;
  u32 tmp___2 ;
  {
  il = (struct il_priv *)hw->priv;
  tmp___0 = il_get_debug_level(il);
  if ((tmp___0 & 2U) != 0U) {
    tmp = preempt_count();
    dev_err((struct device const *)(& ((il->hw)->wiphy)->dev), "%c %s enter\n",
            ((unsigned long )tmp & 2096896UL) != 0UL ? 73 : 85, "il4965_mac_update_tkip_key");
  } else {
  }
  il4965_update_tkip_key(il, keyconf, sta, iv32, phase1key);
  tmp___2 = il_get_debug_level(il);
  if ((tmp___2 & 2U) != 0U) {
    tmp___1 = preempt_count();
    dev_err((struct device const *)(& ((il->hw)->wiphy)->dev), "%c %s leave\n",
            ((unsigned long )tmp___1 & 2096896UL) != 0UL ? 73 : 85, "il4965_mac_update_tkip_key");
  } else {
  }
  return;
}
}
int il4965_mac_set_key(struct ieee80211_hw *hw , enum set_key_cmd cmd , struct ieee80211_vif *vif ,
                       struct ieee80211_sta *sta , struct ieee80211_key_conf *key )
{
  struct il_priv *il ;
  int ret ;
  u8 sta_id ;
  bool is_default_wep_key ;
  int tmp ;
  u32 tmp___0 ;
  int tmp___1 ;
  u32 tmp___2 ;
  int tmp___3 ;
  u32 tmp___4 ;
  int tmp___5 ;
  int tmp___6 ;
  u32 tmp___7 ;
  int tmp___8 ;
  u32 tmp___9 ;
  int tmp___10 ;
  u32 tmp___11 ;
  {
  il = (struct il_priv *)hw->priv;
  is_default_wep_key = 0;
  tmp___0 = il_get_debug_level(il);
  if ((tmp___0 & 2U) != 0U) {
    tmp = preempt_count();
    dev_err((struct device const *)(& ((il->hw)->wiphy)->dev), "%c %s enter\n",
            ((unsigned long )tmp & 2096896UL) != 0UL ? 73 : 85, "il4965_mac_set_key");
  } else {
  }
  if ((int )((il->cfg)->mod_params)->sw_crypto != 0) {
    tmp___2 = il_get_debug_level(il);
    if ((tmp___2 & 2U) != 0U) {
      tmp___1 = preempt_count();
      dev_err((struct device const *)(& ((il->hw)->wiphy)->dev), "%c %s leave - hwcrypto disabled\n",
              ((unsigned long )tmp___1 & 2096896UL) != 0UL ? 73 : 85, "il4965_mac_set_key");
    } else {
    }
    return (-95);
  } else {
  }
  if ((unsigned int )vif->type == 1U && ((int )key->flags & 8) == 0) {
    tmp___4 = il_get_debug_level(il);
    if ((tmp___4 & 2U) != 0U) {
      tmp___3 = preempt_count();
      dev_err((struct device const *)(& ((il->hw)->wiphy)->dev), "%c %s leave - ad-hoc group key\n",
              ((unsigned long )tmp___3 & 2096896UL) != 0UL ? 73 : 85, "il4965_mac_set_key");
    } else {
    }
    return (-95);
  } else {
  }
  tmp___5 = il_sta_id_or_broadcast(il, sta);
  sta_id = (u8 )tmp___5;
  if ((unsigned int )sta_id == 255U) {
    return (-22);
  } else {
  }
  mutex_lock_nested(& il->mutex, 0U);
  il_scan_cancel_timeout(il, 100UL);
  if ((key->cipher == 1027073U || key->cipher == 1027077U) && (unsigned long )sta == (unsigned long )((struct ieee80211_sta *)0)) {
    if ((unsigned int )cmd == 0U) {
      is_default_wep_key = (unsigned int )il->__annonCompField103._4965.key_mapping_keys == 0U;
    } else {
      is_default_wep_key = (unsigned int )key->hw_key_idx == 1U;
    }
  } else {
  }
  switch ((unsigned int )cmd) {
  case 0U: ;
  if ((int )is_default_wep_key) {
    ret = il4965_set_default_wep_key(il, key);
  } else {
    ret = il4965_set_dynamic_key(il, key, (int )sta_id);
  }
  tmp___7 = il_get_debug_level(il);
  if ((tmp___7 & 2U) != 0U) {
    tmp___6 = preempt_count();
    dev_err((struct device const *)(& ((il->hw)->wiphy)->dev), "%c %s enable hwcrypto key\n",
            ((unsigned long )tmp___6 & 2096896UL) != 0UL ? 73 : 85, "il4965_mac_set_key");
  } else {
  }
  goto ldv_55977;
  case 1U: ;
  if ((int )is_default_wep_key) {
    ret = il4965_remove_default_wep_key(il, key);
  } else {
    ret = il4965_remove_dynamic_key(il, key, (int )sta_id);
  }
  tmp___9 = il_get_debug_level(il);
  if ((tmp___9 & 2U) != 0U) {
    tmp___8 = preempt_count();
    dev_err((struct device const *)(& ((il->hw)->wiphy)->dev), "%c %s disable hwcrypto key\n",
            ((unsigned long )tmp___8 & 2096896UL) != 0UL ? 73 : 85, "il4965_mac_set_key");
  } else {
  }
  goto ldv_55977;
  default:
  ret = -22;
  }
  ldv_55977:
  mutex_unlock(& il->mutex);
  tmp___11 = il_get_debug_level(il);
  if ((tmp___11 & 2U) != 0U) {
    tmp___10 = preempt_count();
    dev_err((struct device const *)(& ((il->hw)->wiphy)->dev), "%c %s leave\n",
            ((unsigned long )tmp___10 & 2096896UL) != 0UL ? 73 : 85, "il4965_mac_set_key");
  } else {
  }
  return (ret);
}
}
int il4965_mac_ampdu_action(struct ieee80211_hw *hw , struct ieee80211_vif *vif ,
                            enum ieee80211_ampdu_mlme_action action , struct ieee80211_sta *sta ,
                            u16 tid , u16 *ssn , u8 buf_size )
{
  struct il_priv *il ;
  int ret ;
  int tmp ;
  u32 tmp___0 ;
  int tmp___1 ;
  u32 tmp___2 ;
  int tmp___3 ;
  u32 tmp___4 ;
  int tmp___5 ;
  int tmp___6 ;
  u32 tmp___7 ;
  int tmp___8 ;
  u32 tmp___9 ;
  int tmp___10 ;
  {
  il = (struct il_priv *)hw->priv;
  ret = -22;
  tmp___0 = il_get_debug_level(il);
  if ((tmp___0 & 67108864U) != 0U) {
    tmp = preempt_count();
    dev_err((struct device const *)(& ((il->hw)->wiphy)->dev), "%c %s A-MPDU action on addr %pM tid %d\n",
            ((unsigned long )tmp & 2096896UL) != 0UL ? 73 : 85, "il4965_mac_ampdu_action",
            (u8 *)(& sta->addr), (int )tid);
  } else {
  }
  if (((il->cfg)->sku & 8U) == 0U) {
    return (-13);
  } else {
  }
  mutex_lock_nested(& il->mutex, 0U);
  switch ((unsigned int )action) {
  case 0U:
  tmp___2 = il_get_debug_level(il);
  if ((tmp___2 & 67108864U) != 0U) {
    tmp___1 = preempt_count();
    dev_err((struct device const *)(& ((il->hw)->wiphy)->dev), "%c %s start Rx\n",
            ((unsigned long )tmp___1 & 2096896UL) != 0UL ? 73 : 85, "il4965_mac_ampdu_action");
  } else {
  }
  ret = il4965_sta_rx_agg_start(il, sta, (int )tid, (int )*ssn);
  goto ldv_55993;
  case 1U:
  tmp___4 = il_get_debug_level(il);
  if ((tmp___4 & 67108864U) != 0U) {
    tmp___3 = preempt_count();
    dev_err((struct device const *)(& ((il->hw)->wiphy)->dev), "%c %s stop Rx\n",
            ((unsigned long )tmp___3 & 2096896UL) != 0UL ? 73 : 85, "il4965_mac_ampdu_action");
  } else {
  }
  ret = il4965_sta_rx_agg_stop(il, sta, (int )tid);
  tmp___5 = constant_test_bit(10L, (unsigned long const volatile *)(& il->status));
  if (tmp___5 != 0) {
    ret = 0;
  } else {
  }
  goto ldv_55993;
  case 2U:
  tmp___7 = il_get_debug_level(il);
  if ((tmp___7 & 67108864U) != 0U) {
    tmp___6 = preempt_count();
    dev_err((struct device const *)(& ((il->hw)->wiphy)->dev), "%c %s start Tx\n",
            ((unsigned long )tmp___6 & 2096896UL) != 0UL ? 73 : 85, "il4965_mac_ampdu_action");
  } else {
  }
  ret = il4965_tx_agg_start(il, vif, sta, (int )tid, ssn);
  goto ldv_55993;
  case 3U: ;
  case 4U: ;
  case 5U:
  tmp___9 = il_get_debug_level(il);
  if ((tmp___9 & 67108864U) != 0U) {
    tmp___8 = preempt_count();
    dev_err((struct device const *)(& ((il->hw)->wiphy)->dev), "%c %s stop Tx\n",
            ((unsigned long )tmp___8 & 2096896UL) != 0UL ? 73 : 85, "il4965_mac_ampdu_action");
  } else {
  }
  ret = il4965_tx_agg_stop(il, vif, sta, (int )tid);
  tmp___10 = constant_test_bit(10L, (unsigned long const volatile *)(& il->status));
  if (tmp___10 != 0) {
    ret = 0;
  } else {
  }
  goto ldv_55993;
  case 6U:
  ret = 0;
  goto ldv_55993;
  }
  ldv_55993:
  mutex_unlock(& il->mutex);
  return (ret);
}
}
int il4965_mac_sta_add(struct ieee80211_hw *hw , struct ieee80211_vif *vif , struct ieee80211_sta *sta )
{
  struct il_priv *il ;
  struct il_station_priv *sta_priv ;
  bool is_ap ;
  int ret ;
  u8 sta_id ;
  int tmp ;
  u32 tmp___0 ;
  int tmp___1 ;
  u32 tmp___2 ;
  int tmp___3 ;
  u32 tmp___4 ;
  {
  il = (struct il_priv *)hw->priv;
  sta_priv = (struct il_station_priv *)(& sta->drv_priv);
  is_ap = (unsigned int )vif->type == 2U;
  tmp___0 = il_get_debug_level(il);
  if ((int )tmp___0 & 1) {
    tmp = preempt_count();
    dev_err((struct device const *)(& ((il->hw)->wiphy)->dev), "%c %s received request to add station %pM\n",
            ((unsigned long )tmp & 2096896UL) != 0UL ? 73 : 85, "il4965_mac_sta_add",
            (u8 *)(& sta->addr));
  } else {
  }
  mutex_lock_nested(& il->mutex, 0U);
  tmp___2 = il_get_debug_level(il);
  if ((int )tmp___2 & 1) {
    tmp___1 = preempt_count();
    dev_err((struct device const *)(& ((il->hw)->wiphy)->dev), "%c %s proceeding to add station %pM\n",
            ((unsigned long )tmp___1 & 2096896UL) != 0UL ? 73 : 85, "il4965_mac_sta_add",
            (u8 *)(& sta->addr));
  } else {
  }
  sta_priv->common.sta_id = 255U;
  atomic_set(& sta_priv->pending_frames, 0);
  ret = il_add_station_common(il, (u8 const *)(& sta->addr), (int )is_ap, sta, & sta_id);
  if (ret != 0) {
    dev_err((struct device const *)(& (il->pci_dev)->dev), "Unable to add station %pM (%d)\n",
            (u8 *)(& sta->addr), ret);
    mutex_unlock(& il->mutex);
    return (ret);
  } else {
  }
  sta_priv->common.sta_id = sta_id;
  tmp___4 = il_get_debug_level(il);
  if ((int )tmp___4 & 1) {
    tmp___3 = preempt_count();
    dev_err((struct device const *)(& ((il->hw)->wiphy)->dev), "%c %s Initializing rate scaling for station %pM\n",
            ((unsigned long )tmp___3 & 2096896UL) != 0UL ? 73 : 85, "il4965_mac_sta_add",
            (u8 *)(& sta->addr));
  } else {
  }
  il4965_rs_rate_init(il, sta, (int )sta_id);
  mutex_unlock(& il->mutex);
  return (0);
}
}
void il4965_mac_channel_switch(struct ieee80211_hw *hw , struct ieee80211_vif *vif ,
                               struct ieee80211_channel_switch *ch_switch )
{
  struct il_priv *il ;
  struct il_channel_info const *ch_info ;
  struct ieee80211_conf *conf ;
  struct ieee80211_channel *channel ;
  struct il_ht_config *ht_conf ;
  u16 ch ;
  int tmp ;
  u32 tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  int tmp___4 ;
  int tmp___5 ;
  int tmp___6 ;
  u32 tmp___7 ;
  int tmp___8 ;
  enum nl80211_channel_type tmp___9 ;
  int tmp___10 ;
  int tmp___11 ;
  u32 tmp___12 ;
  {
  il = (struct il_priv *)hw->priv;
  conf = & hw->conf;
  channel = ch_switch->chandef.chan;
  ht_conf = & il->current_ht_config;
  tmp___0 = il_get_debug_level(il);
  if ((tmp___0 & 2U) != 0U) {
    tmp = preempt_count();
    dev_err((struct device const *)(& ((il->hw)->wiphy)->dev), "%c %s enter\n",
            ((unsigned long )tmp & 2096896UL) != 0UL ? 73 : 85, "il4965_mac_channel_switch");
  } else {
  }
  mutex_lock_nested(& il->mutex, 0U);
  tmp___1 = il_is_rfkill(il);
  if (tmp___1 != 0) {
    goto out;
  } else {
  }
  tmp___2 = constant_test_bit(10L, (unsigned long const volatile *)(& il->status));
  if (tmp___2 != 0) {
    goto out;
  } else {
    tmp___3 = constant_test_bit(13L, (unsigned long const volatile *)(& il->status));
    if (tmp___3 != 0) {
      goto out;
    } else {
      tmp___4 = constant_test_bit(18L, (unsigned long const volatile *)(& il->status));
      if (tmp___4 != 0) {
        goto out;
      } else {
      }
    }
  }
  tmp___5 = il_is_associated(il);
  if (tmp___5 == 0) {
    goto out;
  } else {
  }
  if ((unsigned long )(il->ops)->set_channel_switch == (unsigned long )((int (* )(struct il_priv * ,
                                                                                             struct ieee80211_channel_switch * ))0)) {
    goto out;
  } else {
  }
  ch = channel->hw_value;
  if ((int )((unsigned short )il->active.channel) == (int )ch) {
    goto out;
  } else {
  }
  ch_info = il_get_channel_info((struct il_priv const *)il, channel->band, (int )ch);
  tmp___8 = il_is_channel_valid(ch_info);
  if (tmp___8 == 0) {
    tmp___7 = il_get_debug_level(il);
    if ((tmp___7 & 2U) != 0U) {
      tmp___6 = preempt_count();
      dev_err((struct device const *)(& ((il->hw)->wiphy)->dev), "%c %s invalid channel\n",
              ((unsigned long )tmp___6 & 2096896UL) != 0UL ? 73 : 85, "il4965_mac_channel_switch");
    } else {
    }
    goto out;
  } else {
  }
  spin_lock_irq(& il->lock);
  il->current_ht_config.smps = conf->smps_mode;
  tmp___9 = cfg80211_get_chandef_type((struct cfg80211_chan_def const *)(& ch_switch->chandef));
  switch ((unsigned int )tmp___9) {
  case 0U: ;
  case 1U:
  il->ht.is_40mhz = 0;
  il->ht.extension_chan_offset = 0U;
  goto ldv_56026;
  case 2U:
  il->ht.extension_chan_offset = 3U;
  il->ht.is_40mhz = 1;
  goto ldv_56026;
  case 3U:
  il->ht.extension_chan_offset = 1U;
  il->ht.is_40mhz = 1;
  goto ldv_56026;
  }
  ldv_56026: ;
  if ((int )il->staging.channel != (int )ch) {
    il->staging.flags = 0U;
  } else {
  }
  il_set_rxon_channel(il, channel);
  il_set_rxon_ht(il, ht_conf);
  il_set_flags_for_band(il, channel->band, il->vif);
  spin_unlock_irq(& il->lock);
  il_set_rate(il);
  set_bit(18L, (unsigned long volatile *)(& il->status));
  il->switch_channel = ch;
  tmp___10 = (*((il->ops)->set_channel_switch))(il, ch_switch);
  if (tmp___10 != 0) {
    clear_bit(18L, (unsigned long volatile *)(& il->status));
    il->switch_channel = 0U;
    ieee80211_chswitch_done(il->vif, 0);
  } else {
  }
  out:
  mutex_unlock(& il->mutex);
  tmp___12 = il_get_debug_level(il);
  if ((tmp___12 & 2U) != 0U) {
    tmp___11 = preempt_count();
    dev_err((struct device const *)(& ((il->hw)->wiphy)->dev), "%c %s leave\n",
            ((unsigned long )tmp___11 & 2096896UL) != 0UL ? 73 : 85, "il4965_mac_channel_switch");
  } else {
  }
  return;
}
}
void il4965_configure_filter(struct ieee80211_hw *hw , unsigned int changed_flags ,
                             unsigned int *total_flags , u64 multicast )
{
  struct il_priv *il ;
  __le32 filter_or ;
  __le32 filter_nand ;
  int tmp ;
  u32 tmp___0 ;
  {
  il = (struct il_priv *)hw->priv;
  filter_or = 0U;
  filter_nand = 0U;
  tmp___0 = il_get_debug_level(il);
  if ((tmp___0 & 2U) != 0U) {
    tmp = preempt_count();
    dev_err((struct device const *)(& ((il->hw)->wiphy)->dev), "%c %s Enter: changed: 0x%x, total: 0x%x\n",
            ((unsigned long )tmp & 2096896UL) != 0UL ? 73 : 85, "il4965_configure_filter",
            changed_flags, *total_flags);
  } else {
  }
  if ((*total_flags & 64U) != 0U) {
    filter_or = filter_or | 1U;
  } else {
    filter_nand = filter_nand | 1U;
  }
  if ((*total_flags & 32U) != 0U) {
    filter_or = filter_or | 3U;
  } else {
    filter_nand = filter_nand | 3U;
  }
  if ((*total_flags & 16U) != 0U) {
    filter_or = filter_or | 64U;
  } else {
    filter_nand = filter_nand | 64U;
  }
  mutex_lock_nested(& il->mutex, 0U);
  il->staging.filter_flags = il->staging.filter_flags & ~ filter_nand;
  il->staging.filter_flags = il->staging.filter_flags | filter_or;
  mutex_unlock(& il->mutex);
  *total_flags = *total_flags & 114U;
  return;
}
}
static void il4965_bg_txpower_work(struct work_struct *work )
{
  struct il_priv *il ;
  struct work_struct const *__mptr ;
  int tmp ;
  int tmp___0 ;
  {
  __mptr = (struct work_struct const *)work;
  il = (struct il_priv *)__mptr + 0xffffffffffff78f8UL;
  mutex_lock_nested(& il->mutex, 0U);
  tmp = constant_test_bit(10L, (unsigned long const volatile *)(& il->status));
  if (tmp != 0) {
    goto out;
  } else {
    tmp___0 = constant_test_bit(13L, (unsigned long const volatile *)(& il->status));
    if (tmp___0 != 0) {
      goto out;
    } else {
    }
  }
  (*((il->ops)->send_tx_power))(il);
  il->last_temperature = il->temperature;
  out:
  mutex_unlock(& il->mutex);
  return;
}
}
static void il4965_setup_deferred_work(struct il_priv *il )
{
  struct lock_class_key __key ;
  char const *__lock_name ;
  struct workqueue_struct *tmp ;
  struct lock_class_key __key___0 ;
  struct lock_class_key __key___1 ;
  atomic_long_t __constr_expr_0 ;
  struct lock_class_key __key___2 ;
  atomic_long_t __constr_expr_1 ;
  struct lock_class_key __key___3 ;
  atomic_long_t __constr_expr_2 ;
  struct lock_class_key __key___4 ;
  atomic_long_t __constr_expr_3 ;
  struct lock_class_key __key___5 ;
  struct lock_class_key __key___6 ;
  atomic_long_t __constr_expr_4 ;
  struct lock_class_key __key___7 ;
  struct lock_class_key __key___8 ;
  atomic_long_t __constr_expr_5 ;
  {
  __lock_name = "\"%s\"\"iwl4965\"";
  tmp = __alloc_workqueue_key("%s", 131082U, 1, & __key, __lock_name, (char *)"iwl4965");
  il->workqueue = tmp;
  __init_waitqueue_head(& il->wait_command_queue, "&il->wait_command_queue", & __key___0);
  __init_work(& il->restart, 0);
  __constr_expr_0.counter = 137438953408L;
  il->restart.data = __constr_expr_0;
  lockdep_init_map(& il->restart.lockdep_map, "(&il->restart)", & __key___1, 0);
  INIT_LIST_HEAD(& il->restart.entry);
  il->restart.func = & il4965_bg_restart;
  __init_work(& il->rx_replenish, 0);
  __constr_expr_1.counter = 137438953408L;
  il->rx_replenish.data = __constr_expr_1;
  lockdep_init_map(& il->rx_replenish.lockdep_map, "(&il->rx_replenish)", & __key___2,
                   0);
  INIT_LIST_HEAD(& il->rx_replenish.entry);
  il->rx_replenish.func = & il4965_bg_rx_replenish;
  __init_work(& il->run_time_calib_work, 0);
  __constr_expr_2.counter = 137438953408L;
  il->run_time_calib_work.data = __constr_expr_2;
  lockdep_init_map(& il->run_time_calib_work.lockdep_map, "(&il->run_time_calib_work)",
                   & __key___3, 0);
  INIT_LIST_HEAD(& il->run_time_calib_work.entry);
  il->run_time_calib_work.func = & il4965_bg_run_time_calib_work;
  __init_work(& il->init_alive_start.work, 0);
  __constr_expr_3.counter = 137438953408L;
  il->init_alive_start.work.data = __constr_expr_3;
  lockdep_init_map(& il->init_alive_start.work.lockdep_map, "(&(&il->init_alive_start)->work)",
                   & __key___4, 0);
  INIT_LIST_HEAD(& il->init_alive_start.work.entry);
  il->init_alive_start.work.func = & il4965_bg_init_alive_start;
  init_timer_key(& il->init_alive_start.timer, 2097152U, "(&(&il->init_alive_start)->timer)",
                 & __key___5);
  il->init_alive_start.timer.function = & delayed_work_timer_fn;
  il->init_alive_start.timer.data = (unsigned long )(& il->init_alive_start);
  __init_work(& il->alive_start.work, 0);
  __constr_expr_4.counter = 137438953408L;
  il->alive_start.work.data = __constr_expr_4;
  lockdep_init_map(& il->alive_start.work.lockdep_map, "(&(&il->alive_start)->work)",
                   & __key___6, 0);
  INIT_LIST_HEAD(& il->alive_start.work.entry);
  il->alive_start.work.func = & il4965_bg_alive_start;
  init_timer_key(& il->alive_start.timer, 2097152U, "(&(&il->alive_start)->timer)",
                 & __key___7);
  il->alive_start.timer.function = & delayed_work_timer_fn;
  il->alive_start.timer.data = (unsigned long )(& il->alive_start);
  il_setup_scan_deferred_work(il);
  __init_work(& il->txpower_work, 0);
  __constr_expr_5.counter = 137438953408L;
  il->txpower_work.data = __constr_expr_5;
  lockdep_init_map(& il->txpower_work.lockdep_map, "(&il->txpower_work)", & __key___8,
                   0);
  INIT_LIST_HEAD(& il->txpower_work.entry);
  il->txpower_work.func = & il4965_bg_txpower_work;
  reg_timer_9(& il->stats_periodic, & il4965_bg_stats_periodic, (unsigned long )il);
  reg_timer_9(& il->watchdog, & il_bg_watchdog, (unsigned long )il);
  tasklet_init(& il->irq_tasklet, (void (*)(unsigned long ))(& il4965_irq_tasklet),
               (unsigned long )il);
  return;
}
}
static void il4965_cancel_deferred_work(struct il_priv *il )
{
  {
  ldv_cancel_work_sync_91(& il->txpower_work);
  ldv_cancel_delayed_work_sync_92(& il->init_alive_start);
  ldv_cancel_delayed_work_93(& il->alive_start);
  ldv_cancel_work_sync_94(& il->run_time_calib_work);
  il_cancel_scan_deferred_work(il);
  ldv_del_timer_sync_95(& il->stats_periodic);
  return;
}
}
static void il4965_init_hw_rates(struct il_priv *il , struct ieee80211_rate *rates )
{
  int i ;
  {
  i = 0;
  goto ldv_56077;
  ldv_56076:
  (rates + (unsigned long )i)->bitrate = (unsigned int )((u16 )il_rates[i].ieee) * 5U;
  (rates + (unsigned long )i)->hw_value = (u16 )i;
  (rates + (unsigned long )i)->hw_value_short = (u16 )i;
  (rates + (unsigned long )i)->flags = 0U;
  if (i >= 0 && i <= 3) {
    (rates + (unsigned long )i)->flags = (rates + (unsigned long )i)->flags | (unsigned int )((unsigned int )((unsigned char )il_rates[i].plcp) != 10U);
  } else {
  }
  i = i + 1;
  ldv_56077: ;
  if (i <= 11) {
    goto ldv_56076;
  } else {
  }
  return;
}
}
void il4965_set_wr_ptrs(struct il_priv *il , int txq_id , u32 idx )
{
  {
  il_wr___0(il, 1120U, (idx & 255U) | (u32 )(txq_id << 8));
  il_wr_prph(il, (u32 )((txq_id + 2624281) * 4), idx);
  return;
}
}
void il4965_tx_queue_set_status(struct il_priv *il , struct il_tx_queue *txq , int tx_fifo_id ,
                                int scd_retry )
{
  int txq_id ;
  int active ;
  int tmp ;
  int tmp___0 ;
  u32 tmp___1 ;
  {
  txq_id = (int )txq->q.id;
  tmp = variable_test_bit((long )txq_id, (unsigned long const volatile *)(& il->txq_ctx_active_msk));
  active = tmp != 0;
  il_wr_prph(il, (u32 )((txq_id + 2624321) * 4), (u32 )(((((tx_fifo_id << 1) | active) | (scd_retry << 5)) | (scd_retry << 8)) | 523264));
  txq->sched_retry = (u8 )scd_retry;
  tmp___1 = il_get_debug_level(il);
  if ((int )tmp___1 & 1) {
    tmp___0 = preempt_count();
    dev_err((struct device const *)(& ((il->hw)->wiphy)->dev), "%c %s %s %s Queue %d on AC %d\n",
            ((unsigned long )tmp___0 & 2096896UL) != 0UL ? 73 : 85, "il4965_tx_queue_set_status",
            active != 0 ? (char *)"Activate" : (char *)"Deactivate", scd_retry != 0 ? (char *)"BA" : (char *)"AC",
            txq_id, tx_fifo_id);
  } else {
  }
  return;
}
}
static struct ieee80211_ops const il4965_mac_ops =
     {& il4965_mac_tx, & il4965_mac_start, & il4965_mac_stop, 0, 0, 0, & il_mac_add_interface,
    & il_mac_change_interface, & il_mac_remove_interface, & il_mac_config, & il_mac_bss_info_changed,
    0, 0, 0, & il4965_configure_filter, 0, & il4965_mac_set_key, & il4965_mac_update_tkip_key,
    0, 0, & il_mac_hw_scan, 0, 0, 0, 0, 0, 0, 0, 0, 0, & il4965_mac_sta_add, & il_mac_sta_remove,
    0, 0, 0, 0, 0, 0, 0, 0, & il_mac_conf_tx, 0, 0, & il_mac_reset_tsf, & il_mac_tx_last_beacon,
    & il4965_mac_ampdu_action, 0, 0, 0, 0, 0, & il_mac_flush, & il4965_mac_channel_switch,
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    0, 0, 0, 0, 0, 0, 0, 0, 0};
static int il4965_init_drv(struct il_priv *il )
{
  int ret ;
  struct lock_class_key __key ;
  struct lock_class_key __key___0 ;
  struct lock_class_key __key___1 ;
  {
  spinlock_check(& il->sta_lock);
  __raw_spin_lock_init(& il->sta_lock.__annonCompField18.rlock, "&(&il->sta_lock)->rlock",
                       & __key);
  spinlock_check(& il->hcmd_lock);
  __raw_spin_lock_init(& il->hcmd_lock.__annonCompField18.rlock, "&(&il->hcmd_lock)->rlock",
                       & __key___0);
  INIT_LIST_HEAD(& il->free_frames);
  __mutex_init(& il->mutex, "&il->mutex", & __key___1);
  il->ieee_channels = (struct ieee80211_channel *)0;
  il->ieee_rates = (struct ieee80211_rate *)0;
  il->band = 0;
  il->iw_mode = 2;
  il->current_ht_config.smps = 2;
  il->missed_beacon_threshold = 5;
  il->force_reset.reset_duration = 1250UL;
  if ((unsigned long )(il->ops)->set_rxon_chain != (unsigned long )((void (* )(struct il_priv * ))0)) {
    (*((il->ops)->set_rxon_chain))(il);
  } else {
  }
  il_init_scan_params(il);
  ret = il_init_channel_map(il);
  if (ret != 0) {
    dev_err((struct device const *)(& (il->pci_dev)->dev), "initializing regulatory failed: %d\n",
            ret);
    goto err;
  } else {
  }
  ret = il_init_geos(il);
  if (ret != 0) {
    dev_err((struct device const *)(& (il->pci_dev)->dev), "initializing geos failed: %d\n",
            ret);
    goto err_free_channel_map;
  } else {
  }
  il4965_init_hw_rates(il, il->ieee_rates);
  return (0);
  err_free_channel_map:
  il_free_channel_map(il);
  err: ;
  return (ret);
}
}
static void il4965_uninit_drv(struct il_priv *il )
{
  {
  il_free_geos(il);
  il_free_channel_map(il);
  kfree((void const *)il->scan_cmd);
  return;
}
}
static void il4965_hw_detect(struct il_priv *il )
{
  int tmp ;
  u32 tmp___0 ;
  {
  il->hw_rev = _il_rd(il, 40U);
  il->hw_wa_rev = _il_rd(il, 556U);
  il->rev_id = (il->pci_dev)->revision;
  tmp___0 = il_get_debug_level(il);
  if ((int )tmp___0 & 1) {
    tmp = preempt_count();
    dev_err((struct device const *)(& ((il->hw)->wiphy)->dev), "%c %s HW Revision ID = 0x%X\n",
            ((unsigned long )tmp & 2096896UL) != 0UL ? 73 : 85, "il4965_hw_detect",
            (int )il->rev_id);
  } else {
  }
  return;
}
}
static struct il_sensitivity_ranges il4965_sensitivity =
     {97U, 0U, 100U, 100U, 85U, 170U, 105U, 220U, 120U, 210U, 140U, 270U, 200U, 400U,
    125U, 200U, 190U, 390U, 62U};
static void il4965_set_hw_params(struct il_priv *il )
{
  {
  il->hw_params.bcast_id = 31U;
  il->hw_params.max_rxq_size = 256U;
  il->hw_params.max_rxq_log = 8U;
  if ((int )((il->cfg)->mod_params)->amsdu_size_8K != 0) {
    il->hw_params.rx_page_order = 1U;
  } else {
    il->hw_params.rx_page_order = 0U;
  }
  il->hw_params.max_beacon_itrvl = 4U;
  if ((int )((il->cfg)->mod_params)->disable_11n != 0) {
    (il->cfg)->sku = (il->cfg)->sku & 4294967287U;
  } else {
  }
  if ((int )((il->cfg)->mod_params)->num_of_queues > 9 && (int )((il->cfg)->mod_params)->num_of_queues <= 16) {
    (il->cfg)->num_of_queues = ((il->cfg)->mod_params)->num_of_queues;
  } else {
  }
  il->hw_params.max_txq_num = (u8 )(il->cfg)->num_of_queues;
  il->hw_params.dma_chnl_num = 7U;
  il->hw_params.scd_bc_tbls_size = (unsigned int )((u16 )((unsigned long )(il->cfg)->num_of_queues)) * 1024U;
  il->hw_params.tfd_size = 128U;
  il->hw_params.max_stations = 32U;
  il->hw_params.max_data_size = 40960U;
  il->hw_params.max_inst_size = 98304U;
  il->hw_params.max_bsm_size = 1024U;
  il->hw_params.ht40_channel = 2U;
  il->hw_params.rx_wrt_ptr_reg = 7112U;
  il->hw_params.tx_chains_num = il4965_num_of_ant((int )(il->cfg)->valid_tx_ant);
  il->hw_params.rx_chains_num = il4965_num_of_ant((int )(il->cfg)->valid_rx_ant);
  il->hw_params.valid_tx_ant = (il->cfg)->valid_tx_ant;
  il->hw_params.valid_rx_ant = (il->cfg)->valid_rx_ant;
  il->hw_params.ct_kill_threshold = 383U;
  il->hw_params.sens = (struct il_sensitivity_ranges const *)(& il4965_sensitivity);
  il->hw_params.beacon_time_tsf_bits = 22U;
  return;
}
}
static int il4965_pci_probe(struct pci_dev *pdev , struct pci_device_id const *ent )
{
  int err ;
  struct il_priv *il ;
  struct ieee80211_hw *hw ;
  struct il_cfg *cfg ;
  unsigned long flags ;
  u16 pci_cmd ;
  int tmp ;
  u32 tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  u32 tmp___3 ;
  int tmp___4 ;
  u32 tmp___5 ;
  struct lock_class_key __key ;
  struct lock_class_key __key___0 ;
  int tmp___6 ;
  u32 tmp___7 ;
  u32 tmp___8 ;
  int tmp___9 ;
  {
  err = 0;
  cfg = (struct il_cfg *)ent->driver_data;
  hw = ldv_ieee80211_alloc_hw_96(35736UL, & il4965_mac_ops);
  if ((unsigned long )hw == (unsigned long )((struct ieee80211_hw *)0)) {
    err = -12;
    goto out;
  } else {
  }
  il = (struct il_priv *)hw->priv;
  il->hw = hw;
  SET_IEEE80211_DEV(hw, & pdev->dev);
  tmp___0 = il_get_debug_level(il);
  if ((int )tmp___0 & 1) {
    tmp = preempt_count();
    dev_err((struct device const *)(& ((il->hw)->wiphy)->dev), "%c %s *** LOAD DRIVER ***\n",
            ((unsigned long )tmp & 2096896UL) != 0UL ? 73 : 85, "il4965_pci_probe");
  } else {
  }
  il->cfg = cfg;
  il->ops = & il4965_ops;
  il->debugfs_ops = & il4965_debugfs_ops;
  il->pci_dev = pdev;
  il->inta_mask = 2852126859U;
  pci_disable_link_state(pdev, 7);
  tmp___1 = pci_enable_device(pdev);
  if (tmp___1 != 0) {
    err = -19;
    goto out_ieee80211_free_hw;
  } else {
  }
  pci_set_master(pdev);
  err = pci_set_dma_mask(pdev, 68719476735ULL);
  if (err == 0) {
    err = pci_set_consistent_dma_mask(pdev, 68719476735ULL);
  } else {
  }
  if (err != 0) {
    err = pci_set_dma_mask(pdev, 4294967295ULL);
    if (err == 0) {
      err = pci_set_consistent_dma_mask(pdev, 4294967295ULL);
    } else {
    }
    if (err != 0) {
      dev_warn((struct device const *)(& (il->pci_dev)->dev), "No suitable DMA available.\n");
      goto out_pci_disable_device;
    } else {
    }
  } else {
  }
  err = pci_request_regions(pdev, "iwl4965");
  if (err != 0) {
    goto out_pci_disable_device;
  } else {
  }
  pci_set_drvdata(pdev, (void *)il);
  il->hw_base = pci_ioremap_bar(pdev, 0);
  if ((unsigned long )il->hw_base == (unsigned long )((void *)0)) {
    err = -19;
    goto out_pci_release_regions;
  } else {
  }
  tmp___3 = il_get_debug_level(il);
  if ((int )tmp___3 & 1) {
    tmp___2 = preempt_count();
    dev_err((struct device const *)(& ((il->hw)->wiphy)->dev), "%c %s pci_resource_len = 0x%08llx\n",
            ((unsigned long )tmp___2 & 2096896UL) != 0UL ? 73 : 85, "il4965_pci_probe",
            pdev->resource[0].start != 0ULL || pdev->resource[0].end != pdev->resource[0].start ? (pdev->resource[0].end - pdev->resource[0].start) + 1ULL : 0ULL);
  } else {
  }
  tmp___5 = il_get_debug_level(il);
  if ((int )tmp___5 & 1) {
    tmp___4 = preempt_count();
    dev_err((struct device const *)(& ((il->hw)->wiphy)->dev), "%c %s pci_resource_base = %p\n",
            ((unsigned long )tmp___4 & 2096896UL) != 0UL ? 73 : 85, "il4965_pci_probe",
            il->hw_base);
  } else {
  }
  spinlock_check(& il->reg_lock);
  __raw_spin_lock_init(& il->reg_lock.__annonCompField18.rlock, "&(&il->reg_lock)->rlock",
                       & __key);
  spinlock_check(& il->lock);
  __raw_spin_lock_init(& il->lock.__annonCompField18.rlock, "&(&il->lock)->rlock",
                       & __key___0);
  _il_wr(il, 32U, 1U);
  il4965_hw_detect(il);
  _dev_info((struct device const *)(& (il->pci_dev)->dev), "Detected %s, REV=0x%X\n",
            (il->cfg)->name, il->hw_rev);
  pci_write_config_byte((struct pci_dev const *)pdev, 65, 0);
  il4965_prepare_card_hw(il);
  if (! il->hw_ready) {
    dev_warn((struct device const *)(& (il->pci_dev)->dev), "Failed, HW not ready\n");
    err = -5;
    goto out_iounmap;
  } else {
  }
  err = il_eeprom_init(il);
  if (err != 0) {
    dev_err((struct device const *)(& (il->pci_dev)->dev), "Unable to init EEPROM\n");
    goto out_iounmap;
  } else {
  }
  err = il4965_eeprom_check_version(il);
  if (err != 0) {
    goto out_free_eeprom;
  } else {
  }
  il4965_eeprom_get_mac((struct il_priv const *)il, (u8 *)(& il->addresses[0].addr));
  tmp___7 = il_get_debug_level(il);
  if ((int )tmp___7 & 1) {
    tmp___6 = preempt_count();
    dev_err((struct device const *)(& ((il->hw)->wiphy)->dev), "%c %s MAC address: %pM\n",
            ((unsigned long )tmp___6 & 2096896UL) != 0UL ? 73 : 85, "il4965_pci_probe",
            (u8 *)(& il->addresses[0].addr));
  } else {
  }
  ((il->hw)->wiphy)->addresses = (struct mac_address *)(& il->addresses);
  ((il->hw)->wiphy)->n_addresses = 1U;
  il4965_set_hw_params(il);
  err = il4965_init_drv(il);
  if (err != 0) {
    goto out_free_eeprom;
  } else {
  }
  ldv_spin_lock();
  il_disable_interrupts(il);
  spin_unlock_irqrestore(& il->lock, flags);
  pci_enable_msi_exact(il->pci_dev, 1);
  err = ldv_request_irq_97((il->pci_dev)->irq, & il_isr, 128UL, "iwl4965", (void *)il);
  if (err != 0) {
    dev_err((struct device const *)(& (il->pci_dev)->dev), "Error allocating IRQ %d\n",
            (il->pci_dev)->irq);
    goto out_disable_msi;
  } else {
  }
  il4965_setup_deferred_work(il);
  il4965_setup_handlers(il);
  pci_read_config_word((struct pci_dev const *)il->pci_dev, 4, & pci_cmd);
  if (((int )pci_cmd & 1024) != 0) {
    pci_cmd = (unsigned int )pci_cmd & 64511U;
    pci_write_config_word((struct pci_dev const *)il->pci_dev, 4, (int )pci_cmd);
  } else {
  }
  il_enable_rfkill_int(il);
  tmp___8 = _il_rd(il, 36U);
  if ((tmp___8 & 134217728U) != 0U) {
    clear_bit(3L, (unsigned long volatile *)(& il->status));
  } else {
    set_bit(3L, (unsigned long volatile *)(& il->status));
  }
  tmp___9 = constant_test_bit(3L, (unsigned long const volatile *)(& il->status));
  wiphy_rfkill_set_hw_state((il->hw)->wiphy, tmp___9 != 0);
  il_power_initialize(il);
  init_completion(& il->__annonCompField103._4965.firmware_loading_complete);
  err = il4965_request_firmware(il, 1);
  if (err != 0) {
    goto out_destroy_workqueue;
  } else {
  }
  return (0);
  out_destroy_workqueue:
  ldv_destroy_workqueue_98(il->workqueue);
  il->workqueue = (struct workqueue_struct *)0;
  ldv_free_irq_99((il->pci_dev)->irq, (void *)il);
  out_disable_msi:
  pci_disable_msi(il->pci_dev);
  il4965_uninit_drv(il);
  out_free_eeprom:
  il_eeprom_free(il);
  out_iounmap:
  iounmap((void volatile *)il->hw_base);
  out_pci_release_regions:
  pci_release_regions(pdev);
  out_pci_disable_device:
  pci_disable_device(pdev);
  out_ieee80211_free_hw:
  ldv_ieee80211_free_hw_100(il->hw);
  out: ;
  return (err);
}
}
static void il4965_pci_remove(struct pci_dev *pdev )
{
  struct il_priv *il ;
  void *tmp ;
  unsigned long flags ;
  int tmp___0 ;
  u32 tmp___1 ;
  {
  tmp = pci_get_drvdata(pdev);
  il = (struct il_priv *)tmp;
  if ((unsigned long )il == (unsigned long )((struct il_priv *)0)) {
    return;
  } else {
  }
  wait_for_completion(& il->__annonCompField103._4965.firmware_loading_complete);
  tmp___1 = il_get_debug_level(il);
  if ((int )tmp___1 & 1) {
    tmp___0 = preempt_count();
    dev_err((struct device const *)(& ((il->hw)->wiphy)->dev), "%c %s *** UNLOAD DRIVER ***\n",
            ((unsigned long )tmp___0 & 2096896UL) != 0UL ? 73 : 85, "il4965_pci_remove");
  } else {
  }
  il_dbgfs_unregister(il);
  sysfs_remove_group(& pdev->dev.kobj, (struct attribute_group const *)(& il_attribute_group));
  set_bit(10L, (unsigned long volatile *)(& il->status));
  il_leds_exit(il);
  if ((unsigned int )il->mac80211_registered != 0U) {
    ieee80211_unregister_hw(il->hw);
    il->mac80211_registered = 0U;
  } else {
    il4965_down(il);
  }
  il_apm_stop(il);
  ldv_spin_lock();
  il_disable_interrupts(il);
  spin_unlock_irqrestore(& il->lock, flags);
  il4965_synchronize_irq(il);
  il4965_dealloc_ucode_pci(il);
  if ((unsigned long )il->rxq.bd != (unsigned long )((__le32 *)0U)) {
    il4965_rx_queue_free(il, & il->rxq);
  } else {
  }
  il4965_hw_txq_ctx_free(il);
  il_eeprom_free(il);
  ldv_flush_workqueue_101(il->workqueue);
  ldv_destroy_workqueue_102(il->workqueue);
  il->workqueue = (struct workqueue_struct *)0;
  ldv_free_irq_103((il->pci_dev)->irq, (void *)il);
  pci_disable_msi(il->pci_dev);
  iounmap((void volatile *)il->hw_base);
  pci_release_regions(pdev);
  pci_disable_device(pdev);
  il4965_uninit_drv(il);
  consume_skb(il->beacon_skb);
  ldv_ieee80211_free_hw_104(il->hw);
  return;
}
}
void il4965_txq_set_sched(struct il_priv *il , u32 mask )
{
  {
  il_wr_prph(il, 10497052U, mask);
  return;
}
}
static struct pci_device_id const il4965_hw_card_ids[3U] = { {32902U, 16937U, 4294967295U, 4294967295U, 0U, 0U, (unsigned long )(& il4965_cfg)},
        {32902U,
      16944U, 4294967295U, 4294967295U, 0U, 0U, (unsigned long )(& il4965_cfg)},
        {0U, 0U, 0U, 0U, 0U, 0U, 0UL}};
struct pci_device_id const __mod_pci__il4965_hw_card_ids_device_table[3U] ;
static struct pci_driver il4965_driver =
     {{0, 0}, "iwl4965", (struct pci_device_id const *)(& il4965_hw_card_ids), & il4965_pci_probe,
    & il4965_pci_remove, 0, 0, 0, 0, 0, 0, 0, {0, 0, 0, 0, (_Bool)0, 0, 0, 0, 0, 0,
                                               0, 0, 0, 0, & il_pm_ops, 0}, {{{{{{0}},
                                                                                0U,
                                                                                0U,
                                                                                0,
                                                                                {0,
                                                                                 {0,
                                                                                  0},
                                                                                 0,
                                                                                 0,
                                                                                 0UL}}}},
                                                                             {0, 0}}};
static int il4965_init(void)
{
  int ret ;
  {
  printk("\016iwl4965: Intel(R) Wireless WiFi 4965 driver for Linux, in-tree:d\n");
  printk("\016iwl4965: Copyright(c) 2003-2011 Intel Corporation\n");
  ret = il4965_rate_control_register();
  if (ret != 0) {
    printk("\viwl4965: Unable to register rate control algorithm: %d\n", ret);
    return (ret);
  } else {
  }
  ret = ldv___pci_register_driver_105(& il4965_driver, & __this_module, "iwl4965");
  if (ret != 0) {
    printk("\viwl4965: Unable to initialize PCI module\n");
    goto error_register;
  } else {
  }
  return (ret);
  error_register:
  il4965_rate_control_unregister();
  return (ret);
}
}
static void il4965_exit(void)
{
  {
  ldv_pci_unregister_driver_106(& il4965_driver);
  il4965_rate_control_unregister();
  return;
}
}
int ldv_retval_5 ;
int ldv_retval_0 ;
int ldv_retval_1 ;
extern void ldv_initialize(void) ;
extern int ldv_shutdown_15(void) ;
extern void ldv_check_final_state(void) ;
void activate_work_5(struct work_struct *work , int state )
{
  {
  if (ldv_work_5_0 == 0) {
    ldv_work_struct_5_0 = work;
    ldv_work_5_0 = state;
    return;
  } else {
  }
  if (ldv_work_5_1 == 0) {
    ldv_work_struct_5_1 = work;
    ldv_work_5_1 = state;
    return;
  } else {
  }
  if (ldv_work_5_2 == 0) {
    ldv_work_struct_5_2 = work;
    ldv_work_5_2 = state;
    return;
  } else {
  }
  if (ldv_work_5_3 == 0) {
    ldv_work_struct_5_3 = work;
    ldv_work_5_3 = state;
    return;
  } else {
  }
  return;
}
}
void work_init_3(void)
{
  {
  ldv_work_3_0 = 0;
  ldv_work_3_1 = 0;
  ldv_work_3_2 = 0;
  ldv_work_3_3 = 0;
  return;
}
}
void call_and_disable_all_7(int state )
{
  {
  if (ldv_work_7_0 == state) {
    call_and_disable_work_7(ldv_work_struct_7_0);
  } else {
  }
  if (ldv_work_7_1 == state) {
    call_and_disable_work_7(ldv_work_struct_7_1);
  } else {
  }
  if (ldv_work_7_2 == state) {
    call_and_disable_work_7(ldv_work_struct_7_2);
  } else {
  }
  if (ldv_work_7_3 == state) {
    call_and_disable_work_7(ldv_work_struct_7_3);
  } else {
  }
  return;
}
}
void invoke_work_6(void)
{
  int tmp ;
  {
  tmp = __VERIFIER_nondet_int();
  switch (tmp) {
  case 0: ;
  if (ldv_work_6_0 == 2 || ldv_work_6_0 == 3) {
    ldv_work_6_0 = 4;
    il4965_bg_alive_start(ldv_work_struct_6_0);
    ldv_work_6_0 = 1;
  } else {
  }
  goto ldv_56305;
  case 1: ;
  if (ldv_work_6_1 == 2 || ldv_work_6_1 == 3) {
    ldv_work_6_1 = 4;
    il4965_bg_alive_start(ldv_work_struct_6_0);
    ldv_work_6_1 = 1;
  } else {
  }
  goto ldv_56305;
  case 2: ;
  if (ldv_work_6_2 == 2 || ldv_work_6_2 == 3) {
    ldv_work_6_2 = 4;
    il4965_bg_alive_start(ldv_work_struct_6_0);
    ldv_work_6_2 = 1;
  } else {
  }
  goto ldv_56305;
  case 3: ;
  if (ldv_work_6_3 == 2 || ldv_work_6_3 == 3) {
    ldv_work_6_3 = 4;
    il4965_bg_alive_start(ldv_work_struct_6_0);
    ldv_work_6_3 = 1;
  } else {
  }
  goto ldv_56305;
  default:
  ldv_stop();
  }
  ldv_56305: ;
  return;
}
}
void activate_pending_timer_9(struct timer_list *timer , unsigned long data , int pending_flag )
{
  {
  if ((unsigned long )ldv_timer_list_9_0 == (unsigned long )timer) {
    if (ldv_timer_9_0 == 2 || pending_flag != 0) {
      ldv_timer_list_9_0 = timer;
      ldv_timer_list_9_0->data = data;
      ldv_timer_9_0 = 1;
    } else {
    }
    return;
  } else {
  }
  if ((unsigned long )ldv_timer_list_9_1 == (unsigned long )timer) {
    if (ldv_timer_9_1 == 2 || pending_flag != 0) {
      ldv_timer_list_9_1 = timer;
      ldv_timer_list_9_1->data = data;
      ldv_timer_9_1 = 1;
    } else {
    }
    return;
  } else {
  }
  if ((unsigned long )ldv_timer_list_9_2 == (unsigned long )timer) {
    if (ldv_timer_9_2 == 2 || pending_flag != 0) {
      ldv_timer_list_9_2 = timer;
      ldv_timer_list_9_2->data = data;
      ldv_timer_9_2 = 1;
    } else {
    }
    return;
  } else {
  }
  if ((unsigned long )ldv_timer_list_9_3 == (unsigned long )timer) {
    if (ldv_timer_9_3 == 2 || pending_flag != 0) {
      ldv_timer_list_9_3 = timer;
      ldv_timer_list_9_3->data = data;
      ldv_timer_9_3 = 1;
    } else {
    }
    return;
  } else {
  }
  activate_suitable_timer_9(timer, data);
  return;
}
}
void call_and_disable_all_2(int state )
{
  {
  if (ldv_work_2_0 == state) {
    call_and_disable_work_2(ldv_work_struct_2_0);
  } else {
  }
  if (ldv_work_2_1 == state) {
    call_and_disable_work_2(ldv_work_struct_2_1);
  } else {
  }
  if (ldv_work_2_2 == state) {
    call_and_disable_work_2(ldv_work_struct_2_2);
  } else {
  }
  if (ldv_work_2_3 == state) {
    call_and_disable_work_2(ldv_work_struct_2_3);
  } else {
  }
  return;
}
}
int reg_check_1(irqreturn_t (*handler)(int , void * ) )
{
  {
  if ((unsigned long )handler == (unsigned long )(& il_isr)) {
    return (1);
  } else {
  }
  return (0);
}
}
void ldv_pci_driver_15(void)
{
  void *tmp ;
  {
  tmp = ldv_init_zalloc(2976UL);
  il4965_driver_group1 = (struct pci_dev *)tmp;
  return;
}
}
void disable_suitable_timer_8(struct timer_list *timer )
{
  {
  if (ldv_timer_8_0 != 0 && (unsigned long )timer == (unsigned long )ldv_timer_list_8_0) {
    ldv_timer_8_0 = 0;
    return;
  } else {
  }
  if (ldv_timer_8_1 != 0 && (unsigned long )timer == (unsigned long )ldv_timer_list_8_1) {
    ldv_timer_8_1 = 0;
    return;
  } else {
  }
  if (ldv_timer_8_2 != 0 && (unsigned long )timer == (unsigned long )ldv_timer_list_8_2) {
    ldv_timer_8_2 = 0;
    return;
  } else {
  }
  if (ldv_timer_8_3 != 0 && (unsigned long )timer == (unsigned long )ldv_timer_list_8_3) {
    ldv_timer_8_3 = 0;
    return;
  } else {
  }
  return;
}
}
void activate_work_3(struct work_struct *work , int state )
{
  {
  if (ldv_work_3_0 == 0) {
    ldv_work_struct_3_0 = work;
    ldv_work_3_0 = state;
    return;
  } else {
  }
  if (ldv_work_3_1 == 0) {
    ldv_work_struct_3_1 = work;
    ldv_work_3_1 = state;
    return;
  } else {
  }
  if (ldv_work_3_2 == 0) {
    ldv_work_struct_3_2 = work;
    ldv_work_3_2 = state;
    return;
  } else {
  }
  if (ldv_work_3_3 == 0) {
    ldv_work_struct_3_3 = work;
    ldv_work_3_3 = state;
    return;
  } else {
  }
  return;
}
}
void work_init_5(void)
{
  {
  ldv_work_5_0 = 0;
  ldv_work_5_1 = 0;
  ldv_work_5_2 = 0;
  ldv_work_5_3 = 0;
  return;
}
}
void call_and_disable_all_4(int state )
{
  {
  if (ldv_work_4_0 == state) {
    call_and_disable_work_4(ldv_work_struct_4_0);
  } else {
  }
  if (ldv_work_4_1 == state) {
    call_and_disable_work_4(ldv_work_struct_4_1);
  } else {
  }
  if (ldv_work_4_2 == state) {
    call_and_disable_work_4(ldv_work_struct_4_2);
  } else {
  }
  if (ldv_work_4_3 == state) {
    call_and_disable_work_4(ldv_work_struct_4_3);
  } else {
  }
  return;
}
}
void work_init_7(void)
{
  {
  ldv_work_7_0 = 0;
  ldv_work_7_1 = 0;
  ldv_work_7_2 = 0;
  ldv_work_7_3 = 0;
  return;
}
}
void invoke_work_7(void)
{
  int tmp ;
  {
  tmp = __VERIFIER_nondet_int();
  switch (tmp) {
  case 0: ;
  if (ldv_work_7_0 == 2 || ldv_work_7_0 == 3) {
    ldv_work_7_0 = 4;
    il4965_bg_txpower_work(ldv_work_struct_7_0);
    ldv_work_7_0 = 1;
  } else {
  }
  goto ldv_56348;
  case 1: ;
  if (ldv_work_7_1 == 2 || ldv_work_7_1 == 3) {
    ldv_work_7_1 = 4;
    il4965_bg_txpower_work(ldv_work_struct_7_0);
    ldv_work_7_1 = 1;
  } else {
  }
  goto ldv_56348;
  case 2: ;
  if (ldv_work_7_2 == 2 || ldv_work_7_2 == 3) {
    ldv_work_7_2 = 4;
    il4965_bg_txpower_work(ldv_work_struct_7_0);
    ldv_work_7_2 = 1;
  } else {
  }
  goto ldv_56348;
  case 3: ;
  if (ldv_work_7_3 == 2 || ldv_work_7_3 == 3) {
    ldv_work_7_3 = 4;
    il4965_bg_txpower_work(ldv_work_struct_7_0);
    ldv_work_7_3 = 1;
  } else {
  }
  goto ldv_56348;
  default:
  ldv_stop();
  }
  ldv_56348: ;
  return;
}
}
void disable_work_5(struct work_struct *work )
{
  {
  if ((ldv_work_5_0 == 3 || ldv_work_5_0 == 2) && (unsigned long )ldv_work_struct_5_0 == (unsigned long )work) {
    ldv_work_5_0 = 1;
  } else {
  }
  if ((ldv_work_5_1 == 3 || ldv_work_5_1 == 2) && (unsigned long )ldv_work_struct_5_1 == (unsigned long )work) {
    ldv_work_5_1 = 1;
  } else {
  }
  if ((ldv_work_5_2 == 3 || ldv_work_5_2 == 2) && (unsigned long )ldv_work_struct_5_2 == (unsigned long )work) {
    ldv_work_5_2 = 1;
  } else {
  }
  if ((ldv_work_5_3 == 3 || ldv_work_5_3 == 2) && (unsigned long )ldv_work_struct_5_3 == (unsigned long )work) {
    ldv_work_5_3 = 1;
  } else {
  }
  return;
}
}
void ldv_initialize_ieee80211_ops_16(void)
{
  void *tmp ;
  {
  tmp = ldv_init_zalloc(160UL);
  il4965_mac_ops_group0 = (struct ieee80211_hw *)tmp;
  return;
}
}
void call_and_disable_work_3(struct work_struct *work )
{
  {
  if ((ldv_work_3_0 == 2 || ldv_work_3_0 == 3) && (unsigned long )work == (unsigned long )ldv_work_struct_3_0) {
    il4965_bg_rx_replenish(work);
    ldv_work_3_0 = 1;
    return;
  } else {
  }
  if ((ldv_work_3_1 == 2 || ldv_work_3_1 == 3) && (unsigned long )work == (unsigned long )ldv_work_struct_3_1) {
    il4965_bg_rx_replenish(work);
    ldv_work_3_1 = 1;
    return;
  } else {
  }
  if ((ldv_work_3_2 == 2 || ldv_work_3_2 == 3) && (unsigned long )work == (unsigned long )ldv_work_struct_3_2) {
    il4965_bg_rx_replenish(work);
    ldv_work_3_2 = 1;
    return;
  } else {
  }
  if ((ldv_work_3_3 == 2 || ldv_work_3_3 == 3) && (unsigned long )work == (unsigned long )ldv_work_struct_3_3) {
    il4965_bg_rx_replenish(work);
    ldv_work_3_3 = 1;
    return;
  } else {
  }
  return;
}
}
void disable_work_7(struct work_struct *work )
{
  {
  if ((ldv_work_7_0 == 3 || ldv_work_7_0 == 2) && (unsigned long )ldv_work_struct_7_0 == (unsigned long )work) {
    ldv_work_7_0 = 1;
  } else {
  }
  if ((ldv_work_7_1 == 3 || ldv_work_7_1 == 2) && (unsigned long )ldv_work_struct_7_1 == (unsigned long )work) {
    ldv_work_7_1 = 1;
  } else {
  }
  if ((ldv_work_7_2 == 3 || ldv_work_7_2 == 2) && (unsigned long )ldv_work_struct_7_2 == (unsigned long )work) {
    ldv_work_7_2 = 1;
  } else {
  }
  if ((ldv_work_7_3 == 3 || ldv_work_7_3 == 2) && (unsigned long )ldv_work_struct_7_3 == (unsigned long )work) {
    ldv_work_7_3 = 1;
  } else {
  }
  return;
}
}
void disable_work_3(struct work_struct *work )
{
  {
  if ((ldv_work_3_0 == 3 || ldv_work_3_0 == 2) && (unsigned long )ldv_work_struct_3_0 == (unsigned long )work) {
    ldv_work_3_0 = 1;
  } else {
  }
  if ((ldv_work_3_1 == 3 || ldv_work_3_1 == 2) && (unsigned long )ldv_work_struct_3_1 == (unsigned long )work) {
    ldv_work_3_1 = 1;
  } else {
  }
  if ((ldv_work_3_2 == 3 || ldv_work_3_2 == 2) && (unsigned long )ldv_work_struct_3_2 == (unsigned long )work) {
    ldv_work_3_2 = 1;
  } else {
  }
  if ((ldv_work_3_3 == 3 || ldv_work_3_3 == 2) && (unsigned long )ldv_work_struct_3_3 == (unsigned long )work) {
    ldv_work_3_3 = 1;
  } else {
  }
  return;
}
}
void ldv_timer_9(int state , struct timer_list *timer )
{
  {
  LDV_IN_INTERRUPT = 2;
  il_bg_watchdog(timer->data);
  LDV_IN_INTERRUPT = 1;
  return;
}
}
void call_and_disable_all_6(int state )
{
  {
  if (ldv_work_6_0 == state) {
    call_and_disable_work_6(ldv_work_struct_6_0);
  } else {
  }
  if (ldv_work_6_1 == state) {
    call_and_disable_work_6(ldv_work_struct_6_1);
  } else {
  }
  if (ldv_work_6_2 == state) {
    call_and_disable_work_6(ldv_work_struct_6_2);
  } else {
  }
  if (ldv_work_6_3 == state) {
    call_and_disable_work_6(ldv_work_struct_6_3);
  } else {
  }
  return;
}
}
void activate_pending_timer_8(struct timer_list *timer , unsigned long data , int pending_flag )
{
  {
  if ((unsigned long )ldv_timer_list_8_0 == (unsigned long )timer) {
    if (ldv_timer_8_0 == 2 || pending_flag != 0) {
      ldv_timer_list_8_0 = timer;
      ldv_timer_list_8_0->data = data;
      ldv_timer_8_0 = 1;
    } else {
    }
    return;
  } else {
  }
  if ((unsigned long )ldv_timer_list_8_1 == (unsigned long )timer) {
    if (ldv_timer_8_1 == 2 || pending_flag != 0) {
      ldv_timer_list_8_1 = timer;
      ldv_timer_list_8_1->data = data;
      ldv_timer_8_1 = 1;
    } else {
    }
    return;
  } else {
  }
  if ((unsigned long )ldv_timer_list_8_2 == (unsigned long )timer) {
    if (ldv_timer_8_2 == 2 || pending_flag != 0) {
      ldv_timer_list_8_2 = timer;
      ldv_timer_list_8_2->data = data;
      ldv_timer_8_2 = 1;
    } else {
    }
    return;
  } else {
  }
  if ((unsigned long )ldv_timer_list_8_3 == (unsigned long )timer) {
    if (ldv_timer_8_3 == 2 || pending_flag != 0) {
      ldv_timer_list_8_3 = timer;
      ldv_timer_list_8_3->data = data;
      ldv_timer_8_3 = 1;
    } else {
    }
    return;
  } else {
  }
  activate_suitable_timer_8(timer, data);
  return;
}
}
void disable_suitable_irq_1(int line , void *data )
{
  {
  if (ldv_irq_1_0 != 0 && line == ldv_irq_line_1_0) {
    ldv_irq_1_0 = 0;
    return;
  } else {
  }
  if (ldv_irq_1_1 != 0 && line == ldv_irq_line_1_1) {
    ldv_irq_1_1 = 0;
    return;
  } else {
  }
  if (ldv_irq_1_2 != 0 && line == ldv_irq_line_1_2) {
    ldv_irq_1_2 = 0;
    return;
  } else {
  }
  if (ldv_irq_1_3 != 0 && line == ldv_irq_line_1_3) {
    ldv_irq_1_3 = 0;
    return;
  } else {
  }
  return;
}
}
void activate_suitable_irq_1(int line , void *data )
{
  {
  if (ldv_irq_1_0 == 0) {
    ldv_irq_line_1_0 = line;
    ldv_irq_data_1_0 = data;
    ldv_irq_1_0 = 1;
    return;
  } else {
  }
  if (ldv_irq_1_1 == 0) {
    ldv_irq_line_1_1 = line;
    ldv_irq_data_1_1 = data;
    ldv_irq_1_1 = 1;
    return;
  } else {
  }
  if (ldv_irq_1_2 == 0) {
    ldv_irq_line_1_2 = line;
    ldv_irq_data_1_2 = data;
    ldv_irq_1_2 = 1;
    return;
  } else {
  }
  if (ldv_irq_1_3 == 0) {
    ldv_irq_line_1_3 = line;
    ldv_irq_data_1_3 = data;
    ldv_irq_1_3 = 1;
    return;
  } else {
  }
  return;
}
}
void invoke_work_4(void)
{
  int tmp ;
  {
  tmp = __VERIFIER_nondet_int();
  switch (tmp) {
  case 0: ;
  if (ldv_work_4_0 == 2 || ldv_work_4_0 == 3) {
    ldv_work_4_0 = 4;
    il4965_bg_run_time_calib_work(ldv_work_struct_4_0);
    ldv_work_4_0 = 1;
  } else {
  }
  goto ldv_56396;
  case 1: ;
  if (ldv_work_4_1 == 2 || ldv_work_4_1 == 3) {
    ldv_work_4_1 = 4;
    il4965_bg_run_time_calib_work(ldv_work_struct_4_0);
    ldv_work_4_1 = 1;
  } else {
  }
  goto ldv_56396;
  case 2: ;
  if (ldv_work_4_2 == 2 || ldv_work_4_2 == 3) {
    ldv_work_4_2 = 4;
    il4965_bg_run_time_calib_work(ldv_work_struct_4_0);
    ldv_work_4_2 = 1;
  } else {
  }
  goto ldv_56396;
  case 3: ;
  if (ldv_work_4_3 == 2 || ldv_work_4_3 == 3) {
    ldv_work_4_3 = 4;
    il4965_bg_run_time_calib_work(ldv_work_struct_4_0);
    ldv_work_4_3 = 1;
  } else {
  }
  goto ldv_56396;
  default:
  ldv_stop();
  }
  ldv_56396: ;
  return;
}
}
void timer_init_9(void)
{
  {
  ldv_timer_9_0 = 0;
  ldv_timer_9_1 = 0;
  ldv_timer_9_2 = 0;
  ldv_timer_9_3 = 0;
  return;
}
}
void call_and_disable_work_5(struct work_struct *work )
{
  {
  if ((ldv_work_5_0 == 2 || ldv_work_5_0 == 3) && (unsigned long )work == (unsigned long )ldv_work_struct_5_0) {
    il4965_bg_init_alive_start(work);
    ldv_work_5_0 = 1;
    return;
  } else {
  }
  if ((ldv_work_5_1 == 2 || ldv_work_5_1 == 3) && (unsigned long )work == (unsigned long )ldv_work_struct_5_1) {
    il4965_bg_init_alive_start(work);
    ldv_work_5_1 = 1;
    return;
  } else {
  }
  if ((ldv_work_5_2 == 2 || ldv_work_5_2 == 3) && (unsigned long )work == (unsigned long )ldv_work_struct_5_2) {
    il4965_bg_init_alive_start(work);
    ldv_work_5_2 = 1;
    return;
  } else {
  }
  if ((ldv_work_5_3 == 2 || ldv_work_5_3 == 3) && (unsigned long )work == (unsigned long )ldv_work_struct_5_3) {
    il4965_bg_init_alive_start(work);
    ldv_work_5_3 = 1;
    return;
  } else {
  }
  return;
}
}
void invoke_work_2(void)
{
  int tmp ;
  {
  tmp = __VERIFIER_nondet_int();
  switch (tmp) {
  case 0: ;
  if (ldv_work_2_0 == 2 || ldv_work_2_0 == 3) {
    ldv_work_2_0 = 4;
    il4965_bg_restart(ldv_work_struct_2_0);
    ldv_work_2_0 = 1;
  } else {
  }
  goto ldv_56415;
  case 1: ;
  if (ldv_work_2_1 == 2 || ldv_work_2_1 == 3) {
    ldv_work_2_1 = 4;
    il4965_bg_restart(ldv_work_struct_2_0);
    ldv_work_2_1 = 1;
  } else {
  }
  goto ldv_56415;
  case 2: ;
  if (ldv_work_2_2 == 2 || ldv_work_2_2 == 3) {
    ldv_work_2_2 = 4;
    il4965_bg_restart(ldv_work_struct_2_0);
    ldv_work_2_2 = 1;
  } else {
  }
  goto ldv_56415;
  case 3: ;
  if (ldv_work_2_3 == 2 || ldv_work_2_3 == 3) {
    ldv_work_2_3 = 4;
    il4965_bg_restart(ldv_work_struct_2_0);
    ldv_work_2_3 = 1;
  } else {
  }
  goto ldv_56415;
  default:
  ldv_stop();
  }
  ldv_56415: ;
  return;
}
}
void activate_suitable_timer_9(struct timer_list *timer , unsigned long data )
{
  {
  if (ldv_timer_9_0 == 0 || ldv_timer_9_0 == 2) {
    ldv_timer_list_9_0 = timer;
    ldv_timer_list_9_0->data = data;
    ldv_timer_9_0 = 1;
    return;
  } else {
  }
  if (ldv_timer_9_1 == 0 || ldv_timer_9_1 == 2) {
    ldv_timer_list_9_1 = timer;
    ldv_timer_list_9_1->data = data;
    ldv_timer_9_1 = 1;
    return;
  } else {
  }
  if (ldv_timer_9_2 == 0 || ldv_timer_9_2 == 2) {
    ldv_timer_list_9_2 = timer;
    ldv_timer_list_9_2->data = data;
    ldv_timer_9_2 = 1;
    return;
  } else {
  }
  if (ldv_timer_9_3 == 0 || ldv_timer_9_3 == 2) {
    ldv_timer_list_9_3 = timer;
    ldv_timer_list_9_3->data = data;
    ldv_timer_9_3 = 1;
    return;
  } else {
  }
  return;
}
}
void activate_work_6(struct work_struct *work , int state )
{
  {
  if (ldv_work_6_0 == 0) {
    ldv_work_struct_6_0 = work;
    ldv_work_6_0 = state;
    return;
  } else {
  }
  if (ldv_work_6_1 == 0) {
    ldv_work_struct_6_1 = work;
    ldv_work_6_1 = state;
    return;
  } else {
  }
  if (ldv_work_6_2 == 0) {
    ldv_work_struct_6_2 = work;
    ldv_work_6_2 = state;
    return;
  } else {
  }
  if (ldv_work_6_3 == 0) {
    ldv_work_struct_6_3 = work;
    ldv_work_6_3 = state;
    return;
  } else {
  }
  return;
}
}
void activate_work_4(struct work_struct *work , int state )
{
  {
  if (ldv_work_4_0 == 0) {
    ldv_work_struct_4_0 = work;
    ldv_work_4_0 = state;
    return;
  } else {
  }
  if (ldv_work_4_1 == 0) {
    ldv_work_struct_4_1 = work;
    ldv_work_4_1 = state;
    return;
  } else {
  }
  if (ldv_work_4_2 == 0) {
    ldv_work_struct_4_2 = work;
    ldv_work_4_2 = state;
    return;
  } else {
  }
  if (ldv_work_4_3 == 0) {
    ldv_work_struct_4_3 = work;
    ldv_work_4_3 = state;
    return;
  } else {
  }
  return;
}
}
void call_and_disable_work_7(struct work_struct *work )
{
  {
  if ((ldv_work_7_0 == 2 || ldv_work_7_0 == 3) && (unsigned long )work == (unsigned long )ldv_work_struct_7_0) {
    il4965_bg_txpower_work(work);
    ldv_work_7_0 = 1;
    return;
  } else {
  }
  if ((ldv_work_7_1 == 2 || ldv_work_7_1 == 3) && (unsigned long )work == (unsigned long )ldv_work_struct_7_1) {
    il4965_bg_txpower_work(work);
    ldv_work_7_1 = 1;
    return;
  } else {
  }
  if ((ldv_work_7_2 == 2 || ldv_work_7_2 == 3) && (unsigned long )work == (unsigned long )ldv_work_struct_7_2) {
    il4965_bg_txpower_work(work);
    ldv_work_7_2 = 1;
    return;
  } else {
  }
  if ((ldv_work_7_3 == 2 || ldv_work_7_3 == 3) && (unsigned long )work == (unsigned long )ldv_work_struct_7_3) {
    il4965_bg_txpower_work(work);
    ldv_work_7_3 = 1;
    return;
  } else {
  }
  return;
}
}
void call_and_disable_all_5(int state )
{
  {
  if (ldv_work_5_0 == state) {
    call_and_disable_work_5(ldv_work_struct_5_0);
  } else {
  }
  if (ldv_work_5_1 == state) {
    call_and_disable_work_5(ldv_work_struct_5_1);
  } else {
  }
  if (ldv_work_5_2 == state) {
    call_and_disable_work_5(ldv_work_struct_5_2);
  } else {
  }
  if (ldv_work_5_3 == state) {
    call_and_disable_work_5(ldv_work_struct_5_3);
  } else {
  }
  return;
}
}
void choose_timer_8(void)
{
  int tmp ;
  {
  tmp = __VERIFIER_nondet_int();
  switch (tmp) {
  case 0: ;
  if (ldv_timer_8_0 == 1) {
    ldv_timer_8_0 = 2;
    ldv_timer_8(ldv_timer_8_0, ldv_timer_list_8_0);
  } else {
  }
  goto ldv_56444;
  case 1: ;
  if (ldv_timer_8_1 == 1) {
    ldv_timer_8_1 = 2;
    ldv_timer_8(ldv_timer_8_1, ldv_timer_list_8_1);
  } else {
  }
  goto ldv_56444;
  case 2: ;
  if (ldv_timer_8_2 == 1) {
    ldv_timer_8_2 = 2;
    ldv_timer_8(ldv_timer_8_2, ldv_timer_list_8_2);
  } else {
  }
  goto ldv_56444;
  case 3: ;
  if (ldv_timer_8_3 == 1) {
    ldv_timer_8_3 = 2;
    ldv_timer_8(ldv_timer_8_3, ldv_timer_list_8_3);
  } else {
  }
  goto ldv_56444;
  default:
  ldv_stop();
  }
  ldv_56444: ;
  return;
}
}
void work_init_2(void)
{
  {
  ldv_work_2_0 = 0;
  ldv_work_2_1 = 0;
  ldv_work_2_2 = 0;
  ldv_work_2_3 = 0;
  return;
}
}
int reg_timer_9(struct timer_list *timer , void (*function)(unsigned long ) , unsigned long data )
{
  {
  if ((unsigned long )function == (unsigned long )(& il_bg_watchdog)) {
    activate_suitable_timer_9(timer, data);
  } else {
  }
  return (0);
}
}
int reg_timer_8(struct timer_list *timer , void (*function)(unsigned long ) , unsigned long data )
{
  {
  if ((unsigned long )function == (unsigned long )(& il4965_bg_stats_periodic)) {
    activate_suitable_timer_8(timer, data);
  } else {
  }
  return (0);
}
}
void ldv_initialize_device_attribute_17(void)
{
  void *tmp ;
  void *tmp___0 ;
  {
  tmp = ldv_init_zalloc(48UL);
  dev_attr_tx_power_group0 = (struct device_attribute *)tmp;
  tmp___0 = ldv_init_zalloc(1416UL);
  dev_attr_tx_power_group1 = (struct device *)tmp___0;
  return;
}
}
void disable_suitable_timer_9(struct timer_list *timer )
{
  {
  if (ldv_timer_9_0 != 0 && (unsigned long )timer == (unsigned long )ldv_timer_list_9_0) {
    ldv_timer_9_0 = 0;
    return;
  } else {
  }
  if (ldv_timer_9_1 != 0 && (unsigned long )timer == (unsigned long )ldv_timer_list_9_1) {
    ldv_timer_9_1 = 0;
    return;
  } else {
  }
  if (ldv_timer_9_2 != 0 && (unsigned long )timer == (unsigned long )ldv_timer_list_9_2) {
    ldv_timer_9_2 = 0;
    return;
  } else {
  }
  if (ldv_timer_9_3 != 0 && (unsigned long )timer == (unsigned long )ldv_timer_list_9_3) {
    ldv_timer_9_3 = 0;
    return;
  } else {
  }
  return;
}
}
void activate_work_2(struct work_struct *work , int state )
{
  {
  if (ldv_work_2_0 == 0) {
    ldv_work_struct_2_0 = work;
    ldv_work_2_0 = state;
    return;
  } else {
  }
  if (ldv_work_2_1 == 0) {
    ldv_work_struct_2_1 = work;
    ldv_work_2_1 = state;
    return;
  } else {
  }
  if (ldv_work_2_2 == 0) {
    ldv_work_struct_2_2 = work;
    ldv_work_2_2 = state;
    return;
  } else {
  }
  if (ldv_work_2_3 == 0) {
    ldv_work_struct_2_3 = work;
    ldv_work_2_3 = state;
    return;
  } else {
  }
  return;
}
}
void work_init_6(void)
{
  {
  ldv_work_6_0 = 0;
  ldv_work_6_1 = 0;
  ldv_work_6_2 = 0;
  ldv_work_6_3 = 0;
  return;
}
}
void disable_work_6(struct work_struct *work )
{
  {
  if ((ldv_work_6_0 == 3 || ldv_work_6_0 == 2) && (unsigned long )ldv_work_struct_6_0 == (unsigned long )work) {
    ldv_work_6_0 = 1;
  } else {
  }
  if ((ldv_work_6_1 == 3 || ldv_work_6_1 == 2) && (unsigned long )ldv_work_struct_6_1 == (unsigned long )work) {
    ldv_work_6_1 = 1;
  } else {
  }
  if ((ldv_work_6_2 == 3 || ldv_work_6_2 == 2) && (unsigned long )ldv_work_struct_6_2 == (unsigned long )work) {
    ldv_work_6_2 = 1;
  } else {
  }
  if ((ldv_work_6_3 == 3 || ldv_work_6_3 == 2) && (unsigned long )ldv_work_struct_6_3 == (unsigned long )work) {
    ldv_work_6_3 = 1;
  } else {
  }
  return;
}
}
void choose_interrupt_1(void)
{
  int tmp ;
  {
  tmp = __VERIFIER_nondet_int();
  switch (tmp) {
  case 0:
  ldv_irq_1_0 = ldv_irq_1(ldv_irq_1_0, ldv_irq_line_1_0, ldv_irq_data_1_0);
  goto ldv_56484;
  case 1:
  ldv_irq_1_0 = ldv_irq_1(ldv_irq_1_1, ldv_irq_line_1_1, ldv_irq_data_1_1);
  goto ldv_56484;
  case 2:
  ldv_irq_1_0 = ldv_irq_1(ldv_irq_1_2, ldv_irq_line_1_2, ldv_irq_data_1_2);
  goto ldv_56484;
  case 3:
  ldv_irq_1_0 = ldv_irq_1(ldv_irq_1_3, ldv_irq_line_1_3, ldv_irq_data_1_3);
  goto ldv_56484;
  default:
  ldv_stop();
  }
  ldv_56484: ;
  return;
}
}
void invoke_work_5(void)
{
  int tmp ;
  {
  tmp = __VERIFIER_nondet_int();
  switch (tmp) {
  case 0: ;
  if (ldv_work_5_0 == 2 || ldv_work_5_0 == 3) {
    ldv_work_5_0 = 4;
    il4965_bg_init_alive_start(ldv_work_struct_5_0);
    ldv_work_5_0 = 1;
  } else {
  }
  goto ldv_56495;
  case 1: ;
  if (ldv_work_5_1 == 2 || ldv_work_5_1 == 3) {
    ldv_work_5_1 = 4;
    il4965_bg_init_alive_start(ldv_work_struct_5_0);
    ldv_work_5_1 = 1;
  } else {
  }
  goto ldv_56495;
  case 2: ;
  if (ldv_work_5_2 == 2 || ldv_work_5_2 == 3) {
    ldv_work_5_2 = 4;
    il4965_bg_init_alive_start(ldv_work_struct_5_0);
    ldv_work_5_2 = 1;
  } else {
  }
  goto ldv_56495;
  case 3: ;
  if (ldv_work_5_3 == 2 || ldv_work_5_3 == 3) {
    ldv_work_5_3 = 4;
    il4965_bg_init_alive_start(ldv_work_struct_5_0);
    ldv_work_5_3 = 1;
  } else {
  }
  goto ldv_56495;
  default:
  ldv_stop();
  }
  ldv_56495: ;
  return;
}
}
void ldv_initialize_device_attribute_19(void)
{
  void *tmp ;
  void *tmp___0 ;
  {
  tmp = ldv_init_zalloc(48UL);
  dev_attr_debug_level_group0 = (struct device_attribute *)tmp;
  tmp___0 = ldv_init_zalloc(1416UL);
  dev_attr_debug_level_group1 = (struct device *)tmp___0;
  return;
}
}
void activate_work_7(struct work_struct *work , int state )
{
  {
  if (ldv_work_7_0 == 0) {
    ldv_work_struct_7_0 = work;
    ldv_work_7_0 = state;
    return;
  } else {
  }
  if (ldv_work_7_1 == 0) {
    ldv_work_struct_7_1 = work;
    ldv_work_7_1 = state;
    return;
  } else {
  }
  if (ldv_work_7_2 == 0) {
    ldv_work_struct_7_2 = work;
    ldv_work_7_2 = state;
    return;
  } else {
  }
  if (ldv_work_7_3 == 0) {
    ldv_work_struct_7_3 = work;
    ldv_work_7_3 = state;
    return;
  } else {
  }
  return;
}
}
void choose_timer_9(void)
{
  int tmp ;
  {
  tmp = __VERIFIER_nondet_int();
  switch (tmp) {
  case 0: ;
  if (ldv_timer_9_0 == 1) {
    ldv_timer_9_0 = 2;
    ldv_timer_9(ldv_timer_9_0, ldv_timer_list_9_0);
  } else {
  }
  goto ldv_56511;
  case 1: ;
  if (ldv_timer_9_1 == 1) {
    ldv_timer_9_1 = 2;
    ldv_timer_9(ldv_timer_9_1, ldv_timer_list_9_1);
  } else {
  }
  goto ldv_56511;
  case 2: ;
  if (ldv_timer_9_2 == 1) {
    ldv_timer_9_2 = 2;
    ldv_timer_9(ldv_timer_9_2, ldv_timer_list_9_2);
  } else {
  }
  goto ldv_56511;
  case 3: ;
  if (ldv_timer_9_3 == 1) {
    ldv_timer_9_3 = 2;
    ldv_timer_9(ldv_timer_9_3, ldv_timer_list_9_3);
  } else {
  }
  goto ldv_56511;
  default:
  ldv_stop();
  }
  ldv_56511: ;
  return;
}
}
void disable_work_2(struct work_struct *work )
{
  {
  if ((ldv_work_2_0 == 3 || ldv_work_2_0 == 2) && (unsigned long )ldv_work_struct_2_0 == (unsigned long )work) {
    ldv_work_2_0 = 1;
  } else {
  }
  if ((ldv_work_2_1 == 3 || ldv_work_2_1 == 2) && (unsigned long )ldv_work_struct_2_1 == (unsigned long )work) {
    ldv_work_2_1 = 1;
  } else {
  }
  if ((ldv_work_2_2 == 3 || ldv_work_2_2 == 2) && (unsigned long )ldv_work_struct_2_2 == (unsigned long )work) {
    ldv_work_2_2 = 1;
  } else {
  }
  if ((ldv_work_2_3 == 3 || ldv_work_2_3 == 2) && (unsigned long )ldv_work_struct_2_3 == (unsigned long )work) {
    ldv_work_2_3 = 1;
  } else {
  }
  return;
}
}
void disable_work_4(struct work_struct *work )
{
  {
  if ((ldv_work_4_0 == 3 || ldv_work_4_0 == 2) && (unsigned long )ldv_work_struct_4_0 == (unsigned long )work) {
    ldv_work_4_0 = 1;
  } else {
  }
  if ((ldv_work_4_1 == 3 || ldv_work_4_1 == 2) && (unsigned long )ldv_work_struct_4_1 == (unsigned long )work) {
    ldv_work_4_1 = 1;
  } else {
  }
  if ((ldv_work_4_2 == 3 || ldv_work_4_2 == 2) && (unsigned long )ldv_work_struct_4_2 == (unsigned long )work) {
    ldv_work_4_2 = 1;
  } else {
  }
  if ((ldv_work_4_3 == 3 || ldv_work_4_3 == 2) && (unsigned long )ldv_work_struct_4_3 == (unsigned long )work) {
    ldv_work_4_3 = 1;
  } else {
  }
  return;
}
}
void work_init_4(void)
{
  {
  ldv_work_4_0 = 0;
  ldv_work_4_1 = 0;
  ldv_work_4_2 = 0;
  ldv_work_4_3 = 0;
  return;
}
}
void invoke_work_3(void)
{
  int tmp ;
  {
  tmp = __VERIFIER_nondet_int();
  switch (tmp) {
  case 0: ;
  if (ldv_work_3_0 == 2 || ldv_work_3_0 == 3) {
    ldv_work_3_0 = 4;
    il4965_bg_rx_replenish(ldv_work_struct_3_0);
    ldv_work_3_0 = 1;
  } else {
  }
  goto ldv_56531;
  case 1: ;
  if (ldv_work_3_1 == 2 || ldv_work_3_1 == 3) {
    ldv_work_3_1 = 4;
    il4965_bg_rx_replenish(ldv_work_struct_3_0);
    ldv_work_3_1 = 1;
  } else {
  }
  goto ldv_56531;
  case 2: ;
  if (ldv_work_3_2 == 2 || ldv_work_3_2 == 3) {
    ldv_work_3_2 = 4;
    il4965_bg_rx_replenish(ldv_work_struct_3_0);
    ldv_work_3_2 = 1;
  } else {
  }
  goto ldv_56531;
  case 3: ;
  if (ldv_work_3_3 == 2 || ldv_work_3_3 == 3) {
    ldv_work_3_3 = 4;
    il4965_bg_rx_replenish(ldv_work_struct_3_0);
    ldv_work_3_3 = 1;
  } else {
  }
  goto ldv_56531;
  default:
  ldv_stop();
  }
  ldv_56531: ;
  return;
}
}
int ldv_irq_1(int state , int line , void *data )
{
  irqreturn_t irq_retval ;
  int tmp ;
  int tmp___0 ;
  {
  tmp = __VERIFIER_nondet_int();
  irq_retval = (irqreturn_t )tmp;
  if (state != 0) {
    tmp___0 = __VERIFIER_nondet_int();
    switch (tmp___0) {
    case 0: ;
    if (state == 1) {
      LDV_IN_INTERRUPT = 2;
      irq_retval = il_isr(line, data);
      LDV_IN_INTERRUPT = 1;
      return (state);
    } else {
    }
    goto ldv_56543;
    default:
    ldv_stop();
    }
    ldv_56543: ;
  } else {
  }
  return (state);
}
}
void ldv_timer_8(int state , struct timer_list *timer )
{
  {
  LDV_IN_INTERRUPT = 2;
  il4965_bg_stats_periodic(timer->data);
  LDV_IN_INTERRUPT = 1;
  return;
}
}
void timer_init_8(void)
{
  {
  ldv_timer_8_0 = 0;
  ldv_timer_8_1 = 0;
  ldv_timer_8_2 = 0;
  ldv_timer_8_3 = 0;
  return;
}
}
void call_and_disable_all_3(int state )
{
  {
  if (ldv_work_3_0 == state) {
    call_and_disable_work_3(ldv_work_struct_3_0);
  } else {
  }
  if (ldv_work_3_1 == state) {
    call_and_disable_work_3(ldv_work_struct_3_1);
  } else {
  }
  if (ldv_work_3_2 == state) {
    call_and_disable_work_3(ldv_work_struct_3_2);
  } else {
  }
  if (ldv_work_3_3 == state) {
    call_and_disable_work_3(ldv_work_struct_3_3);
  } else {
  }
  return;
}
}
void activate_suitable_timer_8(struct timer_list *timer , unsigned long data )
{
  {
  if (ldv_timer_8_0 == 0 || ldv_timer_8_0 == 2) {
    ldv_timer_list_8_0 = timer;
    ldv_timer_list_8_0->data = data;
    ldv_timer_8_0 = 1;
    return;
  } else {
  }
  if (ldv_timer_8_1 == 0 || ldv_timer_8_1 == 2) {
    ldv_timer_list_8_1 = timer;
    ldv_timer_list_8_1->data = data;
    ldv_timer_8_1 = 1;
    return;
  } else {
  }
  if (ldv_timer_8_2 == 0 || ldv_timer_8_2 == 2) {
    ldv_timer_list_8_2 = timer;
    ldv_timer_list_8_2->data = data;
    ldv_timer_8_2 = 1;
    return;
  } else {
  }
  if (ldv_timer_8_3 == 0 || ldv_timer_8_3 == 2) {
    ldv_timer_list_8_3 = timer;
    ldv_timer_list_8_3->data = data;
    ldv_timer_8_3 = 1;
    return;
  } else {
  }
  return;
}
}
void call_and_disable_work_6(struct work_struct *work )
{
  {
  if ((ldv_work_6_0 == 2 || ldv_work_6_0 == 3) && (unsigned long )work == (unsigned long )ldv_work_struct_6_0) {
    il4965_bg_alive_start(work);
    ldv_work_6_0 = 1;
    return;
  } else {
  }
  if ((ldv_work_6_1 == 2 || ldv_work_6_1 == 3) && (unsigned long )work == (unsigned long )ldv_work_struct_6_1) {
    il4965_bg_alive_start(work);
    ldv_work_6_1 = 1;
    return;
  } else {
  }
  if ((ldv_work_6_2 == 2 || ldv_work_6_2 == 3) && (unsigned long )work == (unsigned long )ldv_work_struct_6_2) {
    il4965_bg_alive_start(work);
    ldv_work_6_2 = 1;
    return;
  } else {
  }
  if ((ldv_work_6_3 == 2 || ldv_work_6_3 == 3) && (unsigned long )work == (unsigned long )ldv_work_struct_6_3) {
    il4965_bg_alive_start(work);
    ldv_work_6_3 = 1;
    return;
  } else {
  }
  return;
}
}
void call_and_disable_work_4(struct work_struct *work )
{
  {
  if ((ldv_work_4_0 == 2 || ldv_work_4_0 == 3) && (unsigned long )work == (unsigned long )ldv_work_struct_4_0) {
    il4965_bg_run_time_calib_work(work);
    ldv_work_4_0 = 1;
    return;
  } else {
  }
  if ((ldv_work_4_1 == 2 || ldv_work_4_1 == 3) && (unsigned long )work == (unsigned long )ldv_work_struct_4_1) {
    il4965_bg_run_time_calib_work(work);
    ldv_work_4_1 = 1;
    return;
  } else {
  }
  if ((ldv_work_4_2 == 2 || ldv_work_4_2 == 3) && (unsigned long )work == (unsigned long )ldv_work_struct_4_2) {
    il4965_bg_run_time_calib_work(work);
    ldv_work_4_2 = 1;
    return;
  } else {
  }
  if ((ldv_work_4_3 == 2 || ldv_work_4_3 == 3) && (unsigned long )work == (unsigned long )ldv_work_struct_4_3) {
    il4965_bg_run_time_calib_work(work);
    ldv_work_4_3 = 1;
    return;
  } else {
  }
  return;
}
}
void call_and_disable_work_2(struct work_struct *work )
{
  {
  if ((ldv_work_2_0 == 2 || ldv_work_2_0 == 3) && (unsigned long )work == (unsigned long )ldv_work_struct_2_0) {
    il4965_bg_restart(work);
    ldv_work_2_0 = 1;
    return;
  } else {
  }
  if ((ldv_work_2_1 == 2 || ldv_work_2_1 == 3) && (unsigned long )work == (unsigned long )ldv_work_struct_2_1) {
    il4965_bg_restart(work);
    ldv_work_2_1 = 1;
    return;
  } else {
  }
  if ((ldv_work_2_2 == 2 || ldv_work_2_2 == 3) && (unsigned long )work == (unsigned long )ldv_work_struct_2_2) {
    il4965_bg_restart(work);
    ldv_work_2_2 = 1;
    return;
  } else {
  }
  if ((ldv_work_2_3 == 2 || ldv_work_2_3 == 3) && (unsigned long )work == (unsigned long )ldv_work_struct_2_3) {
    il4965_bg_restart(work);
    ldv_work_2_3 = 1;
    return;
  } else {
  }
  return;
}
}
void ldv_main_exported_11(void) ;
void ldv_main_exported_13(void) ;
void ldv_main_exported_12(void) ;
void ldv_main_exported_14(void) ;
void ldv_main_exported_10(void) ;
int main(void)
{
  char *ldvarg21 ;
  void *tmp ;
  size_t ldvarg20 ;
  char *ldvarg19 ;
  void *tmp___0 ;
  struct device_attribute *ldvarg24 ;
  void *tmp___1 ;
  char *ldvarg23 ;
  void *tmp___2 ;
  struct device *ldvarg22 ;
  void *tmp___3 ;
  struct ieee80211_tx_control *ldvarg51 ;
  void *tmp___4 ;
  struct ieee80211_vif *ldvarg32 ;
  void *tmp___5 ;
  u32 ldvarg67 ;
  struct ieee80211_vif *ldvarg43 ;
  void *tmp___6 ;
  struct ieee80211_channel_switch *ldvarg42 ;
  void *tmp___7 ;
  struct ieee80211_vif *ldvarg56 ;
  void *tmp___8 ;
  struct sk_buff *ldvarg50 ;
  void *tmp___9 ;
  enum ieee80211_ampdu_mlme_action ldvarg46 ;
  struct ieee80211_bss_conf *ldvarg58 ;
  void *tmp___10 ;
  struct ieee80211_vif *ldvarg37 ;
  void *tmp___11 ;
  struct ieee80211_vif *ldvarg53 ;
  void *tmp___12 ;
  bool ldvarg64 ;
  enum nl80211_iftype ldvarg29 ;
  u16 *ldvarg44 ;
  void *tmp___13 ;
  struct ieee80211_sta *ldvarg35 ;
  void *tmp___14 ;
  u32 ldvarg38 ;
  struct ieee80211_vif *ldvarg33 ;
  void *tmp___15 ;
  struct ieee80211_vif *ldvarg48 ;
  void *tmp___16 ;
  bool ldvarg28 ;
  u16 *ldvarg34 ;
  void *tmp___17 ;
  u8 ldvarg47 ;
  u64 ldvarg39 ;
  struct ieee80211_scan_request *ldvarg31 ;
  void *tmp___18 ;
  struct ieee80211_sta *ldvarg60 ;
  void *tmp___19 ;
  unsigned int ldvarg41 ;
  struct ieee80211_vif *ldvarg59 ;
  void *tmp___20 ;
  u16 ldvarg49 ;
  enum set_key_cmd ldvarg62 ;
  u32 ldvarg65 ;
  u32 ldvarg57 ;
  struct ieee80211_vif *ldvarg66 ;
  void *tmp___21 ;
  struct ieee80211_key_conf *ldvarg36 ;
  void *tmp___22 ;
  u16 ldvarg55 ;
  unsigned int *ldvarg40 ;
  void *tmp___23 ;
  struct ieee80211_sta *ldvarg45 ;
  void *tmp___24 ;
  struct ieee80211_key_conf *ldvarg63 ;
  void *tmp___25 ;
  struct ieee80211_vif *ldvarg27 ;
  void *tmp___26 ;
  struct ieee80211_sta *ldvarg26 ;
  void *tmp___27 ;
  struct ieee80211_vif *ldvarg68 ;
  void *tmp___28 ;
  struct ieee80211_vif *ldvarg30 ;
  void *tmp___29 ;
  struct ieee80211_tx_queue_params *ldvarg54 ;
  void *tmp___30 ;
  struct ieee80211_vif *ldvarg61 ;
  void *tmp___31 ;
  struct ieee80211_vif *ldvarg25 ;
  void *tmp___32 ;
  struct ieee80211_sta *ldvarg52 ;
  void *tmp___33 ;
  struct pci_device_id *ldvarg102 ;
  void *tmp___34 ;
  size_t ldvarg104 ;
  char *ldvarg105 ;
  void *tmp___35 ;
  char *ldvarg103 ;
  void *tmp___36 ;
  int tmp___37 ;
  int tmp___38 ;
  int tmp___39 ;
  int tmp___40 ;
  int tmp___41 ;
  int tmp___42 ;
  int tmp___43 ;
  {
  tmp = ldv_init_zalloc(1UL);
  ldvarg21 = (char *)tmp;
  tmp___0 = ldv_init_zalloc(1UL);
  ldvarg19 = (char *)tmp___0;
  tmp___1 = ldv_init_zalloc(48UL);
  ldvarg24 = (struct device_attribute *)tmp___1;
  tmp___2 = ldv_init_zalloc(1UL);
  ldvarg23 = (char *)tmp___2;
  tmp___3 = ldv_init_zalloc(1416UL);
  ldvarg22 = (struct device *)tmp___3;
  tmp___4 = ldv_init_zalloc(8UL);
  ldvarg51 = (struct ieee80211_tx_control *)tmp___4;
  tmp___5 = ldv_init_zalloc(296UL);
  ldvarg32 = (struct ieee80211_vif *)tmp___5;
  tmp___6 = ldv_init_zalloc(296UL);
  ldvarg43 = (struct ieee80211_vif *)tmp___6;
  tmp___7 = ldv_init_zalloc(48UL);
  ldvarg42 = (struct ieee80211_channel_switch *)tmp___7;
  tmp___8 = ldv_init_zalloc(296UL);
  ldvarg56 = (struct ieee80211_vif *)tmp___8;
  tmp___9 = ldv_init_zalloc(232UL);
  ldvarg50 = (struct sk_buff *)tmp___9;
  tmp___10 = ldv_init_zalloc(240UL);
  ldvarg58 = (struct ieee80211_bss_conf *)tmp___10;
  tmp___11 = ldv_init_zalloc(296UL);
  ldvarg37 = (struct ieee80211_vif *)tmp___11;
  tmp___12 = ldv_init_zalloc(296UL);
  ldvarg53 = (struct ieee80211_vif *)tmp___12;
  tmp___13 = ldv_init_zalloc(2UL);
  ldvarg44 = (u16 *)tmp___13;
  tmp___14 = ldv_init_zalloc(216UL);
  ldvarg35 = (struct ieee80211_sta *)tmp___14;
  tmp___15 = ldv_init_zalloc(296UL);
  ldvarg33 = (struct ieee80211_vif *)tmp___15;
  tmp___16 = ldv_init_zalloc(296UL);
  ldvarg48 = (struct ieee80211_vif *)tmp___16;
  tmp___17 = ldv_init_zalloc(2UL);
  ldvarg34 = (u16 *)tmp___17;
  tmp___18 = ldv_init_zalloc(168UL);
  ldvarg31 = (struct ieee80211_scan_request *)tmp___18;
  tmp___19 = ldv_init_zalloc(216UL);
  ldvarg60 = (struct ieee80211_sta *)tmp___19;
  tmp___20 = ldv_init_zalloc(296UL);
  ldvarg59 = (struct ieee80211_vif *)tmp___20;
  tmp___21 = ldv_init_zalloc(296UL);
  ldvarg66 = (struct ieee80211_vif *)tmp___21;
  tmp___22 = ldv_init_zalloc(24UL);
  ldvarg36 = (struct ieee80211_key_conf *)tmp___22;
  tmp___23 = ldv_init_zalloc(4UL);
  ldvarg40 = (unsigned int *)tmp___23;
  tmp___24 = ldv_init_zalloc(216UL);
  ldvarg45 = (struct ieee80211_sta *)tmp___24;
  tmp___25 = ldv_init_zalloc(24UL);
  ldvarg63 = (struct ieee80211_key_conf *)tmp___25;
  tmp___26 = ldv_init_zalloc(296UL);
  ldvarg27 = (struct ieee80211_vif *)tmp___26;
  tmp___27 = ldv_init_zalloc(216UL);
  ldvarg26 = (struct ieee80211_sta *)tmp___27;
  tmp___28 = ldv_init_zalloc(296UL);
  ldvarg68 = (struct ieee80211_vif *)tmp___28;
  tmp___29 = ldv_init_zalloc(296UL);
  ldvarg30 = (struct ieee80211_vif *)tmp___29;
  tmp___30 = ldv_init_zalloc(10UL);
  ldvarg54 = (struct ieee80211_tx_queue_params *)tmp___30;
  tmp___31 = ldv_init_zalloc(296UL);
  ldvarg61 = (struct ieee80211_vif *)tmp___31;
  tmp___32 = ldv_init_zalloc(296UL);
  ldvarg25 = (struct ieee80211_vif *)tmp___32;
  tmp___33 = ldv_init_zalloc(216UL);
  ldvarg52 = (struct ieee80211_sta *)tmp___33;
  tmp___34 = ldv_init_zalloc(32UL);
  ldvarg102 = (struct pci_device_id *)tmp___34;
  tmp___35 = ldv_init_zalloc(1UL);
  ldvarg105 = (char *)tmp___35;
  tmp___36 = ldv_init_zalloc(1UL);
  ldvarg103 = (char *)tmp___36;
  ldv_initialize();
  ldv_memset((void *)(& ldvarg20), 0, 8UL);
  ldv_memset((void *)(& ldvarg67), 0, 4UL);
  ldv_memset((void *)(& ldvarg46), 0, 4UL);
  ldv_memset((void *)(& ldvarg64), 0, 1UL);
  ldv_memset((void *)(& ldvarg29), 0, 4UL);
  ldv_memset((void *)(& ldvarg38), 0, 4UL);
  ldv_memset((void *)(& ldvarg28), 0, 1UL);
  ldv_memset((void *)(& ldvarg47), 0, 1UL);
  ldv_memset((void *)(& ldvarg39), 0, 8UL);
  ldv_memset((void *)(& ldvarg41), 0, 4UL);
  ldv_memset((void *)(& ldvarg49), 0, 2UL);
  ldv_memset((void *)(& ldvarg62), 0, 4UL);
  ldv_memset((void *)(& ldvarg65), 0, 4UL);
  ldv_memset((void *)(& ldvarg57), 0, 4UL);
  ldv_memset((void *)(& ldvarg55), 0, 2UL);
  ldv_memset((void *)(& ldvarg104), 0, 8UL);
  ldv_state_variable_11 = 0;
  work_init_7();
  ldv_state_variable_7 = 1;
  ldv_state_variable_17 = 0;
  work_init_2();
  ldv_state_variable_2 = 1;
  ldv_state_variable_1 = 1;
  ldv_state_variable_18 = 0;
  ref_cnt = 0;
  ldv_state_variable_0 = 1;
  ldv_state_variable_16 = 0;
  ldv_state_variable_13 = 0;
  work_init_6();
  ldv_state_variable_6 = 1;
  work_init_3();
  ldv_state_variable_3 = 1;
  timer_init_9();
  ldv_state_variable_9 = 1;
  ldv_state_variable_12 = 0;
  ldv_state_variable_20 = 0;
  ldv_state_variable_14 = 0;
  ldv_state_variable_15 = 0;
  timer_init_8();
  ldv_state_variable_8 = 1;
  work_init_4();
  ldv_state_variable_4 = 1;
  ldv_state_variable_19 = 0;
  ldv_state_variable_10 = 0;
  work_init_5();
  ldv_state_variable_5 = 1;
  ldv_56723:
  tmp___37 = __VERIFIER_nondet_int();
  switch (tmp___37) {
  case 0: ;
  if (ldv_state_variable_11 != 0) {
    ldv_main_exported_11();
  } else {
  }
  goto ldv_56658;
  case 1: ;
  if (ldv_state_variable_7 != 0) {
    invoke_work_7();
  } else {
  }
  goto ldv_56658;
  case 2: ;
  if (ldv_state_variable_17 != 0) {
    tmp___38 = __VERIFIER_nondet_int();
    switch (tmp___38) {
    case 0: ;
    if (ldv_state_variable_17 == 1) {
      il4965_store_tx_power(dev_attr_tx_power_group1, dev_attr_tx_power_group0, (char const *)ldvarg21,
                            ldvarg20);
      ldv_state_variable_17 = 1;
    } else {
    }
    goto ldv_56662;
    case 1: ;
    if (ldv_state_variable_17 == 1) {
      il4965_show_tx_power(dev_attr_tx_power_group1, dev_attr_tx_power_group0, ldvarg19);
      ldv_state_variable_17 = 1;
    } else {
    }
    goto ldv_56662;
    default:
    ldv_stop();
    }
    ldv_56662: ;
  } else {
  }
  goto ldv_56658;
  case 3: ;
  if (ldv_state_variable_2 != 0) {
    invoke_work_2();
  } else {
  }
  goto ldv_56658;
  case 4: ;
  if (ldv_state_variable_1 != 0) {
    choose_interrupt_1();
  } else {
  }
  goto ldv_56658;
  case 5: ;
  if (ldv_state_variable_18 != 0) {
    tmp___39 = __VERIFIER_nondet_int();
    switch (tmp___39) {
    case 0: ;
    if (ldv_state_variable_18 == 1) {
      il4965_show_temperature(ldvarg22, ldvarg24, ldvarg23);
      ldv_state_variable_18 = 1;
    } else {
    }
    goto ldv_56669;
    default:
    ldv_stop();
    }
    ldv_56669: ;
  } else {
  }
  goto ldv_56658;
  case 6: ;
  if (ldv_state_variable_0 != 0) {
    tmp___40 = __VERIFIER_nondet_int();
    switch (tmp___40) {
    case 0: ;
    if (ldv_state_variable_0 == 3 && ref_cnt == 0) {
      il4965_exit();
      ldv_state_variable_0 = 2;
      goto ldv_final;
    } else {
    }
    goto ldv_56674;
    case 1: ;
    if (ldv_state_variable_0 == 1) {
      ldv_retval_0 = il4965_init();
      if (ldv_retval_0 == 0) {
        ldv_state_variable_0 = 3;
        ldv_state_variable_19 = 1;
        ldv_initialize_device_attribute_19();
        ldv_state_variable_13 = 1;
        ldv_file_operations_13();
        ldv_state_variable_10 = 1;
        ldv_initialize_il_debugfs_ops_10();
        ldv_state_variable_18 = 1;
        ldv_state_variable_14 = 1;
        ldv_file_operations_14();
        ldv_state_variable_20 = 1;
        ldv_initialize_il_ops_20();
        ldv_state_variable_12 = 1;
        ldv_file_operations_12();
        ldv_state_variable_17 = 1;
        ldv_initialize_device_attribute_17();
        ldv_state_variable_11 = 1;
        ldv_initialize_rate_control_ops_11();
      } else {
      }
      if (ldv_retval_0 != 0) {
        ldv_state_variable_0 = 2;
        goto ldv_final;
      } else {
      }
    } else {
    }
    goto ldv_56674;
    default:
    ldv_stop();
    }
    ldv_56674: ;
  } else {
  }
  goto ldv_56658;
  case 7: ;
  if (ldv_state_variable_16 != 0) {
    tmp___41 = __VERIFIER_nondet_int();
    switch (tmp___41) {
    case 0: ;
    if (ldv_state_variable_16 == 1) {
      ldv_retval_1 = il4965_mac_start(il4965_mac_ops_group0);
      if (ldv_retval_1 == 0) {
        ldv_state_variable_16 = 2;
        ref_cnt = ref_cnt + 1;
      } else {
      }
    } else {
    }
    goto ldv_56679;
    case 1: ;
    if (ldv_state_variable_16 == 1) {
      il_mac_reset_tsf(il4965_mac_ops_group0, ldvarg68);
      ldv_state_variable_16 = 1;
    } else {
    }
    if (ldv_state_variable_16 == 2) {
      il_mac_reset_tsf(il4965_mac_ops_group0, ldvarg68);
      ldv_state_variable_16 = 2;
    } else {
    }
    goto ldv_56679;
    case 2: ;
    if (ldv_state_variable_16 == 1) {
      il_mac_config(il4965_mac_ops_group0, ldvarg67);
      ldv_state_variable_16 = 1;
    } else {
    }
    if (ldv_state_variable_16 == 2) {
      il_mac_config(il4965_mac_ops_group0, ldvarg67);
      ldv_state_variable_16 = 2;
    } else {
    }
    goto ldv_56679;
    case 3: ;
    if (ldv_state_variable_16 == 1) {
      il_mac_flush(il4965_mac_ops_group0, ldvarg66, ldvarg65, (int )ldvarg64);
      ldv_state_variable_16 = 1;
    } else {
    }
    if (ldv_state_variable_16 == 2) {
      il_mac_flush(il4965_mac_ops_group0, ldvarg66, ldvarg65, (int )ldvarg64);
      ldv_state_variable_16 = 2;
    } else {
    }
    goto ldv_56679;
    case 4: ;
    if (ldv_state_variable_16 == 1) {
      il4965_mac_set_key(il4965_mac_ops_group0, ldvarg62, ldvarg61, ldvarg60, ldvarg63);
      ldv_state_variable_16 = 1;
    } else {
    }
    if (ldv_state_variable_16 == 2) {
      il4965_mac_set_key(il4965_mac_ops_group0, ldvarg62, ldvarg61, ldvarg60, ldvarg63);
      ldv_state_variable_16 = 2;
    } else {
    }
    goto ldv_56679;
    case 5: ;
    if (ldv_state_variable_16 == 1) {
      il_mac_bss_info_changed(il4965_mac_ops_group0, ldvarg59, ldvarg58, ldvarg57);
      ldv_state_variable_16 = 1;
    } else {
    }
    if (ldv_state_variable_16 == 2) {
      il_mac_bss_info_changed(il4965_mac_ops_group0, ldvarg59, ldvarg58, ldvarg57);
      ldv_state_variable_16 = 2;
    } else {
    }
    goto ldv_56679;
    case 6: ;
    if (ldv_state_variable_16 == 1) {
      il_mac_conf_tx(il4965_mac_ops_group0, ldvarg56, (int )ldvarg55, (struct ieee80211_tx_queue_params const *)ldvarg54);
      ldv_state_variable_16 = 1;
    } else {
    }
    if (ldv_state_variable_16 == 2) {
      il_mac_conf_tx(il4965_mac_ops_group0, ldvarg56, (int )ldvarg55, (struct ieee80211_tx_queue_params const *)ldvarg54);
      ldv_state_variable_16 = 2;
    } else {
    }
    goto ldv_56679;
    case 7: ;
    if (ldv_state_variable_16 == 2) {
      il4965_mac_stop(il4965_mac_ops_group0);
      ldv_state_variable_16 = 1;
      ref_cnt = ref_cnt - 1;
    } else {
    }
    goto ldv_56679;
    case 8: ;
    if (ldv_state_variable_16 == 1) {
      il4965_mac_sta_add(il4965_mac_ops_group0, ldvarg53, ldvarg52);
      ldv_state_variable_16 = 1;
    } else {
    }
    if (ldv_state_variable_16 == 2) {
      il4965_mac_sta_add(il4965_mac_ops_group0, ldvarg53, ldvarg52);
      ldv_state_variable_16 = 2;
    } else {
    }
    goto ldv_56679;
    case 9: ;
    if (ldv_state_variable_16 == 1) {
      il4965_mac_tx(il4965_mac_ops_group0, ldvarg51, ldvarg50);
      ldv_state_variable_16 = 1;
    } else {
    }
    if (ldv_state_variable_16 == 2) {
      il4965_mac_tx(il4965_mac_ops_group0, ldvarg51, ldvarg50);
      ldv_state_variable_16 = 2;
    } else {
    }
    goto ldv_56679;
    case 10: ;
    if (ldv_state_variable_16 == 1) {
      il4965_mac_ampdu_action(il4965_mac_ops_group0, ldvarg48, ldvarg46, ldvarg45,
                              (int )ldvarg49, ldvarg44, (int )ldvarg47);
      ldv_state_variable_16 = 1;
    } else {
    }
    if (ldv_state_variable_16 == 2) {
      il4965_mac_ampdu_action(il4965_mac_ops_group0, ldvarg48, ldvarg46, ldvarg45,
                              (int )ldvarg49, ldvarg44, (int )ldvarg47);
      ldv_state_variable_16 = 2;
    } else {
    }
    goto ldv_56679;
    case 11: ;
    if (ldv_state_variable_16 == 1) {
      il4965_mac_channel_switch(il4965_mac_ops_group0, ldvarg43, ldvarg42);
      ldv_state_variable_16 = 1;
    } else {
    }
    if (ldv_state_variable_16 == 2) {
      il4965_mac_channel_switch(il4965_mac_ops_group0, ldvarg43, ldvarg42);
      ldv_state_variable_16 = 2;
    } else {
    }
    goto ldv_56679;
    case 12: ;
    if (ldv_state_variable_16 == 1) {
      il4965_configure_filter(il4965_mac_ops_group0, ldvarg41, ldvarg40, ldvarg39);
      ldv_state_variable_16 = 1;
    } else {
    }
    if (ldv_state_variable_16 == 2) {
      il4965_configure_filter(il4965_mac_ops_group0, ldvarg41, ldvarg40, ldvarg39);
      ldv_state_variable_16 = 2;
    } else {
    }
    goto ldv_56679;
    case 13: ;
    if (ldv_state_variable_16 == 1) {
      il_mac_tx_last_beacon(il4965_mac_ops_group0);
      ldv_state_variable_16 = 1;
    } else {
    }
    if (ldv_state_variable_16 == 2) {
      il_mac_tx_last_beacon(il4965_mac_ops_group0);
      ldv_state_variable_16 = 2;
    } else {
    }
    goto ldv_56679;
    case 14: ;
    if (ldv_state_variable_16 == 1) {
      il4965_mac_update_tkip_key(il4965_mac_ops_group0, ldvarg37, ldvarg36, ldvarg35,
                                 ldvarg38, ldvarg34);
      ldv_state_variable_16 = 1;
    } else {
    }
    if (ldv_state_variable_16 == 2) {
      il4965_mac_update_tkip_key(il4965_mac_ops_group0, ldvarg37, ldvarg36, ldvarg35,
                                 ldvarg38, ldvarg34);
      ldv_state_variable_16 = 2;
    } else {
    }
    goto ldv_56679;
    case 15: ;
    if (ldv_state_variable_16 == 1) {
      il_mac_add_interface(il4965_mac_ops_group0, ldvarg33);
      ldv_state_variable_16 = 1;
    } else {
    }
    if (ldv_state_variable_16 == 2) {
      il_mac_add_interface(il4965_mac_ops_group0, ldvarg33);
      ldv_state_variable_16 = 2;
    } else {
    }
    goto ldv_56679;
    case 16: ;
    if (ldv_state_variable_16 == 1) {
      il_mac_hw_scan(il4965_mac_ops_group0, ldvarg32, ldvarg31);
      ldv_state_variable_16 = 1;
    } else {
    }
    if (ldv_state_variable_16 == 2) {
      il_mac_hw_scan(il4965_mac_ops_group0, ldvarg32, ldvarg31);
      ldv_state_variable_16 = 2;
    } else {
    }
    goto ldv_56679;
    case 17: ;
    if (ldv_state_variable_16 == 1) {
      il_mac_change_interface(il4965_mac_ops_group0, ldvarg30, ldvarg29, (int )ldvarg28);
      ldv_state_variable_16 = 1;
    } else {
    }
    if (ldv_state_variable_16 == 2) {
      il_mac_change_interface(il4965_mac_ops_group0, ldvarg30, ldvarg29, (int )ldvarg28);
      ldv_state_variable_16 = 2;
    } else {
    }
    goto ldv_56679;
    case 18: ;
    if (ldv_state_variable_16 == 1) {
      il_mac_sta_remove(il4965_mac_ops_group0, ldvarg27, ldvarg26);
      ldv_state_variable_16 = 1;
    } else {
    }
    if (ldv_state_variable_16 == 2) {
      il_mac_sta_remove(il4965_mac_ops_group0, ldvarg27, ldvarg26);
      ldv_state_variable_16 = 2;
    } else {
    }
    goto ldv_56679;
    case 19: ;
    if (ldv_state_variable_16 == 1) {
      il_mac_remove_interface(il4965_mac_ops_group0, ldvarg25);
      ldv_state_variable_16 = 1;
    } else {
    }
    if (ldv_state_variable_16 == 2) {
      il_mac_remove_interface(il4965_mac_ops_group0, ldvarg25);
      ldv_state_variable_16 = 2;
    } else {
    }
    goto ldv_56679;
    default:
    ldv_stop();
    }
    ldv_56679: ;
  } else {
  }
  goto ldv_56658;
  case 8: ;
  if (ldv_state_variable_13 != 0) {
    ldv_main_exported_13();
  } else {
  }
  goto ldv_56658;
  case 9: ;
  if (ldv_state_variable_6 != 0) {
    invoke_work_6();
  } else {
  }
  goto ldv_56658;
  case 10: ;
  if (ldv_state_variable_3 != 0) {
    invoke_work_3();
  } else {
  }
  goto ldv_56658;
  case 11: ;
  if (ldv_state_variable_9 != 0) {
    choose_timer_9();
  } else {
  }
  goto ldv_56658;
  case 12: ;
  if (ldv_state_variable_12 != 0) {
    ldv_main_exported_12();
  } else {
  }
  goto ldv_56658;
  case 13: ;
  if (ldv_state_variable_20 != 0) {
    ldv_main_exported_20();
  } else {
  }
  goto ldv_56658;
  case 14: ;
  if (ldv_state_variable_14 != 0) {
    ldv_main_exported_14();
  } else {
  }
  goto ldv_56658;
  case 15: ;
  if (ldv_state_variable_15 != 0) {
    tmp___42 = __VERIFIER_nondet_int();
    switch (tmp___42) {
    case 0: ;
    if (ldv_state_variable_15 == 1) {
      ldv_retval_5 = il4965_pci_probe(il4965_driver_group1, (struct pci_device_id const *)ldvarg102);
      if (ldv_retval_5 == 0) {
        ldv_state_variable_15 = 2;
        ref_cnt = ref_cnt + 1;
      } else {
      }
    } else {
    }
    goto ldv_56709;
    case 1: ;
    if (ldv_state_variable_15 == 2) {
      il4965_pci_remove(il4965_driver_group1);
      ldv_state_variable_15 = 1;
    } else {
    }
    goto ldv_56709;
    case 2: ;
    if (ldv_state_variable_15 == 2) {
      ldv_shutdown_15();
      ldv_state_variable_15 = 2;
    } else {
    }
    goto ldv_56709;
    default:
    ldv_stop();
    }
    ldv_56709: ;
  } else {
  }
  goto ldv_56658;
  case 16: ;
  if (ldv_state_variable_8 != 0) {
    choose_timer_8();
  } else {
  }
  goto ldv_56658;
  case 17: ;
  if (ldv_state_variable_4 != 0) {
    invoke_work_4();
  } else {
  }
  goto ldv_56658;
  case 18: ;
  if (ldv_state_variable_19 != 0) {
    tmp___43 = __VERIFIER_nondet_int();
    switch (tmp___43) {
    case 0: ;
    if (ldv_state_variable_19 == 1) {
      il4965_store_debug_level(dev_attr_debug_level_group1, dev_attr_debug_level_group0,
                               (char const *)ldvarg105, ldvarg104);
      ldv_state_variable_19 = 1;
    } else {
    }
    goto ldv_56717;
    case 1: ;
    if (ldv_state_variable_19 == 1) {
      il4965_show_debug_level(dev_attr_debug_level_group1, dev_attr_debug_level_group0,
                              ldvarg103);
      ldv_state_variable_19 = 1;
    } else {
    }
    goto ldv_56717;
    default:
    ldv_stop();
    }
    ldv_56717: ;
  } else {
  }
  goto ldv_56658;
  case 19: ;
  if (ldv_state_variable_10 != 0) {
    ldv_main_exported_10();
  } else {
  }
  goto ldv_56658;
  case 20: ;
  if (ldv_state_variable_5 != 0) {
    invoke_work_5();
  } else {
  }
  goto ldv_56658;
  default:
  ldv_stop();
  }
  ldv_56658: ;
  goto ldv_56723;
  ldv_final:
  ldv_check_final_state();
  return 0;
}
}
__inline static void spin_lock(spinlock_t *lock )
{
  {
  ldv_spin_lock();
  ldv_spin_lock_51(lock);
  return;
}
}
__inline static void spin_lock_irq(spinlock_t *lock )
{
  {
  ldv_spin_lock();
  ldv_spin_lock_irq_54(lock);
  return;
}
}
__inline static void spin_unlock(spinlock_t *lock )
{
  {
  ldv_spin_unlock();
  ldv_spin_unlock_55(lock);
  return;
}
}
__inline static void spin_unlock_irq(spinlock_t *lock )
{
  {
  ldv_spin_unlock();
  ldv_spin_unlock_irq_57(lock);
  return;
}
}
bool ldv_queue_work_on_61(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                          struct work_struct *ldv_func_arg3 )
{
  ldv_func_ret_type___2 ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3);
  ldv_func_res = tmp;
  activate_work_7(ldv_func_arg3, 2);
  return (ldv_func_res);
}
}
bool ldv_queue_delayed_work_on_62(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                  struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 )
{
  ldv_func_ret_type___3 ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_delayed_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, ldv_func_arg4);
  ldv_func_res = tmp;
  activate_work_7(& ldv_func_arg3->work, 2);
  return (ldv_func_res);
}
}
bool ldv_queue_work_on_63(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                          struct work_struct *ldv_func_arg3 )
{
  ldv_func_ret_type___4 ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3);
  ldv_func_res = tmp;
  activate_work_7(ldv_func_arg3, 2);
  return (ldv_func_res);
}
}
void ldv_flush_workqueue_64(struct workqueue_struct *ldv_func_arg1 )
{
  {
  flush_workqueue(ldv_func_arg1);
  call_and_disable_all_7(2);
  return;
}
}
bool ldv_queue_delayed_work_on_65(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                  struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 )
{
  ldv_func_ret_type___5 ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_delayed_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, ldv_func_arg4);
  ldv_func_res = tmp;
  activate_work_7(& ldv_func_arg3->work, 2);
  return (ldv_func_res);
}
}
void *ldv_malloc(size_t size ) ;
__inline static struct page *alloc_pages(gfp_t flags , unsigned int order )
{
  void *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = ldv_undef_ptr();
  return ((struct page *)tmp);
}
}
__inline static void *kmalloc(size_t size , gfp_t flags )
{
  void *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = ldv_undef_ptr();
  return (tmp);
}
}
void *ldv_kmem_cache_alloc_71(struct kmem_cache *ldv_func_arg1 , gfp_t flags )
{
  void *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = ldv_undef_ptr();
  return (tmp);
}
}
int ldv_pskb_expand_head_77(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                            gfp_t flags )
{
  void *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = ldv_undef_ptr();
  return ((int )((long )tmp));
}
}
struct sk_buff *ldv_skb_clone_79(struct sk_buff *ldv_func_arg1 , gfp_t flags )
{
  void *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = ldv_undef_ptr();
  return ((struct sk_buff *)tmp);
}
}
struct sk_buff *ldv_skb_copy_81(struct sk_buff const *ldv_func_arg1 , gfp_t flags )
{
  void *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = ldv_undef_ptr();
  return ((struct sk_buff *)tmp);
}
}
struct sk_buff *ldv___netdev_alloc_skb_82(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                          gfp_t flags )
{
  void *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = ldv_undef_ptr();
  return ((struct sk_buff *)tmp);
}
}
struct sk_buff *ldv___netdev_alloc_skb_83(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                          gfp_t flags )
{
  void *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = ldv_undef_ptr();
  return ((struct sk_buff *)tmp);
}
}
struct sk_buff *ldv___netdev_alloc_skb_84(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                          gfp_t flags )
{
  void *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = ldv_undef_ptr();
  return ((struct sk_buff *)tmp);
}
}
int ldv_pskb_expand_head_85(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                            gfp_t flags )
{
  void *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = ldv_undef_ptr();
  return ((int )((long )tmp));
}
}
int ldv_pskb_expand_head_86(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                            gfp_t flags )
{
  void *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = ldv_undef_ptr();
  return ((int )((long )tmp));
}
}
struct sk_buff *ldv_skb_clone_87(struct sk_buff *ldv_func_arg1 , gfp_t flags )
{
  void *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = ldv_undef_ptr();
  return ((struct sk_buff *)tmp);
}
}
int ldv_mod_timer_88(struct timer_list *ldv_func_arg1 , unsigned long ldv_func_arg2 )
{
  ldv_func_ret_type___6 ldv_func_res ;
  int tmp ;
  {
  tmp = mod_timer(ldv_func_arg1, ldv_func_arg2);
  ldv_func_res = tmp;
  activate_pending_timer_9(ldv_func_arg1, ldv_func_arg2, 1);
  return (ldv_func_res);
}
}
int ldv_del_timer_sync_89(struct timer_list *ldv_func_arg1 )
{
  ldv_func_ret_type___7 ldv_func_res ;
  int tmp ;
  {
  tmp = del_timer_sync(ldv_func_arg1);
  ldv_func_res = tmp;
  disable_suitable_timer_9(ldv_func_arg1);
  return (ldv_func_res);
}
}
void ldv_flush_workqueue_90(struct workqueue_struct *ldv_func_arg1 )
{
  {
  flush_workqueue(ldv_func_arg1);
  call_and_disable_all_7(2);
  return;
}
}
bool ldv_cancel_work_sync_91(struct work_struct *ldv_func_arg1 )
{
  ldv_func_ret_type___8 ldv_func_res ;
  bool tmp ;
  {
  tmp = cancel_work_sync(ldv_func_arg1);
  ldv_func_res = tmp;
  disable_work_7(ldv_func_arg1);
  return (ldv_func_res);
}
}
bool ldv_cancel_delayed_work_sync_92(struct delayed_work *ldv_func_arg1 )
{
  ldv_func_ret_type___9 ldv_func_res ;
  bool tmp ;
  {
  tmp = cancel_delayed_work_sync(ldv_func_arg1);
  ldv_func_res = tmp;
  disable_work_7(& ldv_func_arg1->work);
  return (ldv_func_res);
}
}
bool ldv_cancel_delayed_work_93(struct delayed_work *ldv_func_arg1 )
{
  ldv_func_ret_type___10 ldv_func_res ;
  bool tmp ;
  {
  tmp = cancel_delayed_work(ldv_func_arg1);
  ldv_func_res = tmp;
  disable_work_7(& ldv_func_arg1->work);
  return (ldv_func_res);
}
}
bool ldv_cancel_work_sync_94(struct work_struct *ldv_func_arg1 )
{
  ldv_func_ret_type___11 ldv_func_res ;
  bool tmp ;
  {
  tmp = cancel_work_sync(ldv_func_arg1);
  ldv_func_res = tmp;
  disable_work_7(ldv_func_arg1);
  return (ldv_func_res);
}
}
int ldv_del_timer_sync_95(struct timer_list *ldv_func_arg1 )
{
  ldv_func_ret_type___12 ldv_func_res ;
  int tmp ;
  {
  tmp = del_timer_sync(ldv_func_arg1);
  ldv_func_res = tmp;
  disable_suitable_timer_9(ldv_func_arg1);
  return (ldv_func_res);
}
}
__inline static struct ieee80211_hw *ldv_ieee80211_alloc_hw_96(size_t priv_data_len ,
                                                               struct ieee80211_ops const *ops )
{
  ldv_func_ret_type___13 ldv_func_res ;
  struct ieee80211_hw *tmp ;
  {
  tmp = ieee80211_alloc_hw(priv_data_len, ops);
  ldv_func_res = tmp;
  if ((unsigned long )ldv_func_res != (unsigned long )((ldv_func_ret_type___13 )0)) {
    ldv_state_variable_16 = 1;
    ldv_initialize_ieee80211_ops_16();
    il4965_mac_ops_group0 = ldv_func_res;
  } else {
  }
  return (ldv_func_res);
}
}
__inline static int ldv_request_irq_97(unsigned int irq , irqreturn_t (*handler)(int ,
                                                                                 void * ) ,
                                       unsigned long flags , char const *name ,
                                       void *dev )
{
  ldv_func_ret_type___14 ldv_func_res ;
  int tmp ;
  int tmp___0 ;
  {
  tmp = request_irq(irq, handler, flags, name, dev);
  ldv_func_res = tmp;
  tmp___0 = reg_check_1(handler);
  if (tmp___0 != 0 && ldv_func_res == 0) {
    activate_suitable_irq_1((int )irq, dev);
  } else {
  }
  return (ldv_func_res);
}
}
void ldv_destroy_workqueue_98(struct workqueue_struct *ldv_func_arg1 )
{
  {
  destroy_workqueue(ldv_func_arg1);
  call_and_disable_all_7(2);
  return;
}
}
void ldv_free_irq_99(unsigned int ldv_func_arg1 , void *ldv_func_arg2 )
{
  {
  free_irq(ldv_func_arg1, ldv_func_arg2);
  disable_suitable_irq_1((int )ldv_func_arg1, ldv_func_arg2);
  return;
}
}
void ldv_ieee80211_free_hw_100(struct ieee80211_hw *ldv_func_arg1 )
{
  {
  ieee80211_free_hw(ldv_func_arg1);
  if ((unsigned long )il4965_mac_ops_group0 == (unsigned long )ldv_func_arg1) {
    ldv_state_variable_16 = 0;
  } else {
  }
  return;
}
}
void ldv_flush_workqueue_101(struct workqueue_struct *ldv_func_arg1 )
{
  {
  flush_workqueue(ldv_func_arg1);
  call_and_disable_all_7(2);
  return;
}
}
void ldv_destroy_workqueue_102(struct workqueue_struct *ldv_func_arg1 )
{
  {
  destroy_workqueue(ldv_func_arg1);
  call_and_disable_all_7(2);
  return;
}
}
void ldv_free_irq_103(unsigned int ldv_func_arg1 , void *ldv_func_arg2 )
{
  {
  free_irq(ldv_func_arg1, ldv_func_arg2);
  disable_suitable_irq_1((int )ldv_func_arg1, ldv_func_arg2);
  return;
}
}
void ldv_ieee80211_free_hw_104(struct ieee80211_hw *ldv_func_arg1 )
{
  {
  ieee80211_free_hw(ldv_func_arg1);
  if ((unsigned long )il4965_mac_ops_group0 == (unsigned long )ldv_func_arg1) {
    ldv_state_variable_16 = 0;
  } else {
  }
  return;
}
}
int ldv___pci_register_driver_105(struct pci_driver *ldv_func_arg1 , struct module *ldv_func_arg2 ,
                                  char const *ldv_func_arg3 )
{
  ldv_func_ret_type___15 ldv_func_res ;
  int tmp ;
  {
  tmp = __pci_register_driver(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3);
  ldv_func_res = tmp;
  ldv_state_variable_15 = 1;
  ldv_pci_driver_15();
  return (ldv_func_res);
}
}
void ldv_pci_unregister_driver_106(struct pci_driver *ldv_func_arg1 )
{
  {
  pci_unregister_driver(ldv_func_arg1);
  ldv_state_variable_15 = 0;
  return;
}
}
__inline static long ldv__builtin_expect(long exp , long c ) ;
extern void __might_fault(char const * , int ) ;
extern int sscanf(char const * , char const * , ...) ;
bool ldv_queue_work_on_145(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                           struct work_struct *ldv_func_arg3 ) ;
bool ldv_queue_work_on_147(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                           struct work_struct *ldv_func_arg3 ) ;
bool ldv_queue_delayed_work_on_146(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                   struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 ) ;
bool ldv_queue_delayed_work_on_149(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                   struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 ) ;
void ldv_flush_workqueue_148(struct workqueue_struct *ldv_func_arg1 ) ;
void *ldv_kmem_cache_alloc_155(struct kmem_cache *ldv_func_arg1 , gfp_t flags ) ;
__inline static void *kmalloc(size_t size , gfp_t flags ) ;
extern unsigned long _copy_from_user(void * , void const * , unsigned int ) ;
extern void __copy_from_user_overflow(void) ;
__inline static unsigned long copy_from_user(void *to , void const *from , unsigned long n )
{
  int sz ;
  unsigned long tmp ;
  long tmp___0 ;
  {
  tmp = __builtin_object_size((void const *)to, 0);
  sz = (int )tmp;
  __might_fault("./arch/x86/include/asm/uaccess.h", 697);
  tmp___0 = ldv__builtin_expect((long )(sz < 0 || (unsigned long )sz >= n), 1L);
  if (tmp___0 != 0L) {
    n = _copy_from_user(to, from, (unsigned int )n);
  } else {
    __copy_from_user_overflow();
  }
  return (n);
}
}
struct sk_buff *ldv_skb_clone_163(struct sk_buff *ldv_func_arg1 , gfp_t flags ) ;
struct sk_buff *ldv_skb_clone_171(struct sk_buff *ldv_func_arg1 , gfp_t flags ) ;
struct sk_buff *ldv_skb_copy_165(struct sk_buff const *ldv_func_arg1 , gfp_t flags ) ;
int ldv_pskb_expand_head_161(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags ) ;
int ldv_pskb_expand_head_169(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags ) ;
int ldv_pskb_expand_head_170(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags ) ;
struct sk_buff *ldv___netdev_alloc_skb_166(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags ) ;
struct sk_buff *ldv___netdev_alloc_skb_167(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags ) ;
struct sk_buff *ldv___netdev_alloc_skb_168(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags ) ;
extern loff_t default_llseek(struct file * , loff_t , int ) ;
extern int simple_open(struct inode * , struct file * ) ;
extern ssize_t simple_read_from_buffer(void * , size_t , loff_t * , void const * ,
                                       size_t ) ;
extern struct dentry *debugfs_create_file(char const * , umode_t , struct dentry * ,
                                          void * , struct file_operations const * ) ;
extern void debugfs_remove(struct dentry * ) ;
extern struct dentry *debugfs_create_u8(char const * , umode_t , struct dentry * ,
                                        u8 * ) ;
extern int ieee80211_start_tx_ba_session(struct ieee80211_sta * , u16 , u16 ) ;
extern int ieee80211_stop_tx_ba_session(struct ieee80211_sta * , u16 ) ;
extern bool rate_control_send_low(struct ieee80211_sta * , void * , struct ieee80211_tx_rate_control * ) ;
__inline static s8 rate_lowest_index___0(struct ieee80211_supported_band *sband ,
                                         struct ieee80211_sta *sta )
{
  int i ;
  int tmp ;
  bool __warned ;
  int __ret_warn_once ;
  int __ret_warn_on ;
  long tmp___0 ;
  long tmp___1 ;
  long tmp___2 ;
  {
  i = 0;
  goto ldv_49509;
  ldv_49508:
  tmp = rate_supported(sta, sband->band, i);
  if (tmp != 0) {
    return ((s8 )i);
  } else {
  }
  i = i + 1;
  ldv_49509: ;
  if (sband->n_bitrates > i) {
    goto ldv_49508;
  } else {
  }
  __ret_warn_once = 1;
  tmp___2 = ldv__builtin_expect(__ret_warn_once != 0, 0L);
  if (tmp___2 != 0L) {
    __ret_warn_on = ! __warned;
    tmp___0 = ldv__builtin_expect(__ret_warn_on != 0, 0L);
    if (tmp___0 != 0L) {
      warn_slowpath_null("include/net/mac80211.h", 5189);
    } else {
    }
    tmp___1 = ldv__builtin_expect(__ret_warn_on != 0, 0L);
    if (tmp___1 != 0L) {
      __warned = 1;
    } else {
    }
  } else {
  }
  ldv__builtin_expect(__ret_warn_once != 0, 0L);
  return (0);
}
}
extern int ieee80211_rate_control_register(struct rate_control_ops const * ) ;
extern void ieee80211_rate_control_unregister(struct rate_control_ops const * ) ;
__inline static bool conf_is_ht(struct ieee80211_conf *conf )
{
  {
  return ((bool )(((unsigned int )conf->chandef.width != 6U && (unsigned int )conf->chandef.width != 7U) && (unsigned int )conf->chandef.width != 0U));
}
}
extern bool il_is_ht40_tx_allowed(struct il_priv * , struct ieee80211_sta_ht_cap * ) ;
static u8 rs_ht_to_legacy[13U] =
  { 4U, 4U, 4U, 4U,
        4U, 4U, 5U, 6U,
        7U, 8U, 9U, 10U,
        11U};
static u8 const ant_toggle_lookup[8U] =
  { 0U, 2U, 4U, 6U,
        1U, 3U, 5U, 7U};
struct il_rate_info const il_rates[13U] =
  { {10U, 16U, 16U, 2U, 13U, 1U, 13U, 1U, 13U, 1U},
        {20U, 16U, 16U, 4U, 0U, 2U, 0U, 2U, 0U, 2U},
        {55U, 16U, 16U, 11U, 1U, 4U, 1U, 3U, 1U, 3U},
        {110U, 16U, 16U, 22U, 5U, 6U, 5U, 6U, 2U, 7U},
        {13U, 0U, 8U, 12U, 2U, 5U, 2U, 3U, 2U, 3U},
        {15U, 0U, 8U, 18U, 4U, 3U, 4U, 3U, 2U, 3U},
        {5U, 1U, 9U, 24U, 3U, 7U, 3U, 7U, 3U, 7U},
        {7U, 2U, 10U, 36U, 6U, 8U, 6U, 8U, 3U, 8U},
        {9U, 3U, 11U, 48U, 7U, 9U, 7U, 9U, 7U, 9U},
        {11U, 4U, 12U, 72U, 8U, 10U, 8U, 10U, 8U, 10U},
        {1U, 5U, 13U, 96U, 9U, 11U, 9U, 11U, 9U, 11U},
        {3U, 6U, 14U, 108U, 10U, 13U, 10U, 13U, 10U, 13U},
        {3U, 7U, 15U, 120U, 10U, 13U, 10U, 13U, 10U, 13U}};
static int il4965_hwrate_to_plcp_idx(u32 rate_n_flags )
{
  int idx ;
  {
  idx = 0;
  if ((rate_n_flags & 256U) != 0U) {
    idx = (int )rate_n_flags & 255;
    if (idx > 7) {
      idx = idx + -8;
    } else {
    }
    idx = idx + 4;
    if (idx > 4) {
      idx = idx + 1;
    } else {
    }
    if (idx > 3 && idx <= 12) {
      return (idx);
    } else {
    }
  } else {
    idx = 0;
    goto ldv_54320;
    ldv_54319: ;
    if ((u32 )il_rates[idx].plcp == (rate_n_flags & 255U)) {
      return (idx);
    } else {
    }
    idx = idx + 1;
    ldv_54320: ;
    if ((unsigned int )idx <= 12U) {
      goto ldv_54319;
    } else {
    }
  }
  return (-1);
}
}
static void il4965_rs_rate_scale_perform(struct il_priv *il , struct sk_buff *skb ,
                                         struct ieee80211_sta *sta , struct il_lq_sta *lq_sta ) ;
static void il4965_rs_fill_link_cmd(struct il_priv *il , struct il_lq_sta *lq_sta ,
                                    u32 new_rate ) ;
static void il4965_rs_stay_in_table(struct il_lq_sta *lq_sta , bool force_search ) ;
static void il4965_rs_dbgfs_set_mcs(struct il_lq_sta *lq_sta , u32 *rate_n_flags ,
                                    int idx ) ;
static s32 expected_tpt_legacy[13U] =
  { 7, 13, 35, 58,
        40, 57, 72, 98,
        121, 154, 177, 186,
        0};
static s32 expected_tpt_siso20MHz[4U][13U] = { { 0, 0, 0, 0,
            42, 0, 76, 102,
            124, 158, 183, 193,
            202},
   { 0, 0, 0, 0,
            46, 0, 82, 110,
            132, 167, 192, 202,
            210},
   { 0, 0, 0, 0,
            48, 0, 93, 135,
            176, 251, 319, 351,
            381},
   { 0, 0, 0, 0,
            53, 0, 102, 149,
            193, 275, 348, 381,
            413}};
static s32 expected_tpt_siso40MHz[4U][13U] = { { 0, 0, 0, 0,
            77, 0, 127, 160,
            184, 220, 242, 250,
            257},
   { 0, 0, 0, 0,
            83, 0, 135, 169,
            193, 229, 250, 257,
            264},
   { 0, 0, 0, 0,
            96, 0, 182, 259,
            328, 451, 553, 598,
            640},
   { 0, 0, 0, 0,
            106, 0, 199, 282,
            357, 487, 593, 640,
            683}};
static s32 expected_tpt_mimo2_20MHz[4U][13U] = { { 0, 0, 0, 0,
            74, 0, 123, 155,
            179, 213, 235, 243,
            250},
   { 0, 0, 0, 0,
            81, 0, 131, 164,
            187, 221, 242, 250,
            256},
   { 0, 0, 0, 0,
            92, 0, 175, 250,
            317, 436, 534, 578,
            619},
   { 0, 0, 0, 0,
            102, 0, 192, 273,
            344, 470, 573, 619,
            660}};
static s32 expected_tpt_mimo2_40MHz[4U][13U] = { { 0, 0, 0, 0,
            123, 0, 182, 214,
            235, 264, 279, 285,
            289},
   { 0, 0, 0, 0,
            131, 0, 191, 222,
            242, 270, 284, 289,
            293},
   { 0, 0, 0, 0,
            180, 0, 327, 446,
            545, 708, 828, 878,
            922},
   { 0, 0, 0, 0,
            197, 0, 355, 481,
            584, 752, 872, 922,
            966}};
static struct il_rate_mcs_info const il_rate_mcs[13U] =
  { {{'1', '\000'}, {'B', 'P', 'S', 'K', ' ', 'D', 'S', 'S', 'S', '\000'}},
        {{'2', '\000'}, {'Q', 'P', 'S', 'K', ' ', 'D', 'S', 'S', 'S', '\000'}},
        {{'5', '.', '5', '\000'}, {'B', 'P', 'S', 'K', ' ', 'C', 'C', 'K', '\000'}},
        {{'1', '1', '\000'}, {'Q', 'P', 'S', 'K', ' ', 'C', 'C', 'K', '\000'}},
        {{'6', '\000'}, {'B', 'P', 'S', 'K', ' ', '1', '/', '2', '\000'}},
        {{'9', '\000'}, {'B', 'P', 'S', 'K', ' ', '1', '/', '2', '\000'}},
        {{'1', '2', '\000'}, {'Q', 'P', 'S', 'K', ' ', '1', '/', '2', '\000'}},
        {{'1', '8', '\000'}, {'Q', 'P', 'S', 'K', ' ', '3', '/', '4', '\000'}},
        {{'2', '4', '\000'}, {'1', '6', 'Q', 'A', 'M', ' ', '1', '/', '2', '\000'}},
        {{'3', '6', '\000'}, {'1', '6', 'Q', 'A', 'M', ' ', '3', '/', '4', '\000'}},
        {{'4', '8', '\000'}, {'6', '4', 'Q', 'A', 'M', ' ', '2', '/', '3', '\000'}},
        {{'5', '4', '\000'}, {'6', '4', 'Q', 'A', 'M', ' ', '3', '/', '4', '\000'}},
        {{'6', '0', '\000'}, {'6', '4', 'Q', 'A', 'M', ' ', '5', '/', '6', '\000'}}};
__inline static u8 il4965_rs_extract_rate(u32 rate_n_flags )
{
  {
  return ((u8 )rate_n_flags);
}
}
static void il4965_rs_rate_scale_clear_win(struct il_rate_scale_data *win )
{
  {
  win->data = 0ULL;
  win->success_counter = 0;
  win->success_ratio = -1;
  win->counter = 0;
  win->average_tpt = -1;
  win->stamp = 0UL;
  return;
}
}
__inline static u8 il4965_rs_is_valid_ant(u8 valid_antenna , u8 ant_type )
{
  {
  return (((int )ant_type & (int )valid_antenna) == (int )ant_type);
}
}
static void il4965_rs_tl_rm_old_stats(struct il_traffic_load *tl , u32 curr_time )
{
  u32 oldest_time ;
  {
  oldest_time = curr_time - 950U;
  goto ldv_54360;
  ldv_54359:
  tl->total = tl->total - tl->packet_count[(int )tl->head];
  tl->packet_count[(int )tl->head] = 0U;
  tl->time_stamp = tl->time_stamp + 50UL;
  tl->queue_count = (u8 )((int )tl->queue_count - 1);
  tl->head = (u8 )((int )tl->head + 1);
  if ((unsigned int )tl->head > 19U) {
    tl->head = 0U;
  } else {
  }
  ldv_54360: ;
  if ((unsigned int )tl->queue_count != 0U && tl->time_stamp < (unsigned long )oldest_time) {
    goto ldv_54359;
  } else {
  }
  return;
}
}
static u8 il4965_rs_tl_add_packet(struct il_lq_sta *lq_data , struct ieee80211_hdr *hdr )
{
  u32 curr_time ;
  unsigned int tmp ;
  u32 time_diff ;
  s32 idx ;
  struct il_traffic_load *tl ;
  u8 tid ;
  u8 *qc ;
  u8 *tmp___0 ;
  int tmp___1 ;
  long tmp___2 ;
  {
  tmp = jiffies_to_msecs(jiffies);
  curr_time = tmp;
  tl = (struct il_traffic_load *)0;
  tmp___1 = ieee80211_is_data_qos((int )hdr->frame_control);
  if (tmp___1 != 0) {
    tmp___0 = ieee80211_get_qos_ctl(hdr);
    qc = tmp___0;
    tid = (unsigned int )*qc & 15U;
  } else {
    return (9U);
  }
  tmp___2 = ldv__builtin_expect((unsigned int )tid > 7U, 0L);
  if (tmp___2 != 0L) {
    return (9U);
  } else {
  }
  tl = (struct il_traffic_load *)(& lq_data->load) + (unsigned long )tid;
  curr_time = curr_time - curr_time % 5U;
  if ((unsigned int )tl->queue_count == 0U) {
    tl->total = 1U;
    tl->time_stamp = (unsigned long )curr_time;
    tl->queue_count = 1U;
    tl->head = 0U;
    tl->packet_count[0] = 1U;
    return (9U);
  } else {
  }
  time_diff = curr_time - (u32 )tl->time_stamp;
  idx = (s32 )(time_diff / 50U);
  if (idx > 19) {
    il4965_rs_tl_rm_old_stats(tl, curr_time);
  } else {
  }
  idx = ((s32 )tl->head + idx) % 20;
  tl->packet_count[idx] = tl->packet_count[idx] + 1U;
  tl->total = tl->total + 1U;
  if (idx + 1 > (int )tl->queue_count) {
    tl->queue_count = (unsigned int )((u8 )idx) + 1U;
  } else {
  }
  return (tid);
}
}
static u32 il4965_rs_tl_get_load(struct il_lq_sta *lq_data , u8 tid )
{
  u32 curr_time ;
  unsigned int tmp ;
  u32 time_diff ;
  s32 idx ;
  struct il_traffic_load *tl ;
  {
  tmp = jiffies_to_msecs(jiffies);
  curr_time = tmp;
  tl = (struct il_traffic_load *)0;
  if ((unsigned int )tid > 7U) {
    return (0U);
  } else {
  }
  tl = (struct il_traffic_load *)(& lq_data->load) + (unsigned long )tid;
  curr_time = curr_time - curr_time % 5U;
  if ((unsigned int )tl->queue_count == 0U) {
    return (0U);
  } else {
  }
  time_diff = curr_time - (u32 )tl->time_stamp;
  idx = (s32 )(time_diff / 50U);
  if (idx > 19) {
    il4965_rs_tl_rm_old_stats(tl, curr_time);
  } else {
  }
  return (tl->total);
}
}
static int il4965_rs_tl_turn_on_agg_for_tid(struct il_priv *il , struct il_lq_sta *lq_data ,
                                            u8 tid , struct ieee80211_sta *sta )
{
  int ret ;
  u32 load ;
  int tmp ;
  u32 tmp___0 ;
  int tmp___1 ;
  u32 tmp___2 ;
  {
  ret = -11;
  load = il4965_rs_tl_get_load(lq_data, (int )tid);
  if (load > 10U) {
    tmp___0 = il_get_debug_level(il);
    if ((tmp___0 & 67108864U) != 0U) {
      tmp = preempt_count();
      dev_err((struct device const *)(& ((il->hw)->wiphy)->dev), "%c %s Starting Tx agg: STA: %pM tid: %d\n",
              ((unsigned long )tmp & 2096896UL) != 0UL ? 73 : 85, "il4965_rs_tl_turn_on_agg_for_tid",
              (u8 *)(& sta->addr), (int )tid);
    } else {
    }
    ret = ieee80211_start_tx_ba_session(sta, (int )tid, 5000);
    if (ret == -11) {
      dev_err((struct device const *)(& (il->pci_dev)->dev), "Fail start Tx agg on tid: %d\n",
              (int )tid);
      ieee80211_stop_tx_ba_session(sta, (int )tid);
    } else {
    }
  } else {
    tmp___2 = il_get_debug_level(il);
    if ((tmp___2 & 67108864U) != 0U) {
      tmp___1 = preempt_count();
      dev_err((struct device const *)(& ((il->hw)->wiphy)->dev), "%c %s Aggregation not enabled for tid %d because load = %u\n",
              ((unsigned long )tmp___1 & 2096896UL) != 0UL ? 73 : 85, "il4965_rs_tl_turn_on_agg_for_tid",
              (int )tid, load);
    } else {
    }
  }
  return (ret);
}
}
static void il4965_rs_tl_turn_on_agg(struct il_priv *il , u8 tid , struct il_lq_sta *lq_data ,
                                     struct ieee80211_sta *sta )
{
  {
  if ((unsigned int )tid <= 7U) {
    il4965_rs_tl_turn_on_agg_for_tid(il, lq_data, (int )tid, sta);
  } else {
    dev_err((struct device const *)(& (il->pci_dev)->dev), "tid exceeds max load count: %d/%d\n",
            (int )tid, 8);
  }
  return;
}
}
__inline static int il4965_get_il4965_num_of_ant_from_rate(u32 rate_n_flags )
{
  {
  return ((((rate_n_flags & 16384U) != 0U) + ((rate_n_flags & 32768U) != 0U)) + ((rate_n_flags & 65536U) != 0U));
}
}
static s32 il4965_get_expected_tpt(struct il_scale_tbl_info *tbl , int rs_idx )
{
  {
  if ((unsigned long )tbl->expected_tpt != (unsigned long )((s32 *)0)) {
    return (*(tbl->expected_tpt + (unsigned long )rs_idx));
  } else {
  }
  return (0);
}
}
static int il4965_rs_collect_tx_data(struct il_scale_tbl_info *tbl , int scale_idx ,
                                     int attempts , int successes )
{
  struct il_rate_scale_data *win ;
  u64 mask ;
  s32 fail_count ;
  s32 tpt ;
  {
  win = (struct il_rate_scale_data *)0;
  mask = 2305843009213693952ULL;
  if (scale_idx < 0 || scale_idx > 12) {
    return (-22);
  } else {
  }
  win = (struct il_rate_scale_data *)(& tbl->win) + (unsigned long )scale_idx;
  tpt = il4965_get_expected_tpt(tbl, scale_idx);
  goto ldv_54413;
  ldv_54412: ;
  if (win->counter > 61) {
    win->counter = 61;
    if ((win->data & mask) != 0ULL) {
      win->data = win->data & ~ mask;
      win->success_counter = win->success_counter - 1;
    } else {
    }
  } else {
  }
  win->counter = win->counter + 1;
  win->data = win->data << 1;
  if (successes > 0) {
    win->success_counter = win->success_counter + 1;
    win->data = win->data | 1ULL;
    successes = successes - 1;
  } else {
  }
  attempts = attempts - 1;
  ldv_54413: ;
  if (attempts > 0) {
    goto ldv_54412;
  } else {
  }
  if (win->counter > 0) {
    win->success_ratio = (win->success_counter * 12800) / win->counter;
  } else {
    win->success_ratio = -1;
  }
  fail_count = win->counter - win->success_counter;
  if (fail_count > 5 || win->success_counter > 7) {
    win->average_tpt = (win->success_ratio * tpt + 64) / 128;
  } else {
    win->average_tpt = -1;
  }
  win->stamp = jiffies;
  return (0);
}
}
static u32 il4965_rate_n_flags_from_tbl(struct il_priv *il , struct il_scale_tbl_info *tbl ,
                                        int idx , u8 use_green )
{
  u32 rate_n_flags ;
  {
  rate_n_flags = 0U;
  if ((unsigned int )tbl->lq_type == 1U || (unsigned int )tbl->lq_type == 2U) {
    rate_n_flags = (u32 )il_rates[idx].plcp;
    if (idx >= 0 && idx <= 3) {
      rate_n_flags = rate_n_flags | 512U;
    } else {
    }
  } else
  if ((unsigned int )tbl->lq_type == 3U || (unsigned int )tbl->lq_type == 4U) {
    if (idx > 12) {
      dev_err((struct device const *)(& (il->pci_dev)->dev), "Invalid HT rate idx %d\n",
              idx);
      idx = 12;
    } else {
    }
    rate_n_flags = 256U;
    if ((unsigned int )tbl->lq_type == 3U) {
      rate_n_flags = (u32 )il_rates[idx].plcp_siso | rate_n_flags;
    } else {
      rate_n_flags = (u32 )il_rates[idx].plcp_mimo2 | rate_n_flags;
    }
  } else {
    dev_err((struct device const *)(& (il->pci_dev)->dev), "Invalid tbl->lq_type %d\n",
            (unsigned int )tbl->lq_type);
  }
  rate_n_flags = ((u32 )((int )tbl->ant_type << 14) & 114688U) | rate_n_flags;
  if ((unsigned int )tbl->lq_type == 3U || (unsigned int )tbl->lq_type == 4U) {
    if ((unsigned int )tbl->is_ht40 != 0U) {
      if ((unsigned int )tbl->is_dup != 0U) {
        rate_n_flags = rate_n_flags | 4096U;
      } else {
        rate_n_flags = rate_n_flags | 2048U;
      }
    } else {
    }
    if ((unsigned int )tbl->is_SGI != 0U) {
      rate_n_flags = rate_n_flags | 8192U;
    } else {
    }
    if ((unsigned int )use_green != 0U) {
      rate_n_flags = rate_n_flags | 1024U;
      if ((unsigned int )tbl->lq_type == 3U && (unsigned int )tbl->is_SGI != 0U) {
        rate_n_flags = rate_n_flags & 4294959103U;
        dev_err((struct device const *)(& (il->pci_dev)->dev), "GF was set with SGI:SISO\n");
      } else {
      }
    } else {
    }
  } else {
  }
  return (rate_n_flags);
}
}
static int il4965_rs_get_tbl_info_from_mcs(u32 const rate_n_flags , enum ieee80211_band band ,
                                           struct il_scale_tbl_info *tbl , int *rate_idx )
{
  u32 ant_msk ;
  u8 il4965_num_of_ant___0 ;
  int tmp ;
  u8 mcs ;
  {
  ant_msk = (unsigned int )rate_n_flags & 114688U;
  tmp = il4965_get_il4965_num_of_ant_from_rate(rate_n_flags);
  il4965_num_of_ant___0 = (u8 )tmp;
  memset((void *)tbl, 0, 448UL);
  *rate_idx = il4965_hwrate_to_plcp_idx(rate_n_flags);
  if (*rate_idx == 13) {
    *rate_idx = -1;
    return (-22);
  } else {
  }
  tbl->is_SGI = 0U;
  tbl->is_ht40 = 0U;
  tbl->is_dup = 0U;
  tbl->ant_type = (u8 )(ant_msk >> 14);
  tbl->lq_type = 0;
  tbl->max_search = 5U;
  if (((unsigned int )rate_n_flags & 256U) == 0U) {
    if ((unsigned int )il4965_num_of_ant___0 == 1U) {
      if ((unsigned int )band == 1U) {
        tbl->lq_type = 2;
      } else {
        tbl->lq_type = 1;
      }
    } else {
    }
  } else {
    if (((unsigned int )rate_n_flags & 8192U) != 0U) {
      tbl->is_SGI = 1U;
    } else {
    }
    if (((unsigned int )rate_n_flags & 2048U) != 0U || ((unsigned int )rate_n_flags & 4096U) != 0U) {
      tbl->is_ht40 = 1U;
    } else {
    }
    if (((unsigned int )rate_n_flags & 4096U) != 0U) {
      tbl->is_dup = 1U;
    } else {
    }
    mcs = il4965_rs_extract_rate(rate_n_flags);
    if ((unsigned int )mcs <= 7U) {
      if ((unsigned int )il4965_num_of_ant___0 == 1U) {
        tbl->lq_type = 3;
      } else {
      }
    } else
    if ((unsigned int )il4965_num_of_ant___0 == 2U) {
      tbl->lq_type = 4;
    } else {
    }
  }
  return (0);
}
}
static int il4965_rs_toggle_antenna(u32 valid_ant , u32 *rate_n_flags , struct il_scale_tbl_info *tbl )
{
  u8 new_ant_type ;
  u8 tmp ;
  u8 tmp___0 ;
  {
  if ((unsigned int )tbl->ant_type == 0U || (unsigned int )tbl->ant_type > 7U) {
    return (0);
  } else {
  }
  tmp = il4965_rs_is_valid_ant((int )((u8 )valid_ant), (int )tbl->ant_type);
  if ((unsigned int )tmp == 0U) {
    return (0);
  } else {
  }
  new_ant_type = ant_toggle_lookup[(int )tbl->ant_type];
  goto ldv_54438;
  ldv_54437:
  new_ant_type = ant_toggle_lookup[(int )new_ant_type];
  ldv_54438: ;
  if ((int )tbl->ant_type != (int )new_ant_type) {
    tmp___0 = il4965_rs_is_valid_ant((int )((u8 )valid_ant), (int )new_ant_type);
    if ((unsigned int )tmp___0 == 0U) {
      goto ldv_54437;
    } else {
      goto ldv_54439;
    }
  } else {
  }
  ldv_54439: ;
  if ((int )tbl->ant_type == (int )new_ant_type) {
    return (0);
  } else {
  }
  tbl->ant_type = new_ant_type;
  *rate_n_flags = *rate_n_flags & 4294852607U;
  *rate_n_flags = *rate_n_flags | (u32 )((int )new_ant_type << 14);
  return (1);
}
}
static bool il4965_rs_use_green(struct il_priv *il , struct ieee80211_sta *sta )
{
  {
  return ((bool )(((int )sta->ht_cap.cap & 16) != 0 && ! il->ht.non_gf_sta_present));
}
}
static u16 il4965_rs_get_supported_rates(struct il_lq_sta *lq_sta , struct ieee80211_hdr *hdr ,
                                         enum il_table_type rate_type )
{
  {
  if ((unsigned int )rate_type == 1U || (unsigned int )rate_type == 2U) {
    return (lq_sta->active_legacy_rate);
  } else
  if ((unsigned int )rate_type == 3U) {
    return (lq_sta->active_siso_rate);
  } else {
    return (lq_sta->active_mimo2_rate);
  }
}
}
static u16 il4965_rs_get_adjacent_rate(struct il_priv *il , u8 idx , u16 rate_mask ,
                                       int rate_type )
{
  u8 high ;
  u8 low ;
  int i ;
  u32 mask ;
  int tmp ;
  u32 tmp___0 ;
  int tmp___1 ;
  u32 tmp___2 ;
  {
  high = 13U;
  low = 13U;
  if (rate_type == 2 || (rate_type != 1 && rate_type != 2)) {
    i = (int )idx + -1;
    mask = (u32 )(1 << i);
    goto ldv_54461;
    ldv_54460: ;
    if (((u32 )rate_mask & mask) != 0U) {
      low = (u8 )i;
      goto ldv_54459;
    } else {
    }
    i = i - 1;
    mask = mask >> 1;
    ldv_54461: ;
    if (i >= 0) {
      goto ldv_54460;
    } else {
    }
    ldv_54459:
    i = (int )idx + 1;
    mask = (u32 )(1 << i);
    goto ldv_54464;
    ldv_54463: ;
    if (((u32 )rate_mask & mask) != 0U) {
      high = (u8 )i;
      goto ldv_54462;
    } else {
    }
    i = i + 1;
    mask = mask << 1;
    ldv_54464: ;
    if (i <= 12) {
      goto ldv_54463;
    } else {
    }
    ldv_54462: ;
    return ((u16 )((int )((short )((int )high << 8)) | (int )((short )low)));
  } else {
  }
  low = idx;
  goto ldv_54468;
  ldv_54467:
  low = il_rates[(int )low].prev_rs;
  if ((unsigned int )low == 13U) {
    goto ldv_54465;
  } else {
  }
  if (((int )rate_mask >> (int )low) & 1) {
    goto ldv_54465;
  } else {
  }
  tmp___0 = il_get_debug_level(il);
  if ((tmp___0 & 1048576U) != 0U) {
    tmp = preempt_count();
    dev_err((struct device const *)(& ((il->hw)->wiphy)->dev), "%c %s Skipping masked lower rate: %d\n",
            ((unsigned long )tmp & 2096896UL) != 0UL ? 73 : 85, "il4965_rs_get_adjacent_rate",
            (int )low);
  } else {
  }
  ldv_54468: ;
  if ((unsigned int )low != 13U) {
    goto ldv_54467;
  } else {
  }
  ldv_54465:
  high = idx;
  goto ldv_54471;
  ldv_54470:
  high = il_rates[(int )high].next_rs;
  if ((unsigned int )high == 13U) {
    goto ldv_54469;
  } else {
  }
  if (((int )rate_mask >> (int )high) & 1) {
    goto ldv_54469;
  } else {
  }
  tmp___2 = il_get_debug_level(il);
  if ((tmp___2 & 1048576U) != 0U) {
    tmp___1 = preempt_count();
    dev_err((struct device const *)(& ((il->hw)->wiphy)->dev), "%c %s Skipping masked higher rate: %d\n",
            ((unsigned long )tmp___1 & 2096896UL) != 0UL ? 73 : 85, "il4965_rs_get_adjacent_rate",
            (int )high);
  } else {
  }
  ldv_54471: ;
  if ((unsigned int )high != 13U) {
    goto ldv_54470;
  } else {
  }
  ldv_54469: ;
  return ((u16 )((int )((short )((int )high << 8)) | (int )((short )low)));
}
}
static u32 il4965_rs_get_lower_rate(struct il_lq_sta *lq_sta , struct il_scale_tbl_info *tbl ,
                                    u8 scale_idx , u8 ht_possible )
{
  s32 low ;
  u16 rate_mask ;
  u16 high_low ;
  u8 switch_to_legacy ;
  u8 is_green ;
  struct il_priv *il ;
  u8 tmp ;
  u32 tmp___0 ;
  {
  switch_to_legacy = 0U;
  is_green = lq_sta->is_green;
  il = lq_sta->drv;
  if (((unsigned int )tbl->lq_type != 1U && (unsigned int )tbl->lq_type != 2U) && ((unsigned int )ht_possible == 0U || (unsigned int )scale_idx == 0U)) {
    switch_to_legacy = 1U;
    scale_idx = rs_ht_to_legacy[(int )scale_idx];
    if ((unsigned int )lq_sta->band == 1U) {
      tbl->lq_type = 2;
    } else {
      tbl->lq_type = 1;
    }
    tmp = il4965_num_of_ant((int )tbl->ant_type);
    if ((unsigned int )tmp > 1U) {
      tbl->ant_type = il4965_first_antenna((int )il->hw_params.valid_tx_ant);
    } else {
    }
    tbl->is_ht40 = 0U;
    tbl->is_SGI = 0U;
    tbl->max_search = 5U;
  } else {
  }
  rate_mask = il4965_rs_get_supported_rates(lq_sta, (struct ieee80211_hdr *)0, tbl->lq_type);
  if ((unsigned int )tbl->lq_type == 1U || (unsigned int )tbl->lq_type == 2U) {
    if ((unsigned int )lq_sta->band == 1U) {
      rate_mask = ((int )((unsigned short )lq_sta->supp_rates) << 4U) & (int )rate_mask;
    } else {
      rate_mask = (int )((unsigned short )lq_sta->supp_rates) & (int )rate_mask;
    }
  } else {
  }
  if ((unsigned int )switch_to_legacy != 0U && ((int )rate_mask >> (int )scale_idx) & 1) {
    low = (s32 )scale_idx;
    goto out;
  } else {
  }
  high_low = il4965_rs_get_adjacent_rate(lq_sta->drv, (int )scale_idx, (int )rate_mask,
                                         (int )tbl->lq_type);
  low = (int )high_low & 255;
  if (low == 13) {
    low = (s32 )scale_idx;
  } else {
  }
  out:
  tmp___0 = il4965_rate_n_flags_from_tbl(lq_sta->drv, tbl, low, (int )is_green);
  return (tmp___0);
}
}
static bool il4965_table_type_matches(struct il_scale_tbl_info *a , struct il_scale_tbl_info *b )
{
  {
  return ((bool )(((unsigned int )a->lq_type == (unsigned int )b->lq_type && (int )a->ant_type == (int )b->ant_type) && (int )a->is_SGI == (int )b->is_SGI));
}
}
static void il4965_rs_tx_status(void *il_r , struct ieee80211_supported_band *sband ,
                                struct ieee80211_sta *sta , void *il_sta , struct sk_buff *skb )
{
  int legacy_success ;
  int retries ;
  int rs_idx ;
  int mac_idx ;
  int i ;
  struct il_lq_sta *lq_sta ;
  struct il_link_quality_cmd *table ;
  struct ieee80211_hdr *hdr ;
  struct il_priv *il ;
  struct ieee80211_tx_info *info ;
  struct ieee80211_tx_info *tmp ;
  enum mac80211_rate_control_flags mac_flags ;
  u32 tx_rate ;
  struct il_scale_tbl_info tbl_type ;
  struct il_scale_tbl_info *curr_tbl ;
  struct il_scale_tbl_info *other_tbl ;
  struct il_scale_tbl_info *tmp_tbl ;
  int tmp___0 ;
  u32 tmp___1 ;
  int tmp___2 ;
  u32 tmp___3 ;
  int tmp___4 ;
  u32 tmp___5 ;
  int tmp___6 ;
  int tmp___7 ;
  u32 tmp___8 ;
  int tmp___9 ;
  u32 tmp___10 ;
  int tmp___11 ;
  u32 tmp___12 ;
  int tmp___13 ;
  u32 tmp___14 ;
  int tmp___15 ;
  u32 tmp___16 ;
  bool tmp___17 ;
  bool tmp___18 ;
  int _min1 ;
  int _min2 ;
  bool tmp___19 ;
  bool tmp___20 ;
  {
  lq_sta = (struct il_lq_sta *)il_sta;
  hdr = (struct ieee80211_hdr *)skb->data;
  il = (struct il_priv *)il_r;
  tmp = IEEE80211_SKB_CB(skb);
  info = tmp;
  tmp___1 = il_get_debug_level(il);
  if ((tmp___1 & 1048576U) != 0U) {
    tmp___0 = preempt_count();
    dev_err((struct device const *)(& ((il->hw)->wiphy)->dev), "%c %s get frame ack response, update rate scale win\n",
            ((unsigned long )tmp___0 & 2096896UL) != 0UL ? 73 : 85, "il4965_rs_tx_status");
  } else {
  }
  if ((unsigned long )lq_sta == (unsigned long )((struct il_lq_sta *)0)) {
    tmp___3 = il_get_debug_level(il);
    if ((tmp___3 & 1048576U) != 0U) {
      tmp___2 = preempt_count();
      dev_err((struct device const *)(& ((il->hw)->wiphy)->dev), "%c %s Station rate scaling not created yet.\n",
              ((unsigned long )tmp___2 & 2096896UL) != 0UL ? 73 : 85, "il4965_rs_tx_status");
    } else {
    }
    return;
  } else
  if ((unsigned long )lq_sta->drv == (unsigned long )((struct il_priv *)0)) {
    tmp___5 = il_get_debug_level(il);
    if ((tmp___5 & 1048576U) != 0U) {
      tmp___4 = preempt_count();
      dev_err((struct device const *)(& ((il->hw)->wiphy)->dev), "%c %s Rate scaling not initialized yet.\n",
              ((unsigned long )tmp___4 & 2096896UL) != 0UL ? 73 : 85, "il4965_rs_tx_status");
    } else {
    }
    return;
  } else {
  }
  tmp___6 = ieee80211_is_data((int )hdr->frame_control);
  if (tmp___6 == 0 || (info->flags & 4U) != 0U) {
    return;
  } else {
  }
  if ((info->flags & 64U) != 0U && (info->flags & 1024U) == 0U) {
    return;
  } else {
  }
  table = & lq_sta->lq;
  tx_rate = table->rs_table[0].rate_n_flags;
  il4965_rs_get_tbl_info_from_mcs(tx_rate, il->band, & tbl_type, & rs_idx);
  if ((unsigned int )il->band == 1U) {
    rs_idx = rs_idx + -4;
  } else {
  }
  mac_flags = (enum mac80211_rate_control_flags )info->__annonCompField100.status.rates[0].flags;
  mac_idx = (int )info->__annonCompField100.status.rates[0].idx;
  if (((unsigned int )mac_flags & 8U) != 0U) {
    mac_idx = mac_idx & 7;
    if (mac_idx > 0) {
      mac_idx = mac_idx + 1;
    } else {
    }
    if ((unsigned int )il->band == 0U) {
      mac_idx = mac_idx + 4;
    } else {
    }
  } else {
  }
  if (((((((mac_idx < 0 || (int )tbl_type.is_SGI != (((unsigned int )mac_flags & 128U) != 0U)) || (int )tbl_type.is_ht40 != (((unsigned int )mac_flags & 32U) != 0U)) || (int )tbl_type.is_dup != (((unsigned int )mac_flags & 64U) != 0U)) || (int )tbl_type.ant_type != (int )info->__annonCompField100.status.antenna) || ((tx_rate & 256U) != 0U) ^ (((unsigned int )mac_flags & 8U) != 0U)) || ((tx_rate & 1024U) != 0U) ^ (((unsigned int )mac_flags & 16U) != 0U)) || rs_idx != mac_idx) {
    tmp___8 = il_get_debug_level(il);
    if ((tmp___8 & 1048576U) != 0U) {
      tmp___7 = preempt_count();
      dev_err((struct device const *)(& ((il->hw)->wiphy)->dev), "%c %s initial rate %d does not match %d (0x%x)\n",
              ((unsigned long )tmp___7 & 2096896UL) != 0UL ? 73 : 85, "il4965_rs_tx_status",
              mac_idx, rs_idx, tx_rate);
    } else {
    }
    lq_sta->missed_rate_counter = (u8 )((int )lq_sta->missed_rate_counter + 1);
    if ((unsigned int )lq_sta->missed_rate_counter > 15U) {
      lq_sta->missed_rate_counter = 0U;
      il_send_lq_cmd(il, & lq_sta->lq, 2, 0);
    } else {
    }
    return;
  } else {
    lq_sta->missed_rate_counter = 0U;
  }
  tmp___18 = il4965_table_type_matches(& tbl_type, (struct il_scale_tbl_info *)(& lq_sta->lq_info) + (unsigned long )lq_sta->active_tbl);
  if ((int )tmp___18) {
    curr_tbl = (struct il_scale_tbl_info *)(& lq_sta->lq_info) + (unsigned long )lq_sta->active_tbl;
    other_tbl = (struct il_scale_tbl_info *)(& lq_sta->lq_info) + (unsigned long )(1 - (int )lq_sta->active_tbl);
  } else {
    tmp___17 = il4965_table_type_matches(& tbl_type, (struct il_scale_tbl_info *)(& lq_sta->lq_info) + (unsigned long )(1 - (int )lq_sta->active_tbl));
    if ((int )tmp___17) {
      curr_tbl = (struct il_scale_tbl_info *)(& lq_sta->lq_info) + (unsigned long )(1 - (int )lq_sta->active_tbl);
      other_tbl = (struct il_scale_tbl_info *)(& lq_sta->lq_info) + (unsigned long )lq_sta->active_tbl;
    } else {
      tmp___10 = il_get_debug_level(il);
      if ((tmp___10 & 1048576U) != 0U) {
        tmp___9 = preempt_count();
        dev_err((struct device const *)(& ((il->hw)->wiphy)->dev), "%c %s Neither active nor search matches tx rate\n",
                ((unsigned long )tmp___9 & 2096896UL) != 0UL ? 73 : 85, "il4965_rs_tx_status");
      } else {
      }
      tmp_tbl = (struct il_scale_tbl_info *)(& lq_sta->lq_info) + (unsigned long )lq_sta->active_tbl;
      tmp___12 = il_get_debug_level(il);
      if ((tmp___12 & 1048576U) != 0U) {
        tmp___11 = preempt_count();
        dev_err((struct device const *)(& ((il->hw)->wiphy)->dev), "%c %s active- lq:%x, ant:%x, SGI:%d\n",
                ((unsigned long )tmp___11 & 2096896UL) != 0UL ? 73 : 85, "il4965_rs_tx_status",
                (unsigned int )tmp_tbl->lq_type, (int )tmp_tbl->ant_type, (int )tmp_tbl->is_SGI);
      } else {
      }
      tmp_tbl = (struct il_scale_tbl_info *)(& lq_sta->lq_info) + (unsigned long )(1 - (int )lq_sta->active_tbl);
      tmp___14 = il_get_debug_level(il);
      if ((tmp___14 & 1048576U) != 0U) {
        tmp___13 = preempt_count();
        dev_err((struct device const *)(& ((il->hw)->wiphy)->dev), "%c %s search- lq:%x, ant:%x, SGI:%d\n",
                ((unsigned long )tmp___13 & 2096896UL) != 0UL ? 73 : 85, "il4965_rs_tx_status",
                (unsigned int )tmp_tbl->lq_type, (int )tmp_tbl->ant_type, (int )tmp_tbl->is_SGI);
      } else {
      }
      tmp___16 = il_get_debug_level(il);
      if ((tmp___16 & 1048576U) != 0U) {
        tmp___15 = preempt_count();
        dev_err((struct device const *)(& ((il->hw)->wiphy)->dev), "%c %s actual- lq:%x, ant:%x, SGI:%d\n",
                ((unsigned long )tmp___15 & 2096896UL) != 0UL ? 73 : 85, "il4965_rs_tx_status",
                (unsigned int )tbl_type.lq_type, (int )tbl_type.ant_type, (int )tbl_type.is_SGI);
      } else {
      }
      il4965_rs_stay_in_table(lq_sta, 1);
      goto done;
    }
  }
  if ((info->flags & 1024U) != 0U) {
    tx_rate = table->rs_table[0].rate_n_flags;
    il4965_rs_get_tbl_info_from_mcs(tx_rate, il->band, & tbl_type, & rs_idx);
    il4965_rs_collect_tx_data(curr_tbl, rs_idx, (int )info->__annonCompField100.status.ampdu_len,
                              (int )info->__annonCompField100.status.ampdu_ack_len);
    if ((unsigned int )lq_sta->stay_in_tbl != 0U) {
      lq_sta->total_success = lq_sta->total_success + (u32 )info->__annonCompField100.status.ampdu_ack_len;
      lq_sta->total_failed = lq_sta->total_failed + (u32 )((int )info->__annonCompField100.status.ampdu_len - (int )info->__annonCompField100.status.ampdu_ack_len);
    } else {
    }
  } else {
    retries = (int )info->__annonCompField100.status.rates[0].count + -1;
    _min1 = retries;
    _min2 = 15;
    retries = _min1 < _min2 ? _min1 : _min2;
    legacy_success = (info->flags & 512U) != 0U;
    i = 0;
    goto ldv_54519;
    ldv_54518:
    tx_rate = table->rs_table[i].rate_n_flags;
    il4965_rs_get_tbl_info_from_mcs(tx_rate, il->band, & tbl_type, & rs_idx);
    tmp___20 = il4965_table_type_matches(& tbl_type, curr_tbl);
    if ((int )tmp___20) {
      tmp_tbl = curr_tbl;
    } else {
      tmp___19 = il4965_table_type_matches(& tbl_type, other_tbl);
      if ((int )tmp___19) {
        tmp_tbl = other_tbl;
      } else {
        goto ldv_54517;
      }
    }
    il4965_rs_collect_tx_data(tmp_tbl, rs_idx, 1, i >= retries ? legacy_success : 0);
    ldv_54517:
    i = i + 1;
    ldv_54519: ;
    if (i <= retries) {
      goto ldv_54518;
    } else {
    }
    if ((unsigned int )lq_sta->stay_in_tbl != 0U) {
      lq_sta->total_success = lq_sta->total_success + (u32 )legacy_success;
      lq_sta->total_failed = lq_sta->total_failed + (u32 )((1 - legacy_success) + retries);
    } else {
    }
  }
  lq_sta->last_rate_n_flags = tx_rate;
  done: ;
  if (sta->supp_rates[(unsigned int )sband->band] != 0U) {
    il4965_rs_rate_scale_perform(il, skb, sta, lq_sta);
  } else {
  }
  return;
}
}
static void il4965_rs_set_stay_in_table(struct il_priv *il , u8 is_legacy , struct il_lq_sta *lq_sta )
{
  int tmp ;
  u32 tmp___0 ;
  {
  tmp___0 = il_get_debug_level(il);
  if ((tmp___0 & 1048576U) != 0U) {
    tmp = preempt_count();
    dev_err((struct device const *)(& ((il->hw)->wiphy)->dev), "%c %s we are staying in the same table\n",
            ((unsigned long )tmp & 2096896UL) != 0UL ? 73 : 85, "il4965_rs_set_stay_in_table");
  } else {
  }
  lq_sta->stay_in_tbl = 1U;
  if ((unsigned int )is_legacy != 0U) {
    lq_sta->table_count_limit = 160U;
    lq_sta->max_failure_limit = 160U;
    lq_sta->max_success_limit = 480U;
  } else {
    lq_sta->table_count_limit = 1500U;
    lq_sta->max_failure_limit = 400U;
    lq_sta->max_success_limit = 4500U;
  }
  lq_sta->table_count = 0U;
  lq_sta->total_failed = 0U;
  lq_sta->total_success = 0U;
  lq_sta->flush_timer = (u64 )jiffies;
  lq_sta->action_counter = 0U;
  return;
}
}
static void il4965_rs_set_expected_tpt_table(struct il_lq_sta *lq_sta , struct il_scale_tbl_info *tbl )
{
  s32 (*ht_tbl_pointer)[13U] ;
  bool __warned ;
  int __ret_warn_once ;
  int __ret_warn_on ;
  long tmp ;
  long tmp___0 ;
  long tmp___1 ;
  long tmp___2 ;
  {
  __ret_warn_once = ((unsigned int )tbl->lq_type != 1U && (unsigned int )tbl->lq_type != 2U) && ((unsigned int )tbl->lq_type != 3U && (unsigned int )tbl->lq_type != 4U);
  tmp___1 = ldv__builtin_expect(__ret_warn_once != 0, 0L);
  if (tmp___1 != 0L) {
    __ret_warn_on = ! __warned;
    tmp = ldv__builtin_expect(__ret_warn_on != 0, 0L);
    if (tmp != 0L) {
      warn_slowpath_null("/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/11700/dscv_tempdir/dscv/ri/43_2a/drivers/net/wireless/iwlegacy/4965-rs.c",
                         1033);
    } else {
    }
    tmp___0 = ldv__builtin_expect(__ret_warn_on != 0, 0L);
    if (tmp___0 != 0L) {
      __warned = 1;
    } else {
    }
  } else {
  }
  tmp___2 = ldv__builtin_expect(__ret_warn_once != 0, 0L);
  if (tmp___2 != 0L) {
    tbl->expected_tpt = (s32 *)(& expected_tpt_legacy);
    return;
  } else {
  }
  if ((unsigned int )tbl->lq_type == 1U || (unsigned int )tbl->lq_type == 2U) {
    tbl->expected_tpt = (s32 *)(& expected_tpt_legacy);
    return;
  } else {
  }
  if ((unsigned int )tbl->lq_type == 3U && ((unsigned int )tbl->is_ht40 == 0U || (unsigned int )lq_sta->is_dup != 0U)) {
    ht_tbl_pointer = (s32 (*)[13])(& expected_tpt_siso20MHz);
  } else
  if ((unsigned int )tbl->lq_type == 3U) {
    ht_tbl_pointer = (s32 (*)[13])(& expected_tpt_siso40MHz);
  } else
  if ((unsigned int )tbl->lq_type == 4U && ((unsigned int )tbl->is_ht40 == 0U || (unsigned int )lq_sta->is_dup != 0U)) {
    ht_tbl_pointer = (s32 (*)[13])(& expected_tpt_mimo2_20MHz);
  } else {
    ht_tbl_pointer = (s32 (*)[13])(& expected_tpt_mimo2_40MHz);
  }
  if ((unsigned int )tbl->is_SGI == 0U && (unsigned int )lq_sta->is_agg == 0U) {
    tbl->expected_tpt = (s32 *)ht_tbl_pointer;
  } else
  if ((unsigned int )tbl->is_SGI != 0U && (unsigned int )lq_sta->is_agg == 0U) {
    tbl->expected_tpt = (s32 *)ht_tbl_pointer + 1U;
  } else
  if ((unsigned int )tbl->is_SGI == 0U && (unsigned int )lq_sta->is_agg != 0U) {
    tbl->expected_tpt = (s32 *)ht_tbl_pointer + 2U;
  } else {
    tbl->expected_tpt = (s32 *)ht_tbl_pointer + 3U;
  }
  return;
}
}
static s32 il4965_rs_get_best_rate(struct il_priv *il , struct il_lq_sta *lq_sta ,
                                   struct il_scale_tbl_info *tbl , u16 rate_mask ,
                                   s8 idx )
{
  struct il_scale_tbl_info *active_tbl ;
  s32 active_sr ;
  s32 active_tpt ;
  s32 *tpt_tbl ;
  s32 new_rate ;
  s32 high ;
  s32 low ;
  s32 start_hi ;
  u16 high_low ;
  s8 rate ;
  {
  active_tbl = (struct il_scale_tbl_info *)(& lq_sta->lq_info) + (unsigned long )lq_sta->active_tbl;
  active_sr = active_tbl->win[(int )idx].success_ratio;
  active_tpt = *(active_tbl->expected_tpt + (unsigned long )idx);
  tpt_tbl = tbl->expected_tpt;
  rate = idx;
  start_hi = 13;
  low = start_hi;
  high = low;
  new_rate = high;
  ldv_54555:
  high_low = il4965_rs_get_adjacent_rate(il, (int )((u8 )rate), (int )rate_mask, (int )tbl->lq_type);
  low = (int )high_low & 255;
  high = ((int )high_low >> 8) & 255;
  if ((*(tpt_tbl + (unsigned long )rate) * 100 > lq_sta->last_tpt && ((active_sr > 1920 && active_sr <= 10880) && *(tpt_tbl + (unsigned long )rate) <= active_tpt)) || (active_sr > 10879 && *(tpt_tbl + (unsigned long )rate) > active_tpt)) {
    if (start_hi != 13) {
      new_rate = start_hi;
      goto ldv_54554;
    } else {
    }
    new_rate = (s32 )rate;
    if (low != 13) {
      rate = (s8 )low;
    } else {
      goto ldv_54554;
    }
  } else
  if (new_rate != 13) {
    goto ldv_54554;
  } else
  if (high != 13) {
    start_hi = high;
    rate = (s8 )high;
  } else {
    new_rate = (s32 )rate;
    goto ldv_54554;
  }
  goto ldv_54555;
  ldv_54554: ;
  return (new_rate);
}
}
static int il4965_rs_switch_to_mimo2(struct il_priv *il , struct il_lq_sta *lq_sta ,
                                     struct ieee80211_conf *conf , struct ieee80211_sta *sta ,
                                     struct il_scale_tbl_info *tbl , int idx )
{
  u16 rate_mask ;
  s32 rate ;
  s8 is_green ;
  bool tmp ;
  int tmp___0 ;
  int tmp___1 ;
  u32 tmp___2 ;
  bool tmp___3 ;
  int tmp___4 ;
  u32 tmp___5 ;
  int tmp___6 ;
  u32 tmp___7 ;
  int tmp___8 ;
  u32 tmp___9 ;
  {
  is_green = (s8 )lq_sta->is_green;
  tmp = conf_is_ht(conf);
  if (tmp) {
    tmp___0 = 0;
  } else {
    tmp___0 = 1;
  }
  if (tmp___0 || ! sta->ht_cap.ht_supported) {
    return (-1);
  } else {
  }
  if ((unsigned int )sta->smps_mode == 2U) {
    return (-1);
  } else {
  }
  if ((unsigned int )il->hw_params.tx_chains_num <= 1U) {
    return (-1);
  } else {
  }
  tmp___2 = il_get_debug_level(il);
  if ((tmp___2 & 1048576U) != 0U) {
    tmp___1 = preempt_count();
    dev_err((struct device const *)(& ((il->hw)->wiphy)->dev), "%c %s LQ: try to switch to MIMO2\n",
            ((unsigned long )tmp___1 & 2096896UL) != 0UL ? 73 : 85, "il4965_rs_switch_to_mimo2");
  } else {
  }
  tbl->lq_type = 4;
  tbl->is_dup = lq_sta->is_dup;
  tbl->action = 0U;
  tbl->max_search = 5U;
  rate_mask = lq_sta->active_mimo2_rate;
  tmp___3 = il_is_ht40_tx_allowed(il, & sta->ht_cap);
  if ((int )tmp___3) {
    tbl->is_ht40 = 1U;
  } else {
    tbl->is_ht40 = 0U;
  }
  il4965_rs_set_expected_tpt_table(lq_sta, tbl);
  rate = il4965_rs_get_best_rate(il, lq_sta, tbl, (int )rate_mask, (int )((s8 )idx));
  tmp___5 = il_get_debug_level(il);
  if ((tmp___5 & 1048576U) != 0U) {
    tmp___4 = preempt_count();
    dev_err((struct device const *)(& ((il->hw)->wiphy)->dev), "%c %s LQ: MIMO2 best rate %d mask %X\n",
            ((unsigned long )tmp___4 & 2096896UL) != 0UL ? 73 : 85, "il4965_rs_switch_to_mimo2",
            rate, (int )rate_mask);
  } else {
  }
  if (rate == 13 || (((int )rate_mask >> rate) & 1) == 0) {
    tmp___7 = il_get_debug_level(il);
    if ((tmp___7 & 1048576U) != 0U) {
      tmp___6 = preempt_count();
      dev_err((struct device const *)(& ((il->hw)->wiphy)->dev), "%c %s Can\'t switch with idx %d rate mask %x\n",
              ((unsigned long )tmp___6 & 2096896UL) != 0UL ? 73 : 85, "il4965_rs_switch_to_mimo2",
              rate, (int )rate_mask);
    } else {
    }
    return (-1);
  } else {
  }
  tbl->current_rate = il4965_rate_n_flags_from_tbl(il, tbl, rate, (int )((u8 )is_green));
  tmp___9 = il_get_debug_level(il);
  if ((tmp___9 & 1048576U) != 0U) {
    tmp___8 = preempt_count();
    dev_err((struct device const *)(& ((il->hw)->wiphy)->dev), "%c %s LQ: Switch to new mcs %X idx is green %X\n",
            ((unsigned long )tmp___8 & 2096896UL) != 0UL ? 73 : 85, "il4965_rs_switch_to_mimo2",
            tbl->current_rate, (int )is_green);
  } else {
  }
  return (0);
}
}
static int il4965_rs_switch_to_siso(struct il_priv *il , struct il_lq_sta *lq_sta ,
                                    struct ieee80211_conf *conf , struct ieee80211_sta *sta ,
                                    struct il_scale_tbl_info *tbl , int idx )
{
  u16 rate_mask ;
  u8 is_green ;
  s32 rate ;
  bool tmp ;
  int tmp___0 ;
  int tmp___1 ;
  u32 tmp___2 ;
  bool tmp___3 ;
  int tmp___4 ;
  u32 tmp___5 ;
  int tmp___6 ;
  u32 tmp___7 ;
  int tmp___8 ;
  u32 tmp___9 ;
  {
  is_green = lq_sta->is_green;
  tmp = conf_is_ht(conf);
  if (tmp) {
    tmp___0 = 0;
  } else {
    tmp___0 = 1;
  }
  if (tmp___0 || ! sta->ht_cap.ht_supported) {
    return (-1);
  } else {
  }
  tmp___2 = il_get_debug_level(il);
  if ((tmp___2 & 1048576U) != 0U) {
    tmp___1 = preempt_count();
    dev_err((struct device const *)(& ((il->hw)->wiphy)->dev), "%c %s LQ: try to switch to SISO\n",
            ((unsigned long )tmp___1 & 2096896UL) != 0UL ? 73 : 85, "il4965_rs_switch_to_siso");
  } else {
  }
  tbl->is_dup = lq_sta->is_dup;
  tbl->lq_type = 3;
  tbl->action = 0U;
  tbl->max_search = 5U;
  rate_mask = lq_sta->active_siso_rate;
  tmp___3 = il_is_ht40_tx_allowed(il, & sta->ht_cap);
  if ((int )tmp___3) {
    tbl->is_ht40 = 1U;
  } else {
    tbl->is_ht40 = 0U;
  }
  if ((unsigned int )is_green != 0U) {
    tbl->is_SGI = 0U;
  } else {
  }
  il4965_rs_set_expected_tpt_table(lq_sta, tbl);
  rate = il4965_rs_get_best_rate(il, lq_sta, tbl, (int )rate_mask, (int )((s8 )idx));
  tmp___5 = il_get_debug_level(il);
  if ((tmp___5 & 1048576U) != 0U) {
    tmp___4 = preempt_count();
    dev_err((struct device const *)(& ((il->hw)->wiphy)->dev), "%c %s LQ: get best rate %d mask %X\n",
            ((unsigned long )tmp___4 & 2096896UL) != 0UL ? 73 : 85, "il4965_rs_switch_to_siso",
            rate, (int )rate_mask);
  } else {
  }
  if (rate == 13 || (((int )rate_mask >> rate) & 1) == 0) {
    tmp___7 = il_get_debug_level(il);
    if ((tmp___7 & 1048576U) != 0U) {
      tmp___6 = preempt_count();
      dev_err((struct device const *)(& ((il->hw)->wiphy)->dev), "%c %s can not switch with idx %d rate mask %x\n",
              ((unsigned long )tmp___6 & 2096896UL) != 0UL ? 73 : 85, "il4965_rs_switch_to_siso",
              rate, (int )rate_mask);
    } else {
    }
    return (-1);
  } else {
  }
  tbl->current_rate = il4965_rate_n_flags_from_tbl(il, tbl, rate, (int )is_green);
  tmp___9 = il_get_debug_level(il);
  if ((tmp___9 & 1048576U) != 0U) {
    tmp___8 = preempt_count();
    dev_err((struct device const *)(& ((il->hw)->wiphy)->dev), "%c %s LQ: Switch to new mcs %X idx is green %X\n",
            ((unsigned long )tmp___8 & 2096896UL) != 0UL ? 73 : 85, "il4965_rs_switch_to_siso",
            tbl->current_rate, (int )is_green);
  } else {
  }
  return (0);
}
}
static int il4965_rs_move_legacy_other(struct il_priv *il , struct il_lq_sta *lq_sta ,
                                       struct ieee80211_conf *conf , struct ieee80211_sta *sta ,
                                       int idx )
{
  struct il_scale_tbl_info *tbl ;
  struct il_scale_tbl_info *search_tbl ;
  struct il_rate_scale_data *win ;
  u32 sz ;
  u8 start_action ;
  u8 valid_tx_ant ;
  u8 tx_chains_num ;
  int ret ;
  u8 update_search_tbl_counter ;
  int tmp ;
  u32 tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  u32 tmp___3 ;
  int tmp___4 ;
  u32 tmp___5 ;
  u8 tmp___6 ;
  {
  tbl = (struct il_scale_tbl_info *)(& lq_sta->lq_info) + (unsigned long )lq_sta->active_tbl;
  search_tbl = (struct il_scale_tbl_info *)(& lq_sta->lq_info) + (unsigned long )(1 - (int )lq_sta->active_tbl);
  win = (struct il_rate_scale_data *)(& tbl->win) + (unsigned long )idx;
  sz = 32U;
  valid_tx_ant = il->hw_params.valid_tx_ant;
  tx_chains_num = il->hw_params.tx_chains_num;
  ret = 0;
  update_search_tbl_counter = 0U;
  tbl->action = 2U;
  start_action = tbl->action;
  ldv_54606:
  lq_sta->action_counter = (u8 )((int )lq_sta->action_counter + 1);
  switch ((int )tbl->action) {
  case 0: ;
  case 1:
  tmp___0 = il_get_debug_level(il);
  if ((tmp___0 & 1048576U) != 0U) {
    tmp = preempt_count();
    dev_err((struct device const *)(& ((il->hw)->wiphy)->dev), "%c %s LQ: Legacy toggle Antenna\n",
            ((unsigned long )tmp & 2096896UL) != 0UL ? 73 : 85, "il4965_rs_move_legacy_other");
  } else {
  }
  if (((unsigned int )tbl->action == 0U && (unsigned int )tx_chains_num <= 1U) || ((unsigned int )tbl->action == 1U && (unsigned int )tx_chains_num <= 2U)) {
    goto ldv_54599;
  } else {
  }
  if (win->success_ratio > 12799) {
    goto ldv_54599;
  } else {
  }
  memcpy((void *)search_tbl, (void const *)tbl, (size_t )sz);
  tmp___1 = il4965_rs_toggle_antenna((u32 )valid_tx_ant, & search_tbl->current_rate,
                                     search_tbl);
  if (tmp___1 != 0) {
    update_search_tbl_counter = 1U;
    il4965_rs_set_expected_tpt_table(lq_sta, search_tbl);
    goto out;
  } else {
  }
  goto ldv_54599;
  case 2:
  tmp___3 = il_get_debug_level(il);
  if ((tmp___3 & 1048576U) != 0U) {
    tmp___2 = preempt_count();
    dev_err((struct device const *)(& ((il->hw)->wiphy)->dev), "%c %s LQ: Legacy switch to SISO\n",
            ((unsigned long )tmp___2 & 2096896UL) != 0UL ? 73 : 85, "il4965_rs_move_legacy_other");
  } else {
  }
  memcpy((void *)search_tbl, (void const *)tbl, (size_t )sz);
  search_tbl->is_SGI = 0U;
  ret = il4965_rs_switch_to_siso(il, lq_sta, conf, sta, search_tbl, idx);
  if (ret == 0) {
    lq_sta->action_counter = 0U;
    goto out;
  } else {
  }
  goto ldv_54599;
  case 3: ;
  case 4: ;
  case 5:
  tmp___5 = il_get_debug_level(il);
  if ((tmp___5 & 1048576U) != 0U) {
    tmp___4 = preempt_count();
    dev_err((struct device const *)(& ((il->hw)->wiphy)->dev), "%c %s LQ: Legacy switch to MIMO2\n",
            ((unsigned long )tmp___4 & 2096896UL) != 0UL ? 73 : 85, "il4965_rs_move_legacy_other");
  } else {
  }
  memcpy((void *)search_tbl, (void const *)tbl, (size_t )sz);
  search_tbl->is_SGI = 0U;
  if ((unsigned int )tbl->action == 3U) {
    search_tbl->ant_type = 3U;
  } else
  if ((unsigned int )tbl->action == 4U) {
    search_tbl->ant_type = 5U;
  } else {
    search_tbl->ant_type = 6U;
  }
  tmp___6 = il4965_rs_is_valid_ant((int )valid_tx_ant, (int )search_tbl->ant_type);
  if ((unsigned int )tmp___6 == 0U) {
    goto ldv_54599;
  } else {
  }
  ret = il4965_rs_switch_to_mimo2(il, lq_sta, conf, sta, search_tbl, idx);
  if (ret == 0) {
    lq_sta->action_counter = 0U;
    goto out;
  } else {
  }
  goto ldv_54599;
  }
  ldv_54599:
  tbl->action = (u8 )((int )tbl->action + 1);
  if ((unsigned int )tbl->action > 5U) {
    tbl->action = 0U;
  } else {
  }
  if ((int )tbl->action == (int )start_action) {
    goto ldv_54605;
  } else {
  }
  goto ldv_54606;
  ldv_54605:
  search_tbl->lq_type = 0;
  return (0);
  out:
  lq_sta->search_better_tbl = 1U;
  tbl->action = (u8 )((int )tbl->action + 1);
  if ((unsigned int )tbl->action > 5U) {
    tbl->action = 0U;
  } else {
  }
  if ((unsigned int )update_search_tbl_counter != 0U) {
    search_tbl->action = tbl->action;
  } else {
  }
  return (0);
}
}
static int il4965_rs_move_siso_to_other(struct il_priv *il , struct il_lq_sta *lq_sta ,
                                        struct ieee80211_conf *conf , struct ieee80211_sta *sta ,
                                        int idx )
{
  u8 is_green ;
  struct il_scale_tbl_info *tbl ;
  struct il_scale_tbl_info *search_tbl ;
  struct il_rate_scale_data *win ;
  struct ieee80211_sta_ht_cap *ht_cap ;
  u32 sz ;
  u8 start_action ;
  u8 valid_tx_ant ;
  u8 tx_chains_num ;
  u8 update_search_tbl_counter ;
  int ret ;
  int tmp ;
  u32 tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  u32 tmp___3 ;
  u8 tmp___4 ;
  int tmp___5 ;
  u32 tmp___6 ;
  s32 tpt ;
  {
  is_green = lq_sta->is_green;
  tbl = (struct il_scale_tbl_info *)(& lq_sta->lq_info) + (unsigned long )lq_sta->active_tbl;
  search_tbl = (struct il_scale_tbl_info *)(& lq_sta->lq_info) + (unsigned long )(1 - (int )lq_sta->active_tbl);
  win = (struct il_rate_scale_data *)(& tbl->win) + (unsigned long )idx;
  ht_cap = & sta->ht_cap;
  sz = 32U;
  valid_tx_ant = il->hw_params.valid_tx_ant;
  tx_chains_num = il->hw_params.tx_chains_num;
  update_search_tbl_counter = 0U;
  start_action = tbl->action;
  ldv_54636:
  lq_sta->action_counter = (u8 )((int )lq_sta->action_counter + 1);
  switch ((int )tbl->action) {
  case 0: ;
  case 1:
  tmp___0 = il_get_debug_level(il);
  if ((tmp___0 & 1048576U) != 0U) {
    tmp = preempt_count();
    dev_err((struct device const *)(& ((il->hw)->wiphy)->dev), "%c %s LQ: SISO toggle Antenna\n",
            ((unsigned long )tmp & 2096896UL) != 0UL ? 73 : 85, "il4965_rs_move_siso_to_other");
  } else {
  }
  if (((unsigned int )tbl->action == 0U && (unsigned int )tx_chains_num <= 1U) || ((unsigned int )tbl->action == 1U && (unsigned int )tx_chains_num <= 2U)) {
    goto ldv_54628;
  } else {
  }
  if (win->success_ratio > 12799) {
    goto ldv_54628;
  } else {
  }
  memcpy((void *)search_tbl, (void const *)tbl, (size_t )sz);
  tmp___1 = il4965_rs_toggle_antenna((u32 )valid_tx_ant, & search_tbl->current_rate,
                                     search_tbl);
  if (tmp___1 != 0) {
    update_search_tbl_counter = 1U;
    goto out;
  } else {
  }
  goto ldv_54628;
  case 2: ;
  case 3: ;
  case 4:
  tmp___3 = il_get_debug_level(il);
  if ((tmp___3 & 1048576U) != 0U) {
    tmp___2 = preempt_count();
    dev_err((struct device const *)(& ((il->hw)->wiphy)->dev), "%c %s LQ: SISO switch to MIMO2\n",
            ((unsigned long )tmp___2 & 2096896UL) != 0UL ? 73 : 85, "il4965_rs_move_siso_to_other");
  } else {
  }
  memcpy((void *)search_tbl, (void const *)tbl, (size_t )sz);
  search_tbl->is_SGI = 0U;
  if ((unsigned int )tbl->action == 2U) {
    search_tbl->ant_type = 3U;
  } else
  if ((unsigned int )tbl->action == 3U) {
    search_tbl->ant_type = 5U;
  } else {
    search_tbl->ant_type = 6U;
  }
  tmp___4 = il4965_rs_is_valid_ant((int )valid_tx_ant, (int )search_tbl->ant_type);
  if ((unsigned int )tmp___4 == 0U) {
    goto ldv_54628;
  } else {
  }
  ret = il4965_rs_switch_to_mimo2(il, lq_sta, conf, sta, search_tbl, idx);
  if (ret == 0) {
    goto out;
  } else {
  }
  goto ldv_54628;
  case 5: ;
  if ((unsigned int )tbl->is_ht40 == 0U && ((int )ht_cap->cap & 32) == 0) {
    goto ldv_54628;
  } else {
  }
  if ((unsigned int )tbl->is_ht40 != 0U && ((int )ht_cap->cap & 64) == 0) {
    goto ldv_54628;
  } else {
  }
  tmp___6 = il_get_debug_level(il);
  if ((tmp___6 & 1048576U) != 0U) {
    tmp___5 = preempt_count();
    dev_err((struct device const *)(& ((il->hw)->wiphy)->dev), "%c %s LQ: SISO toggle SGI/NGI\n",
            ((unsigned long )tmp___5 & 2096896UL) != 0UL ? 73 : 85, "il4965_rs_move_siso_to_other");
  } else {
  }
  memcpy((void *)search_tbl, (void const *)tbl, (size_t )sz);
  if ((unsigned int )is_green != 0U) {
    if ((unsigned int )tbl->is_SGI == 0U) {
      goto ldv_54628;
    } else {
      dev_err((struct device const *)(& (il->pci_dev)->dev), "SGI was set in GF+SISO\n");
    }
  } else {
  }
  search_tbl->is_SGI = (unsigned int )tbl->is_SGI == 0U;
  il4965_rs_set_expected_tpt_table(lq_sta, search_tbl);
  if ((unsigned int )tbl->is_SGI != 0U) {
    tpt = lq_sta->last_tpt / 100;
    if (*(search_tbl->expected_tpt + (unsigned long )idx) <= tpt) {
      goto ldv_54628;
    } else {
    }
  } else {
  }
  search_tbl->current_rate = il4965_rate_n_flags_from_tbl(il, search_tbl, idx, (int )is_green);
  update_search_tbl_counter = 1U;
  goto out;
  }
  ldv_54628:
  tbl->action = (u8 )((int )tbl->action + 1);
  if ((unsigned int )tbl->action > 5U) {
    tbl->action = 0U;
  } else {
  }
  if ((int )tbl->action == (int )start_action) {
    goto ldv_54635;
  } else {
  }
  goto ldv_54636;
  ldv_54635:
  search_tbl->lq_type = 0;
  return (0);
  out:
  lq_sta->search_better_tbl = 1U;
  tbl->action = (u8 )((int )tbl->action + 1);
  if ((unsigned int )tbl->action > 5U) {
    tbl->action = 0U;
  } else {
  }
  if ((unsigned int )update_search_tbl_counter != 0U) {
    search_tbl->action = tbl->action;
  } else {
  }
  return (0);
}
}
static int il4965_rs_move_mimo2_to_other(struct il_priv *il , struct il_lq_sta *lq_sta ,
                                         struct ieee80211_conf *conf , struct ieee80211_sta *sta ,
                                         int idx )
{
  s8 is_green ;
  struct il_scale_tbl_info *tbl ;
  struct il_scale_tbl_info *search_tbl ;
  struct il_rate_scale_data *win ;
  struct ieee80211_sta_ht_cap *ht_cap ;
  u32 sz ;
  u8 start_action ;
  u8 valid_tx_ant ;
  u8 tx_chains_num ;
  u8 update_search_tbl_counter ;
  int ret ;
  int tmp ;
  u32 tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  u32 tmp___3 ;
  u8 tmp___4 ;
  int tmp___5 ;
  u32 tmp___6 ;
  s32 tpt ;
  {
  is_green = (s8 )lq_sta->is_green;
  tbl = (struct il_scale_tbl_info *)(& lq_sta->lq_info) + (unsigned long )lq_sta->active_tbl;
  search_tbl = (struct il_scale_tbl_info *)(& lq_sta->lq_info) + (unsigned long )(1 - (int )lq_sta->active_tbl);
  win = (struct il_rate_scale_data *)(& tbl->win) + (unsigned long )idx;
  ht_cap = & sta->ht_cap;
  sz = 32U;
  valid_tx_ant = il->hw_params.valid_tx_ant;
  tx_chains_num = il->hw_params.tx_chains_num;
  update_search_tbl_counter = 0U;
  start_action = tbl->action;
  ldv_54666:
  lq_sta->action_counter = (u8 )((int )lq_sta->action_counter + 1);
  switch ((int )tbl->action) {
  case 0: ;
  case 1:
  tmp___0 = il_get_debug_level(il);
  if ((tmp___0 & 1048576U) != 0U) {
    tmp = preempt_count();
    dev_err((struct device const *)(& ((il->hw)->wiphy)->dev), "%c %s LQ: MIMO2 toggle Antennas\n",
            ((unsigned long )tmp & 2096896UL) != 0UL ? 73 : 85, "il4965_rs_move_mimo2_to_other");
  } else {
  }
  if ((unsigned int )tx_chains_num <= 2U) {
    goto ldv_54658;
  } else {
  }
  if (win->success_ratio > 12799) {
    goto ldv_54658;
  } else {
  }
  memcpy((void *)search_tbl, (void const *)tbl, (size_t )sz);
  tmp___1 = il4965_rs_toggle_antenna((u32 )valid_tx_ant, & search_tbl->current_rate,
                                     search_tbl);
  if (tmp___1 != 0) {
    update_search_tbl_counter = 1U;
    goto out;
  } else {
  }
  goto ldv_54658;
  case 2: ;
  case 3: ;
  case 4:
  tmp___3 = il_get_debug_level(il);
  if ((tmp___3 & 1048576U) != 0U) {
    tmp___2 = preempt_count();
    dev_err((struct device const *)(& ((il->hw)->wiphy)->dev), "%c %s LQ: MIMO2 switch to SISO\n",
            ((unsigned long )tmp___2 & 2096896UL) != 0UL ? 73 : 85, "il4965_rs_move_mimo2_to_other");
  } else {
  }
  memcpy((void *)search_tbl, (void const *)tbl, (size_t )sz);
  if ((unsigned int )tbl->action == 2U) {
    search_tbl->ant_type = 1U;
  } else
  if ((unsigned int )tbl->action == 3U) {
    search_tbl->ant_type = 2U;
  } else {
    search_tbl->ant_type = 4U;
  }
  tmp___4 = il4965_rs_is_valid_ant((int )valid_tx_ant, (int )search_tbl->ant_type);
  if ((unsigned int )tmp___4 == 0U) {
    goto ldv_54658;
  } else {
  }
  ret = il4965_rs_switch_to_siso(il, lq_sta, conf, sta, search_tbl, idx);
  if (ret == 0) {
    goto out;
  } else {
  }
  goto ldv_54658;
  case 5: ;
  if ((unsigned int )tbl->is_ht40 == 0U && ((int )ht_cap->cap & 32) == 0) {
    goto ldv_54658;
  } else {
  }
  if ((unsigned int )tbl->is_ht40 != 0U && ((int )ht_cap->cap & 64) == 0) {
    goto ldv_54658;
  } else {
  }
  tmp___6 = il_get_debug_level(il);
  if ((tmp___6 & 1048576U) != 0U) {
    tmp___5 = preempt_count();
    dev_err((struct device const *)(& ((il->hw)->wiphy)->dev), "%c %s LQ: MIMO2 toggle SGI/NGI\n",
            ((unsigned long )tmp___5 & 2096896UL) != 0UL ? 73 : 85, "il4965_rs_move_mimo2_to_other");
  } else {
  }
  memcpy((void *)search_tbl, (void const *)tbl, (size_t )sz);
  search_tbl->is_SGI = (unsigned int )tbl->is_SGI == 0U;
  il4965_rs_set_expected_tpt_table(lq_sta, search_tbl);
  if ((unsigned int )tbl->is_SGI != 0U) {
    tpt = lq_sta->last_tpt / 100;
    if (*(search_tbl->expected_tpt + (unsigned long )idx) <= tpt) {
      goto ldv_54658;
    } else {
    }
  } else {
  }
  search_tbl->current_rate = il4965_rate_n_flags_from_tbl(il, search_tbl, idx, (int )((u8 )is_green));
  update_search_tbl_counter = 1U;
  goto out;
  }
  ldv_54658:
  tbl->action = (u8 )((int )tbl->action + 1);
  if ((unsigned int )tbl->action > 5U) {
    tbl->action = 0U;
  } else {
  }
  if ((int )tbl->action == (int )start_action) {
    goto ldv_54665;
  } else {
  }
  goto ldv_54666;
  ldv_54665:
  search_tbl->lq_type = 0;
  return (0);
  out:
  lq_sta->search_better_tbl = 1U;
  tbl->action = (u8 )((int )tbl->action + 1);
  if ((unsigned int )tbl->action > 5U) {
    tbl->action = 0U;
  } else {
  }
  if ((unsigned int )update_search_tbl_counter != 0U) {
    search_tbl->action = tbl->action;
  } else {
  }
  return (0);
}
}
static void il4965_rs_stay_in_table(struct il_lq_sta *lq_sta , bool force_search )
{
  struct il_scale_tbl_info *tbl ;
  int i ;
  int active_tbl ;
  int flush_interval_passed ;
  struct il_priv *il ;
  int tmp ;
  u32 tmp___0 ;
  int tmp___1 ;
  u32 tmp___2 ;
  {
  flush_interval_passed = 0;
  il = lq_sta->drv;
  active_tbl = (int )lq_sta->active_tbl;
  tbl = (struct il_scale_tbl_info *)(& lq_sta->lq_info) + (unsigned long )active_tbl;
  if ((unsigned int )lq_sta->stay_in_tbl != 0U) {
    if (lq_sta->flush_timer != 0ULL) {
      flush_interval_passed = (long )(((unsigned long )lq_sta->flush_timer - (unsigned long )jiffies) + 750UL) < 0L;
    } else {
    }
    if ((((int )force_search || lq_sta->total_failed > lq_sta->max_failure_limit) || lq_sta->total_success > lq_sta->max_success_limit) || (((unsigned int )lq_sta->search_better_tbl == 0U && lq_sta->flush_timer != 0ULL) && flush_interval_passed != 0)) {
      tmp___0 = il_get_debug_level(il);
      if ((tmp___0 & 1048576U) != 0U) {
        tmp = preempt_count();
        dev_err((struct device const *)(& ((il->hw)->wiphy)->dev), "%c %s LQ: stay is expired %d %d %d\n",
                ((unsigned long )tmp & 2096896UL) != 0UL ? 73 : 85, "il4965_rs_stay_in_table",
                lq_sta->total_failed, lq_sta->total_success, flush_interval_passed);
      } else {
      }
      lq_sta->stay_in_tbl = 0U;
      lq_sta->total_failed = 0U;
      lq_sta->total_success = 0U;
      lq_sta->flush_timer = 0ULL;
    } else {
      lq_sta->table_count = lq_sta->table_count + 1U;
      if (lq_sta->table_count >= lq_sta->table_count_limit) {
        lq_sta->table_count = 0U;
        tmp___2 = il_get_debug_level(il);
        if ((tmp___2 & 1048576U) != 0U) {
          tmp___1 = preempt_count();
          dev_err((struct device const *)(& ((il->hw)->wiphy)->dev), "%c %s LQ: stay in table clear win\n",
                  ((unsigned long )tmp___1 & 2096896UL) != 0UL ? 73 : 85, "il4965_rs_stay_in_table");
        } else {
        }
        i = 0;
        goto ldv_54684;
        ldv_54683:
        il4965_rs_rate_scale_clear_win((struct il_rate_scale_data *)(& tbl->win) + (unsigned long )i);
        i = i + 1;
        ldv_54684: ;
        if (i <= 12) {
          goto ldv_54683;
        } else {
        }
      } else {
      }
    }
    if ((unsigned int )lq_sta->stay_in_tbl == 0U) {
      i = 0;
      goto ldv_54687;
      ldv_54686:
      il4965_rs_rate_scale_clear_win((struct il_rate_scale_data *)(& tbl->win) + (unsigned long )i);
      i = i + 1;
      ldv_54687: ;
      if (i <= 12) {
        goto ldv_54686;
      } else {
      }
    } else {
    }
  } else {
  }
  return;
}
}
static void il4965_rs_update_rate_tbl(struct il_priv *il , struct il_lq_sta *lq_sta ,
                                      struct il_scale_tbl_info *tbl , int idx , u8 is_green )
{
  u32 rate ;
  {
  rate = il4965_rate_n_flags_from_tbl(il, tbl, idx, (int )is_green);
  il4965_rs_fill_link_cmd(il, lq_sta, rate);
  il_send_lq_cmd(il, & lq_sta->lq, 2, 0);
  return;
}
}
static void il4965_rs_rate_scale_perform(struct il_priv *il , struct sk_buff *skb ,
                                         struct ieee80211_sta *sta , struct il_lq_sta *lq_sta )
{
  struct ieee80211_hw *hw ;
  struct ieee80211_conf *conf ;
  struct ieee80211_tx_info *info ;
  struct ieee80211_tx_info *tmp ;
  struct ieee80211_hdr *hdr ;
  int low ;
  int high ;
  int idx ;
  int i ;
  struct il_rate_scale_data *win ;
  int current_tpt ;
  int low_tpt ;
  int high_tpt ;
  u32 fail_count ;
  s8 scale_action ;
  u16 rate_mask ;
  u8 update_lq ;
  struct il_scale_tbl_info *tbl ;
  struct il_scale_tbl_info *tbl1 ;
  u16 rate_scale_idx_msk ;
  u8 is_green ;
  u8 active_tbl ;
  u8 done_search ;
  u16 high_low ;
  s32 sr ;
  u8 tid ;
  struct il_tid_data *tid_data ;
  int tmp___0 ;
  u32 tmp___1 ;
  int tmp___2 ;
  bool tmp___3 ;
  int tmp___4 ;
  u32 tmp___5 ;
  int tmp___6 ;
  u32 tmp___7 ;
  int tmp___8 ;
  u32 tmp___9 ;
  int tmp___10 ;
  u32 tmp___11 ;
  int tmp___12 ;
  u32 tmp___13 ;
  int tmp___14 ;
  u32 tmp___15 ;
  int tmp___16 ;
  u32 tmp___17 ;
  int tmp___18 ;
  u32 tmp___19 ;
  int tmp___20 ;
  u32 tmp___21 ;
  int tmp___22 ;
  u32 tmp___23 ;
  bool tmp___24 ;
  int tmp___25 ;
  int tmp___26 ;
  u32 tmp___27 ;
  {
  hw = il->hw;
  conf = & hw->conf;
  tmp = IEEE80211_SKB_CB(skb);
  info = tmp;
  hdr = (struct ieee80211_hdr *)skb->data;
  low = 13;
  high = 13;
  win = (struct il_rate_scale_data *)0;
  current_tpt = -1;
  low_tpt = -1;
  high_tpt = -1;
  scale_action = 0;
  update_lq = 0U;
  rate_scale_idx_msk = 0U;
  is_green = 0U;
  active_tbl = 0U;
  done_search = 0U;
  tid = 9U;
  tmp___1 = il_get_debug_level(il);
  if ((tmp___1 & 1048576U) != 0U) {
    tmp___0 = preempt_count();
    dev_err((struct device const *)(& ((il->hw)->wiphy)->dev), "%c %s rate scale calculate new rate for skb\n",
            ((unsigned long )tmp___0 & 2096896UL) != 0UL ? 73 : 85, "il4965_rs_rate_scale_perform");
  } else {
  }
  tmp___2 = ieee80211_is_data((int )hdr->frame_control);
  if (tmp___2 == 0 || (info->flags & 4U) != 0U) {
    return;
  } else {
  }
  lq_sta->supp_rates = sta->supp_rates[(unsigned int )lq_sta->band];
  tid = il4965_rs_tl_add_packet(lq_sta, hdr);
  if ((unsigned int )tid != 9U && ((int )lq_sta->tx_agg_tid_en >> (int )tid) & 1) {
    tid_data = (struct il_tid_data *)(& il->stations[(int )lq_sta->lq.sta_id].tid) + (unsigned long )tid;
    if ((unsigned int )tid_data->agg.state == 0U) {
      lq_sta->is_agg = 0U;
    } else {
      lq_sta->is_agg = 1U;
    }
  } else {
    lq_sta->is_agg = 0U;
  }
  if ((unsigned int )lq_sta->search_better_tbl == 0U) {
    active_tbl = lq_sta->active_tbl;
  } else {
    active_tbl = 1U - (unsigned int )lq_sta->active_tbl;
  }
  tbl = (struct il_scale_tbl_info *)(& lq_sta->lq_info) + (unsigned long )active_tbl;
  if ((unsigned int )tbl->lq_type == 1U || (unsigned int )tbl->lq_type == 2U) {
    lq_sta->is_green = 0U;
  } else {
    tmp___3 = il4965_rs_use_green(il, sta);
    lq_sta->is_green = (u8 )tmp___3;
  }
  is_green = lq_sta->is_green;
  idx = lq_sta->last_txrate_idx;
  tmp___5 = il_get_debug_level(il);
  if ((tmp___5 & 1048576U) != 0U) {
    tmp___4 = preempt_count();
    dev_err((struct device const *)(& ((il->hw)->wiphy)->dev), "%c %s Rate scale idx %d for type %d\n",
            ((unsigned long )tmp___4 & 2096896UL) != 0UL ? 73 : 85, "il4965_rs_rate_scale_perform",
            idx, (unsigned int )tbl->lq_type);
  } else {
  }
  rate_mask = il4965_rs_get_supported_rates(lq_sta, hdr, tbl->lq_type);
  tmp___7 = il_get_debug_level(il);
  if ((tmp___7 & 1048576U) != 0U) {
    tmp___6 = preempt_count();
    dev_err((struct device const *)(& ((il->hw)->wiphy)->dev), "%c %s mask 0x%04X\n",
            ((unsigned long )tmp___6 & 2096896UL) != 0UL ? 73 : 85, "il4965_rs_rate_scale_perform",
            (int )rate_mask);
  } else {
  }
  if ((unsigned int )tbl->lq_type == 1U || (unsigned int )tbl->lq_type == 2U) {
    if ((unsigned int )lq_sta->band == 1U) {
      rate_scale_idx_msk = ((int )((unsigned short )lq_sta->supp_rates) << 4U) & (int )rate_mask;
    } else {
      rate_scale_idx_msk = (int )((unsigned short )lq_sta->supp_rates) & (int )rate_mask;
    }
  } else {
    rate_scale_idx_msk = rate_mask;
  }
  if ((unsigned int )rate_scale_idx_msk == 0U) {
    rate_scale_idx_msk = rate_mask;
  } else {
  }
  if ((((int )rate_scale_idx_msk >> idx) & 1) == 0) {
    dev_err((struct device const *)(& (il->pci_dev)->dev), "Current Rate is not valid\n");
    if ((unsigned int )lq_sta->search_better_tbl != 0U) {
      tbl->lq_type = 0;
      lq_sta->search_better_tbl = 0U;
      tbl = (struct il_scale_tbl_info *)(& lq_sta->lq_info) + (unsigned long )lq_sta->active_tbl;
      idx = il4965_hwrate_to_plcp_idx(tbl->current_rate);
      il4965_rs_update_rate_tbl(il, lq_sta, tbl, idx, (int )is_green);
    } else {
    }
    return;
  } else {
  }
  if ((unsigned long )tbl->expected_tpt == (unsigned long )((s32 *)0)) {
    dev_err((struct device const *)(& (il->pci_dev)->dev), "tbl->expected_tpt is NULL\n");
    return;
  } else {
  }
  if ((int )lq_sta->max_rate_idx != -1 && (int )lq_sta->max_rate_idx < idx) {
    idx = (int )lq_sta->max_rate_idx;
    update_lq = 1U;
    win = (struct il_rate_scale_data *)(& tbl->win) + (unsigned long )idx;
    goto lq_update;
  } else {
  }
  win = (struct il_rate_scale_data *)(& tbl->win) + (unsigned long )idx;
  fail_count = (u32 )(win->counter - win->success_counter);
  if (fail_count <= 5U && win->success_counter <= 7) {
    tmp___9 = il_get_debug_level(il);
    if ((tmp___9 & 1048576U) != 0U) {
      tmp___8 = preempt_count();
      dev_err((struct device const *)(& ((il->hw)->wiphy)->dev), "%c %s LQ: still below TH. succ=%d total=%d for idx %d\n",
              ((unsigned long )tmp___8 & 2096896UL) != 0UL ? 73 : 85, "il4965_rs_rate_scale_perform",
              win->success_counter, win->counter, idx);
    } else {
    }
    win->average_tpt = -1;
    il4965_rs_stay_in_table(lq_sta, 0);
    goto out;
  } else {
  }
  if (win->average_tpt != (win->success_ratio * *(tbl->expected_tpt + (unsigned long )idx) + 64) / 128) {
    dev_err((struct device const *)(& (il->pci_dev)->dev), "expected_tpt should have been calculated by now\n");
    win->average_tpt = (win->success_ratio * *(tbl->expected_tpt + (unsigned long )idx) + 64) / 128;
  } else {
  }
  if ((unsigned int )lq_sta->search_better_tbl != 0U) {
    if (win->average_tpt > lq_sta->last_tpt) {
      tmp___11 = il_get_debug_level(il);
      if ((tmp___11 & 1048576U) != 0U) {
        tmp___10 = preempt_count();
        dev_err((struct device const *)(& ((il->hw)->wiphy)->dev), "%c %s LQ: SWITCHING TO NEW TBL suc=%d cur-tpt=%d old-tpt=%d\n",
                ((unsigned long )tmp___10 & 2096896UL) != 0UL ? 73 : 85, "il4965_rs_rate_scale_perform",
                win->success_ratio, win->average_tpt, lq_sta->last_tpt);
      } else {
      }
      if ((unsigned int )tbl->lq_type != 1U && (unsigned int )tbl->lq_type != 2U) {
        lq_sta->enable_counter = 1U;
      } else {
      }
      lq_sta->active_tbl = active_tbl;
      current_tpt = win->average_tpt;
    } else {
      tmp___13 = il_get_debug_level(il);
      if ((tmp___13 & 1048576U) != 0U) {
        tmp___12 = preempt_count();
        dev_err((struct device const *)(& ((il->hw)->wiphy)->dev), "%c %s LQ: GOING BACK TO THE OLD TBL suc=%d cur-tpt=%d old-tpt=%d\n",
                ((unsigned long )tmp___12 & 2096896UL) != 0UL ? 73 : 85, "il4965_rs_rate_scale_perform",
                win->success_ratio, win->average_tpt, lq_sta->last_tpt);
      } else {
      }
      tbl->lq_type = 0;
      active_tbl = lq_sta->active_tbl;
      tbl = (struct il_scale_tbl_info *)(& lq_sta->lq_info) + (unsigned long )active_tbl;
      idx = il4965_hwrate_to_plcp_idx(tbl->current_rate);
      current_tpt = lq_sta->last_tpt;
      update_lq = 1U;
    }
    lq_sta->search_better_tbl = 0U;
    done_search = 1U;
    goto lq_update;
  } else {
  }
  high_low = il4965_rs_get_adjacent_rate(il, (int )((u8 )idx), (int )rate_scale_idx_msk,
                                         (int )tbl->lq_type);
  low = (int )high_low & 255;
  high = ((int )high_low >> 8) & 255;
  if ((int )lq_sta->max_rate_idx != -1 && (int )lq_sta->max_rate_idx < high) {
    high = 13;
  } else {
  }
  sr = win->success_ratio;
  current_tpt = win->average_tpt;
  if (low != 13) {
    low_tpt = tbl->win[low].average_tpt;
  } else {
  }
  if (high != 13) {
    high_tpt = tbl->win[high].average_tpt;
  } else {
  }
  scale_action = 0;
  if (sr <= 1920 || current_tpt == 0) {
    tmp___15 = il_get_debug_level(il);
    if ((tmp___15 & 1048576U) != 0U) {
      tmp___14 = preempt_count();
      dev_err((struct device const *)(& ((il->hw)->wiphy)->dev), "%c %s decrease rate because of low success_ratio\n",
              ((unsigned long )tmp___14 & 2096896UL) != 0UL ? 73 : 85, "il4965_rs_rate_scale_perform");
    } else {
    }
    scale_action = -1;
  } else
  if (low_tpt == -1 && high_tpt == -1) {
    if (high != 13 && sr > 6399) {
      scale_action = 1;
    } else
    if (low != 13) {
      scale_action = 0;
    } else {
    }
  } else
  if (((low_tpt != -1 && high_tpt != -1) && low_tpt < current_tpt) && high_tpt < current_tpt) {
    scale_action = 0;
  } else
  if (high_tpt != -1) {
    if (high_tpt > current_tpt && sr > 6399) {
      scale_action = 1;
    } else {
      scale_action = 0;
    }
  } else
  if (low_tpt != -1) {
    if (low_tpt > current_tpt) {
      tmp___17 = il_get_debug_level(il);
      if ((tmp___17 & 1048576U) != 0U) {
        tmp___16 = preempt_count();
        dev_err((struct device const *)(& ((il->hw)->wiphy)->dev), "%c %s decrease rate because of low tpt\n",
                ((unsigned long )tmp___16 & 2096896UL) != 0UL ? 73 : 85, "il4965_rs_rate_scale_perform");
      } else {
      }
      scale_action = -1;
    } else
    if (sr > 6399) {
      scale_action = 1;
    } else {
    }
  } else {
  }
  if (((int )scale_action == -1 && low != 13) && (sr > 10880 || *(tbl->expected_tpt + (unsigned long )low) * 100 < current_tpt)) {
    scale_action = 0;
  } else {
  }
  switch ((int )scale_action) {
  case -1: ;
  if (low != 13) {
    update_lq = 1U;
    idx = low;
  } else {
  }
  goto ldv_54733;
  case 1: ;
  if (high != 13) {
    update_lq = 1U;
    idx = high;
  } else {
  }
  goto ldv_54733;
  case 0: ;
  default: ;
  goto ldv_54733;
  }
  ldv_54733:
  tmp___19 = il_get_debug_level(il);
  if ((tmp___19 & 1048576U) != 0U) {
    tmp___18 = preempt_count();
    dev_err((struct device const *)(& ((il->hw)->wiphy)->dev), "%c %s choose rate scale idx %d action %d low %d high %d type %d\n",
            ((unsigned long )tmp___18 & 2096896UL) != 0UL ? 73 : 85, "il4965_rs_rate_scale_perform",
            idx, (int )scale_action, low, high, (unsigned int )tbl->lq_type);
  } else {
  }
  lq_update: ;
  if ((unsigned int )update_lq != 0U) {
    il4965_rs_update_rate_tbl(il, lq_sta, tbl, idx, (int )is_green);
  } else {
  }
  il4965_rs_stay_in_table(lq_sta, 0);
  if ((((unsigned int )update_lq == 0U && (unsigned int )done_search == 0U) && (unsigned int )lq_sta->stay_in_tbl == 0U) && win->counter != 0) {
    lq_sta->last_tpt = current_tpt;
    if ((unsigned int )tbl->lq_type == 1U || (unsigned int )tbl->lq_type == 2U) {
      il4965_rs_move_legacy_other(il, lq_sta, conf, sta, idx);
    } else
    if ((unsigned int )tbl->lq_type == 3U) {
      il4965_rs_move_siso_to_other(il, lq_sta, conf, sta, idx);
    } else {
      il4965_rs_move_mimo2_to_other(il, lq_sta, conf, sta, idx);
    }
    if ((unsigned int )lq_sta->search_better_tbl != 0U) {
      tbl = (struct il_scale_tbl_info *)(& lq_sta->lq_info) + (unsigned long )(1 - (int )lq_sta->active_tbl);
      i = 0;
      goto ldv_54738;
      ldv_54737:
      il4965_rs_rate_scale_clear_win((struct il_rate_scale_data *)(& tbl->win) + (unsigned long )i);
      i = i + 1;
      ldv_54738: ;
      if (i <= 12) {
        goto ldv_54737;
      } else {
      }
      idx = il4965_hwrate_to_plcp_idx(tbl->current_rate);
      tmp___21 = il_get_debug_level(il);
      if ((tmp___21 & 1048576U) != 0U) {
        tmp___20 = preempt_count();
        dev_err((struct device const *)(& ((il->hw)->wiphy)->dev), "%c %s Switch current  mcs: %X idx: %d\n",
                ((unsigned long )tmp___20 & 2096896UL) != 0UL ? 73 : 85, "il4965_rs_rate_scale_perform",
                tbl->current_rate, idx);
      } else {
      }
      il4965_rs_fill_link_cmd(il, lq_sta, tbl->current_rate);
      il_send_lq_cmd(il, & lq_sta->lq, 2, 0);
    } else {
      done_search = 1U;
    }
  } else {
  }
  if ((unsigned int )done_search != 0U && (unsigned int )lq_sta->stay_in_tbl == 0U) {
    tbl1 = (struct il_scale_tbl_info *)(& lq_sta->lq_info) + (unsigned long )lq_sta->active_tbl;
    if ((unsigned int )tbl1->lq_type == 1U || (unsigned int )tbl1->lq_type == 2U) {
      tmp___24 = conf_is_ht(conf);
      if (tmp___24) {
        tmp___25 = 0;
      } else {
        tmp___25 = 1;
      }
      if (tmp___25) {
        if ((int )lq_sta->action_counter > (int )tbl1->max_search) {
          tmp___23 = il_get_debug_level(il);
          if ((tmp___23 & 1048576U) != 0U) {
            tmp___22 = preempt_count();
            dev_err((struct device const *)(& ((il->hw)->wiphy)->dev), "%c %s LQ: STAY in legacy table\n",
                    ((unsigned long )tmp___22 & 2096896UL) != 0UL ? 73 : 85, "il4965_rs_rate_scale_perform");
          } else {
          }
          il4965_rs_set_stay_in_table(il, 1, lq_sta);
        } else {
        }
      } else {
      }
    } else {
    }
    if ((unsigned int )lq_sta->enable_counter != 0U && (int )lq_sta->action_counter >= (int )tbl1->max_search) {
      if ((lq_sta->last_tpt > 0 && ((int )lq_sta->tx_agg_tid_en >> (int )tid) & 1) && (unsigned int )tid != 9U) {
        tid_data = (struct il_tid_data *)(& il->stations[(int )lq_sta->lq.sta_id].tid) + (unsigned long )tid;
        if ((unsigned int )tid_data->agg.state == 0U) {
          tmp___27 = il_get_debug_level(il);
          if ((tmp___27 & 1048576U) != 0U) {
            tmp___26 = preempt_count();
            dev_err((struct device const *)(& ((il->hw)->wiphy)->dev), "%c %s try to aggregate tid %d\n",
                    ((unsigned long )tmp___26 & 2096896UL) != 0UL ? 73 : 85, "il4965_rs_rate_scale_perform",
                    (int )tid);
          } else {
          }
          il4965_rs_tl_turn_on_agg(il, (int )tid, lq_sta, sta);
        } else {
        }
      } else {
      }
      il4965_rs_set_stay_in_table(il, 0, lq_sta);
    } else {
    }
  } else {
  }
  out:
  tbl->current_rate = il4965_rate_n_flags_from_tbl(il, tbl, idx, (int )is_green);
  i = idx;
  lq_sta->last_txrate_idx = i;
  return;
}
}
static void il4965_rs_initialize_lq(struct il_priv *il , struct ieee80211_conf *conf ,
                                    struct ieee80211_sta *sta , struct il_lq_sta *lq_sta )
{
  struct il_scale_tbl_info *tbl ;
  int rate_idx ;
  int i ;
  u32 rate ;
  u8 use_green ;
  u8 active_tbl ;
  u8 valid_tx_ant ;
  struct il_station_priv *sta_priv ;
  bool tmp ;
  u8 tmp___0 ;
  {
  active_tbl = 0U;
  if ((unsigned long )sta == (unsigned long )((struct ieee80211_sta *)0) || (unsigned long )lq_sta == (unsigned long )((struct il_lq_sta *)0)) {
    return;
  } else {
  }
  tmp = il4965_rs_use_green(il, sta);
  use_green = (u8 )tmp;
  sta_priv = (struct il_station_priv *)(& sta->drv_priv);
  i = lq_sta->last_txrate_idx;
  valid_tx_ant = il->hw_params.valid_tx_ant;
  if ((unsigned int )lq_sta->search_better_tbl == 0U) {
    active_tbl = lq_sta->active_tbl;
  } else {
    active_tbl = 1U - (unsigned int )lq_sta->active_tbl;
  }
  tbl = (struct il_scale_tbl_info *)(& lq_sta->lq_info) + (unsigned long )active_tbl;
  if (i < 0 || i > 12) {
    i = 0;
  } else {
  }
  rate = (u32 )il_rates[i].plcp;
  tbl->ant_type = il4965_first_antenna((int )valid_tx_ant);
  rate = (u32 )((int )tbl->ant_type << 14) | rate;
  if (i >= 0 && i <= 3) {
    rate = rate | 512U;
  } else {
  }
  il4965_rs_get_tbl_info_from_mcs(rate, il->band, tbl, & rate_idx);
  tmp___0 = il4965_rs_is_valid_ant((int )valid_tx_ant, (int )tbl->ant_type);
  if ((unsigned int )tmp___0 == 0U) {
    il4965_rs_toggle_antenna((u32 )valid_tx_ant, & rate, tbl);
  } else {
  }
  rate = il4965_rate_n_flags_from_tbl(il, tbl, rate_idx, (int )use_green);
  tbl->current_rate = rate;
  il4965_rs_set_expected_tpt_table(lq_sta, tbl);
  il4965_rs_fill_link_cmd((struct il_priv *)0, lq_sta, rate);
  il->stations[(int )lq_sta->lq.sta_id].lq = & lq_sta->lq;
  il_send_lq_cmd(il, & lq_sta->lq, 0, 1);
  return;
}
}
static void il4965_rs_get_rate(void *il_r , struct ieee80211_sta *sta , void *il_sta ,
                               struct ieee80211_tx_rate_control *txrc )
{
  struct sk_buff *skb ;
  struct ieee80211_supported_band *sband ;
  struct il_priv *il ;
  struct ieee80211_tx_info *info ;
  struct ieee80211_tx_info *tmp ;
  struct il_lq_sta *lq_sta ;
  int rate_idx ;
  int tmp___0 ;
  u32 tmp___1 ;
  int tmp___2 ;
  u32 tmp___3 ;
  bool tmp___4 ;
  u8 tmp___5 ;
  s8 tmp___6 ;
  {
  skb = txrc->skb;
  sband = txrc->sband;
  il = (struct il_priv *)il_r;
  tmp = IEEE80211_SKB_CB(skb);
  info = tmp;
  lq_sta = (struct il_lq_sta *)il_sta;
  tmp___1 = il_get_debug_level(il);
  if ((tmp___1 & 1048576U) != 0U) {
    tmp___0 = preempt_count();
    dev_err((struct device const *)(& ((il->hw)->wiphy)->dev), "%c %s rate scale calculate new rate for skb\n",
            ((unsigned long )tmp___0 & 2096896UL) != 0UL ? 73 : 85, "il4965_rs_get_rate");
  } else {
  }
  if ((unsigned long )lq_sta != (unsigned long )((struct il_lq_sta *)0)) {
    lq_sta->max_rate_idx = (s8 )txrc->max_rate_idx;
    if ((unsigned int )sband->band == 1U && (int )lq_sta->max_rate_idx != -1) {
      lq_sta->max_rate_idx = (s8 )((unsigned int )((unsigned char )lq_sta->max_rate_idx) + 4U);
    } else {
    }
    if ((int )lq_sta->max_rate_idx < 0 || (int )lq_sta->max_rate_idx > 12) {
      lq_sta->max_rate_idx = -1;
    } else {
    }
  } else {
  }
  if ((unsigned long )lq_sta != (unsigned long )((struct il_lq_sta *)0) && (unsigned long )lq_sta->drv == (unsigned long )((struct il_priv *)0)) {
    tmp___3 = il_get_debug_level(il);
    if ((tmp___3 & 1048576U) != 0U) {
      tmp___2 = preempt_count();
      dev_err((struct device const *)(& ((il->hw)->wiphy)->dev), "%c %s Rate scaling not initialized yet.\n",
              ((unsigned long )tmp___2 & 2096896UL) != 0UL ? 73 : 85, "il4965_rs_get_rate");
    } else {
    }
    il_sta = (void *)0;
  } else {
  }
  tmp___4 = rate_control_send_low(sta, il_sta, txrc);
  if ((int )tmp___4) {
    return;
  } else {
  }
  if ((unsigned long )lq_sta == (unsigned long )((struct il_lq_sta *)0)) {
    return;
  } else {
  }
  rate_idx = lq_sta->last_txrate_idx;
  if ((lq_sta->last_rate_n_flags & 256U) != 0U) {
    rate_idx = rate_idx + -4;
    rate_idx = rate_idx > 0 ? rate_idx + -1 : 0;
    tmp___5 = il4965_rs_extract_rate(lq_sta->last_rate_n_flags);
    if ((unsigned int )tmp___5 > 7U) {
      rate_idx = rate_idx + 8;
    } else {
    }
    info->__annonCompField100.control.__annonCompField98.__annonCompField97.rates[0].flags = 8U;
    if ((lq_sta->last_rate_n_flags & 8192U) != 0U) {
      info->__annonCompField100.control.__annonCompField98.__annonCompField97.rates[0].flags = (unsigned short )((unsigned int )info->__annonCompField100.control.__annonCompField98.__annonCompField97.rates[0].flags | 128U);
    } else {
    }
    if ((lq_sta->last_rate_n_flags & 4096U) != 0U) {
      info->__annonCompField100.control.__annonCompField98.__annonCompField97.rates[0].flags = (unsigned short )((unsigned int )info->__annonCompField100.control.__annonCompField98.__annonCompField97.rates[0].flags | 64U);
    } else {
    }
    if ((lq_sta->last_rate_n_flags & 2048U) != 0U) {
      info->__annonCompField100.control.__annonCompField98.__annonCompField97.rates[0].flags = (unsigned short )((unsigned int )info->__annonCompField100.control.__annonCompField98.__annonCompField97.rates[0].flags | 32U);
    } else {
    }
    if ((lq_sta->last_rate_n_flags & 1024U) != 0U) {
      info->__annonCompField100.control.__annonCompField98.__annonCompField97.rates[0].flags = (unsigned short )((unsigned int )info->__annonCompField100.control.__annonCompField98.__annonCompField97.rates[0].flags | 16U);
    } else {
    }
  } else {
    if ((rate_idx < 0 || rate_idx > 11) || ((unsigned int )sband->band == 1U && rate_idx <= 3)) {
      tmp___6 = rate_lowest_index___0(sband, sta);
      rate_idx = (int )tmp___6;
    } else
    if ((unsigned int )sband->band == 1U) {
      rate_idx = rate_idx + -4;
    } else {
    }
    info->__annonCompField100.control.__annonCompField98.__annonCompField97.rates[0].flags = 0U;
  }
  info->__annonCompField100.control.__annonCompField98.__annonCompField97.rates[0].idx = (s8 )rate_idx;
  info->__annonCompField100.control.__annonCompField98.__annonCompField97.rates[0].count = 1U;
  return;
}
}
static void *il4965_rs_alloc_sta(void *il_rate , struct ieee80211_sta *sta , gfp_t gfp )
{
  struct il_station_priv *sta_priv ;
  struct il_priv *il ;
  int tmp ;
  u32 tmp___0 ;
  {
  sta_priv = (struct il_station_priv *)(& sta->drv_priv);
  il = (struct il_priv *)il_rate;
  tmp___0 = il_get_debug_level(il);
  if ((tmp___0 & 1048576U) != 0U) {
    tmp = preempt_count();
    dev_err((struct device const *)(& ((il->hw)->wiphy)->dev), "%c %s create station rate scale win\n",
            ((unsigned long )tmp & 2096896UL) != 0UL ? 73 : 85, "il4965_rs_alloc_sta");
  } else {
  }
  return ((void *)(& sta_priv->lq_sta));
}
}
void il4965_rs_rate_init(struct il_priv *il , struct ieee80211_sta *sta , u8 sta_id )
{
  int i ;
  int j ;
  struct ieee80211_hw *hw ;
  struct ieee80211_conf *conf ;
  struct ieee80211_sta_ht_cap *ht_cap ;
  struct il_station_priv *sta_priv ;
  struct il_lq_sta *lq_sta ;
  struct ieee80211_supported_band *sband ;
  int tmp ;
  u32 tmp___0 ;
  bool tmp___1 ;
  u8 tmp___2 ;
  u8 tmp___3 ;
  s8 tmp___4 ;
  {
  hw = il->hw;
  conf = & (il->hw)->conf;
  ht_cap = & sta->ht_cap;
  sta_priv = (struct il_station_priv *)(& sta->drv_priv);
  lq_sta = & sta_priv->lq_sta;
  sband = (hw->wiphy)->bands[(unsigned int )(conf->chandef.chan)->band];
  lq_sta->lq.sta_id = sta_id;
  j = 0;
  goto ldv_54792;
  ldv_54791:
  i = 0;
  goto ldv_54789;
  ldv_54788:
  il4965_rs_rate_scale_clear_win((struct il_rate_scale_data *)(& lq_sta->lq_info[j].win) + (unsigned long )i);
  i = i + 1;
  ldv_54789: ;
  if (i <= 12) {
    goto ldv_54788;
  } else {
  }
  j = j + 1;
  ldv_54792: ;
  if (j <= 1) {
    goto ldv_54791;
  } else {
  }
  lq_sta->flush_timer = 0ULL;
  lq_sta->supp_rates = sta->supp_rates[(unsigned int )sband->band];
  j = 0;
  goto ldv_54798;
  ldv_54797:
  i = 0;
  goto ldv_54795;
  ldv_54794:
  il4965_rs_rate_scale_clear_win((struct il_rate_scale_data *)(& lq_sta->lq_info[j].win) + (unsigned long )i);
  i = i + 1;
  ldv_54795: ;
  if (i <= 12) {
    goto ldv_54794;
  } else {
  }
  j = j + 1;
  ldv_54798: ;
  if (j <= 1) {
    goto ldv_54797;
  } else {
  }
  tmp___0 = il_get_debug_level(il);
  if ((tmp___0 & 1048576U) != 0U) {
    tmp = preempt_count();
    dev_err((struct device const *)(& ((il->hw)->wiphy)->dev), "%c %s LQ:*** rate scale station global init for station %d ***\n",
            ((unsigned long )tmp & 2096896UL) != 0UL ? 73 : 85, "il4965_rs_rate_init",
            (int )sta_id);
  } else {
  }
  lq_sta->is_dup = 0U;
  lq_sta->max_rate_idx = -1;
  lq_sta->missed_rate_counter = 15U;
  tmp___1 = il4965_rs_use_green(il, sta);
  lq_sta->is_green = (u8 )tmp___1;
  lq_sta->active_legacy_rate = (unsigned int )il->active_rate & 61439U;
  lq_sta->band = il->band;
  lq_sta->active_siso_rate = (int )((u16 )ht_cap->mcs.rx_mask[0]) << 1U;
  lq_sta->active_siso_rate = (u16 )((int )((short )lq_sta->active_siso_rate) | ((int )((short )ht_cap->mcs.rx_mask[0]) & 1));
  lq_sta->active_siso_rate = (unsigned int )lq_sta->active_siso_rate & 65533U;
  lq_sta->active_siso_rate = (int )lq_sta->active_siso_rate << 4U;
  lq_sta->active_mimo2_rate = (int )((u16 )ht_cap->mcs.rx_mask[1]) << 1U;
  lq_sta->active_mimo2_rate = (u16 )((int )((short )lq_sta->active_mimo2_rate) | ((int )((short )ht_cap->mcs.rx_mask[1]) & 1));
  lq_sta->active_mimo2_rate = (unsigned int )lq_sta->active_mimo2_rate & 65533U;
  lq_sta->active_mimo2_rate = (int )lq_sta->active_mimo2_rate << 4U;
  lq_sta->lq.general_params.single_stream_ant_msk = il4965_first_antenna((int )il->hw_params.valid_tx_ant);
  tmp___2 = il4965_first_antenna((int )il->hw_params.valid_tx_ant);
  lq_sta->lq.general_params.dual_stream_ant_msk = (u8 )((int )((signed char )il->hw_params.valid_tx_ant) & ~ ((int )((signed char )tmp___2)));
  if ((unsigned int )lq_sta->lq.general_params.dual_stream_ant_msk == 0U) {
    lq_sta->lq.general_params.dual_stream_ant_msk = 3U;
  } else {
    tmp___3 = il4965_num_of_ant((int )il->hw_params.valid_tx_ant);
    if ((unsigned int )tmp___3 == 2U) {
      lq_sta->lq.general_params.dual_stream_ant_msk = il->hw_params.valid_tx_ant;
    } else {
    }
  }
  lq_sta->tx_agg_tid_en = 255U;
  lq_sta->drv = il;
  tmp___4 = rate_lowest_index___0(sband, sta);
  lq_sta->last_txrate_idx = (int )tmp___4;
  if ((unsigned int )sband->band == 1U) {
    lq_sta->last_txrate_idx = lq_sta->last_txrate_idx + 4;
  } else {
  }
  lq_sta->is_agg = 0U;
  lq_sta->dbg_fixed_rate = 0U;
  il4965_rs_initialize_lq(il, conf, sta, lq_sta);
  return;
}
}
static void il4965_rs_fill_link_cmd(struct il_priv *il , struct il_lq_sta *lq_sta ,
                                    u32 new_rate )
{
  struct il_scale_tbl_info tbl_type ;
  int idx ;
  int rate_idx ;
  int repeat_rate ;
  u8 ant_toggle_cnt ;
  u8 use_ht_possible ;
  u8 valid_tx_ant ;
  struct il_link_quality_cmd *lq_cmd ;
  u8 tmp ;
  u8 tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  {
  idx = 0;
  repeat_rate = 0;
  ant_toggle_cnt = 0U;
  use_ht_possible = 1U;
  valid_tx_ant = 0U;
  lq_cmd = & lq_sta->lq;
  il4965_rs_dbgfs_set_mcs(lq_sta, & new_rate, idx);
  il4965_rs_get_tbl_info_from_mcs(new_rate, lq_sta->band, & tbl_type, & rate_idx);
  if ((unsigned int )tbl_type.lq_type == 1U || (unsigned int )tbl_type.lq_type == 2U) {
    ant_toggle_cnt = 1U;
    repeat_rate = 1;
  } else {
    repeat_rate = 3;
  }
  lq_cmd->general_params.mimo_delimiter = (unsigned int )tbl_type.lq_type == 4U;
  lq_cmd->rs_table[idx].rate_n_flags = new_rate;
  tmp___0 = il4965_num_of_ant((int )tbl_type.ant_type);
  if ((unsigned int )tmp___0 == 1U) {
    lq_cmd->general_params.single_stream_ant_msk = tbl_type.ant_type;
  } else {
    tmp = il4965_num_of_ant((int )tbl_type.ant_type);
    if ((unsigned int )tmp == 2U) {
      lq_cmd->general_params.dual_stream_ant_msk = tbl_type.ant_type;
    } else {
    }
  }
  idx = idx + 1;
  repeat_rate = repeat_rate - 1;
  if ((unsigned long )il != (unsigned long )((struct il_priv *)0)) {
    valid_tx_ant = il->hw_params.valid_tx_ant;
  } else {
  }
  goto ldv_54818;
  ldv_54817: ;
  goto ldv_54815;
  ldv_54814: ;
  if ((unsigned int )tbl_type.lq_type == 1U || (unsigned int )tbl_type.lq_type == 2U) {
    if ((unsigned int )ant_toggle_cnt == 0U) {
      ant_toggle_cnt = (u8 )((int )ant_toggle_cnt + 1);
    } else
    if ((unsigned long )il != (unsigned long )((struct il_priv *)0)) {
      tmp___1 = il4965_rs_toggle_antenna((u32 )valid_tx_ant, & new_rate, & tbl_type);
      if (tmp___1 != 0) {
        ant_toggle_cnt = 1U;
      } else {
      }
    } else {
    }
  } else {
  }
  il4965_rs_dbgfs_set_mcs(lq_sta, & new_rate, idx);
  lq_cmd->rs_table[idx].rate_n_flags = new_rate;
  repeat_rate = repeat_rate - 1;
  idx = idx + 1;
  ldv_54815: ;
  if (repeat_rate > 0 && idx <= 15) {
    goto ldv_54814;
  } else {
  }
  il4965_rs_get_tbl_info_from_mcs(new_rate, lq_sta->band, & tbl_type, & rate_idx);
  if ((unsigned int )tbl_type.lq_type == 4U) {
    lq_cmd->general_params.mimo_delimiter = (u8 )idx;
  } else {
  }
  new_rate = il4965_rs_get_lower_rate(lq_sta, & tbl_type, (int )((u8 )rate_idx), (int )use_ht_possible);
  if ((unsigned int )tbl_type.lq_type == 1U || (unsigned int )tbl_type.lq_type == 2U) {
    if ((unsigned int )ant_toggle_cnt == 0U) {
      ant_toggle_cnt = (u8 )((int )ant_toggle_cnt + 1);
    } else
    if ((unsigned long )il != (unsigned long )((struct il_priv *)0)) {
      tmp___2 = il4965_rs_toggle_antenna((u32 )valid_tx_ant, & new_rate, & tbl_type);
      if (tmp___2 != 0) {
        ant_toggle_cnt = 1U;
      } else {
      }
    } else {
    }
    repeat_rate = 1;
  } else {
    repeat_rate = 3;
  }
  use_ht_possible = 0U;
  il4965_rs_dbgfs_set_mcs(lq_sta, & new_rate, idx);
  lq_cmd->rs_table[idx].rate_n_flags = new_rate;
  idx = idx + 1;
  repeat_rate = repeat_rate - 1;
  ldv_54818: ;
  if (idx <= 15) {
    goto ldv_54817;
  } else {
  }
  lq_cmd->agg_params.agg_frame_cnt_limit = 31U;
  lq_cmd->agg_params.agg_dis_start_th = 3U;
  lq_cmd->agg_params.agg_time_limit = 4000U;
  return;
}
}
static void *il4965_rs_alloc(struct ieee80211_hw *hw , struct dentry *debugfsdir )
{
  {
  return (hw->priv);
}
}
static void il4965_rs_free(void *il_rate )
{
  {
  return;
}
}
static void il4965_rs_free_sta(void *il_r , struct ieee80211_sta *sta , void *il_sta )
{
  struct il_priv *il ;
  int tmp ;
  u32 tmp___0 ;
  int tmp___1 ;
  u32 tmp___2 ;
  {
  il = (struct il_priv *)il_r;
  tmp___0 = il_get_debug_level(il);
  if ((tmp___0 & 1048576U) != 0U) {
    tmp = preempt_count();
    dev_err((struct device const *)(& ((il->hw)->wiphy)->dev), "%c %s enter\n",
            ((unsigned long )tmp & 2096896UL) != 0UL ? 73 : 85, "il4965_rs_free_sta");
  } else {
  }
  tmp___2 = il_get_debug_level(il);
  if ((tmp___2 & 1048576U) != 0U) {
    tmp___1 = preempt_count();
    dev_err((struct device const *)(& ((il->hw)->wiphy)->dev), "%c %s leave\n",
            ((unsigned long )tmp___1 & 2096896UL) != 0UL ? 73 : 85, "il4965_rs_free_sta");
  } else {
  }
  return;
}
}
static void il4965_rs_dbgfs_set_mcs(struct il_lq_sta *lq_sta , u32 *rate_n_flags ,
                                    int idx )
{
  struct il_priv *il ;
  u8 valid_tx_ant ;
  u8 ant_sel_tx ;
  int tmp ;
  u32 tmp___0 ;
  int tmp___1 ;
  u32 tmp___2 ;
  int tmp___3 ;
  u32 tmp___4 ;
  {
  il = lq_sta->drv;
  valid_tx_ant = il->hw_params.valid_tx_ant;
  if (lq_sta->dbg_fixed_rate != 0U) {
    ant_sel_tx = (u8 )((lq_sta->dbg_fixed_rate & 114688U) >> 14);
    if (((int )valid_tx_ant & (int )ant_sel_tx) == (int )ant_sel_tx) {
      *rate_n_flags = lq_sta->dbg_fixed_rate;
      tmp___0 = il_get_debug_level(il);
      if ((tmp___0 & 1048576U) != 0U) {
        tmp = preempt_count();
        dev_err((struct device const *)(& ((il->hw)->wiphy)->dev), "%c %s Fixed rate ON\n",
                ((unsigned long )tmp & 2096896UL) != 0UL ? 73 : 85, "il4965_rs_dbgfs_set_mcs");
      } else {
      }
    } else {
      lq_sta->dbg_fixed_rate = 0U;
      dev_err((struct device const *)(& (il->pci_dev)->dev), "Invalid antenna selection 0x%X, Valid is 0x%X\n",
              (int )ant_sel_tx, (int )valid_tx_ant);
      tmp___2 = il_get_debug_level(il);
      if ((tmp___2 & 1048576U) != 0U) {
        tmp___1 = preempt_count();
        dev_err((struct device const *)(& ((il->hw)->wiphy)->dev), "%c %s Fixed rate OFF\n",
                ((unsigned long )tmp___1 & 2096896UL) != 0UL ? 73 : 85, "il4965_rs_dbgfs_set_mcs");
      } else {
      }
    }
  } else {
    tmp___4 = il_get_debug_level(il);
    if ((tmp___4 & 1048576U) != 0U) {
      tmp___3 = preempt_count();
      dev_err((struct device const *)(& ((il->hw)->wiphy)->dev), "%c %s Fixed rate OFF\n",
              ((unsigned long )tmp___3 & 2096896UL) != 0UL ? 73 : 85, "il4965_rs_dbgfs_set_mcs");
    } else {
    }
  }
  return;
}
}
static ssize_t il4965_rs_sta_dbgfs_scale_table_write(struct file *file , char const *user_buf ,
                                                     size_t count , loff_t *ppos )
{
  struct il_lq_sta *lq_sta ;
  struct il_priv *il ;
  char buf[64U] ;
  size_t buf_size ;
  u32 parsed_rate ;
  size_t _min1 ;
  unsigned long _min2 ;
  unsigned long tmp ;
  int tmp___0 ;
  int tmp___1 ;
  u32 tmp___2 ;
  {
  lq_sta = (struct il_lq_sta *)file->private_data;
  il = lq_sta->drv;
  memset((void *)(& buf), 0, 64UL);
  _min1 = count;
  _min2 = 63UL;
  buf_size = _min1 < _min2 ? _min1 : _min2;
  tmp = copy_from_user((void *)(& buf), (void const *)user_buf, buf_size);
  if (tmp != 0UL) {
    return (-14L);
  } else {
  }
  tmp___0 = sscanf((char const *)(& buf), "%x", & parsed_rate);
  if (tmp___0 == 1) {
    lq_sta->dbg_fixed_rate = parsed_rate;
  } else {
    lq_sta->dbg_fixed_rate = 0U;
  }
  lq_sta->active_legacy_rate = 4095U;
  lq_sta->active_siso_rate = 8144U;
  lq_sta->active_mimo2_rate = 8144U;
  tmp___2 = il_get_debug_level(il);
  if ((tmp___2 & 1048576U) != 0U) {
    tmp___1 = preempt_count();
    dev_err((struct device const *)(& ((il->hw)->wiphy)->dev), "%c %s sta_id %d rate 0x%X\n",
            ((unsigned long )tmp___1 & 2096896UL) != 0UL ? 73 : 85, "il4965_rs_sta_dbgfs_scale_table_write",
            (int )lq_sta->lq.sta_id, lq_sta->dbg_fixed_rate);
  } else {
  }
  if (lq_sta->dbg_fixed_rate != 0U) {
    il4965_rs_fill_link_cmd((struct il_priv *)0, lq_sta, lq_sta->dbg_fixed_rate);
    il_send_lq_cmd(lq_sta->drv, & lq_sta->lq, 2, 0);
  } else {
  }
  return ((ssize_t )count);
}
}
static ssize_t il4965_rs_sta_dbgfs_scale_table_read(struct file *file , char *user_buf ,
                                                    size_t count , loff_t *ppos )
{
  char *buff ;
  int desc ;
  int i ;
  int idx ;
  ssize_t ret ;
  struct il_lq_sta *lq_sta ;
  struct il_priv *il ;
  struct il_scale_tbl_info *tbl ;
  void *tmp ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  int tmp___4 ;
  int tmp___5 ;
  int tmp___6 ;
  int tmp___7 ;
  int tmp___8 ;
  int tmp___9 ;
  int tmp___10 ;
  int tmp___11 ;
  int tmp___12 ;
  int tmp___13 ;
  {
  desc = 0;
  i = 0;
  idx = 0;
  lq_sta = (struct il_lq_sta *)file->private_data;
  tbl = (struct il_scale_tbl_info *)(& lq_sta->lq_info) + (unsigned long )lq_sta->active_tbl;
  il = lq_sta->drv;
  tmp = kmalloc(1024UL, 208U);
  buff = (char *)tmp;
  if ((unsigned long )buff == (unsigned long )((char *)0)) {
    return (-12L);
  } else {
  }
  tmp___0 = sprintf(buff + (unsigned long )desc, "sta_id %d\n", (int )lq_sta->lq.sta_id);
  desc = tmp___0 + desc;
  tmp___1 = sprintf(buff + (unsigned long )desc, "failed=%d success=%d rate=0%X\n",
                    lq_sta->total_failed, lq_sta->total_success, (int )lq_sta->active_legacy_rate);
  desc = tmp___1 + desc;
  tmp___2 = sprintf(buff + (unsigned long )desc, "fixed rate 0x%X\n", lq_sta->dbg_fixed_rate);
  desc = tmp___2 + desc;
  tmp___3 = sprintf(buff + (unsigned long )desc, "valid_tx_ant %s%s%s\n", (int )il->hw_params.valid_tx_ant & 1 ? (char *)"ANT_A," : (char *)"",
                    ((unsigned long )il->hw_params.valid_tx_ant & 2UL) != 0UL ? (char *)"ANT_B," : (char *)"",
                    ((unsigned long )il->hw_params.valid_tx_ant & 4UL) != 0UL ? (char *)"ANT_C" : (char *)"");
  desc = tmp___3 + desc;
  tmp___4 = sprintf(buff + (unsigned long )desc, "lq type %s\n", (unsigned int )tbl->lq_type == 1U || (unsigned int )tbl->lq_type == 2U ? (char *)"legacy" : (char *)"HT");
  desc = tmp___4 + desc;
  if ((unsigned int )tbl->lq_type == 3U || (unsigned int )tbl->lq_type == 4U) {
    tmp___5 = sprintf(buff + (unsigned long )desc, " %s", (unsigned int )tbl->lq_type == 3U ? (char *)"SISO" : (char *)"MIMO2");
    desc = tmp___5 + desc;
    tmp___6 = sprintf(buff + (unsigned long )desc, " %s", (unsigned int )tbl->is_ht40 != 0U ? (char *)"40MHz" : (char *)"20MHz");
    desc = tmp___6 + desc;
    tmp___7 = sprintf(buff + (unsigned long )desc, " %s %s %s\n", (unsigned int )tbl->is_SGI != 0U ? (char *)"SGI" : (char *)"",
                      (unsigned int )lq_sta->is_green != 0U ? (char *)"GF enabled" : (char *)"",
                      (unsigned int )lq_sta->is_agg != 0U ? (char *)"AGG on" : (char *)"");
    desc = tmp___7 + desc;
  } else {
  }
  tmp___8 = sprintf(buff + (unsigned long )desc, "last tx rate=0x%X\n", lq_sta->last_rate_n_flags);
  desc = tmp___8 + desc;
  tmp___9 = sprintf(buff + (unsigned long )desc, "general:flags=0x%X mimo-d=%d s-ant0x%x d-ant=0x%x\n",
                    (int )lq_sta->lq.general_params.flags, (int )lq_sta->lq.general_params.mimo_delimiter,
                    (int )lq_sta->lq.general_params.single_stream_ant_msk, (int )lq_sta->lq.general_params.dual_stream_ant_msk);
  desc = tmp___9 + desc;
  tmp___10 = sprintf(buff + (unsigned long )desc, "agg:time_limit=%d dist_start_th=%d frame_cnt_limit=%d\n",
                     (int )lq_sta->lq.agg_params.agg_time_limit, (int )lq_sta->lq.agg_params.agg_dis_start_th,
                     (int )lq_sta->lq.agg_params.agg_frame_cnt_limit);
  desc = tmp___10 + desc;
  tmp___11 = sprintf(buff + (unsigned long )desc, "Start idx [0]=0x%x [1]=0x%x [2]=0x%x [3]=0x%x\n",
                     (int )lq_sta->lq.general_params.start_rate_idx[0], (int )lq_sta->lq.general_params.start_rate_idx[1],
                     (int )lq_sta->lq.general_params.start_rate_idx[2], (int )lq_sta->lq.general_params.start_rate_idx[3]);
  desc = tmp___11 + desc;
  i = 0;
  goto ldv_54873;
  ldv_54872:
  idx = il4965_hwrate_to_plcp_idx(lq_sta->lq.rs_table[i].rate_n_flags);
  if ((unsigned int )tbl->lq_type == 1U || (unsigned int )tbl->lq_type == 2U) {
    tmp___12 = sprintf(buff + (unsigned long )desc, " rate[%d] 0x%X %smbps\n", i,
                       lq_sta->lq.rs_table[i].rate_n_flags, (char const *)(& il_rate_mcs[idx].mbps));
    desc = tmp___12 + desc;
  } else {
    tmp___13 = sprintf(buff + (unsigned long )desc, " rate[%d] 0x%X %smbps (%s)\n",
                       i, lq_sta->lq.rs_table[i].rate_n_flags, (char const *)(& il_rate_mcs[idx].mbps),
                       (char const *)(& il_rate_mcs[idx].mcs));
    desc = tmp___13 + desc;
  }
  i = i + 1;
  ldv_54873: ;
  if (i <= 15) {
    goto ldv_54872;
  } else {
  }
  ret = simple_read_from_buffer((void *)user_buf, count, ppos, (void const *)buff,
                                (size_t )desc);
  kfree((void const *)buff);
  return (ret);
}
}
static struct file_operations const rs_sta_dbgfs_scale_table_ops =
     {0, & default_llseek, & il4965_rs_sta_dbgfs_scale_table_read, & il4965_rs_sta_dbgfs_scale_table_write,
    0, 0, 0, 0, 0, 0, 0, 0, & simple_open, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    0, 0};
static ssize_t il4965_rs_sta_dbgfs_stats_table_read(struct file *file , char *user_buf ,
                                                    size_t count , loff_t *ppos )
{
  char *buff ;
  int desc ;
  int i ;
  int j ;
  ssize_t ret ;
  struct il_lq_sta *lq_sta ;
  void *tmp ;
  int tmp___0 ;
  int tmp___1 ;
  {
  desc = 0;
  lq_sta = (struct il_lq_sta *)file->private_data;
  tmp = kmalloc(1024UL, 208U);
  buff = (char *)tmp;
  if ((unsigned long )buff == (unsigned long )((char *)0)) {
    return (-12L);
  } else {
  }
  i = 0;
  goto ldv_54892;
  ldv_54891:
  tmp___0 = sprintf(buff + (unsigned long )desc, "%s type=%d SGI=%d HT40=%d DUP=%d GF=%d\nrate=0x%X\n",
                    (int )lq_sta->active_tbl == i ? (char *)"*" : (char *)"x", (unsigned int )lq_sta->lq_info[i].lq_type,
                    (int )lq_sta->lq_info[i].is_SGI, (int )lq_sta->lq_info[i].is_ht40,
                    (int )lq_sta->lq_info[i].is_dup, (int )lq_sta->is_green, lq_sta->lq_info[i].current_rate);
  desc = tmp___0 + desc;
  j = 0;
  goto ldv_54889;
  ldv_54888:
  tmp___1 = sprintf(buff + (unsigned long )desc, "counter=%d success=%d %%=%d\n",
                    lq_sta->lq_info[i].win[j].counter, lq_sta->lq_info[i].win[j].success_counter,
                    lq_sta->lq_info[i].win[j].success_ratio);
  desc = tmp___1 + desc;
  j = j + 1;
  ldv_54889: ;
  if (j <= 12) {
    goto ldv_54888;
  } else {
  }
  i = i + 1;
  ldv_54892: ;
  if (i <= 1) {
    goto ldv_54891;
  } else {
  }
  ret = simple_read_from_buffer((void *)user_buf, count, ppos, (void const *)buff,
                                (size_t )desc);
  kfree((void const *)buff);
  return (ret);
}
}
static struct file_operations const rs_sta_dbgfs_stats_table_ops =
     {0, & default_llseek, & il4965_rs_sta_dbgfs_stats_table_read, 0, 0, 0, 0, 0, 0,
    0, 0, 0, & simple_open, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0};
static ssize_t il4965_rs_sta_dbgfs_rate_scale_data_read(struct file *file , char *user_buf ,
                                                        size_t count , loff_t *ppos )
{
  char buff[120U] ;
  int desc ;
  struct il_lq_sta *lq_sta ;
  struct il_scale_tbl_info *tbl ;
  int tmp ;
  int tmp___0 ;
  ssize_t tmp___1 ;
  {
  desc = 0;
  lq_sta = (struct il_lq_sta *)file->private_data;
  tbl = (struct il_scale_tbl_info *)(& lq_sta->lq_info) + (unsigned long )lq_sta->active_tbl;
  if ((unsigned int )tbl->lq_type == 3U || (unsigned int )tbl->lq_type == 4U) {
    tmp = sprintf((char *)(& buff) + (unsigned long )desc, "Bit Rate= %d Mb/s\n",
                  *(tbl->expected_tpt + (unsigned long )lq_sta->last_txrate_idx));
    desc = tmp + desc;
  } else {
    tmp___0 = sprintf((char *)(& buff) + (unsigned long )desc, "Bit Rate= %d Mb/s\n",
                      (int )((unsigned char )il_rates[lq_sta->last_txrate_idx].ieee) >> 1);
    desc = tmp___0 + desc;
  }
  tmp___1 = simple_read_from_buffer((void *)user_buf, count, ppos, (void const *)(& buff),
                                    (size_t )desc);
  return (tmp___1);
}
}
static struct file_operations const rs_sta_dbgfs_rate_scale_data_ops =
     {0, & default_llseek, & il4965_rs_sta_dbgfs_rate_scale_data_read, 0, 0, 0, 0, 0,
    0, 0, 0, 0, & simple_open, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0};
static void il4965_rs_add_debugfs(void *il , void *il_sta , struct dentry *dir )
{
  struct il_lq_sta *lq_sta ;
  {
  lq_sta = (struct il_lq_sta *)il_sta;
  lq_sta->rs_sta_dbgfs_scale_table_file = debugfs_create_file("rate_scale_table",
                                                              384, dir, (void *)lq_sta,
                                                              & rs_sta_dbgfs_scale_table_ops);
  lq_sta->rs_sta_dbgfs_stats_table_file = debugfs_create_file("rate_stats_table",
                                                              256, dir, (void *)lq_sta,
                                                              & rs_sta_dbgfs_stats_table_ops);
  lq_sta->rs_sta_dbgfs_rate_scale_data_file = debugfs_create_file("rate_scale_data",
                                                                  256, dir, (void *)lq_sta,
                                                                  & rs_sta_dbgfs_rate_scale_data_ops);
  lq_sta->rs_sta_dbgfs_tx_agg_tid_en_file = debugfs_create_u8("tx_agg_tid_enable",
                                                              384, dir, & lq_sta->tx_agg_tid_en);
  return;
}
}
static void il4965_rs_remove_debugfs(void *il , void *il_sta )
{
  struct il_lq_sta *lq_sta ;
  {
  lq_sta = (struct il_lq_sta *)il_sta;
  debugfs_remove(lq_sta->rs_sta_dbgfs_scale_table_file);
  debugfs_remove(lq_sta->rs_sta_dbgfs_stats_table_file);
  debugfs_remove(lq_sta->rs_sta_dbgfs_rate_scale_data_file);
  debugfs_remove(lq_sta->rs_sta_dbgfs_tx_agg_tid_en_file);
  return;
}
}
static void il4965_rs_rate_init_stub(void *il_r , struct ieee80211_supported_band *sband ,
                                     struct cfg80211_chan_def *chandef , struct ieee80211_sta *sta ,
                                     void *il_sta )
{
  {
  return;
}
}
static struct rate_control_ops const rs_4965_ops =
     {"iwl-4965-rs", & il4965_rs_alloc, & il4965_rs_free, & il4965_rs_alloc_sta, & il4965_rs_rate_init_stub,
    0, & il4965_rs_free_sta, 0, & il4965_rs_tx_status, & il4965_rs_get_rate, & il4965_rs_add_debugfs,
    & il4965_rs_remove_debugfs, 0};
int il4965_rate_control_register(void)
{
  int tmp ;
  {
  tmp = ieee80211_rate_control_register(& rs_4965_ops);
  return (tmp);
}
}
void il4965_rate_control_unregister(void)
{
  {
  ieee80211_rate_control_unregister(& rs_4965_ops);
  return;
}
}
extern int ldv_release_14(void) ;
int ldv_retval_4 ;
extern int ldv_release_12(void) ;
int ldv_retval_3 ;
int ldv_retval_2 ;
extern int ldv_release_13(void) ;
void ldv_file_operations_14(void)
{
  void *tmp ;
  void *tmp___0 ;
  {
  tmp = ldv_init_zalloc(1000UL);
  rs_sta_dbgfs_scale_table_ops_group1 = (struct inode *)tmp;
  tmp___0 = ldv_init_zalloc(504UL);
  rs_sta_dbgfs_scale_table_ops_group2 = (struct file *)tmp___0;
  return;
}
}
void ldv_file_operations_12(void)
{
  void *tmp ;
  void *tmp___0 ;
  {
  tmp = ldv_init_zalloc(1000UL);
  rs_sta_dbgfs_rate_scale_data_ops_group1 = (struct inode *)tmp;
  tmp___0 = ldv_init_zalloc(504UL);
  rs_sta_dbgfs_rate_scale_data_ops_group2 = (struct file *)tmp___0;
  return;
}
}
void ldv_initialize_rate_control_ops_11(void)
{
  void *tmp ;
  void *tmp___0 ;
  void *tmp___1 ;
  {
  tmp = ldv_init_zalloc(72UL);
  rs_4965_ops_group0 = (struct ieee80211_supported_band *)tmp;
  tmp___0 = ldv_init_zalloc(216UL);
  rs_4965_ops_group1 = (struct ieee80211_sta *)tmp___0;
  tmp___1 = ldv_init_zalloc(320UL);
  rs_4965_ops_group2 = (struct dentry *)tmp___1;
  return;
}
}
void ldv_file_operations_13(void)
{
  void *tmp ;
  void *tmp___0 ;
  {
  tmp = ldv_init_zalloc(1000UL);
  rs_sta_dbgfs_stats_table_ops_group1 = (struct inode *)tmp;
  tmp___0 = ldv_init_zalloc(504UL);
  rs_sta_dbgfs_stats_table_ops_group2 = (struct file *)tmp___0;
  return;
}
}
void ldv_main_exported_11(void)
{
  void *ldvarg2 ;
  void *tmp ;
  void *ldvarg14 ;
  void *tmp___0 ;
  void *ldvarg4 ;
  void *tmp___1 ;
  struct cfg80211_chan_def *ldvarg17 ;
  void *tmp___2 ;
  struct sk_buff *ldvarg15 ;
  void *tmp___3 ;
  void *ldvarg6 ;
  void *tmp___4 ;
  void *ldvarg16 ;
  void *tmp___5 ;
  void *ldvarg5 ;
  void *tmp___6 ;
  struct ieee80211_hw *ldvarg0 ;
  void *tmp___7 ;
  void *ldvarg9 ;
  void *tmp___8 ;
  void *ldvarg10 ;
  void *tmp___9 ;
  void *ldvarg13 ;
  void *tmp___10 ;
  void *ldvarg1 ;
  void *tmp___11 ;
  struct ieee80211_tx_rate_control *ldvarg8 ;
  void *tmp___12 ;
  gfp_t ldvarg12 ;
  void *ldvarg3 ;
  void *tmp___13 ;
  void *ldvarg7 ;
  void *tmp___14 ;
  void *ldvarg11 ;
  void *tmp___15 ;
  void *ldvarg18 ;
  void *tmp___16 ;
  int tmp___17 ;
  {
  tmp = ldv_init_zalloc(1UL);
  ldvarg2 = tmp;
  tmp___0 = ldv_init_zalloc(1UL);
  ldvarg14 = tmp___0;
  tmp___1 = ldv_init_zalloc(1UL);
  ldvarg4 = tmp___1;
  tmp___2 = ldv_init_zalloc(24UL);
  ldvarg17 = (struct cfg80211_chan_def *)tmp___2;
  tmp___3 = ldv_init_zalloc(232UL);
  ldvarg15 = (struct sk_buff *)tmp___3;
  tmp___4 = ldv_init_zalloc(1UL);
  ldvarg6 = tmp___4;
  tmp___5 = ldv_init_zalloc(1UL);
  ldvarg16 = tmp___5;
  tmp___6 = ldv_init_zalloc(1UL);
  ldvarg5 = tmp___6;
  tmp___7 = ldv_init_zalloc(160UL);
  ldvarg0 = (struct ieee80211_hw *)tmp___7;
  tmp___8 = ldv_init_zalloc(1UL);
  ldvarg9 = tmp___8;
  tmp___9 = ldv_init_zalloc(1UL);
  ldvarg10 = tmp___9;
  tmp___10 = ldv_init_zalloc(1UL);
  ldvarg13 = tmp___10;
  tmp___11 = ldv_init_zalloc(1UL);
  ldvarg1 = tmp___11;
  tmp___12 = ldv_init_zalloc(64UL);
  ldvarg8 = (struct ieee80211_tx_rate_control *)tmp___12;
  tmp___13 = ldv_init_zalloc(1UL);
  ldvarg3 = tmp___13;
  tmp___14 = ldv_init_zalloc(1UL);
  ldvarg7 = tmp___14;
  tmp___15 = ldv_init_zalloc(1UL);
  ldvarg11 = tmp___15;
  tmp___16 = ldv_init_zalloc(1UL);
  ldvarg18 = tmp___16;
  ldv_memset((void *)(& ldvarg12), 0, 4UL);
  tmp___17 = __VERIFIER_nondet_int();
  switch (tmp___17) {
  case 0: ;
  if (ldv_state_variable_11 == 1) {
    il4965_rs_rate_init_stub(ldvarg16, rs_4965_ops_group0, ldvarg17, rs_4965_ops_group1,
                             ldvarg18);
    ldv_state_variable_11 = 1;
  } else {
  }
  goto ldv_54975;
  case 1: ;
  if (ldv_state_variable_11 == 1) {
    il4965_rs_tx_status(ldvarg14, rs_4965_ops_group0, rs_4965_ops_group1, ldvarg13,
                        ldvarg15);
    ldv_state_variable_11 = 1;
  } else {
  }
  goto ldv_54975;
  case 2: ;
  if (ldv_state_variable_11 == 1) {
    il4965_rs_alloc_sta(ldvarg11, rs_4965_ops_group1, ldvarg12);
    ldv_state_variable_11 = 1;
  } else {
  }
  goto ldv_54975;
  case 3: ;
  if (ldv_state_variable_11 == 1) {
    il4965_rs_get_rate(ldvarg9, rs_4965_ops_group1, ldvarg10, ldvarg8);
    ldv_state_variable_11 = 1;
  } else {
  }
  goto ldv_54975;
  case 4: ;
  if (ldv_state_variable_11 == 1) {
    il4965_rs_add_debugfs(ldvarg6, ldvarg7, rs_4965_ops_group2);
    ldv_state_variable_11 = 1;
  } else {
  }
  goto ldv_54975;
  case 5: ;
  if (ldv_state_variable_11 == 1) {
    il4965_rs_remove_debugfs(ldvarg4, ldvarg5);
    ldv_state_variable_11 = 1;
  } else {
  }
  goto ldv_54975;
  case 6: ;
  if (ldv_state_variable_11 == 1) {
    il4965_rs_free(ldvarg3);
    ldv_state_variable_11 = 1;
  } else {
  }
  goto ldv_54975;
  case 7: ;
  if (ldv_state_variable_11 == 1) {
    il4965_rs_free_sta(ldvarg1, rs_4965_ops_group1, ldvarg2);
    ldv_state_variable_11 = 1;
  } else {
  }
  goto ldv_54975;
  case 8: ;
  if (ldv_state_variable_11 == 1) {
    il4965_rs_alloc(ldvarg0, rs_4965_ops_group2);
    ldv_state_variable_11 = 1;
  } else {
  }
  goto ldv_54975;
  default:
  ldv_stop();
  }
  ldv_54975: ;
  return;
}
}
void ldv_main_exported_13(void)
{
  int ldvarg69 ;
  size_t ldvarg72 ;
  loff_t *ldvarg71 ;
  void *tmp ;
  loff_t ldvarg70 ;
  char *ldvarg73 ;
  void *tmp___0 ;
  int tmp___1 ;
  {
  tmp = ldv_init_zalloc(8UL);
  ldvarg71 = (loff_t *)tmp;
  tmp___0 = ldv_init_zalloc(1UL);
  ldvarg73 = (char *)tmp___0;
  ldv_memset((void *)(& ldvarg69), 0, 4UL);
  ldv_memset((void *)(& ldvarg72), 0, 8UL);
  ldv_memset((void *)(& ldvarg70), 0, 8UL);
  tmp___1 = __VERIFIER_nondet_int();
  switch (tmp___1) {
  case 0: ;
  if (ldv_state_variable_13 == 1) {
    ldv_retval_2 = simple_open(rs_sta_dbgfs_stats_table_ops_group1, rs_sta_dbgfs_stats_table_ops_group2);
    if (ldv_retval_2 == 0) {
      ldv_state_variable_13 = 2;
      ref_cnt = ref_cnt + 1;
    } else {
    }
  } else {
  }
  goto ldv_54994;
  case 1: ;
  if (ldv_state_variable_13 == 2) {
    il4965_rs_sta_dbgfs_stats_table_read(rs_sta_dbgfs_stats_table_ops_group2, ldvarg73,
                                         ldvarg72, ldvarg71);
    ldv_state_variable_13 = 2;
  } else {
  }
  goto ldv_54994;
  case 2: ;
  if (ldv_state_variable_13 == 2) {
    default_llseek(rs_sta_dbgfs_stats_table_ops_group2, ldvarg70, ldvarg69);
    ldv_state_variable_13 = 2;
  } else {
  }
  goto ldv_54994;
  case 3: ;
  if (ldv_state_variable_13 == 2) {
    ldv_release_13();
    ldv_state_variable_13 = 1;
    ref_cnt = ref_cnt - 1;
  } else {
  }
  goto ldv_54994;
  default:
  ldv_stop();
  }
  ldv_54994: ;
  return;
}
}
void ldv_main_exported_12(void)
{
  loff_t ldvarg75 ;
  int ldvarg74 ;
  loff_t *ldvarg76 ;
  void *tmp ;
  char *ldvarg78 ;
  void *tmp___0 ;
  size_t ldvarg77 ;
  int tmp___1 ;
  {
  tmp = ldv_init_zalloc(8UL);
  ldvarg76 = (loff_t *)tmp;
  tmp___0 = ldv_init_zalloc(1UL);
  ldvarg78 = (char *)tmp___0;
  ldv_memset((void *)(& ldvarg75), 0, 8UL);
  ldv_memset((void *)(& ldvarg74), 0, 4UL);
  ldv_memset((void *)(& ldvarg77), 0, 8UL);
  tmp___1 = __VERIFIER_nondet_int();
  switch (tmp___1) {
  case 0: ;
  if (ldv_state_variable_12 == 1) {
    ldv_retval_3 = simple_open(rs_sta_dbgfs_rate_scale_data_ops_group1, rs_sta_dbgfs_rate_scale_data_ops_group2);
    if (ldv_retval_3 == 0) {
      ldv_state_variable_12 = 2;
      ref_cnt = ref_cnt + 1;
    } else {
    }
  } else {
  }
  goto ldv_55008;
  case 1: ;
  if (ldv_state_variable_12 == 2) {
    il4965_rs_sta_dbgfs_rate_scale_data_read(rs_sta_dbgfs_rate_scale_data_ops_group2,
                                             ldvarg78, ldvarg77, ldvarg76);
    ldv_state_variable_12 = 2;
  } else {
  }
  goto ldv_55008;
  case 2: ;
  if (ldv_state_variable_12 == 2) {
    default_llseek(rs_sta_dbgfs_rate_scale_data_ops_group2, ldvarg75, ldvarg74);
    ldv_state_variable_12 = 2;
  } else {
  }
  goto ldv_55008;
  case 3: ;
  if (ldv_state_variable_12 == 2) {
    ldv_release_12();
    ldv_state_variable_12 = 1;
    ref_cnt = ref_cnt - 1;
  } else {
  }
  goto ldv_55008;
  default:
  ldv_stop();
  }
  ldv_55008: ;
  return;
}
}
void ldv_main_exported_14(void)
{
  loff_t *ldvarg99 ;
  void *tmp ;
  loff_t *ldvarg96 ;
  void *tmp___0 ;
  size_t ldvarg97 ;
  char *ldvarg98 ;
  void *tmp___1 ;
  size_t ldvarg100 ;
  int ldvarg94 ;
  char *ldvarg101 ;
  void *tmp___2 ;
  loff_t ldvarg95 ;
  int tmp___3 ;
  {
  tmp = ldv_init_zalloc(8UL);
  ldvarg99 = (loff_t *)tmp;
  tmp___0 = ldv_init_zalloc(8UL);
  ldvarg96 = (loff_t *)tmp___0;
  tmp___1 = ldv_init_zalloc(1UL);
  ldvarg98 = (char *)tmp___1;
  tmp___2 = ldv_init_zalloc(1UL);
  ldvarg101 = (char *)tmp___2;
  ldv_memset((void *)(& ldvarg97), 0, 8UL);
  ldv_memset((void *)(& ldvarg100), 0, 8UL);
  ldv_memset((void *)(& ldvarg94), 0, 4UL);
  ldv_memset((void *)(& ldvarg95), 0, 8UL);
  tmp___3 = __VERIFIER_nondet_int();
  switch (tmp___3) {
  case 0: ;
  if (ldv_state_variable_14 == 1) {
    ldv_retval_4 = simple_open(rs_sta_dbgfs_scale_table_ops_group1, rs_sta_dbgfs_scale_table_ops_group2);
    if (ldv_retval_4 == 0) {
      ldv_state_variable_14 = 2;
      ref_cnt = ref_cnt + 1;
    } else {
    }
  } else {
  }
  goto ldv_55025;
  case 1: ;
  if (ldv_state_variable_14 == 1) {
    il4965_rs_sta_dbgfs_scale_table_write(rs_sta_dbgfs_scale_table_ops_group2, (char const *)ldvarg101,
                                          ldvarg100, ldvarg99);
    ldv_state_variable_14 = 1;
  } else {
  }
  if (ldv_state_variable_14 == 2) {
    il4965_rs_sta_dbgfs_scale_table_write(rs_sta_dbgfs_scale_table_ops_group2, (char const *)ldvarg101,
                                          ldvarg100, ldvarg99);
    ldv_state_variable_14 = 2;
  } else {
  }
  goto ldv_55025;
  case 2: ;
  if (ldv_state_variable_14 == 2) {
    il4965_rs_sta_dbgfs_scale_table_read(rs_sta_dbgfs_scale_table_ops_group2, ldvarg98,
                                         ldvarg97, ldvarg96);
    ldv_state_variable_14 = 2;
  } else {
  }
  goto ldv_55025;
  case 3: ;
  if (ldv_state_variable_14 == 2) {
    default_llseek(rs_sta_dbgfs_scale_table_ops_group2, ldvarg95, ldvarg94);
    ldv_state_variable_14 = 2;
  } else {
  }
  goto ldv_55025;
  case 4: ;
  if (ldv_state_variable_14 == 2) {
    ldv_release_14();
    ldv_state_variable_14 = 1;
    ref_cnt = ref_cnt - 1;
  } else {
  }
  goto ldv_55025;
  default:
  ldv_stop();
  }
  ldv_55025: ;
  return;
}
}
bool ldv_queue_work_on_145(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                           struct work_struct *ldv_func_arg3 )
{
  ldv_func_ret_type___2 ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3);
  ldv_func_res = tmp;
  activate_work_7(ldv_func_arg3, 2);
  return (ldv_func_res);
}
}
bool ldv_queue_delayed_work_on_146(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                   struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 )
{
  ldv_func_ret_type___3 ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_delayed_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, ldv_func_arg4);
  ldv_func_res = tmp;
  activate_work_7(& ldv_func_arg3->work, 2);
  return (ldv_func_res);
}
}
bool ldv_queue_work_on_147(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                           struct work_struct *ldv_func_arg3 )
{
  ldv_func_ret_type___4 ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3);
  ldv_func_res = tmp;
  activate_work_7(ldv_func_arg3, 2);
  return (ldv_func_res);
}
}
void ldv_flush_workqueue_148(struct workqueue_struct *ldv_func_arg1 )
{
  {
  flush_workqueue(ldv_func_arg1);
  call_and_disable_all_7(2);
  return;
}
}
bool ldv_queue_delayed_work_on_149(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                   struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 )
{
  ldv_func_ret_type___5 ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_delayed_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, ldv_func_arg4);
  ldv_func_res = tmp;
  activate_work_7(& ldv_func_arg3->work, 2);
  return (ldv_func_res);
}
}
void *ldv_kmem_cache_alloc_155(struct kmem_cache *ldv_func_arg1 , gfp_t flags )
{
  void *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = ldv_undef_ptr();
  return (tmp);
}
}
int ldv_pskb_expand_head_161(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags )
{
  void *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = ldv_undef_ptr();
  return ((int )((long )tmp));
}
}
struct sk_buff *ldv_skb_clone_163(struct sk_buff *ldv_func_arg1 , gfp_t flags )
{
  void *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = ldv_undef_ptr();
  return ((struct sk_buff *)tmp);
}
}
struct sk_buff *ldv_skb_copy_165(struct sk_buff const *ldv_func_arg1 , gfp_t flags )
{
  void *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = ldv_undef_ptr();
  return ((struct sk_buff *)tmp);
}
}
struct sk_buff *ldv___netdev_alloc_skb_166(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags )
{
  void *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = ldv_undef_ptr();
  return ((struct sk_buff *)tmp);
}
}
struct sk_buff *ldv___netdev_alloc_skb_167(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags )
{
  void *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = ldv_undef_ptr();
  return ((struct sk_buff *)tmp);
}
}
struct sk_buff *ldv___netdev_alloc_skb_168(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags )
{
  void *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = ldv_undef_ptr();
  return ((struct sk_buff *)tmp);
}
}
int ldv_pskb_expand_head_169(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags )
{
  void *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = ldv_undef_ptr();
  return ((int )((long )tmp));
}
}
int ldv_pskb_expand_head_170(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags )
{
  void *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = ldv_undef_ptr();
  return ((int )((long )tmp));
}
}
struct sk_buff *ldv_skb_clone_171(struct sk_buff *ldv_func_arg1 , gfp_t flags )
{
  void *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = ldv_undef_ptr();
  return ((struct sk_buff *)tmp);
}
}
__inline static void spin_unlock_irqrestore(spinlock_t *lock , unsigned long flags ) ;
bool ldv_queue_work_on_191(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                           struct work_struct *ldv_func_arg3 ) ;
bool ldv_queue_work_on_193(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                           struct work_struct *ldv_func_arg3 ) ;
bool ldv_queue_delayed_work_on_192(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                   struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 ) ;
bool ldv_queue_delayed_work_on_195(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                   struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 ) ;
void ldv_flush_workqueue_194(struct workqueue_struct *ldv_func_arg1 ) ;
void *ldv_kmem_cache_alloc_201(struct kmem_cache *ldv_func_arg1 , gfp_t flags ) ;
struct sk_buff *ldv_skb_clone_209(struct sk_buff *ldv_func_arg1 , gfp_t flags ) ;
struct sk_buff *ldv_skb_clone_217(struct sk_buff *ldv_func_arg1 , gfp_t flags ) ;
struct sk_buff *ldv_skb_copy_211(struct sk_buff const *ldv_func_arg1 , gfp_t flags ) ;
int ldv_pskb_expand_head_207(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags ) ;
int ldv_pskb_expand_head_215(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags ) ;
int ldv_pskb_expand_head_216(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags ) ;
struct sk_buff *ldv___netdev_alloc_skb_212(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags ) ;
struct sk_buff *ldv___netdev_alloc_skb_213(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags ) ;
struct sk_buff *ldv___netdev_alloc_skb_214(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags ) ;
static int il4965_sens_energy_cck(struct il_priv *il , u32 norm_fa , u32 rx_enable_time ,
                                  struct stats_general_data *rx_info )
{
  u32 max_nrg_cck ;
  int i ;
  u8 max_silence_rssi ;
  u32 silence_ref ;
  u8 silence_rssi_a ;
  u8 silence_rssi_b ;
  u8 silence_rssi_c ;
  u32 val ;
  u32 false_alarms ;
  u32 max_false_alarms ;
  u32 min_false_alarms ;
  struct il_sensitivity_data *data ;
  struct il_sensitivity_ranges const *ranges ;
  u8 _max1 ;
  u8 _max2 ;
  u8 _max1___0 ;
  unsigned char _max2___0 ;
  u32 _max1___1 ;
  u32 _max2___1 ;
  int tmp ;
  u32 tmp___0 ;
  u32 _min1 ;
  u32 _min2 ;
  u32 _min1___0 ;
  u32 _min2___0 ;
  u32 _max1___2 ;
  u32 _max2___2 ;
  int tmp___1 ;
  u32 tmp___2 ;
  int tmp___3 ;
  u32 tmp___4 ;
  int tmp___5 ;
  u32 tmp___6 ;
  int tmp___7 ;
  u32 tmp___8 ;
  int tmp___9 ;
  u32 tmp___10 ;
  int tmp___11 ;
  u32 tmp___12 ;
  unsigned int _min1___1 ;
  u32 _min2___1 ;
  int tmp___13 ;
  u32 tmp___14 ;
  int tmp___15 ;
  u32 tmp___16 ;
  int tmp___17 ;
  u32 tmp___18 ;
  u32 _max1___3 ;
  u32 _max2___3 ;
  int tmp___19 ;
  u32 tmp___20 ;
  unsigned int _min1___2 ;
  u32 _min2___2 ;
  unsigned int _min1___3 ;
  u32 _min2___3 ;
  unsigned int _max1___4 ;
  u32 _max2___4 ;
  unsigned int _max1___5 ;
  u32 _max2___5 ;
  {
  max_nrg_cck = 0U;
  i = 0;
  max_silence_rssi = 0U;
  silence_ref = 0U;
  silence_rssi_a = 0U;
  silence_rssi_b = 0U;
  silence_rssi_c = 0U;
  false_alarms = norm_fa * 204800U;
  max_false_alarms = rx_enable_time * 50U;
  min_false_alarms = rx_enable_time * 5U;
  data = (struct il_sensitivity_data *)0;
  ranges = il->hw_params.sens;
  data = & il->sensitivity_data;
  data->nrg_auto_corr_silence_diff = 0;
  silence_rssi_a = (unsigned char )((rx_info->beacon_silence_rssi_a & 65280U) >> 8);
  silence_rssi_b = (unsigned char )((rx_info->beacon_silence_rssi_b & 65280U) >> 8);
  silence_rssi_c = (unsigned char )((rx_info->beacon_silence_rssi_c & 65280U) >> 8);
  _max1 = silence_rssi_b;
  _max2 = silence_rssi_c;
  val = (u32 )((int )_max1 > (int )_max2 ? _max1 : _max2);
  _max1___0 = silence_rssi_a;
  _max2___0 = (unsigned char )val;
  max_silence_rssi = (u8 )((int )_max1___0 > (int )_max2___0 ? (int )_max1___0 : (int )_max2___0);
  data->nrg_silence_rssi[data->nrg_silence_idx] = max_silence_rssi;
  data->nrg_silence_idx = data->nrg_silence_idx + 1U;
  if (data->nrg_silence_idx > 19U) {
    data->nrg_silence_idx = 0U;
  } else {
  }
  i = 0;
  goto ldv_54186;
  ldv_54185:
  val = (u32 )data->nrg_silence_rssi[i];
  _max1___1 = silence_ref;
  _max2___1 = val;
  silence_ref = _max1___1 > _max2___1 ? _max1___1 : _max2___1;
  i = i + 1;
  ldv_54186: ;
  if (i <= 19) {
    goto ldv_54185;
  } else {
  }
  tmp___0 = il_get_debug_level(il);
  if ((tmp___0 & 2097152U) != 0U) {
    tmp = preempt_count();
    dev_err((struct device const *)(& ((il->hw)->wiphy)->dev), "%c %s silence a %u, b %u, c %u, 20-bcn max %u\n",
            ((unsigned long )tmp & 2096896UL) != 0UL ? 73 : 85, "il4965_sens_energy_cck",
            (int )silence_rssi_a, (int )silence_rssi_b, (int )silence_rssi_c, silence_ref);
  } else {
  }
  i = (int )data->nrg_energy_idx;
  _min1 = rx_info->beacon_energy_b;
  _min2 = rx_info->beacon_energy_c;
  val = _min1 < _min2 ? _min1 : _min2;
  _min1___0 = rx_info->beacon_energy_a;
  _min2___0 = val;
  data->nrg_value[i] = _min1___0 < _min2___0 ? _min1___0 : _min2___0;
  data->nrg_energy_idx = data->nrg_energy_idx + 1U;
  if (data->nrg_energy_idx > 9U) {
    data->nrg_energy_idx = 0U;
  } else {
  }
  max_nrg_cck = data->nrg_value[0];
  i = 1;
  goto ldv_54199;
  ldv_54198:
  _max1___2 = max_nrg_cck;
  _max2___2 = data->nrg_value[i];
  max_nrg_cck = _max1___2 > _max2___2 ? _max1___2 : _max2___2;
  i = i + 1;
  ldv_54199: ;
  if (i <= 9) {
    goto ldv_54198;
  } else {
  }
  max_nrg_cck = max_nrg_cck + 6U;
  tmp___2 = il_get_debug_level(il);
  if ((tmp___2 & 2097152U) != 0U) {
    tmp___1 = preempt_count();
    dev_err((struct device const *)(& ((il->hw)->wiphy)->dev), "%c %s rx energy a %u, b %u, c %u, 10-bcn max/min %u\n",
            ((unsigned long )tmp___1 & 2096896UL) != 0UL ? 73 : 85, "il4965_sens_energy_cck",
            rx_info->beacon_energy_a, rx_info->beacon_energy_b, rx_info->beacon_energy_c,
            max_nrg_cck - 6U);
  } else {
  }
  if (false_alarms < min_false_alarms) {
    data->num_in_cck_no_fa = data->num_in_cck_no_fa + 1U;
  } else {
    data->num_in_cck_no_fa = 0U;
  }
  tmp___4 = il_get_debug_level(il);
  if ((tmp___4 & 2097152U) != 0U) {
    tmp___3 = preempt_count();
    dev_err((struct device const *)(& ((il->hw)->wiphy)->dev), "%c %s consecutive bcns with few false alarms = %u\n",
            ((unsigned long )tmp___3 & 2096896UL) != 0UL ? 73 : 85, "il4965_sens_energy_cck",
            data->num_in_cck_no_fa);
  } else {
  }
  if (false_alarms > max_false_alarms && data->auto_corr_cck > 160U) {
    tmp___6 = il_get_debug_level(il);
    if ((tmp___6 & 2097152U) != 0U) {
      tmp___5 = preempt_count();
      dev_err((struct device const *)(& ((il->hw)->wiphy)->dev), "%c %s norm FA %u > max FA %u\n",
              ((unsigned long )tmp___5 & 2096896UL) != 0UL ? 73 : 85, "il4965_sens_energy_cck",
              false_alarms, max_false_alarms);
    } else {
    }
    tmp___8 = il_get_debug_level(il);
    if ((tmp___8 & 2097152U) != 0U) {
      tmp___7 = preempt_count();
      dev_err((struct device const *)(& ((il->hw)->wiphy)->dev), "%c %s ... reducing sensitivity\n",
              ((unsigned long )tmp___7 & 2096896UL) != 0UL ? 73 : 85, "il4965_sens_energy_cck");
    } else {
    }
    data->nrg_curr_state = 0U;
    data->nrg_silence_ref = silence_ref;
    data->nrg_th_cck = data->nrg_th_cck - 2U;
  } else
  if (false_alarms < min_false_alarms) {
    data->nrg_curr_state = 1U;
    data->nrg_auto_corr_silence_diff = (int )data->nrg_silence_ref - (int )silence_ref;
    tmp___10 = il_get_debug_level(il);
    if ((tmp___10 & 2097152U) != 0U) {
      tmp___9 = preempt_count();
      dev_err((struct device const *)(& ((il->hw)->wiphy)->dev), "%c %s norm FA %u < min FA %u, silence diff %d\n",
              ((unsigned long )tmp___9 & 2096896UL) != 0UL ? 73 : 85, "il4965_sens_energy_cck",
              false_alarms, min_false_alarms, data->nrg_auto_corr_silence_diff);
    } else {
    }
    if (data->nrg_prev_state != 0U && (data->nrg_auto_corr_silence_diff > 2 || data->num_in_cck_no_fa > 100U)) {
      tmp___12 = il_get_debug_level(il);
      if ((tmp___12 & 2097152U) != 0U) {
        tmp___11 = preempt_count();
        dev_err((struct device const *)(& ((il->hw)->wiphy)->dev), "%c %s ... increasing sensitivity\n",
                ((unsigned long )tmp___11 & 2096896UL) != 0UL ? 73 : 85, "il4965_sens_energy_cck");
      } else {
      }
      val = data->nrg_th_cck + 2U;
      _min1___1 = (unsigned int )ranges->min_nrg_cck;
      _min2___1 = val;
      data->nrg_th_cck = _min1___1 < _min2___1 ? _min1___1 : _min2___1;
    } else {
      tmp___14 = il_get_debug_level(il);
      if ((tmp___14 & 2097152U) != 0U) {
        tmp___13 = preempt_count();
        dev_err((struct device const *)(& ((il->hw)->wiphy)->dev), "%c %s ... but not changing sensitivity\n",
                ((unsigned long )tmp___13 & 2096896UL) != 0UL ? 73 : 85, "il4965_sens_energy_cck");
      } else {
      }
    }
  } else {
    tmp___16 = il_get_debug_level(il);
    if ((tmp___16 & 2097152U) != 0U) {
      tmp___15 = preempt_count();
      dev_err((struct device const *)(& ((il->hw)->wiphy)->dev), "%c %s  FA in safe zone\n",
              ((unsigned long )tmp___15 & 2096896UL) != 0UL ? 73 : 85, "il4965_sens_energy_cck");
    } else {
    }
    data->nrg_curr_state = 2U;
    data->nrg_silence_ref = silence_ref;
    if (data->nrg_prev_state == 0U) {
      tmp___18 = il_get_debug_level(il);
      if ((tmp___18 & 2097152U) != 0U) {
        tmp___17 = preempt_count();
        dev_err((struct device const *)(& ((il->hw)->wiphy)->dev), "%c %s ... increasing margin\n",
                ((unsigned long )tmp___17 & 2096896UL) != 0UL ? 73 : 85, "il4965_sens_energy_cck");
      } else {
      }
      if (data->nrg_th_cck > max_nrg_cck + 8U) {
        data->nrg_th_cck = data->nrg_th_cck - 8U;
      } else {
        data->nrg_th_cck = max_nrg_cck;
      }
    } else {
    }
  }
  _max1___3 = max_nrg_cck;
  _max2___3 = data->nrg_th_cck;
  data->nrg_th_cck = _max1___3 > _max2___3 ? _max1___3 : _max2___3;
  tmp___20 = il_get_debug_level(il);
  if ((tmp___20 & 2097152U) != 0U) {
    tmp___19 = preempt_count();
    dev_err((struct device const *)(& ((il->hw)->wiphy)->dev), "%c %s new nrg_th_cck %u\n",
            ((unsigned long )tmp___19 & 2096896UL) != 0UL ? 73 : 85, "il4965_sens_energy_cck",
            data->nrg_th_cck);
  } else {
  }
  data->nrg_prev_state = data->nrg_curr_state;
  if (false_alarms > min_false_alarms) {
    if (data->auto_corr_cck <= 159U) {
      data->auto_corr_cck = 161U;
    } else {
      val = data->auto_corr_cck + 3U;
      _min1___2 = (unsigned int )ranges->auto_corr_max_cck;
      _min2___2 = val;
      data->auto_corr_cck = _min1___2 < _min2___2 ? _min1___2 : _min2___2;
    }
    val = data->auto_corr_cck_mrc + 3U;
    _min1___3 = (unsigned int )ranges->auto_corr_max_cck_mrc;
    _min2___3 = val;
    data->auto_corr_cck_mrc = _min1___3 < _min2___3 ? _min1___3 : _min2___3;
  } else
  if (false_alarms < min_false_alarms && (data->nrg_auto_corr_silence_diff > 2 || data->num_in_cck_no_fa > 100U)) {
    val = data->auto_corr_cck - 3U;
    _max1___4 = (unsigned int )ranges->auto_corr_min_cck;
    _max2___4 = val;
    data->auto_corr_cck = _max1___4 > _max2___4 ? _max1___4 : _max2___4;
    val = data->auto_corr_cck_mrc - 3U;
    _max1___5 = (unsigned int )ranges->auto_corr_min_cck_mrc;
    _max2___5 = val;
    data->auto_corr_cck_mrc = _max1___5 > _max2___5 ? _max1___5 : _max2___5;
  } else {
  }
  return (0);
}
}
static int il4965_sens_auto_corr_ofdm(struct il_priv *il , u32 norm_fa , u32 rx_enable_time )
{
  u32 val ;
  u32 false_alarms ;
  u32 max_false_alarms ;
  u32 min_false_alarms ;
  struct il_sensitivity_data *data ;
  struct il_sensitivity_ranges const *ranges ;
  int tmp ;
  u32 tmp___0 ;
  unsigned int _min1 ;
  u32 _min2 ;
  unsigned int _min1___0 ;
  u32 _min2___0 ;
  unsigned int _min1___1 ;
  u32 _min2___1 ;
  unsigned int _min1___2 ;
  u32 _min2___2 ;
  int tmp___1 ;
  u32 tmp___2 ;
  unsigned int _max1 ;
  u32 _max2 ;
  unsigned int _max1___0 ;
  u32 _max2___0 ;
  unsigned int _max1___1 ;
  u32 _max2___1 ;
  unsigned int _max1___2 ;
  u32 _max2___2 ;
  int tmp___3 ;
  u32 tmp___4 ;
  {
  false_alarms = norm_fa * 204800U;
  max_false_alarms = rx_enable_time * 50U;
  min_false_alarms = rx_enable_time * 5U;
  data = (struct il_sensitivity_data *)0;
  ranges = il->hw_params.sens;
  data = & il->sensitivity_data;
  if (false_alarms > max_false_alarms) {
    tmp___0 = il_get_debug_level(il);
    if ((tmp___0 & 2097152U) != 0U) {
      tmp = preempt_count();
      dev_err((struct device const *)(& ((il->hw)->wiphy)->dev), "%c %s norm FA %u > max FA %u)\n",
              ((unsigned long )tmp & 2096896UL) != 0UL ? 73 : 85, "il4965_sens_auto_corr_ofdm",
              false_alarms, max_false_alarms);
    } else {
    }
    val = data->auto_corr_ofdm + 1U;
    _min1 = (unsigned int )ranges->auto_corr_max_ofdm;
    _min2 = val;
    data->auto_corr_ofdm = _min1 < _min2 ? _min1 : _min2;
    val = data->auto_corr_ofdm_mrc + 1U;
    _min1___0 = (unsigned int )ranges->auto_corr_max_ofdm_mrc;
    _min2___0 = val;
    data->auto_corr_ofdm_mrc = _min1___0 < _min2___0 ? _min1___0 : _min2___0;
    val = data->auto_corr_ofdm_x1 + 1U;
    _min1___1 = (unsigned int )ranges->auto_corr_max_ofdm_x1;
    _min2___1 = val;
    data->auto_corr_ofdm_x1 = _min1___1 < _min2___1 ? _min1___1 : _min2___1;
    val = data->auto_corr_ofdm_mrc_x1 + 1U;
    _min1___2 = (unsigned int )ranges->auto_corr_max_ofdm_mrc_x1;
    _min2___2 = val;
    data->auto_corr_ofdm_mrc_x1 = _min1___2 < _min2___2 ? _min1___2 : _min2___2;
  } else
  if (false_alarms < min_false_alarms) {
    tmp___2 = il_get_debug_level(il);
    if ((tmp___2 & 2097152U) != 0U) {
      tmp___1 = preempt_count();
      dev_err((struct device const *)(& ((il->hw)->wiphy)->dev), "%c %s norm FA %u < min FA %u\n",
              ((unsigned long )tmp___1 & 2096896UL) != 0UL ? 73 : 85, "il4965_sens_auto_corr_ofdm",
              false_alarms, min_false_alarms);
    } else {
    }
    val = data->auto_corr_ofdm - 1U;
    _max1 = (unsigned int )ranges->auto_corr_min_ofdm;
    _max2 = val;
    data->auto_corr_ofdm = _max1 > _max2 ? _max1 : _max2;
    val = data->auto_corr_ofdm_mrc - 1U;
    _max1___0 = (unsigned int )ranges->auto_corr_min_ofdm_mrc;
    _max2___0 = val;
    data->auto_corr_ofdm_mrc = _max1___0 > _max2___0 ? _max1___0 : _max2___0;
    val = data->auto_corr_ofdm_x1 - 1U;
    _max1___1 = (unsigned int )ranges->auto_corr_min_ofdm_x1;
    _max2___1 = val;
    data->auto_corr_ofdm_x1 = _max1___1 > _max2___1 ? _max1___1 : _max2___1;
    val = data->auto_corr_ofdm_mrc_x1 - 1U;
    _max1___2 = (unsigned int )ranges->auto_corr_min_ofdm_mrc_x1;
    _max2___2 = val;
    data->auto_corr_ofdm_mrc_x1 = _max1___2 > _max2___2 ? _max1___2 : _max2___2;
  } else {
    tmp___4 = il_get_debug_level(il);
    if ((tmp___4 & 2097152U) != 0U) {
      tmp___3 = preempt_count();
      dev_err((struct device const *)(& ((il->hw)->wiphy)->dev), "%c %s min FA %u < norm FA %u < max FA %u OK\n",
              ((unsigned long )tmp___3 & 2096896UL) != 0UL ? 73 : 85, "il4965_sens_auto_corr_ofdm",
              min_false_alarms, false_alarms, max_false_alarms);
    } else {
    }
  }
  return (0);
}
}
static void il4965_prepare_legacy_sensitivity_tbl(struct il_priv *il , struct il_sensitivity_data *data ,
                                                  __le16 *tbl )
{
  int tmp ;
  u32 tmp___0 ;
  int tmp___1 ;
  u32 tmp___2 ;
  {
  *(tbl + 5UL) = (unsigned short )data->auto_corr_ofdm;
  *(tbl + 6UL) = (unsigned short )data->auto_corr_ofdm_mrc;
  *(tbl + 2UL) = (unsigned short )data->auto_corr_ofdm_x1;
  *(tbl + 3UL) = (unsigned short )data->auto_corr_ofdm_mrc_x1;
  *(tbl + 9UL) = (unsigned short )data->auto_corr_cck;
  *(tbl + 4UL) = (unsigned short )data->auto_corr_cck_mrc;
  *tbl = (unsigned short )data->nrg_th_cck;
  *(tbl + 1UL) = (unsigned short )data->nrg_th_ofdm;
  *(tbl + 7UL) = data->barker_corr_th_min;
  *(tbl + 8UL) = data->barker_corr_th_min_mrc;
  *(tbl + 10UL) = data->nrg_th_cca;
  tmp___0 = il_get_debug_level(il);
  if ((tmp___0 & 2097152U) != 0U) {
    tmp = preempt_count();
    dev_err((struct device const *)(& ((il->hw)->wiphy)->dev), "%c %s ofdm: ac %u mrc %u x1 %u mrc_x1 %u thresh %u\n",
            ((unsigned long )tmp & 2096896UL) != 0UL ? 73 : 85, "il4965_prepare_legacy_sensitivity_tbl",
            data->auto_corr_ofdm, data->auto_corr_ofdm_mrc, data->auto_corr_ofdm_x1,
            data->auto_corr_ofdm_mrc_x1, data->nrg_th_ofdm);
  } else {
  }
  tmp___2 = il_get_debug_level(il);
  if ((tmp___2 & 2097152U) != 0U) {
    tmp___1 = preempt_count();
    dev_err((struct device const *)(& ((il->hw)->wiphy)->dev), "%c %s cck: ac %u mrc %u thresh %u\n",
            ((unsigned long )tmp___1 & 2096896UL) != 0UL ? 73 : 85, "il4965_prepare_legacy_sensitivity_tbl",
            data->auto_corr_cck, data->auto_corr_cck_mrc, data->nrg_th_cck);
  } else {
  }
  return;
}
}
static int il4965_sensitivity_write(struct il_priv *il )
{
  struct il_sensitivity_cmd cmd ;
  struct il_sensitivity_data *data ;
  struct il_host_cmd cmd_out ;
  int tmp ;
  u32 tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  {
  data = (struct il_sensitivity_data *)0;
  cmd_out.data = (void const *)(& cmd);
  cmd_out.reply_page = 0UL;
  cmd_out.callback = 0;
  cmd_out.flags = 2U;
  cmd_out.len = 24U;
  cmd_out.id = 168U;
  data = & il->sensitivity_data;
  memset((void *)(& cmd), 0, 24UL);
  il4965_prepare_legacy_sensitivity_tbl(il, data, (__le16 *)(& cmd.table));
  cmd.control = 1U;
  tmp___1 = memcmp((void const *)(& cmd.table), (void const *)(& il->sensitivity_tbl),
                   22UL);
  if (tmp___1 == 0) {
    tmp___0 = il_get_debug_level(il);
    if ((tmp___0 & 2097152U) != 0U) {
      tmp = preempt_count();
      dev_err((struct device const *)(& ((il->hw)->wiphy)->dev), "%c %s No change in C_SENSITIVITY\n",
              ((unsigned long )tmp & 2096896UL) != 0UL ? 73 : 85, "il4965_sensitivity_write");
    } else {
    }
    return (0);
  } else {
  }
  memcpy((void *)(& il->sensitivity_tbl), (void const *)(& cmd.table), 22UL);
  tmp___2 = il_send_cmd(il, & cmd_out);
  return (tmp___2);
}
}
void il4965_init_sensitivity(struct il_priv *il )
{
  int ret ;
  int i ;
  struct il_sensitivity_data *data ;
  struct il_sensitivity_ranges const *ranges ;
  int tmp ;
  u32 tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  u32 tmp___3 ;
  {
  ret = 0;
  data = (struct il_sensitivity_data *)0;
  ranges = il->hw_params.sens;
  if (il->disable_sens_cal != 0U) {
    return;
  } else {
  }
  tmp___0 = il_get_debug_level(il);
  if ((tmp___0 & 2097152U) != 0U) {
    tmp = preempt_count();
    dev_err((struct device const *)(& ((il->hw)->wiphy)->dev), "%c %s Start il4965_init_sensitivity\n",
            ((unsigned long )tmp & 2096896UL) != 0UL ? 73 : 85, "il4965_init_sensitivity");
  } else {
  }
  data = & il->sensitivity_data;
  if ((unsigned long )ranges == (unsigned long )((struct il_sensitivity_ranges const *)0)) {
    return;
  } else {
  }
  memset((void *)data, 0, 144UL);
  data->num_in_cck_no_fa = 0U;
  data->nrg_curr_state = 0U;
  data->nrg_prev_state = 0U;
  data->nrg_silence_ref = 0U;
  data->nrg_silence_idx = 0U;
  data->nrg_energy_idx = 0U;
  i = 0;
  goto ldv_54277;
  ldv_54276:
  data->nrg_value[i] = 0U;
  i = i + 1;
  ldv_54277: ;
  if (i <= 9) {
    goto ldv_54276;
  } else {
  }
  i = 0;
  goto ldv_54280;
  ldv_54279:
  data->nrg_silence_rssi[i] = 0U;
  i = i + 1;
  ldv_54280: ;
  if (i <= 19) {
    goto ldv_54279;
  } else {
  }
  data->auto_corr_ofdm = (u32 )ranges->auto_corr_min_ofdm;
  data->auto_corr_ofdm_mrc = (u32 )ranges->auto_corr_min_ofdm_mrc;
  data->auto_corr_ofdm_x1 = (u32 )ranges->auto_corr_min_ofdm_x1;
  data->auto_corr_ofdm_mrc_x1 = (u32 )ranges->auto_corr_min_ofdm_mrc_x1;
  data->auto_corr_cck = 125U;
  data->auto_corr_cck_mrc = (u32 )ranges->auto_corr_min_cck_mrc;
  data->nrg_th_cck = (u32 )ranges->nrg_th_cck;
  data->nrg_th_ofdm = (u32 )ranges->nrg_th_ofdm;
  data->barker_corr_th_min = ranges->barker_corr_th_min;
  data->barker_corr_th_min_mrc = ranges->barker_corr_th_min_mrc;
  data->nrg_th_cca = ranges->nrg_th_cca;
  data->last_bad_plcp_cnt_ofdm = 0U;
  data->last_fa_cnt_ofdm = 0U;
  data->last_bad_plcp_cnt_cck = 0U;
  data->last_fa_cnt_cck = 0U;
  tmp___1 = il4965_sensitivity_write(il);
  ret = tmp___1 | ret;
  tmp___3 = il_get_debug_level(il);
  if ((tmp___3 & 2097152U) != 0U) {
    tmp___2 = preempt_count();
    dev_err((struct device const *)(& ((il->hw)->wiphy)->dev), "%c %s <<return 0x%X\n",
            ((unsigned long )tmp___2 & 2096896UL) != 0UL ? 73 : 85, "il4965_init_sensitivity",
            ret);
  } else {
  }
  return;
}
}
void il4965_sensitivity_calibration(struct il_priv *il , void *resp )
{
  u32 rx_enable_time ;
  u32 fa_cck ;
  u32 fa_ofdm ;
  u32 bad_plcp_cck ;
  u32 bad_plcp_ofdm ;
  u32 norm_fa_ofdm ;
  u32 norm_fa_cck ;
  struct il_sensitivity_data *data ;
  struct stats_rx_non_phy *rx_info ;
  struct stats_rx_phy *ofdm ;
  struct stats_rx_phy *cck ;
  unsigned long flags ;
  struct stats_general_data statis ;
  int tmp ;
  u32 tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  u32 tmp___3 ;
  int tmp___4 ;
  u32 tmp___5 ;
  int tmp___6 ;
  u32 tmp___7 ;
  int tmp___8 ;
  u32 tmp___9 ;
  {
  data = (struct il_sensitivity_data *)0;
  if (il->disable_sens_cal != 0U) {
    return;
  } else {
  }
  data = & il->sensitivity_data;
  tmp___1 = il_is_any_associated(il);
  if (tmp___1 == 0) {
    tmp___0 = il_get_debug_level(il);
    if ((tmp___0 & 2097152U) != 0U) {
      tmp = preempt_count();
      dev_err((struct device const *)(& ((il->hw)->wiphy)->dev), "%c %s << - not associated\n",
              ((unsigned long )tmp & 2096896UL) != 0UL ? 73 : 85, "il4965_sensitivity_calibration");
    } else {
    }
    return;
  } else {
  }
  ldv_spin_lock();
  rx_info = & ((struct il_notif_stats *)resp)->rx.general;
  ofdm = & ((struct il_notif_stats *)resp)->rx.ofdm;
  cck = & ((struct il_notif_stats *)resp)->rx.cck;
  if (rx_info->interference_data_flag != 1U) {
    tmp___3 = il_get_debug_level(il);
    if ((tmp___3 & 2097152U) != 0U) {
      tmp___2 = preempt_count();
      dev_err((struct device const *)(& ((il->hw)->wiphy)->dev), "%c %s << invalid data.\n",
              ((unsigned long )tmp___2 & 2096896UL) != 0UL ? 73 : 85, "il4965_sensitivity_calibration");
    } else {
    }
    spin_unlock_irqrestore(& il->lock, flags);
    return;
  } else {
  }
  rx_enable_time = rx_info->channel_load;
  fa_cck = cck->false_alarm_cnt;
  fa_ofdm = ofdm->false_alarm_cnt;
  bad_plcp_cck = cck->plcp_err;
  bad_plcp_ofdm = ofdm->plcp_err;
  statis.beacon_silence_rssi_a = rx_info->beacon_silence_rssi_a;
  statis.beacon_silence_rssi_b = rx_info->beacon_silence_rssi_b;
  statis.beacon_silence_rssi_c = rx_info->beacon_silence_rssi_c;
  statis.beacon_energy_a = rx_info->beacon_energy_a;
  statis.beacon_energy_b = rx_info->beacon_energy_b;
  statis.beacon_energy_c = rx_info->beacon_energy_c;
  spin_unlock_irqrestore(& il->lock, flags);
  tmp___5 = il_get_debug_level(il);
  if ((tmp___5 & 2097152U) != 0U) {
    tmp___4 = preempt_count();
    dev_err((struct device const *)(& ((il->hw)->wiphy)->dev), "%c %s rx_enable_time = %u usecs\n",
            ((unsigned long )tmp___4 & 2096896UL) != 0UL ? 73 : 85, "il4965_sensitivity_calibration",
            rx_enable_time);
  } else {
  }
  if (rx_enable_time == 0U) {
    tmp___7 = il_get_debug_level(il);
    if ((tmp___7 & 2097152U) != 0U) {
      tmp___6 = preempt_count();
      dev_err((struct device const *)(& ((il->hw)->wiphy)->dev), "%c %s << RX Enable Time == 0!\n",
              ((unsigned long )tmp___6 & 2096896UL) != 0UL ? 73 : 85, "il4965_sensitivity_calibration");
    } else {
    }
    return;
  } else {
  }
  if (data->last_bad_plcp_cnt_cck > bad_plcp_cck) {
    data->last_bad_plcp_cnt_cck = bad_plcp_cck;
  } else {
    bad_plcp_cck = bad_plcp_cck - data->last_bad_plcp_cnt_cck;
    data->last_bad_plcp_cnt_cck = data->last_bad_plcp_cnt_cck + bad_plcp_cck;
  }
  if (data->last_bad_plcp_cnt_ofdm > bad_plcp_ofdm) {
    data->last_bad_plcp_cnt_ofdm = bad_plcp_ofdm;
  } else {
    bad_plcp_ofdm = bad_plcp_ofdm - data->last_bad_plcp_cnt_ofdm;
    data->last_bad_plcp_cnt_ofdm = data->last_bad_plcp_cnt_ofdm + bad_plcp_ofdm;
  }
  if (data->last_fa_cnt_ofdm > fa_ofdm) {
    data->last_fa_cnt_ofdm = fa_ofdm;
  } else {
    fa_ofdm = fa_ofdm - data->last_fa_cnt_ofdm;
    data->last_fa_cnt_ofdm = data->last_fa_cnt_ofdm + fa_ofdm;
  }
  if (data->last_fa_cnt_cck > fa_cck) {
    data->last_fa_cnt_cck = fa_cck;
  } else {
    fa_cck = fa_cck - data->last_fa_cnt_cck;
    data->last_fa_cnt_cck = data->last_fa_cnt_cck + fa_cck;
  }
  norm_fa_ofdm = fa_ofdm + bad_plcp_ofdm;
  norm_fa_cck = fa_cck + bad_plcp_cck;
  tmp___9 = il_get_debug_level(il);
  if ((tmp___9 & 2097152U) != 0U) {
    tmp___8 = preempt_count();
    dev_err((struct device const *)(& ((il->hw)->wiphy)->dev), "%c %s cck: fa %u badp %u  ofdm: fa %u badp %u\n",
            ((unsigned long )tmp___8 & 2096896UL) != 0UL ? 73 : 85, "il4965_sensitivity_calibration",
            fa_cck, bad_plcp_cck, fa_ofdm, bad_plcp_ofdm);
  } else {
  }
  il4965_sens_auto_corr_ofdm(il, norm_fa_ofdm, rx_enable_time);
  il4965_sens_energy_cck(il, norm_fa_cck, rx_enable_time, & statis);
  il4965_sensitivity_write(il);
  return;
}
}
__inline static u8 il4965_find_first_chain(u8 mask )
{
  {
  if ((int )mask & 1) {
    return (0U);
  } else {
  }
  if (((unsigned long )mask & 2UL) != 0UL) {
    return (1U);
  } else {
  }
  return (2U);
}
}
static void il4965_find_disconn_antenna(struct il_priv *il , u32 *average_sig , struct il_chain_noise_data *data )
{
  u32 active_chains ;
  u32 max_average_sig ;
  u16 max_average_sig_antenna_i ;
  u8 num_tx_chains ;
  u8 first_chain ;
  u16 i ;
  int tmp ;
  u32 tmp___0 ;
  int tmp___1 ;
  u32 tmp___2 ;
  s32 rssi_delta ;
  int tmp___3 ;
  u32 tmp___4 ;
  u8 ant_msk ;
  int tmp___5 ;
  u32 tmp___6 ;
  int tmp___7 ;
  u32 tmp___8 ;
  int tmp___9 ;
  u32 tmp___10 ;
  {
  active_chains = 0U;
  i = 0U;
  *average_sig = data->chain_signal_a / (u32 )(il->cfg)->chain_noise_num_beacons;
  *(average_sig + 1UL) = data->chain_signal_b / (u32 )(il->cfg)->chain_noise_num_beacons;
  *(average_sig + 2UL) = data->chain_signal_c / (u32 )(il->cfg)->chain_noise_num_beacons;
  if (*average_sig >= *(average_sig + 1UL)) {
    max_average_sig = *average_sig;
    max_average_sig_antenna_i = 0U;
    active_chains = (u32 )(1 << (int )max_average_sig_antenna_i);
  } else {
    max_average_sig = *(average_sig + 1UL);
    max_average_sig_antenna_i = 1U;
    active_chains = (u32 )(1 << (int )max_average_sig_antenna_i);
  }
  if (*(average_sig + 2UL) >= max_average_sig) {
    max_average_sig = *(average_sig + 2UL);
    max_average_sig_antenna_i = 2U;
    active_chains = (u32 )(1 << (int )max_average_sig_antenna_i);
  } else {
  }
  tmp___0 = il_get_debug_level(il);
  if ((tmp___0 & 2097152U) != 0U) {
    tmp = preempt_count();
    dev_err((struct device const *)(& ((il->hw)->wiphy)->dev), "%c %s average_sig: a %d b %d c %d\n",
            ((unsigned long )tmp & 2096896UL) != 0UL ? 73 : 85, "il4965_find_disconn_antenna",
            *average_sig, *(average_sig + 1UL), *(average_sig + 2UL));
  } else {
  }
  tmp___2 = il_get_debug_level(il);
  if ((tmp___2 & 2097152U) != 0U) {
    tmp___1 = preempt_count();
    dev_err((struct device const *)(& ((il->hw)->wiphy)->dev), "%c %s max_average_sig = %d, antenna %d\n",
            ((unsigned long )tmp___1 & 2096896UL) != 0UL ? 73 : 85, "il4965_find_disconn_antenna",
            max_average_sig, (int )max_average_sig_antenna_i);
  } else {
  }
  i = 0U;
  goto ldv_54317;
  ldv_54316: ;
  if ((int )i != (int )max_average_sig_antenna_i) {
    rssi_delta = (s32 )(max_average_sig - *(average_sig + (unsigned long )i));
    if (rssi_delta > 15) {
      data->disconn_array[(int )i] = 1U;
    } else {
      active_chains = (u32 )(1 << (int )i) | active_chains;
    }
    tmp___4 = il_get_debug_level(il);
    if ((tmp___4 & 2097152U) != 0U) {
      tmp___3 = preempt_count();
      dev_err((struct device const *)(& ((il->hw)->wiphy)->dev), "%c %s i = %d  rssiDelta = %d  disconn_array[i] = %d\n",
              ((unsigned long )tmp___3 & 2096896UL) != 0UL ? 73 : 85, "il4965_find_disconn_antenna",
              (int )i, rssi_delta, (int )data->disconn_array[(int )i]);
    } else {
    }
  } else {
  }
  i = (u16 )((int )i + 1);
  ldv_54317: ;
  if ((unsigned int )i <= 2U) {
    goto ldv_54316;
  } else {
  }
  active_chains = (u32 )il->hw_params.valid_rx_ant & active_chains;
  num_tx_chains = 0U;
  i = 0U;
  goto ldv_54323;
  ldv_54322:
  ant_msk = (u8 )(1 << (int )i);
  if ((unsigned int )((int )il->hw_params.valid_tx_ant & (int )ant_msk) == 0U) {
    goto ldv_54320;
  } else {
  }
  num_tx_chains = (u8 )((int )num_tx_chains + 1);
  if ((unsigned int )data->disconn_array[(int )i] == 0U) {
    goto ldv_54321;
  } else {
  }
  if ((int )il->hw_params.tx_chains_num == (int )num_tx_chains && (unsigned int )data->disconn_array[(int )i] != 0U) {
    first_chain = il4965_find_first_chain((int )(il->cfg)->valid_tx_ant);
    data->disconn_array[(int )first_chain] = 0U;
    active_chains = (u32 )(1UL << (int )first_chain) | active_chains;
    tmp___6 = il_get_debug_level(il);
    if ((tmp___6 & 2097152U) != 0U) {
      tmp___5 = preempt_count();
      dev_err((struct device const *)(& ((il->hw)->wiphy)->dev), "%c %s All Tx chains are disconnected- declare %d as connected\n",
              ((unsigned long )tmp___5 & 2096896UL) != 0UL ? 73 : 85, "il4965_find_disconn_antenna",
              (int )first_chain);
    } else {
    }
    goto ldv_54321;
  } else {
  }
  ldv_54320:
  i = (u16 )((int )i + 1);
  ldv_54323: ;
  if ((unsigned int )i <= 2U) {
    goto ldv_54322;
  } else {
  }
  ldv_54321: ;
  if ((u32 )il->hw_params.valid_rx_ant != active_chains && il->chain_noise_data.active_chains != active_chains) {
    tmp___8 = il_get_debug_level(il);
    if ((tmp___8 & 2097152U) != 0U) {
      tmp___7 = preempt_count();
      dev_err((struct device const *)(& ((il->hw)->wiphy)->dev), "%c %s Detected that not all antennas are connected! Connected: %#x, valid: %#x.\n",
              ((unsigned long )tmp___7 & 2096896UL) != 0UL ? 73 : 85, "il4965_find_disconn_antenna",
              active_chains, (int )il->hw_params.valid_rx_ant);
    } else {
    }
  } else {
  }
  data->active_chains = active_chains;
  tmp___10 = il_get_debug_level(il);
  if ((tmp___10 & 2097152U) != 0U) {
    tmp___9 = preempt_count();
    dev_err((struct device const *)(& ((il->hw)->wiphy)->dev), "%c %s active_chains (bitwise) = 0x%x\n",
            ((unsigned long )tmp___9 & 2096896UL) != 0UL ? 73 : 85, "il4965_find_disconn_antenna",
            active_chains);
  } else {
  }
  return;
}
}
static void il4965_gain_computation(struct il_priv *il , u32 *average_noise , u16 min_average_noise_antenna_i ,
                                    u32 min_average_noise , u8 default_chain )
{
  int i ;
  int ret ;
  struct il_chain_noise_data *data ;
  s32 delta_g ;
  u8 _min1 ;
  unsigned char _min2 ;
  int tmp ;
  u32 tmp___0 ;
  struct il_calib_diff_gain_cmd cmd ;
  int tmp___1 ;
  u32 tmp___2 ;
  {
  data = & il->chain_noise_data;
  data->delta_gain_code[(int )min_average_noise_antenna_i] = 0U;
  i = (int )default_chain;
  goto ldv_54339;
  ldv_54338:
  delta_g = 0;
  if ((unsigned int )data->disconn_array[i] == 0U && (unsigned int )data->delta_gain_code[i] == 4U) {
    delta_g = (s32 )(*(average_noise + (unsigned long )i) - min_average_noise);
    data->delta_gain_code[i] = (unsigned char )((delta_g * 10) / 15);
    _min1 = data->delta_gain_code[i];
    _min2 = 3U;
    data->delta_gain_code[i] = (u8 )((int )_min1 < (int )_min2 ? (int )_min1 : (int )_min2);
    data->delta_gain_code[i] = (u8 )((unsigned int )data->delta_gain_code[i] | 4U);
  } else {
    data->delta_gain_code[i] = 0U;
  }
  i = i + 1;
  ldv_54339: ;
  if (i <= 2) {
    goto ldv_54338;
  } else {
  }
  tmp___0 = il_get_debug_level(il);
  if ((tmp___0 & 2097152U) != 0U) {
    tmp = preempt_count();
    dev_err((struct device const *)(& ((il->hw)->wiphy)->dev), "%c %s delta_gain_codes: a %d b %d c %d\n",
            ((unsigned long )tmp & 2096896UL) != 0UL ? 73 : 85, "il4965_gain_computation",
            (int )data->delta_gain_code[0], (int )data->delta_gain_code[1], (int )data->delta_gain_code[2]);
  } else {
  }
  if ((unsigned int )data->radio_write == 0U) {
    data->radio_write = 1U;
    memset((void *)(& cmd), 0, 8UL);
    cmd.hdr.op_code = 7U;
    cmd.diff_gain_a = (s8 )data->delta_gain_code[0];
    cmd.diff_gain_b = (s8 )data->delta_gain_code[1];
    cmd.diff_gain_c = (s8 )data->delta_gain_code[2];
    ret = il_send_cmd_pdu(il, 176, 8, (void const *)(& cmd));
    if (ret != 0) {
      tmp___2 = il_get_debug_level(il);
      if ((tmp___2 & 2097152U) != 0U) {
        tmp___1 = preempt_count();
        dev_err((struct device const *)(& ((il->hw)->wiphy)->dev), "%c %s fail sending cmd C_PHY_CALIBRATION\n",
                ((unsigned long )tmp___1 & 2096896UL) != 0UL ? 73 : 85, "il4965_gain_computation");
      } else {
      }
    } else {
    }
    data->state = 2U;
  } else {
  }
  return;
}
}
void il4965_chain_noise_calibration(struct il_priv *il , void *stat_resp )
{
  struct il_chain_noise_data *data ;
  u32 chain_noise_a ;
  u32 chain_noise_b ;
  u32 chain_noise_c ;
  u32 chain_sig_a ;
  u32 chain_sig_b ;
  u32 chain_sig_c ;
  u32 average_sig[3U] ;
  unsigned int tmp ;
  u32 average_noise[3U] ;
  unsigned int tmp___0 ;
  u32 min_average_noise ;
  u16 min_average_noise_antenna_i ;
  u16 i ;
  u16 rxon_chnum ;
  u16 stat_chnum ;
  u8 rxon_band24 ;
  u8 stat_band24 ;
  unsigned long flags ;
  struct stats_rx_non_phy *rx_info ;
  int tmp___1 ;
  u32 tmp___2 ;
  int tmp___3 ;
  u32 tmp___4 ;
  int tmp___5 ;
  u32 tmp___6 ;
  int tmp___7 ;
  u32 tmp___8 ;
  int tmp___9 ;
  u32 tmp___10 ;
  int tmp___11 ;
  u32 tmp___12 ;
  int tmp___13 ;
  u32 tmp___14 ;
  int tmp___15 ;
  u32 tmp___16 ;
  u8 tmp___17 ;
  {
  data = (struct il_chain_noise_data *)0;
  average_sig[0] = 65535U;
  tmp = 1U;
  while (1) {
    if (tmp >= 3U) {
      break;
    } else {
    }
    average_sig[tmp] = 0U;
    tmp = tmp + 1U;
  }
  average_noise[0] = 65535U;
  tmp___0 = 1U;
  while (1) {
    if (tmp___0 >= 3U) {
      break;
    } else {
    }
    average_noise[tmp___0] = 0U;
    tmp___0 = tmp___0 + 1U;
  }
  min_average_noise = 4294967295U;
  min_average_noise_antenna_i = 65535U;
  i = 0U;
  rxon_chnum = 65535U;
  stat_chnum = 65535U;
  if (il->disable_chain_noise_cal != 0U) {
    return;
  } else {
  }
  data = & il->chain_noise_data;
  if ((unsigned int )data->state != 1U) {
    if ((unsigned int )data->state == 0U) {
      tmp___2 = il_get_debug_level(il);
      if ((tmp___2 & 2097152U) != 0U) {
        tmp___1 = preempt_count();
        dev_err((struct device const *)(& ((il->hw)->wiphy)->dev), "%c %s Wait for noise calib reset\n",
                ((unsigned long )tmp___1 & 2096896UL) != 0UL ? 73 : 85, "il4965_chain_noise_calibration");
      } else {
      }
    } else {
    }
    return;
  } else {
  }
  ldv_spin_lock();
  rx_info = & ((struct il_notif_stats *)stat_resp)->rx.general;
  if (rx_info->interference_data_flag != 1U) {
    tmp___4 = il_get_debug_level(il);
    if ((tmp___4 & 2097152U) != 0U) {
      tmp___3 = preempt_count();
      dev_err((struct device const *)(& ((il->hw)->wiphy)->dev), "%c %s  << Interference data unavailable\n",
              ((unsigned long )tmp___3 & 2096896UL) != 0UL ? 73 : 85, "il4965_chain_noise_calibration");
    } else {
    }
    spin_unlock_irqrestore(& il->lock, flags);
    return;
  } else {
  }
  rxon_band24 = (unsigned int )((u8 )il->staging.flags) & 1U;
  rxon_chnum = il->staging.channel;
  stat_band24 = (((struct il_notif_stats *)stat_resp)->flag & 2U) != 0U;
  stat_chnum = (u16 )(((struct il_notif_stats *)stat_resp)->flag >> 16);
  if ((int )rxon_chnum != (int )stat_chnum || (int )rxon_band24 != (int )stat_band24) {
    tmp___6 = il_get_debug_level(il);
    if ((tmp___6 & 2097152U) != 0U) {
      tmp___5 = preempt_count();
      dev_err((struct device const *)(& ((il->hw)->wiphy)->dev), "%c %s Stats not from chan=%d, band24=%d\n",
              ((unsigned long )tmp___5 & 2096896UL) != 0UL ? 73 : 85, "il4965_chain_noise_calibration",
              (int )rxon_chnum, (int )rxon_band24);
    } else {
    }
    spin_unlock_irqrestore(& il->lock, flags);
    return;
  } else {
  }
  chain_noise_a = rx_info->beacon_silence_rssi_a & 255U;
  chain_noise_b = rx_info->beacon_silence_rssi_b & 255U;
  chain_noise_c = rx_info->beacon_silence_rssi_c & 255U;
  chain_sig_a = rx_info->beacon_rssi_a & 255U;
  chain_sig_b = rx_info->beacon_rssi_b & 255U;
  chain_sig_c = rx_info->beacon_rssi_c & 255U;
  spin_unlock_irqrestore(& il->lock, flags);
  data->beacon_count = (u16 )((int )data->beacon_count + 1);
  data->chain_noise_a = data->chain_noise_a + chain_noise_a;
  data->chain_noise_b = data->chain_noise_b + chain_noise_b;
  data->chain_noise_c = data->chain_noise_c + chain_noise_c;
  data->chain_signal_a = data->chain_signal_a + chain_sig_a;
  data->chain_signal_b = data->chain_signal_b + chain_sig_b;
  data->chain_signal_c = data->chain_signal_c + chain_sig_c;
  tmp___8 = il_get_debug_level(il);
  if ((tmp___8 & 2097152U) != 0U) {
    tmp___7 = preempt_count();
    dev_err((struct device const *)(& ((il->hw)->wiphy)->dev), "%c %s chan=%d, band24=%d, beacon=%d\n",
            ((unsigned long )tmp___7 & 2096896UL) != 0UL ? 73 : 85, "il4965_chain_noise_calibration",
            (int )rxon_chnum, (int )rxon_band24, (int )data->beacon_count);
  } else {
  }
  tmp___10 = il_get_debug_level(il);
  if ((tmp___10 & 2097152U) != 0U) {
    tmp___9 = preempt_count();
    dev_err((struct device const *)(& ((il->hw)->wiphy)->dev), "%c %s chain_sig: a %d b %d c %d\n",
            ((unsigned long )tmp___9 & 2096896UL) != 0UL ? 73 : 85, "il4965_chain_noise_calibration",
            chain_sig_a, chain_sig_b, chain_sig_c);
  } else {
  }
  tmp___12 = il_get_debug_level(il);
  if ((tmp___12 & 2097152U) != 0U) {
    tmp___11 = preempt_count();
    dev_err((struct device const *)(& ((il->hw)->wiphy)->dev), "%c %s chain_noise: a %d b %d c %d\n",
            ((unsigned long )tmp___11 & 2096896UL) != 0UL ? 73 : 85, "il4965_chain_noise_calibration",
            chain_noise_a, chain_noise_b, chain_noise_c);
  } else {
  }
  if ((int )data->beacon_count != (il->cfg)->chain_noise_num_beacons) {
    return;
  } else {
  }
  il4965_find_disconn_antenna(il, (u32 *)(& average_sig), data);
  average_noise[0] = data->chain_noise_a / (u32 )(il->cfg)->chain_noise_num_beacons;
  average_noise[1] = data->chain_noise_b / (u32 )(il->cfg)->chain_noise_num_beacons;
  average_noise[2] = data->chain_noise_c / (u32 )(il->cfg)->chain_noise_num_beacons;
  i = 0U;
  goto ldv_54367;
  ldv_54366: ;
  if ((unsigned int )data->disconn_array[(int )i] == 0U && average_noise[(int )i] <= min_average_noise) {
    min_average_noise = average_noise[(int )i];
    min_average_noise_antenna_i = i;
  } else {
  }
  i = (u16 )((int )i + 1);
  ldv_54367: ;
  if ((unsigned int )i <= 2U) {
    goto ldv_54366;
  } else {
  }
  tmp___14 = il_get_debug_level(il);
  if ((tmp___14 & 2097152U) != 0U) {
    tmp___13 = preempt_count();
    dev_err((struct device const *)(& ((il->hw)->wiphy)->dev), "%c %s average_noise: a %d b %d c %d\n",
            ((unsigned long )tmp___13 & 2096896UL) != 0UL ? 73 : 85, "il4965_chain_noise_calibration",
            average_noise[0], average_noise[1], average_noise[2]);
  } else {
  }
  tmp___16 = il_get_debug_level(il);
  if ((tmp___16 & 2097152U) != 0U) {
    tmp___15 = preempt_count();
    dev_err((struct device const *)(& ((il->hw)->wiphy)->dev), "%c %s min_average_noise = %d, antenna %d\n",
            ((unsigned long )tmp___15 & 2096896UL) != 0UL ? 73 : 85, "il4965_chain_noise_calibration",
            min_average_noise, (int )min_average_noise_antenna_i);
  } else {
  }
  tmp___17 = il4965_find_first_chain((int )(il->cfg)->valid_rx_ant);
  il4965_gain_computation(il, (u32 *)(& average_noise), (int )min_average_noise_antenna_i,
                          min_average_noise, (int )tmp___17);
  if ((unsigned long )(il->ops)->update_chain_flags != (unsigned long )((void (* )(struct il_priv * ))0)) {
    (*((il->ops)->update_chain_flags))(il);
  } else {
  }
  data->state = 3U;
  il_power_update_mode(il, 0);
  return;
}
}
void il4965_reset_run_time_calib(struct il_priv *il )
{
  int i ;
  {
  memset((void *)(& il->sensitivity_data), 0, 144UL);
  memset((void *)(& il->chain_noise_data), 0, 40UL);
  i = 0;
  goto ldv_54374;
  ldv_54373:
  il->chain_noise_data.delta_gain_code[i] = 4U;
  i = i + 1;
  ldv_54374: ;
  if (i <= 2) {
    goto ldv_54373;
  } else {
  }
  il_send_stats_request(il, 2, 1);
  return;
}
}
bool ldv_queue_work_on_191(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                           struct work_struct *ldv_func_arg3 )
{
  ldv_func_ret_type___2 ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3);
  ldv_func_res = tmp;
  activate_work_7(ldv_func_arg3, 2);
  return (ldv_func_res);
}
}
bool ldv_queue_delayed_work_on_192(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                   struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 )
{
  ldv_func_ret_type___3 ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_delayed_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, ldv_func_arg4);
  ldv_func_res = tmp;
  activate_work_7(& ldv_func_arg3->work, 2);
  return (ldv_func_res);
}
}
bool ldv_queue_work_on_193(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                           struct work_struct *ldv_func_arg3 )
{
  ldv_func_ret_type___4 ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3);
  ldv_func_res = tmp;
  activate_work_7(ldv_func_arg3, 2);
  return (ldv_func_res);
}
}
void ldv_flush_workqueue_194(struct workqueue_struct *ldv_func_arg1 )
{
  {
  flush_workqueue(ldv_func_arg1);
  call_and_disable_all_7(2);
  return;
}
}
bool ldv_queue_delayed_work_on_195(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                   struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 )
{
  ldv_func_ret_type___5 ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_delayed_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, ldv_func_arg4);
  ldv_func_res = tmp;
  activate_work_7(& ldv_func_arg3->work, 2);
  return (ldv_func_res);
}
}
void *ldv_kmem_cache_alloc_201(struct kmem_cache *ldv_func_arg1 , gfp_t flags )
{
  void *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = ldv_undef_ptr();
  return (tmp);
}
}
int ldv_pskb_expand_head_207(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags )
{
  void *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = ldv_undef_ptr();
  return ((int )((long )tmp));
}
}
struct sk_buff *ldv_skb_clone_209(struct sk_buff *ldv_func_arg1 , gfp_t flags )
{
  void *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = ldv_undef_ptr();
  return ((struct sk_buff *)tmp);
}
}
struct sk_buff *ldv_skb_copy_211(struct sk_buff const *ldv_func_arg1 , gfp_t flags )
{
  void *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = ldv_undef_ptr();
  return ((struct sk_buff *)tmp);
}
}
struct sk_buff *ldv___netdev_alloc_skb_212(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags )
{
  void *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = ldv_undef_ptr();
  return ((struct sk_buff *)tmp);
}
}
struct sk_buff *ldv___netdev_alloc_skb_213(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags )
{
  void *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = ldv_undef_ptr();
  return ((struct sk_buff *)tmp);
}
}
struct sk_buff *ldv___netdev_alloc_skb_214(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags )
{
  void *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = ldv_undef_ptr();
  return ((struct sk_buff *)tmp);
}
}
int ldv_pskb_expand_head_215(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags )
{
  void *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = ldv_undef_ptr();
  return ((int )((long )tmp));
}
}
int ldv_pskb_expand_head_216(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags )
{
  void *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = ldv_undef_ptr();
  return ((int )((long )tmp));
}
}
struct sk_buff *ldv_skb_clone_217(struct sk_buff *ldv_func_arg1 , gfp_t flags )
{
  void *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = ldv_undef_ptr();
  return ((struct sk_buff *)tmp);
}
}
bool ldv_queue_work_on_237(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                           struct work_struct *ldv_func_arg3 ) ;
bool ldv_queue_work_on_239(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                           struct work_struct *ldv_func_arg3 ) ;
bool ldv_queue_delayed_work_on_238(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                   struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 ) ;
bool ldv_queue_delayed_work_on_241(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                   struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 ) ;
void ldv_flush_workqueue_240(struct workqueue_struct *ldv_func_arg1 ) ;
void *ldv_kmem_cache_alloc_247(struct kmem_cache *ldv_func_arg1 , gfp_t flags ) ;
__inline static void *kmalloc(size_t size , gfp_t flags ) ;
struct sk_buff *ldv_skb_clone_255(struct sk_buff *ldv_func_arg1 , gfp_t flags ) ;
struct sk_buff *ldv_skb_clone_263(struct sk_buff *ldv_func_arg1 , gfp_t flags ) ;
struct sk_buff *ldv_skb_copy_257(struct sk_buff const *ldv_func_arg1 , gfp_t flags ) ;
int ldv_pskb_expand_head_253(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags ) ;
int ldv_pskb_expand_head_261(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags ) ;
int ldv_pskb_expand_head_262(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags ) ;
struct sk_buff *ldv___netdev_alloc_skb_258(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags ) ;
struct sk_buff *ldv___netdev_alloc_skb_259(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags ) ;
struct sk_buff *ldv___netdev_alloc_skb_260(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags ) ;
static char const *fmt_value = "  %-30s %10u\n";
static char const *fmt_table = "  %-30s %10u  %10u  %10u  %10u\n";
static char const *fmt_header = "%-32s    current  cumulative       delta         max\n";
static int il4965_stats_flag(struct il_priv *il , char *buf , int bufsz )
{
  int p ;
  u32 flag ;
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  {
  p = 0;
  flag = il->__annonCompField103._4965.stats.flag;
  tmp = scnprintf(buf + (unsigned long )p, (size_t )(bufsz - p), "Statistics Flag(0x%X):\n",
                  flag);
  p = tmp + p;
  if ((int )flag & 1) {
    tmp___0 = scnprintf(buf + (unsigned long )p, (size_t )(bufsz - p), "\tStatistics have been cleared\n");
    p = tmp___0 + p;
  } else {
  }
  tmp___1 = scnprintf(buf + (unsigned long )p, (size_t )(bufsz - p), "\tOperational Frequency: %s\n",
                      (flag & 2U) != 0U ? (char *)"2.4 GHz" : (char *)"5.2 GHz");
  p = tmp___1 + p;
  tmp___2 = scnprintf(buf + (unsigned long )p, (size_t )(bufsz - p), "\tTGj Narrow Band: %s\n",
                      (flag & 4U) != 0U ? (char *)"enabled" : (char *)"disabled");
  p = tmp___2 + p;
  return (p);
}
}
static ssize_t il4965_ucode_rx_stats_read(struct file *file , char *user_buf , size_t count ,
                                          loff_t *ppos )
{
  struct il_priv *il ;
  int pos ;
  char *buf ;
  int bufsz ;
  ssize_t ret ;
  struct stats_rx_phy *ofdm ;
  struct stats_rx_phy *accum_ofdm ;
  struct stats_rx_phy *delta_ofdm ;
  struct stats_rx_phy *max_ofdm ;
  struct stats_rx_phy *cck ;
  struct stats_rx_phy *accum_cck ;
  struct stats_rx_phy *delta_cck ;
  struct stats_rx_phy *max_cck ;
  struct stats_rx_non_phy *general ;
  struct stats_rx_non_phy *accum_general ;
  struct stats_rx_non_phy *delta_general ;
  struct stats_rx_non_phy *max_general ;
  struct stats_rx_ht_phy *ht ;
  struct stats_rx_ht_phy *accum_ht ;
  struct stats_rx_ht_phy *delta_ht ;
  struct stats_rx_ht_phy *max_ht ;
  int tmp ;
  void *tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  int tmp___4 ;
  int tmp___5 ;
  int tmp___6 ;
  int tmp___7 ;
  int tmp___8 ;
  int tmp___9 ;
  int tmp___10 ;
  int tmp___11 ;
  int tmp___12 ;
  int tmp___13 ;
  int tmp___14 ;
  int tmp___15 ;
  int tmp___16 ;
  int tmp___17 ;
  int tmp___18 ;
  int tmp___19 ;
  int tmp___20 ;
  int tmp___21 ;
  int tmp___22 ;
  int tmp___23 ;
  int tmp___24 ;
  int tmp___25 ;
  int tmp___26 ;
  int tmp___27 ;
  int tmp___28 ;
  int tmp___29 ;
  int tmp___30 ;
  int tmp___31 ;
  int tmp___32 ;
  int tmp___33 ;
  int tmp___34 ;
  int tmp___35 ;
  int tmp___36 ;
  int tmp___37 ;
  int tmp___38 ;
  int tmp___39 ;
  int tmp___40 ;
  int tmp___41 ;
  int tmp___42 ;
  int tmp___43 ;
  int tmp___44 ;
  int tmp___45 ;
  int tmp___46 ;
  int tmp___47 ;
  int tmp___48 ;
  int tmp___49 ;
  int tmp___50 ;
  int tmp___51 ;
  int tmp___52 ;
  int tmp___53 ;
  int tmp___54 ;
  int tmp___55 ;
  int tmp___56 ;
  int tmp___57 ;
  int tmp___58 ;
  int tmp___59 ;
  int tmp___60 ;
  int tmp___61 ;
  int tmp___62 ;
  int tmp___63 ;
  int tmp___64 ;
  int tmp___65 ;
  int tmp___66 ;
  int tmp___67 ;
  int tmp___68 ;
  int tmp___69 ;
  int tmp___70 ;
  int tmp___71 ;
  int tmp___72 ;
  int tmp___73 ;
  int tmp___74 ;
  {
  il = (struct il_priv *)file->private_data;
  pos = 0;
  bufsz = 8560;
  tmp = il_is_alive(il);
  if (tmp == 0) {
    return (-11L);
  } else {
  }
  tmp___0 = kmalloc((size_t )bufsz, 208U);
  buf = (char *)tmp___0;
  if ((unsigned long )buf == (unsigned long )((char *)0)) {
    dev_err((struct device const *)(& (il->pci_dev)->dev), "Can not allocate Buffer\n");
    return (-12L);
  } else {
  }
  ofdm = & il->__annonCompField103._4965.stats.rx.ofdm;
  cck = & il->__annonCompField103._4965.stats.rx.cck;
  general = & il->__annonCompField103._4965.stats.rx.general;
  ht = & il->__annonCompField103._4965.stats.rx.ofdm_ht;
  accum_ofdm = & il->__annonCompField103._4965.accum_stats.rx.ofdm;
  accum_cck = & il->__annonCompField103._4965.accum_stats.rx.cck;
  accum_general = & il->__annonCompField103._4965.accum_stats.rx.general;
  accum_ht = & il->__annonCompField103._4965.accum_stats.rx.ofdm_ht;
  delta_ofdm = & il->__annonCompField103._4965.delta_stats.rx.ofdm;
  delta_cck = & il->__annonCompField103._4965.delta_stats.rx.cck;
  delta_general = & il->__annonCompField103._4965.delta_stats.rx.general;
  delta_ht = & il->__annonCompField103._4965.delta_stats.rx.ofdm_ht;
  max_ofdm = & il->__annonCompField103._4965.max_delta.rx.ofdm;
  max_cck = & il->__annonCompField103._4965.max_delta.rx.cck;
  max_general = & il->__annonCompField103._4965.max_delta.rx.general;
  max_ht = & il->__annonCompField103._4965.max_delta.rx.ofdm_ht;
  tmp___1 = il4965_stats_flag(il, buf, bufsz);
  pos = tmp___1 + pos;
  tmp___2 = scnprintf(buf + (unsigned long )pos, (size_t )(bufsz - pos), fmt_header,
                      (char *)"Statistics_Rx - OFDM:");
  pos = tmp___2 + pos;
  tmp___3 = scnprintf(buf + (unsigned long )pos, (size_t )(bufsz - pos), fmt_table,
                      (char *)"ina_cnt:", ofdm->ina_cnt, accum_ofdm->ina_cnt, delta_ofdm->ina_cnt,
                      max_ofdm->ina_cnt);
  pos = tmp___3 + pos;
  tmp___4 = scnprintf(buf + (unsigned long )pos, (size_t )(bufsz - pos), fmt_table,
                      (char *)"fina_cnt:", ofdm->fina_cnt, accum_ofdm->fina_cnt, delta_ofdm->fina_cnt,
                      max_ofdm->fina_cnt);
  pos = tmp___4 + pos;
  tmp___5 = scnprintf(buf + (unsigned long )pos, (size_t )(bufsz - pos), fmt_table,
                      (char *)"plcp_err:", ofdm->plcp_err, accum_ofdm->plcp_err, delta_ofdm->plcp_err,
                      max_ofdm->plcp_err);
  pos = tmp___5 + pos;
  tmp___6 = scnprintf(buf + (unsigned long )pos, (size_t )(bufsz - pos), fmt_table,
                      (char *)"crc32_err:", ofdm->crc32_err, accum_ofdm->crc32_err,
                      delta_ofdm->crc32_err, max_ofdm->crc32_err);
  pos = tmp___6 + pos;
  tmp___7 = scnprintf(buf + (unsigned long )pos, (size_t )(bufsz - pos), fmt_table,
                      (char *)"overrun_err:", ofdm->overrun_err, accum_ofdm->overrun_err,
                      delta_ofdm->overrun_err, max_ofdm->overrun_err);
  pos = tmp___7 + pos;
  tmp___8 = scnprintf(buf + (unsigned long )pos, (size_t )(bufsz - pos), fmt_table,
                      (char *)"early_overrun_err:", ofdm->early_overrun_err, accum_ofdm->early_overrun_err,
                      delta_ofdm->early_overrun_err, max_ofdm->early_overrun_err);
  pos = tmp___8 + pos;
  tmp___9 = scnprintf(buf + (unsigned long )pos, (size_t )(bufsz - pos), fmt_table,
                      (char *)"crc32_good:", ofdm->crc32_good, accum_ofdm->crc32_good,
                      delta_ofdm->crc32_good, max_ofdm->crc32_good);
  pos = tmp___9 + pos;
  tmp___10 = scnprintf(buf + (unsigned long )pos, (size_t )(bufsz - pos), fmt_table,
                       (char *)"false_alarm_cnt:", ofdm->false_alarm_cnt, accum_ofdm->false_alarm_cnt,
                       delta_ofdm->false_alarm_cnt, max_ofdm->false_alarm_cnt);
  pos = tmp___10 + pos;
  tmp___11 = scnprintf(buf + (unsigned long )pos, (size_t )(bufsz - pos), fmt_table,
                       (char *)"fina_sync_err_cnt:", ofdm->fina_sync_err_cnt, accum_ofdm->fina_sync_err_cnt,
                       delta_ofdm->fina_sync_err_cnt, max_ofdm->fina_sync_err_cnt);
  pos = tmp___11 + pos;
  tmp___12 = scnprintf(buf + (unsigned long )pos, (size_t )(bufsz - pos), fmt_table,
                       (char *)"sfd_timeout:", ofdm->sfd_timeout, accum_ofdm->sfd_timeout,
                       delta_ofdm->sfd_timeout, max_ofdm->sfd_timeout);
  pos = tmp___12 + pos;
  tmp___13 = scnprintf(buf + (unsigned long )pos, (size_t )(bufsz - pos), fmt_table,
                       (char *)"fina_timeout:", ofdm->fina_timeout, accum_ofdm->fina_timeout,
                       delta_ofdm->fina_timeout, max_ofdm->fina_timeout);
  pos = tmp___13 + pos;
  tmp___14 = scnprintf(buf + (unsigned long )pos, (size_t )(bufsz - pos), fmt_table,
                       (char *)"unresponded_rts:", ofdm->unresponded_rts, accum_ofdm->unresponded_rts,
                       delta_ofdm->unresponded_rts, max_ofdm->unresponded_rts);
  pos = tmp___14 + pos;
  tmp___15 = scnprintf(buf + (unsigned long )pos, (size_t )(bufsz - pos), fmt_table,
                       (char *)"rxe_frame_lmt_ovrun:", ofdm->rxe_frame_limit_overrun,
                       accum_ofdm->rxe_frame_limit_overrun, delta_ofdm->rxe_frame_limit_overrun,
                       max_ofdm->rxe_frame_limit_overrun);
  pos = tmp___15 + pos;
  tmp___16 = scnprintf(buf + (unsigned long )pos, (size_t )(bufsz - pos), fmt_table,
                       (char *)"sent_ack_cnt:", ofdm->sent_ack_cnt, accum_ofdm->sent_ack_cnt,
                       delta_ofdm->sent_ack_cnt, max_ofdm->sent_ack_cnt);
  pos = tmp___16 + pos;
  tmp___17 = scnprintf(buf + (unsigned long )pos, (size_t )(bufsz - pos), fmt_table,
                       (char *)"sent_cts_cnt:", ofdm->sent_cts_cnt, accum_ofdm->sent_cts_cnt,
                       delta_ofdm->sent_cts_cnt, max_ofdm->sent_cts_cnt);
  pos = tmp___17 + pos;
  tmp___18 = scnprintf(buf + (unsigned long )pos, (size_t )(bufsz - pos), fmt_table,
                       (char *)"sent_ba_rsp_cnt:", ofdm->sent_ba_rsp_cnt, accum_ofdm->sent_ba_rsp_cnt,
                       delta_ofdm->sent_ba_rsp_cnt, max_ofdm->sent_ba_rsp_cnt);
  pos = tmp___18 + pos;
  tmp___19 = scnprintf(buf + (unsigned long )pos, (size_t )(bufsz - pos), fmt_table,
                       (char *)"dsp_self_kill:", ofdm->dsp_self_kill, accum_ofdm->dsp_self_kill,
                       delta_ofdm->dsp_self_kill, max_ofdm->dsp_self_kill);
  pos = tmp___19 + pos;
  tmp___20 = scnprintf(buf + (unsigned long )pos, (size_t )(bufsz - pos), fmt_table,
                       (char *)"mh_format_err:", ofdm->mh_format_err, accum_ofdm->mh_format_err,
                       delta_ofdm->mh_format_err, max_ofdm->mh_format_err);
  pos = tmp___20 + pos;
  tmp___21 = scnprintf(buf + (unsigned long )pos, (size_t )(bufsz - pos), fmt_table,
                       (char *)"re_acq_main_rssi_sum:", ofdm->re_acq_main_rssi_sum,
                       accum_ofdm->re_acq_main_rssi_sum, delta_ofdm->re_acq_main_rssi_sum,
                       max_ofdm->re_acq_main_rssi_sum);
  pos = tmp___21 + pos;
  tmp___22 = scnprintf(buf + (unsigned long )pos, (size_t )(bufsz - pos), fmt_header,
                       (char *)"Statistics_Rx - CCK:");
  pos = tmp___22 + pos;
  tmp___23 = scnprintf(buf + (unsigned long )pos, (size_t )(bufsz - pos), fmt_table,
                       (char *)"ina_cnt:", cck->ina_cnt, accum_cck->ina_cnt, delta_cck->ina_cnt,
                       max_cck->ina_cnt);
  pos = tmp___23 + pos;
  tmp___24 = scnprintf(buf + (unsigned long )pos, (size_t )(bufsz - pos), fmt_table,
                       (char *)"fina_cnt:", cck->fina_cnt, accum_cck->fina_cnt, delta_cck->fina_cnt,
                       max_cck->fina_cnt);
  pos = tmp___24 + pos;
  tmp___25 = scnprintf(buf + (unsigned long )pos, (size_t )(bufsz - pos), fmt_table,
                       (char *)"plcp_err:", cck->plcp_err, accum_cck->plcp_err, delta_cck->plcp_err,
                       max_cck->plcp_err);
  pos = tmp___25 + pos;
  tmp___26 = scnprintf(buf + (unsigned long )pos, (size_t )(bufsz - pos), fmt_table,
                       (char *)"crc32_err:", cck->crc32_err, accum_cck->crc32_err,
                       delta_cck->crc32_err, max_cck->crc32_err);
  pos = tmp___26 + pos;
  tmp___27 = scnprintf(buf + (unsigned long )pos, (size_t )(bufsz - pos), fmt_table,
                       (char *)"overrun_err:", cck->overrun_err, accum_cck->overrun_err,
                       delta_cck->overrun_err, max_cck->overrun_err);
  pos = tmp___27 + pos;
  tmp___28 = scnprintf(buf + (unsigned long )pos, (size_t )(bufsz - pos), fmt_table,
                       (char *)"early_overrun_err:", cck->early_overrun_err, accum_cck->early_overrun_err,
                       delta_cck->early_overrun_err, max_cck->early_overrun_err);
  pos = tmp___28 + pos;
  tmp___29 = scnprintf(buf + (unsigned long )pos, (size_t )(bufsz - pos), fmt_table,
                       (char *)"crc32_good:", cck->crc32_good, accum_cck->crc32_good,
                       delta_cck->crc32_good, max_cck->crc32_good);
  pos = tmp___29 + pos;
  tmp___30 = scnprintf(buf + (unsigned long )pos, (size_t )(bufsz - pos), fmt_table,
                       (char *)"false_alarm_cnt:", cck->false_alarm_cnt, accum_cck->false_alarm_cnt,
                       delta_cck->false_alarm_cnt, max_cck->false_alarm_cnt);
  pos = tmp___30 + pos;
  tmp___31 = scnprintf(buf + (unsigned long )pos, (size_t )(bufsz - pos), fmt_table,
                       (char *)"fina_sync_err_cnt:", cck->fina_sync_err_cnt, accum_cck->fina_sync_err_cnt,
                       delta_cck->fina_sync_err_cnt, max_cck->fina_sync_err_cnt);
  pos = tmp___31 + pos;
  tmp___32 = scnprintf(buf + (unsigned long )pos, (size_t )(bufsz - pos), fmt_table,
                       (char *)"sfd_timeout:", cck->sfd_timeout, accum_cck->sfd_timeout,
                       delta_cck->sfd_timeout, max_cck->sfd_timeout);
  pos = tmp___32 + pos;
  tmp___33 = scnprintf(buf + (unsigned long )pos, (size_t )(bufsz - pos), fmt_table,
                       (char *)"fina_timeout:", cck->fina_timeout, accum_cck->fina_timeout,
                       delta_cck->fina_timeout, max_cck->fina_timeout);
  pos = tmp___33 + pos;
  tmp___34 = scnprintf(buf + (unsigned long )pos, (size_t )(bufsz - pos), fmt_table,
                       (char *)"unresponded_rts:", cck->unresponded_rts, accum_cck->unresponded_rts,
                       delta_cck->unresponded_rts, max_cck->unresponded_rts);
  pos = tmp___34 + pos;
  tmp___35 = scnprintf(buf + (unsigned long )pos, (size_t )(bufsz - pos), fmt_table,
                       (char *)"rxe_frame_lmt_ovrun:", cck->rxe_frame_limit_overrun,
                       accum_cck->rxe_frame_limit_overrun, delta_cck->rxe_frame_limit_overrun,
                       max_cck->rxe_frame_limit_overrun);
  pos = tmp___35 + pos;
  tmp___36 = scnprintf(buf + (unsigned long )pos, (size_t )(bufsz - pos), fmt_table,
                       (char *)"sent_ack_cnt:", cck->sent_ack_cnt, accum_cck->sent_ack_cnt,
                       delta_cck->sent_ack_cnt, max_cck->sent_ack_cnt);
  pos = tmp___36 + pos;
  tmp___37 = scnprintf(buf + (unsigned long )pos, (size_t )(bufsz - pos), fmt_table,
                       (char *)"sent_cts_cnt:", cck->sent_cts_cnt, accum_cck->sent_cts_cnt,
                       delta_cck->sent_cts_cnt, max_cck->sent_cts_cnt);
  pos = tmp___37 + pos;
  tmp___38 = scnprintf(buf + (unsigned long )pos, (size_t )(bufsz - pos), fmt_table,
                       (char *)"sent_ba_rsp_cnt:", cck->sent_ba_rsp_cnt, accum_cck->sent_ba_rsp_cnt,
                       delta_cck->sent_ba_rsp_cnt, max_cck->sent_ba_rsp_cnt);
  pos = tmp___38 + pos;
  tmp___39 = scnprintf(buf + (unsigned long )pos, (size_t )(bufsz - pos), fmt_table,
                       (char *)"dsp_self_kill:", cck->dsp_self_kill, accum_cck->dsp_self_kill,
                       delta_cck->dsp_self_kill, max_cck->dsp_self_kill);
  pos = tmp___39 + pos;
  tmp___40 = scnprintf(buf + (unsigned long )pos, (size_t )(bufsz - pos), fmt_table,
                       (char *)"mh_format_err:", cck->mh_format_err, accum_cck->mh_format_err,
                       delta_cck->mh_format_err, max_cck->mh_format_err);
  pos = tmp___40 + pos;
  tmp___41 = scnprintf(buf + (unsigned long )pos, (size_t )(bufsz - pos), fmt_table,
                       (char *)"re_acq_main_rssi_sum:", cck->re_acq_main_rssi_sum,
                       accum_cck->re_acq_main_rssi_sum, delta_cck->re_acq_main_rssi_sum,
                       max_cck->re_acq_main_rssi_sum);
  pos = tmp___41 + pos;
  tmp___42 = scnprintf(buf + (unsigned long )pos, (size_t )(bufsz - pos), fmt_header,
                       (char *)"Statistics_Rx - GENERAL:");
  pos = tmp___42 + pos;
  tmp___43 = scnprintf(buf + (unsigned long )pos, (size_t )(bufsz - pos), fmt_table,
                       (char *)"bogus_cts:", general->bogus_cts, accum_general->bogus_cts,
                       delta_general->bogus_cts, max_general->bogus_cts);
  pos = tmp___43 + pos;
  tmp___44 = scnprintf(buf + (unsigned long )pos, (size_t )(bufsz - pos), fmt_table,
                       (char *)"bogus_ack:", general->bogus_ack, accum_general->bogus_ack,
                       delta_general->bogus_ack, max_general->bogus_ack);
  pos = tmp___44 + pos;
  tmp___45 = scnprintf(buf + (unsigned long )pos, (size_t )(bufsz - pos), fmt_table,
                       (char *)"non_bssid_frames:", general->non_bssid_frames, accum_general->non_bssid_frames,
                       delta_general->non_bssid_frames, max_general->non_bssid_frames);
  pos = tmp___45 + pos;
  tmp___46 = scnprintf(buf + (unsigned long )pos, (size_t )(bufsz - pos), fmt_table,
                       (char *)"filtered_frames:", general->filtered_frames, accum_general->filtered_frames,
                       delta_general->filtered_frames, max_general->filtered_frames);
  pos = tmp___46 + pos;
  tmp___47 = scnprintf(buf + (unsigned long )pos, (size_t )(bufsz - pos), fmt_table,
                       (char *)"non_channel_beacons:", general->non_channel_beacons,
                       accum_general->non_channel_beacons, delta_general->non_channel_beacons,
                       max_general->non_channel_beacons);
  pos = tmp___47 + pos;
  tmp___48 = scnprintf(buf + (unsigned long )pos, (size_t )(bufsz - pos), fmt_table,
                       (char *)"channel_beacons:", general->channel_beacons, accum_general->channel_beacons,
                       delta_general->channel_beacons, max_general->channel_beacons);
  pos = tmp___48 + pos;
  tmp___49 = scnprintf(buf + (unsigned long )pos, (size_t )(bufsz - pos), fmt_table,
                       (char *)"num_missed_bcon:", general->num_missed_bcon, accum_general->num_missed_bcon,
                       delta_general->num_missed_bcon, max_general->num_missed_bcon);
  pos = tmp___49 + pos;
  tmp___50 = scnprintf(buf + (unsigned long )pos, (size_t )(bufsz - pos), fmt_table,
                       (char *)"adc_rx_saturation_time:", general->adc_rx_saturation_time,
                       accum_general->adc_rx_saturation_time, delta_general->adc_rx_saturation_time,
                       max_general->adc_rx_saturation_time);
  pos = tmp___50 + pos;
  tmp___51 = scnprintf(buf + (unsigned long )pos, (size_t )(bufsz - pos), fmt_table,
                       (char *)"ina_detect_search_tm:", general->ina_detection_search_time,
                       accum_general->ina_detection_search_time, delta_general->ina_detection_search_time,
                       max_general->ina_detection_search_time);
  pos = tmp___51 + pos;
  tmp___52 = scnprintf(buf + (unsigned long )pos, (size_t )(bufsz - pos), fmt_table,
                       (char *)"beacon_silence_rssi_a:", general->beacon_silence_rssi_a,
                       accum_general->beacon_silence_rssi_a, delta_general->beacon_silence_rssi_a,
                       max_general->beacon_silence_rssi_a);
  pos = tmp___52 + pos;
  tmp___53 = scnprintf(buf + (unsigned long )pos, (size_t )(bufsz - pos), fmt_table,
                       (char *)"beacon_silence_rssi_b:", general->beacon_silence_rssi_b,
                       accum_general->beacon_silence_rssi_b, delta_general->beacon_silence_rssi_b,
                       max_general->beacon_silence_rssi_b);
  pos = tmp___53 + pos;
  tmp___54 = scnprintf(buf + (unsigned long )pos, (size_t )(bufsz - pos), fmt_table,
                       (char *)"beacon_silence_rssi_c:", general->beacon_silence_rssi_c,
                       accum_general->beacon_silence_rssi_c, delta_general->beacon_silence_rssi_c,
                       max_general->beacon_silence_rssi_c);
  pos = tmp___54 + pos;
  tmp___55 = scnprintf(buf + (unsigned long )pos, (size_t )(bufsz - pos), fmt_table,
                       (char *)"interference_data_flag:", general->interference_data_flag,
                       accum_general->interference_data_flag, delta_general->interference_data_flag,
                       max_general->interference_data_flag);
  pos = tmp___55 + pos;
  tmp___56 = scnprintf(buf + (unsigned long )pos, (size_t )(bufsz - pos), fmt_table,
                       (char *)"channel_load:", general->channel_load, accum_general->channel_load,
                       delta_general->channel_load, max_general->channel_load);
  pos = tmp___56 + pos;
  tmp___57 = scnprintf(buf + (unsigned long )pos, (size_t )(bufsz - pos), fmt_table,
                       (char *)"dsp_false_alarms:", general->dsp_false_alarms, accum_general->dsp_false_alarms,
                       delta_general->dsp_false_alarms, max_general->dsp_false_alarms);
  pos = tmp___57 + pos;
  tmp___58 = scnprintf(buf + (unsigned long )pos, (size_t )(bufsz - pos), fmt_table,
                       (char *)"beacon_rssi_a:", general->beacon_rssi_a, accum_general->beacon_rssi_a,
                       delta_general->beacon_rssi_a, max_general->beacon_rssi_a);
  pos = tmp___58 + pos;
  tmp___59 = scnprintf(buf + (unsigned long )pos, (size_t )(bufsz - pos), fmt_table,
                       (char *)"beacon_rssi_b:", general->beacon_rssi_b, accum_general->beacon_rssi_b,
                       delta_general->beacon_rssi_b, max_general->beacon_rssi_b);
  pos = tmp___59 + pos;
  tmp___60 = scnprintf(buf + (unsigned long )pos, (size_t )(bufsz - pos), fmt_table,
                       (char *)"beacon_rssi_c:", general->beacon_rssi_c, accum_general->beacon_rssi_c,
                       delta_general->beacon_rssi_c, max_general->beacon_rssi_c);
  pos = tmp___60 + pos;
  tmp___61 = scnprintf(buf + (unsigned long )pos, (size_t )(bufsz - pos), fmt_table,
                       (char *)"beacon_energy_a:", general->beacon_energy_a, accum_general->beacon_energy_a,
                       delta_general->beacon_energy_a, max_general->beacon_energy_a);
  pos = tmp___61 + pos;
  tmp___62 = scnprintf(buf + (unsigned long )pos, (size_t )(bufsz - pos), fmt_table,
                       (char *)"beacon_energy_b:", general->beacon_energy_b, accum_general->beacon_energy_b,
                       delta_general->beacon_energy_b, max_general->beacon_energy_b);
  pos = tmp___62 + pos;
  tmp___63 = scnprintf(buf + (unsigned long )pos, (size_t )(bufsz - pos), fmt_table,
                       (char *)"beacon_energy_c:", general->beacon_energy_c, accum_general->beacon_energy_c,
                       delta_general->beacon_energy_c, max_general->beacon_energy_c);
  pos = tmp___63 + pos;
  tmp___64 = scnprintf(buf + (unsigned long )pos, (size_t )(bufsz - pos), fmt_header,
                       (char *)"Statistics_Rx - OFDM_HT:");
  pos = tmp___64 + pos;
  tmp___65 = scnprintf(buf + (unsigned long )pos, (size_t )(bufsz - pos), fmt_table,
                       (char *)"plcp_err:", ht->plcp_err, accum_ht->plcp_err, delta_ht->plcp_err,
                       max_ht->plcp_err);
  pos = tmp___65 + pos;
  tmp___66 = scnprintf(buf + (unsigned long )pos, (size_t )(bufsz - pos), fmt_table,
                       (char *)"overrun_err:", ht->overrun_err, accum_ht->overrun_err,
                       delta_ht->overrun_err, max_ht->overrun_err);
  pos = tmp___66 + pos;
  tmp___67 = scnprintf(buf + (unsigned long )pos, (size_t )(bufsz - pos), fmt_table,
                       (char *)"early_overrun_err:", ht->early_overrun_err, accum_ht->early_overrun_err,
                       delta_ht->early_overrun_err, max_ht->early_overrun_err);
  pos = tmp___67 + pos;
  tmp___68 = scnprintf(buf + (unsigned long )pos, (size_t )(bufsz - pos), fmt_table,
                       (char *)"crc32_good:", ht->crc32_good, accum_ht->crc32_good,
                       delta_ht->crc32_good, max_ht->crc32_good);
  pos = tmp___68 + pos;
  tmp___69 = scnprintf(buf + (unsigned long )pos, (size_t )(bufsz - pos), fmt_table,
                       (char *)"crc32_err:", ht->crc32_err, accum_ht->crc32_err, delta_ht->crc32_err,
                       max_ht->crc32_err);
  pos = tmp___69 + pos;
  tmp___70 = scnprintf(buf + (unsigned long )pos, (size_t )(bufsz - pos), fmt_table,
                       (char *)"mh_format_err:", ht->mh_format_err, accum_ht->mh_format_err,
                       delta_ht->mh_format_err, max_ht->mh_format_err);
  pos = tmp___70 + pos;
  tmp___71 = scnprintf(buf + (unsigned long )pos, (size_t )(bufsz - pos), fmt_table,
                       (char *)"agg_crc32_good:", ht->agg_crc32_good, accum_ht->agg_crc32_good,
                       delta_ht->agg_crc32_good, max_ht->agg_crc32_good);
  pos = tmp___71 + pos;
  tmp___72 = scnprintf(buf + (unsigned long )pos, (size_t )(bufsz - pos), fmt_table,
                       (char *)"agg_mpdu_cnt:", ht->agg_mpdu_cnt, accum_ht->agg_mpdu_cnt,
                       delta_ht->agg_mpdu_cnt, max_ht->agg_mpdu_cnt);
  pos = tmp___72 + pos;
  tmp___73 = scnprintf(buf + (unsigned long )pos, (size_t )(bufsz - pos), fmt_table,
                       (char *)"agg_cnt:", ht->agg_cnt, accum_ht->agg_cnt, delta_ht->agg_cnt,
                       max_ht->agg_cnt);
  pos = tmp___73 + pos;
  tmp___74 = scnprintf(buf + (unsigned long )pos, (size_t )(bufsz - pos), fmt_table,
                       (char *)"unsupport_mcs:", ht->unsupport_mcs, accum_ht->unsupport_mcs,
                       delta_ht->unsupport_mcs, max_ht->unsupport_mcs);
  pos = tmp___74 + pos;
  ret = simple_read_from_buffer((void *)user_buf, count, ppos, (void const *)buf,
                                (size_t )pos);
  kfree((void const *)buf);
  return (ret);
}
}
static ssize_t il4965_ucode_tx_stats_read(struct file *file , char *user_buf , size_t count ,
                                          loff_t *ppos )
{
  struct il_priv *il ;
  int pos ;
  char *buf ;
  int bufsz ;
  ssize_t ret ;
  struct stats_tx *tx ;
  struct stats_tx *accum_tx ;
  struct stats_tx *delta_tx ;
  struct stats_tx *max_tx ;
  int tmp ;
  void *tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  int tmp___4 ;
  int tmp___5 ;
  int tmp___6 ;
  int tmp___7 ;
  int tmp___8 ;
  int tmp___9 ;
  int tmp___10 ;
  int tmp___11 ;
  int tmp___12 ;
  int tmp___13 ;
  int tmp___14 ;
  int tmp___15 ;
  int tmp___16 ;
  int tmp___17 ;
  int tmp___18 ;
  int tmp___19 ;
  int tmp___20 ;
  int tmp___21 ;
  int tmp___22 ;
  int tmp___23 ;
  int tmp___24 ;
  int tmp___25 ;
  int tmp___26 ;
  {
  il = (struct il_priv *)file->private_data;
  pos = 0;
  bufsz = 5050;
  tmp = il_is_alive(il);
  if (tmp == 0) {
    return (-11L);
  } else {
  }
  tmp___0 = kmalloc((size_t )bufsz, 208U);
  buf = (char *)tmp___0;
  if ((unsigned long )buf == (unsigned long )((char *)0)) {
    dev_err((struct device const *)(& (il->pci_dev)->dev), "Can not allocate Buffer\n");
    return (-12L);
  } else {
  }
  tx = & il->__annonCompField103._4965.stats.tx;
  accum_tx = & il->__annonCompField103._4965.accum_stats.tx;
  delta_tx = & il->__annonCompField103._4965.delta_stats.tx;
  max_tx = & il->__annonCompField103._4965.max_delta.tx;
  tmp___1 = il4965_stats_flag(il, buf, bufsz);
  pos = tmp___1 + pos;
  tmp___2 = scnprintf(buf + (unsigned long )pos, (size_t )(bufsz - pos), fmt_header,
                      (char *)"Statistics_Tx:");
  pos = tmp___2 + pos;
  tmp___3 = scnprintf(buf + (unsigned long )pos, (size_t )(bufsz - pos), fmt_table,
                      (char *)"preamble:", tx->preamble_cnt, accum_tx->preamble_cnt,
                      delta_tx->preamble_cnt, max_tx->preamble_cnt);
  pos = tmp___3 + pos;
  tmp___4 = scnprintf(buf + (unsigned long )pos, (size_t )(bufsz - pos), fmt_table,
                      (char *)"rx_detected_cnt:", tx->rx_detected_cnt, accum_tx->rx_detected_cnt,
                      delta_tx->rx_detected_cnt, max_tx->rx_detected_cnt);
  pos = tmp___4 + pos;
  tmp___5 = scnprintf(buf + (unsigned long )pos, (size_t )(bufsz - pos), fmt_table,
                      (char *)"bt_prio_defer_cnt:", tx->bt_prio_defer_cnt, accum_tx->bt_prio_defer_cnt,
                      delta_tx->bt_prio_defer_cnt, max_tx->bt_prio_defer_cnt);
  pos = tmp___5 + pos;
  tmp___6 = scnprintf(buf + (unsigned long )pos, (size_t )(bufsz - pos), fmt_table,
                      (char *)"bt_prio_kill_cnt:", tx->bt_prio_kill_cnt, accum_tx->bt_prio_kill_cnt,
                      delta_tx->bt_prio_kill_cnt, max_tx->bt_prio_kill_cnt);
  pos = tmp___6 + pos;
  tmp___7 = scnprintf(buf + (unsigned long )pos, (size_t )(bufsz - pos), fmt_table,
                      (char *)"few_bytes_cnt:", tx->few_bytes_cnt, accum_tx->few_bytes_cnt,
                      delta_tx->few_bytes_cnt, max_tx->few_bytes_cnt);
  pos = tmp___7 + pos;
  tmp___8 = scnprintf(buf + (unsigned long )pos, (size_t )(bufsz - pos), fmt_table,
                      (char *)"cts_timeout:", tx->cts_timeout, accum_tx->cts_timeout,
                      delta_tx->cts_timeout, max_tx->cts_timeout);
  pos = tmp___8 + pos;
  tmp___9 = scnprintf(buf + (unsigned long )pos, (size_t )(bufsz - pos), fmt_table,
                      (char *)"ack_timeout:", tx->ack_timeout, accum_tx->ack_timeout,
                      delta_tx->ack_timeout, max_tx->ack_timeout);
  pos = tmp___9 + pos;
  tmp___10 = scnprintf(buf + (unsigned long )pos, (size_t )(bufsz - pos), fmt_table,
                       (char *)"expected_ack_cnt:", tx->expected_ack_cnt, accum_tx->expected_ack_cnt,
                       delta_tx->expected_ack_cnt, max_tx->expected_ack_cnt);
  pos = tmp___10 + pos;
  tmp___11 = scnprintf(buf + (unsigned long )pos, (size_t )(bufsz - pos), fmt_table,
                       (char *)"actual_ack_cnt:", tx->actual_ack_cnt, accum_tx->actual_ack_cnt,
                       delta_tx->actual_ack_cnt, max_tx->actual_ack_cnt);
  pos = tmp___11 + pos;
  tmp___12 = scnprintf(buf + (unsigned long )pos, (size_t )(bufsz - pos), fmt_table,
                       (char *)"dump_msdu_cnt:", tx->dump_msdu_cnt, accum_tx->dump_msdu_cnt,
                       delta_tx->dump_msdu_cnt, max_tx->dump_msdu_cnt);
  pos = tmp___12 + pos;
  tmp___13 = scnprintf(buf + (unsigned long )pos, (size_t )(bufsz - pos), fmt_table,
                       (char *)"abort_nxt_frame_mismatch:", tx->burst_abort_next_frame_mismatch_cnt,
                       accum_tx->burst_abort_next_frame_mismatch_cnt, delta_tx->burst_abort_next_frame_mismatch_cnt,
                       max_tx->burst_abort_next_frame_mismatch_cnt);
  pos = tmp___13 + pos;
  tmp___14 = scnprintf(buf + (unsigned long )pos, (size_t )(bufsz - pos), fmt_table,
                       (char *)"abort_missing_nxt_frame:", tx->burst_abort_missing_next_frame_cnt,
                       accum_tx->burst_abort_missing_next_frame_cnt, delta_tx->burst_abort_missing_next_frame_cnt,
                       max_tx->burst_abort_missing_next_frame_cnt);
  pos = tmp___14 + pos;
  tmp___15 = scnprintf(buf + (unsigned long )pos, (size_t )(bufsz - pos), fmt_table,
                       (char *)"cts_timeout_collision:", tx->cts_timeout_collision,
                       accum_tx->cts_timeout_collision, delta_tx->cts_timeout_collision,
                       max_tx->cts_timeout_collision);
  pos = tmp___15 + pos;
  tmp___16 = scnprintf(buf + (unsigned long )pos, (size_t )(bufsz - pos), fmt_table,
                       (char *)"ack_ba_timeout_collision:", tx->ack_or_ba_timeout_collision,
                       accum_tx->ack_or_ba_timeout_collision, delta_tx->ack_or_ba_timeout_collision,
                       max_tx->ack_or_ba_timeout_collision);
  pos = tmp___16 + pos;
  tmp___17 = scnprintf(buf + (unsigned long )pos, (size_t )(bufsz - pos), fmt_table,
                       (char *)"agg ba_timeout:", tx->agg.ba_timeout, accum_tx->agg.ba_timeout,
                       delta_tx->agg.ba_timeout, max_tx->agg.ba_timeout);
  pos = tmp___17 + pos;
  tmp___18 = scnprintf(buf + (unsigned long )pos, (size_t )(bufsz - pos), fmt_table,
                       (char *)"agg ba_resched_frames:", tx->agg.ba_reschedule_frames,
                       accum_tx->agg.ba_reschedule_frames, delta_tx->agg.ba_reschedule_frames,
                       max_tx->agg.ba_reschedule_frames);
  pos = tmp___18 + pos;
  tmp___19 = scnprintf(buf + (unsigned long )pos, (size_t )(bufsz - pos), fmt_table,
                       (char *)"agg scd_query_agg_frame:", tx->agg.scd_query_agg_frame_cnt,
                       accum_tx->agg.scd_query_agg_frame_cnt, delta_tx->agg.scd_query_agg_frame_cnt,
                       max_tx->agg.scd_query_agg_frame_cnt);
  pos = tmp___19 + pos;
  tmp___20 = scnprintf(buf + (unsigned long )pos, (size_t )(bufsz - pos), fmt_table,
                       (char *)"agg scd_query_no_agg:", tx->agg.scd_query_no_agg,
                       accum_tx->agg.scd_query_no_agg, delta_tx->agg.scd_query_no_agg,
                       max_tx->agg.scd_query_no_agg);
  pos = tmp___20 + pos;
  tmp___21 = scnprintf(buf + (unsigned long )pos, (size_t )(bufsz - pos), fmt_table,
                       (char *)"agg scd_query_agg:", tx->agg.scd_query_agg, accum_tx->agg.scd_query_agg,
                       delta_tx->agg.scd_query_agg, max_tx->agg.scd_query_agg);
  pos = tmp___21 + pos;
  tmp___22 = scnprintf(buf + (unsigned long )pos, (size_t )(bufsz - pos), fmt_table,
                       (char *)"agg scd_query_mismatch:", tx->agg.scd_query_mismatch,
                       accum_tx->agg.scd_query_mismatch, delta_tx->agg.scd_query_mismatch,
                       max_tx->agg.scd_query_mismatch);
  pos = tmp___22 + pos;
  tmp___23 = scnprintf(buf + (unsigned long )pos, (size_t )(bufsz - pos), fmt_table,
                       (char *)"agg frame_not_ready:", tx->agg.frame_not_ready, accum_tx->agg.frame_not_ready,
                       delta_tx->agg.frame_not_ready, max_tx->agg.frame_not_ready);
  pos = tmp___23 + pos;
  tmp___24 = scnprintf(buf + (unsigned long )pos, (size_t )(bufsz - pos), fmt_table,
                       (char *)"agg underrun:", tx->agg.underrun, accum_tx->agg.underrun,
                       delta_tx->agg.underrun, max_tx->agg.underrun);
  pos = tmp___24 + pos;
  tmp___25 = scnprintf(buf + (unsigned long )pos, (size_t )(bufsz - pos), fmt_table,
                       (char *)"agg bt_prio_kill:", tx->agg.bt_prio_kill, accum_tx->agg.bt_prio_kill,
                       delta_tx->agg.bt_prio_kill, max_tx->agg.bt_prio_kill);
  pos = tmp___25 + pos;
  tmp___26 = scnprintf(buf + (unsigned long )pos, (size_t )(bufsz - pos), fmt_table,
                       (char *)"agg rx_ba_rsp_cnt:", tx->agg.rx_ba_rsp_cnt, accum_tx->agg.rx_ba_rsp_cnt,
                       delta_tx->agg.rx_ba_rsp_cnt, max_tx->agg.rx_ba_rsp_cnt);
  pos = tmp___26 + pos;
  ret = simple_read_from_buffer((void *)user_buf, count, ppos, (void const *)buf,
                                (size_t )pos);
  kfree((void const *)buf);
  return (ret);
}
}
static ssize_t il4965_ucode_general_stats_read(struct file *file , char *user_buf ,
                                               size_t count , loff_t *ppos )
{
  struct il_priv *il ;
  int pos ;
  char *buf ;
  int bufsz ;
  ssize_t ret ;
  struct stats_general_common *general ;
  struct stats_general_common *accum_general ;
  struct stats_general_common *delta_general ;
  struct stats_general_common *max_general ;
  struct stats_dbg *dbg ;
  struct stats_dbg *accum_dbg ;
  struct stats_dbg *delta_dbg ;
  struct stats_dbg *max_dbg ;
  struct stats_div *div ;
  struct stats_div *accum_div ;
  struct stats_div *delta_div ;
  struct stats_div *max_div ;
  int tmp ;
  void *tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  int tmp___4 ;
  int tmp___5 ;
  int tmp___6 ;
  int tmp___7 ;
  int tmp___8 ;
  int tmp___9 ;
  int tmp___10 ;
  int tmp___11 ;
  int tmp___12 ;
  int tmp___13 ;
  int tmp___14 ;
  int tmp___15 ;
  int tmp___16 ;
  {
  il = (struct il_priv *)file->private_data;
  pos = 0;
  bufsz = 1140;
  tmp = il_is_alive(il);
  if (tmp == 0) {
    return (-11L);
  } else {
  }
  tmp___0 = kmalloc((size_t )bufsz, 208U);
  buf = (char *)tmp___0;
  if ((unsigned long )buf == (unsigned long )((char *)0)) {
    dev_err((struct device const *)(& (il->pci_dev)->dev), "Can not allocate Buffer\n");
    return (-12L);
  } else {
  }
  general = & il->__annonCompField103._4965.stats.general.common;
  dbg = & il->__annonCompField103._4965.stats.general.common.dbg;
  div = & il->__annonCompField103._4965.stats.general.common.div;
  accum_general = & il->__annonCompField103._4965.accum_stats.general.common;
  accum_dbg = & il->__annonCompField103._4965.accum_stats.general.common.dbg;
  accum_div = & il->__annonCompField103._4965.accum_stats.general.common.div;
  delta_general = & il->__annonCompField103._4965.delta_stats.general.common;
  max_general = & il->__annonCompField103._4965.max_delta.general.common;
  delta_dbg = & il->__annonCompField103._4965.delta_stats.general.common.dbg;
  max_dbg = & il->__annonCompField103._4965.max_delta.general.common.dbg;
  delta_div = & il->__annonCompField103._4965.delta_stats.general.common.div;
  max_div = & il->__annonCompField103._4965.max_delta.general.common.div;
  tmp___1 = il4965_stats_flag(il, buf, bufsz);
  pos = tmp___1 + pos;
  tmp___2 = scnprintf(buf + (unsigned long )pos, (size_t )(bufsz - pos), fmt_header,
                      (char *)"Statistics_General:");
  pos = tmp___2 + pos;
  tmp___3 = scnprintf(buf + (unsigned long )pos, (size_t )(bufsz - pos), fmt_value,
                      (char *)"temperature:", general->temperature);
  pos = tmp___3 + pos;
  tmp___4 = scnprintf(buf + (unsigned long )pos, (size_t )(bufsz - pos), fmt_value,
                      (char *)"ttl_timestamp:", general->ttl_timestamp);
  pos = tmp___4 + pos;
  tmp___5 = scnprintf(buf + (unsigned long )pos, (size_t )(bufsz - pos), fmt_table,
                      (char *)"burst_check:", dbg->burst_check, accum_dbg->burst_check,
                      delta_dbg->burst_check, max_dbg->burst_check);
  pos = tmp___5 + pos;
  tmp___6 = scnprintf(buf + (unsigned long )pos, (size_t )(bufsz - pos), fmt_table,
                      (char *)"burst_count:", dbg->burst_count, accum_dbg->burst_count,
                      delta_dbg->burst_count, max_dbg->burst_count);
  pos = tmp___6 + pos;
  tmp___7 = scnprintf(buf + (unsigned long )pos, (size_t )(bufsz - pos), fmt_table,
                      (char *)"wait_for_silence_timeout_count:", dbg->wait_for_silence_timeout_cnt,
                      accum_dbg->wait_for_silence_timeout_cnt, delta_dbg->wait_for_silence_timeout_cnt,
                      max_dbg->wait_for_silence_timeout_cnt);
  pos = tmp___7 + pos;
  tmp___8 = scnprintf(buf + (unsigned long )pos, (size_t )(bufsz - pos), fmt_table,
                      (char *)"sleep_time:", general->sleep_time, accum_general->sleep_time,
                      delta_general->sleep_time, max_general->sleep_time);
  pos = tmp___8 + pos;
  tmp___9 = scnprintf(buf + (unsigned long )pos, (size_t )(bufsz - pos), fmt_table,
                      (char *)"slots_out:", general->slots_out, accum_general->slots_out,
                      delta_general->slots_out, max_general->slots_out);
  pos = tmp___9 + pos;
  tmp___10 = scnprintf(buf + (unsigned long )pos, (size_t )(bufsz - pos), fmt_table,
                       (char *)"slots_idle:", general->slots_idle, accum_general->slots_idle,
                       delta_general->slots_idle, max_general->slots_idle);
  pos = tmp___10 + pos;
  tmp___11 = scnprintf(buf + (unsigned long )pos, (size_t )(bufsz - pos), fmt_table,
                       (char *)"tx_on_a:", div->tx_on_a, accum_div->tx_on_a, delta_div->tx_on_a,
                       max_div->tx_on_a);
  pos = tmp___11 + pos;
  tmp___12 = scnprintf(buf + (unsigned long )pos, (size_t )(bufsz - pos), fmt_table,
                       (char *)"tx_on_b:", div->tx_on_b, accum_div->tx_on_b, delta_div->tx_on_b,
                       max_div->tx_on_b);
  pos = tmp___12 + pos;
  tmp___13 = scnprintf(buf + (unsigned long )pos, (size_t )(bufsz - pos), fmt_table,
                       (char *)"exec_time:", div->exec_time, accum_div->exec_time,
                       delta_div->exec_time, max_div->exec_time);
  pos = tmp___13 + pos;
  tmp___14 = scnprintf(buf + (unsigned long )pos, (size_t )(bufsz - pos), fmt_table,
                       (char *)"probe_time:", div->probe_time, accum_div->probe_time,
                       delta_div->probe_time, max_div->probe_time);
  pos = tmp___14 + pos;
  tmp___15 = scnprintf(buf + (unsigned long )pos, (size_t )(bufsz - pos), fmt_table,
                       (char *)"rx_enable_counter:", general->rx_enable_counter, accum_general->rx_enable_counter,
                       delta_general->rx_enable_counter, max_general->rx_enable_counter);
  pos = tmp___15 + pos;
  tmp___16 = scnprintf(buf + (unsigned long )pos, (size_t )(bufsz - pos), fmt_table,
                       (char *)"num_of_sos_states:", general->num_of_sos_states, accum_general->num_of_sos_states,
                       delta_general->num_of_sos_states, max_general->num_of_sos_states);
  pos = tmp___16 + pos;
  ret = simple_read_from_buffer((void *)user_buf, count, ppos, (void const *)buf,
                                (size_t )pos);
  kfree((void const *)buf);
  return (ret);
}
}
struct il_debugfs_ops const il4965_debugfs_ops = {& il4965_ucode_rx_stats_read, & il4965_ucode_tx_stats_read, & il4965_ucode_general_stats_read};
extern int ldv_probe_10(void) ;
extern int ldv_release_10(void) ;
void ldv_initialize_il_debugfs_ops_10(void)
{
  void *tmp ;
  {
  tmp = __VERIFIER_nondet_pointer();
  il4965_debugfs_ops_group0 = (struct file *)tmp;
  return;
}
}
void ldv_main_exported_10(void)
{
  size_t ldvarg107 ;
  char *ldvarg114 ;
  void *tmp ;
  size_t ldvarg113 ;
  loff_t *ldvarg112 ;
  void *tmp___0 ;
  size_t ldvarg110 ;
  char *ldvarg108 ;
  void *tmp___1 ;
  char *ldvarg111 ;
  void *tmp___2 ;
  loff_t *ldvarg109 ;
  void *tmp___3 ;
  loff_t *ldvarg106 ;
  void *tmp___4 ;
  int tmp___5 ;
  {
  tmp = ldv_init_zalloc(1UL);
  ldvarg114 = (char *)tmp;
  tmp___0 = ldv_init_zalloc(8UL);
  ldvarg112 = (loff_t *)tmp___0;
  tmp___1 = ldv_init_zalloc(1UL);
  ldvarg108 = (char *)tmp___1;
  tmp___2 = ldv_init_zalloc(1UL);
  ldvarg111 = (char *)tmp___2;
  tmp___3 = ldv_init_zalloc(8UL);
  ldvarg109 = (loff_t *)tmp___3;
  tmp___4 = ldv_init_zalloc(8UL);
  ldvarg106 = (loff_t *)tmp___4;
  ldv_memset((void *)(& ldvarg107), 0, 8UL);
  ldv_memset((void *)(& ldvarg113), 0, 8UL);
  ldv_memset((void *)(& ldvarg110), 0, 8UL);
  tmp___5 = __VERIFIER_nondet_int();
  switch (tmp___5) {
  case 0: ;
  if (ldv_state_variable_10 == 2) {
    il4965_ucode_tx_stats_read(il4965_debugfs_ops_group0, ldvarg114, ldvarg113, ldvarg112);
    ldv_state_variable_10 = 2;
  } else {
  }
  goto ldv_54246;
  case 1: ;
  if (ldv_state_variable_10 == 1) {
    il4965_ucode_rx_stats_read(il4965_debugfs_ops_group0, ldvarg111, ldvarg110, ldvarg109);
    ldv_state_variable_10 = 1;
  } else {
  }
  if (ldv_state_variable_10 == 2) {
    il4965_ucode_rx_stats_read(il4965_debugfs_ops_group0, ldvarg111, ldvarg110, ldvarg109);
    ldv_state_variable_10 = 2;
  } else {
  }
  goto ldv_54246;
  case 2: ;
  if (ldv_state_variable_10 == 1) {
    il4965_ucode_general_stats_read(il4965_debugfs_ops_group0, ldvarg108, ldvarg107,
                                    ldvarg106);
    ldv_state_variable_10 = 1;
  } else {
  }
  if (ldv_state_variable_10 == 2) {
    il4965_ucode_general_stats_read(il4965_debugfs_ops_group0, ldvarg108, ldvarg107,
                                    ldvarg106);
    ldv_state_variable_10 = 2;
  } else {
  }
  goto ldv_54246;
  case 3: ;
  if (ldv_state_variable_10 == 2) {
    ldv_release_10();
    ldv_state_variable_10 = 1;
    ref_cnt = ref_cnt - 1;
  } else {
  }
  goto ldv_54246;
  case 4: ;
  if (ldv_state_variable_10 == 1) {
    ldv_probe_10();
    ldv_state_variable_10 = 2;
    ref_cnt = ref_cnt + 1;
  } else {
  }
  goto ldv_54246;
  default:
  ldv_stop();
  }
  ldv_54246: ;
  return;
}
}
bool ldv_queue_work_on_237(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                           struct work_struct *ldv_func_arg3 )
{
  ldv_func_ret_type___2 ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3);
  ldv_func_res = tmp;
  activate_work_7(ldv_func_arg3, 2);
  return (ldv_func_res);
}
}
bool ldv_queue_delayed_work_on_238(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                   struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 )
{
  ldv_func_ret_type___3 ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_delayed_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, ldv_func_arg4);
  ldv_func_res = tmp;
  activate_work_7(& ldv_func_arg3->work, 2);
  return (ldv_func_res);
}
}
bool ldv_queue_work_on_239(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                           struct work_struct *ldv_func_arg3 )
{
  ldv_func_ret_type___4 ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3);
  ldv_func_res = tmp;
  activate_work_7(ldv_func_arg3, 2);
  return (ldv_func_res);
}
}
void ldv_flush_workqueue_240(struct workqueue_struct *ldv_func_arg1 )
{
  {
  flush_workqueue(ldv_func_arg1);
  call_and_disable_all_7(2);
  return;
}
}
bool ldv_queue_delayed_work_on_241(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                   struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 )
{
  ldv_func_ret_type___5 ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_delayed_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, ldv_func_arg4);
  ldv_func_res = tmp;
  activate_work_7(& ldv_func_arg3->work, 2);
  return (ldv_func_res);
}
}
void *ldv_kmem_cache_alloc_247(struct kmem_cache *ldv_func_arg1 , gfp_t flags )
{
  void *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = ldv_undef_ptr();
  return (tmp);
}
}
int ldv_pskb_expand_head_253(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags )
{
  void *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = ldv_undef_ptr();
  return ((int )((long )tmp));
}
}
struct sk_buff *ldv_skb_clone_255(struct sk_buff *ldv_func_arg1 , gfp_t flags )
{
  void *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = ldv_undef_ptr();
  return ((struct sk_buff *)tmp);
}
}
struct sk_buff *ldv_skb_copy_257(struct sk_buff const *ldv_func_arg1 , gfp_t flags )
{
  void *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = ldv_undef_ptr();
  return ((struct sk_buff *)tmp);
}
}
struct sk_buff *ldv___netdev_alloc_skb_258(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags )
{
  void *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = ldv_undef_ptr();
  return ((struct sk_buff *)tmp);
}
}
struct sk_buff *ldv___netdev_alloc_skb_259(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags )
{
  void *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = ldv_undef_ptr();
  return ((struct sk_buff *)tmp);
}
}
struct sk_buff *ldv___netdev_alloc_skb_260(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags )
{
  void *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = ldv_undef_ptr();
  return ((struct sk_buff *)tmp);
}
}
int ldv_pskb_expand_head_261(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags )
{
  void *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = ldv_undef_ptr();
  return ((int )((long )tmp));
}
}
int ldv_pskb_expand_head_262(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags )
{
  void *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = ldv_undef_ptr();
  return ((int )((long )tmp));
}
}
struct sk_buff *ldv_skb_clone_263(struct sk_buff *ldv_func_arg1 , gfp_t flags )
{
  void *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = ldv_undef_ptr();
  return ((struct sk_buff *)tmp);
}
}
__inline static void ldv_error(void)
{
  {
  ERROR: ;
  __VERIFIER_error();
}
}
bool ldv_is_err(void const *ptr )
{
  {
  return ((unsigned long )ptr > 2012UL);
}
}
void *ldv_err_ptr(long error )
{
  {
  return ((void *)(2012L - error));
}
}
long ldv_ptr_err(void const *ptr )
{
  {
  return ((long )(2012UL - (unsigned long )ptr));
}
}
bool ldv_is_err_or_null(void const *ptr )
{
  bool tmp ;
  int tmp___0 ;
  {
  if ((unsigned long )ptr == (unsigned long )((void const *)0)) {
    tmp___0 = 1;
  } else {
    tmp = ldv_is_err(ptr);
    if ((int )tmp) {
      tmp___0 = 1;
    } else {
      tmp___0 = 0;
    }
  }
  return ((bool )tmp___0);
}
}
int ldv_spin = 0;
void ldv_check_alloc_flags(gfp_t flags )
{
  {
  if (ldv_spin != 0 && (flags & 16U) != 0U) {
    ldv_error();
  } else {
  }
  return;
}
}
extern struct page *ldv_some_page(void) ;
struct page *ldv_check_alloc_flags_and_return_some_page(gfp_t flags )
{
  struct page *tmp ;
  {
  if (ldv_spin != 0 && (flags & 16U) != 0U) {
    ldv_error();
  } else {
  }
  tmp = ldv_some_page();
  return (tmp);
}
}
void ldv_check_alloc_nonatomic(void)
{
  {
  if (ldv_spin != 0) {
    ldv_error();
  } else {
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
  if (is_lock != 0) {
    return (0);
  } else {
    ldv_spin = 1;
    return (1);
  }
}
}
void *external_alloc(void);
struct workqueue_struct *__alloc_workqueue_key(const char *arg0, unsigned int arg1, int arg2, struct lock_class_key *arg3, const char *arg4, ...) {
  return (struct workqueue_struct *)external_alloc();
}
void __const_udelay(unsigned long arg0) {
  return;
}
void __copy_from_user_overflow() {
  return;
}
void __dev_kfree_skb_any(struct sk_buff *arg0, enum skb_free_reason arg1) {
  return;
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
void __list_add(struct list_head *arg0, struct list_head *arg1, struct list_head *arg2) {
  return;
}
void __might_fault(const char *arg0, int arg1) {
  return;
}
void __might_sleep(const char *arg0, int arg1, int arg2) {
  return;
}
unsigned long __VERIFIER_nondet_ulong(void);
unsigned long int __msecs_to_jiffies(const unsigned int arg0) {
  return __VERIFIER_nondet_ulong();
}
void __mutex_init(struct mutex *arg0, const char *arg1, struct lock_class_key *arg2) {
  return;
}
int __VERIFIER_nondet_int(void);
int __pci_register_driver(struct pci_driver *arg0, struct module *arg1, const char *arg2) {
  return __VERIFIER_nondet_int();
}
unsigned long __VERIFIER_nondet_ulong(void);
unsigned long int __phys_addr(unsigned long arg0) {
  return __VERIFIER_nondet_ulong();
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
void _dev_info(const struct device *arg0, const char *arg1, ...) {
  return;
}
void _il_apm_stop(struct il_priv *arg0) {
  return;
}
bool __VERIFIER_nondet_bool(void);
bool _il_grab_nic_access(struct il_priv *arg0) {
  return __VERIFIER_nondet_bool();
}
int __VERIFIER_nondet_int(void);
int _il_poll_bit(struct il_priv *arg0, u32 arg1, u32 arg2, u32 arg3, int arg4) {
  return __VERIFIER_nondet_int();
}
void _raw_spin_lock(raw_spinlock_t *arg0) {
  return;
}
void _raw_spin_lock_irq(raw_spinlock_t *arg0) {
  return;
}
void _raw_spin_unlock(raw_spinlock_t *arg0) {
  return;
}
void _raw_spin_unlock_irq(raw_spinlock_t *arg0) {
  return;
}
void _raw_spin_unlock_irqrestore(raw_spinlock_t *arg0, unsigned long arg1) {
  return;
}
bool __VERIFIER_nondet_bool(void);
bool cancel_delayed_work(struct delayed_work *arg0) {
  return __VERIFIER_nondet_bool();
}
bool __VERIFIER_nondet_bool(void);
bool cancel_delayed_work_sync(struct delayed_work *arg0) {
  return __VERIFIER_nondet_bool();
}
bool __VERIFIER_nondet_bool(void);
bool cancel_work_sync(struct work_struct *arg0) {
  return __VERIFIER_nondet_bool();
}
void complete(struct completion *arg0) {
  return;
}
void consume_skb(struct sk_buff *arg0) {
  return;
}
void debug_dma_map_page(struct device *arg0, struct page *arg1, size_t arg2, size_t arg3, int arg4, dma_addr_t arg5, bool arg6) {
  return;
}
void debug_dma_mapping_error(struct device *arg0, dma_addr_t arg1) {
  return;
}
void debug_dma_sync_single_for_cpu(struct device *arg0, dma_addr_t arg1, size_t arg2, int arg3) {
  return;
}
void debug_dma_sync_single_for_device(struct device *arg0, dma_addr_t arg1, size_t arg2, int arg3) {
  return;
}
void debug_dma_unmap_page(struct device *arg0, dma_addr_t arg1, size_t arg2, int arg3, bool arg4) {
  return;
}
int __VERIFIER_nondet_int(void);
int debug_lockdep_rcu_enabled() {
  return __VERIFIER_nondet_int();
}
void *external_alloc(void);
struct dentry *debugfs_create_file(const char *arg0, umode_t arg1, struct dentry *arg2, void *arg3, const struct file_operations *arg4) {
  return (struct dentry *)external_alloc();
}
void *external_alloc(void);
struct dentry *debugfs_create_u8(const char *arg0, umode_t arg1, struct dentry *arg2, u8 *arg3) {
  return (struct dentry *)external_alloc();
}
void debugfs_remove(struct dentry *arg0) {
  return;
}
long __VERIFIER_nondet_long(void);
loff_t default_llseek(struct file *arg0, loff_t arg1, int arg2) {
  return __VERIFIER_nondet_long();
}
int __VERIFIER_nondet_int(void);
int del_timer_sync(struct timer_list *arg0) {
  return __VERIFIER_nondet_int();
}
void destroy_workqueue(struct workqueue_struct *arg0) {
  return;
}
void dev_err(const struct device *arg0, const char *arg1, ...) {
  return;
}
void dev_warn(const struct device *arg0, const char *arg1, ...) {
  return;
}
void device_release_driver(struct device *arg0) {
  return;
}
void *external_alloc(void);
void *dma_alloc_attrs(struct device *arg0, size_t arg1, dma_addr_t *arg2, gfp_t arg3, struct dma_attrs *arg4) {
  return (void *)external_alloc();
}
void dma_free_attrs(struct device *arg0, size_t arg1, void *arg2, dma_addr_t arg3, struct dma_attrs *arg4) {
  return;
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
void flush_workqueue(struct workqueue_struct *arg0) {
  return;
}
void free_irq(unsigned int arg0, void *arg1) {
  return;
}
void *external_alloc(void);
struct ieee80211_hw *ieee80211_alloc_hw_nm(size_t arg0, const struct ieee80211_ops *arg1, const char *arg2) {
  return (struct ieee80211_hw *)external_alloc();
}
int __VERIFIER_nondet_int(void);
int ieee80211_channel_to_frequency(int arg0, enum ieee80211_band arg1) {
  return __VERIFIER_nondet_int();
}
void ieee80211_chswitch_done(struct ieee80211_vif *arg0, bool arg1) {
  return;
}
void *external_alloc(void);
struct ieee80211_sta *ieee80211_find_sta(struct ieee80211_vif *arg0, const u8 *arg1) {
  return (struct ieee80211_sta *)external_alloc();
}
void ieee80211_free_hw(struct ieee80211_hw *arg0) {
  return;
}
void ieee80211_get_tkip_p2k(struct ieee80211_key_conf *arg0, struct sk_buff *arg1, u8 *arg2) {
  return;
}
unsigned int __VERIFIER_nondet_uint(void);
unsigned int ieee80211_hdrlen(__le16 arg0) {
  return __VERIFIER_nondet_uint();
}
int __VERIFIER_nondet_int(void);
int ieee80211_rate_control_register(const struct rate_control_ops *arg0) {
  return __VERIFIER_nondet_int();
}
void ieee80211_rate_control_unregister(const struct rate_control_ops *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int ieee80211_register_hw(struct ieee80211_hw *arg0) {
  return __VERIFIER_nondet_int();
}
void ieee80211_restart_hw(struct ieee80211_hw *arg0) {
  return;
}
void ieee80211_rx(struct ieee80211_hw *arg0, struct sk_buff *arg1) {
  return;
}
void ieee80211_sta_block_awake(struct ieee80211_hw *arg0, struct ieee80211_sta *arg1, bool arg2) {
  return;
}
void ieee80211_start_tx_ba_cb_irqsafe(struct ieee80211_vif *arg0, const u8 *arg1, u16 arg2) {
  return;
}
int __VERIFIER_nondet_int(void);
int ieee80211_start_tx_ba_session(struct ieee80211_sta *arg0, u16 arg1, u16 arg2) {
  return __VERIFIER_nondet_int();
}
void ieee80211_stop_queue(struct ieee80211_hw *arg0, int arg1) {
  return;
}
void ieee80211_stop_queues(struct ieee80211_hw *arg0) {
  return;
}
void ieee80211_stop_tx_ba_cb_irqsafe(struct ieee80211_vif *arg0, const u8 *arg1, u16 arg2) {
  return;
}
int __VERIFIER_nondet_int(void);
int ieee80211_stop_tx_ba_session(struct ieee80211_sta *arg0, u16 arg1) {
  return __VERIFIER_nondet_int();
}
void ieee80211_tx_status_irqsafe(struct ieee80211_hw *arg0, struct sk_buff *arg1) {
  return;
}
void ieee80211_unregister_hw(struct ieee80211_hw *arg0) {
  return;
}
void ieee80211_wake_queue(struct ieee80211_hw *arg0, int arg1) {
  return;
}
void ieee80211_wake_queues(struct ieee80211_hw *arg0) {
  return;
}
unsigned int __VERIFIER_nondet_uint(void);
__le32 il_add_beacon_time(struct il_priv *arg0, u32 arg1, u32 arg2, u32 arg3) {
  return __VERIFIER_nondet_uint();
}
int __VERIFIER_nondet_int(void);
int il_add_station_common(struct il_priv *arg0, const u8 *arg1, bool arg2, struct ieee80211_sta *arg3, u8 *arg4) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int il_alloc_txq_mem(struct il_priv *arg0) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int il_apm_init(struct il_priv *arg0) {
  return __VERIFIER_nondet_int();
}
void il_apm_stop(struct il_priv *arg0) {
  return;
}
void il_bg_watchdog(unsigned long arg0) {
  return;
}
void il_cancel_scan_deferred_work(struct il_priv *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int il_check_rxon_cmd(struct il_priv *arg0) {
  return __VERIFIER_nondet_int();
}
void il_chswitch_done(struct il_priv *arg0, bool arg1) {
  return;
}
void il_clear_bit(struct il_priv *arg0, u32 arg1, u32 arg2) {
  return;
}
void il_clear_ucode_stations(struct il_priv *arg0) {
  return;
}
void il_cmd_queue_free(struct il_priv *arg0) {
  return;
}
void il_cmd_queue_unmap(struct il_priv *arg0) {
  return;
}
void il_connection_init_rx_config(struct il_priv *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int il_dbgfs_register(struct il_priv *arg0, const char *arg1) {
  return __VERIFIER_nondet_int();
}
void il_dbgfs_unregister(struct il_priv *arg0) {
  return;
}
void il_dealloc_bcast_stations(struct il_priv *arg0) {
  return;
}
void il_eeprom_free(struct il_priv *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int il_eeprom_init(struct il_priv *arg0) {
  return __VERIFIER_nondet_int();
}
unsigned short __VERIFIER_nondet_ushort(void);
u16 il_eeprom_query16(const struct il_priv *arg0, size_t arg1) {
  return __VERIFIER_nondet_ushort();
}
void *external_alloc(void);
const u8 *il_eeprom_query_addr(const struct il_priv *arg0, size_t arg1) {
  return (const u8 *)external_alloc();
}
unsigned short __VERIFIER_nondet_ushort(void);
u16 il_fill_probe_req(struct il_priv *arg0, struct ieee80211_mgmt *arg1, const u8 *arg2, const u8 *arg3, int arg4, int arg5) {
  return __VERIFIER_nondet_ushort();
}
int __VERIFIER_nondet_int(void);
int il_force_reset(struct il_priv *arg0, bool arg1) {
  return __VERIFIER_nondet_int();
}
void il_free_channel_map(struct il_priv *arg0) {
  return;
}
void il_free_geos(struct il_priv *arg0) {
  return;
}
void il_free_txq_mem(struct il_priv *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int il_full_rxon_required(struct il_priv *arg0) {
  return __VERIFIER_nondet_int();
}
unsigned short __VERIFIER_nondet_ushort(void);
u16 il_get_active_dwell_time(struct il_priv *arg0, enum ieee80211_band arg1, u8 arg2) {
  return __VERIFIER_nondet_ushort();
}
void *external_alloc(void);
const struct il_channel_info *il_get_channel_info(const struct il_priv *arg0, enum ieee80211_band arg1, u16 arg2) {
  return (const struct il_channel_info *)external_alloc();
}
void *external_alloc(void);
const char *il_get_cmd_string(u8 arg0) {
  return (const char *)external_alloc();
}
int __VERIFIER_nondet_int(void);
int il_get_free_ucode_key_idx(struct il_priv *arg0) {
  return __VERIFIER_nondet_int();
}
unsigned char __VERIFIER_nondet_uchar(void);
u8 il_get_lowest_plcp(struct il_priv *arg0) {
  return __VERIFIER_nondet_uchar();
}
unsigned short __VERIFIER_nondet_ushort(void);
u16 il_get_passive_dwell_time(struct il_priv *arg0, enum ieee80211_band arg1, struct ieee80211_vif *arg2) {
  return __VERIFIER_nondet_ushort();
}
int __VERIFIER_nondet_int(void);
int il_init_channel_map(struct il_priv *arg0) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int il_init_geos(struct il_priv *arg0) {
  return __VERIFIER_nondet_int();
}
void il_init_scan_params(struct il_priv *arg0) {
  return;
}
void il_irq_handle_error(struct il_priv *arg0) {
  return;
}
bool __VERIFIER_nondet_bool(void);
bool il_is_ht40_tx_allowed(struct il_priv *arg0, struct ieee80211_sta_ht_cap *arg1) {
  return __VERIFIER_nondet_bool();
}
int __VERIFIER_nondet_int(void);
irqreturn_t il_isr(int arg0, void *arg1) {
  return __VERIFIER_nondet_int();
}
void il_leds_exit(struct il_priv *arg0) {
  return;
}
void il_leds_init(struct il_priv *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int il_mac_add_interface(struct ieee80211_hw *arg0, struct ieee80211_vif *arg1) {
  return __VERIFIER_nondet_int();
}
void il_mac_bss_info_changed(struct ieee80211_hw *arg0, struct ieee80211_vif *arg1, struct ieee80211_bss_conf *arg2, u32 arg3) {
  return;
}
int __VERIFIER_nondet_int(void);
int il_mac_change_interface(struct ieee80211_hw *arg0, struct ieee80211_vif *arg1, enum nl80211_iftype arg2, bool arg3) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int il_mac_conf_tx(struct ieee80211_hw *arg0, struct ieee80211_vif *arg1, u16 arg2, const struct ieee80211_tx_queue_params *arg3) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int il_mac_config(struct ieee80211_hw *arg0, u32 arg1) {
  return __VERIFIER_nondet_int();
}
void il_mac_flush(struct ieee80211_hw *arg0, struct ieee80211_vif *arg1, u32 arg2, bool arg3) {
  return;
}
int __VERIFIER_nondet_int(void);
int il_mac_hw_scan(struct ieee80211_hw *arg0, struct ieee80211_vif *arg1, struct ieee80211_scan_request *arg2) {
  return __VERIFIER_nondet_int();
}
void il_mac_remove_interface(struct ieee80211_hw *arg0, struct ieee80211_vif *arg1) {
  return;
}
void il_mac_reset_tsf(struct ieee80211_hw *arg0, struct ieee80211_vif *arg1) {
  return;
}
int __VERIFIER_nondet_int(void);
int il_mac_sta_remove(struct ieee80211_hw *arg0, struct ieee80211_vif *arg1, struct ieee80211_sta *arg2) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int il_mac_tx_last_beacon(struct ieee80211_hw *arg0) {
  return __VERIFIER_nondet_int();
}
void il_power_initialize(struct il_priv *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int il_power_update_mode(struct il_priv *arg0, bool arg1) {
  return __VERIFIER_nondet_int();
}
unsigned char __VERIFIER_nondet_uchar(void);
u8 il_prep_station(struct il_priv *arg0, const u8 *arg1, bool arg2, struct ieee80211_sta *arg3) {
  return __VERIFIER_nondet_uchar();
}
void il_print_rx_config_cmd(struct il_priv *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int il_queue_space(const struct il_queue *arg0) {
  return __VERIFIER_nondet_int();
}
unsigned int __VERIFIER_nondet_uint(void);
u32 il_rd_prph(struct il_priv *arg0, u32 arg1) {
  return __VERIFIER_nondet_uint();
}
unsigned int __VERIFIER_nondet_uint(void);
u32 il_read_targ_mem(struct il_priv *arg0, u32 arg1) {
  return __VERIFIER_nondet_uint();
}
int __VERIFIER_nondet_int(void);
int il_remove_station(struct il_priv *arg0, const u8 arg1, const u8 *arg2) {
  return __VERIFIER_nondet_int();
}
void il_restore_stations(struct il_priv *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int il_rx_queue_alloc(struct il_priv *arg0) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int il_rx_queue_space(const struct il_rx_queue *arg0) {
  return __VERIFIER_nondet_int();
}
void il_rx_queue_update_write_ptr(struct il_priv *arg0, struct il_rx_queue *arg1) {
  return;
}
int __VERIFIER_nondet_int(void);
int il_scan_cancel(struct il_priv *arg0) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int il_scan_cancel_timeout(struct il_priv *arg0, unsigned long arg1) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int il_send_add_sta(struct il_priv *arg0, struct il_addsta_cmd *arg1, u8 arg2) {
  return __VERIFIER_nondet_int();
}
void il_send_bt_config(struct il_priv *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int il_send_cmd(struct il_priv *arg0, struct il_host_cmd *arg1) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int il_send_cmd_pdu(struct il_priv *arg0, u8 arg1, u16 arg2, const void *arg3) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int il_send_cmd_pdu_async(struct il_priv *arg0, u8 arg1, u16 arg2, const void *arg3, void (*arg4)(struct il_priv *, struct il_device_cmd *, struct il_rx_pkt *)) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int il_send_cmd_sync(struct il_priv *arg0, struct il_host_cmd *arg1) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int il_send_lq_cmd(struct il_priv *arg0, struct il_link_quality_cmd *arg1, u8 arg2, bool arg3) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int il_send_rxon_timing(struct il_priv *arg0) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int il_send_stats_request(struct il_priv *arg0, u8 arg1, bool arg2) {
  return __VERIFIER_nondet_int();
}
void il_set_bit(struct il_priv *arg0, u32 arg1, u32 arg2) {
  return;
}
int __VERIFIER_nondet_int(void);
int il_set_decrypted_flag(struct il_priv *arg0, struct ieee80211_hdr *arg1, u32 arg2, struct ieee80211_rx_status *arg3) {
  return __VERIFIER_nondet_int();
}
void il_set_flags_for_band(struct il_priv *arg0, enum ieee80211_band arg1, struct ieee80211_vif *arg2) {
  return;
}
void il_set_rate(struct il_priv *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int il_set_rxon_channel(struct il_priv *arg0, struct ieee80211_channel *arg1) {
  return __VERIFIER_nondet_int();
}
void il_set_rxon_ht(struct il_priv *arg0, struct il_ht_config *arg1) {
  return;
}
void il_set_rxon_hwcrypto(struct il_priv *arg0, int arg1) {
  return;
}
int __VERIFIER_nondet_int(void);
int il_set_tx_power(struct il_priv *arg0, s8 arg1, bool arg2) {
  return __VERIFIER_nondet_int();
}
void il_setup_rx_scan_handlers(struct il_priv *arg0) {
  return;
}
void il_setup_scan_deferred_work(struct il_priv *arg0) {
  return;
}
void il_setup_watchdog(struct il_priv *arg0) {
  return;
}
void il_tx_cmd_complete(struct il_priv *arg0, struct il_rx_buf *arg1) {
  return;
}
void il_tx_cmd_protection(struct il_priv *arg0, struct ieee80211_tx_info *arg1, __le16 arg2, __le32 *arg3) {
  return;
}
void il_tx_queue_free(struct il_priv *arg0, int arg1) {
  return;
}
int __VERIFIER_nondet_int(void);
int il_tx_queue_init(struct il_priv *arg0, u32 arg1) {
  return __VERIFIER_nondet_int();
}
void il_tx_queue_reset(struct il_priv *arg0, u32 arg1) {
  return;
}
void il_tx_queue_unmap(struct il_priv *arg0, int arg1) {
  return;
}
void il_txq_update_write_ptr(struct il_priv *arg0, struct il_tx_queue *arg1) {
  return;
}
void il_update_stats(struct il_priv *arg0, bool arg1, __le16 arg2, u16 arg3) {
  return;
}
unsigned int __VERIFIER_nondet_uint(void);
u32 il_usecs_to_beacons(struct il_priv *arg0, u32 arg1, u32 arg2) {
  return __VERIFIER_nondet_uint();
}
void il_wr_prph(struct il_priv *arg0, u32 arg1, u32 arg2) {
  return;
}
void il_write_targ_mem(struct il_priv *arg0, u32 arg1, u32 arg2) {
  return;
}
void init_timer_key(struct timer_list *arg0, unsigned int arg1, const char *arg2, struct lock_class_key *arg3) {
  return;
}
void iounmap(volatile void *arg0) {
  return;
}
unsigned int __VERIFIER_nondet_uint(void);
unsigned int jiffies_to_msecs(const unsigned long arg0) {
  return __VERIFIER_nondet_uint();
}
int __VERIFIER_nondet_int(void);
int kstrtoull(const char *arg0, unsigned int arg1, unsigned long long *arg2) {
  return __VERIFIER_nondet_int();
}
void ldv_check_final_state() {
  return;
}
void ldv_initialize() {
  return;
}
int __VERIFIER_nondet_int(void);
int ldv_probe_10() {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int ldv_release_10() {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int ldv_release_12() {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int ldv_release_13() {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int ldv_release_14() {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int ldv_shutdown_15() {
  return __VERIFIER_nondet_int();
}
void *external_alloc(void);
struct page *ldv_some_page() {
  return (struct page *)external_alloc();
}
void list_del(struct list_head *arg0) {
  return;
}
void lock_acquire(struct lockdep_map *arg0, unsigned int arg1, int arg2, int arg3, int arg4, struct lockdep_map *arg5, unsigned long arg6) {
  return;
}
int __VERIFIER_nondet_int(void);
int lock_is_held(struct lockdep_map *arg0) {
  return __VERIFIER_nondet_int();
}
void lock_release(struct lockdep_map *arg0, int arg1, unsigned long arg2) {
  return;
}
void lockdep_init_map(struct lockdep_map *arg0, const char *arg1, struct lock_class_key *arg2, int arg3) {
  return;
}
void lockdep_rcu_suspicious(const char *arg0, const int arg1, const char *arg2) {
  return;
}
int __VERIFIER_nondet_int(void);
int mod_timer(struct timer_list *arg0, unsigned long arg1) {
  return __VERIFIER_nondet_int();
}
void mutex_lock_nested(struct mutex *arg0, unsigned int arg1) {
  return;
}
void mutex_unlock(struct mutex *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int net_ratelimit() {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int pci_bus_read_config_word(struct pci_bus *arg0, unsigned int arg1, int arg2, u16 *arg3) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int pci_bus_write_config_byte(struct pci_bus *arg0, unsigned int arg1, int arg2, u8 arg3) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int pci_bus_write_config_word(struct pci_bus *arg0, unsigned int arg1, int arg2, u16 arg3) {
  return __VERIFIER_nondet_int();
}
void pci_disable_device(struct pci_dev *arg0) {
  return;
}
void pci_disable_link_state(struct pci_dev *arg0, int arg1) {
  return;
}
void pci_disable_msi(struct pci_dev *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int pci_enable_device(struct pci_dev *arg0) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int pci_enable_msi_range(struct pci_dev *arg0, int arg1, int arg2) {
  return __VERIFIER_nondet_int();
}
void *external_alloc(void);
void *pci_ioremap_bar(struct pci_dev *arg0, int arg1) {
  return (void *)external_alloc();
}
void pci_release_regions(struct pci_dev *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int pci_request_regions(struct pci_dev *arg0, const char *arg1) {
  return __VERIFIER_nondet_int();
}
void pci_set_master(struct pci_dev *arg0) {
  return;
}
void pci_unregister_driver(struct pci_driver *arg0) {
  return;
}
long __VERIFIER_nondet_long(void);
long int prepare_to_wait_event(wait_queue_head_t *arg0, wait_queue_t *arg1, int arg2) {
  return __VERIFIER_nondet_long();
}
void print_hex_dump(const char *arg0, const char *arg1, int arg2, int arg3, int arg4, const void *arg5, size_t arg6, bool arg7) {
  return;
}
int __VERIFIER_nondet_int(void);
int printk(const char *arg0, ...) {
  return __VERIFIER_nondet_int();
}
bool __VERIFIER_nondet_bool(void);
bool queue_delayed_work_on(int arg0, struct workqueue_struct *arg1, struct delayed_work *arg2, unsigned long arg3) {
  return __VERIFIER_nondet_bool();
}
bool __VERIFIER_nondet_bool(void);
bool queue_work_on(int arg0, struct workqueue_struct *arg1, struct work_struct *arg2) {
  return __VERIFIER_nondet_bool();
}
bool __VERIFIER_nondet_bool(void);
bool rate_control_send_low(struct ieee80211_sta *arg0, void *arg1, struct ieee80211_tx_rate_control *arg2) {
  return __VERIFIER_nondet_bool();
}
bool __VERIFIER_nondet_bool(void);
bool rcu_is_watching() {
  return __VERIFIER_nondet_bool();
}
void release_firmware(const struct firmware *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int request_firmware_nowait(struct module *arg0, bool arg1, const char *arg2, struct device *arg3, gfp_t arg4, void *arg5, void (*arg6)(const struct firmware *, void *)) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int request_threaded_irq(unsigned int arg0, irqreturn_t (*arg1)(int, void *), irqreturn_t (*arg2)(int, void *), unsigned long arg3, const char *arg4, void *arg5) {
  return __VERIFIER_nondet_int();
}
long __VERIFIER_nondet_long(void);
long int schedule_timeout(long arg0) {
  return __VERIFIER_nondet_long();
}
int __VERIFIER_nondet_int(void);
int scnprintf(char *arg0, size_t arg1, const char *arg2, ...) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int simple_open(struct inode *arg0, struct file *arg1) {
  return __VERIFIER_nondet_int();
}
long __VERIFIER_nondet_long(void);
ssize_t simple_read_from_buffer(void *arg0, size_t arg1, loff_t *arg2, const void *arg3, size_t arg4) {
  return __VERIFIER_nondet_long();
}
void skb_add_rx_frag(struct sk_buff *arg0, int arg1, struct page *arg2, int arg3, int arg4, unsigned int arg5) {
  return;
}
void *external_alloc(void);
unsigned char *skb_put(struct sk_buff *arg0, unsigned int arg1) {
  return (unsigned char *)external_alloc();
}
unsigned long __VERIFIER_nondet_ulong(void);
__kernel_size_t strnlen(const char *arg0, __kernel_size_t arg1) {
  return __VERIFIER_nondet_ulong();
}
void synchronize_irq(unsigned int arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int sysfs_create_group(struct kobject *arg0, const struct attribute_group *arg1) {
  return __VERIFIER_nondet_int();
}
void sysfs_remove_group(struct kobject *arg0, const struct attribute_group *arg1) {
  return;
}
void tasklet_init(struct tasklet_struct *arg0, void (*arg1)(unsigned long), unsigned long arg2) {
  return;
}
void tasklet_kill(struct tasklet_struct *arg0) {
  return;
}
void wait_for_completion(struct completion *arg0) {
  return;
}
void warn_slowpath_fmt(const char *arg0, const int arg1, const char *arg2, ...) {
  return;
}
void warn_slowpath_null(const char *arg0, const int arg1) {
  return;
}
void wiphy_rfkill_set_hw_state(struct wiphy *arg0, bool arg1) {
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
