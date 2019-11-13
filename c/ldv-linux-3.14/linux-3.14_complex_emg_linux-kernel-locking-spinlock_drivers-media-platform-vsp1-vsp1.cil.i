struct device;
typedef signed char __s8;
typedef unsigned char __u8;
typedef short __s16;
typedef unsigned short __u16;
typedef int __s32;
typedef unsigned int __u32;
typedef long long __s64;
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
typedef __kernel_long_t __kernel_suseconds_t;
typedef unsigned int __kernel_uid32_t;
typedef unsigned int __kernel_gid32_t;
typedef __kernel_ulong_t __kernel_size_t;
typedef __kernel_long_t __kernel_ssize_t;
typedef long long __kernel_loff_t;
typedef __kernel_long_t __kernel_time_t;
typedef __kernel_long_t __kernel_clock_t;
typedef int __kernel_timer_t;
typedef int __kernel_clockid_t;
typedef __u32 __kernel_dev_t;
typedef __kernel_dev_t dev_t;
typedef unsigned short umode_t;
typedef __kernel_pid_t pid_t;
typedef __kernel_clockid_t clockid_t;
typedef _Bool bool;
typedef __kernel_uid32_t uid_t;
typedef __kernel_gid32_t gid_t;
typedef unsigned long uintptr_t;
typedef __kernel_loff_t loff_t;
typedef __kernel_size_t size_t;
typedef __kernel_ssize_t ssize_t;
typedef __kernel_time_t time_t;
typedef __s32 int32_t;
typedef __u32 uint32_t;
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
typedef u16 __ticket_t;
typedef u32 __ticketpair_t;
struct __raw_tickets {
   __ticket_t head ;
   __ticket_t tail ;
};
union __anonunion____missing_field_name_8 {
   __ticketpair_t head_tail ;
   struct __raw_tickets tickets ;
};
struct arch_spinlock {
   union __anonunion____missing_field_name_8 __annonCompField4 ;
};
typedef struct arch_spinlock arch_spinlock_t;
struct __anonstruct____missing_field_name_10 {
   u32 read ;
   s32 write ;
};
union __anonunion_arch_rwlock_t_9 {
   s64 lock ;
   struct __anonstruct____missing_field_name_10 __annonCompField5 ;
};
typedef union __anonunion_arch_rwlock_t_9 arch_rwlock_t;
struct task_struct;
struct lockdep_map;
struct kernel_symbol {
   unsigned long value ;
   char const *name ;
};
struct module;
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
struct __anonstruct____missing_field_name_12 {
   unsigned int a ;
   unsigned int b ;
};
struct __anonstruct____missing_field_name_13 {
   u16 limit0 ;
   u16 base0 ;
   unsigned int base1 : 8 ;
   unsigned int type : 4 ;
   unsigned int s : 1 ;
   unsigned int dpl : 2 ;
   unsigned int p : 1 ;
   unsigned int limit : 4 ;
   unsigned int avl : 1 ;
   unsigned int l : 1 ;
   unsigned int d : 1 ;
   unsigned int g : 1 ;
   unsigned int base2 : 8 ;
};
union __anonunion____missing_field_name_11 {
   struct __anonstruct____missing_field_name_12 __annonCompField6 ;
   struct __anonstruct____missing_field_name_13 __annonCompField7 ;
};
struct desc_struct {
   union __anonunion____missing_field_name_11 __annonCompField8 ;
};
typedef unsigned long pgdval_t;
typedef unsigned long pgprotval_t;
struct pgprot {
   pgprotval_t pgprot ;
};
typedef struct pgprot pgprot_t;
struct __anonstruct_pgd_t_15 {
   pgdval_t pgd ;
};
typedef struct __anonstruct_pgd_t_15 pgd_t;
struct page;
typedef struct page *pgtable_t;
struct file;
struct seq_file;
struct thread_struct;
struct mm_struct;
struct cpumask;
typedef void (*ctor_fn_t)(void);
struct file_operations;
struct completion;
struct pid;
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
union __anonunion____missing_field_name_18 {
   struct pt_regs *regs ;
   struct kernel_vm86_regs *vm86 ;
};
struct math_emu_info {
   long ___orig_eip ;
   union __anonunion____missing_field_name_18 __annonCompField9 ;
};
struct bug_entry {
   int bug_addr_disp ;
   int file_disp ;
   unsigned short line ;
   unsigned short flags ;
};
struct cpumask {
   unsigned long bits[128U] ;
};
typedef struct cpumask cpumask_t;
typedef struct cpumask *cpumask_var_t;
struct static_key;
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
struct __anonstruct____missing_field_name_23 {
   u64 rip ;
   u64 rdp ;
};
struct __anonstruct____missing_field_name_24 {
   u32 fip ;
   u32 fcs ;
   u32 foo ;
   u32 fos ;
};
union __anonunion____missing_field_name_22 {
   struct __anonstruct____missing_field_name_23 __annonCompField13 ;
   struct __anonstruct____missing_field_name_24 __annonCompField14 ;
};
union __anonunion____missing_field_name_25 {
   u32 padding1[12U] ;
   u32 sw_reserved[12U] ;
};
struct i387_fxsave_struct {
   u16 cwd ;
   u16 swd ;
   u16 twd ;
   u16 fop ;
   union __anonunion____missing_field_name_22 __annonCompField15 ;
   u32 mxcsr ;
   u32 mxcsr_mask ;
   u32 st_space[32U] ;
   u32 xmm_space[64U] ;
   u32 padding[12U] ;
   union __anonunion____missing_field_name_25 __annonCompField16 ;
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
typedef atomic64_t atomic_long_t;
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
   unsigned int class_idx : 13 ;
   unsigned int irq_context : 2 ;
   unsigned int trylock : 1 ;
   unsigned int read : 2 ;
   unsigned int check : 2 ;
   unsigned int hardirqs_off : 1 ;
   unsigned int references : 11 ;
};
struct raw_spinlock {
   arch_spinlock_t raw_lock ;
   unsigned int magic ;
   unsigned int owner_cpu ;
   void *owner ;
   struct lockdep_map dep_map ;
};
typedef struct raw_spinlock raw_spinlock_t;
struct __anonstruct____missing_field_name_29 {
   u8 __padding[24U] ;
   struct lockdep_map dep_map ;
};
union __anonunion____missing_field_name_28 {
   struct raw_spinlock rlock ;
   struct __anonstruct____missing_field_name_29 __annonCompField18 ;
};
struct spinlock {
   union __anonunion____missing_field_name_28 __annonCompField19 ;
};
typedef struct spinlock spinlock_t;
struct __anonstruct_rwlock_t_30 {
   arch_rwlock_t raw_lock ;
   unsigned int magic ;
   unsigned int owner_cpu ;
   void *owner ;
   struct lockdep_map dep_map ;
};
typedef struct __anonstruct_rwlock_t_30 rwlock_t;
struct resource {
   resource_size_t start ;
   resource_size_t end ;
   char const *name ;
   unsigned long flags ;
   struct resource *parent ;
   struct resource *sibling ;
   struct resource *child ;
};
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
struct timespec;
struct jump_entry;
struct static_key_mod;
struct static_key {
   atomic_t enabled ;
   struct jump_entry *entries ;
   struct static_key_mod *next ;
};
typedef u64 jump_label_t;
struct jump_entry {
   jump_label_t code ;
   jump_label_t target ;
   jump_label_t key ;
};
struct seqcount {
   unsigned int sequence ;
   struct lockdep_map dep_map ;
};
typedef struct seqcount seqcount_t;
struct __wait_queue_head {
   spinlock_t lock ;
   struct list_head task_list ;
};
typedef struct __wait_queue_head wait_queue_head_t;
struct completion {
   unsigned int done ;
   wait_queue_head_t wait ;
};
struct idr_layer {
   int prefix ;
   unsigned long bitmap[4U] ;
   struct idr_layer *ary[256U] ;
   int count ;
   int layer ;
   struct callback_head callback_head ;
};
struct idr {
   struct idr_layer *hint ;
   struct idr_layer *top ;
   struct idr_layer *id_free ;
   int layers ;
   int id_free_cnt ;
   int cur ;
   spinlock_t lock ;
};
struct ida_bitmap {
   long nr_busy ;
   unsigned long bitmap[15U] ;
};
struct ida {
   struct idr idr ;
   struct ida_bitmap *free_bitmap ;
};
struct rb_node {
   unsigned long __rb_parent_color ;
   struct rb_node *rb_right ;
   struct rb_node *rb_left ;
};
struct rb_root {
   struct rb_node *rb_node ;
};
struct dentry;
struct iattr;
struct vm_area_struct;
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
union __anonunion_u_36 {
   struct completion *completion ;
   struct kernfs_node *removed_list ;
};
union __anonunion____missing_field_name_37 {
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
   union __anonunion_u_36 u ;
   void const *ns ;
   unsigned int hash ;
   union __anonunion____missing_field_name_37 __annonCompField21 ;
   void *priv ;
   unsigned short flags ;
   umode_t mode ;
   unsigned int ino ;
   struct kernfs_iattrs *iattr ;
};
struct kernfs_dir_ops {
   int (*mkdir)(struct kernfs_node * , char const * , umode_t ) ;
   int (*rmdir)(struct kernfs_node * ) ;
   int (*rename)(struct kernfs_node * , struct kernfs_node * , char const * ) ;
};
struct kernfs_root {
   struct kernfs_node *kn ;
   struct ida ino_ida ;
   struct kernfs_dir_ops *dir_ops ;
};
struct vm_operations_struct;
struct kernfs_open_file {
   struct kernfs_node *kn ;
   struct file *file ;
   struct mutex mutex ;
   int event ;
   struct list_head list ;
   bool mmapped ;
   struct vm_operations_struct const *vm_ops ;
};
struct kernfs_ops {
   int (*seq_show)(struct seq_file * , void * ) ;
   void *(*seq_start)(struct seq_file * , loff_t * ) ;
   void *(*seq_next)(struct seq_file * , void * , loff_t * ) ;
   void (*seq_stop)(struct seq_file * , void * ) ;
   ssize_t (*read)(struct kernfs_open_file * , char * , size_t , loff_t ) ;
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
struct timespec {
   __kernel_time_t tv_sec ;
   long tv_nsec ;
};
struct timeval {
   __kernel_time_t tv_sec ;
   __kernel_suseconds_t tv_usec ;
};
struct user_namespace;
struct __anonstruct_kuid_t_38 {
   uid_t val ;
};
typedef struct __anonstruct_kuid_t_38 kuid_t;
struct __anonstruct_kgid_t_39 {
   gid_t val ;
};
typedef struct __anonstruct_kgid_t_39 kgid_t;
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
struct bin_attribute;
struct attribute {
   char const *name ;
   umode_t mode ;
   bool ignore_lockdep : 1 ;
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
   unsigned int state_initialized : 1 ;
   unsigned int state_in_sysfs : 1 ;
   unsigned int state_add_uevent_sent : 1 ;
   unsigned int state_remove_uevent_sent : 1 ;
   unsigned int uevent_suppress : 1 ;
};
struct kobj_type {
   void (*release)(struct kobject * ) ;
   struct sysfs_ops const *sysfs_ops ;
   struct attribute **default_attrs ;
   struct kobj_ns_type_operations const *(*child_ns_type)(struct kobject * ) ;
   void const *(*namespace)(struct kobject * ) ;
};
struct kobj_uevent_env {
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
struct klist_node;
struct klist_node {
   void *n_klist ;
   struct list_head n_node ;
   struct kref n_ref ;
};
struct __anonstruct_nodemask_t_40 {
   unsigned long bits[16U] ;
};
typedef struct __anonstruct_nodemask_t_40 nodemask_t;
struct path;
struct inode;
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
   unsigned int can_wakeup : 1 ;
   unsigned int async_suspend : 1 ;
   bool is_prepared : 1 ;
   bool is_suspended : 1 ;
   bool ignore_children : 1 ;
   bool early_init : 1 ;
   spinlock_t lock ;
   struct list_head entry ;
   struct completion completion ;
   struct wakeup_source *wakeup ;
   bool wakeup_path : 1 ;
   bool syscore : 1 ;
   struct timer_list suspend_timer ;
   unsigned long timer_expires ;
   struct work_struct work ;
   wait_queue_head_t wait_queue ;
   atomic_t usage_count ;
   atomic_t child_count ;
   unsigned int disable_depth : 3 ;
   unsigned int idle_notification : 1 ;
   unsigned int request_pending : 1 ;
   unsigned int deferred_resume : 1 ;
   unsigned int run_wake : 1 ;
   unsigned int runtime_auto : 1 ;
   unsigned int no_callbacks : 1 ;
   unsigned int irq_safe : 1 ;
   unsigned int use_autosuspend : 1 ;
   unsigned int timer_autosuspends : 1 ;
   unsigned int memalloc_noio : 1 ;
   enum rpm_request request ;
   enum rpm_status runtime_status ;
   int runtime_error ;
   int autosuspend_delay ;
   unsigned long last_busy ;
   unsigned long active_jiffies ;
   unsigned long suspended_jiffies ;
   unsigned long accounting_timestamp ;
   struct pm_subsys_data *subsys_data ;
   struct dev_pm_qos *qos ;
};
struct dev_pm_domain {
   struct dev_pm_ops ops ;
};
struct rw_semaphore;
struct rw_semaphore {
   long count ;
   raw_spinlock_t wait_lock ;
   struct list_head wait_list ;
   struct lockdep_map dep_map ;
};
struct __anonstruct_mm_context_t_105 {
   void *ldt ;
   int size ;
   unsigned short ia32_compat ;
   struct mutex lock ;
   void *vdso ;
};
typedef struct __anonstruct_mm_context_t_105 mm_context_t;
struct device_node;
struct llist_node;
struct llist_node {
   struct llist_node *next ;
};
struct dma_map_ops;
struct dev_archdata {
   struct dma_map_ops *dma_ops ;
   void *iommu ;
};
struct pdev_archdata {
};
struct device_private;
struct device_driver;
struct driver_private;
struct class;
struct subsys_private;
struct bus_type;
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
struct of_device_id;
struct acpi_device_id;
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
   struct dev_pm_info power ;
   struct dev_pm_domain *pm_domain ;
   struct dev_pin_info *pins ;
   int numa_node ;
   u64 *dma_mask ;
   u64 coherent_dma_mask ;
   struct device_dma_parameters *dma_parms ;
   struct list_head dma_pools ;
   struct dma_coherent_mem *dma_mem ;
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
   bool offline_disabled : 1 ;
   bool offline : 1 ;
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
   bool active : 1 ;
   bool autosleep_enabled : 1 ;
};
struct cdev {
   struct kobject kobj ;
   struct module *owner ;
   struct file_operations const *ops ;
   struct list_head list ;
   dev_t dev ;
   unsigned int count ;
};
struct backing_dev_info;
enum iio_chan_type {
    IIO_VOLTAGE = 0,
    IIO_CURRENT = 1,
    IIO_POWER = 2,
    IIO_ACCEL = 3,
    IIO_ANGL_VEL = 4,
    IIO_MAGN = 5,
    IIO_LIGHT = 6,
    IIO_INTENSITY = 7,
    IIO_PROXIMITY = 8,
    IIO_TEMP = 9,
    IIO_INCLI = 10,
    IIO_ROT = 11,
    IIO_ANGL = 12,
    IIO_TIMESTAMP = 13,
    IIO_CAPACITANCE = 14,
    IIO_ALTVOLTAGE = 15,
    IIO_CCT = 16,
    IIO_PRESSURE = 17,
    IIO_HUMIDITYRELATIVE = 18
} ;
enum iio_event_type {
    IIO_EV_TYPE_THRESH = 0,
    IIO_EV_TYPE_MAG = 1,
    IIO_EV_TYPE_ROC = 2,
    IIO_EV_TYPE_THRESH_ADAPTIVE = 3,
    IIO_EV_TYPE_MAG_ADAPTIVE = 4
} ;
enum iio_event_info {
    IIO_EV_INFO_ENABLE = 0,
    IIO_EV_INFO_VALUE = 1,
    IIO_EV_INFO_HYSTERESIS = 2
} ;
enum iio_event_direction {
    IIO_EV_DIR_EITHER = 0,
    IIO_EV_DIR_RISING = 1,
    IIO_EV_DIR_FALLING = 2
} ;
enum iio_shared_by {
    IIO_SEPARATE = 0,
    IIO_SHARED_BY_TYPE = 1,
    IIO_SHARED_BY_DIR = 2,
    IIO_SHARED_BY_ALL = 3
} ;
enum iio_endian {
    IIO_CPU = 0,
    IIO_BE = 1,
    IIO_LE = 2
} ;
struct iio_chan_spec;
struct iio_dev;
struct iio_chan_spec_ext_info {
   char const *name ;
   enum iio_shared_by shared ;
   ssize_t (*read)(struct iio_dev * , uintptr_t , struct iio_chan_spec const * ,
                   char * ) ;
   ssize_t (*write)(struct iio_dev * , uintptr_t , struct iio_chan_spec const * ,
                    char const * , size_t ) ;
   uintptr_t private ;
};
struct iio_event_spec {
   enum iio_event_type type ;
   enum iio_event_direction dir ;
   unsigned long mask_separate ;
   unsigned long mask_shared_by_type ;
   unsigned long mask_shared_by_dir ;
   unsigned long mask_shared_by_all ;
};
struct __anonstruct_scan_type_133 {
   char sign ;
   u8 realbits ;
   u8 storagebits ;
   u8 shift ;
   enum iio_endian endianness ;
};
struct iio_chan_spec {
   enum iio_chan_type type ;
   int channel ;
   int channel2 ;
   unsigned long address ;
   int scan_index ;
   struct __anonstruct_scan_type_133 scan_type ;
   long info_mask_separate ;
   long info_mask_shared_by_type ;
   long info_mask_shared_by_dir ;
   long info_mask_shared_by_all ;
   struct iio_event_spec const *event_spec ;
   unsigned int num_event_specs ;
   struct iio_chan_spec_ext_info const *ext_info ;
   char const *extend_name ;
   char const *datasheet_name ;
   unsigned int modified : 1 ;
   unsigned int indexed : 1 ;
   unsigned int output : 1 ;
   unsigned int differential : 1 ;
};
struct iio_trigger;
struct iio_info {
   struct module *driver_module ;
   struct attribute_group *event_attrs ;
   struct attribute_group const *attrs ;
   int (*read_raw)(struct iio_dev * , struct iio_chan_spec const * , int * , int * ,
                   long ) ;
   int (*write_raw)(struct iio_dev * , struct iio_chan_spec const * , int , int ,
                    long ) ;
   int (*write_raw_get_fmt)(struct iio_dev * , struct iio_chan_spec const * , long ) ;
   int (*read_event_config)(struct iio_dev * , struct iio_chan_spec const * , enum iio_event_type ,
                            enum iio_event_direction ) ;
   int (*write_event_config)(struct iio_dev * , struct iio_chan_spec const * , enum iio_event_type ,
                             enum iio_event_direction , int ) ;
   int (*read_event_value)(struct iio_dev * , struct iio_chan_spec const * , enum iio_event_type ,
                           enum iio_event_direction , enum iio_event_info , int * ,
                           int * ) ;
   int (*write_event_value)(struct iio_dev * , struct iio_chan_spec const * , enum iio_event_type ,
                            enum iio_event_direction , enum iio_event_info , int ,
                            int ) ;
   int (*validate_trigger)(struct iio_dev * , struct iio_trigger * ) ;
   int (*update_scan_mode)(struct iio_dev * , unsigned long const * ) ;
   int (*debugfs_reg_access)(struct iio_dev * , unsigned int , unsigned int , unsigned int * ) ;
};
struct iio_buffer_setup_ops {
   int (*preenable)(struct iio_dev * ) ;
   int (*postenable)(struct iio_dev * ) ;
   int (*predisable)(struct iio_dev * ) ;
   int (*postdisable)(struct iio_dev * ) ;
   bool (*validate_scan_mask)(struct iio_dev * , unsigned long const * ) ;
};
struct iio_event_interface;
struct iio_buffer;
struct iio_poll_func;
struct iio_dev {
   int id ;
   int modes ;
   int currentmode ;
   struct device dev ;
   struct iio_event_interface *event_interface ;
   struct iio_buffer *buffer ;
   struct list_head buffer_list ;
   int scan_bytes ;
   struct mutex mlock ;
   unsigned long const *available_scan_masks ;
   unsigned int masklength ;
   unsigned long const *active_scan_mask ;
   bool scan_timestamp ;
   unsigned int scan_index_timestamp ;
   struct iio_trigger *trig ;
   struct iio_poll_func *pollfunc ;
   struct iio_chan_spec const *channels ;
   int num_channels ;
   struct list_head channel_attr_list ;
   struct attribute_group chan_attr_group ;
   char const *name ;
   struct iio_info const *info ;
   struct mutex info_exist_lock ;
   struct iio_buffer_setup_ops const *setup_ops ;
   struct cdev chrdev ;
   struct attribute_group const *groups[7U] ;
   int groupcounter ;
   unsigned long flags ;
   struct dentry *debugfs_dentry ;
   unsigned int cached_reg_addr ;
};
typedef unsigned long kernel_ulong_t;
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
struct platform_device_id {
   char name[20U] ;
   kernel_ulong_t driver_data ;
};
struct mfd_cell;
struct platform_device {
   char const *name ;
   int id ;
   bool id_auto ;
   struct device dev ;
   u32 num_resources ;
   struct resource *resource ;
   struct platform_device_id const *id_entry ;
   struct mfd_cell *mfd_cell ;
   struct pdev_archdata archdata ;
};
struct platform_driver {
   int (*probe)(struct platform_device * ) ;
   int (*remove)(struct platform_device * ) ;
   void (*shutdown)(struct platform_device * ) ;
   int (*suspend)(struct platform_device * , pm_message_t ) ;
   int (*resume)(struct platform_device * ) ;
   struct device_driver driver ;
   struct platform_device_id const *id_table ;
   bool prevent_deferred_probe ;
};
enum irqreturn {
    IRQ_NONE = 0,
    IRQ_HANDLED = 1,
    IRQ_WAKE_THREAD = 2
} ;
typedef enum irqreturn irqreturn_t;
struct exception_table_entry {
   int insn ;
   int fixup ;
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
struct rtc_time {
   int tm_sec ;
   int tm_min ;
   int tm_hour ;
   int tm_mday ;
   int tm_mon ;
   int tm_year ;
   int tm_wday ;
   int tm_yday ;
   int tm_isdst ;
};
struct rtc_wkalrm {
   unsigned char enabled ;
   unsigned char pending ;
   struct rtc_time time ;
};
struct hlist_bl_node;
struct hlist_bl_head {
   struct hlist_bl_node *first ;
};
struct hlist_bl_node {
   struct hlist_bl_node *next ;
   struct hlist_bl_node **pprev ;
};
struct __anonstruct____missing_field_name_140 {
   spinlock_t lock ;
   unsigned int count ;
};
union __anonunion____missing_field_name_139 {
   struct __anonstruct____missing_field_name_140 __annonCompField34 ;
};
struct lockref {
   union __anonunion____missing_field_name_139 __annonCompField35 ;
};
struct nameidata;
struct vfsmount;
struct __anonstruct____missing_field_name_142 {
   u32 hash ;
   u32 len ;
};
union __anonunion____missing_field_name_141 {
   struct __anonstruct____missing_field_name_142 __annonCompField36 ;
   u64 hash_len ;
};
struct qstr {
   union __anonunion____missing_field_name_141 __annonCompField37 ;
   unsigned char const *name ;
};
struct dentry_operations;
union __anonunion_d_u_143 {
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
   union __anonunion_d_u_143 d_u ;
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
struct radix_tree_node;
struct radix_tree_root {
   unsigned int height ;
   gfp_t gfp_mask ;
   struct radix_tree_node *rnode ;
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
struct kernel_cap_struct {
   __u32 cap[2U] ;
};
typedef struct kernel_cap_struct kernel_cap_t;
struct fiemap_extent {
   __u64 fe_logical ;
   __u64 fe_physical ;
   __u64 fe_length ;
   __u64 fe_reserved64[2U] ;
   __u32 fe_flags ;
   __u32 fe_reserved[3U] ;
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
enum migrate_mode {
    MIGRATE_ASYNC = 0,
    MIGRATE_SYNC_LIGHT = 1,
    MIGRATE_SYNC = 2
} ;
struct block_device;
struct io_context;
struct export_operations;
struct iovec;
struct kiocb;
struct pipe_inode_info;
struct poll_table_struct;
struct kstatfs;
struct cred;
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
struct percpu_counter {
   raw_spinlock_t lock ;
   s64 count ;
   struct list_head list ;
   s32 *counters ;
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
struct __anonstruct_kprojid_t_145 {
   projid_t val ;
};
typedef struct __anonstruct_kprojid_t_145 kprojid_t;
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
union __anonunion____missing_field_name_146 {
   kuid_t uid ;
   kgid_t gid ;
   kprojid_t projid ;
};
struct kqid {
   union __anonunion____missing_field_name_146 __annonCompField38 ;
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
struct address_space;
struct writeback_control;
union __anonunion_arg_148 {
   char *buf ;
   void *data ;
};
struct __anonstruct_read_descriptor_t_147 {
   size_t written ;
   size_t count ;
   union __anonunion_arg_148 arg ;
   int error ;
};
typedef struct __anonstruct_read_descriptor_t_147 read_descriptor_t;
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
   ssize_t (*direct_IO)(int , struct kiocb * , struct iovec const * , loff_t ,
                        unsigned long ) ;
   int (*get_xip_mem)(struct address_space * , unsigned long , int , void ** , unsigned long * ) ;
   int (*migratepage)(struct address_space * , struct page * , struct page * , enum migrate_mode ) ;
   int (*launder_page)(struct page * ) ;
   int (*is_partially_uptodate)(struct page * , read_descriptor_t * , unsigned long ) ;
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
union __anonunion____missing_field_name_149 {
   unsigned int const i_nlink ;
   unsigned int __i_nlink ;
};
union __anonunion____missing_field_name_150 {
   struct hlist_head i_dentry ;
   struct callback_head i_rcu ;
};
struct file_lock;
union __anonunion____missing_field_name_151 {
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
   union __anonunion____missing_field_name_149 __annonCompField39 ;
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
   union __anonunion____missing_field_name_150 __annonCompField40 ;
   u64 i_version ;
   atomic_t i_count ;
   atomic_t i_dio_count ;
   atomic_t i_writecount ;
   struct file_operations const *i_fop ;
   struct file_lock *i_flock ;
   struct address_space i_data ;
   struct dquot *i_dquot[2U] ;
   struct list_head i_devices ;
   union __anonunion____missing_field_name_151 __annonCompField41 ;
   __u32 i_generation ;
   __u32 i_fsnotify_mask ;
   struct hlist_head i_fsnotify_marks ;
   atomic_t i_readcount ;
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
union __anonunion_f_u_152 {
   struct llist_node fu_llist ;
   struct callback_head fu_rcuhead ;
};
struct file {
   union __anonunion_f_u_152 f_u ;
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
   unsigned long f_mnt_write_state ;
};
struct files_struct;
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
struct __anonstruct_afs_154 {
   struct list_head link ;
   int state ;
};
union __anonunion_fl_u_153 {
   struct nfs_lock_info nfs_fl ;
   struct nfs4_lock_info nfs4_fl ;
   struct __anonstruct_afs_154 afs ;
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
   union __anonunion_fl_u_153 fl_u ;
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
struct file_operations {
   struct module *owner ;
   loff_t (*llseek)(struct file * , loff_t , int ) ;
   ssize_t (*read)(struct file * , char * , size_t , loff_t * ) ;
   ssize_t (*write)(struct file * , char const * , size_t , loff_t * ) ;
   ssize_t (*aio_read)(struct kiocb * , struct iovec const * , unsigned long ,
                       loff_t ) ;
   ssize_t (*aio_write)(struct kiocb * , struct iovec const * , unsigned long ,
                        loff_t ) ;
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
struct nsproxy;
struct poll_table_struct {
   void (*_qproc)(struct file * , wait_queue_head_t * , struct poll_table_struct * ) ;
   unsigned long _key ;
};
struct rtc_class_ops {
   int (*open)(struct device * ) ;
   void (*release)(struct device * ) ;
   int (*ioctl)(struct device * , unsigned int , unsigned long ) ;
   int (*read_time)(struct device * , struct rtc_time * ) ;
   int (*set_time)(struct device * , struct rtc_time * ) ;
   int (*read_alarm)(struct device * , struct rtc_wkalrm * ) ;
   int (*set_alarm)(struct device * , struct rtc_wkalrm * ) ;
   int (*proc)(struct device * , struct seq_file * ) ;
   int (*set_mmss)(struct device * , unsigned long ) ;
   int (*read_callback)(struct device * , int ) ;
   int (*alarm_irq_enable)(struct device * , unsigned int ) ;
};
struct rtc_task {
   void (*func)(void * ) ;
   void *private_data ;
};
struct rtc_timer {
   struct rtc_task task ;
   struct timerqueue_node node ;
   ktime_t period ;
   int enabled ;
};
struct rtc_device {
   struct device dev ;
   struct module *owner ;
   int id ;
   char name[20U] ;
   struct rtc_class_ops const *ops ;
   struct mutex ops_lock ;
   struct cdev char_dev ;
   unsigned long flags ;
   unsigned long irq_data ;
   spinlock_t irq_lock ;
   wait_queue_head_t irq_queue ;
   struct fasync_struct *async_queue ;
   struct rtc_task *irq_task ;
   spinlock_t irq_task_lock ;
   int irq_freq ;
   int max_user_freq ;
   struct timerqueue_head timerqueue ;
   struct rtc_timer aie_timer ;
   struct rtc_timer uie_rtctimer ;
   struct hrtimer pie_timer ;
   int pie_enabled ;
   struct work_struct irqwork ;
   int uie_unsupported ;
   struct work_struct uie_task ;
   struct timer_list uie_timer ;
   unsigned int oldsecs ;
   unsigned int uie_irq_active : 1 ;
   unsigned int stop_uie_polling : 1 ;
   unsigned int uie_task_active : 1 ;
   unsigned int uie_timer_active : 1 ;
};
struct clk;
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
struct kernel_param;
struct kernel_param_ops {
   unsigned int flags ;
   int (*set)(char const * , struct kernel_param const * ) ;
   int (*get)(char * , struct kernel_param const * ) ;
   void (*free)(void * ) ;
};
struct kparam_string;
struct kparam_array;
union __anonunion____missing_field_name_162 {
   void *arg ;
   struct kparam_string const *str ;
   struct kparam_array const *arr ;
};
struct kernel_param {
   char const *name ;
   struct kernel_param_ops const *ops ;
   u16 perm ;
   s16 level ;
   union __anonunion____missing_field_name_162 __annonCompField44 ;
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
struct tracepoint;
struct tracepoint_func {
   void *func ;
   void *data ;
};
struct tracepoint {
   char const *name ;
   struct static_key key ;
   void (*regfunc)(void) ;
   void (*unregfunc)(void) ;
   struct tracepoint_func *funcs ;
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
   struct jump_entry *jump_entries ;
   unsigned int num_jump_entries ;
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
enum v4l2_buf_type {
    V4L2_BUF_TYPE_VIDEO_CAPTURE = 1,
    V4L2_BUF_TYPE_VIDEO_OUTPUT = 2,
    V4L2_BUF_TYPE_VIDEO_OVERLAY = 3,
    V4L2_BUF_TYPE_VBI_CAPTURE = 4,
    V4L2_BUF_TYPE_VBI_OUTPUT = 5,
    V4L2_BUF_TYPE_SLICED_VBI_CAPTURE = 6,
    V4L2_BUF_TYPE_SLICED_VBI_OUTPUT = 7,
    V4L2_BUF_TYPE_VIDEO_OUTPUT_OVERLAY = 8,
    V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE = 9,
    V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE = 10,
    V4L2_BUF_TYPE_PRIVATE = 128
} ;
enum v4l2_memory {
    V4L2_MEMORY_MMAP = 1,
    V4L2_MEMORY_USERPTR = 2,
    V4L2_MEMORY_OVERLAY = 3,
    V4L2_MEMORY_DMABUF = 4
} ;
enum v4l2_priority {
    V4L2_PRIORITY_UNSET = 0,
    V4L2_PRIORITY_BACKGROUND = 1,
    V4L2_PRIORITY_INTERACTIVE = 2,
    V4L2_PRIORITY_RECORD = 3,
    V4L2_PRIORITY_DEFAULT = 2
} ;
struct v4l2_rect {
   __s32 left ;
   __s32 top ;
   __u32 width ;
   __u32 height ;
};
struct v4l2_fract {
   __u32 numerator ;
   __u32 denominator ;
};
struct v4l2_capability {
   __u8 driver[16U] ;
   __u8 card[32U] ;
   __u8 bus_info[32U] ;
   __u32 version ;
   __u32 capabilities ;
   __u32 device_caps ;
   __u32 reserved[3U] ;
};
struct v4l2_pix_format {
   __u32 width ;
   __u32 height ;
   __u32 pixelformat ;
   __u32 field ;
   __u32 bytesperline ;
   __u32 sizeimage ;
   __u32 colorspace ;
   __u32 priv ;
};
struct v4l2_frmsize_discrete {
   __u32 width ;
   __u32 height ;
};
struct v4l2_frmsize_stepwise {
   __u32 min_width ;
   __u32 max_width ;
   __u32 step_width ;
   __u32 min_height ;
   __u32 max_height ;
   __u32 step_height ;
};
union __anonunion____missing_field_name_163 {
   struct v4l2_frmsize_discrete discrete ;
   struct v4l2_frmsize_stepwise stepwise ;
};
struct v4l2_frmsizeenum {
   __u32 index ;
   __u32 pixel_format ;
   __u32 type ;
   union __anonunion____missing_field_name_163 __annonCompField45 ;
   __u32 reserved[2U] ;
};
struct v4l2_frmival_stepwise {
   struct v4l2_fract min ;
   struct v4l2_fract max ;
   struct v4l2_fract step ;
};
union __anonunion____missing_field_name_164 {
   struct v4l2_fract discrete ;
   struct v4l2_frmival_stepwise stepwise ;
};
struct v4l2_frmivalenum {
   __u32 index ;
   __u32 pixel_format ;
   __u32 width ;
   __u32 height ;
   __u32 type ;
   union __anonunion____missing_field_name_164 __annonCompField46 ;
   __u32 reserved[2U] ;
};
struct v4l2_timecode {
   __u32 type ;
   __u32 flags ;
   __u8 frames ;
   __u8 seconds ;
   __u8 minutes ;
   __u8 hours ;
   __u8 userbits[4U] ;
};
struct v4l2_requestbuffers {
   __u32 count ;
   __u32 type ;
   __u32 memory ;
   __u32 reserved[2U] ;
};
union __anonunion_m_165 {
   __u32 mem_offset ;
   unsigned long userptr ;
   __s32 fd ;
};
struct v4l2_plane {
   __u32 bytesused ;
   __u32 length ;
   union __anonunion_m_165 m ;
   __u32 data_offset ;
   __u32 reserved[11U] ;
};
union __anonunion_m_166 {
   __u32 offset ;
   unsigned long userptr ;
   struct v4l2_plane *planes ;
   __s32 fd ;
};
struct v4l2_buffer {
   __u32 index ;
   __u32 type ;
   __u32 bytesused ;
   __u32 flags ;
   __u32 field ;
   struct timeval timestamp ;
   struct v4l2_timecode timecode ;
   __u32 sequence ;
   __u32 memory ;
   union __anonunion_m_166 m ;
   __u32 length ;
   __u32 reserved2 ;
   __u32 reserved ;
};
struct v4l2_clip {
   struct v4l2_rect c ;
   struct v4l2_clip *next ;
};
struct v4l2_window {
   struct v4l2_rect w ;
   __u32 field ;
   __u32 chromakey ;
   struct v4l2_clip *clips ;
   __u32 clipcount ;
   void *bitmap ;
   __u8 global_alpha ;
};
struct v4l2_captureparm {
   __u32 capability ;
   __u32 capturemode ;
   struct v4l2_fract timeperframe ;
   __u32 extendedmode ;
   __u32 readbuffers ;
   __u32 reserved[4U] ;
};
struct v4l2_outputparm {
   __u32 capability ;
   __u32 outputmode ;
   struct v4l2_fract timeperframe ;
   __u32 extendedmode ;
   __u32 writebuffers ;
   __u32 reserved[4U] ;
};
struct v4l2_cropcap {
   __u32 type ;
   struct v4l2_rect bounds ;
   struct v4l2_rect defrect ;
   struct v4l2_fract pixelaspect ;
};
struct v4l2_crop {
   __u32 type ;
   struct v4l2_rect c ;
};
typedef __u64 v4l2_std_id;
struct v4l2_bt_timings {
   __u32 width ;
   __u32 height ;
   __u32 interlaced ;
   __u32 polarities ;
   __u64 pixelclock ;
   __u32 hfrontporch ;
   __u32 hsync ;
   __u32 hbackporch ;
   __u32 vfrontporch ;
   __u32 vsync ;
   __u32 vbackporch ;
   __u32 il_vfrontporch ;
   __u32 il_vsync ;
   __u32 il_vbackporch ;
   __u32 standards ;
   __u32 flags ;
   __u32 reserved[14U] ;
};
union __anonunion____missing_field_name_167 {
   struct v4l2_bt_timings bt ;
   __u32 reserved[32U] ;
};
struct v4l2_dv_timings {
   __u32 type ;
   union __anonunion____missing_field_name_167 __annonCompField47 ;
};
struct v4l2_enum_dv_timings {
   __u32 index ;
   __u32 reserved[3U] ;
   struct v4l2_dv_timings timings ;
};
struct v4l2_bt_timings_cap {
   __u32 min_width ;
   __u32 max_width ;
   __u32 min_height ;
   __u32 max_height ;
   __u64 min_pixelclock ;
   __u64 max_pixelclock ;
   __u32 standards ;
   __u32 capabilities ;
   __u32 reserved[16U] ;
};
union __anonunion____missing_field_name_168 {
   struct v4l2_bt_timings_cap bt ;
   __u32 raw_data[32U] ;
};
struct v4l2_dv_timings_cap {
   __u32 type ;
   __u32 reserved[3U] ;
   union __anonunion____missing_field_name_168 __annonCompField48 ;
};
struct v4l2_control {
   __u32 id ;
   __s32 value ;
};
union __anonunion____missing_field_name_169 {
   __s32 value ;
   __s64 value64 ;
   char *string ;
};
struct v4l2_ext_control {
   __u32 id ;
   __u32 size ;
   __u32 reserved2[1U] ;
   union __anonunion____missing_field_name_169 __annonCompField49 ;
};
struct v4l2_ext_controls {
   __u32 ctrl_class ;
   __u32 count ;
   __u32 error_idx ;
   __u32 reserved[2U] ;
   struct v4l2_ext_control *controls ;
};
enum v4l2_ctrl_type {
    V4L2_CTRL_TYPE_INTEGER = 1,
    V4L2_CTRL_TYPE_BOOLEAN = 2,
    V4L2_CTRL_TYPE_MENU = 3,
    V4L2_CTRL_TYPE_BUTTON = 4,
    V4L2_CTRL_TYPE_INTEGER64 = 5,
    V4L2_CTRL_TYPE_CTRL_CLASS = 6,
    V4L2_CTRL_TYPE_STRING = 7,
    V4L2_CTRL_TYPE_BITMASK = 8,
    V4L2_CTRL_TYPE_INTEGER_MENU = 9
} ;
struct v4l2_queryctrl {
   __u32 id ;
   __u32 type ;
   __u8 name[32U] ;
   __s32 minimum ;
   __s32 maximum ;
   __s32 step ;
   __s32 default_value ;
   __u32 flags ;
   __u32 reserved[2U] ;
};
union __anonunion____missing_field_name_170 {
   __u8 name[32U] ;
   __s64 value ;
};
struct v4l2_querymenu {
   __u32 id ;
   __u32 index ;
   union __anonunion____missing_field_name_170 __annonCompField50 ;
   __u32 reserved ;
};
struct v4l2_tuner {
   __u32 index ;
   __u8 name[32U] ;
   __u32 type ;
   __u32 capability ;
   __u32 rangelow ;
   __u32 rangehigh ;
   __u32 rxsubchans ;
   __u32 audmode ;
   __s32 signal ;
   __s32 afc ;
   __u32 reserved[4U] ;
};
struct v4l2_modulator {
   __u32 index ;
   __u8 name[32U] ;
   __u32 capability ;
   __u32 rangelow ;
   __u32 rangehigh ;
   __u32 txsubchans ;
   __u32 reserved[4U] ;
};
struct v4l2_frequency {
   __u32 tuner ;
   __u32 type ;
   __u32 frequency ;
   __u32 reserved[8U] ;
};
struct v4l2_vbi_format {
   __u32 sampling_rate ;
   __u32 offset ;
   __u32 samples_per_line ;
   __u32 sample_format ;
   __s32 start[2U] ;
   __u32 count[2U] ;
   __u32 flags ;
   __u32 reserved[2U] ;
};
struct v4l2_sliced_vbi_format {
   __u16 service_set ;
   __u16 service_lines[2U][24U] ;
   __u32 io_size ;
   __u32 reserved[2U] ;
};
struct v4l2_sliced_vbi_cap {
   __u16 service_set ;
   __u16 service_lines[2U][24U] ;
   __u32 type ;
   __u32 reserved[3U] ;
};
struct v4l2_sliced_vbi_data {
   __u32 id ;
   __u32 field ;
   __u32 line ;
   __u32 reserved ;
   __u8 data[48U] ;
};
struct v4l2_plane_pix_format {
   __u32 sizeimage ;
   __u16 bytesperline ;
   __u16 reserved[7U] ;
};
struct v4l2_pix_format_mplane {
   __u32 width ;
   __u32 height ;
   __u32 pixelformat ;
   __u32 field ;
   __u32 colorspace ;
   struct v4l2_plane_pix_format plane_fmt[8U] ;
   __u8 num_planes ;
   __u8 reserved[11U] ;
};
union __anonunion_fmt_178 {
   struct v4l2_pix_format pix ;
   struct v4l2_pix_format_mplane pix_mp ;
   struct v4l2_window win ;
   struct v4l2_vbi_format vbi ;
   struct v4l2_sliced_vbi_format sliced ;
   __u8 raw_data[200U] ;
};
struct v4l2_format {
   __u32 type ;
   union __anonunion_fmt_178 fmt ;
};
union __anonunion_parm_179 {
   struct v4l2_captureparm capture ;
   struct v4l2_outputparm output ;
   __u8 raw_data[200U] ;
};
struct v4l2_streamparm {
   __u32 type ;
   union __anonunion_parm_179 parm ;
};
struct v4l2_event_subscription {
   __u32 type ;
   __u32 id ;
   __u32 flags ;
   __u32 reserved[5U] ;
};
union __anonunion____missing_field_name_182 {
   __u32 addr ;
   char name[32U] ;
};
struct v4l2_dbg_match {
   __u32 type ;
   union __anonunion____missing_field_name_182 __annonCompField55 ;
};
struct v4l2_dbg_register {
   struct v4l2_dbg_match match ;
   __u32 size ;
   __u64 reg ;
   __u64 val ;
};
struct v4l2_create_buffers {
   __u32 index ;
   __u32 count ;
   __u32 memory ;
   struct v4l2_format format ;
   __u32 reserved[8U] ;
};
struct vsp1_platform_data {
   unsigned int features ;
   unsigned int rpf_count ;
   unsigned int uds_count ;
   unsigned int wpf_count ;
};
struct media_file_operations {
   struct module *owner ;
   ssize_t (*read)(struct file * , char * , size_t , loff_t * ) ;
   ssize_t (*write)(struct file * , char const * , size_t , loff_t * ) ;
   unsigned int (*poll)(struct file * , struct poll_table_struct * ) ;
   long (*ioctl)(struct file * , unsigned int , unsigned long ) ;
   long (*compat_ioctl)(struct file * , unsigned int , unsigned long ) ;
   int (*open)(struct file * ) ;
   int (*release)(struct file * ) ;
};
struct media_devnode {
   struct media_file_operations const *fops ;
   struct device dev ;
   struct cdev cdev ;
   struct device *parent ;
   int minor ;
   unsigned long flags ;
   void (*release)(struct media_devnode * ) ;
};
struct media_pipeline {
};
struct media_pad;
struct media_link {
   struct media_pad *source ;
   struct media_pad *sink ;
   struct media_link *reverse ;
   unsigned long flags ;
};
struct media_entity;
struct media_pad {
   struct media_entity *entity ;
   u16 index ;
   unsigned long flags ;
};
struct media_entity_operations {
   int (*link_setup)(struct media_entity * , struct media_pad const * , struct media_pad const * ,
                     u32 ) ;
   int (*link_validate)(struct media_link * ) ;
};
struct media_device;
struct __anonstruct_v4l_188 {
   u32 major ;
   u32 minor ;
};
struct __anonstruct_fb_189 {
   u32 major ;
   u32 minor ;
};
struct __anonstruct_alsa_190 {
   u32 card ;
   u32 device ;
   u32 subdevice ;
};
union __anonunion_info_187 {
   struct __anonstruct_v4l_188 v4l ;
   struct __anonstruct_fb_189 fb ;
   struct __anonstruct_alsa_190 alsa ;
   int dvb ;
};
struct media_entity {
   struct list_head list ;
   struct media_device *parent ;
   u32 id ;
   char const *name ;
   u32 type ;
   u32 revision ;
   unsigned long flags ;
   u32 group_id ;
   u16 num_pads ;
   u16 num_links ;
   u16 num_backlinks ;
   u16 max_links ;
   struct media_pad *pads ;
   struct media_link *links ;
   struct media_entity_operations const *ops ;
   int stream_count ;
   int use_count ;
   struct media_pipeline *pipe ;
   union __anonunion_info_187 info ;
};
struct media_device {
   struct device *dev ;
   struct media_devnode devnode ;
   char model[32U] ;
   char serial[40U] ;
   char bus_info[32U] ;
   u32 hw_revision ;
   u32 driver_version ;
   u32 entity_id ;
   struct list_head entities ;
   spinlock_t lock ;
   struct mutex graph_mutex ;
   int (*link_notify)(struct media_link * , u32 , unsigned int ) ;
};
enum v4l2_mbus_pixelcode {
    V4L2_MBUS_FMT_FIXED = 1,
    V4L2_MBUS_FMT_RGB444_2X8_PADHI_BE = 4097,
    V4L2_MBUS_FMT_RGB444_2X8_PADHI_LE = 4098,
    V4L2_MBUS_FMT_RGB555_2X8_PADHI_BE = 4099,
    V4L2_MBUS_FMT_RGB555_2X8_PADHI_LE = 4100,
    V4L2_MBUS_FMT_BGR565_2X8_BE = 4101,
    V4L2_MBUS_FMT_BGR565_2X8_LE = 4102,
    V4L2_MBUS_FMT_RGB565_2X8_BE = 4103,
    V4L2_MBUS_FMT_RGB565_2X8_LE = 4104,
    V4L2_MBUS_FMT_RGB666_1X18 = 4105,
    V4L2_MBUS_FMT_RGB888_1X24 = 4106,
    V4L2_MBUS_FMT_RGB888_2X12_BE = 4107,
    V4L2_MBUS_FMT_RGB888_2X12_LE = 4108,
    V4L2_MBUS_FMT_ARGB8888_1X32 = 4109,
    V4L2_MBUS_FMT_Y8_1X8 = 8193,
    V4L2_MBUS_FMT_UV8_1X8 = 8213,
    V4L2_MBUS_FMT_UYVY8_1_5X8 = 8194,
    V4L2_MBUS_FMT_VYUY8_1_5X8 = 8195,
    V4L2_MBUS_FMT_YUYV8_1_5X8 = 8196,
    V4L2_MBUS_FMT_YVYU8_1_5X8 = 8197,
    V4L2_MBUS_FMT_UYVY8_2X8 = 8198,
    V4L2_MBUS_FMT_VYUY8_2X8 = 8199,
    V4L2_MBUS_FMT_YUYV8_2X8 = 8200,
    V4L2_MBUS_FMT_YVYU8_2X8 = 8201,
    V4L2_MBUS_FMT_Y10_1X10 = 8202,
    V4L2_MBUS_FMT_YUYV10_2X10 = 8203,
    V4L2_MBUS_FMT_YVYU10_2X10 = 8204,
    V4L2_MBUS_FMT_Y12_1X12 = 8211,
    V4L2_MBUS_FMT_UYVY8_1X16 = 8207,
    V4L2_MBUS_FMT_VYUY8_1X16 = 8208,
    V4L2_MBUS_FMT_YUYV8_1X16 = 8209,
    V4L2_MBUS_FMT_YVYU8_1X16 = 8210,
    V4L2_MBUS_FMT_YDYUYDYV8_1X16 = 8212,
    V4L2_MBUS_FMT_YUYV10_1X20 = 8205,
    V4L2_MBUS_FMT_YVYU10_1X20 = 8206,
    V4L2_MBUS_FMT_YUV10_1X30 = 8214,
    V4L2_MBUS_FMT_AYUV8_1X32 = 8215,
    V4L2_MBUS_FMT_SBGGR8_1X8 = 12289,
    V4L2_MBUS_FMT_SGBRG8_1X8 = 12307,
    V4L2_MBUS_FMT_SGRBG8_1X8 = 12290,
    V4L2_MBUS_FMT_SRGGB8_1X8 = 12308,
    V4L2_MBUS_FMT_SBGGR10_ALAW8_1X8 = 12309,
    V4L2_MBUS_FMT_SGBRG10_ALAW8_1X8 = 12310,
    V4L2_MBUS_FMT_SGRBG10_ALAW8_1X8 = 12311,
    V4L2_MBUS_FMT_SRGGB10_ALAW8_1X8 = 12312,
    V4L2_MBUS_FMT_SBGGR10_DPCM8_1X8 = 12299,
    V4L2_MBUS_FMT_SGBRG10_DPCM8_1X8 = 12300,
    V4L2_MBUS_FMT_SGRBG10_DPCM8_1X8 = 12297,
    V4L2_MBUS_FMT_SRGGB10_DPCM8_1X8 = 12301,
    V4L2_MBUS_FMT_SBGGR10_2X8_PADHI_BE = 12291,
    V4L2_MBUS_FMT_SBGGR10_2X8_PADHI_LE = 12292,
    V4L2_MBUS_FMT_SBGGR10_2X8_PADLO_BE = 12293,
    V4L2_MBUS_FMT_SBGGR10_2X8_PADLO_LE = 12294,
    V4L2_MBUS_FMT_SBGGR10_1X10 = 12295,
    V4L2_MBUS_FMT_SGBRG10_1X10 = 12302,
    V4L2_MBUS_FMT_SGRBG10_1X10 = 12298,
    V4L2_MBUS_FMT_SRGGB10_1X10 = 12303,
    V4L2_MBUS_FMT_SBGGR12_1X12 = 12296,
    V4L2_MBUS_FMT_SGBRG12_1X12 = 12304,
    V4L2_MBUS_FMT_SGRBG12_1X12 = 12305,
    V4L2_MBUS_FMT_SRGGB12_1X12 = 12306,
    V4L2_MBUS_FMT_JPEG_1X8 = 16385,
    V4L2_MBUS_FMT_S5C_UYVY_JPEG_1X8 = 20481,
    V4L2_MBUS_FMT_AHSV8888_1X32 = 24577
} ;
struct v4l2_mbus_framefmt {
   __u32 width ;
   __u32 height ;
   __u32 code ;
   __u32 field ;
   __u32 colorspace ;
   __u32 reserved[7U] ;
};
struct v4l2_subdev_format {
   __u32 which ;
   __u32 pad ;
   struct v4l2_mbus_framefmt format ;
   __u32 reserved[8U] ;
};
struct v4l2_subdev_crop {
   __u32 which ;
   __u32 pad ;
   struct v4l2_rect rect ;
   __u32 reserved[8U] ;
};
struct v4l2_subdev_mbus_code_enum {
   __u32 pad ;
   __u32 index ;
   __u32 code ;
   __u32 reserved[9U] ;
};
struct v4l2_subdev_frame_size_enum {
   __u32 index ;
   __u32 pad ;
   __u32 code ;
   __u32 min_width ;
   __u32 max_width ;
   __u32 min_height ;
   __u32 max_height ;
   __u32 reserved[9U] ;
};
struct v4l2_subdev_frame_interval {
   __u32 pad ;
   struct v4l2_fract interval ;
   __u32 reserved[9U] ;
};
struct v4l2_subdev_frame_interval_enum {
   __u32 index ;
   __u32 pad ;
   __u32 code ;
   __u32 width ;
   __u32 height ;
   struct v4l2_fract interval ;
   __u32 reserved[9U] ;
};
struct v4l2_subdev_selection {
   __u32 which ;
   __u32 pad ;
   __u32 target ;
   __u32 flags ;
   struct v4l2_rect r ;
   __u32 reserved[8U] ;
};
struct v4l2_subdev_edid {
   __u32 pad ;
   __u32 start_block ;
   __u32 blocks ;
   __u32 reserved[5U] ;
   __u8 *edid ;
};
struct v4l2_device;
struct v4l2_subdev;
struct v4l2_async_notifier;
enum v4l2_async_match_type {
    V4L2_ASYNC_MATCH_CUSTOM = 0,
    V4L2_ASYNC_MATCH_DEVNAME = 1,
    V4L2_ASYNC_MATCH_I2C = 2,
    V4L2_ASYNC_MATCH_OF = 3
} ;
struct __anonstruct_of_193 {
   struct device_node const *node ;
};
struct __anonstruct_device_name_194 {
   char const *name ;
};
struct __anonstruct_i2c_195 {
   int adapter_id ;
   unsigned short address ;
};
struct __anonstruct_custom_196 {
   bool (*match)(struct device * , struct v4l2_async_subdev * ) ;
   void *priv ;
};
union __anonunion_match_192 {
   struct __anonstruct_of_193 of ;
   struct __anonstruct_device_name_194 device_name ;
   struct __anonstruct_i2c_195 i2c ;
   struct __anonstruct_custom_196 custom ;
};
struct v4l2_async_subdev {
   enum v4l2_async_match_type match_type ;
   union __anonunion_match_192 match ;
   struct list_head list ;
};
struct v4l2_async_notifier {
   unsigned int num_subdevs ;
   struct v4l2_async_subdev **subdevs ;
   struct v4l2_device *v4l2_dev ;
   struct list_head waiting ;
   struct list_head done ;
   struct list_head list ;
   int (*bound)(struct v4l2_async_notifier * , struct v4l2_subdev * , struct v4l2_async_subdev * ) ;
   int (*complete)(struct v4l2_async_notifier * ) ;
   void (*unbind)(struct v4l2_async_notifier * , struct v4l2_subdev * , struct v4l2_async_subdev * ) ;
};
struct video_device;
struct v4l2_ctrl_handler;
struct v4l2_prio_state {
   atomic_t prios[4U] ;
};
struct v4l2_file_operations {
   struct module *owner ;
   ssize_t (*read)(struct file * , char * , size_t , loff_t * ) ;
   ssize_t (*write)(struct file * , char const * , size_t , loff_t * ) ;
   unsigned int (*poll)(struct file * , struct poll_table_struct * ) ;
   long (*ioctl)(struct file * , unsigned int , unsigned long ) ;
   long (*unlocked_ioctl)(struct file * , unsigned int , unsigned long ) ;
   long (*compat_ioctl32)(struct file * , unsigned int , unsigned long ) ;
   unsigned long (*get_unmapped_area)(struct file * , unsigned long , unsigned long ,
                                      unsigned long , unsigned long ) ;
   int (*mmap)(struct file * , struct vm_area_struct * ) ;
   int (*open)(struct file * ) ;
   int (*release)(struct file * ) ;
};
struct vb2_queue;
struct v4l2_ioctl_ops;
struct video_device {
   struct media_entity entity ;
   struct v4l2_file_operations const *fops ;
   struct device dev ;
   struct cdev *cdev ;
   struct v4l2_device *v4l2_dev ;
   struct device *dev_parent ;
   struct v4l2_ctrl_handler *ctrl_handler ;
   struct vb2_queue *queue ;
   struct v4l2_prio_state *prio ;
   char name[32U] ;
   int vfl_type ;
   int vfl_dir ;
   int minor ;
   u16 num ;
   unsigned long flags ;
   int index ;
   spinlock_t fh_lock ;
   struct list_head fh_list ;
   int debug ;
   v4l2_std_id tvnorms ;
   void (*release)(struct video_device * ) ;
   struct v4l2_ioctl_ops const *ioctl_ops ;
   unsigned long valid_ioctls[3U] ;
   unsigned long disable_locking[3U] ;
   struct mutex *lock ;
};
struct v4l2_subdev_ops;
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
   int remote_node_defrag_ratio ;
   struct kmem_cache_node *node[1024U] ;
};
struct __anonstruct____missing_field_name_198 {
   struct callback_head callback_head ;
   struct kmem_cache *memcg_caches[0U] ;
};
struct __anonstruct____missing_field_name_199 {
   struct mem_cgroup *memcg ;
   struct list_head list ;
   struct kmem_cache *root_cache ;
   bool dead ;
   atomic_t nr_pages ;
   struct work_struct destroy ;
};
union __anonunion____missing_field_name_197 {
   struct __anonstruct____missing_field_name_198 __annonCompField57 ;
   struct __anonstruct____missing_field_name_199 __annonCompField58 ;
};
struct memcg_cache_params {
   bool is_root_cache ;
   union __anonunion____missing_field_name_197 __annonCompField59 ;
};
struct plist_node {
   int prio ;
   struct list_head prio_list ;
   struct list_head node_list ;
};
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
struct __anonstruct____missing_field_name_202 {
   struct arch_uprobe_task autask ;
   unsigned long vaddr ;
};
struct __anonstruct____missing_field_name_203 {
   struct callback_head dup_xol_work ;
   unsigned long dup_xol_addr ;
};
union __anonunion____missing_field_name_201 {
   struct __anonstruct____missing_field_name_202 __annonCompField61 ;
   struct __anonstruct____missing_field_name_203 __annonCompField62 ;
};
struct uprobe;
struct return_instance;
struct uprobe_task {
   enum uprobe_task_state state ;
   union __anonunion____missing_field_name_201 __annonCompField63 ;
   struct uprobe *active_uprobe ;
   unsigned long xol_vaddr ;
   struct return_instance *return_instances ;
   unsigned int depth ;
};
struct xol_area;
struct uprobes_state {
   struct xol_area *xol_area ;
};
union __anonunion____missing_field_name_204 {
   struct address_space *mapping ;
   void *s_mem ;
};
union __anonunion____missing_field_name_206 {
   unsigned long index ;
   void *freelist ;
   bool pfmemalloc ;
};
struct __anonstruct____missing_field_name_210 {
   unsigned int inuse : 16 ;
   unsigned int objects : 15 ;
   unsigned int frozen : 1 ;
};
union __anonunion____missing_field_name_209 {
   atomic_t _mapcount ;
   struct __anonstruct____missing_field_name_210 __annonCompField66 ;
   int units ;
};
struct __anonstruct____missing_field_name_208 {
   union __anonunion____missing_field_name_209 __annonCompField67 ;
   atomic_t _count ;
};
union __anonunion____missing_field_name_207 {
   unsigned long counters ;
   struct __anonstruct____missing_field_name_208 __annonCompField68 ;
   unsigned int active ;
};
struct __anonstruct____missing_field_name_205 {
   union __anonunion____missing_field_name_206 __annonCompField65 ;
   union __anonunion____missing_field_name_207 __annonCompField69 ;
};
struct __anonstruct____missing_field_name_212 {
   struct page *next ;
   int pages ;
   int pobjects ;
};
struct slab;
union __anonunion____missing_field_name_211 {
   struct list_head lru ;
   struct __anonstruct____missing_field_name_212 __annonCompField71 ;
   struct list_head list ;
   struct slab *slab_page ;
   struct callback_head callback_head ;
   pgtable_t pmd_huge_pte ;
};
union __anonunion____missing_field_name_213 {
   unsigned long private ;
   spinlock_t *ptl ;
   struct kmem_cache *slab_cache ;
   struct page *first_page ;
};
struct page {
   unsigned long flags ;
   union __anonunion____missing_field_name_204 __annonCompField64 ;
   struct __anonstruct____missing_field_name_205 __annonCompField70 ;
   union __anonunion____missing_field_name_211 __annonCompField72 ;
   union __anonunion____missing_field_name_213 __annonCompField73 ;
   unsigned long debug_flags ;
};
struct page_frag {
   struct page *page ;
   __u32 offset ;
   __u32 size ;
};
struct __anonstruct_linear_215 {
   struct rb_node rb ;
   unsigned long rb_subtree_last ;
};
union __anonunion_shared_214 {
   struct __anonstruct_linear_215 linear ;
   struct list_head nonlinear ;
};
struct anon_vma;
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
   union __anonunion_shared_214 shared ;
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
   struct vm_area_struct *mmap_cache ;
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
typedef unsigned long cputime_t;
struct sem_undo_list;
struct sysv_sem {
   struct sem_undo_list *undo_list ;
};
struct __anonstruct_sigset_t_216 {
   unsigned long sig[1U] ;
};
typedef struct __anonstruct_sigset_t_216 sigset_t;
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
struct __anonstruct__kill_218 {
   __kernel_pid_t _pid ;
   __kernel_uid32_t _uid ;
};
struct __anonstruct__timer_219 {
   __kernel_timer_t _tid ;
   int _overrun ;
   char _pad[0U] ;
   sigval_t _sigval ;
   int _sys_private ;
};
struct __anonstruct__rt_220 {
   __kernel_pid_t _pid ;
   __kernel_uid32_t _uid ;
   sigval_t _sigval ;
};
struct __anonstruct__sigchld_221 {
   __kernel_pid_t _pid ;
   __kernel_uid32_t _uid ;
   int _status ;
   __kernel_clock_t _utime ;
   __kernel_clock_t _stime ;
};
struct __anonstruct__sigfault_222 {
   void *_addr ;
   short _addr_lsb ;
};
struct __anonstruct__sigpoll_223 {
   long _band ;
   int _fd ;
};
struct __anonstruct__sigsys_224 {
   void *_call_addr ;
   int _syscall ;
   unsigned int _arch ;
};
union __anonunion__sifields_217 {
   int _pad[28U] ;
   struct __anonstruct__kill_218 _kill ;
   struct __anonstruct__timer_219 _timer ;
   struct __anonstruct__rt_220 _rt ;
   struct __anonstruct__sigchld_221 _sigchld ;
   struct __anonstruct__sigfault_222 _sigfault ;
   struct __anonstruct__sigpoll_223 _sigpoll ;
   struct __anonstruct__sigsys_224 _sigsys ;
};
struct siginfo {
   int si_signo ;
   int si_errno ;
   int si_code ;
   union __anonunion__sifields_217 _sifields ;
};
typedef struct siginfo siginfo_t;
struct user_struct;
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
union __anonunion____missing_field_name_227 {
   struct list_head graveyard_link ;
   struct rb_node serial_node ;
};
struct key_user;
union __anonunion____missing_field_name_228 {
   time_t expiry ;
   time_t revoked_at ;
};
struct __anonstruct____missing_field_name_230 {
   struct key_type *type ;
   char *description ;
};
union __anonunion____missing_field_name_229 {
   struct keyring_index_key index_key ;
   struct __anonstruct____missing_field_name_230 __annonCompField76 ;
};
union __anonunion_type_data_231 {
   struct list_head link ;
   unsigned long x[2U] ;
   void *p[2U] ;
   int reject_error ;
};
union __anonunion_payload_233 {
   unsigned long value ;
   void *rcudata ;
   void *data ;
   void *data2[2U] ;
};
union __anonunion____missing_field_name_232 {
   union __anonunion_payload_233 payload ;
   struct assoc_array keys ;
};
struct key {
   atomic_t usage ;
   key_serial_t serial ;
   union __anonunion____missing_field_name_227 __annonCompField74 ;
   struct rw_semaphore sem ;
   struct key_user *user ;
   void *security ;
   union __anonunion____missing_field_name_228 __annonCompField75 ;
   time_t last_used_at ;
   kuid_t uid ;
   kgid_t gid ;
   key_perm_t perm ;
   unsigned short quotalen ;
   unsigned short datalen ;
   unsigned long flags ;
   union __anonunion____missing_field_name_229 __annonCompField77 ;
   union __anonunion_type_data_231 type_data ;
   union __anonunion____missing_field_name_232 __annonCompField78 ;
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
   unsigned int is_child_subreaper : 1 ;
   unsigned int has_child_subreaper : 1 ;
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
   atomic_t files ;
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
   unsigned int may_oom : 1 ;
};
struct sched_class;
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
   unsigned int brk_randomized : 1 ;
   struct task_rss_stat rss_stat ;
   int exit_state ;
   int exit_code ;
   int exit_signal ;
   int pdeath_signal ;
   unsigned int jobctl ;
   unsigned int personality ;
   unsigned int in_execve : 1 ;
   unsigned int in_iowait : 1 ;
   unsigned int no_new_privs : 1 ;
   unsigned int sched_reset_on_fork : 1 ;
   unsigned int sched_contributes_to_load : 1 ;
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
   int numa_migrate_deferred ;
   unsigned long numa_migrate_retry ;
   u64 node_stamp ;
   struct callback_head numa_work ;
   struct list_head numa_entry ;
   struct numa_group *numa_group ;
   unsigned long *numa_faults ;
   unsigned long total_numa_faults ;
   unsigned long *numa_faults_buffer ;
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
struct v4l2_priv_tun_config {
   int tuner ;
   void *priv ;
};
struct v4l2_m2m_ctx;
struct v4l2_fh {
   struct list_head list ;
   struct video_device *vdev ;
   struct v4l2_ctrl_handler *ctrl_handler ;
   enum v4l2_priority prio ;
   wait_queue_head_t wait ;
   struct list_head subscribed ;
   struct list_head available ;
   unsigned int navailable ;
   u32 sequence ;
   struct v4l2_m2m_ctx *m2m_ctx ;
};
enum v4l2_mbus_type {
    V4L2_MBUS_PARALLEL = 0,
    V4L2_MBUS_BT656 = 1,
    V4L2_MBUS_CSI2 = 2
} ;
struct v4l2_mbus_config {
   enum v4l2_mbus_type type ;
   unsigned int flags ;
};
struct v4l2_subdev_fh;
struct tuner_setup;
struct v4l2_mbus_frame_desc;
struct v4l2_decode_vbi_line {
   u32 is_second_field ;
   u8 *p ;
   u32 line ;
   u32 type ;
};
struct v4l2_subdev_io_pin_config {
   u32 flags ;
   u8 pin ;
   u8 function ;
   u8 value ;
   u8 strength ;
};
struct v4l2_subdev_core_ops {
   int (*log_status)(struct v4l2_subdev * ) ;
   int (*s_io_pin_config)(struct v4l2_subdev * , size_t , struct v4l2_subdev_io_pin_config * ) ;
   int (*init)(struct v4l2_subdev * , u32 ) ;
   int (*load_fw)(struct v4l2_subdev * ) ;
   int (*reset)(struct v4l2_subdev * , u32 ) ;
   int (*s_gpio)(struct v4l2_subdev * , u32 ) ;
   int (*queryctrl)(struct v4l2_subdev * , struct v4l2_queryctrl * ) ;
   int (*g_ctrl)(struct v4l2_subdev * , struct v4l2_control * ) ;
   int (*s_ctrl)(struct v4l2_subdev * , struct v4l2_control * ) ;
   int (*g_ext_ctrls)(struct v4l2_subdev * , struct v4l2_ext_controls * ) ;
   int (*s_ext_ctrls)(struct v4l2_subdev * , struct v4l2_ext_controls * ) ;
   int (*try_ext_ctrls)(struct v4l2_subdev * , struct v4l2_ext_controls * ) ;
   int (*querymenu)(struct v4l2_subdev * , struct v4l2_querymenu * ) ;
   int (*g_std)(struct v4l2_subdev * , v4l2_std_id * ) ;
   int (*s_std)(struct v4l2_subdev * , v4l2_std_id ) ;
   long (*ioctl)(struct v4l2_subdev * , unsigned int , void * ) ;
   int (*g_register)(struct v4l2_subdev * , struct v4l2_dbg_register * ) ;
   int (*s_register)(struct v4l2_subdev * , struct v4l2_dbg_register const * ) ;
   int (*s_power)(struct v4l2_subdev * , int ) ;
   int (*interrupt_service_routine)(struct v4l2_subdev * , u32 , bool * ) ;
   int (*subscribe_event)(struct v4l2_subdev * , struct v4l2_fh * , struct v4l2_event_subscription * ) ;
   int (*unsubscribe_event)(struct v4l2_subdev * , struct v4l2_fh * , struct v4l2_event_subscription * ) ;
};
struct v4l2_subdev_tuner_ops {
   int (*s_radio)(struct v4l2_subdev * ) ;
   int (*s_frequency)(struct v4l2_subdev * , struct v4l2_frequency const * ) ;
   int (*g_frequency)(struct v4l2_subdev * , struct v4l2_frequency * ) ;
   int (*g_tuner)(struct v4l2_subdev * , struct v4l2_tuner * ) ;
   int (*s_tuner)(struct v4l2_subdev * , struct v4l2_tuner const * ) ;
   int (*g_modulator)(struct v4l2_subdev * , struct v4l2_modulator * ) ;
   int (*s_modulator)(struct v4l2_subdev * , struct v4l2_modulator const * ) ;
   int (*s_type_addr)(struct v4l2_subdev * , struct tuner_setup * ) ;
   int (*s_config)(struct v4l2_subdev * , struct v4l2_priv_tun_config const * ) ;
};
struct v4l2_subdev_audio_ops {
   int (*s_clock_freq)(struct v4l2_subdev * , u32 ) ;
   int (*s_i2s_clock_freq)(struct v4l2_subdev * , u32 ) ;
   int (*s_routing)(struct v4l2_subdev * , u32 , u32 , u32 ) ;
   int (*s_stream)(struct v4l2_subdev * , int ) ;
};
struct v4l2_mbus_frame_desc_entry {
   u16 flags ;
   u32 pixelcode ;
   u32 length ;
};
struct v4l2_mbus_frame_desc {
   struct v4l2_mbus_frame_desc_entry entry[4U] ;
   unsigned short num_entries ;
};
struct v4l2_subdev_video_ops {
   int (*s_routing)(struct v4l2_subdev * , u32 , u32 , u32 ) ;
   int (*s_crystal_freq)(struct v4l2_subdev * , u32 , u32 ) ;
   int (*s_std_output)(struct v4l2_subdev * , v4l2_std_id ) ;
   int (*g_std_output)(struct v4l2_subdev * , v4l2_std_id * ) ;
   int (*querystd)(struct v4l2_subdev * , v4l2_std_id * ) ;
   int (*g_tvnorms_output)(struct v4l2_subdev * , v4l2_std_id * ) ;
   int (*g_input_status)(struct v4l2_subdev * , u32 * ) ;
   int (*s_stream)(struct v4l2_subdev * , int ) ;
   int (*cropcap)(struct v4l2_subdev * , struct v4l2_cropcap * ) ;
   int (*g_crop)(struct v4l2_subdev * , struct v4l2_crop * ) ;
   int (*s_crop)(struct v4l2_subdev * , struct v4l2_crop const * ) ;
   int (*g_parm)(struct v4l2_subdev * , struct v4l2_streamparm * ) ;
   int (*s_parm)(struct v4l2_subdev * , struct v4l2_streamparm * ) ;
   int (*g_frame_interval)(struct v4l2_subdev * , struct v4l2_subdev_frame_interval * ) ;
   int (*s_frame_interval)(struct v4l2_subdev * , struct v4l2_subdev_frame_interval * ) ;
   int (*enum_framesizes)(struct v4l2_subdev * , struct v4l2_frmsizeenum * ) ;
   int (*enum_frameintervals)(struct v4l2_subdev * , struct v4l2_frmivalenum * ) ;
   int (*s_dv_timings)(struct v4l2_subdev * , struct v4l2_dv_timings * ) ;
   int (*g_dv_timings)(struct v4l2_subdev * , struct v4l2_dv_timings * ) ;
   int (*enum_dv_timings)(struct v4l2_subdev * , struct v4l2_enum_dv_timings * ) ;
   int (*query_dv_timings)(struct v4l2_subdev * , struct v4l2_dv_timings * ) ;
   int (*dv_timings_cap)(struct v4l2_subdev * , struct v4l2_dv_timings_cap * ) ;
   int (*enum_mbus_fmt)(struct v4l2_subdev * , unsigned int , enum v4l2_mbus_pixelcode * ) ;
   int (*enum_mbus_fsizes)(struct v4l2_subdev * , struct v4l2_frmsizeenum * ) ;
   int (*g_mbus_fmt)(struct v4l2_subdev * , struct v4l2_mbus_framefmt * ) ;
   int (*try_mbus_fmt)(struct v4l2_subdev * , struct v4l2_mbus_framefmt * ) ;
   int (*s_mbus_fmt)(struct v4l2_subdev * , struct v4l2_mbus_framefmt * ) ;
   int (*g_mbus_config)(struct v4l2_subdev * , struct v4l2_mbus_config * ) ;
   int (*s_mbus_config)(struct v4l2_subdev * , struct v4l2_mbus_config const * ) ;
   int (*s_rx_buffer)(struct v4l2_subdev * , void * , unsigned int * ) ;
};
struct v4l2_subdev_vbi_ops {
   int (*decode_vbi_line)(struct v4l2_subdev * , struct v4l2_decode_vbi_line * ) ;
   int (*s_vbi_data)(struct v4l2_subdev * , struct v4l2_sliced_vbi_data const * ) ;
   int (*g_vbi_data)(struct v4l2_subdev * , struct v4l2_sliced_vbi_data * ) ;
   int (*g_sliced_vbi_cap)(struct v4l2_subdev * , struct v4l2_sliced_vbi_cap * ) ;
   int (*s_raw_fmt)(struct v4l2_subdev * , struct v4l2_vbi_format * ) ;
   int (*g_sliced_fmt)(struct v4l2_subdev * , struct v4l2_sliced_vbi_format * ) ;
   int (*s_sliced_fmt)(struct v4l2_subdev * , struct v4l2_sliced_vbi_format * ) ;
};
struct v4l2_subdev_sensor_ops {
   int (*g_skip_top_lines)(struct v4l2_subdev * , u32 * ) ;
   int (*g_skip_frames)(struct v4l2_subdev * , u32 * ) ;
};
enum v4l2_subdev_ir_mode {
    V4L2_SUBDEV_IR_MODE_PULSE_WIDTH = 0
} ;
struct v4l2_subdev_ir_parameters {
   unsigned int bytes_per_data_element ;
   enum v4l2_subdev_ir_mode mode ;
   bool enable ;
   bool interrupt_enable ;
   bool shutdown ;
   bool modulation ;
   u32 max_pulse_width ;
   unsigned int carrier_freq ;
   unsigned int duty_cycle ;
   bool invert_level ;
   bool invert_carrier_sense ;
   u32 noise_filter_min_width ;
   unsigned int carrier_range_lower ;
   unsigned int carrier_range_upper ;
   u32 resolution ;
};
struct v4l2_subdev_ir_ops {
   int (*rx_read)(struct v4l2_subdev * , u8 * , size_t , ssize_t * ) ;
   int (*rx_g_parameters)(struct v4l2_subdev * , struct v4l2_subdev_ir_parameters * ) ;
   int (*rx_s_parameters)(struct v4l2_subdev * , struct v4l2_subdev_ir_parameters * ) ;
   int (*tx_write)(struct v4l2_subdev * , u8 * , size_t , ssize_t * ) ;
   int (*tx_g_parameters)(struct v4l2_subdev * , struct v4l2_subdev_ir_parameters * ) ;
   int (*tx_s_parameters)(struct v4l2_subdev * , struct v4l2_subdev_ir_parameters * ) ;
};
struct v4l2_subdev_pad_ops {
   int (*enum_mbus_code)(struct v4l2_subdev * , struct v4l2_subdev_fh * , struct v4l2_subdev_mbus_code_enum * ) ;
   int (*enum_frame_size)(struct v4l2_subdev * , struct v4l2_subdev_fh * , struct v4l2_subdev_frame_size_enum * ) ;
   int (*enum_frame_interval)(struct v4l2_subdev * , struct v4l2_subdev_fh * , struct v4l2_subdev_frame_interval_enum * ) ;
   int (*get_fmt)(struct v4l2_subdev * , struct v4l2_subdev_fh * , struct v4l2_subdev_format * ) ;
   int (*set_fmt)(struct v4l2_subdev * , struct v4l2_subdev_fh * , struct v4l2_subdev_format * ) ;
   int (*set_crop)(struct v4l2_subdev * , struct v4l2_subdev_fh * , struct v4l2_subdev_crop * ) ;
   int (*get_crop)(struct v4l2_subdev * , struct v4l2_subdev_fh * , struct v4l2_subdev_crop * ) ;
   int (*get_selection)(struct v4l2_subdev * , struct v4l2_subdev_fh * , struct v4l2_subdev_selection * ) ;
   int (*set_selection)(struct v4l2_subdev * , struct v4l2_subdev_fh * , struct v4l2_subdev_selection * ) ;
   int (*get_edid)(struct v4l2_subdev * , struct v4l2_subdev_edid * ) ;
   int (*set_edid)(struct v4l2_subdev * , struct v4l2_subdev_edid * ) ;
   int (*link_validate)(struct v4l2_subdev * , struct media_link * , struct v4l2_subdev_format * ,
                        struct v4l2_subdev_format * ) ;
   int (*get_frame_desc)(struct v4l2_subdev * , unsigned int , struct v4l2_mbus_frame_desc * ) ;
   int (*set_frame_desc)(struct v4l2_subdev * , unsigned int , struct v4l2_mbus_frame_desc * ) ;
};
struct v4l2_subdev_ops {
   struct v4l2_subdev_core_ops const *core ;
   struct v4l2_subdev_tuner_ops const *tuner ;
   struct v4l2_subdev_audio_ops const *audio ;
   struct v4l2_subdev_video_ops const *video ;
   struct v4l2_subdev_vbi_ops const *vbi ;
   struct v4l2_subdev_ir_ops const *ir ;
   struct v4l2_subdev_sensor_ops const *sensor ;
   struct v4l2_subdev_pad_ops const *pad ;
};
struct v4l2_subdev_internal_ops {
   int (*registered)(struct v4l2_subdev * ) ;
   void (*unregistered)(struct v4l2_subdev * ) ;
   int (*open)(struct v4l2_subdev * , struct v4l2_subdev_fh * ) ;
   int (*close)(struct v4l2_subdev * , struct v4l2_subdev_fh * ) ;
};
struct regulator_bulk_data;
struct v4l2_subdev_platform_data {
   struct regulator_bulk_data *regulators ;
   int num_regulators ;
   void *host_priv ;
};
struct v4l2_subdev {
   struct media_entity entity ;
   struct list_head list ;
   struct module *owner ;
   u32 flags ;
   struct v4l2_device *v4l2_dev ;
   struct v4l2_subdev_ops const *ops ;
   struct v4l2_subdev_internal_ops const *internal_ops ;
   struct v4l2_ctrl_handler *ctrl_handler ;
   char name[32U] ;
   u32 grp_id ;
   void *dev_priv ;
   void *host_priv ;
   struct video_device *devnode ;
   struct device *dev ;
   struct list_head async_list ;
   struct v4l2_async_subdev *asd ;
   struct v4l2_async_notifier *notifier ;
   struct v4l2_subdev_platform_data *pdata ;
};
struct __anonstruct_pad_235 {
   struct v4l2_mbus_framefmt try_fmt ;
   struct v4l2_rect try_crop ;
   struct v4l2_rect try_compose ;
};
struct v4l2_subdev_fh {
   struct v4l2_fh vfh ;
   struct __anonstruct_pad_235 *pad ;
};
struct v4l2_device {
   struct device *dev ;
   struct media_device *mdev ;
   struct list_head subdevs ;
   spinlock_t lock ;
   char name[36U] ;
   void (*notify)(struct v4l2_subdev * , unsigned int , void * ) ;
   struct v4l2_ctrl_handler *ctrl_handler ;
   struct v4l2_prio_state prio ;
   struct mutex ioctl_lock ;
   struct kref ref ;
   void (*release)(struct v4l2_device * ) ;
};
struct vsp1_hsit;
struct vsp1_lif;
struct vsp1_lut;
struct vsp1_rwpf;
struct vsp1_sru;
struct vsp1_uds;
struct vsp1_device {
   struct device *dev ;
   struct vsp1_platform_data *pdata ;
   void *mmio ;
   struct clk *clock ;
   struct clk *rt_clock ;
   struct mutex lock ;
   int ref_count ;
   struct vsp1_hsit *hsi ;
   struct vsp1_hsit *hst ;
   struct vsp1_lif *lif ;
   struct vsp1_lut *lut ;
   struct vsp1_rwpf *rpf[5U] ;
   struct vsp1_sru *sru ;
   struct vsp1_uds *uds[3U] ;
   struct vsp1_rwpf *wpf[4U] ;
   struct list_head entities ;
   struct v4l2_device v4l2_dev ;
   struct media_device media_dev ;
};
enum vsp1_entity_type {
    VSP1_ENTITY_HSI = 0,
    VSP1_ENTITY_HST = 1,
    VSP1_ENTITY_LIF = 2,
    VSP1_ENTITY_LUT = 3,
    VSP1_ENTITY_RPF = 4,
    VSP1_ENTITY_SRU = 5,
    VSP1_ENTITY_UDS = 6,
    VSP1_ENTITY_WPF = 7
} ;
struct vsp1_entity {
   struct vsp1_device *vsp1 ;
   enum vsp1_entity_type type ;
   unsigned int index ;
   unsigned int id ;
   unsigned int route ;
   struct list_head list_dev ;
   struct list_head list_pipe ;
   struct media_pad *pads ;
   unsigned int source_pad ;
   struct media_entity *sink ;
   struct v4l2_subdev subdev ;
   struct v4l2_mbus_framefmt *formats ;
};
struct vsp1_hsit {
   struct vsp1_entity entity ;
   bool inverse ;
};
struct vsp1_lif {
   struct vsp1_entity entity ;
};
struct vsp1_lut {
   struct vsp1_entity entity ;
   u32 lut[256U] ;
};
struct vm_fault {
   unsigned int flags ;
   unsigned long pgoff ;
   void *virtual_address ;
   struct page *page ;
};
struct vm_operations_struct {
   void (*open)(struct vm_area_struct * ) ;
   void (*close)(struct vm_area_struct * ) ;
   int (*fault)(struct vm_area_struct * , struct vm_fault * ) ;
   int (*page_mkwrite)(struct vm_area_struct * , struct vm_fault * ) ;
   int (*access)(struct vm_area_struct * , unsigned long , void * , int , int ) ;
   int (*set_policy)(struct vm_area_struct * , struct mempolicy * ) ;
   struct mempolicy *(*get_policy)(struct vm_area_struct * , unsigned long ) ;
   int (*migrate)(struct vm_area_struct * , nodemask_t const * , nodemask_t const * ,
                  unsigned long ) ;
   int (*remap_pages)(struct vm_area_struct * , unsigned long , unsigned long ,
                      unsigned long ) ;
};
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
struct dma_buf;
struct dma_buf_attachment;
struct dma_buf_ops {
   int (*attach)(struct dma_buf * , struct device * , struct dma_buf_attachment * ) ;
   void (*detach)(struct dma_buf * , struct dma_buf_attachment * ) ;
   struct sg_table *(*map_dma_buf)(struct dma_buf_attachment * , enum dma_data_direction ) ;
   void (*unmap_dma_buf)(struct dma_buf_attachment * , struct sg_table * , enum dma_data_direction ) ;
   void (*release)(struct dma_buf * ) ;
   int (*begin_cpu_access)(struct dma_buf * , size_t , size_t , enum dma_data_direction ) ;
   void (*end_cpu_access)(struct dma_buf * , size_t , size_t , enum dma_data_direction ) ;
   void *(*kmap_atomic)(struct dma_buf * , unsigned long ) ;
   void (*kunmap_atomic)(struct dma_buf * , unsigned long , void * ) ;
   void *(*kmap)(struct dma_buf * , unsigned long ) ;
   void (*kunmap)(struct dma_buf * , unsigned long , void * ) ;
   int (*mmap)(struct dma_buf * , struct vm_area_struct * ) ;
   void *(*vmap)(struct dma_buf * ) ;
   void (*vunmap)(struct dma_buf * , void * ) ;
};
struct dma_buf {
   size_t size ;
   struct file *file ;
   struct list_head attachments ;
   struct dma_buf_ops const *ops ;
   struct mutex lock ;
   unsigned int vmapping_counter ;
   void *vmap_ptr ;
   char const *exp_name ;
   struct list_head list_node ;
   void *priv ;
};
struct dma_buf_attachment {
   struct dma_buf *dmabuf ;
   struct device *dev ;
   struct list_head node ;
   void *priv ;
};
struct vb2_fileio_data;
struct vb2_mem_ops {
   void *(*alloc)(void * , unsigned long , gfp_t ) ;
   void (*put)(void * ) ;
   struct dma_buf *(*get_dmabuf)(void * , unsigned long ) ;
   void *(*get_userptr)(void * , unsigned long , unsigned long , int ) ;
   void (*put_userptr)(void * ) ;
   void (*prepare)(void * ) ;
   void (*finish)(void * ) ;
   void *(*attach_dmabuf)(void * , struct dma_buf * , unsigned long , int ) ;
   void (*detach_dmabuf)(void * ) ;
   int (*map_dmabuf)(void * ) ;
   void (*unmap_dmabuf)(void * ) ;
   void *(*vaddr)(void * ) ;
   void *(*cookie)(void * ) ;
   unsigned int (*num_users)(void * ) ;
   int (*mmap)(void * , struct vm_area_struct * ) ;
};
struct vb2_plane {
   void *mem_priv ;
   struct dma_buf *dbuf ;
   unsigned int dbuf_mapped ;
};
enum vb2_buffer_state {
    VB2_BUF_STATE_DEQUEUED = 0,
    VB2_BUF_STATE_PREPARING = 1,
    VB2_BUF_STATE_PREPARED = 2,
    VB2_BUF_STATE_QUEUED = 3,
    VB2_BUF_STATE_ACTIVE = 4,
    VB2_BUF_STATE_DONE = 5,
    VB2_BUF_STATE_ERROR = 6
} ;
struct vb2_buffer {
   struct v4l2_buffer v4l2_buf ;
   struct v4l2_plane v4l2_planes[8U] ;
   struct vb2_queue *vb2_queue ;
   unsigned int num_planes ;
   enum vb2_buffer_state state ;
   struct list_head queued_entry ;
   struct list_head done_entry ;
   struct vb2_plane planes[8U] ;
};
struct vb2_ops {
   int (*queue_setup)(struct vb2_queue * , struct v4l2_format const * , unsigned int * ,
                      unsigned int * , unsigned int * , void ** ) ;
   void (*wait_prepare)(struct vb2_queue * ) ;
   void (*wait_finish)(struct vb2_queue * ) ;
   int (*buf_init)(struct vb2_buffer * ) ;
   int (*buf_prepare)(struct vb2_buffer * ) ;
   int (*buf_finish)(struct vb2_buffer * ) ;
   void (*buf_cleanup)(struct vb2_buffer * ) ;
   int (*start_streaming)(struct vb2_queue * , unsigned int ) ;
   int (*stop_streaming)(struct vb2_queue * ) ;
   void (*buf_queue)(struct vb2_buffer * ) ;
};
struct vb2_queue {
   enum v4l2_buf_type type ;
   unsigned int io_modes ;
   unsigned int io_flags ;
   struct mutex *lock ;
   struct v4l2_fh *owner ;
   struct vb2_ops const *ops ;
   struct vb2_mem_ops const *mem_ops ;
   void *drv_priv ;
   unsigned int buf_struct_size ;
   u32 timestamp_type ;
   gfp_t gfp_flags ;
   enum v4l2_memory memory ;
   struct vb2_buffer *bufs[32U] ;
   unsigned int num_buffers ;
   struct list_head queued_list ;
   atomic_t queued_count ;
   struct list_head done_list ;
   spinlock_t done_lock ;
   wait_queue_head_t done_wq ;
   void *alloc_ctx[8U] ;
   unsigned int plane_sizes[8U] ;
   unsigned int streaming : 1 ;
   unsigned int retry_start_streaming : 1 ;
   struct vb2_fileio_data *fileio ;
};
struct vsp1_video;
struct vsp1_format_info {
   u32 fourcc ;
   unsigned int mbus ;
   unsigned int hwfmt ;
   unsigned int swap ;
   unsigned int planes ;
   unsigned int bpp[3U] ;
   bool swap_yc ;
   bool swap_uv ;
   unsigned int hsub ;
   unsigned int vsub ;
};
enum vsp1_pipeline_state {
    VSP1_PIPELINE_STOPPED = 0,
    VSP1_PIPELINE_RUNNING = 1,
    VSP1_PIPELINE_STOPPING = 2
} ;
struct vsp1_pipeline {
   struct media_pipeline pipe ;
   spinlock_t irqlock ;
   enum vsp1_pipeline_state state ;
   wait_queue_head_t wq ;
   struct mutex lock ;
   unsigned int use_count ;
   unsigned int stream_count ;
   unsigned int buffers_ready ;
   unsigned int num_video ;
   unsigned int num_inputs ;
   struct vsp1_rwpf *inputs[5U] ;
   struct vsp1_rwpf *output ;
   struct vsp1_entity *lif ;
   struct list_head entities ;
};
struct vsp1_video_buffer {
   struct vsp1_video *video ;
   struct vb2_buffer buf ;
   struct list_head queue ;
   dma_addr_t addr[3U] ;
   unsigned int length[3U] ;
};
struct vsp1_video_operations {
   void (*queue)(struct vsp1_video * , struct vsp1_video_buffer * ) ;
};
struct vsp1_video {
   struct vsp1_device *vsp1 ;
   struct vsp1_entity *rwpf ;
   struct vsp1_video_operations const *ops ;
   struct video_device video ;
   enum v4l2_buf_type type ;
   struct media_pad pad ;
   struct mutex lock ;
   struct v4l2_pix_format_mplane format ;
   struct vsp1_format_info const *fmtinfo ;
   struct vsp1_pipeline pipe ;
   unsigned int pipe_index ;
   struct vb2_queue queue ;
   void *alloc_ctx ;
   spinlock_t irqlock ;
   struct list_head irqqueue ;
   unsigned int sequence ;
};
struct vsp1_rwpf {
   struct vsp1_entity entity ;
   struct vsp1_video video ;
   unsigned int max_width ;
   unsigned int max_height ;
   struct v4l2_rect crop ;
   unsigned int offsets[2U] ;
};
struct v4l2_ctrl_helper;
struct v4l2_ctrl;
struct v4l2_ctrl_ops {
   int (*g_volatile_ctrl)(struct v4l2_ctrl * ) ;
   int (*try_ctrl)(struct v4l2_ctrl * ) ;
   int (*s_ctrl)(struct v4l2_ctrl * ) ;
};
union __anonunion____missing_field_name_236 {
   u32 step ;
   u32 menu_skip_mask ;
};
union __anonunion____missing_field_name_237 {
   char const * const *qmenu ;
   s64 const *qmenu_int ;
};
union __anonunion_cur_238 {
   s32 val ;
   s64 val64 ;
   char *string ;
};
union __anonunion____missing_field_name_239 {
   s32 val ;
   s64 val64 ;
   char *string ;
};
struct v4l2_ctrl {
   struct list_head node ;
   struct list_head ev_subs ;
   struct v4l2_ctrl_handler *handler ;
   struct v4l2_ctrl **cluster ;
   unsigned int ncontrols ;
   unsigned int done : 1 ;
   unsigned int is_new : 1 ;
   unsigned int is_private : 1 ;
   unsigned int is_auto : 1 ;
   unsigned int has_volatiles : 1 ;
   unsigned int call_notify : 1 ;
   unsigned int manual_mode_value : 8 ;
   struct v4l2_ctrl_ops const *ops ;
   u32 id ;
   char const *name ;
   enum v4l2_ctrl_type type ;
   s32 minimum ;
   s32 maximum ;
   s32 default_value ;
   union __anonunion____missing_field_name_236 __annonCompField80 ;
   union __anonunion____missing_field_name_237 __annonCompField81 ;
   unsigned long flags ;
   union __anonunion_cur_238 cur ;
   union __anonunion____missing_field_name_239 __annonCompField82 ;
   void *priv ;
};
struct v4l2_ctrl_ref {
   struct list_head node ;
   struct v4l2_ctrl_ref *next ;
   struct v4l2_ctrl *ctrl ;
   struct v4l2_ctrl_helper *helper ;
};
struct v4l2_ctrl_handler {
   struct mutex _lock ;
   struct mutex *lock ;
   struct list_head ctrls ;
   struct list_head ctrl_refs ;
   struct v4l2_ctrl_ref *cached ;
   struct v4l2_ctrl_ref **buckets ;
   void (*notify)(struct v4l2_ctrl * , void * ) ;
   void *notify_priv ;
   u16 nr_of_buckets ;
   int error ;
};
struct vsp1_sru {
   struct vsp1_entity entity ;
   struct v4l2_ctrl_handler ctrls ;
   unsigned int intensity ;
};
struct vsp1_uds {
   struct vsp1_entity entity ;
   unsigned int hscale ;
   unsigned int vscale ;
};
typedef int ldv_func_ret_type;
typedef int ldv_func_ret_type___0;
enum hrtimer_restart;
struct __anonstruct_routes_236 {
   unsigned int id ;
   unsigned int reg ;
};
struct __wait_queue;
typedef struct __wait_queue wait_queue_t;
struct __wait_queue {
   unsigned int flags ;
   void *private ;
   int (*func)(wait_queue_t * , unsigned int , int , void * ) ;
   struct list_head task_list ;
};
enum hrtimer_restart;
typedef struct poll_table_struct poll_table;
struct v4l2_fmtdesc {
   __u32 index ;
   __u32 type ;
   __u32 flags ;
   __u8 description[32U] ;
   __u32 pixelformat ;
   __u32 reserved[4U] ;
};
struct v4l2_jpegcompression {
   int quality ;
   int APPn ;
   int APP_len ;
   char APP_data[60U] ;
   int COM_len ;
   char COM_data[60U] ;
   __u32 jpeg_markers ;
};
struct v4l2_exportbuffer {
   __u32 type ;
   __u32 index ;
   __u32 plane ;
   __u32 flags ;
   __s32 fd ;
   __u32 reserved[11U] ;
};
struct v4l2_framebuffer {
   __u32 capability ;
   __u32 flags ;
   void *base ;
   struct v4l2_pix_format fmt ;
};
struct v4l2_selection {
   __u32 type ;
   __u32 target ;
   __u32 flags ;
   struct v4l2_rect r ;
   __u32 reserved[9U] ;
};
struct v4l2_input {
   __u32 index ;
   __u8 name[32U] ;
   __u32 type ;
   __u32 audioset ;
   __u32 tuner ;
   v4l2_std_id std ;
   __u32 status ;
   __u32 capabilities ;
   __u32 reserved[3U] ;
};
struct v4l2_output {
   __u32 index ;
   __u8 name[32U] ;
   __u32 type ;
   __u32 audioset ;
   __u32 modulator ;
   v4l2_std_id std ;
   __u32 capabilities ;
   __u32 reserved[3U] ;
};
struct v4l2_frequency_band {
   __u32 tuner ;
   __u32 type ;
   __u32 index ;
   __u32 capability ;
   __u32 rangelow ;
   __u32 rangehigh ;
   __u32 modulation ;
   __u32 reserved[9U] ;
};
struct v4l2_hw_freq_seek {
   __u32 tuner ;
   __u32 type ;
   __u32 seek_upward ;
   __u32 wrap_around ;
   __u32 spacing ;
   __u32 rangelow ;
   __u32 rangehigh ;
   __u32 reserved[5U] ;
};
struct v4l2_audio {
   __u32 index ;
   __u8 name[32U] ;
   __u32 capability ;
   __u32 mode ;
   __u32 reserved[2U] ;
};
struct v4l2_audioout {
   __u32 index ;
   __u8 name[32U] ;
   __u32 capability ;
   __u32 mode ;
   __u32 reserved[2U] ;
};
struct v4l2_enc_idx_entry {
   __u64 offset ;
   __u64 pts ;
   __u32 length ;
   __u32 flags ;
   __u32 reserved[2U] ;
};
struct v4l2_enc_idx {
   __u32 entries ;
   __u32 entries_cap ;
   __u32 reserved[4U] ;
   struct v4l2_enc_idx_entry entry[64U] ;
};
struct __anonstruct_raw_210 {
   __u32 data[8U] ;
};
union __anonunion____missing_field_name_209___0 {
   struct __anonstruct_raw_210 raw ;
};
struct v4l2_encoder_cmd {
   __u32 cmd ;
   __u32 flags ;
   union __anonunion____missing_field_name_209___0 __annonCompField74 ;
};
struct __anonstruct_stop_212 {
   __u64 pts ;
};
struct __anonstruct_start_213 {
   __s32 speed ;
   __u32 format ;
};
struct __anonstruct_raw_214 {
   __u32 data[16U] ;
};
union __anonunion____missing_field_name_211___0 {
   struct __anonstruct_stop_212 stop ;
   struct __anonstruct_start_213 start ;
   struct __anonstruct_raw_214 raw ;
};
struct v4l2_decoder_cmd {
   __u32 cmd ;
   __u32 flags ;
   union __anonunion____missing_field_name_211___0 __annonCompField75 ;
};
struct v4l2_dbg_chip_info {
   struct v4l2_dbg_match match ;
   char name[32U] ;
   __u32 flags ;
   __u32 reserved[32U] ;
};
struct __anonstruct_stack_229 {
   struct media_entity *entity ;
   int link ;
};
struct media_entity_graph {
   struct __anonstruct_stack_229 stack[16U] ;
   unsigned long entities[1U] ;
   int top ;
};
struct v4l2_ioctl_ops {
   int (*vidioc_querycap)(struct file * , void * , struct v4l2_capability * ) ;
   int (*vidioc_g_priority)(struct file * , void * , enum v4l2_priority * ) ;
   int (*vidioc_s_priority)(struct file * , void * , enum v4l2_priority ) ;
   int (*vidioc_enum_fmt_vid_cap)(struct file * , void * , struct v4l2_fmtdesc * ) ;
   int (*vidioc_enum_fmt_vid_overlay)(struct file * , void * , struct v4l2_fmtdesc * ) ;
   int (*vidioc_enum_fmt_vid_out)(struct file * , void * , struct v4l2_fmtdesc * ) ;
   int (*vidioc_enum_fmt_vid_cap_mplane)(struct file * , void * , struct v4l2_fmtdesc * ) ;
   int (*vidioc_enum_fmt_vid_out_mplane)(struct file * , void * , struct v4l2_fmtdesc * ) ;
   int (*vidioc_g_fmt_vid_cap)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_g_fmt_vid_overlay)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_g_fmt_vid_out)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_g_fmt_vid_out_overlay)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_g_fmt_vbi_cap)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_g_fmt_vbi_out)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_g_fmt_sliced_vbi_cap)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_g_fmt_sliced_vbi_out)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_g_fmt_vid_cap_mplane)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_g_fmt_vid_out_mplane)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_s_fmt_vid_cap)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_s_fmt_vid_overlay)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_s_fmt_vid_out)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_s_fmt_vid_out_overlay)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_s_fmt_vbi_cap)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_s_fmt_vbi_out)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_s_fmt_sliced_vbi_cap)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_s_fmt_sliced_vbi_out)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_s_fmt_vid_cap_mplane)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_s_fmt_vid_out_mplane)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_try_fmt_vid_cap)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_try_fmt_vid_overlay)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_try_fmt_vid_out)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_try_fmt_vid_out_overlay)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_try_fmt_vbi_cap)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_try_fmt_vbi_out)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_try_fmt_sliced_vbi_cap)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_try_fmt_sliced_vbi_out)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_try_fmt_vid_cap_mplane)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_try_fmt_vid_out_mplane)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_reqbufs)(struct file * , void * , struct v4l2_requestbuffers * ) ;
   int (*vidioc_querybuf)(struct file * , void * , struct v4l2_buffer * ) ;
   int (*vidioc_qbuf)(struct file * , void * , struct v4l2_buffer * ) ;
   int (*vidioc_expbuf)(struct file * , void * , struct v4l2_exportbuffer * ) ;
   int (*vidioc_dqbuf)(struct file * , void * , struct v4l2_buffer * ) ;
   int (*vidioc_create_bufs)(struct file * , void * , struct v4l2_create_buffers * ) ;
   int (*vidioc_prepare_buf)(struct file * , void * , struct v4l2_buffer * ) ;
   int (*vidioc_overlay)(struct file * , void * , unsigned int ) ;
   int (*vidioc_g_fbuf)(struct file * , void * , struct v4l2_framebuffer * ) ;
   int (*vidioc_s_fbuf)(struct file * , void * , struct v4l2_framebuffer const * ) ;
   int (*vidioc_streamon)(struct file * , void * , enum v4l2_buf_type ) ;
   int (*vidioc_streamoff)(struct file * , void * , enum v4l2_buf_type ) ;
   int (*vidioc_g_std)(struct file * , void * , v4l2_std_id * ) ;
   int (*vidioc_s_std)(struct file * , void * , v4l2_std_id ) ;
   int (*vidioc_querystd)(struct file * , void * , v4l2_std_id * ) ;
   int (*vidioc_enum_input)(struct file * , void * , struct v4l2_input * ) ;
   int (*vidioc_g_input)(struct file * , void * , unsigned int * ) ;
   int (*vidioc_s_input)(struct file * , void * , unsigned int ) ;
   int (*vidioc_enum_output)(struct file * , void * , struct v4l2_output * ) ;
   int (*vidioc_g_output)(struct file * , void * , unsigned int * ) ;
   int (*vidioc_s_output)(struct file * , void * , unsigned int ) ;
   int (*vidioc_queryctrl)(struct file * , void * , struct v4l2_queryctrl * ) ;
   int (*vidioc_g_ctrl)(struct file * , void * , struct v4l2_control * ) ;
   int (*vidioc_s_ctrl)(struct file * , void * , struct v4l2_control * ) ;
   int (*vidioc_g_ext_ctrls)(struct file * , void * , struct v4l2_ext_controls * ) ;
   int (*vidioc_s_ext_ctrls)(struct file * , void * , struct v4l2_ext_controls * ) ;
   int (*vidioc_try_ext_ctrls)(struct file * , void * , struct v4l2_ext_controls * ) ;
   int (*vidioc_querymenu)(struct file * , void * , struct v4l2_querymenu * ) ;
   int (*vidioc_enumaudio)(struct file * , void * , struct v4l2_audio * ) ;
   int (*vidioc_g_audio)(struct file * , void * , struct v4l2_audio * ) ;
   int (*vidioc_s_audio)(struct file * , void * , struct v4l2_audio const * ) ;
   int (*vidioc_enumaudout)(struct file * , void * , struct v4l2_audioout * ) ;
   int (*vidioc_g_audout)(struct file * , void * , struct v4l2_audioout * ) ;
   int (*vidioc_s_audout)(struct file * , void * , struct v4l2_audioout const * ) ;
   int (*vidioc_g_modulator)(struct file * , void * , struct v4l2_modulator * ) ;
   int (*vidioc_s_modulator)(struct file * , void * , struct v4l2_modulator const * ) ;
   int (*vidioc_cropcap)(struct file * , void * , struct v4l2_cropcap * ) ;
   int (*vidioc_g_crop)(struct file * , void * , struct v4l2_crop * ) ;
   int (*vidioc_s_crop)(struct file * , void * , struct v4l2_crop const * ) ;
   int (*vidioc_g_selection)(struct file * , void * , struct v4l2_selection * ) ;
   int (*vidioc_s_selection)(struct file * , void * , struct v4l2_selection * ) ;
   int (*vidioc_g_jpegcomp)(struct file * , void * , struct v4l2_jpegcompression * ) ;
   int (*vidioc_s_jpegcomp)(struct file * , void * , struct v4l2_jpegcompression const * ) ;
   int (*vidioc_g_enc_index)(struct file * , void * , struct v4l2_enc_idx * ) ;
   int (*vidioc_encoder_cmd)(struct file * , void * , struct v4l2_encoder_cmd * ) ;
   int (*vidioc_try_encoder_cmd)(struct file * , void * , struct v4l2_encoder_cmd * ) ;
   int (*vidioc_decoder_cmd)(struct file * , void * , struct v4l2_decoder_cmd * ) ;
   int (*vidioc_try_decoder_cmd)(struct file * , void * , struct v4l2_decoder_cmd * ) ;
   int (*vidioc_g_parm)(struct file * , void * , struct v4l2_streamparm * ) ;
   int (*vidioc_s_parm)(struct file * , void * , struct v4l2_streamparm * ) ;
   int (*vidioc_g_tuner)(struct file * , void * , struct v4l2_tuner * ) ;
   int (*vidioc_s_tuner)(struct file * , void * , struct v4l2_tuner const * ) ;
   int (*vidioc_g_frequency)(struct file * , void * , struct v4l2_frequency * ) ;
   int (*vidioc_s_frequency)(struct file * , void * , struct v4l2_frequency const * ) ;
   int (*vidioc_enum_freq_bands)(struct file * , void * , struct v4l2_frequency_band * ) ;
   int (*vidioc_g_sliced_vbi_cap)(struct file * , void * , struct v4l2_sliced_vbi_cap * ) ;
   int (*vidioc_log_status)(struct file * , void * ) ;
   int (*vidioc_s_hw_freq_seek)(struct file * , void * , struct v4l2_hw_freq_seek const * ) ;
   int (*vidioc_g_register)(struct file * , void * , struct v4l2_dbg_register * ) ;
   int (*vidioc_s_register)(struct file * , void * , struct v4l2_dbg_register const * ) ;
   int (*vidioc_g_chip_info)(struct file * , void * , struct v4l2_dbg_chip_info * ) ;
   int (*vidioc_enum_framesizes)(struct file * , void * , struct v4l2_frmsizeenum * ) ;
   int (*vidioc_enum_frameintervals)(struct file * , void * , struct v4l2_frmivalenum * ) ;
   int (*vidioc_s_dv_timings)(struct file * , void * , struct v4l2_dv_timings * ) ;
   int (*vidioc_g_dv_timings)(struct file * , void * , struct v4l2_dv_timings * ) ;
   int (*vidioc_query_dv_timings)(struct file * , void * , struct v4l2_dv_timings * ) ;
   int (*vidioc_enum_dv_timings)(struct file * , void * , struct v4l2_enum_dv_timings * ) ;
   int (*vidioc_dv_timings_cap)(struct file * , void * , struct v4l2_dv_timings_cap * ) ;
   int (*vidioc_subscribe_event)(struct v4l2_fh * , struct v4l2_event_subscription const * ) ;
   int (*vidioc_unsubscribe_event)(struct v4l2_fh * , struct v4l2_event_subscription const * ) ;
   long (*vidioc_default)(struct file * , void * , bool , unsigned int , void * ) ;
};
enum hrtimer_restart;
enum hrtimer_restart;
enum hrtimer_restart;
enum hrtimer_restart;
enum hrtimer_restart;
enum hrtimer_restart;
struct vsp1_lut_config {
   u32 lut[256U] ;
};
enum hrtimer_restart;
enum v4l2_subdev_format_whence {
    V4L2_SUBDEV_FORMAT_TRY = 0,
    V4L2_SUBDEV_FORMAT_ACTIVE = 1
} ;
struct v4l2_ctrl_config {
   struct v4l2_ctrl_ops const *ops ;
   u32 id ;
   char const *name ;
   enum v4l2_ctrl_type type ;
   s32 min ;
   s32 max ;
   u32 step ;
   s32 def ;
   u32 flags ;
   u32 menu_skip_mask ;
   char const * const *qmenu ;
   s64 const *qmenu_int ;
   unsigned int is_private : 1 ;
};
struct vsp1_sru_param {
   u32 ctrl0 ;
   u32 ctrl2 ;
};
struct _ddebug {
   char const *modname ;
   char const *function ;
   char const *filename ;
   char const *format ;
   unsigned int lineno : 18 ;
   unsigned int flags : 8 ;
};
enum hrtimer_restart;
struct device_private {
   void *driver_data ;
};
enum hrtimer_restart;
struct kthread_work;
struct kthread_worker {
   spinlock_t lock ;
   struct list_head work_list ;
   struct task_struct *task ;
   struct kthread_work *current_work ;
};
struct kthread_work {
   struct list_head node ;
   void (*func)(struct kthread_work * ) ;
   wait_queue_head_t done ;
   struct kthread_worker *worker ;
};
struct spi_master;
struct spi_device {
   struct device dev ;
   struct spi_master *master ;
   u32 max_speed_hz ;
   u8 chip_select ;
   u8 bits_per_word ;
   u16 mode ;
   int irq ;
   void *controller_state ;
   void *controller_data ;
   char modalias[32U] ;
   int cs_gpio ;
};
struct spi_message;
struct spi_transfer;
struct spi_master {
   struct device dev ;
   struct list_head list ;
   s16 bus_num ;
   u16 num_chipselect ;
   u16 dma_alignment ;
   u16 mode_bits ;
   u32 bits_per_word_mask ;
   u32 min_speed_hz ;
   u32 max_speed_hz ;
   u16 flags ;
   spinlock_t bus_lock_spinlock ;
   struct mutex bus_lock_mutex ;
   bool bus_lock_flag ;
   int (*setup)(struct spi_device * ) ;
   int (*transfer)(struct spi_device * , struct spi_message * ) ;
   void (*cleanup)(struct spi_device * ) ;
   bool queued ;
   struct kthread_worker kworker ;
   struct task_struct *kworker_task ;
   struct kthread_work pump_messages ;
   spinlock_t queue_lock ;
   struct list_head queue ;
   struct spi_message *cur_msg ;
   bool busy ;
   bool running ;
   bool rt ;
   bool auto_runtime_pm ;
   bool cur_msg_prepared ;
   struct completion xfer_completion ;
   int (*prepare_transfer_hardware)(struct spi_master * ) ;
   int (*transfer_one_message)(struct spi_master * , struct spi_message * ) ;
   int (*unprepare_transfer_hardware)(struct spi_master * ) ;
   int (*prepare_message)(struct spi_master * , struct spi_message * ) ;
   int (*unprepare_message)(struct spi_master * , struct spi_message * ) ;
   void (*set_cs)(struct spi_device * , bool ) ;
   int (*transfer_one)(struct spi_master * , struct spi_device * , struct spi_transfer * ) ;
   int *cs_gpios ;
};
struct spi_transfer {
   void const *tx_buf ;
   void *rx_buf ;
   unsigned int len ;
   dma_addr_t tx_dma ;
   dma_addr_t rx_dma ;
   unsigned int cs_change : 1 ;
   unsigned int tx_nbits : 3 ;
   unsigned int rx_nbits : 3 ;
   u8 bits_per_word ;
   u16 delay_usecs ;
   u32 speed_hz ;
   struct list_head transfer_list ;
};
struct spi_message {
   struct list_head transfers ;
   struct spi_device *spi ;
   unsigned int is_dma_mapped : 1 ;
   void (*complete)(void * ) ;
   void *context ;
   unsigned int frame_length ;
   unsigned int actual_length ;
   int status ;
   struct list_head queue ;
   void *state ;
};
struct ldv_thread;
struct ldv_thread_set {
   int number ;
   struct ldv_thread **threads ;
};
struct ldv_thread {
   int identifier ;
   void (*function)(void * ) ;
};
long ldv__builtin_expect(long exp , long c ) ;
void *ldv_dev_get_drvdata(struct device const *dev ) ;
int ldv_dev_set_drvdata(struct device *dev , void *data ) ;
long ldv_is_err(void const *ptr ) ;
long ldv_ptr_err(void const *ptr ) ;
extern struct module __this_module ;
__inline static void INIT_LIST_HEAD(struct list_head *list )
{
  {
  list->next = list;
  list->prev = list;
  return;
}
}
extern void __list_add(struct list_head * , struct list_head * , struct list_head * ) ;
__inline static void list_add_tail(struct list_head *new , struct list_head *head )
{
  {
  {
  __list_add(new, head->prev, head);
  }
  return;
}
}
extern void list_del(struct list_head * ) ;
extern int snprintf(char * , size_t , char const * , ...) ;
extern size_t strlcpy(char * , char const * , size_t ) ;
extern void warn_slowpath_null(char const * , int const ) ;
__inline static long PTR_ERR(void const *ptr ) ;
__inline static long IS_ERR(void const *ptr ) ;
__inline static int atomic_read(atomic_t const *v )
{
  {
  return ((int )*((int volatile *)(& v->counter)));
}
}
extern void ldv_initialize(void) ;
int ldv_post_init(int init_ret_val ) ;
extern void ldv_pre_probe(void) ;
int ldv_post_probe(int probe_ret_val ) ;
void ldv_check_final_state(void) ;
extern void ldv_switch_to_interrupt_context(void) ;
extern void ldv_switch_to_process_context(void) ;
void ldv_assume(int expression ) ;
void ldv_stop(void) ;
int ldv_undef_int(void) ;
void ldv_free(void *s ) ;
void *ldv_xmalloc(size_t size ) ;
extern void *external_allocated_data(void) ;
extern void __mutex_init(struct mutex * , char const * , struct lock_class_key * ) ;
__inline static int mutex_is_locked(struct mutex *lock )
{
  int tmp ;
  {
  {
  tmp = atomic_read((atomic_t const *)(& lock->count));
  }
  return (tmp != 1);
}
}
extern void mutex_lock_nested(struct mutex * , unsigned int ) ;
extern void mutex_unlock(struct mutex * ) ;
__inline static char const *kobject_name(struct kobject const *kobj )
{
  {
  return ((char const *)kobj->name);
}
}
extern unsigned int ioread32(void * ) ;
extern void iowrite32(u32 , void * ) ;
extern void *devm_kmalloc(struct device * , size_t , gfp_t ) ;
__inline static void *devm_kzalloc(struct device *dev , size_t size , gfp_t gfp )
{
  void *tmp ;
  {
  {
  tmp = devm_kmalloc(dev, size, gfp | 32768U);
  }
  return (tmp);
}
}
extern void *devm_ioremap_resource(struct device * , struct resource * ) ;
__inline static char const *dev_name(struct device const *dev )
{
  char const *tmp ;
  {
  if ((unsigned long )dev->init_name != (unsigned long )((char const * )0)) {
    return ((char const *)dev->init_name);
  } else {
  }
  {
  tmp = kobject_name(& dev->kobj);
  }
  return (tmp);
}
}
static void *ldv_dev_get_drvdata_27(struct device const *dev ) ;
static void *ldv_dev_get_drvdata_51(struct device const *dev ) ;
static void *ldv_dev_get_drvdata_52(struct device const *dev ) ;
static int ldv_dev_set_drvdata_28(struct device *dev , void *data ) ;
extern int dev_err(struct device const * , char const * , ...) ;
extern struct resource *platform_get_resource(struct platform_device * , unsigned int ,
                                              unsigned int ) ;
extern int __platform_driver_register(struct platform_driver * , struct module * ) ;
static int ldv___platform_driver_register_53(struct platform_driver *ldv_func_arg1 ,
                                             struct module *ldv_func_arg2 ) ;
extern void platform_driver_unregister(struct platform_driver * ) ;
static void ldv_platform_driver_unregister_54(struct platform_driver *ldv_func_arg1 ) ;
__inline static void *platform_get_drvdata(struct platform_device const *pdev )
{
  void *tmp ;
  {
  {
  tmp = ldv_dev_get_drvdata_27(& pdev->dev);
  }
  return (tmp);
}
}
__inline static void platform_set_drvdata(struct platform_device *pdev , void *data )
{
  {
  {
  ldv_dev_set_drvdata_28(& pdev->dev, data);
  }
  return;
}
}
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
  {
  tmp = devm_request_threaded_irq(dev, irq, handler, (irqreturn_t (*)(int , void * ))0,
                                  irqflags, devname, dev_id);
  }
  return (tmp);
}
}
extern int clk_prepare(struct clk * ) ;
extern void clk_unprepare(struct clk * ) ;
extern struct clk *devm_clk_get(struct device * , char const * ) ;
extern int clk_enable(struct clk * ) ;
extern void clk_disable(struct clk * ) ;
__inline static int clk_prepare_enable(struct clk *clk )
{
  int ret ;
  {
  {
  ret = clk_prepare(clk);
  }
  if (ret != 0) {
    return (ret);
  } else {
  }
  {
  ret = clk_enable(clk);
  }
  if (ret != 0) {
    {
    clk_unprepare(clk);
    }
  } else {
  }
  return (ret);
}
}
__inline static void clk_disable_unprepare(struct clk *clk )
{
  {
  {
  clk_disable(clk);
  clk_unprepare(clk);
  }
  return;
}
}
extern void usleep_range(unsigned long , unsigned long ) ;
extern int media_entity_create_link(struct media_entity * , u16 , struct media_entity * ,
                                    u16 , u32 ) ;
extern int media_device_register(struct media_device * ) ;
extern void media_device_unregister(struct media_device * ) ;
extern int v4l2_device_register(struct device * , struct v4l2_device * ) ;
extern void v4l2_device_unregister(struct v4l2_device * ) ;
extern int v4l2_device_register_subdev(struct v4l2_device * , struct v4l2_subdev * ) ;
static int ldv_v4l2_device_register_subdev_50(struct v4l2_device *ldv_func_arg1 ,
                                              struct v4l2_subdev *ldv_func_arg2 ) ;
extern int v4l2_device_register_subdev_nodes(struct v4l2_device * ) ;
struct vsp1_device *vsp1_device_get(struct vsp1_device *vsp1 ) ;
void vsp1_device_put(struct vsp1_device *vsp1 ) ;
__inline static u32 vsp1_read(struct vsp1_device *vsp1 , u32 reg )
{
  unsigned int tmp ;
  {
  {
  tmp = ioread32(vsp1->mmio + (unsigned long )reg);
  }
  return (tmp);
}
}
__inline static void vsp1_write(struct vsp1_device *vsp1 , u32 reg , u32 data )
{
  {
  {
  iowrite32(data, vsp1->mmio + (unsigned long )reg);
  }
  return;
}
}
void vsp1_entity_destroy(struct vsp1_entity *entity ) ;
struct vsp1_hsit *vsp1_hsit_create(struct vsp1_device *vsp1 , bool inverse ) ;
struct vsp1_lif *vsp1_lif_create(struct vsp1_device *vsp1 ) ;
struct vsp1_lut *vsp1_lut_create(struct vsp1_device *vsp1 ) ;
__inline static struct vsp1_pipeline *to_vsp1_pipeline(struct media_entity *e )
{
  struct media_pipeline const *__mptr ;
  long tmp ;
  {
  {
  tmp = ldv__builtin_expect((unsigned long )e->pipe != (unsigned long )((struct media_pipeline *)0),
                         1L);
  }
  if (tmp != 0L) {
    __mptr = (struct media_pipeline const *)e->pipe;
    return ((struct vsp1_pipeline *)__mptr);
  } else {
    return ((struct vsp1_pipeline *)0);
  }
}
}
void vsp1_pipeline_frame_end(struct vsp1_pipeline *pipe ) ;
struct vsp1_rwpf *vsp1_rpf_create(struct vsp1_device *vsp1 , unsigned int index ) ;
struct vsp1_rwpf *vsp1_wpf_create(struct vsp1_device *vsp1 , unsigned int index ) ;
struct vsp1_sru *vsp1_sru_create(struct vsp1_device *vsp1 ) ;
struct vsp1_uds *vsp1_uds_create(struct vsp1_device *vsp1 , unsigned int index ) ;
static irqreturn_t vsp1_irq_handler(int irq , void *data )
{
  u32 mask ;
  struct vsp1_device *vsp1 ;
  irqreturn_t ret ;
  unsigned int i ;
  struct vsp1_rwpf *wpf ;
  struct vsp1_pipeline *pipe ;
  u32 status ;
  {
  mask = 3U;
  vsp1 = (struct vsp1_device *)data;
  ret = 0;
  i = 0U;
  goto ldv_33821;
  ldv_33820:
  wpf = vsp1->wpf[i];
  if ((unsigned long )wpf == (unsigned long )((struct vsp1_rwpf *)0)) {
    goto ldv_33819;
  } else {
  }
  {
  pipe = to_vsp1_pipeline(& wpf->entity.subdev.entity);
  status = vsp1_read(vsp1, i * 12U + 76U);
  vsp1_write(vsp1, i * 12U + 76U, ~ status & mask);
  }
  if ((int )status & 1) {
    {
    vsp1_pipeline_frame_end(pipe);
    ret = 1;
    }
  } else {
  }
  ldv_33819:
  i = i + 1U;
  ldv_33821: ;
  if (i < (vsp1->pdata)->wpf_count) {
    goto ldv_33820;
  } else {
  }
  return (ret);
}
}
static int vsp1_create_links(struct vsp1_device *vsp1 , struct vsp1_entity *sink )
{
  struct media_entity *entity ;
  struct vsp1_entity *source ;
  unsigned int pad ;
  int ret ;
  struct list_head const *__mptr ;
  u32 flags ;
  struct list_head const *__mptr___0 ;
  {
  entity = & sink->subdev.entity;
  __mptr = (struct list_head const *)vsp1->entities.next;
  source = (struct vsp1_entity *)__mptr + 0xffffffffffffffe8UL;
  goto ldv_33842;
  ldv_33841: ;
  if ((unsigned int )source->type == (unsigned int )sink->type) {
    goto ldv_33836;
  } else {
  }
  if ((unsigned int )source->type == 2U || (unsigned int )source->type == 7U) {
    goto ldv_33836;
  } else {
  }
  flags = (u32 )(((unsigned int )source->type == 4U && (unsigned int )sink->type == 7U) && source->index == sink->index);
  pad = 0U;
  goto ldv_33839;
  ldv_33838: ;
  if (((entity->pads + (unsigned long )pad)->flags & 1UL) == 0UL) {
    goto ldv_33837;
  } else {
  }
  {
  ret = media_entity_create_link(& source->subdev.entity, (int )((u16 )source->source_pad),
                                 entity, (int )((u16 )pad), flags);
  }
  if (ret < 0) {
    return (ret);
  } else {
  }
  if ((int )flags & 1) {
    source->sink = entity;
  } else {
  }
  ldv_33837:
  pad = pad + 1U;
  ldv_33839: ;
  if (pad < (unsigned int )entity->num_pads) {
    goto ldv_33838;
  } else {
  }
  ldv_33836:
  __mptr___0 = (struct list_head const *)source->list_dev.next;
  source = (struct vsp1_entity *)__mptr___0 + 0xffffffffffffffe8UL;
  ldv_33842: ;
  if ((unsigned long )(& source->list_dev) != (unsigned long )(& vsp1->entities)) {
    goto ldv_33841;
  } else {
  }
  return (0);
}
}
static void vsp1_destroy_entities(struct vsp1_device *vsp1 )
{
  struct vsp1_entity *entity ;
  struct vsp1_entity *next ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  struct list_head const *__mptr___1 ;
  {
  __mptr = (struct list_head const *)vsp1->entities.next;
  entity = (struct vsp1_entity *)__mptr + 0xffffffffffffffe8UL;
  __mptr___0 = (struct list_head const *)entity->list_dev.next;
  next = (struct vsp1_entity *)__mptr___0 + 0xffffffffffffffe8UL;
  goto ldv_33856;
  ldv_33855:
  {
  list_del(& entity->list_dev);
  vsp1_entity_destroy(entity);
  entity = next;
  __mptr___1 = (struct list_head const *)next->list_dev.next;
  next = (struct vsp1_entity *)__mptr___1 + 0xffffffffffffffe8UL;
  }
  ldv_33856: ;
  if ((unsigned long )(& entity->list_dev) != (unsigned long )(& vsp1->entities)) {
    goto ldv_33855;
  } else {
  }
  {
  v4l2_device_unregister(& vsp1->v4l2_dev);
  media_device_unregister(& vsp1->media_dev);
  }
  return;
}
}
static int vsp1_create_entities(struct vsp1_device *vsp1 )
{
  struct media_device *mdev ;
  struct v4l2_device *vdev ;
  struct vsp1_entity *entity ;
  unsigned int i ;
  int ret ;
  char const *tmp ;
  long tmp___0 ;
  long tmp___1 ;
  long tmp___2 ;
  long tmp___3 ;
  long tmp___4 ;
  long tmp___5 ;
  long tmp___6 ;
  long tmp___7 ;
  struct vsp1_rwpf *rpf ;
  long tmp___8 ;
  long tmp___9 ;
  long tmp___10 ;
  long tmp___11 ;
  struct vsp1_uds *uds ;
  long tmp___12 ;
  long tmp___13 ;
  struct vsp1_rwpf *wpf ;
  long tmp___14 ;
  long tmp___15 ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  struct list_head const *__mptr___1 ;
  struct list_head const *__mptr___2 ;
  {
  {
  mdev = & vsp1->media_dev;
  vdev = & vsp1->v4l2_dev;
  mdev->dev = vsp1->dev;
  strlcpy((char *)(& mdev->model), "VSP1", 32UL);
  tmp = dev_name((struct device const *)mdev->dev);
  snprintf((char *)(& mdev->bus_info), 32UL, "platform:%s", tmp);
  ret = media_device_register(mdev);
  }
  if (ret < 0) {
    {
    dev_err((struct device const *)vsp1->dev, "media device registration failed (%d)\n",
            ret);
    }
    return (ret);
  } else {
  }
  {
  vdev->mdev = mdev;
  ret = v4l2_device_register(vsp1->dev, vdev);
  }
  if (ret < 0) {
    {
    dev_err((struct device const *)vsp1->dev, "V4L2 device registration failed (%d)\n",
            ret);
    }
    goto done;
  } else {
  }
  {
  vsp1->hsi = vsp1_hsit_create(vsp1, 1);
  tmp___1 = IS_ERR((void const *)vsp1->hsi);
  }
  if (tmp___1 != 0L) {
    {
    tmp___0 = PTR_ERR((void const *)vsp1->hsi);
    ret = (int )tmp___0;
    }
    goto done;
  } else {
  }
  {
  list_add_tail(& (vsp1->hsi)->entity.list_dev, & vsp1->entities);
  vsp1->hst = vsp1_hsit_create(vsp1, 0);
  tmp___3 = IS_ERR((void const *)vsp1->hst);
  }
  if (tmp___3 != 0L) {
    {
    tmp___2 = PTR_ERR((void const *)vsp1->hst);
    ret = (int )tmp___2;
    }
    goto done;
  } else {
  }
  {
  list_add_tail(& (vsp1->hst)->entity.list_dev, & vsp1->entities);
  }
  if ((int )(vsp1->pdata)->features & 1) {
    {
    vsp1->lif = vsp1_lif_create(vsp1);
    tmp___5 = IS_ERR((void const *)vsp1->lif);
    }
    if (tmp___5 != 0L) {
      {
      tmp___4 = PTR_ERR((void const *)vsp1->lif);
      ret = (int )tmp___4;
      }
      goto done;
    } else {
    }
    {
    list_add_tail(& (vsp1->lif)->entity.list_dev, & vsp1->entities);
    }
  } else {
  }
  if (((vsp1->pdata)->features & 2U) != 0U) {
    {
    vsp1->lut = vsp1_lut_create(vsp1);
    tmp___7 = IS_ERR((void const *)vsp1->lut);
    }
    if (tmp___7 != 0L) {
      {
      tmp___6 = PTR_ERR((void const *)vsp1->lut);
      ret = (int )tmp___6;
      }
      goto done;
    } else {
    }
    {
    list_add_tail(& (vsp1->lut)->entity.list_dev, & vsp1->entities);
    }
  } else {
  }
  i = 0U;
  goto ldv_33869;
  ldv_33868:
  {
  rpf = vsp1_rpf_create(vsp1, i);
  tmp___9 = IS_ERR((void const *)rpf);
  }
  if (tmp___9 != 0L) {
    {
    tmp___8 = PTR_ERR((void const *)rpf);
    ret = (int )tmp___8;
    }
    goto done;
  } else {
  }
  {
  vsp1->rpf[i] = rpf;
  list_add_tail(& rpf->entity.list_dev, & vsp1->entities);
  i = i + 1U;
  }
  ldv_33869: ;
  if (i < (vsp1->pdata)->rpf_count) {
    goto ldv_33868;
  } else {
  }
  if (((vsp1->pdata)->features & 4U) != 0U) {
    {
    vsp1->sru = vsp1_sru_create(vsp1);
    tmp___11 = IS_ERR((void const *)vsp1->sru);
    }
    if (tmp___11 != 0L) {
      {
      tmp___10 = PTR_ERR((void const *)vsp1->sru);
      ret = (int )tmp___10;
      }
      goto done;
    } else {
    }
    {
    list_add_tail(& (vsp1->sru)->entity.list_dev, & vsp1->entities);
    }
  } else {
  }
  i = 0U;
  goto ldv_33873;
  ldv_33872:
  {
  uds = vsp1_uds_create(vsp1, i);
  tmp___13 = IS_ERR((void const *)uds);
  }
  if (tmp___13 != 0L) {
    {
    tmp___12 = PTR_ERR((void const *)uds);
    ret = (int )tmp___12;
    }
    goto done;
  } else {
  }
  {
  vsp1->uds[i] = uds;
  list_add_tail(& uds->entity.list_dev, & vsp1->entities);
  i = i + 1U;
  }
  ldv_33873: ;
  if (i < (vsp1->pdata)->uds_count) {
    goto ldv_33872;
  } else {
  }
  i = 0U;
  goto ldv_33877;
  ldv_33876:
  {
  wpf = vsp1_wpf_create(vsp1, i);
  tmp___15 = IS_ERR((void const *)wpf);
  }
  if (tmp___15 != 0L) {
    {
    tmp___14 = PTR_ERR((void const *)wpf);
    ret = (int )tmp___14;
    }
    goto done;
  } else {
  }
  {
  vsp1->wpf[i] = wpf;
  list_add_tail(& wpf->entity.list_dev, & vsp1->entities);
  i = i + 1U;
  }
  ldv_33877: ;
  if (i < (vsp1->pdata)->wpf_count) {
    goto ldv_33876;
  } else {
  }
  __mptr = (struct list_head const *)vsp1->entities.next;
  entity = (struct vsp1_entity *)__mptr + 0xffffffffffffffe8UL;
  goto ldv_33885;
  ldv_33884: ;
  if ((unsigned int )entity->type == 2U || (unsigned int )entity->type == 4U) {
    goto ldv_33883;
  } else {
  }
  {
  ret = vsp1_create_links(vsp1, entity);
  }
  if (ret < 0) {
    goto done;
  } else {
  }
  ldv_33883:
  __mptr___0 = (struct list_head const *)entity->list_dev.next;
  entity = (struct vsp1_entity *)__mptr___0 + 0xffffffffffffffe8UL;
  ldv_33885: ;
  if ((unsigned long )(& entity->list_dev) != (unsigned long )(& vsp1->entities)) {
    goto ldv_33884;
  } else {
  }
  if ((int )(vsp1->pdata)->features & 1) {
    {
    ret = media_entity_create_link(& (vsp1->wpf[0])->entity.subdev.entity, 1, & (vsp1->lif)->entity.subdev.entity,
                                   0, 0U);
    }
    if (ret < 0) {
      return (ret);
    } else {
    }
  } else {
  }
  __mptr___1 = (struct list_head const *)vsp1->entities.next;
  entity = (struct vsp1_entity *)__mptr___1 + 0xffffffffffffffe8UL;
  goto ldv_33892;
  ldv_33891:
  {
  ret = ldv_v4l2_device_register_subdev_50(& vsp1->v4l2_dev, & entity->subdev);
  }
  if (ret < 0) {
    goto done;
  } else {
  }
  __mptr___2 = (struct list_head const *)entity->list_dev.next;
  entity = (struct vsp1_entity *)__mptr___2 + 0xffffffffffffffe8UL;
  ldv_33892: ;
  if ((unsigned long )(& entity->list_dev) != (unsigned long )(& vsp1->entities)) {
    goto ldv_33891;
  } else {
  }
  {
  ret = v4l2_device_register_subdev_nodes(& vsp1->v4l2_dev);
  }
  done: ;
  if (ret < 0) {
    {
    vsp1_destroy_entities(vsp1);
    }
  } else {
  }
  return (ret);
}
}
static int vsp1_device_init(struct vsp1_device *vsp1 )
{
  unsigned int i ;
  u32 status ;
  unsigned int timeout ;
  {
  {
  status = vsp1_read(vsp1, 56U);
  i = 0U;
  }
  goto ldv_33905;
  ldv_33904: ;
  if ((status & (u32 )(1 << (int )(i + 8U))) == 0U) {
    goto ldv_33900;
  } else {
  }
  {
  vsp1_write(vsp1, 40U, (u32 )(1 << (int )i));
  timeout = 10U;
  }
  goto ldv_33903;
  ldv_33902:
  {
  status = vsp1_read(vsp1, 56U);
  }
  if ((status & (u32 )(1 << (int )(i + 8U))) == 0U) {
    goto ldv_33901;
  } else {
  }
  {
  usleep_range(1000UL, 2000UL);
  timeout = timeout - 1U;
  }
  ldv_33903: ;
  if (timeout != 0U) {
    goto ldv_33902;
  } else {
  }
  ldv_33901: ;
  if (timeout == 0U) {
    {
    dev_err((struct device const *)vsp1->dev, "failed to reset wpf.%u\n", i);
    }
    return (-110);
  } else {
  }
  ldv_33900:
  i = i + 1U;
  ldv_33905: ;
  if (i < (vsp1->pdata)->wpf_count) {
    goto ldv_33904;
  } else {
  }
  {
  vsp1_write(vsp1, 24U, 2056U);
  i = 0U;
  }
  goto ldv_33908;
  ldv_33907:
  {
  vsp1_write(vsp1, (i + 2048U) * 4U, 63U);
  i = i + 1U;
  }
  ldv_33908: ;
  if (i < (vsp1->pdata)->rpf_count) {
    goto ldv_33907;
  } else {
  }
  i = 0U;
  goto ldv_33911;
  ldv_33910:
  {
  vsp1_write(vsp1, (i + 2058U) * 4U, 63U);
  i = i + 1U;
  }
  ldv_33911: ;
  if (i < (vsp1->pdata)->uds_count) {
    goto ldv_33910;
  } else {
  }
  {
  vsp1_write(vsp1, 8228U, 63U);
  vsp1_write(vsp1, 8252U, 63U);
  vsp1_write(vsp1, 8256U, 63U);
  vsp1_write(vsp1, 8260U, 63U);
  vsp1_write(vsp1, 8264U, 63U);
  vsp1_write(vsp1, 8268U, 63U);
  vsp1_write(vsp1, 8272U, 1855U);
  vsp1_write(vsp1, 8276U, 1855U);
  }
  return (0);
}
}
static int vsp1_clocks_enable(struct vsp1_device *vsp1 )
{
  int ret ;
  long tmp ;
  {
  {
  ret = clk_prepare_enable(vsp1->clock);
  }
  if (ret < 0) {
    return (ret);
  } else {
  }
  {
  tmp = IS_ERR((void const *)vsp1->rt_clock);
  }
  if (tmp != 0L) {
    return (0);
  } else {
  }
  {
  ret = clk_prepare_enable(vsp1->rt_clock);
  }
  if (ret < 0) {
    {
    clk_disable_unprepare(vsp1->clock);
    }
    return (ret);
  } else {
  }
  return (0);
}
}
static void vsp1_clocks_disable(struct vsp1_device *vsp1 )
{
  long tmp ;
  {
  {
  tmp = IS_ERR((void const *)vsp1->rt_clock);
  }
  if (tmp == 0L) {
    {
    clk_disable_unprepare(vsp1->rt_clock);
    }
  } else {
  }
  {
  clk_disable_unprepare(vsp1->clock);
  }
  return;
}
}
struct vsp1_device *vsp1_device_get(struct vsp1_device *vsp1 )
{
  struct vsp1_device *__vsp1 ;
  int ret ;
  {
  {
  __vsp1 = vsp1;
  mutex_lock_nested(& vsp1->lock, 0U);
  }
  if (vsp1->ref_count > 0) {
    goto done;
  } else {
  }
  {
  ret = vsp1_clocks_enable(vsp1);
  }
  if (ret < 0) {
    __vsp1 = (struct vsp1_device *)0;
    goto done;
  } else {
  }
  {
  ret = vsp1_device_init(vsp1);
  }
  if (ret < 0) {
    {
    vsp1_clocks_disable(vsp1);
    __vsp1 = (struct vsp1_device *)0;
    }
    goto done;
  } else {
  }
  done: ;
  if ((unsigned long )__vsp1 != (unsigned long )((struct vsp1_device *)0)) {
    vsp1->ref_count = vsp1->ref_count + 1;
  } else {
  }
  {
  mutex_unlock(& vsp1->lock);
  }
  return (__vsp1);
}
}
void vsp1_device_put(struct vsp1_device *vsp1 )
{
  {
  {
  mutex_lock_nested(& vsp1->lock, 0U);
  vsp1->ref_count = vsp1->ref_count - 1;
  }
  if (vsp1->ref_count == 0) {
    {
    vsp1_clocks_disable(vsp1);
    }
  } else {
  }
  {
  mutex_unlock(& vsp1->lock);
  }
  return;
}
}
static int vsp1_pm_suspend(struct device *dev )
{
  struct vsp1_device *vsp1 ;
  void *tmp ;
  int __ret_warn_on ;
  int tmp___0 ;
  long tmp___1 ;
  {
  {
  tmp = ldv_dev_get_drvdata_51((struct device const *)dev);
  vsp1 = (struct vsp1_device *)tmp;
  tmp___0 = mutex_is_locked(& vsp1->lock);
  __ret_warn_on = tmp___0 != 0;
  tmp___1 = ldv__builtin_expect(__ret_warn_on != 0, 0L);
  }
  if (tmp___1 != 0L) {
    {
    warn_slowpath_null("drivers/media/platform/vsp1/vsp1_drv.c", 422);
    }
  } else {
  }
  {
  ldv__builtin_expect(__ret_warn_on != 0, 0L);
  }
  if (vsp1->ref_count == 0) {
    return (0);
  } else {
  }
  {
  vsp1_clocks_disable(vsp1);
  }
  return (0);
}
}
static int vsp1_pm_resume(struct device *dev )
{
  struct vsp1_device *vsp1 ;
  void *tmp ;
  int __ret_warn_on ;
  int tmp___0 ;
  long tmp___1 ;
  int tmp___2 ;
  {
  {
  tmp = ldv_dev_get_drvdata_52((struct device const *)dev);
  vsp1 = (struct vsp1_device *)tmp;
  tmp___0 = mutex_is_locked(& vsp1->lock);
  __ret_warn_on = tmp___0 != 0;
  tmp___1 = ldv__builtin_expect(__ret_warn_on != 0, 0L);
  }
  if (tmp___1 != 0L) {
    {
    warn_slowpath_null("drivers/media/platform/vsp1/vsp1_drv.c", 435);
    }
  } else {
  }
  {
  ldv__builtin_expect(__ret_warn_on != 0, 0L);
  }
  if (vsp1->ref_count != 0) {
    return (0);
  } else {
  }
  {
  tmp___2 = vsp1_clocks_enable(vsp1);
  }
  return (tmp___2);
}
}
static struct dev_pm_ops const vsp1_pm_ops =
     {0, 0, & vsp1_pm_suspend, & vsp1_pm_resume, & vsp1_pm_suspend, & vsp1_pm_resume,
    & vsp1_pm_suspend, & vsp1_pm_resume, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    0};
static struct vsp1_platform_data *vsp1_get_platform_data(struct platform_device *pdev )
{
  struct vsp1_platform_data *pdata ;
  {
  pdata = (struct vsp1_platform_data *)pdev->dev.platform_data;
  if ((unsigned long )pdata == (unsigned long )((struct vsp1_platform_data *)0)) {
    {
    dev_err((struct device const *)(& pdev->dev), "missing platform data\n");
    }
    return ((struct vsp1_platform_data *)0);
  } else {
  }
  if (pdata->rpf_count - 1U > 4U) {
    {
    dev_err((struct device const *)(& pdev->dev), "invalid number of RPF (%u)\n",
            pdata->rpf_count);
    }
    return ((struct vsp1_platform_data *)0);
  } else {
  }
  if (pdata->uds_count - 1U > 2U) {
    {
    dev_err((struct device const *)(& pdev->dev), "invalid number of UDS (%u)\n",
            pdata->uds_count);
    }
    return ((struct vsp1_platform_data *)0);
  } else {
  }
  if (pdata->wpf_count - 1U > 3U) {
    {
    dev_err((struct device const *)(& pdev->dev), "invalid number of WPF (%u)\n",
            pdata->wpf_count);
    }
    return ((struct vsp1_platform_data *)0);
  } else {
  }
  return (pdata);
}
}
static int vsp1_probe(struct platform_device *pdev )
{
  struct vsp1_device *vsp1 ;
  struct resource *irq ;
  struct resource *io ;
  int ret ;
  void *tmp ;
  struct lock_class_key __key ;
  long tmp___0 ;
  long tmp___1 ;
  long tmp___2 ;
  long tmp___3 ;
  char const *tmp___4 ;
  {
  {
  tmp = devm_kzalloc(& pdev->dev, 2880UL, 208U);
  vsp1 = (struct vsp1_device *)tmp;
  }
  if ((unsigned long )vsp1 == (unsigned long )((struct vsp1_device *)0)) {
    return (-12);
  } else {
  }
  {
  vsp1->dev = & pdev->dev;
  __mutex_init(& vsp1->lock, "&vsp1->lock", & __key);
  INIT_LIST_HEAD(& vsp1->entities);
  vsp1->pdata = vsp1_get_platform_data(pdev);
  }
  if ((unsigned long )vsp1->pdata == (unsigned long )((struct vsp1_platform_data *)0)) {
    return (-19);
  } else {
  }
  {
  io = platform_get_resource(pdev, 512U, 0U);
  vsp1->mmio = devm_ioremap_resource(& pdev->dev, io);
  tmp___1 = IS_ERR((void const *)vsp1->mmio);
  }
  if (tmp___1 != 0L) {
    {
    tmp___0 = PTR_ERR((void const *)vsp1->mmio);
    }
    return ((int )tmp___0);
  } else {
  }
  {
  vsp1->clock = devm_clk_get(& pdev->dev, (char const *)0);
  tmp___3 = IS_ERR((void const *)vsp1->clock);
  }
  if (tmp___3 != 0L) {
    {
    dev_err((struct device const *)(& pdev->dev), "failed to get clock\n");
    tmp___2 = PTR_ERR((void const *)vsp1->clock);
    }
    return ((int )tmp___2);
  } else {
  }
  {
  vsp1->rt_clock = devm_clk_get(& pdev->dev, "rt");
  irq = platform_get_resource(pdev, 1024U, 0U);
  }
  if ((unsigned long )irq == (unsigned long )((struct resource *)0)) {
    {
    dev_err((struct device const *)(& pdev->dev), "missing IRQ\n");
    }
    return (-22);
  } else {
  }
  {
  tmp___4 = dev_name((struct device const *)(& pdev->dev));
  ret = devm_request_irq(& pdev->dev, (unsigned int )irq->start, & vsp1_irq_handler,
                         128UL, tmp___4, (void *)vsp1);
  }
  if (ret < 0) {
    {
    dev_err((struct device const *)(& pdev->dev), "failed to request IRQ\n");
    }
    return (ret);
  } else {
  }
  {
  ret = vsp1_create_entities(vsp1);
  }
  if (ret < 0) {
    {
    dev_err((struct device const *)(& pdev->dev), "failed to create entities\n");
    }
    return (ret);
  } else {
  }
  {
  platform_set_drvdata(pdev, (void *)vsp1);
  }
  return (0);
}
}
static int vsp1_remove(struct platform_device *pdev )
{
  struct vsp1_device *vsp1 ;
  void *tmp ;
  {
  {
  tmp = platform_get_drvdata((struct platform_device const *)pdev);
  vsp1 = (struct vsp1_device *)tmp;
  vsp1_destroy_entities(vsp1);
  }
  return (0);
}
}
static struct platform_driver vsp1_platform_driver =
     {& vsp1_probe, & vsp1_remove, 0, 0, 0, {"vsp1", 0, & __this_module, 0, (_Bool)0,
                                           0, 0, 0, 0, 0, 0, 0, 0, & vsp1_pm_ops,
                                           0}, 0, (_Bool)0};
static int vsp1_platform_driver_init(void)
{
  int tmp ;
  {
  {
  tmp = ldv___platform_driver_register_53(& vsp1_platform_driver, & __this_module);
  }
  return (tmp);
}
}
static void vsp1_platform_driver_exit(void)
{
  {
  {
  ldv_platform_driver_unregister_54(& vsp1_platform_driver);
  }
  return;
}
}
void ldv_EMGentry_exit_vsp1_platform_driver_exit_28_2(void (*arg0)(void) ) ;
int ldv_EMGentry_init_vsp1_platform_driver_init_28_24(int (*arg0)(void) ) ;
int ldv___platform_driver_register(int arg0 , struct platform_driver *arg1 , struct module *arg2 ) ;
void ldv_allocate_external_0(void) ;
void ldv_dispatch_deregister_26_1(struct platform_driver *arg0 ) ;
void ldv_dispatch_deregister_dummy_resourceless_instance_10_28_4(void) ;
void ldv_dispatch_deregister_dummy_resourceless_instance_11_28_5(void) ;
void ldv_dispatch_deregister_dummy_resourceless_instance_12_28_6(void) ;
void ldv_dispatch_deregister_dummy_resourceless_instance_14_28_7(void) ;
void ldv_dispatch_deregister_dummy_resourceless_instance_15_28_8(void) ;
void ldv_dispatch_deregister_dummy_resourceless_instance_8_28_9(void) ;
void ldv_dispatch_deregister_dummy_resourceless_instance_9_28_10(void) ;
void ldv_dispatch_deregister_io_instance_16_28_11(void) ;
void ldv_dispatch_deregister_rtc_class_instance_7_28_12(void) ;
void ldv_dispatch_pm_deregister_2_5(void) ;
void ldv_dispatch_pm_register_2_6(void) ;
void ldv_dispatch_register_25_2(struct platform_driver *arg0 ) ;
void ldv_dispatch_register_27_2(struct v4l2_subdev *arg0 ) ;
void ldv_dispatch_register_dummy_resourceless_instance_10_28_13(void) ;
void ldv_dispatch_register_dummy_resourceless_instance_11_28_14(void) ;
void ldv_dispatch_register_dummy_resourceless_instance_14_28_15(void) ;
void ldv_dispatch_register_dummy_resourceless_instance_15_28_16(void) ;
void ldv_dispatch_register_dummy_resourceless_instance_8_28_17(void) ;
void ldv_dispatch_register_dummy_resourceless_instance_9_28_18(void) ;
void ldv_dispatch_register_io_instance_16_28_19(void) ;
void ldv_dispatch_register_rtc_class_instance_7_28_20(void) ;
void ldv_dummy_resourceless_instance_callback_10_3(int (*arg0)(struct v4l2_subdev * ,
                                                               struct v4l2_subdev_fh * ,
                                                               struct v4l2_subdev_frame_size_enum * ) ,
                                                   struct v4l2_subdev *arg1 , struct v4l2_subdev_fh *arg2 ,
                                                   struct v4l2_subdev_frame_size_enum *arg3 ) ;
void ldv_dummy_resourceless_instance_callback_11_3(int (*arg0)(struct v4l2_subdev * ,
                                                               struct v4l2_subdev_fh * ,
                                                               struct v4l2_subdev_frame_size_enum * ) ,
                                                   struct v4l2_subdev *arg1 , struct v4l2_subdev_fh *arg2 ,
                                                   struct v4l2_subdev_frame_size_enum *arg3 ) ;
void ldv_dummy_resourceless_instance_callback_12_3(int (*arg0)(struct v4l2_subdev * ,
                                                               struct v4l2_subdev_fh * ,
                                                               struct v4l2_subdev_frame_size_enum * ) ,
                                                   struct v4l2_subdev *arg1 , struct v4l2_subdev_fh *arg2 ,
                                                   struct v4l2_subdev_frame_size_enum *arg3 ) ;
void ldv_dummy_resourceless_instance_callback_13_3(int (*arg0)(struct v4l2_subdev * ,
                                                               struct v4l2_subdev_fh * ,
                                                               struct v4l2_subdev_frame_size_enum * ) ,
                                                   struct v4l2_subdev *arg1 , struct v4l2_subdev_fh *arg2 ,
                                                   struct v4l2_subdev_frame_size_enum *arg3 ) ;
void ldv_dummy_resourceless_instance_callback_14_3(int (*arg0)(struct v4l2_subdev * ,
                                                               struct v4l2_subdev_fh * ,
                                                               struct v4l2_subdev_frame_size_enum * ) ,
                                                   struct v4l2_subdev *arg1 , struct v4l2_subdev_fh *arg2 ,
                                                   struct v4l2_subdev_frame_size_enum *arg3 ) ;
void ldv_dummy_resourceless_instance_callback_15_3(int (*arg0)(struct v4l2_subdev * ,
                                                               struct v4l2_subdev_fh * ,
                                                               struct v4l2_subdev_frame_size_enum * ) ,
                                                   struct v4l2_subdev *arg1 , struct v4l2_subdev_fh *arg2 ,
                                                   struct v4l2_subdev_frame_size_enum *arg3 ) ;
void ldv_dummy_resourceless_instance_callback_16_3(int (*arg0)(struct v4l2_subdev * ,
                                                               struct v4l2_subdev_fh * ,
                                                               struct v4l2_subdev_frame_size_enum * ) ,
                                                   struct v4l2_subdev *arg1 , struct v4l2_subdev_fh *arg2 ,
                                                   struct v4l2_subdev_frame_size_enum *arg3 ) ;
void ldv_dummy_resourceless_instance_callback_17_3(int (*arg0)(struct v4l2_subdev * ,
                                                               struct v4l2_subdev_fh * ,
                                                               struct v4l2_subdev_frame_size_enum * ) ,
                                                   struct v4l2_subdev *arg1 , struct v4l2_subdev_fh *arg2 ,
                                                   struct v4l2_subdev_frame_size_enum *arg3 ) ;
void ldv_dummy_resourceless_instance_callback_18_3(int (*arg0)(struct v4l2_subdev * ,
                                                               struct v4l2_subdev_fh * ,
                                                               struct v4l2_subdev_frame_size_enum * ) ,
                                                   struct v4l2_subdev *arg1 , struct v4l2_subdev_fh *arg2 ,
                                                   struct v4l2_subdev_frame_size_enum *arg3 ) ;
void ldv_dummy_resourceless_instance_callback_19_3(int (*arg0)(struct v4l2_subdev * ,
                                                               struct v4l2_subdev_fh * ,
                                                               struct v4l2_subdev_frame_size_enum * ) ,
                                                   struct v4l2_subdev *arg1 , struct v4l2_subdev_fh *arg2 ,
                                                   struct v4l2_subdev_frame_size_enum *arg3 ) ;
void ldv_dummy_resourceless_instance_callback_20_3(int (*arg0)(struct v4l2_subdev * ,
                                                               struct v4l2_subdev_fh * ,
                                                               struct v4l2_subdev_frame_size_enum * ) ,
                                                   struct v4l2_subdev *arg1 , struct v4l2_subdev_fh *arg2 ,
                                                   struct v4l2_subdev_frame_size_enum *arg3 ) ;
void ldv_dummy_resourceless_instance_callback_21_11(int (*arg0)(struct vb2_queue * ,
                                                                unsigned int ) ,
                                                    struct vb2_queue *arg1 , unsigned int arg2 ) ;
void ldv_dummy_resourceless_instance_callback_21_14(int (*arg0)(struct vb2_queue * ) ,
                                                    struct vb2_queue *arg1 ) ;
void ldv_dummy_resourceless_instance_callback_21_15(void (*arg0)(struct vb2_queue * ) ,
                                                    struct vb2_queue *arg1 ) ;
void ldv_dummy_resourceless_instance_callback_21_16(void (*arg0)(struct vb2_queue * ) ,
                                                    struct vb2_queue *arg1 ) ;
void ldv_dummy_resourceless_instance_callback_21_3(int (*arg0)(struct vb2_buffer * ) ,
                                                   struct vb2_buffer *arg1 ) ;
void ldv_dummy_resourceless_instance_callback_21_7(void (*arg0)(struct vb2_buffer * ) ,
                                                   struct vb2_buffer *arg1 ) ;
void ldv_dummy_resourceless_instance_callback_21_8(int (*arg0)(struct vb2_queue * ,
                                                               struct v4l2_format * ,
                                                               unsigned int * , unsigned int * ,
                                                               unsigned int * , void ** ) ,
                                                   struct vb2_queue *arg1 , struct v4l2_format *arg2 ,
                                                   unsigned int *arg3 , unsigned int *arg4 ,
                                                   unsigned int *arg5 , void **arg6 ) ;
void ldv_dummy_resourceless_instance_callback_22_3(void (*arg0)(struct vsp1_video * ,
                                                                struct vsp1_video_buffer * ) ,
                                                   struct vsp1_video *arg1 , struct vsp1_video_buffer *arg2 ) ;
void ldv_dummy_resourceless_instance_callback_23_3(void (*arg0)(struct vsp1_video * ,
                                                                struct vsp1_video_buffer * ) ,
                                                   struct vsp1_video *arg1 , struct vsp1_video_buffer *arg2 ) ;
void ldv_dummy_resourceless_instance_callback_5_3(int (*arg0)(struct media_entity * ,
                                                              struct media_pad * ,
                                                              struct media_pad * ,
                                                              unsigned int ) , struct media_entity *arg1 ,
                                                  struct media_pad *arg2 , struct media_pad *arg3 ,
                                                  unsigned int arg4 ) ;
void ldv_dummy_resourceless_instance_callback_5_9(int (*arg0)(struct media_link * ) ,
                                                  struct media_link *arg1 ) ;
void ldv_dummy_resourceless_instance_callback_6_3(int (*arg0)(struct v4l2_ctrl * ) ,
                                                  struct v4l2_ctrl *arg1 ) ;
void ldv_dummy_resourceless_instance_callback_7_10(int (*arg0)(struct file * , void * ,
                                                               struct v4l2_format * ) ,
                                                   struct file *arg1 , void *arg2 ,
                                                   struct v4l2_format *arg3 ) ;
void ldv_dummy_resourceless_instance_callback_7_11(int (*arg0)(struct file * , void * ,
                                                               struct v4l2_format * ) ,
                                                   struct file *arg1 , void *arg2 ,
                                                   struct v4l2_format *arg3 ) ;
void ldv_dummy_resourceless_instance_callback_7_12(int (*arg0)(struct file * , void * ,
                                                               struct v4l2_buffer * ) ,
                                                   struct file *arg1 , void *arg2 ,
                                                   struct v4l2_buffer *arg3 ) ;
void ldv_dummy_resourceless_instance_callback_7_15(int (*arg0)(struct file * , void * ,
                                                               struct v4l2_buffer * ) ,
                                                   struct file *arg1 , void *arg2 ,
                                                   struct v4l2_buffer *arg3 ) ;
void ldv_dummy_resourceless_instance_callback_7_18(int (*arg0)(struct file * , void * ,
                                                               struct v4l2_buffer * ) ,
                                                   struct file *arg1 , void *arg2 ,
                                                   struct v4l2_buffer *arg3 ) ;
void ldv_dummy_resourceless_instance_callback_7_21(int (*arg0)(struct file * , void * ,
                                                               struct v4l2_capability * ) ,
                                                   struct file *arg1 , void *arg2 ,
                                                   struct v4l2_capability *arg3 ) ;
void ldv_dummy_resourceless_instance_callback_7_22(int (*arg0)(struct file * , void * ,
                                                               struct v4l2_requestbuffers * ) ,
                                                   struct file *arg1 , void *arg2 ,
                                                   struct v4l2_requestbuffers *arg3 ) ;
void ldv_dummy_resourceless_instance_callback_7_23(int (*arg0)(struct file * , void * ,
                                                               struct v4l2_format * ) ,
                                                   struct file *arg1 , void *arg2 ,
                                                   struct v4l2_format *arg3 ) ;
void ldv_dummy_resourceless_instance_callback_7_24(int (*arg0)(struct file * , void * ,
                                                               struct v4l2_format * ) ,
                                                   struct file *arg1 , void *arg2 ,
                                                   struct v4l2_format *arg3 ) ;
void ldv_dummy_resourceless_instance_callback_7_25(int (*arg0)(struct file * , void * ,
                                                               enum v4l2_buf_type ) ,
                                                   struct file *arg1 , void *arg2 ,
                                                   enum v4l2_buf_type arg3 ) ;
void ldv_dummy_resourceless_instance_callback_7_26(int (*arg0)(struct file * , void * ,
                                                               enum v4l2_buf_type ) ,
                                                   struct file *arg1 , void *arg2 ,
                                                   enum v4l2_buf_type arg3 ) ;
void ldv_dummy_resourceless_instance_callback_7_27(int (*arg0)(struct file * , void * ,
                                                               struct v4l2_format * ) ,
                                                   struct file *arg1 , void *arg2 ,
                                                   struct v4l2_format *arg3 ) ;
void ldv_dummy_resourceless_instance_callback_7_28(int (*arg0)(struct file * , void * ,
                                                               struct v4l2_format * ) ,
                                                   struct file *arg1 , void *arg2 ,
                                                   struct v4l2_format *arg3 ) ;
void ldv_dummy_resourceless_instance_callback_7_3(int (*arg0)(struct file * , void * ,
                                                              struct v4l2_create_buffers * ) ,
                                                  struct file *arg1 , void *arg2 ,
                                                  struct v4l2_create_buffers *arg3 ) ;
void ldv_dummy_resourceless_instance_callback_7_7(int (*arg0)(struct file * , void * ,
                                                              struct v4l2_buffer * ) ,
                                                  struct file *arg1 , void *arg2 ,
                                                  struct v4l2_buffer *arg3 ) ;
void ldv_dummy_resourceless_instance_callback_8_3(int (*arg0)(struct v4l2_subdev * ,
                                                              struct v4l2_subdev_fh * ) ,
                                                  struct v4l2_subdev *arg1 , struct v4l2_subdev_fh *arg2 ) ;
void ldv_dummy_resourceless_instance_callback_9_3(int (*arg0)(struct v4l2_subdev * ,
                                                              struct v4l2_subdev_fh * ,
                                                              struct v4l2_subdev_frame_size_enum * ) ,
                                                  struct v4l2_subdev *arg1 , struct v4l2_subdev_fh *arg2 ,
                                                  struct v4l2_subdev_frame_size_enum *arg3 ) ;
void ldv_entry_EMGentry_28(void *arg0 ) ;
int main(void) ;
void ldv_iio_triggered_buffer_iio_triggered_buffer_instance_0(void *arg0 ) ;
enum irqreturn ldv_iio_triggered_buffer_instance_handler_0_5(enum irqreturn (*arg0)(int ,
                                                                                    void * ) ,
                                                             int arg1 , void *arg2 ) ;
void ldv_iio_triggered_buffer_instance_thread_0_3(enum irqreturn (*arg0)(int , void * ) ,
                                                  int arg1 , void *arg2 ) ;
void ldv_initialize_external_data(void) ;
enum irqreturn ldv_interrupt_instance_handler_1_5(enum irqreturn (*arg0)(int , void * ) ,
                                                  int arg1 , void *arg2 ) ;
void ldv_interrupt_instance_thread_1_3(enum irqreturn (*arg0)(int , void * ) , int arg1 ,
                                       void *arg2 ) ;
void ldv_interrupt_interrupt_instance_1(void *arg0 ) ;
void ldv_platform_driver_unregister(void *arg0 , struct platform_driver *arg1 ) ;
int ldv_platform_instance_probe_2_14(int (*arg0)(struct platform_device * ) , struct platform_device *arg1 ) ;
void ldv_platform_instance_release_2_3(int (*arg0)(struct platform_device * ) , struct platform_device *arg1 ) ;
void ldv_platform_platform_instance_2(void *arg0 ) ;
void ldv_platform_pm_ops_instance_3(void *arg0 ) ;
void ldv_pm_ops_instance_complete_3_3(void (*arg0)(struct device * ) , struct device *arg1 ) ;
void ldv_pm_ops_instance_freeze_3_15(int (*arg0)(struct device * ) , struct device *arg1 ) ;
void ldv_pm_ops_instance_freeze_late_3_14(int (*arg0)(struct device * ) , struct device *arg1 ) ;
void ldv_pm_ops_instance_freeze_noirq_3_12(int (*arg0)(struct device * ) , struct device *arg1 ) ;
void ldv_pm_ops_instance_poweroff_3_9(int (*arg0)(struct device * ) , struct device *arg1 ) ;
void ldv_pm_ops_instance_poweroff_late_3_8(int (*arg0)(struct device * ) , struct device *arg1 ) ;
void ldv_pm_ops_instance_poweroff_noirq_3_6(int (*arg0)(struct device * ) , struct device *arg1 ) ;
void ldv_pm_ops_instance_prepare_3_22(int (*arg0)(struct device * ) , struct device *arg1 ) ;
void ldv_pm_ops_instance_restore_3_4(int (*arg0)(struct device * ) , struct device *arg1 ) ;
void ldv_pm_ops_instance_restore_early_3_7(int (*arg0)(struct device * ) , struct device *arg1 ) ;
void ldv_pm_ops_instance_restore_noirq_3_5(int (*arg0)(struct device * ) , struct device *arg1 ) ;
void ldv_pm_ops_instance_resume_3_16(int (*arg0)(struct device * ) , struct device *arg1 ) ;
void ldv_pm_ops_instance_resume_early_3_17(int (*arg0)(struct device * ) , struct device *arg1 ) ;
void ldv_pm_ops_instance_resume_noirq_3_19(int (*arg0)(struct device * ) , struct device *arg1 ) ;
void ldv_pm_ops_instance_runtime_idle_3_27(int (*arg0)(struct device * ) , struct device *arg1 ) ;
void ldv_pm_ops_instance_runtime_resume_3_24(int (*arg0)(struct device * ) , struct device *arg1 ) ;
void ldv_pm_ops_instance_runtime_suspend_3_25(int (*arg0)(struct device * ) , struct device *arg1 ) ;
void ldv_pm_ops_instance_suspend_3_21(int (*arg0)(struct device * ) , struct device *arg1 ) ;
void ldv_pm_ops_instance_suspend_late_3_18(int (*arg0)(struct device * ) , struct device *arg1 ) ;
void ldv_pm_ops_instance_suspend_noirq_3_20(int (*arg0)(struct device * ) , struct device *arg1 ) ;
void ldv_pm_ops_instance_thaw_3_10(int (*arg0)(struct device * ) , struct device *arg1 ) ;
void ldv_pm_ops_instance_thaw_early_3_13(int (*arg0)(struct device * ) , struct device *arg1 ) ;
void ldv_pm_ops_instance_thaw_noirq_3_11(int (*arg0)(struct device * ) , struct device *arg1 ) ;
void ldv_rtc_class_instance_callback_4_15(int (*arg0)(struct device * ) , struct device *arg1 ) ;
void ldv_rtc_class_instance_callback_4_16(int (*arg0)(struct device * ) , struct device *arg1 ) ;
void ldv_rtc_class_instance_callback_4_17(int (*arg0)(struct device * ) , struct device *arg1 ) ;
void ldv_rtc_class_instance_callback_4_18(int (*arg0)(struct device * ) , struct device *arg1 ) ;
void ldv_rtc_class_instance_callback_4_19(int (*arg0)(struct device * ) , struct device *arg1 ) ;
void ldv_rtc_class_instance_callback_4_4(int (*arg0)(struct device * ) , struct device *arg1 ) ;
int ldv_rtc_class_instance_probe_4_10(int (*arg0)(struct device * ) , struct device *arg1 ) ;
void ldv_rtc_class_instance_release_4_2(void (*arg0)(struct device * ) , struct device *arg1 ) ;
void ldv_rtc_rtc_class_instance_4(void *arg0 ) ;
void ldv_struct_media_entity_operations_dummy_resourceless_instance_5(void *arg0 ) ;
void ldv_struct_v4l2_ctrl_ops_dummy_resourceless_instance_6(void *arg0 ) ;
void ldv_struct_v4l2_ioctl_ops_dummy_resourceless_instance_7(void *arg0 ) ;
void ldv_struct_v4l2_subdev_internal_ops_dummy_resourceless_instance_8(void *arg0 ) ;
void ldv_struct_v4l2_subdev_video_ops_dummy_resourceless_instance_10(void *arg0 ) ;
void ldv_struct_v4l2_subdev_video_ops_dummy_resourceless_instance_11(void *arg0 ) ;
void ldv_struct_v4l2_subdev_video_ops_dummy_resourceless_instance_12(void *arg0 ) ;
void ldv_struct_v4l2_subdev_video_ops_dummy_resourceless_instance_13(void *arg0 ) ;
void ldv_struct_v4l2_subdev_video_ops_dummy_resourceless_instance_14(void *arg0 ) ;
void ldv_struct_v4l2_subdev_video_ops_dummy_resourceless_instance_15(void *arg0 ) ;
void ldv_struct_v4l2_subdev_video_ops_dummy_resourceless_instance_16(void *arg0 ) ;
void ldv_struct_v4l2_subdev_video_ops_dummy_resourceless_instance_17(void *arg0 ) ;
void ldv_struct_v4l2_subdev_video_ops_dummy_resourceless_instance_18(void *arg0 ) ;
void ldv_struct_v4l2_subdev_video_ops_dummy_resourceless_instance_19(void *arg0 ) ;
void ldv_struct_v4l2_subdev_video_ops_dummy_resourceless_instance_20(void *arg0 ) ;
void ldv_struct_v4l2_subdev_video_ops_dummy_resourceless_instance_9(void *arg0 ) ;
void ldv_struct_vb2_ops_dummy_resourceless_instance_21(void *arg0 ) ;
void ldv_struct_vsp1_video_operations_dummy_resourceless_instance_22(void *arg0 ) ;
void ldv_struct_vsp1_video_operations_dummy_resourceless_instance_23(void *arg0 ) ;
int ldv_switch_0(void) ;
int ldv_switch_1(void) ;
int ldv_switch_2(void) ;
int ldv_switch_3(void) ;
int ldv_switch_4(void) ;
int ldv_switch_5(void) ;
int ldv_switch_6(void) ;
int ldv_switch_7(void) ;
void ldv_switch_automaton_state_10_1(void) ;
void ldv_switch_automaton_state_10_5(void) ;
void ldv_switch_automaton_state_11_1(void) ;
void ldv_switch_automaton_state_11_5(void) ;
void ldv_switch_automaton_state_12_1(void) ;
void ldv_switch_automaton_state_12_5(void) ;
void ldv_switch_automaton_state_13_1(void) ;
void ldv_switch_automaton_state_13_5(void) ;
void ldv_switch_automaton_state_14_1(void) ;
void ldv_switch_automaton_state_14_5(void) ;
void ldv_switch_automaton_state_15_1(void) ;
void ldv_switch_automaton_state_15_5(void) ;
void ldv_switch_automaton_state_16_1(void) ;
void ldv_switch_automaton_state_16_5(void) ;
void ldv_switch_automaton_state_17_1(void) ;
void ldv_switch_automaton_state_17_5(void) ;
void ldv_switch_automaton_state_18_1(void) ;
void ldv_switch_automaton_state_18_5(void) ;
void ldv_switch_automaton_state_19_1(void) ;
void ldv_switch_automaton_state_19_5(void) ;
void ldv_switch_automaton_state_20_1(void) ;
void ldv_switch_automaton_state_20_5(void) ;
void ldv_switch_automaton_state_21_1(void) ;
void ldv_switch_automaton_state_21_5(void) ;
void ldv_switch_automaton_state_22_1(void) ;
void ldv_switch_automaton_state_22_5(void) ;
void ldv_switch_automaton_state_23_1(void) ;
void ldv_switch_automaton_state_23_5(void) ;
void ldv_switch_automaton_state_24_14(void) ;
void ldv_switch_automaton_state_24_5(void) ;
void ldv_switch_automaton_state_2_17(void) ;
void ldv_switch_automaton_state_2_8(void) ;
void ldv_switch_automaton_state_3_1(void) ;
void ldv_switch_automaton_state_3_29(void) ;
void ldv_switch_automaton_state_4_12(void) ;
void ldv_switch_automaton_state_4_5(void) ;
void ldv_switch_automaton_state_5_1(void) ;
void ldv_switch_automaton_state_5_5(void) ;
void ldv_switch_automaton_state_6_1(void) ;
void ldv_switch_automaton_state_6_5(void) ;
void ldv_switch_automaton_state_7_1(void) ;
void ldv_switch_automaton_state_7_5(void) ;
void ldv_switch_automaton_state_8_1(void) ;
void ldv_switch_automaton_state_8_5(void) ;
void ldv_switch_automaton_state_9_1(void) ;
void ldv_switch_automaton_state_9_5(void) ;
int ldv_v4l2_device_register_subdev(int arg0 , struct v4l2_device *arg1 , struct v4l2_subdev *arg2 ) ;
void ldv_v4l2_file_operations_io_instance_24(void *arg0 ) ;
enum irqreturn (*ldv_0_callback_handler)(int , void * ) ;
void *ldv_0_data_data ;
struct iio_dev *ldv_0_dev_dev ;
int ldv_0_line_line ;
enum irqreturn ldv_0_ret_val_default ;
enum irqreturn (*ldv_0_thread_thread)(int , void * ) ;
int (*ldv_10_callback_enum_frame_size)(struct v4l2_subdev * , struct v4l2_subdev_fh * ,
                                       struct v4l2_subdev_frame_size_enum * ) ;
struct v4l2_subdev_fh *ldv_10_container_struct_v4l2_subdev_fh_ptr ;
struct v4l2_subdev_format *ldv_10_container_struct_v4l2_subdev_format_ptr ;
struct v4l2_subdev_frame_size_enum *ldv_10_container_struct_v4l2_subdev_frame_size_enum_ptr ;
struct v4l2_subdev_mbus_code_enum *ldv_10_container_struct_v4l2_subdev_mbus_code_enum_ptr ;
struct v4l2_subdev *ldv_10_container_struct_v4l2_subdev_ptr ;
struct v4l2_subdev_selection *ldv_10_container_struct_v4l2_subdev_selection_ptr ;
unsigned int ldv_10_ldv_param_10_1_default ;
int ldv_10_ldv_param_13_1_default ;
int (*ldv_11_callback_enum_frame_size)(struct v4l2_subdev * , struct v4l2_subdev_fh * ,
                                       struct v4l2_subdev_frame_size_enum * ) ;
struct v4l2_subdev_fh *ldv_11_container_struct_v4l2_subdev_fh_ptr ;
struct v4l2_subdev_format *ldv_11_container_struct_v4l2_subdev_format_ptr ;
struct v4l2_subdev_frame_size_enum *ldv_11_container_struct_v4l2_subdev_frame_size_enum_ptr ;
struct v4l2_subdev_mbus_code_enum *ldv_11_container_struct_v4l2_subdev_mbus_code_enum_ptr ;
struct v4l2_subdev *ldv_11_container_struct_v4l2_subdev_ptr ;
struct v4l2_subdev_selection *ldv_11_container_struct_v4l2_subdev_selection_ptr ;
unsigned int ldv_11_ldv_param_10_1_default ;
int ldv_11_ldv_param_13_1_default ;
int (*ldv_12_callback_enum_frame_size)(struct v4l2_subdev * , struct v4l2_subdev_fh * ,
                                       struct v4l2_subdev_frame_size_enum * ) ;
struct v4l2_subdev_fh *ldv_12_container_struct_v4l2_subdev_fh_ptr ;
struct v4l2_subdev_format *ldv_12_container_struct_v4l2_subdev_format_ptr ;
struct v4l2_subdev_frame_size_enum *ldv_12_container_struct_v4l2_subdev_frame_size_enum_ptr ;
struct v4l2_subdev_mbus_code_enum *ldv_12_container_struct_v4l2_subdev_mbus_code_enum_ptr ;
struct v4l2_subdev *ldv_12_container_struct_v4l2_subdev_ptr ;
struct v4l2_subdev_selection *ldv_12_container_struct_v4l2_subdev_selection_ptr ;
unsigned int ldv_12_ldv_param_10_1_default ;
int ldv_12_ldv_param_13_1_default ;
int (*ldv_13_callback_enum_frame_size)(struct v4l2_subdev * , struct v4l2_subdev_fh * ,
                                       struct v4l2_subdev_frame_size_enum * ) ;
struct v4l2_subdev_fh *ldv_13_container_struct_v4l2_subdev_fh_ptr ;
struct v4l2_subdev_format *ldv_13_container_struct_v4l2_subdev_format_ptr ;
struct v4l2_subdev_frame_size_enum *ldv_13_container_struct_v4l2_subdev_frame_size_enum_ptr ;
struct v4l2_subdev_mbus_code_enum *ldv_13_container_struct_v4l2_subdev_mbus_code_enum_ptr ;
struct v4l2_subdev *ldv_13_container_struct_v4l2_subdev_ptr ;
struct v4l2_subdev_selection *ldv_13_container_struct_v4l2_subdev_selection_ptr ;
unsigned int ldv_13_ldv_param_10_1_default ;
int ldv_13_ldv_param_13_1_default ;
int (*ldv_14_callback_enum_frame_size)(struct v4l2_subdev * , struct v4l2_subdev_fh * ,
                                       struct v4l2_subdev_frame_size_enum * ) ;
struct v4l2_subdev_fh *ldv_14_container_struct_v4l2_subdev_fh_ptr ;
struct v4l2_subdev_format *ldv_14_container_struct_v4l2_subdev_format_ptr ;
struct v4l2_subdev_frame_size_enum *ldv_14_container_struct_v4l2_subdev_frame_size_enum_ptr ;
struct v4l2_subdev_mbus_code_enum *ldv_14_container_struct_v4l2_subdev_mbus_code_enum_ptr ;
struct v4l2_subdev *ldv_14_container_struct_v4l2_subdev_ptr ;
struct v4l2_subdev_selection *ldv_14_container_struct_v4l2_subdev_selection_ptr ;
unsigned int ldv_14_ldv_param_10_1_default ;
int ldv_14_ldv_param_13_1_default ;
int (*ldv_15_callback_enum_frame_size)(struct v4l2_subdev * , struct v4l2_subdev_fh * ,
                                       struct v4l2_subdev_frame_size_enum * ) ;
struct v4l2_subdev_fh *ldv_15_container_struct_v4l2_subdev_fh_ptr ;
struct v4l2_subdev_format *ldv_15_container_struct_v4l2_subdev_format_ptr ;
struct v4l2_subdev_frame_size_enum *ldv_15_container_struct_v4l2_subdev_frame_size_enum_ptr ;
struct v4l2_subdev_mbus_code_enum *ldv_15_container_struct_v4l2_subdev_mbus_code_enum_ptr ;
struct v4l2_subdev *ldv_15_container_struct_v4l2_subdev_ptr ;
struct v4l2_subdev_selection *ldv_15_container_struct_v4l2_subdev_selection_ptr ;
unsigned int ldv_15_ldv_param_10_1_default ;
int ldv_15_ldv_param_13_1_default ;
int (*ldv_16_callback_enum_frame_size)(struct v4l2_subdev * , struct v4l2_subdev_fh * ,
                                       struct v4l2_subdev_frame_size_enum * ) ;
struct v4l2_subdev_fh *ldv_16_container_struct_v4l2_subdev_fh_ptr ;
struct v4l2_subdev_format *ldv_16_container_struct_v4l2_subdev_format_ptr ;
struct v4l2_subdev_frame_size_enum *ldv_16_container_struct_v4l2_subdev_frame_size_enum_ptr ;
struct v4l2_subdev_mbus_code_enum *ldv_16_container_struct_v4l2_subdev_mbus_code_enum_ptr ;
struct v4l2_subdev *ldv_16_container_struct_v4l2_subdev_ptr ;
struct v4l2_subdev_selection *ldv_16_container_struct_v4l2_subdev_selection_ptr ;
unsigned int ldv_16_ldv_param_10_1_default ;
int ldv_16_ldv_param_13_1_default ;
int (*ldv_17_callback_enum_frame_size)(struct v4l2_subdev * , struct v4l2_subdev_fh * ,
                                       struct v4l2_subdev_frame_size_enum * ) ;
struct v4l2_subdev_fh *ldv_17_container_struct_v4l2_subdev_fh_ptr ;
struct v4l2_subdev_format *ldv_17_container_struct_v4l2_subdev_format_ptr ;
struct v4l2_subdev_frame_size_enum *ldv_17_container_struct_v4l2_subdev_frame_size_enum_ptr ;
struct v4l2_subdev_mbus_code_enum *ldv_17_container_struct_v4l2_subdev_mbus_code_enum_ptr ;
struct v4l2_subdev *ldv_17_container_struct_v4l2_subdev_ptr ;
struct v4l2_subdev_selection *ldv_17_container_struct_v4l2_subdev_selection_ptr ;
unsigned int ldv_17_ldv_param_10_1_default ;
int ldv_17_ldv_param_13_1_default ;
int (*ldv_18_callback_enum_frame_size)(struct v4l2_subdev * , struct v4l2_subdev_fh * ,
                                       struct v4l2_subdev_frame_size_enum * ) ;
struct v4l2_subdev_fh *ldv_18_container_struct_v4l2_subdev_fh_ptr ;
struct v4l2_subdev_format *ldv_18_container_struct_v4l2_subdev_format_ptr ;
struct v4l2_subdev_frame_size_enum *ldv_18_container_struct_v4l2_subdev_frame_size_enum_ptr ;
struct v4l2_subdev_mbus_code_enum *ldv_18_container_struct_v4l2_subdev_mbus_code_enum_ptr ;
struct v4l2_subdev *ldv_18_container_struct_v4l2_subdev_ptr ;
struct v4l2_subdev_selection *ldv_18_container_struct_v4l2_subdev_selection_ptr ;
unsigned int ldv_18_ldv_param_10_1_default ;
int ldv_18_ldv_param_13_1_default ;
int (*ldv_19_callback_enum_frame_size)(struct v4l2_subdev * , struct v4l2_subdev_fh * ,
                                       struct v4l2_subdev_frame_size_enum * ) ;
struct v4l2_subdev_fh *ldv_19_container_struct_v4l2_subdev_fh_ptr ;
struct v4l2_subdev_format *ldv_19_container_struct_v4l2_subdev_format_ptr ;
struct v4l2_subdev_frame_size_enum *ldv_19_container_struct_v4l2_subdev_frame_size_enum_ptr ;
struct v4l2_subdev_mbus_code_enum *ldv_19_container_struct_v4l2_subdev_mbus_code_enum_ptr ;
struct v4l2_subdev *ldv_19_container_struct_v4l2_subdev_ptr ;
struct v4l2_subdev_selection *ldv_19_container_struct_v4l2_subdev_selection_ptr ;
unsigned int ldv_19_ldv_param_10_1_default ;
int ldv_19_ldv_param_13_1_default ;
enum irqreturn (*ldv_1_callback_handler)(int , void * ) ;
void *ldv_1_data_data ;
int ldv_1_line_line ;
enum irqreturn ldv_1_ret_val_default ;
enum irqreturn (*ldv_1_thread_thread)(int , void * ) ;
int (*ldv_20_callback_enum_frame_size)(struct v4l2_subdev * , struct v4l2_subdev_fh * ,
                                       struct v4l2_subdev_frame_size_enum * ) ;
struct v4l2_subdev_fh *ldv_20_container_struct_v4l2_subdev_fh_ptr ;
struct v4l2_subdev_format *ldv_20_container_struct_v4l2_subdev_format_ptr ;
struct v4l2_subdev_frame_size_enum *ldv_20_container_struct_v4l2_subdev_frame_size_enum_ptr ;
struct v4l2_subdev_mbus_code_enum *ldv_20_container_struct_v4l2_subdev_mbus_code_enum_ptr ;
struct v4l2_subdev *ldv_20_container_struct_v4l2_subdev_ptr ;
struct v4l2_subdev_selection *ldv_20_container_struct_v4l2_subdev_selection_ptr ;
unsigned int ldv_20_ldv_param_10_1_default ;
int ldv_20_ldv_param_13_1_default ;
int (*ldv_21_callback_buf_prepare)(struct vb2_buffer * ) ;
void (*ldv_21_callback_buf_queue)(struct vb2_buffer * ) ;
int (*ldv_21_callback_queue_setup)(struct vb2_queue * , struct v4l2_format * , unsigned int * ,
                                   unsigned int * , unsigned int * , void ** ) ;
int (*ldv_21_callback_start_streaming)(struct vb2_queue * , unsigned int ) ;
int (*ldv_21_callback_stop_streaming)(struct vb2_queue * ) ;
void (*ldv_21_callback_wait_finish)(struct vb2_queue * ) ;
void (*ldv_21_callback_wait_prepare)(struct vb2_queue * ) ;
struct v4l2_format *ldv_21_container_struct_v4l2_format_ptr ;
struct vb2_buffer *ldv_21_container_struct_vb2_buffer_ptr ;
struct vb2_queue *ldv_21_container_struct_vb2_queue_ptr ;
void **ldv_21_container_void_ptr_ptr ;
unsigned int ldv_21_ldv_param_11_1_default ;
unsigned int *ldv_21_ldv_param_8_3_default ;
unsigned int *ldv_21_ldv_param_8_4_default ;
void (*ldv_22_callback_queue)(struct vsp1_video * , struct vsp1_video_buffer * ) ;
struct vsp1_video_buffer *ldv_22_container_struct_vsp1_video_buffer_ptr ;
struct vsp1_video *ldv_22_container_struct_vsp1_video_ptr ;
void (*ldv_23_callback_queue)(struct vsp1_video * , struct vsp1_video_buffer * ) ;
struct vsp1_video_buffer *ldv_23_container_struct_vsp1_video_buffer_ptr ;
struct vsp1_video *ldv_23_container_struct_vsp1_video_ptr ;
unsigned int ldv_24_ldv_param_18_1_default ;
unsigned long ldv_24_ldv_param_18_2_default ;
struct file *ldv_24_resource_file ;
struct poll_table_struct *ldv_24_resource_struct_poll_table_struct_ptr ;
struct vm_area_struct *ldv_24_resource_struct_vm_area_struct_ptr ;
int ldv_24_ret_default ;
void (*ldv_28_exit_vsp1_platform_driver_exit_default)(void) ;
int (*ldv_28_init_vsp1_platform_driver_init_default)(void) ;
int ldv_28_ret_default ;
struct platform_driver *ldv_2_container_platform_driver ;
int ldv_2_probed_default ;
struct platform_device *ldv_2_resource_platform_device ;
struct device *ldv_3_device_device ;
struct dev_pm_ops *ldv_3_pm_ops_dev_pm_ops ;
int (*ldv_4_callback_freeze)(struct device * ) ;
int (*ldv_4_callback_poweroff)(struct device * ) ;
int (*ldv_4_callback_restore)(struct device * ) ;
int (*ldv_4_callback_resume)(struct device * ) ;
int (*ldv_4_callback_suspend)(struct device * ) ;
int (*ldv_4_callback_thaw)(struct device * ) ;
struct device *ldv_4_device_device ;
int ldv_4_ret_default ;
struct rtc_class_ops *ldv_4_rtc_class_ops_rtc_class_ops ;
struct rtc_device *ldv_4_rtc_device_rtc_device ;
int (*ldv_5_callback_link_setup)(struct media_entity * , struct media_pad * , struct media_pad * ,
                                 unsigned int ) ;
int (*ldv_5_callback_link_validate)(struct media_link * ) ;
struct media_entity *ldv_5_container_struct_media_entity_ptr ;
struct media_link *ldv_5_container_struct_media_link_ptr ;
struct media_pad *ldv_5_container_struct_media_pad_ptr ;
struct media_pad *ldv_5_ldv_param_3_2_default ;
unsigned int ldv_5_ldv_param_3_3_default ;
int (*ldv_6_callback_s_ctrl)(struct v4l2_ctrl * ) ;
struct v4l2_ctrl *ldv_6_container_struct_v4l2_ctrl_ptr ;
int (*ldv_7_callback_vidioc_create_bufs)(struct file * , void * , struct v4l2_create_buffers * ) ;
int (*ldv_7_callback_vidioc_dqbuf)(struct file * , void * , struct v4l2_buffer * ) ;
int (*ldv_7_callback_vidioc_g_fmt_vid_cap_mplane)(struct file * , void * , struct v4l2_format * ) ;
int (*ldv_7_callback_vidioc_g_fmt_vid_out_mplane)(struct file * , void * , struct v4l2_format * ) ;
int (*ldv_7_callback_vidioc_prepare_buf)(struct file * , void * , struct v4l2_buffer * ) ;
int (*ldv_7_callback_vidioc_qbuf)(struct file * , void * , struct v4l2_buffer * ) ;
int (*ldv_7_callback_vidioc_querybuf)(struct file * , void * , struct v4l2_buffer * ) ;
int (*ldv_7_callback_vidioc_querycap)(struct file * , void * , struct v4l2_capability * ) ;
int (*ldv_7_callback_vidioc_reqbufs)(struct file * , void * , struct v4l2_requestbuffers * ) ;
int (*ldv_7_callback_vidioc_s_fmt_vid_cap_mplane)(struct file * , void * , struct v4l2_format * ) ;
int (*ldv_7_callback_vidioc_s_fmt_vid_out_mplane)(struct file * , void * , struct v4l2_format * ) ;
int (*ldv_7_callback_vidioc_streamoff)(struct file * , void * , enum v4l2_buf_type ) ;
int (*ldv_7_callback_vidioc_streamon)(struct file * , void * , enum v4l2_buf_type ) ;
int (*ldv_7_callback_vidioc_try_fmt_vid_cap_mplane)(struct file * , void * , struct v4l2_format * ) ;
int (*ldv_7_callback_vidioc_try_fmt_vid_out_mplane)(struct file * , void * , struct v4l2_format * ) ;
enum v4l2_buf_type ldv_7_container_enum_v4l2_buf_type ;
struct file *ldv_7_container_struct_file_ptr ;
struct v4l2_buffer *ldv_7_container_struct_v4l2_buffer_ptr ;
struct v4l2_capability *ldv_7_container_struct_v4l2_capability_ptr ;
struct v4l2_create_buffers *ldv_7_container_struct_v4l2_create_buffers_ptr ;
struct v4l2_format *ldv_7_container_struct_v4l2_format_ptr ;
struct v4l2_requestbuffers *ldv_7_container_struct_v4l2_requestbuffers_ptr ;
struct v4l2_buffer *ldv_7_ldv_param_12_2_default ;
struct v4l2_buffer *ldv_7_ldv_param_15_2_default ;
struct v4l2_buffer *ldv_7_ldv_param_18_2_default ;
struct v4l2_buffer *ldv_7_ldv_param_7_2_default ;
int (*ldv_8_callback_open)(struct v4l2_subdev * , struct v4l2_subdev_fh * ) ;
struct v4l2_subdev_fh *ldv_8_container_struct_v4l2_subdev_fh_ptr ;
struct v4l2_subdev *ldv_8_container_struct_v4l2_subdev_ptr ;
int (*ldv_9_callback_enum_frame_size)(struct v4l2_subdev * , struct v4l2_subdev_fh * ,
                                      struct v4l2_subdev_frame_size_enum * ) ;
struct v4l2_subdev_fh *ldv_9_container_struct_v4l2_subdev_fh_ptr ;
struct v4l2_subdev_format *ldv_9_container_struct_v4l2_subdev_format_ptr ;
struct v4l2_subdev_frame_size_enum *ldv_9_container_struct_v4l2_subdev_frame_size_enum_ptr ;
struct v4l2_subdev_mbus_code_enum *ldv_9_container_struct_v4l2_subdev_mbus_code_enum_ptr ;
struct v4l2_subdev *ldv_9_container_struct_v4l2_subdev_ptr ;
struct v4l2_subdev_selection *ldv_9_container_struct_v4l2_subdev_selection_ptr ;
unsigned int ldv_9_ldv_param_10_1_default ;
int ldv_9_ldv_param_13_1_default ;
int ldv_statevar_0 ;
int ldv_statevar_1 ;
int ldv_statevar_10 ;
int ldv_statevar_11 ;
int ldv_statevar_12 ;
int ldv_statevar_13 ;
int ldv_statevar_14 ;
int ldv_statevar_15 ;
int ldv_statevar_16 ;
int ldv_statevar_17 ;
int ldv_statevar_18 ;
int ldv_statevar_19 ;
int ldv_statevar_2 ;
int ldv_statevar_20 ;
int ldv_statevar_21 ;
int ldv_statevar_22 ;
int ldv_statevar_23 ;
int ldv_statevar_24 ;
int ldv_statevar_28 ;
int ldv_statevar_3 ;
int ldv_statevar_4 ;
int ldv_statevar_5 ;
int ldv_statevar_6 ;
int ldv_statevar_7 ;
int ldv_statevar_8 ;
int ldv_statevar_9 ;
enum irqreturn (*ldv_0_callback_handler)(int , void * ) = & vsp1_irq_handler;
enum irqreturn (*ldv_0_thread_thread)(int , void * ) = & vsp1_irq_handler;
enum irqreturn (*ldv_1_callback_handler)(int , void * ) = & vsp1_irq_handler;
enum irqreturn (*ldv_1_thread_thread)(int , void * ) = & vsp1_irq_handler;
void (*ldv_28_exit_vsp1_platform_driver_exit_default)(void) = & vsp1_platform_driver_exit;
int (*ldv_28_init_vsp1_platform_driver_init_default)(void) = & vsp1_platform_driver_init;
int (*ldv_4_callback_freeze)(struct device * ) = & vsp1_pm_suspend;
int (*ldv_4_callback_poweroff)(struct device * ) = & vsp1_pm_suspend;
int (*ldv_4_callback_restore)(struct device * ) = & vsp1_pm_resume;
int (*ldv_4_callback_resume)(struct device * ) = & vsp1_pm_resume;
int (*ldv_4_callback_suspend)(struct device * ) = & vsp1_pm_suspend;
int (*ldv_4_callback_thaw)(struct device * ) = & vsp1_pm_resume;
void ldv_EMGentry_exit_vsp1_platform_driver_exit_28_2(void (*arg0)(void) )
{
  {
  {
  vsp1_platform_driver_exit();
  }
  return;
}
}
int ldv_EMGentry_init_vsp1_platform_driver_init_28_24(int (*arg0)(void) )
{
  int tmp ;
  {
  {
  tmp = vsp1_platform_driver_init();
  }
  return (tmp);
}
}
int ldv___platform_driver_register(int arg0 , struct platform_driver *arg1 , struct module *arg2 )
{
  struct platform_driver *ldv_25_platform_driver_platform_driver ;
  int tmp ;
  {
  {
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    {
    ldv_assume(arg0 == 0);
    ldv_25_platform_driver_platform_driver = arg1;
    ldv_assume(ldv_statevar_2 == 17);
    ldv_dispatch_register_25_2(ldv_25_platform_driver_platform_driver);
    }
    return (arg0);
  } else {
    {
    ldv_assume(arg0 != 0);
    }
    return (arg0);
  }
  return (arg0);
}
}
void ldv_allocate_external_0(void)
{
  void *tmp ;
  void *tmp___0 ;
  void *tmp___1 ;
  void *tmp___2 ;
  void *tmp___3 ;
  void *tmp___4 ;
  void *tmp___5 ;
  void *tmp___6 ;
  void *tmp___7 ;
  void *tmp___8 ;
  void *tmp___9 ;
  void *tmp___10 ;
  void *tmp___11 ;
  void *tmp___12 ;
  void *tmp___13 ;
  void *tmp___14 ;
  void *tmp___15 ;
  void *tmp___16 ;
  void *tmp___17 ;
  void *tmp___18 ;
  void *tmp___19 ;
  void *tmp___20 ;
  void *tmp___21 ;
  void *tmp___22 ;
  void *tmp___23 ;
  void *tmp___24 ;
  void *tmp___25 ;
  void *tmp___26 ;
  void *tmp___27 ;
  void *tmp___28 ;
  void *tmp___29 ;
  void *tmp___30 ;
  void *tmp___31 ;
  void *tmp___32 ;
  void *tmp___33 ;
  void *tmp___34 ;
  void *tmp___35 ;
  void *tmp___36 ;
  void *tmp___37 ;
  void *tmp___38 ;
  void *tmp___39 ;
  void *tmp___40 ;
  void *tmp___41 ;
  void *tmp___42 ;
  void *tmp___43 ;
  void *tmp___44 ;
  void *tmp___45 ;
  void *tmp___46 ;
  void *tmp___47 ;
  void *tmp___48 ;
  void *tmp___49 ;
  void *tmp___50 ;
  void *tmp___51 ;
  void *tmp___52 ;
  void *tmp___53 ;
  void *tmp___54 ;
  void *tmp___55 ;
  void *tmp___56 ;
  void *tmp___57 ;
  void *tmp___58 ;
  void *tmp___59 ;
  void *tmp___60 ;
  void *tmp___61 ;
  void *tmp___62 ;
  void *tmp___63 ;
  void *tmp___64 ;
  void *tmp___65 ;
  void *tmp___66 ;
  void *tmp___67 ;
  void *tmp___68 ;
  void *tmp___69 ;
  void *tmp___70 ;
  void *tmp___71 ;
  void *tmp___72 ;
  void *tmp___73 ;
  void *tmp___74 ;
  void *tmp___75 ;
  void *tmp___76 ;
  void *tmp___77 ;
  void *tmp___78 ;
  void *tmp___79 ;
  void *tmp___80 ;
  void *tmp___81 ;
  void *tmp___82 ;
  void *tmp___83 ;
  void *tmp___84 ;
  void *tmp___85 ;
  void *tmp___86 ;
  void *tmp___87 ;
  void *tmp___88 ;
  void *tmp___89 ;
  void *tmp___90 ;
  void *tmp___91 ;
  void *tmp___92 ;
  void *tmp___93 ;
  void *tmp___94 ;
  void *tmp___95 ;
  void *tmp___96 ;
  void *tmp___97 ;
  void *tmp___98 ;
  void *tmp___99 ;
  void *tmp___100 ;
  void *tmp___101 ;
  void *tmp___102 ;
  void *tmp___103 ;
  void *tmp___104 ;
  void *tmp___105 ;
  void *tmp___106 ;
  {
  {
  ldv_0_data_data = external_allocated_data();
  tmp = external_allocated_data();
  ldv_0_dev_dev = (struct iio_dev *)tmp;
  ldv_1_data_data = external_allocated_data();
  tmp___0 = external_allocated_data();
  ldv_2_resource_platform_device = (struct platform_device *)tmp___0;
  tmp___1 = external_allocated_data();
  ldv_3_device_device = (struct device *)tmp___1;
  tmp___2 = external_allocated_data();
  ldv_4_device_device = (struct device *)tmp___2;
  tmp___3 = external_allocated_data();
  ldv_4_rtc_class_ops_rtc_class_ops = (struct rtc_class_ops *)tmp___3;
  tmp___4 = external_allocated_data();
  ldv_4_rtc_device_rtc_device = (struct rtc_device *)tmp___4;
  tmp___5 = external_allocated_data();
  ldv_5_container_struct_media_entity_ptr = (struct media_entity *)tmp___5;
  tmp___6 = external_allocated_data();
  ldv_5_container_struct_media_link_ptr = (struct media_link *)tmp___6;
  tmp___7 = external_allocated_data();
  ldv_5_container_struct_media_pad_ptr = (struct media_pad *)tmp___7;
  tmp___8 = external_allocated_data();
  ldv_5_ldv_param_3_2_default = (struct media_pad *)tmp___8;
  tmp___9 = external_allocated_data();
  ldv_6_container_struct_v4l2_ctrl_ptr = (struct v4l2_ctrl *)tmp___9;
  tmp___10 = external_allocated_data();
  ldv_7_container_struct_file_ptr = (struct file *)tmp___10;
  tmp___11 = external_allocated_data();
  ldv_7_container_struct_v4l2_buffer_ptr = (struct v4l2_buffer *)tmp___11;
  tmp___12 = external_allocated_data();
  ldv_7_container_struct_v4l2_capability_ptr = (struct v4l2_capability *)tmp___12;
  tmp___13 = external_allocated_data();
  ldv_7_container_struct_v4l2_create_buffers_ptr = (struct v4l2_create_buffers *)tmp___13;
  tmp___14 = external_allocated_data();
  ldv_7_container_struct_v4l2_format_ptr = (struct v4l2_format *)tmp___14;
  tmp___15 = external_allocated_data();
  ldv_7_container_struct_v4l2_requestbuffers_ptr = (struct v4l2_requestbuffers *)tmp___15;
  tmp___16 = external_allocated_data();
  ldv_7_ldv_param_12_2_default = (struct v4l2_buffer *)tmp___16;
  tmp___17 = external_allocated_data();
  ldv_7_ldv_param_15_2_default = (struct v4l2_buffer *)tmp___17;
  tmp___18 = external_allocated_data();
  ldv_7_ldv_param_18_2_default = (struct v4l2_buffer *)tmp___18;
  tmp___19 = external_allocated_data();
  ldv_7_ldv_param_7_2_default = (struct v4l2_buffer *)tmp___19;
  tmp___20 = external_allocated_data();
  ldv_8_container_struct_v4l2_subdev_fh_ptr = (struct v4l2_subdev_fh *)tmp___20;
  tmp___21 = external_allocated_data();
  ldv_8_container_struct_v4l2_subdev_ptr = (struct v4l2_subdev *)tmp___21;
  tmp___22 = external_allocated_data();
  ldv_9_container_struct_v4l2_subdev_fh_ptr = (struct v4l2_subdev_fh *)tmp___22;
  tmp___23 = external_allocated_data();
  ldv_9_container_struct_v4l2_subdev_format_ptr = (struct v4l2_subdev_format *)tmp___23;
  tmp___24 = external_allocated_data();
  ldv_9_container_struct_v4l2_subdev_frame_size_enum_ptr = (struct v4l2_subdev_frame_size_enum *)tmp___24;
  tmp___25 = external_allocated_data();
  ldv_9_container_struct_v4l2_subdev_mbus_code_enum_ptr = (struct v4l2_subdev_mbus_code_enum *)tmp___25;
  tmp___26 = external_allocated_data();
  ldv_9_container_struct_v4l2_subdev_ptr = (struct v4l2_subdev *)tmp___26;
  tmp___27 = external_allocated_data();
  ldv_9_container_struct_v4l2_subdev_selection_ptr = (struct v4l2_subdev_selection *)tmp___27;
  tmp___28 = external_allocated_data();
  ldv_10_container_struct_v4l2_subdev_fh_ptr = (struct v4l2_subdev_fh *)tmp___28;
  tmp___29 = external_allocated_data();
  ldv_10_container_struct_v4l2_subdev_format_ptr = (struct v4l2_subdev_format *)tmp___29;
  tmp___30 = external_allocated_data();
  ldv_10_container_struct_v4l2_subdev_frame_size_enum_ptr = (struct v4l2_subdev_frame_size_enum *)tmp___30;
  tmp___31 = external_allocated_data();
  ldv_10_container_struct_v4l2_subdev_mbus_code_enum_ptr = (struct v4l2_subdev_mbus_code_enum *)tmp___31;
  tmp___32 = external_allocated_data();
  ldv_10_container_struct_v4l2_subdev_ptr = (struct v4l2_subdev *)tmp___32;
  tmp___33 = external_allocated_data();
  ldv_10_container_struct_v4l2_subdev_selection_ptr = (struct v4l2_subdev_selection *)tmp___33;
  tmp___34 = external_allocated_data();
  ldv_11_container_struct_v4l2_subdev_fh_ptr = (struct v4l2_subdev_fh *)tmp___34;
  tmp___35 = external_allocated_data();
  ldv_11_container_struct_v4l2_subdev_format_ptr = (struct v4l2_subdev_format *)tmp___35;
  tmp___36 = external_allocated_data();
  ldv_11_container_struct_v4l2_subdev_frame_size_enum_ptr = (struct v4l2_subdev_frame_size_enum *)tmp___36;
  tmp___37 = external_allocated_data();
  ldv_11_container_struct_v4l2_subdev_mbus_code_enum_ptr = (struct v4l2_subdev_mbus_code_enum *)tmp___37;
  tmp___38 = external_allocated_data();
  ldv_11_container_struct_v4l2_subdev_ptr = (struct v4l2_subdev *)tmp___38;
  tmp___39 = external_allocated_data();
  ldv_11_container_struct_v4l2_subdev_selection_ptr = (struct v4l2_subdev_selection *)tmp___39;
  tmp___40 = external_allocated_data();
  ldv_12_container_struct_v4l2_subdev_fh_ptr = (struct v4l2_subdev_fh *)tmp___40;
  tmp___41 = external_allocated_data();
  ldv_12_container_struct_v4l2_subdev_format_ptr = (struct v4l2_subdev_format *)tmp___41;
  tmp___42 = external_allocated_data();
  ldv_12_container_struct_v4l2_subdev_frame_size_enum_ptr = (struct v4l2_subdev_frame_size_enum *)tmp___42;
  tmp___43 = external_allocated_data();
  ldv_12_container_struct_v4l2_subdev_mbus_code_enum_ptr = (struct v4l2_subdev_mbus_code_enum *)tmp___43;
  tmp___44 = external_allocated_data();
  ldv_12_container_struct_v4l2_subdev_ptr = (struct v4l2_subdev *)tmp___44;
  tmp___45 = external_allocated_data();
  ldv_12_container_struct_v4l2_subdev_selection_ptr = (struct v4l2_subdev_selection *)tmp___45;
  tmp___46 = external_allocated_data();
  ldv_13_container_struct_v4l2_subdev_fh_ptr = (struct v4l2_subdev_fh *)tmp___46;
  tmp___47 = external_allocated_data();
  ldv_13_container_struct_v4l2_subdev_format_ptr = (struct v4l2_subdev_format *)tmp___47;
  tmp___48 = external_allocated_data();
  ldv_13_container_struct_v4l2_subdev_frame_size_enum_ptr = (struct v4l2_subdev_frame_size_enum *)tmp___48;
  tmp___49 = external_allocated_data();
  ldv_13_container_struct_v4l2_subdev_mbus_code_enum_ptr = (struct v4l2_subdev_mbus_code_enum *)tmp___49;
  tmp___50 = external_allocated_data();
  ldv_13_container_struct_v4l2_subdev_ptr = (struct v4l2_subdev *)tmp___50;
  tmp___51 = external_allocated_data();
  ldv_13_container_struct_v4l2_subdev_selection_ptr = (struct v4l2_subdev_selection *)tmp___51;
  tmp___52 = external_allocated_data();
  ldv_14_container_struct_v4l2_subdev_fh_ptr = (struct v4l2_subdev_fh *)tmp___52;
  tmp___53 = external_allocated_data();
  ldv_14_container_struct_v4l2_subdev_format_ptr = (struct v4l2_subdev_format *)tmp___53;
  tmp___54 = external_allocated_data();
  ldv_14_container_struct_v4l2_subdev_frame_size_enum_ptr = (struct v4l2_subdev_frame_size_enum *)tmp___54;
  tmp___55 = external_allocated_data();
  ldv_14_container_struct_v4l2_subdev_mbus_code_enum_ptr = (struct v4l2_subdev_mbus_code_enum *)tmp___55;
  tmp___56 = external_allocated_data();
  ldv_14_container_struct_v4l2_subdev_ptr = (struct v4l2_subdev *)tmp___56;
  tmp___57 = external_allocated_data();
  ldv_14_container_struct_v4l2_subdev_selection_ptr = (struct v4l2_subdev_selection *)tmp___57;
  tmp___58 = external_allocated_data();
  ldv_15_container_struct_v4l2_subdev_fh_ptr = (struct v4l2_subdev_fh *)tmp___58;
  tmp___59 = external_allocated_data();
  ldv_15_container_struct_v4l2_subdev_format_ptr = (struct v4l2_subdev_format *)tmp___59;
  tmp___60 = external_allocated_data();
  ldv_15_container_struct_v4l2_subdev_frame_size_enum_ptr = (struct v4l2_subdev_frame_size_enum *)tmp___60;
  tmp___61 = external_allocated_data();
  ldv_15_container_struct_v4l2_subdev_mbus_code_enum_ptr = (struct v4l2_subdev_mbus_code_enum *)tmp___61;
  tmp___62 = external_allocated_data();
  ldv_15_container_struct_v4l2_subdev_ptr = (struct v4l2_subdev *)tmp___62;
  tmp___63 = external_allocated_data();
  ldv_15_container_struct_v4l2_subdev_selection_ptr = (struct v4l2_subdev_selection *)tmp___63;
  tmp___64 = external_allocated_data();
  ldv_16_container_struct_v4l2_subdev_fh_ptr = (struct v4l2_subdev_fh *)tmp___64;
  tmp___65 = external_allocated_data();
  ldv_16_container_struct_v4l2_subdev_format_ptr = (struct v4l2_subdev_format *)tmp___65;
  tmp___66 = external_allocated_data();
  ldv_16_container_struct_v4l2_subdev_frame_size_enum_ptr = (struct v4l2_subdev_frame_size_enum *)tmp___66;
  tmp___67 = external_allocated_data();
  ldv_16_container_struct_v4l2_subdev_mbus_code_enum_ptr = (struct v4l2_subdev_mbus_code_enum *)tmp___67;
  tmp___68 = external_allocated_data();
  ldv_16_container_struct_v4l2_subdev_ptr = (struct v4l2_subdev *)tmp___68;
  tmp___69 = external_allocated_data();
  ldv_16_container_struct_v4l2_subdev_selection_ptr = (struct v4l2_subdev_selection *)tmp___69;
  tmp___70 = external_allocated_data();
  ldv_17_container_struct_v4l2_subdev_fh_ptr = (struct v4l2_subdev_fh *)tmp___70;
  tmp___71 = external_allocated_data();
  ldv_17_container_struct_v4l2_subdev_format_ptr = (struct v4l2_subdev_format *)tmp___71;
  tmp___72 = external_allocated_data();
  ldv_17_container_struct_v4l2_subdev_frame_size_enum_ptr = (struct v4l2_subdev_frame_size_enum *)tmp___72;
  tmp___73 = external_allocated_data();
  ldv_17_container_struct_v4l2_subdev_mbus_code_enum_ptr = (struct v4l2_subdev_mbus_code_enum *)tmp___73;
  tmp___74 = external_allocated_data();
  ldv_17_container_struct_v4l2_subdev_ptr = (struct v4l2_subdev *)tmp___74;
  tmp___75 = external_allocated_data();
  ldv_17_container_struct_v4l2_subdev_selection_ptr = (struct v4l2_subdev_selection *)tmp___75;
  tmp___76 = external_allocated_data();
  ldv_18_container_struct_v4l2_subdev_fh_ptr = (struct v4l2_subdev_fh *)tmp___76;
  tmp___77 = external_allocated_data();
  ldv_18_container_struct_v4l2_subdev_format_ptr = (struct v4l2_subdev_format *)tmp___77;
  tmp___78 = external_allocated_data();
  ldv_18_container_struct_v4l2_subdev_frame_size_enum_ptr = (struct v4l2_subdev_frame_size_enum *)tmp___78;
  tmp___79 = external_allocated_data();
  ldv_18_container_struct_v4l2_subdev_mbus_code_enum_ptr = (struct v4l2_subdev_mbus_code_enum *)tmp___79;
  tmp___80 = external_allocated_data();
  ldv_18_container_struct_v4l2_subdev_ptr = (struct v4l2_subdev *)tmp___80;
  tmp___81 = external_allocated_data();
  ldv_18_container_struct_v4l2_subdev_selection_ptr = (struct v4l2_subdev_selection *)tmp___81;
  tmp___82 = external_allocated_data();
  ldv_19_container_struct_v4l2_subdev_fh_ptr = (struct v4l2_subdev_fh *)tmp___82;
  tmp___83 = external_allocated_data();
  ldv_19_container_struct_v4l2_subdev_format_ptr = (struct v4l2_subdev_format *)tmp___83;
  tmp___84 = external_allocated_data();
  ldv_19_container_struct_v4l2_subdev_frame_size_enum_ptr = (struct v4l2_subdev_frame_size_enum *)tmp___84;
  tmp___85 = external_allocated_data();
  ldv_19_container_struct_v4l2_subdev_mbus_code_enum_ptr = (struct v4l2_subdev_mbus_code_enum *)tmp___85;
  tmp___86 = external_allocated_data();
  ldv_19_container_struct_v4l2_subdev_ptr = (struct v4l2_subdev *)tmp___86;
  tmp___87 = external_allocated_data();
  ldv_19_container_struct_v4l2_subdev_selection_ptr = (struct v4l2_subdev_selection *)tmp___87;
  tmp___88 = external_allocated_data();
  ldv_20_container_struct_v4l2_subdev_fh_ptr = (struct v4l2_subdev_fh *)tmp___88;
  tmp___89 = external_allocated_data();
  ldv_20_container_struct_v4l2_subdev_format_ptr = (struct v4l2_subdev_format *)tmp___89;
  tmp___90 = external_allocated_data();
  ldv_20_container_struct_v4l2_subdev_frame_size_enum_ptr = (struct v4l2_subdev_frame_size_enum *)tmp___90;
  tmp___91 = external_allocated_data();
  ldv_20_container_struct_v4l2_subdev_mbus_code_enum_ptr = (struct v4l2_subdev_mbus_code_enum *)tmp___91;
  tmp___92 = external_allocated_data();
  ldv_20_container_struct_v4l2_subdev_ptr = (struct v4l2_subdev *)tmp___92;
  tmp___93 = external_allocated_data();
  ldv_20_container_struct_v4l2_subdev_selection_ptr = (struct v4l2_subdev_selection *)tmp___93;
  tmp___94 = external_allocated_data();
  ldv_21_container_struct_v4l2_format_ptr = (struct v4l2_format *)tmp___94;
  tmp___95 = external_allocated_data();
  ldv_21_container_struct_vb2_buffer_ptr = (struct vb2_buffer *)tmp___95;
  tmp___96 = external_allocated_data();
  ldv_21_container_struct_vb2_queue_ptr = (struct vb2_queue *)tmp___96;
  tmp___97 = external_allocated_data();
  ldv_21_container_void_ptr_ptr = (void **)tmp___97;
  tmp___98 = external_allocated_data();
  ldv_21_ldv_param_8_3_default = (unsigned int *)tmp___98;
  tmp___99 = external_allocated_data();
  ldv_21_ldv_param_8_4_default = (unsigned int *)tmp___99;
  tmp___100 = external_allocated_data();
  ldv_22_container_struct_vsp1_video_buffer_ptr = (struct vsp1_video_buffer *)tmp___100;
  tmp___101 = external_allocated_data();
  ldv_22_container_struct_vsp1_video_ptr = (struct vsp1_video *)tmp___101;
  tmp___102 = external_allocated_data();
  ldv_23_container_struct_vsp1_video_buffer_ptr = (struct vsp1_video_buffer *)tmp___102;
  tmp___103 = external_allocated_data();
  ldv_23_container_struct_vsp1_video_ptr = (struct vsp1_video *)tmp___103;
  tmp___104 = external_allocated_data();
  ldv_24_resource_file = (struct file *)tmp___104;
  tmp___105 = external_allocated_data();
  ldv_24_resource_struct_poll_table_struct_ptr = (struct poll_table_struct *)tmp___105;
  tmp___106 = external_allocated_data();
  ldv_24_resource_struct_vm_area_struct_ptr = (struct vm_area_struct *)tmp___106;
  }
  return;
}
}
void ldv_dispatch_deregister_26_1(struct platform_driver *arg0 )
{
  {
  {
  ldv_2_container_platform_driver = arg0;
  ldv_switch_automaton_state_2_8();
  }
  return;
}
}
void ldv_dispatch_deregister_dummy_resourceless_instance_10_28_4(void)
{
  {
  {
  ldv_switch_automaton_state_7_1();
  }
  return;
}
}
void ldv_dispatch_deregister_dummy_resourceless_instance_11_28_5(void)
{
  {
  {
  ldv_switch_automaton_state_8_1();
  }
  return;
}
}
void ldv_dispatch_deregister_dummy_resourceless_instance_12_28_6(void)
{
  {
  {
  ldv_switch_automaton_state_9_1();
  ldv_switch_automaton_state_10_1();
  ldv_switch_automaton_state_11_1();
  ldv_switch_automaton_state_12_1();
  ldv_switch_automaton_state_13_1();
  ldv_switch_automaton_state_14_1();
  ldv_switch_automaton_state_15_1();
  ldv_switch_automaton_state_16_1();
  ldv_switch_automaton_state_17_1();
  ldv_switch_automaton_state_18_1();
  ldv_switch_automaton_state_19_1();
  ldv_switch_automaton_state_20_1();
  }
  return;
}
}
void ldv_dispatch_deregister_dummy_resourceless_instance_14_28_7(void)
{
  {
  {
  ldv_switch_automaton_state_21_1();
  }
  return;
}
}
void ldv_dispatch_deregister_dummy_resourceless_instance_15_28_8(void)
{
  {
  {
  ldv_switch_automaton_state_22_1();
  ldv_switch_automaton_state_23_1();
  }
  return;
}
}
void ldv_dispatch_deregister_dummy_resourceless_instance_8_28_9(void)
{
  {
  {
  ldv_switch_automaton_state_5_1();
  }
  return;
}
}
void ldv_dispatch_deregister_dummy_resourceless_instance_9_28_10(void)
{
  {
  {
  ldv_switch_automaton_state_6_1();
  }
  return;
}
}
void ldv_dispatch_deregister_io_instance_16_28_11(void)
{
  {
  {
  ldv_switch_automaton_state_24_5();
  }
  return;
}
}
void ldv_dispatch_deregister_rtc_class_instance_7_28_12(void)
{
  {
  {
  ldv_switch_automaton_state_4_5();
  }
  return;
}
}
void ldv_dispatch_pm_deregister_2_5(void)
{
  {
  {
  ldv_switch_automaton_state_3_1();
  }
  return;
}
}
void ldv_dispatch_pm_register_2_6(void)
{
  {
  {
  ldv_switch_automaton_state_3_29();
  }
  return;
}
}
void ldv_dispatch_register_25_2(struct platform_driver *arg0 )
{
  {
  {
  ldv_2_container_platform_driver = arg0;
  ldv_switch_automaton_state_2_17();
  }
  return;
}
}
void ldv_dispatch_register_27_2(struct v4l2_subdev *arg0 )
{
  int tmp ;
  {
  {
  tmp = ldv_undef_int();
  }
  {
  if (tmp == 0) {
    goto case_0;
  } else {
  }
  if (tmp == 1) {
    goto case_1;
  } else {
  }
  if (tmp == 2) {
    goto case_2;
  } else {
  }
  if (tmp == 3) {
    goto case_3;
  } else {
  }
  if (tmp == 4) {
    goto case_4;
  } else {
  }
  if (tmp == 5) {
    goto case_5;
  } else {
  }
  if (tmp == 6) {
    goto case_6;
  } else {
  }
  if (tmp == 7) {
    goto case_7;
  } else {
  }
  if (tmp == 8) {
    goto case_8;
  } else {
  }
  if (tmp == 9) {
    goto case_9;
  } else {
  }
  if (tmp == 10) {
    goto case_10;
  } else {
  }
  if (tmp == 11) {
    goto case_11;
  } else {
  }
  goto switch_default;
  case_0:
  {
  ldv_9_container_struct_v4l2_subdev_ptr = arg0;
  ldv_switch_automaton_state_9_5();
  }
  goto ldv_36076;
  case_1:
  {
  ldv_10_container_struct_v4l2_subdev_ptr = arg0;
  ldv_switch_automaton_state_10_5();
  }
  goto ldv_36076;
  case_2:
  {
  ldv_11_container_struct_v4l2_subdev_ptr = arg0;
  ldv_switch_automaton_state_11_5();
  }
  goto ldv_36076;
  case_3:
  {
  ldv_12_container_struct_v4l2_subdev_ptr = arg0;
  ldv_switch_automaton_state_12_5();
  }
  goto ldv_36076;
  case_4:
  {
  ldv_13_container_struct_v4l2_subdev_ptr = arg0;
  ldv_switch_automaton_state_13_5();
  }
  goto ldv_36076;
  case_5:
  {
  ldv_14_container_struct_v4l2_subdev_ptr = arg0;
  ldv_switch_automaton_state_14_5();
  }
  goto ldv_36076;
  case_6:
  {
  ldv_15_container_struct_v4l2_subdev_ptr = arg0;
  ldv_switch_automaton_state_15_5();
  }
  goto ldv_36076;
  case_7:
  {
  ldv_16_container_struct_v4l2_subdev_ptr = arg0;
  ldv_switch_automaton_state_16_5();
  }
  goto ldv_36076;
  case_8:
  {
  ldv_17_container_struct_v4l2_subdev_ptr = arg0;
  ldv_switch_automaton_state_17_5();
  }
  goto ldv_36076;
  case_9:
  {
  ldv_18_container_struct_v4l2_subdev_ptr = arg0;
  ldv_switch_automaton_state_18_5();
  }
  goto ldv_36076;
  case_10:
  {
  ldv_19_container_struct_v4l2_subdev_ptr = arg0;
  ldv_switch_automaton_state_19_5();
  }
  goto ldv_36076;
  case_11:
  {
  ldv_20_container_struct_v4l2_subdev_ptr = arg0;
  ldv_switch_automaton_state_20_5();
  }
  goto ldv_36076;
  switch_default:
  {
  ldv_stop();
  }
  switch_break: ;
  }
  ldv_36076: ;
  return;
}
}
void ldv_dispatch_register_dummy_resourceless_instance_10_28_13(void)
{
  {
  {
  ldv_switch_automaton_state_7_5();
  }
  return;
}
}
void ldv_dispatch_register_dummy_resourceless_instance_11_28_14(void)
{
  {
  {
  ldv_switch_automaton_state_8_5();
  }
  return;
}
}
void ldv_dispatch_register_dummy_resourceless_instance_14_28_15(void)
{
  {
  {
  ldv_switch_automaton_state_21_5();
  }
  return;
}
}
void ldv_dispatch_register_dummy_resourceless_instance_15_28_16(void)
{
  {
  {
  ldv_switch_automaton_state_22_5();
  ldv_switch_automaton_state_23_5();
  }
  return;
}
}
void ldv_dispatch_register_dummy_resourceless_instance_8_28_17(void)
{
  {
  {
  ldv_switch_automaton_state_5_5();
  }
  return;
}
}
void ldv_dispatch_register_dummy_resourceless_instance_9_28_18(void)
{
  {
  {
  ldv_switch_automaton_state_6_5();
  }
  return;
}
}
void ldv_dispatch_register_io_instance_16_28_19(void)
{
  {
  {
  ldv_switch_automaton_state_24_14();
  }
  return;
}
}
void ldv_dispatch_register_rtc_class_instance_7_28_20(void)
{
  {
  {
  ldv_switch_automaton_state_4_12();
  }
  return;
}
}
void ldv_entry_EMGentry_28(void *arg0 )
{
  int tmp ;
  int tmp___0 ;
  {
  {
  if (ldv_statevar_28 == 2) {
    goto case_2;
  } else {
  }
  if (ldv_statevar_28 == 3) {
    goto case_3;
  } else {
  }
  if (ldv_statevar_28 == 4) {
    goto case_4;
  } else {
  }
  if (ldv_statevar_28 == 5) {
    goto case_5;
  } else {
  }
  if (ldv_statevar_28 == 6) {
    goto case_6;
  } else {
  }
  if (ldv_statevar_28 == 7) {
    goto case_7;
  } else {
  }
  if (ldv_statevar_28 == 8) {
    goto case_8;
  } else {
  }
  if (ldv_statevar_28 == 9) {
    goto case_9;
  } else {
  }
  if (ldv_statevar_28 == 10) {
    goto case_10;
  } else {
  }
  if (ldv_statevar_28 == 11) {
    goto case_11;
  } else {
  }
  if (ldv_statevar_28 == 12) {
    goto case_12;
  } else {
  }
  if (ldv_statevar_28 == 13) {
    goto case_13;
  } else {
  }
  if (ldv_statevar_28 == 14) {
    goto case_14;
  } else {
  }
  if (ldv_statevar_28 == 15) {
    goto case_15;
  } else {
  }
  if (ldv_statevar_28 == 16) {
    goto case_16;
  } else {
  }
  if (ldv_statevar_28 == 17) {
    goto case_17;
  } else {
  }
  if (ldv_statevar_28 == 18) {
    goto case_18;
  } else {
  }
  if (ldv_statevar_28 == 19) {
    goto case_19;
  } else {
  }
  if (ldv_statevar_28 == 20) {
    goto case_20;
  } else {
  }
  if (ldv_statevar_28 == 21) {
    goto case_21;
  } else {
  }
  if (ldv_statevar_28 == 23) {
    goto case_23;
  } else {
  }
  if (ldv_statevar_28 == 24) {
    goto case_24;
  } else {
  }
  goto switch_default;
  case_2:
  {
  ldv_assume(ldv_statevar_2 == 9);
  ldv_EMGentry_exit_vsp1_platform_driver_exit_28_2(ldv_28_exit_vsp1_platform_driver_exit_default);
  ldv_check_final_state();
  ldv_stop();
  ldv_statevar_28 = 24;
  }
  goto ldv_36117;
  case_3:
  {
  ldv_assume(ldv_statevar_2 == 9);
  ldv_EMGentry_exit_vsp1_platform_driver_exit_28_2(ldv_28_exit_vsp1_platform_driver_exit_default);
  ldv_check_final_state();
  ldv_stop();
  ldv_statevar_28 = 24;
  }
  goto ldv_36117;
  case_4:
  {
  ldv_assume(ldv_statevar_7 == 1);
  ldv_dispatch_deregister_dummy_resourceless_instance_10_28_4();
  ldv_statevar_28 = 2;
  }
  goto ldv_36117;
  case_5:
  {
  ldv_assume(ldv_statevar_8 == 1);
  ldv_dispatch_deregister_dummy_resourceless_instance_11_28_5();
  ldv_statevar_28 = 4;
  }
  goto ldv_36117;
  case_6:
  {
  ldv_assume(((((((((((ldv_statevar_9 == 1 || ldv_statevar_10 == 1) || ldv_statevar_11 == 1) || ldv_statevar_12 == 1) || ldv_statevar_13 == 1) || ldv_statevar_14 == 1) || ldv_statevar_15 == 1) || ldv_statevar_16 == 1) || ldv_statevar_17 == 1) || ldv_statevar_18 == 1) || ldv_statevar_19 == 1) || ldv_statevar_20 == 1);
  ldv_dispatch_deregister_dummy_resourceless_instance_12_28_6();
  ldv_statevar_28 = 5;
  }
  goto ldv_36117;
  case_7:
  {
  ldv_assume(ldv_statevar_21 == 1);
  ldv_dispatch_deregister_dummy_resourceless_instance_14_28_7();
  ldv_statevar_28 = 6;
  }
  goto ldv_36117;
  case_8:
  {
  ldv_assume(ldv_statevar_22 == 1 || ldv_statevar_23 == 1);
  ldv_dispatch_deregister_dummy_resourceless_instance_15_28_8();
  ldv_statevar_28 = 7;
  }
  goto ldv_36117;
  case_9:
  {
  ldv_assume(ldv_statevar_5 == 1);
  ldv_dispatch_deregister_dummy_resourceless_instance_8_28_9();
  ldv_statevar_28 = 8;
  }
  goto ldv_36117;
  case_10:
  {
  ldv_assume(ldv_statevar_6 == 1);
  ldv_dispatch_deregister_dummy_resourceless_instance_9_28_10();
  ldv_statevar_28 = 9;
  }
  goto ldv_36117;
  case_11:
  {
  ldv_assume(ldv_statevar_24 == 6);
  ldv_dispatch_deregister_io_instance_16_28_11();
  ldv_statevar_28 = 10;
  }
  goto ldv_36117;
  case_12:
  {
  ldv_assume(ldv_statevar_4 == 5);
  ldv_dispatch_deregister_rtc_class_instance_7_28_12();
  ldv_statevar_28 = 11;
  }
  goto ldv_36117;
  case_13:
  {
  ldv_assume(ldv_statevar_7 == 5);
  ldv_dispatch_register_dummy_resourceless_instance_10_28_13();
  ldv_statevar_28 = 12;
  }
  goto ldv_36117;
  case_14:
  {
  ldv_assume(ldv_statevar_8 == 5);
  ldv_dispatch_register_dummy_resourceless_instance_11_28_14();
  ldv_statevar_28 = 13;
  }
  goto ldv_36117;
  case_15:
  {
  ldv_assume(ldv_statevar_21 == 5);
  ldv_dispatch_register_dummy_resourceless_instance_14_28_15();
  ldv_statevar_28 = 14;
  }
  goto ldv_36117;
  case_16:
  {
  ldv_assume(ldv_statevar_22 == 5 || ldv_statevar_23 == 5);
  ldv_dispatch_register_dummy_resourceless_instance_15_28_16();
  ldv_statevar_28 = 15;
  }
  goto ldv_36117;
  case_17:
  {
  ldv_assume(ldv_statevar_5 == 5);
  ldv_dispatch_register_dummy_resourceless_instance_8_28_17();
  ldv_statevar_28 = 16;
  }
  goto ldv_36117;
  case_18:
  {
  ldv_assume(ldv_statevar_6 == 5);
  ldv_dispatch_register_dummy_resourceless_instance_9_28_18();
  ldv_statevar_28 = 17;
  }
  goto ldv_36117;
  case_19:
  {
  ldv_assume(ldv_statevar_24 == 14);
  ldv_dispatch_register_io_instance_16_28_19();
  ldv_statevar_28 = 18;
  }
  goto ldv_36117;
  case_20:
  {
  ldv_assume(ldv_statevar_4 == 12);
  ldv_dispatch_register_rtc_class_instance_7_28_20();
  ldv_statevar_28 = 19;
  }
  goto ldv_36117;
  case_21:
  {
  ldv_assume(ldv_28_ret_default == 0);
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    ldv_statevar_28 = 3;
  } else {
    ldv_statevar_28 = 20;
  }
  goto ldv_36117;
  case_23:
  {
  ldv_assume(ldv_28_ret_default != 0);
  ldv_check_final_state();
  ldv_stop();
  ldv_statevar_28 = 24;
  }
  goto ldv_36117;
  case_24:
  {
  ldv_assume(ldv_statevar_2 == 17);
  ldv_28_ret_default = ldv_EMGentry_init_vsp1_platform_driver_init_28_24(ldv_28_init_vsp1_platform_driver_init_default);
  ldv_28_ret_default = ldv_post_init(ldv_28_ret_default);
  tmp___0 = ldv_undef_int();
  }
  if (tmp___0 != 0) {
    ldv_statevar_28 = 21;
  } else {
    ldv_statevar_28 = 23;
  }
  goto ldv_36117;
  switch_default: ;
  switch_break: ;
  }
  ldv_36117: ;
  return;
}
}
int main(void)
{
  int tmp ;
  {
  {
  ldv_initialize();
  ldv_initialize_external_data();
  ldv_statevar_28 = 24;
  ldv_statevar_0 = 6;
  ldv_statevar_1 = 6;
  ldv_2_probed_default = 1;
  ldv_statevar_2 = 17;
  ldv_statevar_3 = 29;
  ldv_4_ret_default = 1;
  ldv_statevar_4 = 12;
  ldv_statevar_5 = 5;
  ldv_statevar_6 = 5;
  ldv_statevar_7 = 5;
  ldv_statevar_8 = 5;
  ldv_statevar_9 = 5;
  ldv_statevar_10 = 5;
  ldv_statevar_11 = 5;
  ldv_statevar_12 = 5;
  ldv_statevar_13 = 5;
  ldv_statevar_14 = 5;
  ldv_statevar_15 = 5;
  ldv_statevar_16 = 5;
  ldv_statevar_17 = 5;
  ldv_statevar_18 = 5;
  ldv_statevar_19 = 5;
  ldv_statevar_20 = 5;
  ldv_statevar_21 = 5;
  ldv_statevar_22 = 5;
  ldv_statevar_23 = 5;
  ldv_24_ret_default = 1;
  ldv_statevar_24 = 14;
  }
  ldv_36170:
  {
  tmp = ldv_undef_int();
  }
  {
  if (tmp == 0) {
    goto case_0;
  } else {
  }
  if (tmp == 1) {
    goto case_1;
  } else {
  }
  if (tmp == 2) {
    goto case_2;
  } else {
  }
  if (tmp == 3) {
    goto case_3;
  } else {
  }
  if (tmp == 4) {
    goto case_4;
  } else {
  }
  if (tmp == 5) {
    goto case_5;
  } else {
  }
  if (tmp == 6) {
    goto case_6;
  } else {
  }
  if (tmp == 7) {
    goto case_7;
  } else {
  }
  if (tmp == 8) {
    goto case_8;
  } else {
  }
  if (tmp == 9) {
    goto case_9;
  } else {
  }
  if (tmp == 10) {
    goto case_10;
  } else {
  }
  if (tmp == 11) {
    goto case_11;
  } else {
  }
  if (tmp == 12) {
    goto case_12;
  } else {
  }
  if (tmp == 13) {
    goto case_13;
  } else {
  }
  if (tmp == 14) {
    goto case_14;
  } else {
  }
  if (tmp == 15) {
    goto case_15;
  } else {
  }
  if (tmp == 16) {
    goto case_16;
  } else {
  }
  if (tmp == 17) {
    goto case_17;
  } else {
  }
  if (tmp == 18) {
    goto case_18;
  } else {
  }
  if (tmp == 19) {
    goto case_19;
  } else {
  }
  if (tmp == 20) {
    goto case_20;
  } else {
  }
  if (tmp == 21) {
    goto case_21;
  } else {
  }
  if (tmp == 22) {
    goto case_22;
  } else {
  }
  if (tmp == 23) {
    goto case_23;
  } else {
  }
  if (tmp == 24) {
    goto case_24;
  } else {
  }
  if (tmp == 25) {
    goto case_25;
  } else {
  }
  goto switch_default;
  case_0:
  {
  ldv_entry_EMGentry_28((void *)0);
  }
  goto ldv_36143;
  case_1:
  {
  ldv_iio_triggered_buffer_iio_triggered_buffer_instance_0((void *)0);
  }
  goto ldv_36143;
  case_2:
  {
  ldv_interrupt_interrupt_instance_1((void *)0);
  }
  goto ldv_36143;
  case_3:
  {
  ldv_platform_platform_instance_2((void *)0);
  }
  goto ldv_36143;
  case_4:
  {
  ldv_platform_pm_ops_instance_3((void *)0);
  }
  goto ldv_36143;
  case_5:
  {
  ldv_rtc_rtc_class_instance_4((void *)0);
  }
  goto ldv_36143;
  case_6:
  {
  ldv_struct_media_entity_operations_dummy_resourceless_instance_5((void *)0);
  }
  goto ldv_36143;
  case_7:
  {
  ldv_struct_v4l2_ctrl_ops_dummy_resourceless_instance_6((void *)0);
  }
  goto ldv_36143;
  case_8:
  {
  ldv_struct_v4l2_ioctl_ops_dummy_resourceless_instance_7((void *)0);
  }
  goto ldv_36143;
  case_9:
  {
  ldv_struct_v4l2_subdev_internal_ops_dummy_resourceless_instance_8((void *)0);
  }
  goto ldv_36143;
  case_10:
  {
  ldv_struct_v4l2_subdev_video_ops_dummy_resourceless_instance_9((void *)0);
  }
  goto ldv_36143;
  case_11:
  {
  ldv_struct_v4l2_subdev_video_ops_dummy_resourceless_instance_10((void *)0);
  }
  goto ldv_36143;
  case_12:
  {
  ldv_struct_v4l2_subdev_video_ops_dummy_resourceless_instance_11((void *)0);
  }
  goto ldv_36143;
  case_13:
  {
  ldv_struct_v4l2_subdev_video_ops_dummy_resourceless_instance_12((void *)0);
  }
  goto ldv_36143;
  case_14:
  {
  ldv_struct_v4l2_subdev_video_ops_dummy_resourceless_instance_13((void *)0);
  }
  goto ldv_36143;
  case_15:
  {
  ldv_struct_v4l2_subdev_video_ops_dummy_resourceless_instance_14((void *)0);
  }
  goto ldv_36143;
  case_16:
  {
  ldv_struct_v4l2_subdev_video_ops_dummy_resourceless_instance_15((void *)0);
  }
  goto ldv_36143;
  case_17:
  {
  ldv_struct_v4l2_subdev_video_ops_dummy_resourceless_instance_16((void *)0);
  }
  goto ldv_36143;
  case_18:
  {
  ldv_struct_v4l2_subdev_video_ops_dummy_resourceless_instance_17((void *)0);
  }
  goto ldv_36143;
  case_19:
  {
  ldv_struct_v4l2_subdev_video_ops_dummy_resourceless_instance_18((void *)0);
  }
  goto ldv_36143;
  case_20:
  {
  ldv_struct_v4l2_subdev_video_ops_dummy_resourceless_instance_19((void *)0);
  }
  goto ldv_36143;
  case_21:
  {
  ldv_struct_v4l2_subdev_video_ops_dummy_resourceless_instance_20((void *)0);
  }
  goto ldv_36143;
  case_22:
  {
  ldv_struct_vb2_ops_dummy_resourceless_instance_21((void *)0);
  }
  goto ldv_36143;
  case_23:
  {
  ldv_struct_vsp1_video_operations_dummy_resourceless_instance_22((void *)0);
  }
  goto ldv_36143;
  case_24:
  {
  ldv_struct_vsp1_video_operations_dummy_resourceless_instance_23((void *)0);
  }
  goto ldv_36143;
  case_25:
  {
  ldv_v4l2_file_operations_io_instance_24((void *)0);
  }
  goto ldv_36143;
  switch_default:
  {
  ldv_stop();
  }
  switch_break: ;
  }
  ldv_36143: ;
  goto ldv_36170;
}
}
void ldv_iio_triggered_buffer_iio_triggered_buffer_instance_0(void *arg0 )
{
  int tmp ;
  {
  {
  if (ldv_statevar_0 == 2) {
    goto case_2;
  } else {
  }
  if (ldv_statevar_0 == 4) {
    goto case_4;
  } else {
  }
  if (ldv_statevar_0 == 5) {
    goto case_5;
  } else {
  }
  if (ldv_statevar_0 == 6) {
    goto case_6;
  } else {
  }
  goto switch_default;
  case_2:
  {
  ldv_assume((unsigned int )ldv_0_ret_val_default != 2U);
  ldv_statevar_0 = 6;
  }
  goto ldv_36175;
  case_4:
  {
  ldv_assume((unsigned int )ldv_0_ret_val_default == 2U);
  ldv_iio_triggered_buffer_instance_thread_0_3(ldv_0_thread_thread, ldv_0_line_line,
                                               ldv_0_data_data);
  ldv_statevar_0 = 6;
  }
  goto ldv_36175;
  case_5:
  {
  ldv_switch_to_interrupt_context();
  ldv_0_ret_val_default = ldv_iio_triggered_buffer_instance_handler_0_5(ldv_0_callback_handler,
                                                                        ldv_0_line_line,
                                                                        ldv_0_data_data);
  ldv_switch_to_process_context();
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    ldv_statevar_0 = 2;
  } else {
    ldv_statevar_0 = 4;
  }
  goto ldv_36175;
  case_6: ;
  goto ldv_36175;
  switch_default: ;
  switch_break: ;
  }
  ldv_36175: ;
  return;
}
}
enum irqreturn ldv_iio_triggered_buffer_instance_handler_0_5(enum irqreturn (*arg0)(int ,
                                                                                    void * ) ,
                                                             int arg1 , void *arg2 )
{
  irqreturn_t tmp ;
  {
  {
  tmp = vsp1_irq_handler(arg1, arg2);
  }
  return (tmp);
}
}
void ldv_iio_triggered_buffer_instance_thread_0_3(enum irqreturn (*arg0)(int , void * ) ,
                                                  int arg1 , void *arg2 )
{
  {
  {
  vsp1_irq_handler(arg1, arg2);
  }
  return;
}
}
void ldv_initialize_external_data(void)
{
  {
  {
  ldv_allocate_external_0();
  }
  return;
}
}
enum irqreturn ldv_interrupt_instance_handler_1_5(enum irqreturn (*arg0)(int , void * ) ,
                                                  int arg1 , void *arg2 )
{
  irqreturn_t tmp ;
  {
  {
  tmp = vsp1_irq_handler(arg1, arg2);
  }
  return (tmp);
}
}
void ldv_interrupt_instance_thread_1_3(enum irqreturn (*arg0)(int , void * ) , int arg1 ,
                                       void *arg2 )
{
  {
  {
  vsp1_irq_handler(arg1, arg2);
  }
  return;
}
}
void ldv_interrupt_interrupt_instance_1(void *arg0 )
{
  int tmp ;
  {
  {
  if (ldv_statevar_1 == 2) {
    goto case_2;
  } else {
  }
  if (ldv_statevar_1 == 4) {
    goto case_4;
  } else {
  }
  if (ldv_statevar_1 == 5) {
    goto case_5;
  } else {
  }
  if (ldv_statevar_1 == 6) {
    goto case_6;
  } else {
  }
  goto switch_default;
  case_2:
  {
  ldv_assume((unsigned int )ldv_1_ret_val_default != 2U);
  ldv_statevar_1 = 6;
  }
  goto ldv_36214;
  case_4:
  {
  ldv_assume((unsigned int )ldv_1_ret_val_default == 2U);
  ldv_interrupt_instance_thread_1_3(ldv_1_thread_thread, ldv_1_line_line, ldv_1_data_data);
  ldv_statevar_1 = 6;
  }
  goto ldv_36214;
  case_5:
  {
  ldv_switch_to_interrupt_context();
  ldv_1_ret_val_default = ldv_interrupt_instance_handler_1_5(ldv_1_callback_handler,
                                                             ldv_1_line_line, ldv_1_data_data);
  ldv_switch_to_process_context();
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    ldv_statevar_1 = 2;
  } else {
    ldv_statevar_1 = 4;
  }
  goto ldv_36214;
  case_6: ;
  goto ldv_36214;
  switch_default: ;
  switch_break: ;
  }
  ldv_36214: ;
  return;
}
}
void ldv_platform_driver_unregister(void *arg0 , struct platform_driver *arg1 )
{
  struct platform_driver *ldv_26_platform_driver_platform_driver ;
  {
  {
  ldv_26_platform_driver_platform_driver = arg1;
  ldv_assume(ldv_statevar_2 == 9);
  ldv_dispatch_deregister_26_1(ldv_26_platform_driver_platform_driver);
  }
  return;
  return;
}
}
int ldv_platform_instance_probe_2_14(int (*arg0)(struct platform_device * ) , struct platform_device *arg1 )
{
  int tmp ;
  {
  {
  tmp = vsp1_probe(arg1);
  }
  return (tmp);
}
}
void ldv_platform_instance_release_2_3(int (*arg0)(struct platform_device * ) , struct platform_device *arg1 )
{
  {
  {
  vsp1_remove(arg1);
  }
  return;
}
}
void ldv_platform_platform_instance_2(void *arg0 )
{
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  void *tmp___2 ;
  int tmp___3 ;
  {
  {
  if (ldv_statevar_2 == 1) {
    goto case_1;
  } else {
  }
  if (ldv_statevar_2 == 3) {
    goto case_3;
  } else {
  }
  if (ldv_statevar_2 == 4) {
    goto case_4;
  } else {
  }
  if (ldv_statevar_2 == 5) {
    goto case_5;
  } else {
  }
  if (ldv_statevar_2 == 6) {
    goto case_6;
  } else {
  }
  if (ldv_statevar_2 == 7) {
    goto case_7;
  } else {
  }
  if (ldv_statevar_2 == 9) {
    goto case_9;
  } else {
  }
  if (ldv_statevar_2 == 11) {
    goto case_11;
  } else {
  }
  if (ldv_statevar_2 == 13) {
    goto case_13;
  } else {
  }
  if (ldv_statevar_2 == 14) {
    goto case_14;
  } else {
  }
  if (ldv_statevar_2 == 16) {
    goto case_16;
  } else {
  }
  if (ldv_statevar_2 == 17) {
    goto case_17;
  } else {
  }
  goto switch_default;
  case_1:
  {
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    ldv_statevar_2 = 9;
  } else {
    ldv_statevar_2 = 14;
  }
  goto ldv_36238;
  case_3:
  {
  ldv_platform_instance_release_2_3(ldv_2_container_platform_driver->remove, ldv_2_resource_platform_device);
  ldv_2_probed_default = 1;
  ldv_statevar_2 = 1;
  }
  goto ldv_36238;
  case_4:
  {
  ldv_statevar_2 = ldv_switch_0();
  }
  goto ldv_36238;
  case_5:
  {
  ldv_assume(ldv_statevar_3 == 1);
  ldv_dispatch_pm_deregister_2_5();
  ldv_statevar_2 = 4;
  }
  goto ldv_36238;
  case_6:
  {
  ldv_assume(ldv_statevar_3 == 29);
  ldv_dispatch_pm_register_2_6();
  ldv_statevar_2 = 5;
  }
  goto ldv_36238;
  case_7:
  ldv_statevar_2 = 4;
  goto ldv_36238;
  case_9:
  {
  ldv_free((void *)ldv_2_resource_platform_device);
  ldv_2_probed_default = 1;
  ldv_statevar_2 = 17;
  }
  goto ldv_36238;
  case_11:
  {
  ldv_assume(ldv_2_probed_default != 0);
  tmp___0 = ldv_undef_int();
  }
  if (tmp___0 != 0) {
    ldv_statevar_2 = 9;
  } else {
    ldv_statevar_2 = 14;
  }
  goto ldv_36238;
  case_13:
  {
  ldv_assume(ldv_2_probed_default == 0);
  ldv_statevar_2 = ldv_switch_0();
  }
  goto ldv_36238;
  case_14:
  {
  ldv_assume(((((((((((ldv_statevar_9 == 5 || ldv_statevar_10 == 5) || ldv_statevar_11 == 5) || ldv_statevar_12 == 5) || ldv_statevar_13 == 5) || ldv_statevar_14 == 5) || ldv_statevar_15 == 5) || ldv_statevar_16 == 5) || ldv_statevar_17 == 5) || ldv_statevar_18 == 5) || ldv_statevar_19 == 5) || ldv_statevar_20 == 5);
  ldv_pre_probe();
  ldv_2_probed_default = ldv_platform_instance_probe_2_14(ldv_2_container_platform_driver->probe,
                                                          ldv_2_resource_platform_device);
  ldv_2_probed_default = ldv_post_probe(ldv_2_probed_default);
  tmp___1 = ldv_undef_int();
  }
  if (tmp___1 != 0) {
    ldv_statevar_2 = 11;
  } else {
    ldv_statevar_2 = 13;
  }
  goto ldv_36238;
  case_16:
  {
  tmp___2 = ldv_xmalloc(1432UL);
  ldv_2_resource_platform_device = (struct platform_device *)tmp___2;
  tmp___3 = ldv_undef_int();
  }
  if (tmp___3 != 0) {
    ldv_statevar_2 = 9;
  } else {
    ldv_statevar_2 = 14;
  }
  goto ldv_36238;
  case_17: ;
  goto ldv_36238;
  switch_default: ;
  switch_break: ;
  }
  ldv_36238: ;
  return;
}
}
void ldv_platform_pm_ops_instance_3(void *arg0 )
{
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  {
  {
  if (ldv_statevar_3 == 1) {
    goto case_1;
  } else {
  }
  if (ldv_statevar_3 == 2) {
    goto case_2;
  } else {
  }
  if (ldv_statevar_3 == 3) {
    goto case_3;
  } else {
  }
  if (ldv_statevar_3 == 4) {
    goto case_4;
  } else {
  }
  if (ldv_statevar_3 == 5) {
    goto case_5;
  } else {
  }
  if (ldv_statevar_3 == 6) {
    goto case_6;
  } else {
  }
  if (ldv_statevar_3 == 7) {
    goto case_7;
  } else {
  }
  if (ldv_statevar_3 == 8) {
    goto case_8;
  } else {
  }
  if (ldv_statevar_3 == 9) {
    goto case_9;
  } else {
  }
  if (ldv_statevar_3 == 10) {
    goto case_10;
  } else {
  }
  if (ldv_statevar_3 == 11) {
    goto case_11;
  } else {
  }
  if (ldv_statevar_3 == 12) {
    goto case_12;
  } else {
  }
  if (ldv_statevar_3 == 13) {
    goto case_13;
  } else {
  }
  if (ldv_statevar_3 == 14) {
    goto case_14;
  } else {
  }
  if (ldv_statevar_3 == 15) {
    goto case_15;
  } else {
  }
  if (ldv_statevar_3 == 16) {
    goto case_16;
  } else {
  }
  if (ldv_statevar_3 == 17) {
    goto case_17;
  } else {
  }
  if (ldv_statevar_3 == 18) {
    goto case_18;
  } else {
  }
  if (ldv_statevar_3 == 19) {
    goto case_19;
  } else {
  }
  if (ldv_statevar_3 == 20) {
    goto case_20;
  } else {
  }
  if (ldv_statevar_3 == 21) {
    goto case_21;
  } else {
  }
  if (ldv_statevar_3 == 22) {
    goto case_22;
  } else {
  }
  if (ldv_statevar_3 == 23) {
    goto case_23;
  } else {
  }
  if (ldv_statevar_3 == 24) {
    goto case_24;
  } else {
  }
  if (ldv_statevar_3 == 25) {
    goto case_25;
  } else {
  }
  if (ldv_statevar_3 == 26) {
    goto case_26;
  } else {
  }
  if (ldv_statevar_3 == 27) {
    goto case_27;
  } else {
  }
  if (ldv_statevar_3 == 28) {
    goto case_28;
  } else {
  }
  if (ldv_statevar_3 == 29) {
    goto case_29;
  } else {
  }
  goto switch_default;
  case_1: ;
  goto ldv_36255;
  case_2:
  {
  ldv_statevar_3 = ldv_switch_1();
  }
  goto ldv_36255;
  case_3: ;
  if ((unsigned long )ldv_3_pm_ops_dev_pm_ops->complete != (unsigned long )((void (*)(struct device * ))0)) {
    {
    ldv_pm_ops_instance_complete_3_3(ldv_3_pm_ops_dev_pm_ops->complete, ldv_3_device_device);
    }
  } else {
  }
  ldv_statevar_3 = 2;
  goto ldv_36255;
  case_4:
  {
  ldv_pm_ops_instance_restore_3_4(ldv_3_pm_ops_dev_pm_ops->restore, ldv_3_device_device);
  ldv_statevar_3 = 3;
  }
  goto ldv_36255;
  case_5: ;
  if ((unsigned long )ldv_3_pm_ops_dev_pm_ops->restore_noirq != (unsigned long )((int (*)(struct device * ))0)) {
    {
    ldv_pm_ops_instance_restore_noirq_3_5(ldv_3_pm_ops_dev_pm_ops->restore_noirq,
                                          ldv_3_device_device);
    }
  } else {
  }
  ldv_statevar_3 = 4;
  goto ldv_36255;
  case_6: ;
  if ((unsigned long )ldv_3_pm_ops_dev_pm_ops->poweroff_noirq != (unsigned long )((int (*)(struct device * ))0)) {
    {
    ldv_pm_ops_instance_poweroff_noirq_3_6(ldv_3_pm_ops_dev_pm_ops->poweroff_noirq,
                                           ldv_3_device_device);
    }
  } else {
  }
  ldv_statevar_3 = 5;
  goto ldv_36255;
  case_7: ;
  if ((unsigned long )ldv_3_pm_ops_dev_pm_ops->restore_early != (unsigned long )((int (*)(struct device * ))0)) {
    {
    ldv_pm_ops_instance_restore_early_3_7(ldv_3_pm_ops_dev_pm_ops->restore_early,
                                          ldv_3_device_device);
    }
  } else {
  }
  ldv_statevar_3 = 4;
  goto ldv_36255;
  case_8: ;
  if ((unsigned long )ldv_3_pm_ops_dev_pm_ops->poweroff_late != (unsigned long )((int (*)(struct device * ))0)) {
    {
    ldv_pm_ops_instance_poweroff_late_3_8(ldv_3_pm_ops_dev_pm_ops->poweroff_late,
                                          ldv_3_device_device);
    }
  } else {
  }
  ldv_statevar_3 = 7;
  goto ldv_36255;
  case_9:
  {
  ldv_pm_ops_instance_poweroff_3_9(ldv_3_pm_ops_dev_pm_ops->poweroff, ldv_3_device_device);
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    ldv_statevar_3 = 6;
  } else {
    ldv_statevar_3 = 8;
  }
  goto ldv_36255;
  case_10:
  {
  ldv_pm_ops_instance_thaw_3_10(ldv_3_pm_ops_dev_pm_ops->thaw, ldv_3_device_device);
  ldv_statevar_3 = 3;
  }
  goto ldv_36255;
  case_11: ;
  if ((unsigned long )ldv_3_pm_ops_dev_pm_ops->thaw_noirq != (unsigned long )((int (*)(struct device * ))0)) {
    {
    ldv_pm_ops_instance_thaw_noirq_3_11(ldv_3_pm_ops_dev_pm_ops->thaw_noirq, ldv_3_device_device);
    }
  } else {
  }
  ldv_statevar_3 = 10;
  goto ldv_36255;
  case_12: ;
  if ((unsigned long )ldv_3_pm_ops_dev_pm_ops->freeze_noirq != (unsigned long )((int (*)(struct device * ))0)) {
    {
    ldv_pm_ops_instance_freeze_noirq_3_12(ldv_3_pm_ops_dev_pm_ops->freeze_noirq, ldv_3_device_device);
    }
  } else {
  }
  ldv_statevar_3 = 11;
  goto ldv_36255;
  case_13: ;
  if ((unsigned long )ldv_3_pm_ops_dev_pm_ops->thaw_early != (unsigned long )((int (*)(struct device * ))0)) {
    {
    ldv_pm_ops_instance_thaw_early_3_13(ldv_3_pm_ops_dev_pm_ops->thaw_early, ldv_3_device_device);
    }
  } else {
  }
  ldv_statevar_3 = 10;
  goto ldv_36255;
  case_14: ;
  if ((unsigned long )ldv_3_pm_ops_dev_pm_ops->freeze_late != (unsigned long )((int (*)(struct device * ))0)) {
    {
    ldv_pm_ops_instance_freeze_late_3_14(ldv_3_pm_ops_dev_pm_ops->freeze_late, ldv_3_device_device);
    }
  } else {
  }
  ldv_statevar_3 = 13;
  goto ldv_36255;
  case_15:
  {
  ldv_pm_ops_instance_freeze_3_15(ldv_3_pm_ops_dev_pm_ops->freeze, ldv_3_device_device);
  tmp___0 = ldv_undef_int();
  }
  if (tmp___0 != 0) {
    ldv_statevar_3 = 12;
  } else {
    ldv_statevar_3 = 14;
  }
  goto ldv_36255;
  case_16:
  {
  ldv_pm_ops_instance_resume_3_16(ldv_3_pm_ops_dev_pm_ops->resume, ldv_3_device_device);
  ldv_statevar_3 = 3;
  }
  goto ldv_36255;
  case_17: ;
  if ((unsigned long )ldv_3_pm_ops_dev_pm_ops->resume_early != (unsigned long )((int (*)(struct device * ))0)) {
    {
    ldv_pm_ops_instance_resume_early_3_17(ldv_3_pm_ops_dev_pm_ops->resume_early, ldv_3_device_device);
    }
  } else {
  }
  ldv_statevar_3 = 16;
  goto ldv_36255;
  case_18: ;
  if ((unsigned long )ldv_3_pm_ops_dev_pm_ops->suspend_late != (unsigned long )((int (*)(struct device * ))0)) {
    {
    ldv_pm_ops_instance_suspend_late_3_18(ldv_3_pm_ops_dev_pm_ops->suspend_late, ldv_3_device_device);
    }
  } else {
  }
  ldv_statevar_3 = 17;
  goto ldv_36255;
  case_19: ;
  if ((unsigned long )ldv_3_pm_ops_dev_pm_ops->resume_noirq != (unsigned long )((int (*)(struct device * ))0)) {
    {
    ldv_pm_ops_instance_resume_noirq_3_19(ldv_3_pm_ops_dev_pm_ops->resume_noirq, ldv_3_device_device);
    }
  } else {
  }
  ldv_statevar_3 = 16;
  goto ldv_36255;
  case_20: ;
  if ((unsigned long )ldv_3_pm_ops_dev_pm_ops->suspend_noirq != (unsigned long )((int (*)(struct device * ))0)) {
    {
    ldv_pm_ops_instance_suspend_noirq_3_20(ldv_3_pm_ops_dev_pm_ops->suspend_noirq,
                                           ldv_3_device_device);
    }
  } else {
  }
  ldv_statevar_3 = 19;
  goto ldv_36255;
  case_21:
  {
  ldv_pm_ops_instance_suspend_3_21(ldv_3_pm_ops_dev_pm_ops->suspend, ldv_3_device_device);
  tmp___1 = ldv_undef_int();
  }
  if (tmp___1 != 0) {
    ldv_statevar_3 = 18;
  } else {
    ldv_statevar_3 = 20;
  }
  goto ldv_36255;
  case_22: ;
  if ((unsigned long )ldv_3_pm_ops_dev_pm_ops->prepare != (unsigned long )((int (*)(struct device * ))0)) {
    {
    ldv_pm_ops_instance_prepare_3_22(ldv_3_pm_ops_dev_pm_ops->prepare, ldv_3_device_device);
    }
  } else {
  }
  {
  ldv_statevar_3 = ldv_switch_2();
  }
  goto ldv_36255;
  case_23:
  {
  ldv_statevar_3 = ldv_switch_1();
  }
  goto ldv_36255;
  case_24: ;
  if ((unsigned long )ldv_3_pm_ops_dev_pm_ops->runtime_resume != (unsigned long )((int (*)(struct device * ))0)) {
    {
    ldv_pm_ops_instance_runtime_resume_3_24(ldv_3_pm_ops_dev_pm_ops->runtime_resume,
                                            ldv_3_device_device);
    }
  } else {
  }
  ldv_statevar_3 = 23;
  goto ldv_36255;
  case_25: ;
  if ((unsigned long )ldv_3_pm_ops_dev_pm_ops->runtime_suspend != (unsigned long )((int (*)(struct device * ))0)) {
    {
    ldv_pm_ops_instance_runtime_suspend_3_25(ldv_3_pm_ops_dev_pm_ops->runtime_suspend,
                                             ldv_3_device_device);
    }
  } else {
  }
  ldv_statevar_3 = 24;
  goto ldv_36255;
  case_26:
  {
  ldv_statevar_3 = ldv_switch_1();
  }
  goto ldv_36255;
  case_27: ;
  if ((unsigned long )ldv_3_pm_ops_dev_pm_ops->runtime_idle != (unsigned long )((int (*)(struct device * ))0)) {
    {
    ldv_pm_ops_instance_runtime_idle_3_27(ldv_3_pm_ops_dev_pm_ops->runtime_idle, ldv_3_device_device);
    }
  } else {
  }
  ldv_statevar_3 = 26;
  goto ldv_36255;
  case_28:
  {
  ldv_statevar_3 = ldv_switch_1();
  }
  goto ldv_36255;
  case_29: ;
  goto ldv_36255;
  switch_default: ;
  switch_break: ;
  }
  ldv_36255: ;
  return;
}
}
void ldv_pm_ops_instance_complete_3_3(void (*arg0)(struct device * ) , struct device *arg1 )
{
  {
  {
  (*arg0)(arg1);
  }
  return;
}
}
void ldv_pm_ops_instance_freeze_3_15(int (*arg0)(struct device * ) , struct device *arg1 )
{
  {
  {
  vsp1_pm_suspend(arg1);
  }
  return;
}
}
void ldv_pm_ops_instance_freeze_late_3_14(int (*arg0)(struct device * ) , struct device *arg1 )
{
  {
  {
  (*arg0)(arg1);
  }
  return;
}
}
void ldv_pm_ops_instance_freeze_noirq_3_12(int (*arg0)(struct device * ) , struct device *arg1 )
{
  {
  {
  (*arg0)(arg1);
  }
  return;
}
}
void ldv_pm_ops_instance_poweroff_3_9(int (*arg0)(struct device * ) , struct device *arg1 )
{
  {
  {
  vsp1_pm_suspend(arg1);
  }
  return;
}
}
void ldv_pm_ops_instance_poweroff_late_3_8(int (*arg0)(struct device * ) , struct device *arg1 )
{
  {
  {
  (*arg0)(arg1);
  }
  return;
}
}
void ldv_pm_ops_instance_poweroff_noirq_3_6(int (*arg0)(struct device * ) , struct device *arg1 )
{
  {
  {
  (*arg0)(arg1);
  }
  return;
}
}
void ldv_pm_ops_instance_prepare_3_22(int (*arg0)(struct device * ) , struct device *arg1 )
{
  {
  {
  (*arg0)(arg1);
  }
  return;
}
}
void ldv_pm_ops_instance_restore_3_4(int (*arg0)(struct device * ) , struct device *arg1 )
{
  {
  {
  vsp1_pm_resume(arg1);
  }
  return;
}
}
void ldv_pm_ops_instance_restore_early_3_7(int (*arg0)(struct device * ) , struct device *arg1 )
{
  {
  {
  (*arg0)(arg1);
  }
  return;
}
}
void ldv_pm_ops_instance_restore_noirq_3_5(int (*arg0)(struct device * ) , struct device *arg1 )
{
  {
  {
  (*arg0)(arg1);
  }
  return;
}
}
void ldv_pm_ops_instance_resume_3_16(int (*arg0)(struct device * ) , struct device *arg1 )
{
  {
  {
  vsp1_pm_resume(arg1);
  }
  return;
}
}
void ldv_pm_ops_instance_resume_early_3_17(int (*arg0)(struct device * ) , struct device *arg1 )
{
  {
  {
  (*arg0)(arg1);
  }
  return;
}
}
void ldv_pm_ops_instance_resume_noirq_3_19(int (*arg0)(struct device * ) , struct device *arg1 )
{
  {
  {
  (*arg0)(arg1);
  }
  return;
}
}
void ldv_pm_ops_instance_runtime_idle_3_27(int (*arg0)(struct device * ) , struct device *arg1 )
{
  {
  {
  (*arg0)(arg1);
  }
  return;
}
}
void ldv_pm_ops_instance_runtime_resume_3_24(int (*arg0)(struct device * ) , struct device *arg1 )
{
  {
  {
  (*arg0)(arg1);
  }
  return;
}
}
void ldv_pm_ops_instance_runtime_suspend_3_25(int (*arg0)(struct device * ) , struct device *arg1 )
{
  {
  {
  (*arg0)(arg1);
  }
  return;
}
}
void ldv_pm_ops_instance_suspend_3_21(int (*arg0)(struct device * ) , struct device *arg1 )
{
  {
  {
  vsp1_pm_suspend(arg1);
  }
  return;
}
}
void ldv_pm_ops_instance_suspend_late_3_18(int (*arg0)(struct device * ) , struct device *arg1 )
{
  {
  {
  (*arg0)(arg1);
  }
  return;
}
}
void ldv_pm_ops_instance_suspend_noirq_3_20(int (*arg0)(struct device * ) , struct device *arg1 )
{
  {
  {
  (*arg0)(arg1);
  }
  return;
}
}
void ldv_pm_ops_instance_thaw_3_10(int (*arg0)(struct device * ) , struct device *arg1 )
{
  {
  {
  vsp1_pm_resume(arg1);
  }
  return;
}
}
void ldv_pm_ops_instance_thaw_early_3_13(int (*arg0)(struct device * ) , struct device *arg1 )
{
  {
  {
  (*arg0)(arg1);
  }
  return;
}
}
void ldv_pm_ops_instance_thaw_noirq_3_11(int (*arg0)(struct device * ) , struct device *arg1 )
{
  {
  {
  (*arg0)(arg1);
  }
  return;
}
}
void ldv_rtc_class_instance_callback_4_15(int (*arg0)(struct device * ) , struct device *arg1 )
{
  {
  {
  vsp1_pm_suspend(arg1);
  }
  return;
}
}
void ldv_rtc_class_instance_callback_4_16(int (*arg0)(struct device * ) , struct device *arg1 )
{
  {
  {
  vsp1_pm_resume(arg1);
  }
  return;
}
}
void ldv_rtc_class_instance_callback_4_17(int (*arg0)(struct device * ) , struct device *arg1 )
{
  {
  {
  vsp1_pm_resume(arg1);
  }
  return;
}
}
void ldv_rtc_class_instance_callback_4_18(int (*arg0)(struct device * ) , struct device *arg1 )
{
  {
  {
  vsp1_pm_suspend(arg1);
  }
  return;
}
}
void ldv_rtc_class_instance_callback_4_19(int (*arg0)(struct device * ) , struct device *arg1 )
{
  {
  {
  vsp1_pm_resume(arg1);
  }
  return;
}
}
void ldv_rtc_class_instance_callback_4_4(int (*arg0)(struct device * ) , struct device *arg1 )
{
  {
  {
  vsp1_pm_suspend(arg1);
  }
  return;
}
}
int ldv_rtc_class_instance_probe_4_10(int (*arg0)(struct device * ) , struct device *arg1 )
{
  int tmp ;
  {
  {
  tmp = (*arg0)(arg1);
  }
  return (tmp);
}
}
void ldv_rtc_class_instance_release_4_2(void (*arg0)(struct device * ) , struct device *arg1 )
{
  {
  {
  (*arg0)(arg1);
  }
  return;
}
}
void ldv_rtc_rtc_class_instance_4(void *arg0 )
{
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  {
  {
  if (ldv_statevar_4 == 1) {
    goto case_1;
  } else {
  }
  if (ldv_statevar_4 == 2) {
    goto case_2;
  } else {
  }
  if (ldv_statevar_4 == 3) {
    goto case_3;
  } else {
  }
  if (ldv_statevar_4 == 4) {
    goto case_4;
  } else {
  }
  if (ldv_statevar_4 == 5) {
    goto case_5;
  } else {
  }
  if (ldv_statevar_4 == 7) {
    goto case_7;
  } else {
  }
  if (ldv_statevar_4 == 9) {
    goto case_9;
  } else {
  }
  if (ldv_statevar_4 == 10) {
    goto case_10;
  } else {
  }
  if (ldv_statevar_4 == 11) {
    goto case_11;
  } else {
  }
  if (ldv_statevar_4 == 12) {
    goto case_12;
  } else {
  }
  if (ldv_statevar_4 == 15) {
    goto case_15;
  } else {
  }
  if (ldv_statevar_4 == 16) {
    goto case_16;
  } else {
  }
  if (ldv_statevar_4 == 17) {
    goto case_17;
  } else {
  }
  if (ldv_statevar_4 == 18) {
    goto case_18;
  } else {
  }
  if (ldv_statevar_4 == 19) {
    goto case_19;
  } else {
  }
  goto switch_default;
  case_1:
  {
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    ldv_statevar_4 = 5;
  } else {
    ldv_statevar_4 = 10;
  }
  goto ldv_36444;
  case_2: ;
  if ((unsigned long )ldv_4_rtc_class_ops_rtc_class_ops->release != (unsigned long )((void (*)(struct device * ))0)) {
    {
    ldv_rtc_class_instance_release_4_2(ldv_4_rtc_class_ops_rtc_class_ops->release,
                                       ldv_4_device_device);
    }
  } else {
  }
  ldv_statevar_4 = 1;
  goto ldv_36444;
  case_3:
  {
  ldv_statevar_4 = ldv_switch_3();
  }
  goto ldv_36444;
  case_4:
  {
  ldv_rtc_class_instance_callback_4_4(ldv_4_callback_freeze, ldv_4_device_device);
  ldv_statevar_4 = 3;
  }
  goto ldv_36444;
  case_5: ;
  goto ldv_36444;
  case_7:
  {
  ldv_assume(ldv_4_ret_default != 0);
  tmp___0 = ldv_undef_int();
  }
  if (tmp___0 != 0) {
    ldv_statevar_4 = 5;
  } else {
    ldv_statevar_4 = 10;
  }
  goto ldv_36444;
  case_9:
  {
  ldv_assume(ldv_4_ret_default == 0);
  ldv_statevar_4 = ldv_switch_3();
  }
  goto ldv_36444;
  case_10:
  {
  ldv_pre_probe();
  }
  if ((unsigned long )ldv_4_rtc_class_ops_rtc_class_ops->open != (unsigned long )((int (*)(struct device * ))0)) {
    {
    ldv_4_ret_default = ldv_rtc_class_instance_probe_4_10(ldv_4_rtc_class_ops_rtc_class_ops->open,
                                                          ldv_4_device_device);
    }
  } else {
  }
  {
  ldv_4_ret_default = ldv_post_probe(ldv_4_ret_default);
  tmp___1 = ldv_undef_int();
  }
  if (tmp___1 != 0) {
    ldv_statevar_4 = 7;
  } else {
    ldv_statevar_4 = 9;
  }
  goto ldv_36444;
  case_11:
  {
  tmp___2 = ldv_undef_int();
  }
  if (tmp___2 != 0) {
    ldv_statevar_4 = 5;
  } else {
    ldv_statevar_4 = 10;
  }
  goto ldv_36444;
  case_12: ;
  goto ldv_36444;
  case_15:
  {
  ldv_rtc_class_instance_callback_4_15(ldv_4_callback_poweroff, ldv_4_device_device);
  ldv_statevar_4 = 3;
  }
  goto ldv_36444;
  case_16:
  {
  ldv_rtc_class_instance_callback_4_16(ldv_4_callback_restore, ldv_4_device_device);
  ldv_statevar_4 = 3;
  }
  goto ldv_36444;
  case_17:
  {
  ldv_rtc_class_instance_callback_4_17(ldv_4_callback_resume, ldv_4_device_device);
  ldv_statevar_4 = 3;
  }
  goto ldv_36444;
  case_18:
  {
  ldv_rtc_class_instance_callback_4_18(ldv_4_callback_suspend, ldv_4_device_device);
  ldv_statevar_4 = 3;
  }
  goto ldv_36444;
  case_19:
  {
  ldv_rtc_class_instance_callback_4_19(ldv_4_callback_thaw, ldv_4_device_device);
  ldv_statevar_4 = 3;
  }
  goto ldv_36444;
  switch_default: ;
  switch_break: ;
  }
  ldv_36444: ;
  return;
}
}
void ldv_struct_media_entity_operations_dummy_resourceless_instance_5(void *arg0 )
{
  int tmp ;
  int tmp___0 ;
  void *tmp___1 ;
  int tmp___2 ;
  {
  {
  if (ldv_statevar_5 == 1) {
    goto case_1;
  } else {
  }
  if (ldv_statevar_5 == 2) {
    goto case_2;
  } else {
  }
  if (ldv_statevar_5 == 3) {
    goto case_3;
  } else {
  }
  if (ldv_statevar_5 == 4) {
    goto case_4;
  } else {
  }
  if (ldv_statevar_5 == 5) {
    goto case_5;
  } else {
  }
  if (ldv_statevar_5 == 7) {
    goto case_7;
  } else {
  }
  if (ldv_statevar_5 == 9) {
    goto case_9;
  } else {
  }
  goto switch_default;
  case_1: ;
  goto ldv_36464;
  case_2:
  {
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    ldv_statevar_5 = 1;
  } else {
    ldv_statevar_5 = 7;
  }
  goto ldv_36464;
  case_3:
  {
  ldv_dummy_resourceless_instance_callback_5_3(ldv_5_callback_link_setup, ldv_5_container_struct_media_entity_ptr,
                                               ldv_5_container_struct_media_pad_ptr,
                                               ldv_5_ldv_param_3_2_default, ldv_5_ldv_param_3_3_default);
  ldv_free((void *)ldv_5_ldv_param_3_2_default);
  ldv_statevar_5 = 2;
  }
  goto ldv_36464;
  case_4:
  {
  tmp___0 = ldv_undef_int();
  }
  if (tmp___0 != 0) {
    ldv_statevar_5 = 1;
  } else {
    ldv_statevar_5 = 7;
  }
  goto ldv_36464;
  case_5: ;
  goto ldv_36464;
  case_7:
  {
  tmp___1 = ldv_xmalloc(24UL);
  ldv_5_ldv_param_3_2_default = (struct media_pad *)tmp___1;
  tmp___2 = ldv_undef_int();
  }
  if (tmp___2 != 0) {
    ldv_statevar_5 = 3;
  } else {
    ldv_statevar_5 = 9;
  }
  goto ldv_36464;
  case_9:
  {
  ldv_dummy_resourceless_instance_callback_5_9(ldv_5_callback_link_validate, ldv_5_container_struct_media_link_ptr);
  ldv_free((void *)ldv_5_ldv_param_3_2_default);
  ldv_statevar_5 = 2;
  }
  goto ldv_36464;
  switch_default: ;
  switch_break: ;
  }
  ldv_36464: ;
  return;
}
}
void ldv_struct_v4l2_ctrl_ops_dummy_resourceless_instance_6(void *arg0 )
{
  int tmp ;
  int tmp___0 ;
  {
  {
  if (ldv_statevar_6 == 1) {
    goto case_1;
  } else {
  }
  if (ldv_statevar_6 == 2) {
    goto case_2;
  } else {
  }
  if (ldv_statevar_6 == 3) {
    goto case_3;
  } else {
  }
  if (ldv_statevar_6 == 4) {
    goto case_4;
  } else {
  }
  if (ldv_statevar_6 == 5) {
    goto case_5;
  } else {
  }
  goto switch_default;
  case_1: ;
  goto ldv_36476;
  case_2:
  {
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    ldv_statevar_6 = 1;
  } else {
    ldv_statevar_6 = 3;
  }
  goto ldv_36476;
  case_3:
  {
  ldv_dummy_resourceless_instance_callback_6_3(ldv_6_callback_s_ctrl, ldv_6_container_struct_v4l2_ctrl_ptr);
  ldv_statevar_6 = 2;
  }
  goto ldv_36476;
  case_4:
  {
  tmp___0 = ldv_undef_int();
  }
  if (tmp___0 != 0) {
    ldv_statevar_6 = 1;
  } else {
    ldv_statevar_6 = 3;
  }
  goto ldv_36476;
  case_5: ;
  goto ldv_36476;
  switch_default: ;
  switch_break: ;
  }
  ldv_36476: ;
  return;
}
}
void ldv_struct_v4l2_ioctl_ops_dummy_resourceless_instance_7(void *arg0 )
{
  void *tmp ;
  void *tmp___0 ;
  void *tmp___1 ;
  void *tmp___2 ;
  {
  {
  if (ldv_statevar_7 == 1) {
    goto case_1;
  } else {
  }
  if (ldv_statevar_7 == 2) {
    goto case_2;
  } else {
  }
  if (ldv_statevar_7 == 3) {
    goto case_3;
  } else {
  }
  if (ldv_statevar_7 == 4) {
    goto case_4;
  } else {
  }
  if (ldv_statevar_7 == 5) {
    goto case_5;
  } else {
  }
  if (ldv_statevar_7 == 8) {
    goto case_8;
  } else {
  }
  if (ldv_statevar_7 == 10) {
    goto case_10;
  } else {
  }
  if (ldv_statevar_7 == 11) {
    goto case_11;
  } else {
  }
  if (ldv_statevar_7 == 13) {
    goto case_13;
  } else {
  }
  if (ldv_statevar_7 == 16) {
    goto case_16;
  } else {
  }
  if (ldv_statevar_7 == 19) {
    goto case_19;
  } else {
  }
  if (ldv_statevar_7 == 21) {
    goto case_21;
  } else {
  }
  if (ldv_statevar_7 == 22) {
    goto case_22;
  } else {
  }
  if (ldv_statevar_7 == 23) {
    goto case_23;
  } else {
  }
  if (ldv_statevar_7 == 24) {
    goto case_24;
  } else {
  }
  if (ldv_statevar_7 == 25) {
    goto case_25;
  } else {
  }
  if (ldv_statevar_7 == 26) {
    goto case_26;
  } else {
  }
  if (ldv_statevar_7 == 27) {
    goto case_27;
  } else {
  }
  if (ldv_statevar_7 == 28) {
    goto case_28;
  } else {
  }
  goto switch_default;
  case_1: ;
  goto ldv_36486;
  case_2:
  {
  ldv_statevar_7 = ldv_switch_4();
  }
  goto ldv_36486;
  case_3:
  {
  ldv_dummy_resourceless_instance_callback_7_3(ldv_7_callback_vidioc_create_bufs,
                                               ldv_7_container_struct_file_ptr, (void *)ldv_7_container_struct_v4l2_buffer_ptr,
                                               ldv_7_container_struct_v4l2_create_buffers_ptr);
  ldv_statevar_7 = 2;
  }
  goto ldv_36486;
  case_4:
  {
  ldv_statevar_7 = ldv_switch_4();
  }
  goto ldv_36486;
  case_5: ;
  goto ldv_36486;
  case_8:
  {
  tmp = ldv_xmalloc(88UL);
  ldv_7_ldv_param_7_2_default = (struct v4l2_buffer *)tmp;
  ldv_dummy_resourceless_instance_callback_7_7(ldv_7_callback_vidioc_dqbuf, ldv_7_container_struct_file_ptr,
                                               (void *)ldv_7_container_struct_v4l2_buffer_ptr,
                                               ldv_7_ldv_param_7_2_default);
  ldv_free((void *)ldv_7_ldv_param_7_2_default);
  ldv_statevar_7 = 2;
  }
  goto ldv_36486;
  case_10:
  {
  ldv_dummy_resourceless_instance_callback_7_10(ldv_7_callback_vidioc_g_fmt_vid_cap_mplane,
                                                ldv_7_container_struct_file_ptr, (void *)ldv_7_container_struct_v4l2_buffer_ptr,
                                                ldv_7_container_struct_v4l2_format_ptr);
  ldv_statevar_7 = 2;
  }
  goto ldv_36486;
  case_11:
  {
  ldv_dummy_resourceless_instance_callback_7_11(ldv_7_callback_vidioc_g_fmt_vid_out_mplane,
                                                ldv_7_container_struct_file_ptr, (void *)ldv_7_container_struct_v4l2_buffer_ptr,
                                                ldv_7_container_struct_v4l2_format_ptr);
  ldv_statevar_7 = 2;
  }
  goto ldv_36486;
  case_13:
  {
  tmp___0 = ldv_xmalloc(88UL);
  ldv_7_ldv_param_12_2_default = (struct v4l2_buffer *)tmp___0;
  ldv_dummy_resourceless_instance_callback_7_12(ldv_7_callback_vidioc_prepare_buf,
                                                ldv_7_container_struct_file_ptr, (void *)ldv_7_container_struct_v4l2_buffer_ptr,
                                                ldv_7_ldv_param_12_2_default);
  ldv_free((void *)ldv_7_ldv_param_12_2_default);
  ldv_statevar_7 = 2;
  }
  goto ldv_36486;
  case_16:
  {
  tmp___1 = ldv_xmalloc(88UL);
  ldv_7_ldv_param_15_2_default = (struct v4l2_buffer *)tmp___1;
  ldv_dummy_resourceless_instance_callback_7_15(ldv_7_callback_vidioc_qbuf, ldv_7_container_struct_file_ptr,
                                                (void *)ldv_7_container_struct_v4l2_buffer_ptr,
                                                ldv_7_ldv_param_15_2_default);
  ldv_free((void *)ldv_7_ldv_param_15_2_default);
  ldv_statevar_7 = 2;
  }
  goto ldv_36486;
  case_19:
  {
  tmp___2 = ldv_xmalloc(88UL);
  ldv_7_ldv_param_18_2_default = (struct v4l2_buffer *)tmp___2;
  ldv_dummy_resourceless_instance_callback_7_18(ldv_7_callback_vidioc_querybuf, ldv_7_container_struct_file_ptr,
                                                (void *)ldv_7_container_struct_v4l2_buffer_ptr,
                                                ldv_7_ldv_param_18_2_default);
  ldv_free((void *)ldv_7_ldv_param_18_2_default);
  ldv_statevar_7 = 2;
  }
  goto ldv_36486;
  case_21:
  {
  ldv_dummy_resourceless_instance_callback_7_21(ldv_7_callback_vidioc_querycap, ldv_7_container_struct_file_ptr,
                                                (void *)ldv_7_container_struct_v4l2_buffer_ptr,
                                                ldv_7_container_struct_v4l2_capability_ptr);
  ldv_statevar_7 = 2;
  }
  goto ldv_36486;
  case_22:
  {
  ldv_dummy_resourceless_instance_callback_7_22(ldv_7_callback_vidioc_reqbufs, ldv_7_container_struct_file_ptr,
                                                (void *)ldv_7_container_struct_v4l2_buffer_ptr,
                                                ldv_7_container_struct_v4l2_requestbuffers_ptr);
  ldv_statevar_7 = 2;
  }
  goto ldv_36486;
  case_23:
  {
  ldv_dummy_resourceless_instance_callback_7_23(ldv_7_callback_vidioc_s_fmt_vid_cap_mplane,
                                                ldv_7_container_struct_file_ptr, (void *)ldv_7_container_struct_v4l2_buffer_ptr,
                                                ldv_7_container_struct_v4l2_format_ptr);
  ldv_statevar_7 = 2;
  }
  goto ldv_36486;
  case_24:
  {
  ldv_dummy_resourceless_instance_callback_7_24(ldv_7_callback_vidioc_s_fmt_vid_out_mplane,
                                                ldv_7_container_struct_file_ptr, (void *)ldv_7_container_struct_v4l2_buffer_ptr,
                                                ldv_7_container_struct_v4l2_format_ptr);
  ldv_statevar_7 = 2;
  }
  goto ldv_36486;
  case_25:
  {
  ldv_dummy_resourceless_instance_callback_7_25(ldv_7_callback_vidioc_streamoff, ldv_7_container_struct_file_ptr,
                                                (void *)ldv_7_container_struct_v4l2_buffer_ptr,
                                                ldv_7_container_enum_v4l2_buf_type);
  ldv_statevar_7 = 2;
  }
  goto ldv_36486;
  case_26:
  {
  ldv_dummy_resourceless_instance_callback_7_26(ldv_7_callback_vidioc_streamon, ldv_7_container_struct_file_ptr,
                                                (void *)ldv_7_container_struct_v4l2_buffer_ptr,
                                                ldv_7_container_enum_v4l2_buf_type);
  ldv_statevar_7 = 2;
  }
  goto ldv_36486;
  case_27:
  {
  ldv_dummy_resourceless_instance_callback_7_27(ldv_7_callback_vidioc_try_fmt_vid_cap_mplane,
                                                ldv_7_container_struct_file_ptr, (void *)ldv_7_container_struct_v4l2_buffer_ptr,
                                                ldv_7_container_struct_v4l2_format_ptr);
  ldv_statevar_7 = 2;
  }
  goto ldv_36486;
  case_28:
  {
  ldv_dummy_resourceless_instance_callback_7_28(ldv_7_callback_vidioc_try_fmt_vid_out_mplane,
                                                ldv_7_container_struct_file_ptr, (void *)ldv_7_container_struct_v4l2_buffer_ptr,
                                                ldv_7_container_struct_v4l2_format_ptr);
  ldv_statevar_7 = 2;
  }
  goto ldv_36486;
  switch_default: ;
  switch_break: ;
  }
  ldv_36486: ;
  return;
}
}
void ldv_struct_v4l2_subdev_internal_ops_dummy_resourceless_instance_8(void *arg0 )
{
  int tmp ;
  int tmp___0 ;
  {
  {
  if (ldv_statevar_8 == 1) {
    goto case_1;
  } else {
  }
  if (ldv_statevar_8 == 2) {
    goto case_2;
  } else {
  }
  if (ldv_statevar_8 == 3) {
    goto case_3;
  } else {
  }
  if (ldv_statevar_8 == 4) {
    goto case_4;
  } else {
  }
  if (ldv_statevar_8 == 5) {
    goto case_5;
  } else {
  }
  goto switch_default;
  case_1: ;
  goto ldv_36510;
  case_2:
  {
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    ldv_statevar_8 = 1;
  } else {
    ldv_statevar_8 = 3;
  }
  goto ldv_36510;
  case_3:
  {
  ldv_dummy_resourceless_instance_callback_8_3(ldv_8_callback_open, ldv_8_container_struct_v4l2_subdev_ptr,
                                               ldv_8_container_struct_v4l2_subdev_fh_ptr);
  ldv_statevar_8 = 2;
  }
  goto ldv_36510;
  case_4:
  {
  tmp___0 = ldv_undef_int();
  }
  if (tmp___0 != 0) {
    ldv_statevar_8 = 1;
  } else {
    ldv_statevar_8 = 3;
  }
  goto ldv_36510;
  case_5: ;
  goto ldv_36510;
  switch_default: ;
  switch_break: ;
  }
  ldv_36510: ;
  return;
}
}
void ldv_struct_v4l2_subdev_video_ops_dummy_resourceless_instance_10(void *arg0 )
{
  {
  {
  if (ldv_statevar_10 == 1) {
    goto case_1;
  } else {
  }
  if (ldv_statevar_10 == 2) {
    goto case_2;
  } else {
  }
  if (ldv_statevar_10 == 3) {
    goto case_3;
  } else {
  }
  if (ldv_statevar_10 == 4) {
    goto case_4;
  } else {
  }
  if (ldv_statevar_10 == 5) {
    goto case_5;
  } else {
  }
  goto switch_default;
  case_1: ;
  goto ldv_36520;
  case_2:
  {
  ldv_statevar_10 = ldv_switch_5();
  }
  goto ldv_36520;
  case_3:
  {
  ldv_dummy_resourceless_instance_callback_10_3(ldv_10_callback_enum_frame_size, ldv_10_container_struct_v4l2_subdev_ptr,
                                                ldv_10_container_struct_v4l2_subdev_fh_ptr,
                                                ldv_10_container_struct_v4l2_subdev_frame_size_enum_ptr);
  ldv_statevar_10 = 2;
  }
  goto ldv_36520;
  case_4:
  {
  ldv_statevar_10 = ldv_switch_5();
  }
  goto ldv_36520;
  case_5: ;
  goto ldv_36520;
  switch_default: ;
  switch_break: ;
  }
  ldv_36520: ;
  return;
}
}
void ldv_struct_v4l2_subdev_video_ops_dummy_resourceless_instance_11(void *arg0 )
{
  {
  {
  if (ldv_statevar_11 == 1) {
    goto case_1;
  } else {
  }
  if (ldv_statevar_11 == 2) {
    goto case_2;
  } else {
  }
  if (ldv_statevar_11 == 3) {
    goto case_3;
  } else {
  }
  if (ldv_statevar_11 == 4) {
    goto case_4;
  } else {
  }
  if (ldv_statevar_11 == 5) {
    goto case_5;
  } else {
  }
  goto switch_default;
  case_1: ;
  goto ldv_36530;
  case_2:
  {
  ldv_statevar_11 = ldv_switch_5();
  }
  goto ldv_36530;
  case_3:
  {
  ldv_dummy_resourceless_instance_callback_11_3(ldv_11_callback_enum_frame_size, ldv_11_container_struct_v4l2_subdev_ptr,
                                                ldv_11_container_struct_v4l2_subdev_fh_ptr,
                                                ldv_11_container_struct_v4l2_subdev_frame_size_enum_ptr);
  ldv_statevar_11 = 2;
  }
  goto ldv_36530;
  case_4:
  {
  ldv_statevar_11 = ldv_switch_5();
  }
  goto ldv_36530;
  case_5: ;
  goto ldv_36530;
  switch_default: ;
  switch_break: ;
  }
  ldv_36530: ;
  return;
}
}
void ldv_struct_v4l2_subdev_video_ops_dummy_resourceless_instance_12(void *arg0 )
{
  {
  {
  if (ldv_statevar_12 == 1) {
    goto case_1;
  } else {
  }
  if (ldv_statevar_12 == 2) {
    goto case_2;
  } else {
  }
  if (ldv_statevar_12 == 3) {
    goto case_3;
  } else {
  }
  if (ldv_statevar_12 == 4) {
    goto case_4;
  } else {
  }
  if (ldv_statevar_12 == 5) {
    goto case_5;
  } else {
  }
  goto switch_default;
  case_1: ;
  goto ldv_36540;
  case_2:
  {
  ldv_statevar_12 = ldv_switch_5();
  }
  goto ldv_36540;
  case_3:
  {
  ldv_dummy_resourceless_instance_callback_12_3(ldv_12_callback_enum_frame_size, ldv_12_container_struct_v4l2_subdev_ptr,
                                                ldv_12_container_struct_v4l2_subdev_fh_ptr,
                                                ldv_12_container_struct_v4l2_subdev_frame_size_enum_ptr);
  ldv_statevar_12 = 2;
  }
  goto ldv_36540;
  case_4:
  {
  ldv_statevar_12 = ldv_switch_5();
  }
  goto ldv_36540;
  case_5: ;
  goto ldv_36540;
  switch_default: ;
  switch_break: ;
  }
  ldv_36540: ;
  return;
}
}
void ldv_struct_v4l2_subdev_video_ops_dummy_resourceless_instance_13(void *arg0 )
{
  {
  {
  if (ldv_statevar_13 == 1) {
    goto case_1;
  } else {
  }
  if (ldv_statevar_13 == 2) {
    goto case_2;
  } else {
  }
  if (ldv_statevar_13 == 3) {
    goto case_3;
  } else {
  }
  if (ldv_statevar_13 == 4) {
    goto case_4;
  } else {
  }
  if (ldv_statevar_13 == 5) {
    goto case_5;
  } else {
  }
  goto switch_default;
  case_1: ;
  goto ldv_36550;
  case_2:
  {
  ldv_statevar_13 = ldv_switch_5();
  }
  goto ldv_36550;
  case_3:
  {
  ldv_dummy_resourceless_instance_callback_13_3(ldv_13_callback_enum_frame_size, ldv_13_container_struct_v4l2_subdev_ptr,
                                                ldv_13_container_struct_v4l2_subdev_fh_ptr,
                                                ldv_13_container_struct_v4l2_subdev_frame_size_enum_ptr);
  ldv_statevar_13 = 2;
  }
  goto ldv_36550;
  case_4:
  {
  ldv_statevar_13 = ldv_switch_5();
  }
  goto ldv_36550;
  case_5: ;
  goto ldv_36550;
  switch_default: ;
  switch_break: ;
  }
  ldv_36550: ;
  return;
}
}
void ldv_struct_v4l2_subdev_video_ops_dummy_resourceless_instance_14(void *arg0 )
{
  {
  {
  if (ldv_statevar_14 == 1) {
    goto case_1;
  } else {
  }
  if (ldv_statevar_14 == 2) {
    goto case_2;
  } else {
  }
  if (ldv_statevar_14 == 3) {
    goto case_3;
  } else {
  }
  if (ldv_statevar_14 == 4) {
    goto case_4;
  } else {
  }
  if (ldv_statevar_14 == 5) {
    goto case_5;
  } else {
  }
  goto switch_default;
  case_1: ;
  goto ldv_36560;
  case_2:
  {
  ldv_statevar_14 = ldv_switch_5();
  }
  goto ldv_36560;
  case_3:
  {
  ldv_dummy_resourceless_instance_callback_14_3(ldv_14_callback_enum_frame_size, ldv_14_container_struct_v4l2_subdev_ptr,
                                                ldv_14_container_struct_v4l2_subdev_fh_ptr,
                                                ldv_14_container_struct_v4l2_subdev_frame_size_enum_ptr);
  ldv_statevar_14 = 2;
  }
  goto ldv_36560;
  case_4:
  {
  ldv_statevar_14 = ldv_switch_5();
  }
  goto ldv_36560;
  case_5: ;
  goto ldv_36560;
  switch_default: ;
  switch_break: ;
  }
  ldv_36560: ;
  return;
}
}
void ldv_struct_v4l2_subdev_video_ops_dummy_resourceless_instance_15(void *arg0 )
{
  {
  {
  if (ldv_statevar_15 == 1) {
    goto case_1;
  } else {
  }
  if (ldv_statevar_15 == 2) {
    goto case_2;
  } else {
  }
  if (ldv_statevar_15 == 3) {
    goto case_3;
  } else {
  }
  if (ldv_statevar_15 == 4) {
    goto case_4;
  } else {
  }
  if (ldv_statevar_15 == 5) {
    goto case_5;
  } else {
  }
  goto switch_default;
  case_1: ;
  goto ldv_36570;
  case_2:
  {
  ldv_statevar_15 = ldv_switch_5();
  }
  goto ldv_36570;
  case_3:
  {
  ldv_dummy_resourceless_instance_callback_15_3(ldv_15_callback_enum_frame_size, ldv_15_container_struct_v4l2_subdev_ptr,
                                                ldv_15_container_struct_v4l2_subdev_fh_ptr,
                                                ldv_15_container_struct_v4l2_subdev_frame_size_enum_ptr);
  ldv_statevar_15 = 2;
  }
  goto ldv_36570;
  case_4:
  {
  ldv_statevar_15 = ldv_switch_5();
  }
  goto ldv_36570;
  case_5: ;
  goto ldv_36570;
  switch_default: ;
  switch_break: ;
  }
  ldv_36570: ;
  return;
}
}
void ldv_struct_v4l2_subdev_video_ops_dummy_resourceless_instance_16(void *arg0 )
{
  {
  {
  if (ldv_statevar_16 == 1) {
    goto case_1;
  } else {
  }
  if (ldv_statevar_16 == 2) {
    goto case_2;
  } else {
  }
  if (ldv_statevar_16 == 3) {
    goto case_3;
  } else {
  }
  if (ldv_statevar_16 == 4) {
    goto case_4;
  } else {
  }
  if (ldv_statevar_16 == 5) {
    goto case_5;
  } else {
  }
  goto switch_default;
  case_1: ;
  goto ldv_36580;
  case_2:
  {
  ldv_statevar_16 = ldv_switch_5();
  }
  goto ldv_36580;
  case_3:
  {
  ldv_dummy_resourceless_instance_callback_16_3(ldv_16_callback_enum_frame_size, ldv_16_container_struct_v4l2_subdev_ptr,
                                                ldv_16_container_struct_v4l2_subdev_fh_ptr,
                                                ldv_16_container_struct_v4l2_subdev_frame_size_enum_ptr);
  ldv_statevar_16 = 2;
  }
  goto ldv_36580;
  case_4:
  {
  ldv_statevar_16 = ldv_switch_5();
  }
  goto ldv_36580;
  case_5: ;
  goto ldv_36580;
  switch_default: ;
  switch_break: ;
  }
  ldv_36580: ;
  return;
}
}
void ldv_struct_v4l2_subdev_video_ops_dummy_resourceless_instance_17(void *arg0 )
{
  {
  {
  if (ldv_statevar_17 == 1) {
    goto case_1;
  } else {
  }
  if (ldv_statevar_17 == 2) {
    goto case_2;
  } else {
  }
  if (ldv_statevar_17 == 3) {
    goto case_3;
  } else {
  }
  if (ldv_statevar_17 == 4) {
    goto case_4;
  } else {
  }
  if (ldv_statevar_17 == 5) {
    goto case_5;
  } else {
  }
  goto switch_default;
  case_1: ;
  goto ldv_36590;
  case_2:
  {
  ldv_statevar_17 = ldv_switch_5();
  }
  goto ldv_36590;
  case_3:
  {
  ldv_dummy_resourceless_instance_callback_17_3(ldv_17_callback_enum_frame_size, ldv_17_container_struct_v4l2_subdev_ptr,
                                                ldv_17_container_struct_v4l2_subdev_fh_ptr,
                                                ldv_17_container_struct_v4l2_subdev_frame_size_enum_ptr);
  ldv_statevar_17 = 2;
  }
  goto ldv_36590;
  case_4:
  {
  ldv_statevar_17 = ldv_switch_5();
  }
  goto ldv_36590;
  case_5: ;
  goto ldv_36590;
  switch_default: ;
  switch_break: ;
  }
  ldv_36590: ;
  return;
}
}
void ldv_struct_v4l2_subdev_video_ops_dummy_resourceless_instance_18(void *arg0 )
{
  {
  {
  if (ldv_statevar_18 == 1) {
    goto case_1;
  } else {
  }
  if (ldv_statevar_18 == 2) {
    goto case_2;
  } else {
  }
  if (ldv_statevar_18 == 3) {
    goto case_3;
  } else {
  }
  if (ldv_statevar_18 == 4) {
    goto case_4;
  } else {
  }
  if (ldv_statevar_18 == 5) {
    goto case_5;
  } else {
  }
  goto switch_default;
  case_1: ;
  goto ldv_36600;
  case_2:
  {
  ldv_statevar_18 = ldv_switch_5();
  }
  goto ldv_36600;
  case_3:
  {
  ldv_dummy_resourceless_instance_callback_18_3(ldv_18_callback_enum_frame_size, ldv_18_container_struct_v4l2_subdev_ptr,
                                                ldv_18_container_struct_v4l2_subdev_fh_ptr,
                                                ldv_18_container_struct_v4l2_subdev_frame_size_enum_ptr);
  ldv_statevar_18 = 2;
  }
  goto ldv_36600;
  case_4:
  {
  ldv_statevar_18 = ldv_switch_5();
  }
  goto ldv_36600;
  case_5: ;
  goto ldv_36600;
  switch_default: ;
  switch_break: ;
  }
  ldv_36600: ;
  return;
}
}
void ldv_struct_v4l2_subdev_video_ops_dummy_resourceless_instance_19(void *arg0 )
{
  {
  {
  if (ldv_statevar_19 == 1) {
    goto case_1;
  } else {
  }
  if (ldv_statevar_19 == 2) {
    goto case_2;
  } else {
  }
  if (ldv_statevar_19 == 3) {
    goto case_3;
  } else {
  }
  if (ldv_statevar_19 == 4) {
    goto case_4;
  } else {
  }
  if (ldv_statevar_19 == 5) {
    goto case_5;
  } else {
  }
  goto switch_default;
  case_1: ;
  goto ldv_36610;
  case_2:
  {
  ldv_statevar_19 = ldv_switch_5();
  }
  goto ldv_36610;
  case_3:
  {
  ldv_dummy_resourceless_instance_callback_19_3(ldv_19_callback_enum_frame_size, ldv_19_container_struct_v4l2_subdev_ptr,
                                                ldv_19_container_struct_v4l2_subdev_fh_ptr,
                                                ldv_19_container_struct_v4l2_subdev_frame_size_enum_ptr);
  ldv_statevar_19 = 2;
  }
  goto ldv_36610;
  case_4:
  {
  ldv_statevar_19 = ldv_switch_5();
  }
  goto ldv_36610;
  case_5: ;
  goto ldv_36610;
  switch_default: ;
  switch_break: ;
  }
  ldv_36610: ;
  return;
}
}
void ldv_struct_v4l2_subdev_video_ops_dummy_resourceless_instance_20(void *arg0 )
{
  {
  {
  if (ldv_statevar_20 == 1) {
    goto case_1;
  } else {
  }
  if (ldv_statevar_20 == 2) {
    goto case_2;
  } else {
  }
  if (ldv_statevar_20 == 3) {
    goto case_3;
  } else {
  }
  if (ldv_statevar_20 == 4) {
    goto case_4;
  } else {
  }
  if (ldv_statevar_20 == 5) {
    goto case_5;
  } else {
  }
  goto switch_default;
  case_1: ;
  goto ldv_36620;
  case_2:
  {
  ldv_statevar_20 = ldv_switch_5();
  }
  goto ldv_36620;
  case_3:
  {
  ldv_dummy_resourceless_instance_callback_20_3(ldv_20_callback_enum_frame_size, ldv_20_container_struct_v4l2_subdev_ptr,
                                                ldv_20_container_struct_v4l2_subdev_fh_ptr,
                                                ldv_20_container_struct_v4l2_subdev_frame_size_enum_ptr);
  ldv_statevar_20 = 2;
  }
  goto ldv_36620;
  case_4:
  {
  ldv_statevar_20 = ldv_switch_5();
  }
  goto ldv_36620;
  case_5: ;
  goto ldv_36620;
  switch_default: ;
  switch_break: ;
  }
  ldv_36620: ;
  return;
}
}
void ldv_struct_v4l2_subdev_video_ops_dummy_resourceless_instance_9(void *arg0 )
{
  {
  {
  if (ldv_statevar_9 == 1) {
    goto case_1;
  } else {
  }
  if (ldv_statevar_9 == 2) {
    goto case_2;
  } else {
  }
  if (ldv_statevar_9 == 3) {
    goto case_3;
  } else {
  }
  if (ldv_statevar_9 == 4) {
    goto case_4;
  } else {
  }
  if (ldv_statevar_9 == 5) {
    goto case_5;
  } else {
  }
  goto switch_default;
  case_1: ;
  goto ldv_36630;
  case_2:
  {
  ldv_statevar_9 = ldv_switch_5();
  }
  goto ldv_36630;
  case_3:
  {
  ldv_dummy_resourceless_instance_callback_9_3(ldv_9_callback_enum_frame_size, ldv_9_container_struct_v4l2_subdev_ptr,
                                               ldv_9_container_struct_v4l2_subdev_fh_ptr,
                                               ldv_9_container_struct_v4l2_subdev_frame_size_enum_ptr);
  ldv_statevar_9 = 2;
  }
  goto ldv_36630;
  case_4:
  {
  ldv_statevar_9 = ldv_switch_5();
  }
  goto ldv_36630;
  case_5: ;
  goto ldv_36630;
  switch_default: ;
  switch_break: ;
  }
  ldv_36630: ;
  return;
}
}
void ldv_struct_vb2_ops_dummy_resourceless_instance_21(void *arg0 )
{
  void *tmp ;
  void *tmp___0 ;
  {
  {
  if (ldv_statevar_21 == 1) {
    goto case_1;
  } else {
  }
  if (ldv_statevar_21 == 2) {
    goto case_2;
  } else {
  }
  if (ldv_statevar_21 == 3) {
    goto case_3;
  } else {
  }
  if (ldv_statevar_21 == 4) {
    goto case_4;
  } else {
  }
  if (ldv_statevar_21 == 5) {
    goto case_5;
  } else {
  }
  if (ldv_statevar_21 == 7) {
    goto case_7;
  } else {
  }
  if (ldv_statevar_21 == 9) {
    goto case_9;
  } else {
  }
  if (ldv_statevar_21 == 12) {
    goto case_12;
  } else {
  }
  if (ldv_statevar_21 == 14) {
    goto case_14;
  } else {
  }
  if (ldv_statevar_21 == 15) {
    goto case_15;
  } else {
  }
  if (ldv_statevar_21 == 16) {
    goto case_16;
  } else {
  }
  goto switch_default;
  case_1: ;
  goto ldv_36640;
  case_2:
  {
  ldv_statevar_21 = ldv_switch_6();
  }
  goto ldv_36640;
  case_3:
  {
  ldv_dummy_resourceless_instance_callback_21_3(ldv_21_callback_buf_prepare, ldv_21_container_struct_vb2_buffer_ptr);
  ldv_statevar_21 = 2;
  }
  goto ldv_36640;
  case_4:
  {
  ldv_statevar_21 = ldv_switch_6();
  }
  goto ldv_36640;
  case_5: ;
  goto ldv_36640;
  case_7:
  {
  ldv_dummy_resourceless_instance_callback_21_7(ldv_21_callback_buf_queue, ldv_21_container_struct_vb2_buffer_ptr);
  ldv_statevar_21 = 2;
  }
  goto ldv_36640;
  case_9:
  {
  tmp = ldv_xmalloc(4UL);
  ldv_21_ldv_param_8_3_default = (unsigned int *)tmp;
  tmp___0 = ldv_xmalloc(4UL);
  ldv_21_ldv_param_8_4_default = (unsigned int *)tmp___0;
  ldv_dummy_resourceless_instance_callback_21_8(ldv_21_callback_queue_setup, ldv_21_container_struct_vb2_queue_ptr,
                                                ldv_21_container_struct_v4l2_format_ptr,
                                                (unsigned int *)ldv_21_container_void_ptr_ptr,
                                                ldv_21_ldv_param_8_3_default, ldv_21_ldv_param_8_4_default,
                                                (void **)ldv_21_container_struct_vb2_buffer_ptr);
  ldv_free((void *)ldv_21_ldv_param_8_3_default);
  ldv_free((void *)ldv_21_ldv_param_8_4_default);
  ldv_statevar_21 = 2;
  }
  goto ldv_36640;
  case_12:
  {
  ldv_dummy_resourceless_instance_callback_21_11(ldv_21_callback_start_streaming,
                                                 ldv_21_container_struct_vb2_queue_ptr,
                                                 ldv_21_ldv_param_11_1_default);
  ldv_statevar_21 = 2;
  }
  goto ldv_36640;
  case_14:
  {
  ldv_dummy_resourceless_instance_callback_21_14(ldv_21_callback_stop_streaming, ldv_21_container_struct_vb2_queue_ptr);
  ldv_statevar_21 = 2;
  }
  goto ldv_36640;
  case_15:
  {
  ldv_dummy_resourceless_instance_callback_21_15(ldv_21_callback_wait_finish, ldv_21_container_struct_vb2_queue_ptr);
  ldv_statevar_21 = 2;
  }
  goto ldv_36640;
  case_16:
  {
  ldv_dummy_resourceless_instance_callback_21_16(ldv_21_callback_wait_prepare, ldv_21_container_struct_vb2_queue_ptr);
  ldv_statevar_21 = 2;
  }
  goto ldv_36640;
  switch_default: ;
  switch_break: ;
  }
  ldv_36640: ;
  return;
}
}
void ldv_struct_vsp1_video_operations_dummy_resourceless_instance_22(void *arg0 )
{
  int tmp ;
  int tmp___0 ;
  {
  {
  if (ldv_statevar_22 == 1) {
    goto case_1;
  } else {
  }
  if (ldv_statevar_22 == 2) {
    goto case_2;
  } else {
  }
  if (ldv_statevar_22 == 3) {
    goto case_3;
  } else {
  }
  if (ldv_statevar_22 == 4) {
    goto case_4;
  } else {
  }
  if (ldv_statevar_22 == 5) {
    goto case_5;
  } else {
  }
  goto switch_default;
  case_1: ;
  goto ldv_36656;
  case_2:
  {
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    ldv_statevar_22 = 1;
  } else {
    ldv_statevar_22 = 3;
  }
  goto ldv_36656;
  case_3:
  {
  ldv_dummy_resourceless_instance_callback_22_3(ldv_22_callback_queue, ldv_22_container_struct_vsp1_video_ptr,
                                                ldv_22_container_struct_vsp1_video_buffer_ptr);
  ldv_statevar_22 = 2;
  }
  goto ldv_36656;
  case_4:
  {
  tmp___0 = ldv_undef_int();
  }
  if (tmp___0 != 0) {
    ldv_statevar_22 = 1;
  } else {
    ldv_statevar_22 = 3;
  }
  goto ldv_36656;
  case_5: ;
  goto ldv_36656;
  switch_default: ;
  switch_break: ;
  }
  ldv_36656: ;
  return;
}
}
void ldv_struct_vsp1_video_operations_dummy_resourceless_instance_23(void *arg0 )
{
  int tmp ;
  int tmp___0 ;
  {
  {
  if (ldv_statevar_23 == 1) {
    goto case_1;
  } else {
  }
  if (ldv_statevar_23 == 2) {
    goto case_2;
  } else {
  }
  if (ldv_statevar_23 == 3) {
    goto case_3;
  } else {
  }
  if (ldv_statevar_23 == 4) {
    goto case_4;
  } else {
  }
  if (ldv_statevar_23 == 5) {
    goto case_5;
  } else {
  }
  goto switch_default;
  case_1: ;
  goto ldv_36666;
  case_2:
  {
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    ldv_statevar_23 = 1;
  } else {
    ldv_statevar_23 = 3;
  }
  goto ldv_36666;
  case_3:
  {
  ldv_dummy_resourceless_instance_callback_23_3(ldv_23_callback_queue, ldv_23_container_struct_vsp1_video_ptr,
                                                ldv_23_container_struct_vsp1_video_buffer_ptr);
  ldv_statevar_23 = 2;
  }
  goto ldv_36666;
  case_4:
  {
  tmp___0 = ldv_undef_int();
  }
  if (tmp___0 != 0) {
    ldv_statevar_23 = 1;
  } else {
    ldv_statevar_23 = 3;
  }
  goto ldv_36666;
  case_5: ;
  goto ldv_36666;
  switch_default: ;
  switch_break: ;
  }
  ldv_36666: ;
  return;
}
}
int ldv_switch_0(void)
{
  int tmp ;
  {
  {
  tmp = ldv_undef_int();
  }
  {
  if (tmp == 0) {
    goto case_0;
  } else {
  }
  if (tmp == 1) {
    goto case_1;
  } else {
  }
  if (tmp == 2) {
    goto case_2;
  } else {
  }
  goto switch_default;
  case_0: ;
  return (3);
  case_1: ;
  return (6);
  case_2: ;
  return (7);
  switch_default:
  {
  ldv_stop();
  }
  switch_break: ;
  }
  return (0);
}
}
int ldv_switch_1(void)
{
  int tmp ;
  {
  {
  tmp = ldv_undef_int();
  }
  {
  if (tmp == 0) {
    goto case_0;
  } else {
  }
  if (tmp == 1) {
    goto case_1;
  } else {
  }
  if (tmp == 2) {
    goto case_2;
  } else {
  }
  if (tmp == 3) {
    goto case_3;
  } else {
  }
  goto switch_default;
  case_0: ;
  return (1);
  case_1: ;
  return (22);
  case_2: ;
  return (25);
  case_3: ;
  return (27);
  switch_default:
  {
  ldv_stop();
  }
  switch_break: ;
  }
  return (0);
}
}
int ldv_switch_2(void)
{
  int tmp ;
  {
  {
  tmp = ldv_undef_int();
  }
  {
  if (tmp == 0) {
    goto case_0;
  } else {
  }
  if (tmp == 1) {
    goto case_1;
  } else {
  }
  if (tmp == 2) {
    goto case_2;
  } else {
  }
  goto switch_default;
  case_0: ;
  return (9);
  case_1: ;
  return (15);
  case_2: ;
  return (21);
  switch_default:
  {
  ldv_stop();
  }
  switch_break: ;
  }
  return (0);
}
}
int ldv_switch_3(void)
{
  int tmp ;
  {
  {
  tmp = ldv_undef_int();
  }
  {
  if (tmp == 0) {
    goto case_0;
  } else {
  }
  if (tmp == 1) {
    goto case_1;
  } else {
  }
  if (tmp == 2) {
    goto case_2;
  } else {
  }
  if (tmp == 3) {
    goto case_3;
  } else {
  }
  if (tmp == 4) {
    goto case_4;
  } else {
  }
  if (tmp == 5) {
    goto case_5;
  } else {
  }
  if (tmp == 6) {
    goto case_6;
  } else {
  }
  goto switch_default;
  case_0: ;
  return (2);
  case_1: ;
  return (4);
  case_2: ;
  return (15);
  case_3: ;
  return (16);
  case_4: ;
  return (17);
  case_5: ;
  return (18);
  case_6: ;
  return (19);
  switch_default:
  {
  ldv_stop();
  }
  switch_break: ;
  }
  return (0);
}
}
int ldv_switch_4(void)
{
  int tmp ;
  {
  {
  tmp = ldv_undef_int();
  }
  {
  if (tmp == 0) {
    goto case_0;
  } else {
  }
  if (tmp == 1) {
    goto case_1;
  } else {
  }
  if (tmp == 2) {
    goto case_2;
  } else {
  }
  if (tmp == 3) {
    goto case_3;
  } else {
  }
  if (tmp == 4) {
    goto case_4;
  } else {
  }
  if (tmp == 5) {
    goto case_5;
  } else {
  }
  if (tmp == 6) {
    goto case_6;
  } else {
  }
  if (tmp == 7) {
    goto case_7;
  } else {
  }
  if (tmp == 8) {
    goto case_8;
  } else {
  }
  if (tmp == 9) {
    goto case_9;
  } else {
  }
  if (tmp == 10) {
    goto case_10;
  } else {
  }
  if (tmp == 11) {
    goto case_11;
  } else {
  }
  if (tmp == 12) {
    goto case_12;
  } else {
  }
  if (tmp == 13) {
    goto case_13;
  } else {
  }
  if (tmp == 14) {
    goto case_14;
  } else {
  }
  if (tmp == 15) {
    goto case_15;
  } else {
  }
  goto switch_default;
  case_0: ;
  return (1);
  case_1: ;
  return (3);
  case_2: ;
  return (8);
  case_3: ;
  return (10);
  case_4: ;
  return (11);
  case_5: ;
  return (13);
  case_6: ;
  return (16);
  case_7: ;
  return (19);
  case_8: ;
  return (21);
  case_9: ;
  return (22);
  case_10: ;
  return (23);
  case_11: ;
  return (24);
  case_12: ;
  return (25);
  case_13: ;
  return (26);
  case_14: ;
  return (27);
  case_15: ;
  return (28);
  switch_default:
  {
  ldv_stop();
  }
  switch_break: ;
  }
  return (0);
}
}
int ldv_switch_5(void)
{
  int tmp ;
  {
  {
  tmp = ldv_undef_int();
  }
  {
  if (tmp == 0) {
    goto case_0;
  } else {
  }
  if (tmp == 1) {
    goto case_1;
  } else {
  }
  if (tmp == 2) {
    goto case_2;
  } else {
  }
  if (tmp == 3) {
    goto case_3;
  } else {
  }
  if (tmp == 4) {
    goto case_4;
  } else {
  }
  if (tmp == 5) {
    goto case_5;
  } else {
  }
  if (tmp == 6) {
    goto case_6;
  } else {
  }
  if (tmp == 7) {
    goto case_7;
  } else {
  }
  if (tmp == 8) {
    goto case_8;
  } else {
  }
  goto switch_default;
  case_0: ;
  return (1);
  case_1: ;
  return (3);
  case_2: ;
  return (7);
  case_3: ;
  return (8);
  case_4: ;
  return (9);
  case_5: ;
  return (11);
  case_6: ;
  return (14);
  case_7: ;
  return (16);
  case_8: ;
  return (17);
  switch_default:
  {
  ldv_stop();
  }
  switch_break: ;
  }
  return (0);
}
}
int ldv_switch_6(void)
{
  int tmp ;
  {
  {
  tmp = ldv_undef_int();
  }
  {
  if (tmp == 0) {
    goto case_0;
  } else {
  }
  if (tmp == 1) {
    goto case_1;
  } else {
  }
  if (tmp == 2) {
    goto case_2;
  } else {
  }
  if (tmp == 3) {
    goto case_3;
  } else {
  }
  if (tmp == 4) {
    goto case_4;
  } else {
  }
  if (tmp == 5) {
    goto case_5;
  } else {
  }
  if (tmp == 6) {
    goto case_6;
  } else {
  }
  if (tmp == 7) {
    goto case_7;
  } else {
  }
  goto switch_default;
  case_0: ;
  return (1);
  case_1: ;
  return (3);
  case_2: ;
  return (7);
  case_3: ;
  return (9);
  case_4: ;
  return (12);
  case_5: ;
  return (14);
  case_6: ;
  return (15);
  case_7: ;
  return (16);
  switch_default:
  {
  ldv_stop();
  }
  switch_break: ;
  }
  return (0);
}
}
int ldv_switch_7(void)
{
  int tmp ;
  {
  {
  tmp = ldv_undef_int();
  }
  {
  if (tmp == 0) {
    goto case_0;
  } else {
  }
  if (tmp == 1) {
    goto case_1;
  } else {
  }
  if (tmp == 2) {
    goto case_2;
  } else {
  }
  if (tmp == 3) {
    goto case_3;
  } else {
  }
  goto switch_default;
  case_0: ;
  return (2);
  case_1: ;
  return (4);
  case_2: ;
  return (17);
  case_3: ;
  return (19);
  switch_default:
  {
  ldv_stop();
  }
  switch_break: ;
  }
  return (0);
}
}
void ldv_switch_automaton_state_10_1(void)
{
  {
  ldv_statevar_10 = 5;
  return;
}
}
void ldv_switch_automaton_state_10_5(void)
{
  {
  ldv_statevar_10 = 4;
  return;
}
}
void ldv_switch_automaton_state_11_1(void)
{
  {
  ldv_statevar_11 = 5;
  return;
}
}
void ldv_switch_automaton_state_11_5(void)
{
  {
  ldv_statevar_11 = 4;
  return;
}
}
void ldv_switch_automaton_state_12_1(void)
{
  {
  ldv_statevar_12 = 5;
  return;
}
}
void ldv_switch_automaton_state_12_5(void)
{
  {
  ldv_statevar_12 = 4;
  return;
}
}
void ldv_switch_automaton_state_13_1(void)
{
  {
  ldv_statevar_13 = 5;
  return;
}
}
void ldv_switch_automaton_state_13_5(void)
{
  {
  ldv_statevar_13 = 4;
  return;
}
}
void ldv_switch_automaton_state_14_1(void)
{
  {
  ldv_statevar_14 = 5;
  return;
}
}
void ldv_switch_automaton_state_14_5(void)
{
  {
  ldv_statevar_14 = 4;
  return;
}
}
void ldv_switch_automaton_state_15_1(void)
{
  {
  ldv_statevar_15 = 5;
  return;
}
}
void ldv_switch_automaton_state_15_5(void)
{
  {
  ldv_statevar_15 = 4;
  return;
}
}
void ldv_switch_automaton_state_16_1(void)
{
  {
  ldv_statevar_16 = 5;
  return;
}
}
void ldv_switch_automaton_state_16_5(void)
{
  {
  ldv_statevar_16 = 4;
  return;
}
}
void ldv_switch_automaton_state_17_1(void)
{
  {
  ldv_statevar_17 = 5;
  return;
}
}
void ldv_switch_automaton_state_17_5(void)
{
  {
  ldv_statevar_17 = 4;
  return;
}
}
void ldv_switch_automaton_state_18_1(void)
{
  {
  ldv_statevar_18 = 5;
  return;
}
}
void ldv_switch_automaton_state_18_5(void)
{
  {
  ldv_statevar_18 = 4;
  return;
}
}
void ldv_switch_automaton_state_19_1(void)
{
  {
  ldv_statevar_19 = 5;
  return;
}
}
void ldv_switch_automaton_state_19_5(void)
{
  {
  ldv_statevar_19 = 4;
  return;
}
}
void ldv_switch_automaton_state_20_1(void)
{
  {
  ldv_statevar_20 = 5;
  return;
}
}
void ldv_switch_automaton_state_20_5(void)
{
  {
  ldv_statevar_20 = 4;
  return;
}
}
void ldv_switch_automaton_state_21_1(void)
{
  {
  ldv_statevar_21 = 5;
  return;
}
}
void ldv_switch_automaton_state_21_5(void)
{
  {
  ldv_statevar_21 = 4;
  return;
}
}
void ldv_switch_automaton_state_22_1(void)
{
  {
  ldv_statevar_22 = 5;
  return;
}
}
void ldv_switch_automaton_state_22_5(void)
{
  {
  ldv_statevar_22 = 4;
  return;
}
}
void ldv_switch_automaton_state_23_1(void)
{
  {
  ldv_statevar_23 = 5;
  return;
}
}
void ldv_switch_automaton_state_23_5(void)
{
  {
  ldv_statevar_23 = 4;
  return;
}
}
void ldv_switch_automaton_state_2_17(void)
{
  {
  ldv_statevar_2 = 16;
  return;
}
}
void ldv_switch_automaton_state_2_8(void)
{
  {
  ldv_2_probed_default = 1;
  ldv_statevar_2 = 17;
  return;
}
}
void ldv_switch_automaton_state_3_1(void)
{
  {
  ldv_statevar_3 = 29;
  return;
}
}
void ldv_switch_automaton_state_3_29(void)
{
  {
  ldv_statevar_3 = 28;
  return;
}
}
void ldv_switch_automaton_state_4_12(void)
{
  {
  ldv_statevar_4 = 11;
  return;
}
}
void ldv_switch_automaton_state_4_5(void)
{
  {
  ldv_4_ret_default = 1;
  ldv_statevar_4 = 12;
  return;
}
}
void ldv_switch_automaton_state_5_1(void)
{
  {
  ldv_statevar_5 = 5;
  return;
}
}
void ldv_switch_automaton_state_5_5(void)
{
  {
  ldv_statevar_5 = 4;
  return;
}
}
void ldv_switch_automaton_state_6_1(void)
{
  {
  ldv_statevar_6 = 5;
  return;
}
}
void ldv_switch_automaton_state_6_5(void)
{
  {
  ldv_statevar_6 = 4;
  return;
}
}
void ldv_switch_automaton_state_7_1(void)
{
  {
  ldv_statevar_7 = 5;
  return;
}
}
void ldv_switch_automaton_state_7_5(void)
{
  {
  ldv_statevar_7 = 4;
  return;
}
}
void ldv_switch_automaton_state_8_1(void)
{
  {
  ldv_statevar_8 = 5;
  return;
}
}
void ldv_switch_automaton_state_8_5(void)
{
  {
  ldv_statevar_8 = 4;
  return;
}
}
void ldv_switch_automaton_state_9_1(void)
{
  {
  ldv_statevar_9 = 5;
  return;
}
}
void ldv_switch_automaton_state_9_5(void)
{
  {
  ldv_statevar_9 = 4;
  return;
}
}
int ldv_v4l2_device_register_subdev(int arg0 , struct v4l2_device *arg1 , struct v4l2_subdev *arg2 )
{
  struct v4l2_subdev *ldv_27_struct_v4l2_subdev_ptr_struct_v4l2_subdev_ptr ;
  int tmp ;
  {
  {
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    {
    ldv_assume(arg0 == 0);
    ldv_27_struct_v4l2_subdev_ptr_struct_v4l2_subdev_ptr = arg2;
    ldv_assume(((((((((((ldv_statevar_9 == 5 || ldv_statevar_10 == 5) || ldv_statevar_11 == 5) || ldv_statevar_12 == 5) || ldv_statevar_13 == 5) || ldv_statevar_14 == 5) || ldv_statevar_15 == 5) || ldv_statevar_16 == 5) || ldv_statevar_17 == 5) || ldv_statevar_18 == 5) || ldv_statevar_19 == 5) || ldv_statevar_20 == 5);
    ldv_dispatch_register_27_2(ldv_27_struct_v4l2_subdev_ptr_struct_v4l2_subdev_ptr);
    }
    return (arg0);
  } else {
    {
    ldv_assume(arg0 != 0);
    }
    return (arg0);
  }
  return (arg0);
}
}
__inline static long PTR_ERR(void const *ptr )
{
  long tmp ;
  {
  {
  tmp = ldv_ptr_err(ptr);
  }
  return (tmp);
}
}
__inline static long IS_ERR(void const *ptr )
{
  long tmp ;
  {
  {
  tmp = ldv_is_err(ptr);
  }
  return (tmp);
}
}
static void *ldv_dev_get_drvdata_27(struct device const *dev )
{
  void *tmp ;
  {
  {
  tmp = ldv_dev_get_drvdata(dev);
  }
  return (tmp);
}
}
static int ldv_dev_set_drvdata_28(struct device *dev , void *data )
{
  int tmp ;
  {
  {
  tmp = ldv_dev_set_drvdata(dev, data);
  }
  return (tmp);
}
}
static int ldv_v4l2_device_register_subdev_50(struct v4l2_device *ldv_func_arg1 ,
                                              struct v4l2_subdev *ldv_func_arg2 )
{
  ldv_func_ret_type ldv_func_res ;
  int tmp ;
  int tmp___0 ;
  {
  {
  tmp = v4l2_device_register_subdev(ldv_func_arg1, ldv_func_arg2);
  ldv_func_res = tmp;
  tmp___0 = ldv_v4l2_device_register_subdev(ldv_func_res, ldv_func_arg1, ldv_func_arg2);
  }
  return (tmp___0);
  return (ldv_func_res);
}
}
static void *ldv_dev_get_drvdata_51(struct device const *dev )
{
  void *tmp ;
  {
  {
  tmp = ldv_dev_get_drvdata(dev);
  }
  return (tmp);
}
}
static void *ldv_dev_get_drvdata_52(struct device const *dev )
{
  void *tmp ;
  {
  {
  tmp = ldv_dev_get_drvdata(dev);
  }
  return (tmp);
}
}
static int ldv___platform_driver_register_53(struct platform_driver *ldv_func_arg1 ,
                                             struct module *ldv_func_arg2 )
{
  ldv_func_ret_type___0 ldv_func_res ;
  int tmp ;
  int tmp___0 ;
  {
  {
  tmp = __platform_driver_register(ldv_func_arg1, ldv_func_arg2);
  ldv_func_res = tmp;
  tmp___0 = ldv___platform_driver_register(ldv_func_res, ldv_func_arg1, ldv_func_arg2);
  }
  return (tmp___0);
  return (ldv_func_res);
}
}
static void ldv_platform_driver_unregister_54(struct platform_driver *ldv_func_arg1 )
{
  {
  {
  platform_driver_unregister(ldv_func_arg1);
  ldv_platform_driver_unregister((void *)0, ldv_func_arg1);
  }
  return;
}
}
extern void *memset(void * , int , size_t ) ;
static void *ldv_dev_get_drvdata_37(struct device const *dev ) ;
extern int media_entity_init(struct media_entity * , u16 , struct media_pad * , u16 ) ;
extern void media_entity_cleanup(struct media_entity * ) ;
extern void v4l2_ctrl_handler_free(struct v4l2_ctrl_handler * ) ;
__inline static void *video_get_drvdata(struct video_device *vdev )
{
  void *tmp ;
  {
  {
  tmp = ldv_dev_get_drvdata_37((struct device const *)(& vdev->dev));
  }
  return (tmp);
}
}
__inline static struct v4l2_mbus_framefmt *v4l2_subdev_get_try_format(struct v4l2_subdev_fh *fh ,
                                                                      unsigned int pad )
{
  void *tmp ;
  long tmp___0 ;
  {
  {
  tmp = video_get_drvdata(fh->vfh.vdev);
  tmp___0 = ldv__builtin_expect(pad >= (unsigned int )((struct v4l2_subdev *)tmp)->entity.num_pads,
                             0L);
  }
  if (tmp___0 != 0L) {
    {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"include/media/v4l2-subdev.h"),
                         "i" (643), "i" (12UL));
    __builtin_unreachable();
    }
  } else {
  }
  return (& (fh->pad + (unsigned long )pad)->try_fmt);
}
}
extern int v4l2_subdev_link_validate(struct media_link * ) ;
int vsp1_entity_init(struct vsp1_device *vsp1 , struct vsp1_entity *entity , unsigned int num_pads ) ;
struct v4l2_subdev_internal_ops const vsp1_subdev_internal_ops ;
struct media_entity_operations const vsp1_media_ops ;
struct v4l2_mbus_framefmt *vsp1_entity_get_pad_format(struct vsp1_entity *entity ,
                                                      struct v4l2_subdev_fh *fh ,
                                                      unsigned int pad , u32 which ) ;
void vsp1_entity_init_formats(struct v4l2_subdev *subdev , struct v4l2_subdev_fh *fh ) ;
struct v4l2_mbus_framefmt *vsp1_entity_get_pad_format(struct vsp1_entity *entity ,
                                                      struct v4l2_subdev_fh *fh ,
                                                      unsigned int pad , u32 which )
{
  struct v4l2_mbus_framefmt *tmp ;
  {
  {
  if (which == 0U) {
    goto case_0;
  } else {
  }
  if (which == 1U) {
    goto case_1;
  } else {
  }
  goto switch_default;
  case_0:
  {
  tmp = v4l2_subdev_get_try_format(fh, pad);
  }
  return (tmp);
  case_1: ;
  return (entity->formats + (unsigned long )pad);
  switch_default: ;
  return ((struct v4l2_mbus_framefmt *)0);
  switch_break: ;
  }
}
}
void vsp1_entity_init_formats(struct v4l2_subdev *subdev , struct v4l2_subdev_fh *fh )
{
  struct v4l2_subdev_format format ;
  unsigned int pad ;
  {
  pad = 0U;
  goto ldv_28688;
  ldv_28687:
  {
  memset((void *)(& format), 0, 88UL);
  format.pad = pad;
  format.which = (unsigned long )fh == (unsigned long )((struct v4l2_subdev_fh *)0);
  }
  if ((unsigned long )subdev != (unsigned long )((struct v4l2_subdev *)0)) {
    if ((unsigned long )(subdev->ops)->pad != (unsigned long )((struct v4l2_subdev_pad_ops const * )0) && (unsigned long )((subdev->ops)->pad)->set_fmt != (unsigned long )((int (* )(struct v4l2_subdev * ,
                                                                                                                                                                                                              struct v4l2_subdev_fh * ,
                                                                                                                                                                                                              struct v4l2_subdev_format * ))0)) {
      {
      (*(((subdev->ops)->pad)->set_fmt))(subdev, fh, & format);
      }
    } else {
    }
  } else {
  }
  pad = pad + 1U;
  ldv_28688: ;
  if (pad < (unsigned int )((int )subdev->entity.num_pads + -1)) {
    goto ldv_28687;
  } else {
  }
  return;
}
}
static int vsp1_entity_open(struct v4l2_subdev *subdev , struct v4l2_subdev_fh *fh )
{
  {
  {
  vsp1_entity_init_formats(subdev, fh);
  }
  return (0);
}
}
struct v4l2_subdev_internal_ops const vsp1_subdev_internal_ops = {0, 0, & vsp1_entity_open, 0};
static int vsp1_entity_link_setup(struct media_entity *entity , struct media_pad const *local ,
                                  struct media_pad const *remote , u32 flags )
{
  struct vsp1_entity *source ;
  struct media_entity const *__mptr ;
  {
  if (((unsigned long )local->flags & 2UL) == 0UL) {
    return (0);
  } else {
  }
  __mptr = (struct media_entity const *)local->entity;
  source = (struct vsp1_entity *)__mptr + 0xffffffffffffffb0UL;
  if (source->route == 0U) {
    return (0);
  } else {
  }
  if ((int )flags & 1) {
    if ((unsigned long )source->sink != (unsigned long )((struct media_entity *)0)) {
      return (-16);
    } else {
    }
    source->sink = remote->entity;
  } else {
    source->sink = (struct media_entity *)0;
  }
  return (0);
}
}
struct media_entity_operations const vsp1_media_ops = {& vsp1_entity_link_setup, & v4l2_subdev_link_validate};
int vsp1_entity_init(struct vsp1_device *vsp1 , struct vsp1_entity *entity , unsigned int num_pads )
{
  struct __anonstruct_routes_236 routes[17U] ;
  unsigned int i ;
  void *tmp ;
  void *tmp___0 ;
  int tmp___1 ;
  {
  routes[0].id = 31U;
  routes[0].reg = 8264U;
  routes[1].id = 30U;
  routes[1].reg = 8260U;
  routes[2].id = 55U;
  routes[2].reg = 0U;
  routes[3].id = 22U;
  routes[3].reg = 8252U;
  routes[4].id = 0U;
  routes[4].reg = 8192U;
  routes[5].id = 1U;
  routes[5].reg = 8196U;
  routes[6].id = 2U;
  routes[6].reg = 8200U;
  routes[7].id = 3U;
  routes[7].reg = 8204U;
  routes[8].id = 4U;
  routes[8].reg = 8208U;
  routes[9].id = 16U;
  routes[9].reg = 8228U;
  routes[10].id = 17U;
  routes[10].reg = 8232U;
  routes[11].id = 18U;
  routes[11].reg = 8236U;
  routes[12].id = 19U;
  routes[12].reg = 8240U;
  routes[13].id = 56U;
  routes[13].reg = 0U;
  routes[14].id = 57U;
  routes[14].reg = 0U;
  routes[15].id = 58U;
  routes[15].reg = 0U;
  routes[16].id = 59U;
  routes[16].reg = 0U;
  i = 0U;
  goto ldv_28719;
  ldv_28718: ;
  if (routes[i].id == entity->id) {
    entity->route = routes[i].reg;
    goto ldv_28717;
  } else {
  }
  i = i + 1U;
  ldv_28719: ;
  if (i <= 16U) {
    goto ldv_28718;
  } else {
  }
  ldv_28717: ;
  if (i == 17U) {
    return (-22);
  } else {
  }
  {
  entity->vsp1 = vsp1;
  entity->source_pad = num_pads - 1U;
  tmp = devm_kzalloc(vsp1->dev, (unsigned long )num_pads * 48UL, 208U);
  entity->formats = (struct v4l2_mbus_framefmt *)tmp;
  }
  if ((unsigned long )entity->formats == (unsigned long )((struct v4l2_mbus_framefmt *)0)) {
    return (-12);
  } else {
  }
  {
  tmp___0 = devm_kzalloc(vsp1->dev, (unsigned long )num_pads * 24UL, 208U);
  entity->pads = (struct media_pad *)tmp___0;
  }
  if ((unsigned long )entity->pads == (unsigned long )((struct media_pad *)0)) {
    return (-12);
  } else {
  }
  i = 0U;
  goto ldv_28723;
  ldv_28722:
  (entity->pads + (unsigned long )i)->flags = 1UL;
  i = i + 1U;
  ldv_28723: ;
  if (i < num_pads - 1U) {
    goto ldv_28722;
  } else {
  }
  {
  (entity->pads + (unsigned long )(num_pads - 1U))->flags = 2UL;
  tmp___1 = media_entity_init(& entity->subdev.entity, (int )((u16 )num_pads), entity->pads,
                              0);
  }
  return (tmp___1);
}
}
void vsp1_entity_destroy(struct vsp1_entity *entity )
{
  {
  if ((unsigned long )entity->subdev.ctrl_handler != (unsigned long )((struct v4l2_ctrl_handler *)0)) {
    {
    v4l2_ctrl_handler_free(entity->subdev.ctrl_handler);
    }
  } else {
  }
  {
  media_entity_cleanup(& entity->subdev.entity);
  }
  return;
}
}
int (*ldv_5_callback_link_setup)(struct media_entity * , struct media_pad * , struct media_pad * ,
                                 unsigned int ) = (int (*)(struct media_entity * , struct media_pad * , struct media_pad * , unsigned int ))(& vsp1_entity_link_setup);
int (*ldv_5_callback_link_validate)(struct media_link * ) = & v4l2_subdev_link_validate;
int (*ldv_8_callback_open)(struct v4l2_subdev * , struct v4l2_subdev_fh * ) = & vsp1_entity_open;
void ldv_dummy_resourceless_instance_callback_5_3(int (*arg0)(struct media_entity * ,
                                                              struct media_pad * ,
                                                              struct media_pad * ,
                                                              unsigned int ) , struct media_entity *arg1 ,
                                                  struct media_pad *arg2 , struct media_pad *arg3 ,
                                                  unsigned int arg4 )
{
  {
  {
  vsp1_entity_link_setup(arg1, (struct media_pad const *)arg2, (struct media_pad const *)arg3,
                         arg4);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_5_9(int (*arg0)(struct media_link * ) ,
                                                  struct media_link *arg1 )
{
  {
  {
  v4l2_subdev_link_validate(arg1);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_8_3(int (*arg0)(struct v4l2_subdev * ,
                                                              struct v4l2_subdev_fh * ) ,
                                                  struct v4l2_subdev *arg1 , struct v4l2_subdev_fh *arg2 )
{
  {
  {
  vsp1_entity_open(arg1, arg2);
  }
  return;
}
}
static void *ldv_dev_get_drvdata_37(struct device const *dev )
{
  void *tmp ;
  {
  {
  tmp = ldv_dev_get_drvdata(dev);
  }
  return (tmp);
}
}
void *ldv_kzalloc(size_t size , gfp_t flags ) ;
__inline static int list_empty(struct list_head const *head )
{
  {
  return ((unsigned long )((struct list_head const *)head->next) == (unsigned long )head);
}
}
__inline static int list_is_singular(struct list_head const *head )
{
  int tmp ;
  {
  {
  tmp = list_empty(head);
  }
  return (tmp == 0 && (unsigned long )head->next == (unsigned long )head->prev);
}
}
__inline static int constant_test_bit(long nr , unsigned long const volatile *addr )
{
  {
  return ((int )((unsigned long )*(addr + (unsigned long )(nr >> 6)) >> ((int )nr & 63)) & 1);
}
}
__inline static long PTR_ERR(void const *ptr ) ;
__inline static long IS_ERR(void const *ptr ) ;
extern void __ldv_spin_lock(spinlock_t * ) ;
static void ldv___ldv_spin_lock_50(spinlock_t *ldv_func_arg1 ) ;
static void ldv___ldv_spin_lock_52(spinlock_t *ldv_func_arg1 ) ;
static void ldv___ldv_spin_lock_56(spinlock_t *ldv_func_arg1 ) ;
static void ldv___ldv_spin_lock_58(spinlock_t *ldv_func_arg1 ) ;
static void ldv___ldv_spin_lock_60(spinlock_t *ldv_func_arg1 ) ;
static void ldv___ldv_spin_lock_62(spinlock_t *ldv_func_arg1 ) ;
static void ldv___ldv_spin_lock_64(spinlock_t *ldv_func_arg1 ) ;
static void ldv___ldv_spin_lock_66(spinlock_t *ldv_func_arg1 ) ;
void ldv_spin_lock_irqlock_of_vsp1_pipeline(void) ;
void ldv_spin_unlock_irqlock_of_vsp1_pipeline(void) ;
void ldv_spin_lock_irqlock_of_vsp1_video(void) ;
void ldv_spin_unlock_irqlock_of_vsp1_video(void) ;
int ldv_filter_err_code(int ret_val ) ;
extern void __raw_spin_lock_init(raw_spinlock_t * , char const * , struct lock_class_key * ) ;
extern void _raw_spin_unlock_irqrestore(raw_spinlock_t * , unsigned long ) ;
__inline static raw_spinlock_t *spinlock_check(spinlock_t *lock )
{
  {
  return (& lock->__annonCompField19.rlock);
}
}
__inline static void spin_unlock_irqrestore(spinlock_t *lock , unsigned long flags )
{
  {
  {
  _raw_spin_unlock_irqrestore(& lock->__annonCompField19.rlock, flags);
  }
  return;
}
}
__inline static void ldv_spin_unlock_irqrestore_51(spinlock_t *lock , unsigned long flags ) ;
__inline static void ldv_spin_unlock_irqrestore_53(spinlock_t *lock , unsigned long flags ) ;
__inline static void ldv_spin_unlock_irqrestore_53(spinlock_t *lock , unsigned long flags ) ;
__inline static void ldv_spin_unlock_irqrestore_53(spinlock_t *lock , unsigned long flags ) ;
__inline static void ldv_spin_unlock_irqrestore_51(spinlock_t *lock , unsigned long flags ) ;
__inline static void ldv_spin_unlock_irqrestore_51(spinlock_t *lock , unsigned long flags ) ;
__inline static void ldv_spin_unlock_irqrestore_53(spinlock_t *lock , unsigned long flags ) ;
__inline static void ldv_spin_unlock_irqrestore_51(spinlock_t *lock , unsigned long flags ) ;
__inline static void ldv_spin_unlock_irqrestore_51(spinlock_t *lock , unsigned long flags ) ;
__inline static void ldv_spin_unlock_irqrestore_53(spinlock_t *lock , unsigned long flags ) ;
extern void __init_waitqueue_head(wait_queue_head_t * , char const * , struct lock_class_key * ) ;
extern void __wake_up(wait_queue_head_t * , unsigned int , int , void * ) ;
extern long prepare_to_wait_event(wait_queue_head_t * , wait_queue_t * , int ) ;
extern void finish_wait(wait_queue_head_t * , wait_queue_t * ) ;
extern unsigned long msecs_to_jiffies(unsigned int const ) ;
static void *ldv_dev_get_drvdata_43(struct device const *dev ) ;
static int ldv_dev_set_drvdata_44(struct device *dev , void *data ) ;
extern long schedule_timeout(long ) ;
extern void kfree(void const * ) ;
__inline static void *kzalloc(size_t size , gfp_t flags ) ;
__inline static u32 media_entity_type(struct media_entity *entity )
{
  {
  return (entity->type & 16711680U);
}
}
extern struct media_pad *media_entity_remote_pad(struct media_pad * ) ;
extern void media_entity_graph_walk_start(struct media_entity_graph * , struct media_entity * ) ;
extern struct media_entity *media_entity_graph_walk_next(struct media_entity_graph * ) ;
extern int media_entity_pipeline_start(struct media_entity * , struct media_pipeline * ) ;
extern void media_entity_pipeline_stop(struct media_entity * ) ;
extern int __video_register_device(struct video_device * , int , int , int , struct module * ) ;
__inline static int video_register_device(struct video_device *vdev , int type , int nr )
{
  int tmp ;
  {
  {
  tmp = __video_register_device(vdev, type, nr, 1, (vdev->fops)->owner);
  }
  return (tmp);
}
}
extern void video_unregister_device(struct video_device * ) ;
extern void video_device_release_empty(struct video_device * ) ;
__inline static void *video_get_drvdata___0(struct video_device *vdev )
{
  void *tmp ;
  {
  {
  tmp = ldv_dev_get_drvdata_43((struct device const *)(& vdev->dev));
  }
  return (tmp);
}
}
__inline static void video_set_drvdata(struct video_device *vdev , void *data )
{
  {
  {
  ldv_dev_set_drvdata_44(& vdev->dev, data);
  }
  return;
}
}
extern struct video_device *video_devdata(struct file * ) ;
__inline static void *video_drvdata(struct file *file )
{
  struct video_device *tmp ;
  void *tmp___0 ;
  {
  {
  tmp = video_devdata(file);
  tmp___0 = video_get_drvdata___0(tmp);
  }
  return (tmp___0);
}
}
__inline static int video_is_registered(struct video_device *vdev )
{
  int tmp ;
  {
  {
  tmp = constant_test_bit(0L, (unsigned long const volatile *)(& vdev->flags));
  }
  return (tmp);
}
}
extern void v4l2_fh_init(struct v4l2_fh * , struct video_device * ) ;
extern void v4l2_fh_add(struct v4l2_fh * ) ;
extern void v4l2_fh_del(struct v4l2_fh * ) ;
extern int v4l2_fh_release(struct file * ) ;
extern long video_ioctl2(struct file * , unsigned int , unsigned long ) ;
extern void v4l2_get_timestamp(struct timeval * ) ;
extern void *vb2_plane_cookie(struct vb2_buffer * , unsigned int ) ;
extern void vb2_buffer_done(struct vb2_buffer * , enum vb2_buffer_state ) ;
extern int vb2_queue_init(struct vb2_queue * ) ;
extern void vb2_queue_release(struct vb2_queue * ) ;
extern int vb2_streamon(struct vb2_queue * , enum v4l2_buf_type ) ;
__inline static bool vb2_is_streaming(struct vb2_queue *q )
{
  {
  return ((int )q->streaming != 0);
}
}
__inline static bool vb2_is_busy(struct vb2_queue *q )
{
  {
  return (q->num_buffers != 0U);
}
}
__inline static void *vb2_get_drv_priv(struct vb2_queue *q )
{
  {
  return (q->drv_priv);
}
}
__inline static void vb2_set_plane_payload(struct vb2_buffer *vb , unsigned int plane_no ,
                                           unsigned long size )
{
  {
  if (plane_no < vb->num_planes) {
    vb->v4l2_planes[plane_no].bytesused = (__u32 )size;
  } else {
  }
  return;
}
}
__inline static unsigned long vb2_plane_size(struct vb2_buffer *vb , unsigned int plane_no )
{
  {
  if (plane_no < vb->num_planes) {
    return ((unsigned long )vb->v4l2_planes[plane_no].length);
  } else {
  }
  return (0UL);
}
}
extern int vb2_ioctl_reqbufs(struct file * , void * , struct v4l2_requestbuffers * ) ;
extern int vb2_ioctl_create_bufs(struct file * , void * , struct v4l2_create_buffers * ) ;
extern int vb2_ioctl_prepare_buf(struct file * , void * , struct v4l2_buffer * ) ;
extern int vb2_ioctl_querybuf(struct file * , void * , struct v4l2_buffer * ) ;
extern int vb2_ioctl_qbuf(struct file * , void * , struct v4l2_buffer * ) ;
extern int vb2_ioctl_dqbuf(struct file * , void * , struct v4l2_buffer * ) ;
extern int vb2_ioctl_streamoff(struct file * , void * , enum v4l2_buf_type ) ;
extern int vb2_fop_mmap(struct file * , struct vm_area_struct * ) ;
extern unsigned int vb2_fop_poll(struct file * , poll_table * ) ;
extern void vb2_ops_wait_prepare(struct vb2_queue * ) ;
extern void vb2_ops_wait_finish(struct vb2_queue * ) ;
__inline static dma_addr_t vb2_dma_contig_plane_dma_addr(struct vb2_buffer *vb , unsigned int plane_no )
{
  dma_addr_t *addr ;
  void *tmp ;
  {
  {
  tmp = vb2_plane_cookie(vb, plane_no);
  addr = (dma_addr_t *)tmp;
  }
  return (*addr);
}
}
extern void *vb2_dma_contig_init_ctx(struct device * ) ;
extern void vb2_dma_contig_cleanup_ctx(void * ) ;
extern struct vb2_mem_ops const vb2_dma_contig_memops ;
__inline static struct vsp1_entity *to_vsp1_entity(struct v4l2_subdev *subdev )
{
  struct v4l2_subdev const *__mptr ;
  {
  __mptr = (struct v4l2_subdev const *)subdev;
  return ((struct vsp1_entity *)__mptr + 0xffffffffffffffb0UL);
}
}
__inline static struct vsp1_video_buffer *to_vsp1_video_buffer(struct vb2_buffer *vb )
{
  struct vb2_buffer const *__mptr ;
  {
  __mptr = (struct vb2_buffer const *)vb;
  return ((struct vsp1_video_buffer *)__mptr + 0xfffffffffffffff8UL);
}
}
__inline static struct vsp1_video *to_vsp1_video(struct video_device *vdev )
{
  struct video_device const *__mptr ;
  {
  __mptr = (struct video_device const *)vdev;
  return ((struct vsp1_video *)__mptr + 0xffffffffffffffe8UL);
}
}
int vsp1_video_init(struct vsp1_video *video , struct vsp1_entity *rwpf ) ;
void vsp1_video_cleanup(struct vsp1_video *video ) ;
__inline static struct vsp1_rwpf *to_rwpf(struct v4l2_subdev *subdev )
{
  struct v4l2_subdev const *__mptr ;
  {
  __mptr = (struct v4l2_subdev const *)subdev;
  return ((struct vsp1_rwpf *)__mptr + 0xffffffffffffffb0UL);
}
}
static struct vsp1_format_info const vsp1_video_formats[17U] =
  { {826427218U, 4109U, 0U, 15U, 1U, {8U, 0U, 0U}, 0, 0, 1U, 1U},
        {875836498U, 4109U, 1U, 14U, 1U, {16U, 0U, 0U}, 0, 0, 1U, 1U},
        {1329743698U, 4109U, 4U, 14U, 1U, {16U, 0U, 0U}, 0, 0, 1U, 1U},
        {1346520914U, 4109U, 6U, 14U, 1U, {16U, 0U, 0U}, 0, 0, 1U, 1U},
        {861030210U, 4109U, 24U, 15U, 1U, {24U, 0U, 0U}, 0, 0, 1U, 1U},
        {859981650U, 4109U, 21U, 15U, 1U, {24U, 0U, 0U}, 0, 0, 1U, 1U},
        {877807426U, 4109U, 19U, 12U, 1U, {32U, 0U, 0U}, 0, 0, 1U, 1U},
        {876758866U, 4109U, 19U, 15U, 1U, {32U, 0U, 0U}, 0, 0, 1U, 1U},
        {1498831189U, 8215U, 71U, 15U, 1U, {16U, 0U, 0U}, 0, 0, 2U, 1U},
        {1498765654U, 8215U, 71U, 15U, 1U, {16U, 0U, 0U}, 0, 1, 2U, 1U},
        {1448695129U, 8215U, 71U, 15U, 1U, {16U, 0U, 0U}, 1, 0, 2U, 1U},
        {1431918169U, 8215U, 71U, 15U, 1U, {16U, 0U, 0U}, 1, 1, 2U, 1U},
        {842091854U, 8215U, 66U, 15U, 2U, {8U, 16U, 0U}, 0, 0, 2U, 2U},
        {825380174U, 8215U, 66U, 15U, 2U, {8U, 16U, 0U}, 0, 1, 2U, 2U},
        {909200718U, 8215U, 65U, 15U, 2U, {8U, 16U, 0U}, 0, 0, 2U, 1U},
        {825642318U, 8215U, 65U, 15U, 2U, {8U, 16U, 0U}, 0, 1, 2U, 1U},
        {842091865U, 8215U, 76U, 15U, 3U, {8U, 8U, 8U}, 0, 0, 2U, 2U}};
static struct vsp1_format_info const *vsp1_get_format_info(u32 fourcc )
{
  unsigned int i ;
  struct vsp1_format_info const *info ;
  {
  i = 0U;
  goto ldv_33980;
  ldv_33979:
  info = (struct vsp1_format_info const *)(& vsp1_video_formats) + (unsigned long )i;
  if ((unsigned int )info->fourcc == fourcc) {
    return (info);
  } else {
  }
  i = i + 1U;
  ldv_33980: ;
  if (i <= 16U) {
    goto ldv_33979;
  } else {
  }
  return ((struct vsp1_format_info const *)0);
}
}
static struct v4l2_subdev *vsp1_video_remote_subdev(struct media_pad *local , u32 *pad )
{
  struct media_pad *remote ;
  u32 tmp ;
  struct media_entity const *__mptr ;
  {
  {
  remote = media_entity_remote_pad(local);
  }
  if ((unsigned long )remote == (unsigned long )((struct media_pad *)0)) {
    return ((struct v4l2_subdev *)0);
  } else {
    {
    tmp = media_entity_type(remote->entity);
    }
    if (tmp != 131072U) {
      return ((struct v4l2_subdev *)0);
    } else {
    }
  }
  if ((unsigned long )pad != (unsigned long )((u32 *)0U)) {
    *pad = (u32 )remote->index;
  } else {
  }
  __mptr = (struct media_entity const *)remote->entity;
  return ((struct v4l2_subdev *)__mptr);
}
}
static int vsp1_video_verify_format(struct vsp1_video *video )
{
  struct v4l2_subdev_format fmt ;
  struct v4l2_subdev *subdev ;
  int ret ;
  int tmp ;
  int tmp___0 ;
  {
  {
  subdev = vsp1_video_remote_subdev(& video->pad, & fmt.pad);
  }
  if ((unsigned long )subdev == (unsigned long )((struct v4l2_subdev *)0)) {
    return (-22);
  } else {
  }
  fmt.which = 1U;
  if ((unsigned long )subdev != (unsigned long )((struct v4l2_subdev *)0)) {
    if ((unsigned long )(subdev->ops)->pad != (unsigned long )((struct v4l2_subdev_pad_ops const * )0) && (unsigned long )((subdev->ops)->pad)->get_fmt != (unsigned long )((int (* )(struct v4l2_subdev * ,
                                                                                                                                                                                                              struct v4l2_subdev_fh * ,
                                                                                                                                                                                                              struct v4l2_subdev_format * ))0)) {
      {
      tmp = (*(((subdev->ops)->pad)->get_fmt))(subdev, (struct v4l2_subdev_fh *)0,
                                               & fmt);
      tmp___0 = tmp;
      }
    } else {
      tmp___0 = -515;
    }
    ret = tmp___0;
  } else {
    ret = -19;
  }
  if (ret < 0) {
    return (ret != -515 ? ret : -22);
  } else {
  }
  if (((unsigned int )(video->fmtinfo)->mbus != fmt.format.code || video->format.height != fmt.format.height) || video->format.width != fmt.format.width) {
    return (-22);
  } else {
  }
  return (0);
}
}
static int __vsp1_video_try_format(struct vsp1_video *video , struct v4l2_pix_format_mplane *pix ,
                                   struct vsp1_format_info const **fmtinfo )
{
  struct vsp1_format_info const *info ;
  unsigned int width ;
  unsigned int height ;
  unsigned int i ;
  unsigned int __val ;
  unsigned int __min ;
  unsigned int __max ;
  unsigned int __val___0 ;
  unsigned int __min___0 ;
  unsigned int __max___0 ;
  unsigned int hsub ;
  unsigned int vsub ;
  unsigned int align ;
  unsigned int bpl ;
  unsigned int __val___1 ;
  unsigned int __min___1 ;
  unsigned int __max___1 ;
  unsigned int _max1 ;
  unsigned int _max2 ;
  {
  {
  width = pix->width;
  height = pix->height;
  info = vsp1_get_format_info(pix->pixelformat);
  }
  if ((unsigned long )info == (unsigned long )((struct vsp1_format_info const *)0)) {
    {
    info = vsp1_get_format_info(1448695129U);
    }
  } else {
  }
  {
  pix->pixelformat = info->fourcc;
  pix->colorspace = 8U;
  pix->field = 1U;
  memset((void *)(& pix->reserved), 0, 11UL);
  width = width & - ((unsigned int )info->hsub);
  height = height & - ((unsigned int )info->vsub);
  __val = width;
  __min = 2U;
  __max = 8190U;
  __val = __min > __val ? __min : __val;
  pix->width = __max < __val ? __max : __val;
  __val___0 = height;
  __min___0 = 2U;
  __max___0 = 8190U;
  __val___0 = __min___0 > __val___0 ? __min___0 : __val___0;
  pix->height = __max___0 < __val___0 ? __max___0 : __val___0;
  i = 0U;
  }
  goto ldv_34024;
  ldv_34023:
  hsub = i != 0U ? info->hsub : 1U;
  vsub = i != 0U ? info->vsub : 1U;
  align = 128U;
  __val___1 = (unsigned int )pix->plane_fmt[i].bytesperline;
  __min___1 = ((pix->width / hsub) * info->bpp[i]) / 8U;
  __max___1 = - align & 65535U;
  __val___1 = __min___1 > __val___1 ? __min___1 : __val___1;
  bpl = __max___1 < __val___1 ? __max___1 : __val___1;
  pix->plane_fmt[i].bytesperline = (((unsigned int )((__u16 )bpl) - 1U) | ((unsigned int )((__u16 )align) - 1U)) + 1U;
  pix->plane_fmt[i].sizeimage = ((__u32 )pix->plane_fmt[i].bytesperline * pix->height) / vsub;
  i = i + 1U;
  ldv_34024:
  _max1 = info->planes;
  _max2 = 2U;
  if (i < (_max1 > (unsigned int )((unsigned int const )_max2) ? _max1 : (unsigned int const )_max2)) {
    goto ldv_34023;
  } else {
  }
  if ((unsigned int )info->planes == 3U) {
    pix->plane_fmt[2].bytesperline = pix->plane_fmt[1].bytesperline;
    pix->plane_fmt[2].sizeimage = pix->plane_fmt[1].sizeimage;
  } else {
  }
  pix->num_planes = (__u8 )info->planes;
  if ((unsigned long )fmtinfo != (unsigned long )((struct vsp1_format_info const **)0)) {
    *fmtinfo = info;
  } else {
  }
  return (0);
}
}
static bool vsp1_video_format_adjust(struct vsp1_video *video , struct v4l2_pix_format_mplane const *format ,
                                     struct v4l2_pix_format_mplane *adjust )
{
  unsigned int i ;
  __u32 _max1 ;
  unsigned int _max2 ;
  {
  {
  *adjust = *format;
  __vsp1_video_try_format(video, adjust, (struct vsp1_format_info const **)0);
  }
  if ((((unsigned int )format->width != adjust->width || (unsigned int )format->height != adjust->height) || (unsigned int )format->pixelformat != adjust->pixelformat) || (int )((unsigned char )format->num_planes) != (int )adjust->num_planes) {
    return (0);
  } else {
  }
  i = 0U;
  goto ldv_34036;
  ldv_34035: ;
  if ((int )((unsigned short )format->plane_fmt[i].bytesperline) != (int )adjust->plane_fmt[i].bytesperline) {
    return (0);
  } else {
  }
  _max1 = adjust->plane_fmt[i].sizeimage;
  _max2 = format->plane_fmt[i].sizeimage;
  adjust->plane_fmt[i].sizeimage = (unsigned int const )_max1 > (unsigned int const )_max2 ? (unsigned int const )_max1 : _max2;
  i = i + 1U;
  ldv_34036: ;
  if (i < (unsigned int )format->num_planes) {
    goto ldv_34035;
  } else {
  }
  return (1);
}
}
static int vsp1_pipeline_validate_branch(struct vsp1_rwpf *input , struct vsp1_rwpf *output )
{
  struct vsp1_entity *entity ;
  unsigned int entities ;
  struct media_pad *pad ;
  bool uds_found ;
  u32 tmp ;
  struct media_entity const *__mptr ;
  {
  {
  entities = 0U;
  uds_found = 0;
  pad = media_entity_remote_pad(input->entity.pads + 1UL);
  }
  ldv_34049: ;
  if ((unsigned long )pad == (unsigned long )((struct media_pad *)0)) {
    return (-32);
  } else {
  }
  {
  tmp = media_entity_type(pad->entity);
  }
  if (tmp != 131072U) {
    return (-32);
  } else {
  }
  {
  __mptr = (struct media_entity const *)pad->entity;
  entity = to_vsp1_entity((struct v4l2_subdev *)__mptr);
  }
  if ((unsigned int )entity->type == 7U) {
    goto ldv_34048;
  } else {
  }
  if ((entities & (unsigned int )(1 << (int )entity->subdev.entity.id)) != 0U) {
    return (-32);
  } else {
  }
  entities = entities | (unsigned int )(1 << (int )entity->subdev.entity.id);
  if ((unsigned int )entity->type == 6U) {
    if ((int )uds_found) {
      return (-32);
    } else {
    }
    uds_found = 1;
  } else {
  }
  {
  pad = entity->pads + (unsigned long )entity->source_pad;
  pad = media_entity_remote_pad(pad);
  }
  goto ldv_34049;
  ldv_34048: ;
  if ((unsigned long )entity != (unsigned long )(& output->entity)) {
    return (-32);
  } else {
  }
  return (0);
}
}
static int vsp1_pipeline_validate(struct vsp1_pipeline *pipe , struct vsp1_video *video )
{
  struct media_entity_graph graph ;
  struct media_entity *entity ;
  struct media_device *mdev ;
  unsigned int i ;
  int ret ;
  struct v4l2_subdev *subdev ;
  struct vsp1_rwpf *rwpf ;
  struct vsp1_entity *e ;
  u32 tmp ;
  struct media_entity const *__mptr ;
  unsigned int tmp___0 ;
  {
  {
  entity = & video->video.entity;
  mdev = entity->parent;
  mutex_lock_nested(& mdev->graph_mutex, 0U);
  media_entity_graph_walk_start(& graph, entity);
  }
  goto ldv_34062;
  ldv_34065:
  {
  tmp = media_entity_type(entity);
  }
  if (tmp != 131072U) {
    pipe->num_video = pipe->num_video + 1U;
    goto ldv_34062;
  } else {
  }
  {
  __mptr = (struct media_entity const *)entity;
  subdev = (struct v4l2_subdev *)__mptr;
  e = to_vsp1_entity(subdev);
  list_add_tail(& e->list_pipe, & pipe->entities);
  }
  if ((unsigned int )e->type == 4U) {
    {
    rwpf = to_rwpf(subdev);
    tmp___0 = pipe->num_inputs;
    pipe->num_inputs = pipe->num_inputs + 1U;
    pipe->inputs[tmp___0] = rwpf;
    rwpf->video.pipe_index = pipe->num_inputs;
    }
  } else
  if ((unsigned int )e->type == 7U) {
    {
    rwpf = to_rwpf(subdev);
    pipe->output = to_rwpf(subdev);
    rwpf->video.pipe_index = 0U;
    }
  } else
  if ((unsigned int )e->type == 2U) {
    pipe->lif = e;
  } else {
  }
  ldv_34062:
  {
  entity = media_entity_graph_walk_next(& graph);
  }
  if ((unsigned long )entity != (unsigned long )((struct media_entity *)0)) {
    goto ldv_34065;
  } else {
  }
  {
  mutex_unlock(& mdev->graph_mutex);
  }
  if (pipe->num_inputs == 0U || (unsigned long )pipe->output == (unsigned long )((struct vsp1_rwpf *)0)) {
    ret = -32;
    goto error;
  } else {
  }
  i = 0U;
  goto ldv_34069;
  ldv_34068:
  {
  ret = vsp1_pipeline_validate_branch(pipe->inputs[i], pipe->output);
  }
  if (ret < 0) {
    goto error;
  } else {
  }
  i = i + 1U;
  ldv_34069: ;
  if (i < pipe->num_inputs) {
    goto ldv_34068;
  } else {
  }
  return (0);
  error:
  {
  INIT_LIST_HEAD(& pipe->entities);
  pipe->buffers_ready = 0U;
  pipe->num_video = 0U;
  pipe->num_inputs = 0U;
  pipe->output = (struct vsp1_rwpf *)0;
  pipe->lif = (struct vsp1_entity *)0;
  }
  return (ret);
}
}
static int vsp1_pipeline_init(struct vsp1_pipeline *pipe , struct vsp1_video *video )
{
  int ret ;
  {
  {
  mutex_lock_nested(& pipe->lock, 0U);
  }
  if (pipe->use_count == 0U) {
    {
    ret = vsp1_pipeline_validate(pipe, video);
    }
    if (ret < 0) {
      goto done;
    } else {
    }
  } else {
  }
  pipe->use_count = pipe->use_count + 1U;
  ret = 0;
  done:
  {
  mutex_unlock(& pipe->lock);
  }
  return (ret);
}
}
static void vsp1_pipeline_cleanup(struct vsp1_pipeline *pipe )
{
  {
  {
  mutex_lock_nested(& pipe->lock, 0U);
  pipe->use_count = pipe->use_count - 1U;
  }
  if (pipe->use_count == 0U) {
    {
    INIT_LIST_HEAD(& pipe->entities);
    pipe->state = 0;
    pipe->buffers_ready = 0U;
    pipe->num_video = 0U;
    pipe->num_inputs = 0U;
    pipe->output = (struct vsp1_rwpf *)0;
    pipe->lif = (struct vsp1_entity *)0;
    }
  } else {
  }
  {
  mutex_unlock(& pipe->lock);
  }
  return;
}
}
static void vsp1_pipeline_run(struct vsp1_pipeline *pipe )
{
  struct vsp1_device *vsp1 ;
  {
  {
  vsp1 = (pipe->output)->entity.vsp1;
  vsp1_write(vsp1, (pipe->output)->entity.index * 4U, 1U);
  pipe->state = 1;
  pipe->buffers_ready = 0U;
  }
  return;
}
}
static int vsp1_pipeline_stop(struct vsp1_pipeline *pipe )
{
  struct vsp1_entity *entity ;
  unsigned long flags ;
  int ret ;
  long __ret ;
  unsigned long tmp ;
  wait_queue_t __wait ;
  long __ret___0 ;
  unsigned long tmp___0 ;
  long __int ;
  long tmp___1 ;
  bool __cond ;
  bool __cond___0 ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  {
  {
  ldv___ldv_spin_lock_50(& pipe->irqlock);
  pipe->state = 2;
  ldv_spin_unlock_irqrestore_51(& pipe->irqlock, flags);
  tmp = msecs_to_jiffies(500U);
  __ret = (long )tmp;
  __cond___0 = (unsigned int )pipe->state == 0U;
  }
  if ((int )__cond___0 && __ret == 0L) {
    __ret = 1L;
  } else {
  }
  if (((int )__cond___0 || __ret == 0L) == 0) {
    {
    tmp___0 = msecs_to_jiffies(500U);
    __ret___0 = (long )tmp___0;
    INIT_LIST_HEAD(& __wait.task_list);
    __wait.flags = 0U;
    }
    ldv_34100:
    {
    tmp___1 = prepare_to_wait_event(& pipe->wq, & __wait, 2);
    __int = tmp___1;
    __cond = (unsigned int )pipe->state == 0U;
    }
    if ((int )__cond && __ret___0 == 0L) {
      __ret___0 = 1L;
    } else {
    }
    if (((int )__cond || __ret___0 == 0L) != 0) {
      goto ldv_34099;
    } else {
    }
    {
    __ret___0 = schedule_timeout(__ret___0);
    }
    goto ldv_34100;
    ldv_34099:
    {
    finish_wait(& pipe->wq, & __wait);
    }
    __ret = __ret___0;
  } else {
  }
  ret = (int )__ret;
  ret = ret == 0 ? -110 : 0;
  __mptr = (struct list_head const *)pipe->entities.next;
  entity = (struct vsp1_entity *)__mptr + 0xffffffffffffffd8UL;
  goto ldv_34108;
  ldv_34107: ;
  if (entity->route != 0U) {
    {
    vsp1_write(entity->vsp1, entity->route, 63U);
    }
  } else {
  }
  if ((unsigned long )(& entity->subdev) != (unsigned long )((struct v4l2_subdev *)0)) {
    if ((unsigned long )(entity->subdev.ops)->video != (unsigned long )((struct v4l2_subdev_video_ops const * )0) && (unsigned long )((entity->subdev.ops)->video)->s_stream != (unsigned long )((int (* )(struct v4l2_subdev * ,
                                                                                                                                                                                                                                   int ))0)) {
      {
      (*(((entity->subdev.ops)->video)->s_stream))(& entity->subdev, 0);
      }
    } else {
    }
  } else {
  }
  __mptr___0 = (struct list_head const *)entity->list_pipe.next;
  entity = (struct vsp1_entity *)__mptr___0 + 0xffffffffffffffd8UL;
  ldv_34108: ;
  if ((unsigned long )(& entity->list_pipe) != (unsigned long )(& pipe->entities)) {
    goto ldv_34107;
  } else {
  }
  return (ret);
}
}
static bool vsp1_pipeline_ready(struct vsp1_pipeline *pipe )
{
  unsigned int mask ;
  {
  mask = (unsigned int )(((1 << (int )pipe->num_inputs) + -1) << 1);
  if ((unsigned long )pipe->lif == (unsigned long )((struct vsp1_entity *)0)) {
    mask = mask | 1U;
  } else {
  }
  return (pipe->buffers_ready == mask);
}
}
static struct vsp1_video_buffer *vsp1_video_complete_buffer(struct vsp1_video *video )
{
  struct vsp1_pipeline *pipe ;
  struct vsp1_pipeline *tmp ;
  struct vsp1_video_buffer *next ;
  struct vsp1_video_buffer *done ;
  unsigned long flags ;
  unsigned int i ;
  int tmp___0 ;
  struct list_head const *__mptr ;
  int tmp___1 ;
  struct list_head const *__mptr___0 ;
  int tmp___2 ;
  unsigned int tmp___3 ;
  {
  {
  tmp = to_vsp1_pipeline(& video->video.entity);
  pipe = tmp;
  next = (struct vsp1_video_buffer *)0;
  ldv___ldv_spin_lock_52(& video->irqlock);
  tmp___0 = list_empty((struct list_head const *)(& video->irqqueue));
  }
  if (tmp___0 != 0) {
    {
    ldv_spin_unlock_irqrestore_53(& video->irqlock, flags);
    }
    return ((struct vsp1_video_buffer *)0);
  } else {
  }
  __mptr = (struct list_head const *)video->irqqueue.next;
  done = (struct vsp1_video_buffer *)__mptr + 0xfffffffffffffcb0UL;
  if ((unsigned long )pipe->lif != (unsigned long )((struct vsp1_entity *)0)) {
    {
    tmp___1 = list_is_singular((struct list_head const *)(& video->irqqueue));
    }
    if (tmp___1 != 0) {
      {
      ldv_spin_unlock_irqrestore_53(& video->irqlock, flags);
      }
      return (done);
    } else {
    }
  } else {
  }
  {
  list_del(& done->queue);
  tmp___2 = list_empty((struct list_head const *)(& video->irqqueue));
  }
  if (tmp___2 == 0) {
    __mptr___0 = (struct list_head const *)video->irqqueue.next;
    next = (struct vsp1_video_buffer *)__mptr___0 + 0xfffffffffffffcb0UL;
  } else {
  }
  {
  ldv_spin_unlock_irqrestore_53(& video->irqlock, flags);
  tmp___3 = video->sequence;
  video->sequence = video->sequence + 1U;
  done->buf.v4l2_buf.sequence = tmp___3;
  v4l2_get_timestamp(& done->buf.v4l2_buf.timestamp);
  i = 0U;
  }
  goto ldv_34127;
  ldv_34126:
  {
  vb2_set_plane_payload(& done->buf, i, (unsigned long )done->length[i]);
  i = i + 1U;
  }
  ldv_34127: ;
  if (i < done->buf.num_planes) {
    goto ldv_34126;
  } else {
  }
  {
  vb2_buffer_done(& done->buf, 5);
  }
  return (next);
}
}
static void vsp1_video_frame_end(struct vsp1_pipeline *pipe , struct vsp1_video *video )
{
  struct vsp1_video_buffer *buf ;
  unsigned long flags ;
  {
  {
  buf = vsp1_video_complete_buffer(video);
  }
  if ((unsigned long )buf == (unsigned long )((struct vsp1_video_buffer *)0)) {
    return;
  } else {
  }
  {
  ldv___ldv_spin_lock_56(& pipe->irqlock);
  (*((video->ops)->queue))(video, buf);
  pipe->buffers_ready = pipe->buffers_ready | (unsigned int )(1 << (int )video->pipe_index);
  ldv_spin_unlock_irqrestore_51(& pipe->irqlock, flags);
  }
  return;
}
}
void vsp1_pipeline_frame_end(struct vsp1_pipeline *pipe )
{
  unsigned long flags ;
  unsigned int i ;
  bool tmp ;
  {
  if ((unsigned long )pipe == (unsigned long )((struct vsp1_pipeline *)0)) {
    return;
  } else {
  }
  i = 0U;
  goto ldv_34141;
  ldv_34140:
  {
  vsp1_video_frame_end(pipe, & (pipe->inputs[i])->video);
  i = i + 1U;
  }
  ldv_34141: ;
  if (i < pipe->num_inputs) {
    goto ldv_34140;
  } else {
  }
  if ((unsigned long )pipe->lif == (unsigned long )((struct vsp1_entity *)0)) {
    {
    vsp1_video_frame_end(pipe, & (pipe->output)->video);
    }
  } else {
  }
  {
  ldv___ldv_spin_lock_58(& pipe->irqlock);
  }
  if ((unsigned int )pipe->state == 2U) {
    {
    pipe->state = 0;
    __wake_up(& pipe->wq, 3U, 1, (void *)0);
    }
    goto done;
  } else {
  }
  {
  tmp = vsp1_pipeline_ready(pipe);
  }
  if ((int )tmp) {
    {
    vsp1_pipeline_run(pipe);
    }
  } else {
  }
  done:
  {
  ldv_spin_unlock_irqrestore_51(& pipe->irqlock, flags);
  }
  return;
}
}
static int vsp1_video_queue_setup(struct vb2_queue *vq , struct v4l2_format const *fmt ,
                                  unsigned int *nbuffers , unsigned int *nplanes ,
                                  unsigned int *sizes , void **alloc_ctxs )
{
  struct vsp1_video *video ;
  void *tmp ;
  struct v4l2_pix_format_mplane const *format ;
  struct v4l2_pix_format_mplane pix_mp ;
  unsigned int i ;
  bool tmp___0 ;
  int tmp___1 ;
  {
  {
  tmp = vb2_get_drv_priv(vq);
  video = (struct vsp1_video *)tmp;
  }
  if ((unsigned long )fmt != (unsigned long )((struct v4l2_format const *)0)) {
    {
    tmp___0 = vsp1_video_format_adjust(video, & fmt->fmt.pix_mp, & pix_mp);
    }
    if (tmp___0) {
      tmp___1 = 0;
    } else {
      tmp___1 = 1;
    }
    if (tmp___1) {
      return (-22);
    } else {
    }
    format = (struct v4l2_pix_format_mplane const *)(& pix_mp);
  } else {
    format = (struct v4l2_pix_format_mplane const *)(& video->format);
  }
  *nplanes = (unsigned int )format->num_planes;
  i = 0U;
  goto ldv_34157;
  ldv_34156:
  *(sizes + (unsigned long )i) = format->plane_fmt[i].sizeimage;
  *(alloc_ctxs + (unsigned long )i) = video->alloc_ctx;
  i = i + 1U;
  ldv_34157: ;
  if (i < (unsigned int )format->num_planes) {
    goto ldv_34156;
  } else {
  }
  return (0);
}
}
static int vsp1_video_buffer_prepare(struct vb2_buffer *vb )
{
  struct vsp1_video *video ;
  void *tmp ;
  struct vsp1_video_buffer *buf ;
  struct vsp1_video_buffer *tmp___0 ;
  struct v4l2_pix_format_mplane const *format ;
  unsigned int i ;
  unsigned long tmp___1 ;
  {
  {
  tmp = vb2_get_drv_priv(vb->vb2_queue);
  video = (struct vsp1_video *)tmp;
  tmp___0 = to_vsp1_video_buffer(vb);
  buf = tmp___0;
  format = (struct v4l2_pix_format_mplane const *)(& video->format);
  }
  if (vb->num_planes < (unsigned int )format->num_planes) {
    return (-22);
  } else {
  }
  buf->video = video;
  i = 0U;
  goto ldv_34167;
  ldv_34166:
  {
  buf->addr[i] = vb2_dma_contig_plane_dma_addr(vb, i);
  tmp___1 = vb2_plane_size(vb, i);
  buf->length[i] = (unsigned int )tmp___1;
  }
  if (buf->length[i] < (unsigned int )format->plane_fmt[i].sizeimage) {
    return (-22);
  } else {
  }
  i = i + 1U;
  ldv_34167: ;
  if (i < vb->num_planes) {
    goto ldv_34166;
  } else {
  }
  return (0);
}
}
static void vsp1_video_buffer_queue(struct vb2_buffer *vb )
{
  struct vsp1_video *video ;
  void *tmp ;
  struct vsp1_pipeline *pipe ;
  struct vsp1_pipeline *tmp___0 ;
  struct vsp1_video_buffer *buf ;
  struct vsp1_video_buffer *tmp___1 ;
  unsigned long flags ;
  bool empty ;
  int tmp___2 ;
  bool tmp___3 ;
  bool tmp___4 ;
  {
  {
  tmp = vb2_get_drv_priv(vb->vb2_queue);
  video = (struct vsp1_video *)tmp;
  tmp___0 = to_vsp1_pipeline(& video->video.entity);
  pipe = tmp___0;
  tmp___1 = to_vsp1_video_buffer(vb);
  buf = tmp___1;
  ldv___ldv_spin_lock_60(& video->irqlock);
  tmp___2 = list_empty((struct list_head const *)(& video->irqqueue));
  empty = tmp___2 != 0;
  list_add_tail(& buf->queue, & video->irqqueue);
  ldv_spin_unlock_irqrestore_53(& video->irqlock, flags);
  }
  if (! empty) {
    return;
  } else {
  }
  {
  ldv___ldv_spin_lock_62(& pipe->irqlock);
  (*((video->ops)->queue))(video, buf);
  pipe->buffers_ready = pipe->buffers_ready | (unsigned int )(1 << (int )video->pipe_index);
  tmp___3 = vb2_is_streaming(& video->queue);
  }
  if ((int )tmp___3) {
    {
    tmp___4 = vsp1_pipeline_ready(pipe);
    }
    if ((int )tmp___4) {
      {
      vsp1_pipeline_run(pipe);
      }
    } else {
    }
  } else {
  }
  {
  ldv_spin_unlock_irqrestore_51(& pipe->irqlock, flags);
  }
  return;
}
}
static void vsp1_entity_route_setup(struct vsp1_entity *source )
{
  struct vsp1_entity *sink ;
  struct media_entity const *__mptr ;
  {
  if (source->route == 0U) {
    return;
  } else {
  }
  {
  __mptr = (struct media_entity const *)source->sink;
  sink = (struct vsp1_entity *)__mptr + 0xffffffffffffffb0UL;
  vsp1_write(source->vsp1, source->route, sink->id);
  }
  return;
}
}
static int vsp1_video_start_streaming(struct vb2_queue *vq , unsigned int count )
{
  struct vsp1_video *video ;
  void *tmp ;
  struct vsp1_pipeline *pipe ;
  struct vsp1_pipeline *tmp___0 ;
  struct vsp1_entity *entity ;
  unsigned long flags ;
  int ret ;
  struct list_head const *__mptr ;
  int tmp___1 ;
  int tmp___2 ;
  struct list_head const *__mptr___0 ;
  bool tmp___3 ;
  {
  {
  tmp = vb2_get_drv_priv(vq);
  video = (struct vsp1_video *)tmp;
  tmp___0 = to_vsp1_pipeline(& video->video.entity);
  pipe = tmp___0;
  mutex_lock_nested(& pipe->lock, 0U);
  }
  if (pipe->stream_count == pipe->num_video - 1U) {
    __mptr = (struct list_head const *)pipe->entities.next;
    entity = (struct vsp1_entity *)__mptr + 0xffffffffffffffd8UL;
    goto ldv_34197;
    ldv_34196:
    {
    vsp1_entity_route_setup(entity);
    }
    if ((unsigned long )(& entity->subdev) != (unsigned long )((struct v4l2_subdev *)0)) {
      if ((unsigned long )(entity->subdev.ops)->video != (unsigned long )((struct v4l2_subdev_video_ops const * )0) && (unsigned long )((entity->subdev.ops)->video)->s_stream != (unsigned long )((int (* )(struct v4l2_subdev * ,
                                                                                                                                                                                                                                     int ))0)) {
        {
        tmp___1 = (*(((entity->subdev.ops)->video)->s_stream))(& entity->subdev, 1);
        tmp___2 = tmp___1;
        }
      } else {
        tmp___2 = -515;
      }
      ret = tmp___2;
    } else {
      ret = -19;
    }
    if (ret < 0) {
      {
      mutex_unlock(& pipe->lock);
      }
      return (ret);
    } else {
    }
    __mptr___0 = (struct list_head const *)entity->list_pipe.next;
    entity = (struct vsp1_entity *)__mptr___0 + 0xffffffffffffffd8UL;
    ldv_34197: ;
    if ((unsigned long )(& entity->list_pipe) != (unsigned long )(& pipe->entities)) {
      goto ldv_34196;
    } else {
    }
  } else {
  }
  {
  pipe->stream_count = pipe->stream_count + 1U;
  mutex_unlock(& pipe->lock);
  ldv___ldv_spin_lock_64(& pipe->irqlock);
  tmp___3 = vsp1_pipeline_ready(pipe);
  }
  if ((int )tmp___3) {
    {
    vsp1_pipeline_run(pipe);
    }
  } else {
  }
  {
  ldv_spin_unlock_irqrestore_51(& pipe->irqlock, flags);
  }
  return (0);
}
}
static int vsp1_video_stop_streaming(struct vb2_queue *vq )
{
  struct vsp1_video *video ;
  void *tmp ;
  struct vsp1_pipeline *pipe ;
  struct vsp1_pipeline *tmp___0 ;
  unsigned long flags ;
  int ret ;
  {
  {
  tmp = vb2_get_drv_priv(vq);
  video = (struct vsp1_video *)tmp;
  tmp___0 = to_vsp1_pipeline(& video->video.entity);
  pipe = tmp___0;
  mutex_lock_nested(& pipe->lock, 0U);
  pipe->stream_count = pipe->stream_count - 1U;
  }
  if (pipe->stream_count == 0U) {
    {
    ret = vsp1_pipeline_stop(pipe);
    }
    if (ret == -110) {
      {
      dev_err((struct device const *)(video->vsp1)->dev, "pipeline stop timeout\n");
      }
    } else {
    }
  } else {
  }
  {
  mutex_unlock(& pipe->lock);
  vsp1_pipeline_cleanup(pipe);
  media_entity_pipeline_stop(& video->video.entity);
  ldv___ldv_spin_lock_66(& video->irqlock);
  INIT_LIST_HEAD(& video->irqqueue);
  ldv_spin_unlock_irqrestore_53(& video->irqlock, flags);
  }
  return (0);
}
}
static struct vb2_ops vsp1_video_queue_qops =
     {& vsp1_video_queue_setup, & vb2_ops_wait_prepare, & vb2_ops_wait_finish, 0, & vsp1_video_buffer_prepare,
    0, 0, & vsp1_video_start_streaming, & vsp1_video_stop_streaming, & vsp1_video_buffer_queue};
static int vsp1_video_querycap(struct file *file , void *fh , struct v4l2_capability *cap )
{
  struct v4l2_fh *vfh ;
  struct vsp1_video *video ;
  struct vsp1_video *tmp ;
  char const *tmp___0 ;
  {
  {
  vfh = (struct v4l2_fh *)file->private_data;
  tmp = to_vsp1_video(vfh->vdev);
  video = tmp;
  cap->capabilities = 2214604800U;
  }
  if ((unsigned int )video->type == 9U) {
    cap->device_caps = 67112960U;
  } else {
    cap->device_caps = 67117056U;
  }
  {
  strlcpy((char *)(& cap->driver), "vsp1", 16UL);
  strlcpy((char *)(& cap->card), (char const *)(& video->video.name), 32UL);
  tmp___0 = dev_name((struct device const *)(video->vsp1)->dev);
  snprintf((char *)(& cap->bus_info), 32UL, "platform:%s", tmp___0);
  }
  return (0);
}
}
static int vsp1_video_get_format(struct file *file , void *fh , struct v4l2_format *format )
{
  struct v4l2_fh *vfh ;
  struct vsp1_video *video ;
  struct vsp1_video *tmp ;
  {
  {
  vfh = (struct v4l2_fh *)file->private_data;
  tmp = to_vsp1_video(vfh->vdev);
  video = tmp;
  }
  if (format->type != (__u32 )video->queue.type) {
    return (-22);
  } else {
  }
  {
  mutex_lock_nested(& video->lock, 0U);
  format->fmt.pix_mp = video->format;
  mutex_unlock(& video->lock);
  }
  return (0);
}
}
static int vsp1_video_try_format(struct file *file , void *fh , struct v4l2_format *format )
{
  struct v4l2_fh *vfh ;
  struct vsp1_video *video ;
  struct vsp1_video *tmp ;
  int tmp___0 ;
  {
  {
  vfh = (struct v4l2_fh *)file->private_data;
  tmp = to_vsp1_video(vfh->vdev);
  video = tmp;
  }
  if (format->type != (__u32 )video->queue.type) {
    return (-22);
  } else {
  }
  {
  tmp___0 = __vsp1_video_try_format(video, & format->fmt.pix_mp, (struct vsp1_format_info const **)0);
  }
  return (tmp___0);
}
}
static int vsp1_video_set_format(struct file *file , void *fh , struct v4l2_format *format )
{
  struct v4l2_fh *vfh ;
  struct vsp1_video *video ;
  struct vsp1_video *tmp ;
  struct vsp1_format_info const *info ;
  int ret ;
  bool tmp___0 ;
  {
  {
  vfh = (struct v4l2_fh *)file->private_data;
  tmp = to_vsp1_video(vfh->vdev);
  video = tmp;
  }
  if (format->type != (__u32 )video->queue.type) {
    return (-22);
  } else {
  }
  {
  ret = __vsp1_video_try_format(video, & format->fmt.pix_mp, & info);
  }
  if (ret < 0) {
    return (ret);
  } else {
  }
  {
  mutex_lock_nested(& video->lock, 0U);
  tmp___0 = vb2_is_busy(& video->queue);
  }
  if ((int )tmp___0) {
    ret = -16;
    goto done;
  } else {
  }
  video->format = format->fmt.pix_mp;
  video->fmtinfo = info;
  done:
  {
  mutex_unlock(& video->lock);
  }
  return (ret);
}
}
static int vsp1_video_streamon(struct file *file , void *fh , enum v4l2_buf_type type )
{
  struct v4l2_fh *vfh ;
  struct vsp1_video *video ;
  struct vsp1_video *tmp ;
  struct vsp1_pipeline *pipe ;
  int ret ;
  struct vsp1_pipeline *tmp___0 ;
  {
  {
  vfh = (struct v4l2_fh *)file->private_data;
  tmp = to_vsp1_video(vfh->vdev);
  video = tmp;
  }
  if ((unsigned long )video->queue.owner != (unsigned long )((struct v4l2_fh *)0) && (unsigned long )((void *)video->queue.owner) != (unsigned long )file->private_data) {
    return (-16);
  } else {
  }
  video->sequence = 0U;
  if ((unsigned long )video->video.entity.pipe != (unsigned long )((struct media_pipeline *)0)) {
    {
    tmp___0 = to_vsp1_pipeline(& video->video.entity);
    pipe = tmp___0;
    }
  } else {
    pipe = & video->pipe;
  }
  {
  ret = media_entity_pipeline_start(& video->video.entity, & pipe->pipe);
  }
  if (ret < 0) {
    return (ret);
  } else {
  }
  {
  ret = vsp1_video_verify_format(video);
  }
  if (ret < 0) {
    goto err_stop;
  } else {
  }
  {
  ret = vsp1_pipeline_init(pipe, video);
  }
  if (ret < 0) {
    goto err_stop;
  } else {
  }
  {
  ret = vb2_streamon(& video->queue, type);
  }
  if (ret < 0) {
    goto err_cleanup;
  } else {
  }
  return (0);
  err_cleanup:
  {
  vsp1_pipeline_cleanup(pipe);
  }
  err_stop:
  {
  media_entity_pipeline_stop(& video->video.entity);
  }
  return (ret);
}
}
static struct v4l2_ioctl_ops const vsp1_video_ioctl_ops =
     {& vsp1_video_querycap, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, & vsp1_video_get_format,
    & vsp1_video_get_format, 0, 0, 0, 0, 0, 0, 0, 0, & vsp1_video_set_format, & vsp1_video_set_format,
    0, 0, 0, 0, 0, 0, 0, 0, & vsp1_video_try_format, & vsp1_video_try_format, & vb2_ioctl_reqbufs,
    & vb2_ioctl_querybuf, & vb2_ioctl_qbuf, 0, & vb2_ioctl_dqbuf, & vb2_ioctl_create_bufs,
    & vb2_ioctl_prepare_buf, 0, 0, 0, & vsp1_video_streamon, & vb2_ioctl_streamoff,
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    0, 0, 0, 0, 0, 0, 0};
static int vsp1_video_open(struct file *file )
{
  struct vsp1_video *video ;
  void *tmp ;
  struct v4l2_fh *vfh ;
  int ret ;
  void *tmp___0 ;
  struct vsp1_device *tmp___1 ;
  {
  {
  tmp = video_drvdata(file);
  video = (struct vsp1_video *)tmp;
  ret = 0;
  tmp___0 = kzalloc(176UL, 208U);
  vfh = (struct v4l2_fh *)tmp___0;
  }
  if ((unsigned long )vfh == (unsigned long )((struct v4l2_fh *)0)) {
    return (-12);
  } else {
  }
  {
  v4l2_fh_init(vfh, & video->video);
  v4l2_fh_add(vfh);
  file->private_data = (void *)vfh;
  tmp___1 = vsp1_device_get(video->vsp1);
  }
  if ((unsigned long )tmp___1 == (unsigned long )((struct vsp1_device *)0)) {
    {
    ret = -16;
    v4l2_fh_del(vfh);
    kfree((void const *)vfh);
    }
  } else {
  }
  return (ret);
}
}
static int vsp1_video_release(struct file *file )
{
  struct vsp1_video *video ;
  void *tmp ;
  struct v4l2_fh *vfh ;
  {
  {
  tmp = video_drvdata(file);
  video = (struct vsp1_video *)tmp;
  vfh = (struct v4l2_fh *)file->private_data;
  mutex_lock_nested(& video->lock, 0U);
  }
  if ((unsigned long )video->queue.owner == (unsigned long )vfh) {
    {
    vb2_queue_release(& video->queue);
    video->queue.owner = (struct v4l2_fh *)0;
    }
  } else {
  }
  {
  mutex_unlock(& video->lock);
  vsp1_device_put(video->vsp1);
  v4l2_fh_release(file);
  file->private_data = (void *)0;
  }
  return (0);
}
}
static struct v4l2_file_operations vsp1_video_fops =
     {& __this_module, 0, 0, & vb2_fop_poll, 0, & video_ioctl2, 0, 0, & vb2_fop_mmap,
    & vsp1_video_open, & vsp1_video_release};
int vsp1_video_init(struct vsp1_video *video , struct vsp1_entity *rwpf )
{
  char const *direction ;
  int ret ;
  struct lock_class_key __key ;
  struct lock_class_key __key___0 ;
  struct lock_class_key __key___1 ;
  struct lock_class_key __key___2 ;
  struct lock_class_key __key___3 ;
  long tmp ;
  long tmp___0 ;
  {
  {
  if ((unsigned int )video->type == 9U) {
    goto case_9;
  } else {
  }
  if ((unsigned int )video->type == 10U) {
    goto case_10;
  } else {
  }
  goto switch_default;
  case_9:
  direction = "output";
  video->pad.flags = 1UL;
  goto ldv_34269;
  case_10:
  direction = "input";
  video->pad.flags = 2UL;
  video->video.vfl_dir = 1;
  goto ldv_34269;
  switch_default: ;
  return (-22);
  switch_break: ;
  }
  ldv_34269:
  {
  video->rwpf = rwpf;
  __mutex_init(& video->lock, "&video->lock", & __key);
  spinlock_check(& video->irqlock);
  __raw_spin_lock_init(& video->irqlock.__annonCompField19.rlock, "&(&video->irqlock)->rlock",
                       & __key___0);
  INIT_LIST_HEAD(& video->irqqueue);
  __mutex_init(& video->pipe.lock, "&video->pipe.lock", & __key___1);
  spinlock_check(& video->pipe.irqlock);
  __raw_spin_lock_init(& video->pipe.irqlock.__annonCompField19.rlock, "&(&video->pipe.irqlock)->rlock",
                       & __key___2);
  INIT_LIST_HEAD(& video->pipe.entities);
  __init_waitqueue_head(& video->pipe.wq, "&video->pipe.wq", & __key___3);
  video->pipe.state = 0;
  ret = media_entity_init(& video->video.entity, 1, & video->pad, 0);
  }
  if (ret < 0) {
    return (ret);
  } else {
  }
  {
  video->fmtinfo = vsp1_get_format_info(1448695129U);
  video->format.pixelformat = (video->fmtinfo)->fourcc;
  video->format.colorspace = 8U;
  video->format.field = 1U;
  video->format.width = 1024U;
  video->format.height = 768U;
  video->format.num_planes = 1U;
  video->format.plane_fmt[0].bytesperline = (__u16 )((video->format.width * (video->fmtinfo)->bpp[0]) / 8U);
  video->format.plane_fmt[0].sizeimage = (__u32 )video->format.plane_fmt[0].bytesperline * video->format.height;
  video->video.v4l2_dev = & (video->vsp1)->v4l2_dev;
  video->video.fops = (struct v4l2_file_operations const *)(& vsp1_video_fops);
  snprintf((char *)(& video->video.name), 32UL, "%s %s", (char *)(& rwpf->subdev.name),
           direction);
  video->video.vfl_type = 0;
  video->video.release = & video_device_release_empty;
  video->video.ioctl_ops = & vsp1_video_ioctl_ops;
  video_set_drvdata(& video->video, (void *)video);
  video->alloc_ctx = vb2_dma_contig_init_ctx((video->vsp1)->dev);
  tmp___0 = IS_ERR((void const *)video->alloc_ctx);
  }
  if (tmp___0 != 0L) {
    {
    tmp = PTR_ERR((void const *)video->alloc_ctx);
    ret = (int )tmp;
    }
    goto error;
  } else {
  }
  {
  video->queue.type = video->type;
  video->queue.io_modes = 19U;
  video->queue.lock = & video->lock;
  video->queue.drv_priv = (void *)video;
  video->queue.buf_struct_size = 904U;
  video->queue.ops = (struct vb2_ops const *)(& vsp1_video_queue_qops);
  video->queue.mem_ops = & vb2_dma_contig_memops;
  video->queue.timestamp_type = 16384U;
  ret = vb2_queue_init(& video->queue);
  }
  if (ret < 0) {
    {
    dev_err((struct device const *)(video->vsp1)->dev, "failed to initialize vb2 queue\n");
    }
    goto error;
  } else {
  }
  {
  video->video.queue = & video->queue;
  ret = video_register_device(& video->video, 0, -1);
  }
  if (ret < 0) {
    {
    dev_err((struct device const *)(video->vsp1)->dev, "failed to register video device\n");
    }
    goto error;
  } else {
  }
  return (0);
  error:
  {
  vb2_dma_contig_cleanup_ctx(video->alloc_ctx);
  vsp1_video_cleanup(video);
  }
  return (ret);
}
}
void vsp1_video_cleanup(struct vsp1_video *video )
{
  int tmp ;
  {
  {
  tmp = video_is_registered(& video->video);
  }
  if (tmp != 0) {
    {
    video_unregister_device(& video->video);
    }
  } else {
  }
  {
  vb2_dma_contig_cleanup_ctx(video->alloc_ctx);
  media_entity_cleanup(& video->video.entity);
  }
  return;
}
}
void ldv_io_instance_callback_24_17(unsigned int (*arg0)(struct file * , struct poll_table_struct * ) ,
                                    struct file *arg1 , struct poll_table_struct *arg2 ) ;
void ldv_io_instance_callback_24_18(long (*arg0)(struct file * , unsigned int , unsigned long ) ,
                                    struct file *arg1 , unsigned int arg2 , unsigned long arg3 ) ;
void ldv_io_instance_callback_24_4(int (*arg0)(struct file * , struct vm_area_struct * ) ,
                                   struct file *arg1 , struct vm_area_struct *arg2 ) ;
int ldv_io_instance_probe_24_11(int (*arg0)(struct file * ) , struct file *arg1 ) ;
void ldv_io_instance_release_24_2(int (*arg0)(struct file * ) , struct file *arg1 ) ;
int (*ldv_24_callback_mmap)(struct file * , struct vm_area_struct * ) ;
unsigned int (*ldv_24_callback_poll)(struct file * , struct poll_table_struct * ) ;
long (*ldv_24_callback_unlocked_ioctl)(struct file * , unsigned int , unsigned long ) ;
struct v4l2_file_operations *ldv_24_container_v4l2_file_operations ;
int ldv_statevar_24 ;
int (*ldv_21_callback_buf_prepare)(struct vb2_buffer * ) = & vsp1_video_buffer_prepare;
void (*ldv_21_callback_buf_queue)(struct vb2_buffer * ) = & vsp1_video_buffer_queue;
int (*ldv_21_callback_queue_setup)(struct vb2_queue * , struct v4l2_format * , unsigned int * ,
                                   unsigned int * , unsigned int * , void ** ) = (int (*)(struct vb2_queue * ,
            struct v4l2_format * , unsigned int * , unsigned int * , unsigned int * ,
            void ** ))(& vsp1_video_queue_setup);
int (*ldv_21_callback_start_streaming)(struct vb2_queue * , unsigned int ) = & vsp1_video_start_streaming;
int (*ldv_21_callback_stop_streaming)(struct vb2_queue * ) = & vsp1_video_stop_streaming;
void (*ldv_21_callback_wait_finish)(struct vb2_queue * ) = & vb2_ops_wait_finish;
void (*ldv_21_callback_wait_prepare)(struct vb2_queue * ) = & vb2_ops_wait_prepare;
int (*ldv_24_callback_mmap)(struct file * , struct vm_area_struct * ) = & vb2_fop_mmap;
unsigned int (*ldv_24_callback_poll)(struct file * , struct poll_table_struct * ) = & vb2_fop_poll;
long (*ldv_24_callback_unlocked_ioctl)(struct file * , unsigned int , unsigned long ) = & video_ioctl2;
int (*ldv_7_callback_vidioc_create_bufs)(struct file * , void * , struct v4l2_create_buffers * ) = & vb2_ioctl_create_bufs;
int (*ldv_7_callback_vidioc_dqbuf)(struct file * , void * , struct v4l2_buffer * ) = & vb2_ioctl_dqbuf;
int (*ldv_7_callback_vidioc_g_fmt_vid_cap_mplane)(struct file * , void * , struct v4l2_format * ) = & vsp1_video_get_format;
int (*ldv_7_callback_vidioc_g_fmt_vid_out_mplane)(struct file * , void * , struct v4l2_format * ) = & vsp1_video_get_format;
int (*ldv_7_callback_vidioc_prepare_buf)(struct file * , void * , struct v4l2_buffer * ) = & vb2_ioctl_prepare_buf;
int (*ldv_7_callback_vidioc_qbuf)(struct file * , void * , struct v4l2_buffer * ) = & vb2_ioctl_qbuf;
int (*ldv_7_callback_vidioc_querybuf)(struct file * , void * , struct v4l2_buffer * ) = & vb2_ioctl_querybuf;
int (*ldv_7_callback_vidioc_querycap)(struct file * , void * , struct v4l2_capability * ) = & vsp1_video_querycap;
int (*ldv_7_callback_vidioc_reqbufs)(struct file * , void * , struct v4l2_requestbuffers * ) = & vb2_ioctl_reqbufs;
int (*ldv_7_callback_vidioc_s_fmt_vid_cap_mplane)(struct file * , void * , struct v4l2_format * ) = & vsp1_video_set_format;
int (*ldv_7_callback_vidioc_s_fmt_vid_out_mplane)(struct file * , void * , struct v4l2_format * ) = & vsp1_video_set_format;
int (*ldv_7_callback_vidioc_streamoff)(struct file * , void * , enum v4l2_buf_type ) = & vb2_ioctl_streamoff;
int (*ldv_7_callback_vidioc_streamon)(struct file * , void * , enum v4l2_buf_type ) = & vsp1_video_streamon;
int (*ldv_7_callback_vidioc_try_fmt_vid_cap_mplane)(struct file * , void * , struct v4l2_format * ) = & vsp1_video_try_format;
int (*ldv_7_callback_vidioc_try_fmt_vid_out_mplane)(struct file * , void * , struct v4l2_format * ) = & vsp1_video_try_format;
void ldv_dummy_resourceless_instance_callback_21_11(int (*arg0)(struct vb2_queue * ,
                                                                unsigned int ) ,
                                                    struct vb2_queue *arg1 , unsigned int arg2 )
{
  {
  {
  vsp1_video_start_streaming(arg1, arg2);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_21_14(int (*arg0)(struct vb2_queue * ) ,
                                                    struct vb2_queue *arg1 )
{
  {
  {
  vsp1_video_stop_streaming(arg1);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_21_15(void (*arg0)(struct vb2_queue * ) ,
                                                    struct vb2_queue *arg1 )
{
  {
  {
  vb2_ops_wait_finish(arg1);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_21_16(void (*arg0)(struct vb2_queue * ) ,
                                                    struct vb2_queue *arg1 )
{
  {
  {
  vb2_ops_wait_prepare(arg1);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_21_3(int (*arg0)(struct vb2_buffer * ) ,
                                                   struct vb2_buffer *arg1 )
{
  {
  {
  vsp1_video_buffer_prepare(arg1);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_21_7(void (*arg0)(struct vb2_buffer * ) ,
                                                   struct vb2_buffer *arg1 )
{
  {
  {
  vsp1_video_buffer_queue(arg1);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_21_8(int (*arg0)(struct vb2_queue * ,
                                                               struct v4l2_format * ,
                                                               unsigned int * , unsigned int * ,
                                                               unsigned int * , void ** ) ,
                                                   struct vb2_queue *arg1 , struct v4l2_format *arg2 ,
                                                   unsigned int *arg3 , unsigned int *arg4 ,
                                                   unsigned int *arg5 , void **arg6 )
{
  {
  {
  vsp1_video_queue_setup(arg1, (struct v4l2_format const *)arg2, arg3, arg4, arg5,
                         arg6);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_7_10(int (*arg0)(struct file * , void * ,
                                                               struct v4l2_format * ) ,
                                                   struct file *arg1 , void *arg2 ,
                                                   struct v4l2_format *arg3 )
{
  {
  {
  vsp1_video_get_format(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_7_11(int (*arg0)(struct file * , void * ,
                                                               struct v4l2_format * ) ,
                                                   struct file *arg1 , void *arg2 ,
                                                   struct v4l2_format *arg3 )
{
  {
  {
  vsp1_video_get_format(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_7_12(int (*arg0)(struct file * , void * ,
                                                               struct v4l2_buffer * ) ,
                                                   struct file *arg1 , void *arg2 ,
                                                   struct v4l2_buffer *arg3 )
{
  {
  {
  vb2_ioctl_prepare_buf(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_7_15(int (*arg0)(struct file * , void * ,
                                                               struct v4l2_buffer * ) ,
                                                   struct file *arg1 , void *arg2 ,
                                                   struct v4l2_buffer *arg3 )
{
  {
  {
  vb2_ioctl_qbuf(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_7_18(int (*arg0)(struct file * , void * ,
                                                               struct v4l2_buffer * ) ,
                                                   struct file *arg1 , void *arg2 ,
                                                   struct v4l2_buffer *arg3 )
{
  {
  {
  vb2_ioctl_querybuf(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_7_21(int (*arg0)(struct file * , void * ,
                                                               struct v4l2_capability * ) ,
                                                   struct file *arg1 , void *arg2 ,
                                                   struct v4l2_capability *arg3 )
{
  {
  {
  vsp1_video_querycap(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_7_22(int (*arg0)(struct file * , void * ,
                                                               struct v4l2_requestbuffers * ) ,
                                                   struct file *arg1 , void *arg2 ,
                                                   struct v4l2_requestbuffers *arg3 )
{
  {
  {
  vb2_ioctl_reqbufs(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_7_23(int (*arg0)(struct file * , void * ,
                                                               struct v4l2_format * ) ,
                                                   struct file *arg1 , void *arg2 ,
                                                   struct v4l2_format *arg3 )
{
  {
  {
  vsp1_video_set_format(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_7_24(int (*arg0)(struct file * , void * ,
                                                               struct v4l2_format * ) ,
                                                   struct file *arg1 , void *arg2 ,
                                                   struct v4l2_format *arg3 )
{
  {
  {
  vsp1_video_set_format(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_7_25(int (*arg0)(struct file * , void * ,
                                                               enum v4l2_buf_type ) ,
                                                   struct file *arg1 , void *arg2 ,
                                                   enum v4l2_buf_type arg3 )
{
  {
  {
  vb2_ioctl_streamoff(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_7_26(int (*arg0)(struct file * , void * ,
                                                               enum v4l2_buf_type ) ,
                                                   struct file *arg1 , void *arg2 ,
                                                   enum v4l2_buf_type arg3 )
{
  {
  {
  vsp1_video_streamon(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_7_27(int (*arg0)(struct file * , void * ,
                                                               struct v4l2_format * ) ,
                                                   struct file *arg1 , void *arg2 ,
                                                   struct v4l2_format *arg3 )
{
  {
  {
  vsp1_video_try_format(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_7_28(int (*arg0)(struct file * , void * ,
                                                               struct v4l2_format * ) ,
                                                   struct file *arg1 , void *arg2 ,
                                                   struct v4l2_format *arg3 )
{
  {
  {
  vsp1_video_try_format(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_7_3(int (*arg0)(struct file * , void * ,
                                                              struct v4l2_create_buffers * ) ,
                                                  struct file *arg1 , void *arg2 ,
                                                  struct v4l2_create_buffers *arg3 )
{
  {
  {
  vb2_ioctl_create_bufs(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_7_7(int (*arg0)(struct file * , void * ,
                                                              struct v4l2_buffer * ) ,
                                                  struct file *arg1 , void *arg2 ,
                                                  struct v4l2_buffer *arg3 )
{
  {
  {
  vb2_ioctl_dqbuf(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_io_instance_callback_24_17(unsigned int (*arg0)(struct file * , struct poll_table_struct * ) ,
                                    struct file *arg1 , struct poll_table_struct *arg2 )
{
  {
  {
  vb2_fop_poll(arg1, arg2);
  }
  return;
}
}
void ldv_io_instance_callback_24_18(long (*arg0)(struct file * , unsigned int , unsigned long ) ,
                                    struct file *arg1 , unsigned int arg2 , unsigned long arg3 )
{
  {
  {
  video_ioctl2(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_io_instance_callback_24_4(int (*arg0)(struct file * , struct vm_area_struct * ) ,
                                   struct file *arg1 , struct vm_area_struct *arg2 )
{
  {
  {
  vb2_fop_mmap(arg1, arg2);
  }
  return;
}
}
int ldv_io_instance_probe_24_11(int (*arg0)(struct file * ) , struct file *arg1 )
{
  int tmp ;
  {
  {
  tmp = vsp1_video_open(arg1);
  }
  return (tmp);
}
}
void ldv_io_instance_release_24_2(int (*arg0)(struct file * ) , struct file *arg1 )
{
  {
  {
  vsp1_video_release(arg1);
  }
  return;
}
}
void ldv_switch_automaton_state_24_14(void)
{
  {
  ldv_statevar_24 = 13;
  return;
}
}
void ldv_switch_automaton_state_24_5(void)
{
  {
  ldv_24_ret_default = 1;
  ldv_statevar_24 = 14;
  return;
}
}
void ldv_v4l2_file_operations_io_instance_24(void *arg0 )
{
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  void *tmp___2 ;
  void *tmp___3 ;
  void *tmp___4 ;
  int tmp___5 ;
  {
  {
  if (ldv_statevar_24 == 1) {
    goto case_1;
  } else {
  }
  if (ldv_statevar_24 == 2) {
    goto case_2;
  } else {
  }
  if (ldv_statevar_24 == 3) {
    goto case_3;
  } else {
  }
  if (ldv_statevar_24 == 4) {
    goto case_4;
  } else {
  }
  if (ldv_statevar_24 == 6) {
    goto case_6;
  } else {
  }
  if (ldv_statevar_24 == 8) {
    goto case_8;
  } else {
  }
  if (ldv_statevar_24 == 10) {
    goto case_10;
  } else {
  }
  if (ldv_statevar_24 == 11) {
    goto case_11;
  } else {
  }
  if (ldv_statevar_24 == 13) {
    goto case_13;
  } else {
  }
  if (ldv_statevar_24 == 14) {
    goto case_14;
  } else {
  }
  if (ldv_statevar_24 == 17) {
    goto case_17;
  } else {
  }
  if (ldv_statevar_24 == 19) {
    goto case_19;
  } else {
  }
  goto switch_default;
  case_1:
  {
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    ldv_statevar_24 = 6;
  } else {
    ldv_statevar_24 = 11;
  }
  goto ldv_34913;
  case_2:
  {
  ldv_io_instance_release_24_2(ldv_24_container_v4l2_file_operations->release, ldv_24_resource_file);
  ldv_statevar_24 = 1;
  }
  goto ldv_34913;
  case_3:
  {
  ldv_statevar_24 = ldv_switch_7();
  }
  goto ldv_34913;
  case_4:
  {
  ldv_io_instance_callback_24_4(ldv_24_callback_mmap, ldv_24_resource_file, ldv_24_resource_struct_vm_area_struct_ptr);
  ldv_statevar_24 = 3;
  }
  goto ldv_34913;
  case_6:
  {
  ldv_free((void *)ldv_24_resource_file);
  ldv_free((void *)ldv_24_resource_struct_poll_table_struct_ptr);
  ldv_free((void *)ldv_24_resource_struct_vm_area_struct_ptr);
  ldv_24_ret_default = 1;
  ldv_statevar_24 = 14;
  }
  goto ldv_34913;
  case_8:
  {
  ldv_assume(ldv_24_ret_default != 0);
  tmp___0 = ldv_undef_int();
  }
  if (tmp___0 != 0) {
    ldv_statevar_24 = 6;
  } else {
    ldv_statevar_24 = 11;
  }
  goto ldv_34913;
  case_10:
  {
  ldv_assume(ldv_24_ret_default == 0);
  ldv_statevar_24 = ldv_switch_7();
  }
  goto ldv_34913;
  case_11:
  {
  ldv_24_ret_default = ldv_io_instance_probe_24_11(ldv_24_container_v4l2_file_operations->open,
                                                   ldv_24_resource_file);
  ldv_24_ret_default = ldv_filter_err_code(ldv_24_ret_default);
  tmp___1 = ldv_undef_int();
  }
  if (tmp___1 != 0) {
    ldv_statevar_24 = 8;
  } else {
    ldv_statevar_24 = 10;
  }
  goto ldv_34913;
  case_13:
  {
  tmp___2 = ldv_xmalloc(520UL);
  ldv_24_resource_file = (struct file *)tmp___2;
  tmp___3 = ldv_xmalloc(16UL);
  ldv_24_resource_struct_poll_table_struct_ptr = (struct poll_table_struct *)tmp___3;
  tmp___4 = ldv_xmalloc(184UL);
  ldv_24_resource_struct_vm_area_struct_ptr = (struct vm_area_struct *)tmp___4;
  tmp___5 = ldv_undef_int();
  }
  if (tmp___5 != 0) {
    ldv_statevar_24 = 6;
  } else {
    ldv_statevar_24 = 11;
  }
  goto ldv_34913;
  case_14: ;
  goto ldv_34913;
  case_17:
  {
  ldv_io_instance_callback_24_17(ldv_24_callback_poll, ldv_24_resource_file, ldv_24_resource_struct_poll_table_struct_ptr);
  ldv_statevar_24 = 3;
  }
  goto ldv_34913;
  case_19:
  {
  ldv_io_instance_callback_24_18(ldv_24_callback_unlocked_ioctl, ldv_24_resource_file,
                                 ldv_24_ldv_param_18_1_default, ldv_24_ldv_param_18_2_default);
  ldv_statevar_24 = 3;
  }
  goto ldv_34913;
  switch_default: ;
  switch_break: ;
  }
  ldv_34913: ;
  return;
}
}
__inline static void *kzalloc(size_t size , gfp_t flags )
{
  void *tmp ;
  {
  {
  tmp = ldv_kzalloc(size, flags);
  }
  return (tmp);
}
}
static void *ldv_dev_get_drvdata_43(struct device const *dev )
{
  void *tmp ;
  {
  {
  tmp = ldv_dev_get_drvdata(dev);
  }
  return (tmp);
}
}
static int ldv_dev_set_drvdata_44(struct device *dev , void *data )
{
  int tmp ;
  {
  {
  tmp = ldv_dev_set_drvdata(dev, data);
  }
  return (tmp);
}
}
static void ldv___ldv_spin_lock_50(spinlock_t *ldv_func_arg1 )
{
  {
  {
  ldv_spin_lock_irqlock_of_vsp1_pipeline();
  __ldv_spin_lock(ldv_func_arg1);
  }
  return;
}
}
__inline static void ldv_spin_unlock_irqrestore_51(spinlock_t *lock , unsigned long flags )
{
  {
  {
  ldv_spin_unlock_irqlock_of_vsp1_pipeline();
  spin_unlock_irqrestore(lock, flags);
  }
  return;
}
}
static void ldv___ldv_spin_lock_52(spinlock_t *ldv_func_arg1 )
{
  {
  {
  ldv_spin_lock_irqlock_of_vsp1_video();
  __ldv_spin_lock(ldv_func_arg1);
  }
  return;
}
}
__inline static void ldv_spin_unlock_irqrestore_53(spinlock_t *lock , unsigned long flags )
{
  {
  {
  ldv_spin_unlock_irqlock_of_vsp1_video();
  spin_unlock_irqrestore(lock, flags);
  }
  return;
}
}
static void ldv___ldv_spin_lock_56(spinlock_t *ldv_func_arg1 )
{
  {
  {
  ldv_spin_lock_irqlock_of_vsp1_pipeline();
  __ldv_spin_lock(ldv_func_arg1);
  }
  return;
}
}
static void ldv___ldv_spin_lock_58(spinlock_t *ldv_func_arg1 )
{
  {
  {
  ldv_spin_lock_irqlock_of_vsp1_pipeline();
  __ldv_spin_lock(ldv_func_arg1);
  }
  return;
}
}
static void ldv___ldv_spin_lock_60(spinlock_t *ldv_func_arg1 )
{
  {
  {
  ldv_spin_lock_irqlock_of_vsp1_video();
  __ldv_spin_lock(ldv_func_arg1);
  }
  return;
}
}
static void ldv___ldv_spin_lock_62(spinlock_t *ldv_func_arg1 )
{
  {
  {
  ldv_spin_lock_irqlock_of_vsp1_pipeline();
  __ldv_spin_lock(ldv_func_arg1);
  }
  return;
}
}
static void ldv___ldv_spin_lock_64(spinlock_t *ldv_func_arg1 )
{
  {
  {
  ldv_spin_lock_irqlock_of_vsp1_pipeline();
  __ldv_spin_lock(ldv_func_arg1);
  }
  return;
}
}
static void ldv___ldv_spin_lock_66(spinlock_t *ldv_func_arg1 )
{
  {
  {
  ldv_spin_lock_irqlock_of_vsp1_video();
  __ldv_spin_lock(ldv_func_arg1);
  }
  return;
}
}
void *ldv_err_ptr(long error ) ;
__inline static void *ERR_PTR(long error ) ;
__inline static void v4l2_set_subdevdata(struct v4l2_subdev *sd , void *p )
{
  {
  sd->dev_priv = p;
  return;
}
}
extern void v4l2_subdev_init(struct v4l2_subdev * , struct v4l2_subdev_ops const * ) ;
int vsp1_rwpf_enum_mbus_code(struct v4l2_subdev *subdev , struct v4l2_subdev_fh *fh ,
                             struct v4l2_subdev_mbus_code_enum *code ) ;
int vsp1_rwpf_enum_frame_size(struct v4l2_subdev *subdev , struct v4l2_subdev_fh *fh ,
                              struct v4l2_subdev_frame_size_enum *fse ) ;
int vsp1_rwpf_get_format(struct v4l2_subdev *subdev , struct v4l2_subdev_fh *fh ,
                         struct v4l2_subdev_format *fmt ) ;
int vsp1_rwpf_set_format(struct v4l2_subdev *subdev , struct v4l2_subdev_fh *fh ,
                         struct v4l2_subdev_format *fmt ) ;
int vsp1_rwpf_get_selection(struct v4l2_subdev *subdev , struct v4l2_subdev_fh *fh ,
                            struct v4l2_subdev_selection *sel ) ;
int vsp1_rwpf_set_selection(struct v4l2_subdev *subdev , struct v4l2_subdev_fh *fh ,
                            struct v4l2_subdev_selection *sel ) ;
__inline static void vsp1_rpf_write(struct vsp1_rwpf *rpf , u32 reg , u32 data )
{
  {
  {
  vsp1_write(rpf->entity.vsp1, reg + rpf->entity.index * 256U, data);
  }
  return;
}
}
static int rpf_s_stream(struct v4l2_subdev *subdev , int enable )
{
  struct vsp1_rwpf *rpf ;
  struct vsp1_rwpf *tmp ;
  struct vsp1_format_info const *fmtinfo ;
  struct v4l2_pix_format_mplane const *format ;
  struct v4l2_rect const *crop ;
  u32 pstride ;
  u32 infmt ;
  {
  {
  tmp = to_rwpf(subdev);
  rpf = tmp;
  fmtinfo = rpf->video.fmtinfo;
  format = (struct v4l2_pix_format_mplane const *)(& rpf->video.format);
  crop = (struct v4l2_rect const *)(& rpf->crop);
  }
  if (enable == 0) {
    return (0);
  } else {
  }
  {
  vsp1_rpf_write(rpf, 768U, (unsigned int )(crop->width << 16) | (unsigned int )crop->height);
  vsp1_rpf_write(rpf, 772U, (unsigned int )(crop->width << 16) | (unsigned int )crop->height);
  rpf->offsets[0] = (unsigned int )((int )crop->top * (int )format->plane_fmt[0].bytesperline) + ((unsigned int )crop->left * fmtinfo->bpp[0]) / 8U;
  pstride = (u32 )((int )format->plane_fmt[0].bytesperline << 16);
  }
  if ((unsigned int )((unsigned char )format->num_planes) > 1U) {
    rpf->offsets[1] = (unsigned int )((int )crop->top * (int )format->plane_fmt[1].bytesperline) + ((unsigned int )crop->left * fmtinfo->bpp[1]) / 8U;
    pstride = pstride | (u32 )format->plane_fmt[1].bytesperline;
  } else {
  }
  {
  vsp1_rpf_write(rpf, 820U, pstride);
  infmt = (unsigned int )fmtinfo->hwfmt | 65536U;
  }
  if ((int )fmtinfo->swap_yc) {
    infmt = infmt | 32768U;
  } else {
  }
  if ((int )fmtinfo->swap_uv) {
    infmt = infmt | 16384U;
  } else {
  }
  if ((rpf->entity.formats)->code != (rpf->entity.formats + 1UL)->code) {
    infmt = infmt | 256U;
  } else {
  }
  {
  vsp1_rpf_write(rpf, 776U, infmt);
  vsp1_rpf_write(rpf, 780U, fmtinfo->swap);
  vsp1_rpf_write(rpf, 784U, 0U);
  vsp1_rpf_write(rpf, 788U, 1073741824U);
  vsp1_rpf_write(rpf, 792U, 4278190080U);
  vsp1_rpf_write(rpf, 796U, 0U);
  vsp1_rpf_write(rpf, 808U, 0U);
  }
  return (0);
}
}
static struct v4l2_subdev_video_ops rpf_video_ops =
     {0, 0, 0, 0, 0, 0, 0, & rpf_s_stream, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    0, 0, 0, 0, 0, 0, 0, 0};
static struct v4l2_subdev_pad_ops rpf_pad_ops =
     {& vsp1_rwpf_enum_mbus_code, & vsp1_rwpf_enum_frame_size, 0, & vsp1_rwpf_get_format,
    & vsp1_rwpf_set_format, 0, 0, & vsp1_rwpf_get_selection, & vsp1_rwpf_set_selection,
    0, 0, 0, 0, 0};
static struct v4l2_subdev_ops rpf_ops =
     {0, 0, 0, (struct v4l2_subdev_video_ops const *)(& rpf_video_ops), 0, 0, 0, (struct v4l2_subdev_pad_ops const *)(& rpf_pad_ops)};
static void rpf_vdev_queue(struct vsp1_video *video , struct vsp1_video_buffer *buf )
{
  struct vsp1_rwpf *rpf ;
  struct vsp1_video const *__mptr ;
  {
  {
  __mptr = (struct vsp1_video const *)video;
  rpf = (struct vsp1_rwpf *)__mptr + 0xfffffffffffffe78UL;
  vsp1_rpf_write(rpf, 828U, (u32 )buf->addr[0] + rpf->offsets[0]);
  }
  if (buf->buf.num_planes > 1U) {
    {
    vsp1_rpf_write(rpf, 832U, (u32 )buf->addr[1] + rpf->offsets[1]);
    }
  } else {
  }
  if (buf->buf.num_planes > 2U) {
    {
    vsp1_rpf_write(rpf, 836U, (u32 )buf->addr[2] + rpf->offsets[1]);
    }
  } else {
  }
  return;
}
}
static struct vsp1_video_operations const rpf_vdev_ops = {& rpf_vdev_queue};
struct vsp1_rwpf *vsp1_rpf_create(struct vsp1_device *vsp1 , unsigned int index )
{
  struct v4l2_subdev *subdev ;
  struct vsp1_video *video ;
  struct vsp1_rwpf *rpf ;
  int ret ;
  void *tmp ;
  void *tmp___0 ;
  void *tmp___1 ;
  char const *tmp___2 ;
  void *tmp___3 ;
  {
  {
  tmp = devm_kzalloc(vsp1->dev, 3848UL, 208U);
  rpf = (struct vsp1_rwpf *)tmp;
  }
  if ((unsigned long )rpf == (unsigned long )((struct vsp1_rwpf *)0)) {
    {
    tmp___0 = ERR_PTR(-12L);
    }
    return ((struct vsp1_rwpf *)tmp___0);
  } else {
  }
  {
  rpf->max_width = 8190U;
  rpf->max_height = 8190U;
  rpf->entity.type = 4;
  rpf->entity.index = index;
  rpf->entity.id = index;
  ret = vsp1_entity_init(vsp1, & rpf->entity, 2U);
  }
  if (ret < 0) {
    {
    tmp___1 = ERR_PTR((long )ret);
    }
    return ((struct vsp1_rwpf *)tmp___1);
  } else {
  }
  {
  subdev = & rpf->entity.subdev;
  v4l2_subdev_init(subdev, (struct v4l2_subdev_ops const *)(& rpf_ops));
  subdev->entity.ops = & vsp1_media_ops;
  subdev->internal_ops = & vsp1_subdev_internal_ops;
  tmp___2 = dev_name((struct device const *)vsp1->dev);
  snprintf((char *)(& subdev->name), 32UL, "%s rpf.%u", tmp___2, index);
  v4l2_set_subdevdata(subdev, (void *)rpf);
  subdev->flags = subdev->flags | 4U;
  vsp1_entity_init_formats(subdev, (struct v4l2_subdev_fh *)0);
  video = & rpf->video;
  video->type = 10;
  video->vsp1 = vsp1;
  video->ops = & rpf_vdev_ops;
  ret = vsp1_video_init(video, & rpf->entity);
  }
  if (ret < 0) {
    goto error_video;
  } else {
  }
  {
  ret = media_entity_create_link(& rpf->video.video.entity, 0, & rpf->entity.subdev.entity,
                                 0, 3U);
  }
  if (ret < 0) {
    goto error_link;
  } else {
  }
  return (rpf);
  error_link:
  {
  vsp1_video_cleanup(video);
  }
  error_video:
  {
  media_entity_cleanup(& rpf->entity.subdev.entity);
  tmp___3 = ERR_PTR((long )ret);
  }
  return ((struct vsp1_rwpf *)tmp___3);
}
}
void ldv_dummy_resourceless_instance_callback_17_13(int (*arg0)(struct v4l2_subdev * ,
                                                                int ) , struct v4l2_subdev *arg1 ,
                                                    int arg2 ) ;
int (*ldv_17_callback_s_stream)(struct v4l2_subdev * , int ) ;
int (*ldv_17_callback_s_stream)(struct v4l2_subdev * , int ) = & rpf_s_stream;
void (*ldv_22_callback_queue)(struct vsp1_video * , struct vsp1_video_buffer * ) = & rpf_vdev_queue;
void ldv_dummy_resourceless_instance_callback_17_13(int (*arg0)(struct v4l2_subdev * ,
                                                                int ) , struct v4l2_subdev *arg1 ,
                                                    int arg2 )
{
  {
  {
  rpf_s_stream(arg1, arg2);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_22_3(void (*arg0)(struct vsp1_video * ,
                                                                struct vsp1_video_buffer * ) ,
                                                   struct vsp1_video *arg1 , struct vsp1_video_buffer *arg2 )
{
  {
  {
  rpf_vdev_queue(arg1, arg2);
  }
  return;
}
}
__inline static void *ERR_PTR(long error )
{
  void *tmp ;
  {
  {
  tmp = ldv_err_ptr(error);
  }
  return (tmp);
}
}
static void *ldv_dev_get_drvdata_37___0(struct device const *dev ) ;
__inline static void *video_get_drvdata___1(struct video_device *vdev )
{
  void *tmp ;
  {
  {
  tmp = ldv_dev_get_drvdata_37___0((struct device const *)(& vdev->dev));
  }
  return (tmp);
}
}
__inline static struct v4l2_mbus_framefmt *v4l2_subdev_get_try_format___0(struct v4l2_subdev_fh *fh ,
                                                                          unsigned int pad )
{
  void *tmp ;
  long tmp___0 ;
  {
  {
  tmp = video_get_drvdata___1(fh->vfh.vdev);
  tmp___0 = ldv__builtin_expect(pad >= (unsigned int )((struct v4l2_subdev *)tmp)->entity.num_pads,
                             0L);
  }
  if (tmp___0 != 0L) {
    {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"include/media/v4l2-subdev.h"),
                         "i" (643), "i" (12UL));
    __builtin_unreachable();
    }
  } else {
  }
  return (& (fh->pad + (unsigned long )pad)->try_fmt);
}
}
__inline static struct v4l2_rect *v4l2_subdev_get_try_crop(struct v4l2_subdev_fh *fh ,
                                                           unsigned int pad )
{
  void *tmp ;
  long tmp___0 ;
  {
  {
  tmp = video_get_drvdata___1(fh->vfh.vdev);
  tmp___0 = ldv__builtin_expect(pad >= (unsigned int )((struct v4l2_subdev *)tmp)->entity.num_pads,
                             0L);
  }
  if (tmp___0 != 0L) {
    {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"include/media/v4l2-subdev.h"),
                         "i" (644), "i" (12UL));
    __builtin_unreachable();
    }
  } else {
  }
  return (& (fh->pad + (unsigned long )pad)->try_crop);
}
}
int vsp1_rwpf_enum_mbus_code(struct v4l2_subdev *subdev , struct v4l2_subdev_fh *fh ,
                             struct v4l2_subdev_mbus_code_enum *code )
{
  unsigned int codes[2U] ;
  {
  codes[0] = 4109U;
  codes[1] = 8215U;
  if (code->index > 1U) {
    return (-22);
  } else {
  }
  code->code = codes[code->index];
  return (0);
}
}
int vsp1_rwpf_enum_frame_size(struct v4l2_subdev *subdev , struct v4l2_subdev_fh *fh ,
                              struct v4l2_subdev_frame_size_enum *fse )
{
  struct vsp1_rwpf *rwpf ;
  struct vsp1_rwpf *tmp ;
  struct v4l2_mbus_framefmt *format ;
  {
  {
  tmp = to_rwpf(subdev);
  rwpf = tmp;
  format = v4l2_subdev_get_try_format___0(fh, fse->pad);
  }
  if (fse->index != 0U || fse->code != format->code) {
    return (-22);
  } else {
  }
  if (fse->pad == 0U) {
    fse->min_width = 1U;
    fse->max_width = rwpf->max_width;
    fse->min_height = 1U;
    fse->max_height = rwpf->max_height;
  } else {
    fse->min_width = format->width;
    fse->max_width = format->width;
    fse->min_height = format->height;
    fse->max_height = format->height;
  }
  return (0);
}
}
static struct v4l2_rect *vsp1_rwpf_get_crop(struct vsp1_rwpf *rwpf , struct v4l2_subdev_fh *fh ,
                                            u32 which )
{
  struct v4l2_rect *tmp ;
  {
  {
  if (which == 0U) {
    goto case_0;
  } else {
  }
  if (which == 1U) {
    goto case_1;
  } else {
  }
  goto switch_default;
  case_0:
  {
  tmp = v4l2_subdev_get_try_crop(fh, 0U);
  }
  return (tmp);
  case_1: ;
  return (& rwpf->crop);
  switch_default: ;
  return ((struct v4l2_rect *)0);
  switch_break: ;
  }
}
}
int vsp1_rwpf_get_format(struct v4l2_subdev *subdev , struct v4l2_subdev_fh *fh ,
                         struct v4l2_subdev_format *fmt )
{
  struct vsp1_rwpf *rwpf ;
  struct vsp1_rwpf *tmp ;
  struct v4l2_mbus_framefmt *tmp___0 ;
  {
  {
  tmp = to_rwpf(subdev);
  rwpf = tmp;
  tmp___0 = vsp1_entity_get_pad_format(& rwpf->entity, fh, fmt->pad, fmt->which);
  fmt->format = *tmp___0;
  }
  return (0);
}
}
int vsp1_rwpf_set_format(struct v4l2_subdev *subdev , struct v4l2_subdev_fh *fh ,
                         struct v4l2_subdev_format *fmt )
{
  struct vsp1_rwpf *rwpf ;
  struct vsp1_rwpf *tmp ;
  struct v4l2_mbus_framefmt *format ;
  struct v4l2_rect *crop ;
  unsigned int __val ;
  unsigned int __min ;
  unsigned int __max ;
  unsigned int __val___0 ;
  unsigned int __min___0 ;
  unsigned int __max___0 ;
  {
  {
  tmp = to_rwpf(subdev);
  rwpf = tmp;
  }
  if (fmt->format.code != 4109U && fmt->format.code != 8215U) {
    fmt->format.code = 8215U;
  } else {
  }
  {
  format = vsp1_entity_get_pad_format(& rwpf->entity, fh, fmt->pad, fmt->which);
  }
  if (fmt->pad == 1U) {
    format->code = fmt->format.code;
    fmt->format = *format;
    return (0);
  } else {
  }
  {
  format->code = fmt->format.code;
  __val = fmt->format.width;
  __min = 1U;
  __max = rwpf->max_width;
  __val = __min > __val ? __min : __val;
  format->width = __max < __val ? __max : __val;
  __val___0 = fmt->format.height;
  __min___0 = 1U;
  __max___0 = rwpf->max_height;
  __val___0 = __min___0 > __val___0 ? __min___0 : __val___0;
  format->height = __max___0 < __val___0 ? __max___0 : __val___0;
  format->field = 1U;
  format->colorspace = 8U;
  fmt->format = *format;
  crop = vsp1_rwpf_get_crop(rwpf, fh, fmt->which);
  crop->left = 0;
  crop->top = 0;
  crop->width = fmt->format.width;
  crop->height = fmt->format.height;
  format = vsp1_entity_get_pad_format(& rwpf->entity, fh, 1U, fmt->which);
  *format = fmt->format;
  }
  return (0);
}
}
int vsp1_rwpf_get_selection(struct v4l2_subdev *subdev , struct v4l2_subdev_fh *fh ,
                            struct v4l2_subdev_selection *sel )
{
  struct vsp1_rwpf *rwpf ;
  struct vsp1_rwpf *tmp ;
  struct v4l2_mbus_framefmt *format ;
  struct v4l2_rect *tmp___0 ;
  {
  {
  tmp = to_rwpf(subdev);
  rwpf = tmp;
  }
  if (sel->pad != 0U) {
    return (-22);
  } else {
  }
  {
  if (sel->target == 0U) {
    goto case_0;
  } else {
  }
  if (sel->target == 2U) {
    goto case_2;
  } else {
  }
  goto switch_default;
  case_0:
  {
  tmp___0 = vsp1_rwpf_get_crop(rwpf, fh, sel->which);
  sel->r = *tmp___0;
  }
  goto ldv_32633;
  case_2:
  {
  format = vsp1_entity_get_pad_format(& rwpf->entity, fh, 0U, sel->which);
  sel->r.left = 0;
  sel->r.top = 0;
  sel->r.width = format->width;
  sel->r.height = format->height;
  }
  goto ldv_32633;
  switch_default: ;
  return (-22);
  switch_break: ;
  }
  ldv_32633: ;
  return (0);
}
}
int vsp1_rwpf_set_selection(struct v4l2_subdev *subdev , struct v4l2_subdev_fh *fh ,
                            struct v4l2_subdev_selection *sel )
{
  struct vsp1_rwpf *rwpf ;
  struct vsp1_rwpf *tmp ;
  struct v4l2_mbus_framefmt *format ;
  struct v4l2_rect *crop ;
  unsigned int __min1 ;
  unsigned int __min2 ;
  unsigned int __min1___0 ;
  unsigned int __min2___0 ;
  unsigned int __min1___1 ;
  unsigned int __min2___1 ;
  unsigned int __min1___2 ;
  unsigned int __min2___2 ;
  unsigned int __min1___3 ;
  unsigned int __min2___3 ;
  unsigned int __min1___4 ;
  unsigned int __min2___4 ;
  {
  {
  tmp = to_rwpf(subdev);
  rwpf = tmp;
  }
  if (sel->pad != 0U) {
    return (-22);
  } else {
  }
  if (sel->target != 0U) {
    return (-22);
  } else {
  }
  {
  format = vsp1_entity_get_pad_format(& rwpf->entity, fh, 0U, sel->which);
  __min1 = (unsigned int )sel->r.left;
  __min2 = format->width - 2U;
  sel->r.left = (__s32 )(__min1 < __min2 ? __min1 : __min2);
  __min1___0 = (unsigned int )sel->r.top;
  __min2___0 = format->height - 2U;
  sel->r.top = (__s32 )(__min1___0 < __min2___0 ? __min1___0 : __min2___0);
  }
  if ((unsigned int )rwpf->entity.type == 7U) {
    __min1___1 = (unsigned int )sel->r.left;
    __min2___1 = 255U;
    sel->r.left = (__s32 )(__min1___1 < __min2___1 ? __min1___1 : __min2___1);
    __min1___2 = (unsigned int )sel->r.top;
    __min2___2 = 255U;
    sel->r.top = (__s32 )(__min1___2 < __min2___2 ? __min1___2 : __min2___2);
  } else {
  }
  {
  __min1___3 = sel->r.width;
  __min2___3 = format->width - (__u32 )sel->r.left;
  sel->r.width = __min1___3 < __min2___3 ? __min1___3 : __min2___3;
  __min1___4 = sel->r.height;
  __min2___4 = format->height - (__u32 )sel->r.top;
  sel->r.height = __min1___4 < __min2___4 ? __min1___4 : __min2___4;
  crop = vsp1_rwpf_get_crop(rwpf, fh, sel->which);
  *crop = sel->r;
  format = vsp1_entity_get_pad_format(& rwpf->entity, fh, 1U, sel->which);
  format->width = crop->width;
  format->height = crop->height;
  }
  return (0);
}
}
static void *ldv_dev_get_drvdata_37___0(struct device const *dev )
{
  void *tmp ;
  {
  {
  tmp = ldv_dev_get_drvdata(dev);
  }
  return (tmp);
}
}
__inline static void *ERR_PTR(long error ) ;
static int wpf_s_stream(struct v4l2_subdev *subdev , int enable )
{
  struct vsp1_rwpf *wpf ;
  struct vsp1_rwpf *tmp ;
  struct vsp1_pipeline *pipe ;
  struct vsp1_pipeline *tmp___0 ;
  struct vsp1_device *vsp1 ;
  struct v4l2_rect const *crop ;
  unsigned int i ;
  u32 srcrpf ;
  u32 outfmt ;
  struct vsp1_rwpf *input ;
  struct v4l2_pix_format_mplane *format ;
  struct vsp1_format_info const *fmtinfo ;
  {
  {
  tmp = to_rwpf(subdev);
  wpf = tmp;
  tmp___0 = to_vsp1_pipeline(& wpf->entity.subdev.entity);
  pipe = tmp___0;
  vsp1 = wpf->entity.vsp1;
  crop = (struct v4l2_rect const *)(& wpf->crop);
  srcrpf = 0U;
  outfmt = 0U;
  }
  if (enable == 0) {
    {
    vsp1_write(vsp1, wpf->entity.index * 12U + 72U, 0U);
    }
    return (0);
  } else {
  }
  i = 0U;
  goto ldv_32602;
  ldv_32601:
  input = pipe->inputs[i];
  srcrpf = srcrpf | (u32 )(2 << (int )(input->entity.index * 2U));
  i = i + 1U;
  ldv_32602: ;
  if (i < pipe->num_inputs) {
    goto ldv_32601;
  } else {
  }
  {
  vsp1_rpf_write(wpf, 4096U, srcrpf);
  }
  if ((unsigned long )pipe->lif == (unsigned long )((struct vsp1_entity *)0)) {
    {
    format = & wpf->video.format;
    vsp1_rpf_write(wpf, 4124U, (u32 )format->plane_fmt[0].bytesperline);
    }
    if ((unsigned int )format->num_planes > 1U) {
      {
      vsp1_rpf_write(wpf, 4128U, (u32 )format->plane_fmt[1].bytesperline);
      }
    } else {
    }
  } else {
  }
  {
  vsp1_rpf_write(wpf, 4100U, ((unsigned int )(crop->left << 16) | (unsigned int )crop->width) | 268435456U);
  vsp1_rpf_write(wpf, 4104U, ((unsigned int )(crop->top << 16) | (unsigned int )crop->height) | 268435456U);
  }
  if ((unsigned long )pipe->lif == (unsigned long )((struct vsp1_entity *)0)) {
    fmtinfo = wpf->video.fmtinfo;
    outfmt = fmtinfo->hwfmt;
    if ((int )fmtinfo->swap_yc) {
      outfmt = outfmt | 32768U;
    } else {
    }
    if ((int )fmtinfo->swap_uv) {
      outfmt = outfmt | 16384U;
    } else {
    }
    {
    vsp1_rpf_write(wpf, 4112U, fmtinfo->swap);
    }
  } else {
  }
  if ((wpf->entity.formats)->code != (wpf->entity.formats + 1UL)->code) {
    outfmt = outfmt | 256U;
  } else {
  }
  {
  vsp1_rpf_write(wpf, 4108U, outfmt);
  vsp1_write(vsp1, (wpf->entity.index + 2053U) * 4U, 1280U);
  vsp1_write(vsp1, 4148U, 0U);
  vsp1_write(vsp1, wpf->entity.index * 12U + 76U, 0U);
  vsp1_write(vsp1, wpf->entity.index * 12U + 72U, 1U);
  }
  return (0);
}
}
static struct v4l2_subdev_video_ops wpf_video_ops =
     {0, 0, 0, 0, 0, 0, 0, & wpf_s_stream, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    0, 0, 0, 0, 0, 0, 0, 0};
static struct v4l2_subdev_pad_ops wpf_pad_ops =
     {& vsp1_rwpf_enum_mbus_code, & vsp1_rwpf_enum_frame_size, 0, & vsp1_rwpf_get_format,
    & vsp1_rwpf_set_format, 0, 0, & vsp1_rwpf_get_selection, & vsp1_rwpf_set_selection,
    0, 0, 0, 0, 0};
static struct v4l2_subdev_ops wpf_ops =
     {0, 0, 0, (struct v4l2_subdev_video_ops const *)(& wpf_video_ops), 0, 0, 0, (struct v4l2_subdev_pad_ops const *)(& wpf_pad_ops)};
static void wpf_vdev_queue(struct vsp1_video *video , struct vsp1_video_buffer *buf )
{
  struct vsp1_rwpf *wpf ;
  struct vsp1_video const *__mptr ;
  {
  {
  __mptr = (struct vsp1_video const *)video;
  wpf = (struct vsp1_rwpf *)__mptr + 0xfffffffffffffe78UL;
  vsp1_rpf_write(wpf, 4132U, (u32 )buf->addr[0]);
  }
  if (buf->buf.num_planes > 1U) {
    {
    vsp1_rpf_write(wpf, 4136U, (u32 )buf->addr[1]);
    }
  } else {
  }
  if (buf->buf.num_planes > 2U) {
    {
    vsp1_rpf_write(wpf, 4140U, (u32 )buf->addr[2]);
    }
  } else {
  }
  return;
}
}
static struct vsp1_video_operations const wpf_vdev_ops = {& wpf_vdev_queue};
struct vsp1_rwpf *vsp1_wpf_create(struct vsp1_device *vsp1 , unsigned int index )
{
  struct v4l2_subdev *subdev ;
  struct vsp1_video *video ;
  struct vsp1_rwpf *wpf ;
  unsigned int flags ;
  int ret ;
  void *tmp ;
  void *tmp___0 ;
  void *tmp___1 ;
  char const *tmp___2 ;
  void *tmp___3 ;
  {
  {
  tmp = devm_kzalloc(vsp1->dev, 3848UL, 208U);
  wpf = (struct vsp1_rwpf *)tmp;
  }
  if ((unsigned long )wpf == (unsigned long )((struct vsp1_rwpf *)0)) {
    {
    tmp___0 = ERR_PTR(-12L);
    }
    return ((struct vsp1_rwpf *)tmp___0);
  } else {
  }
  {
  wpf->max_width = 2048U;
  wpf->max_height = 2048U;
  wpf->entity.type = 7;
  wpf->entity.index = index;
  wpf->entity.id = index + 56U;
  ret = vsp1_entity_init(vsp1, & wpf->entity, 2U);
  }
  if (ret < 0) {
    {
    tmp___1 = ERR_PTR((long )ret);
    }
    return ((struct vsp1_rwpf *)tmp___1);
  } else {
  }
  {
  subdev = & wpf->entity.subdev;
  v4l2_subdev_init(subdev, (struct v4l2_subdev_ops const *)(& wpf_ops));
  subdev->entity.ops = & vsp1_media_ops;
  subdev->internal_ops = & vsp1_subdev_internal_ops;
  tmp___2 = dev_name((struct device const *)vsp1->dev);
  snprintf((char *)(& subdev->name), 32UL, "%s wpf.%u", tmp___2, index);
  v4l2_set_subdevdata(subdev, (void *)wpf);
  subdev->flags = subdev->flags | 4U;
  vsp1_entity_init_formats(subdev, (struct v4l2_subdev_fh *)0);
  video = & wpf->video;
  video->type = 9;
  video->vsp1 = vsp1;
  video->ops = & wpf_vdev_ops;
  ret = vsp1_video_init(video, & wpf->entity);
  }
  if (ret < 0) {
    goto error_video;
  } else {
  }
  flags = 1U;
  if (((vsp1->pdata)->features & 1U) == 0U || index != 0U) {
    flags = flags | 2U;
  } else {
  }
  {
  ret = media_entity_create_link(& wpf->entity.subdev.entity, 1, & wpf->video.video.entity,
                                 0, flags);
  }
  if (ret < 0) {
    goto error_link;
  } else {
  }
  wpf->entity.sink = & wpf->video.video.entity;
  return (wpf);
  error_link:
  {
  vsp1_video_cleanup(video);
  }
  error_video:
  {
  media_entity_cleanup(& wpf->entity.subdev.entity);
  tmp___3 = ERR_PTR((long )ret);
  }
  return ((struct vsp1_rwpf *)tmp___3);
}
}
void ldv_dummy_resourceless_instance_callback_10_13(int (*arg0)(struct v4l2_subdev * ,
                                                                int ) , struct v4l2_subdev *arg1 ,
                                                    int arg2 ) ;
void ldv_dummy_resourceless_instance_callback_10_17(int (*arg0)(struct v4l2_subdev * ,
                                                                struct v4l2_subdev_fh * ,
                                                                struct v4l2_subdev_selection * ) ,
                                                    struct v4l2_subdev *arg1 , struct v4l2_subdev_fh *arg2 ,
                                                    struct v4l2_subdev_selection *arg3 ) ;
void ldv_dummy_resourceless_instance_callback_10_9(int (*arg0)(struct v4l2_subdev * ,
                                                               struct v4l2_subdev_fh * ,
                                                               struct v4l2_subdev_selection * ) ,
                                                   struct v4l2_subdev *arg1 , struct v4l2_subdev_fh *arg2 ,
                                                   struct v4l2_subdev_selection *arg3 ) ;
void ldv_dummy_resourceless_instance_callback_11_13(int (*arg0)(struct v4l2_subdev * ,
                                                                int ) , struct v4l2_subdev *arg1 ,
                                                    int arg2 ) ;
void ldv_dummy_resourceless_instance_callback_11_17(int (*arg0)(struct v4l2_subdev * ,
                                                                struct v4l2_subdev_fh * ,
                                                                struct v4l2_subdev_selection * ) ,
                                                    struct v4l2_subdev *arg1 , struct v4l2_subdev_fh *arg2 ,
                                                    struct v4l2_subdev_selection *arg3 ) ;
void ldv_dummy_resourceless_instance_callback_11_9(int (*arg0)(struct v4l2_subdev * ,
                                                               struct v4l2_subdev_fh * ,
                                                               struct v4l2_subdev_selection * ) ,
                                                   struct v4l2_subdev *arg1 , struct v4l2_subdev_fh *arg2 ,
                                                   struct v4l2_subdev_selection *arg3 ) ;
void ldv_dummy_resourceless_instance_callback_12_13(int (*arg0)(struct v4l2_subdev * ,
                                                                int ) , struct v4l2_subdev *arg1 ,
                                                    int arg2 ) ;
void ldv_dummy_resourceless_instance_callback_12_17(int (*arg0)(struct v4l2_subdev * ,
                                                                struct v4l2_subdev_fh * ,
                                                                struct v4l2_subdev_selection * ) ,
                                                    struct v4l2_subdev *arg1 , struct v4l2_subdev_fh *arg2 ,
                                                    struct v4l2_subdev_selection *arg3 ) ;
void ldv_dummy_resourceless_instance_callback_12_9(int (*arg0)(struct v4l2_subdev * ,
                                                               struct v4l2_subdev_fh * ,
                                                               struct v4l2_subdev_selection * ) ,
                                                   struct v4l2_subdev *arg1 , struct v4l2_subdev_fh *arg2 ,
                                                   struct v4l2_subdev_selection *arg3 ) ;
void ldv_dummy_resourceless_instance_callback_13_13(int (*arg0)(struct v4l2_subdev * ,
                                                                int ) , struct v4l2_subdev *arg1 ,
                                                    int arg2 ) ;
void ldv_dummy_resourceless_instance_callback_13_17(int (*arg0)(struct v4l2_subdev * ,
                                                                struct v4l2_subdev_fh * ,
                                                                struct v4l2_subdev_selection * ) ,
                                                    struct v4l2_subdev *arg1 , struct v4l2_subdev_fh *arg2 ,
                                                    struct v4l2_subdev_selection *arg3 ) ;
void ldv_dummy_resourceless_instance_callback_13_9(int (*arg0)(struct v4l2_subdev * ,
                                                               struct v4l2_subdev_fh * ,
                                                               struct v4l2_subdev_selection * ) ,
                                                   struct v4l2_subdev *arg1 , struct v4l2_subdev_fh *arg2 ,
                                                   struct v4l2_subdev_selection *arg3 ) ;
void ldv_dummy_resourceless_instance_callback_14_13(int (*arg0)(struct v4l2_subdev * ,
                                                                int ) , struct v4l2_subdev *arg1 ,
                                                    int arg2 ) ;
void ldv_dummy_resourceless_instance_callback_14_16(int (*arg0)(struct v4l2_subdev * ,
                                                                struct v4l2_subdev_fh * ,
                                                                struct v4l2_subdev_format * ) ,
                                                    struct v4l2_subdev *arg1 , struct v4l2_subdev_fh *arg2 ,
                                                    struct v4l2_subdev_format *arg3 ) ;
void ldv_dummy_resourceless_instance_callback_14_17(int (*arg0)(struct v4l2_subdev * ,
                                                                struct v4l2_subdev_fh * ,
                                                                struct v4l2_subdev_selection * ) ,
                                                    struct v4l2_subdev *arg1 , struct v4l2_subdev_fh *arg2 ,
                                                    struct v4l2_subdev_selection *arg3 ) ;
void ldv_dummy_resourceless_instance_callback_14_7(int (*arg0)(struct v4l2_subdev * ,
                                                               struct v4l2_subdev_fh * ,
                                                               struct v4l2_subdev_mbus_code_enum * ) ,
                                                   struct v4l2_subdev *arg1 , struct v4l2_subdev_fh *arg2 ,
                                                   struct v4l2_subdev_mbus_code_enum *arg3 ) ;
void ldv_dummy_resourceless_instance_callback_14_8(int (*arg0)(struct v4l2_subdev * ,
                                                               struct v4l2_subdev_fh * ,
                                                               struct v4l2_subdev_format * ) ,
                                                   struct v4l2_subdev *arg1 , struct v4l2_subdev_fh *arg2 ,
                                                   struct v4l2_subdev_format *arg3 ) ;
void ldv_dummy_resourceless_instance_callback_14_9(int (*arg0)(struct v4l2_subdev * ,
                                                               struct v4l2_subdev_fh * ,
                                                               struct v4l2_subdev_selection * ) ,
                                                   struct v4l2_subdev *arg1 , struct v4l2_subdev_fh *arg2 ,
                                                   struct v4l2_subdev_selection *arg3 ) ;
void ldv_dummy_resourceless_instance_callback_15_16(int (*arg0)(struct v4l2_subdev * ,
                                                                struct v4l2_subdev_fh * ,
                                                                struct v4l2_subdev_format * ) ,
                                                    struct v4l2_subdev *arg1 , struct v4l2_subdev_fh *arg2 ,
                                                    struct v4l2_subdev_format *arg3 ) ;
void ldv_dummy_resourceless_instance_callback_15_17(int (*arg0)(struct v4l2_subdev * ,
                                                                struct v4l2_subdev_fh * ,
                                                                struct v4l2_subdev_selection * ) ,
                                                    struct v4l2_subdev *arg1 , struct v4l2_subdev_fh *arg2 ,
                                                    struct v4l2_subdev_selection *arg3 ) ;
void ldv_dummy_resourceless_instance_callback_15_9(int (*arg0)(struct v4l2_subdev * ,
                                                               struct v4l2_subdev_fh * ,
                                                               struct v4l2_subdev_selection * ) ,
                                                   struct v4l2_subdev *arg1 , struct v4l2_subdev_fh *arg2 ,
                                                   struct v4l2_subdev_selection *arg3 ) ;
void ldv_dummy_resourceless_instance_callback_16_16(int (*arg0)(struct v4l2_subdev * ,
                                                                struct v4l2_subdev_fh * ,
                                                                struct v4l2_subdev_format * ) ,
                                                    struct v4l2_subdev *arg1 , struct v4l2_subdev_fh *arg2 ,
                                                    struct v4l2_subdev_format *arg3 ) ;
void ldv_dummy_resourceless_instance_callback_16_17(int (*arg0)(struct v4l2_subdev * ,
                                                                struct v4l2_subdev_fh * ,
                                                                struct v4l2_subdev_selection * ) ,
                                                    struct v4l2_subdev *arg1 , struct v4l2_subdev_fh *arg2 ,
                                                    struct v4l2_subdev_selection *arg3 ) ;
void ldv_dummy_resourceless_instance_callback_16_9(int (*arg0)(struct v4l2_subdev * ,
                                                               struct v4l2_subdev_fh * ,
                                                               struct v4l2_subdev_selection * ) ,
                                                   struct v4l2_subdev *arg1 , struct v4l2_subdev_fh *arg2 ,
                                                   struct v4l2_subdev_selection *arg3 ) ;
void ldv_dummy_resourceless_instance_callback_17_16(int (*arg0)(struct v4l2_subdev * ,
                                                                struct v4l2_subdev_fh * ,
                                                                struct v4l2_subdev_format * ) ,
                                                    struct v4l2_subdev *arg1 , struct v4l2_subdev_fh *arg2 ,
                                                    struct v4l2_subdev_format *arg3 ) ;
void ldv_dummy_resourceless_instance_callback_17_17(int (*arg0)(struct v4l2_subdev * ,
                                                                struct v4l2_subdev_fh * ,
                                                                struct v4l2_subdev_selection * ) ,
                                                    struct v4l2_subdev *arg1 , struct v4l2_subdev_fh *arg2 ,
                                                    struct v4l2_subdev_selection *arg3 ) ;
void ldv_dummy_resourceless_instance_callback_17_9(int (*arg0)(struct v4l2_subdev * ,
                                                               struct v4l2_subdev_fh * ,
                                                               struct v4l2_subdev_selection * ) ,
                                                   struct v4l2_subdev *arg1 , struct v4l2_subdev_fh *arg2 ,
                                                   struct v4l2_subdev_selection *arg3 ) ;
void ldv_dummy_resourceless_instance_callback_18_16(int (*arg0)(struct v4l2_subdev * ,
                                                                struct v4l2_subdev_fh * ,
                                                                struct v4l2_subdev_format * ) ,
                                                    struct v4l2_subdev *arg1 , struct v4l2_subdev_fh *arg2 ,
                                                    struct v4l2_subdev_format *arg3 ) ;
void ldv_dummy_resourceless_instance_callback_18_17(int (*arg0)(struct v4l2_subdev * ,
                                                                struct v4l2_subdev_fh * ,
                                                                struct v4l2_subdev_selection * ) ,
                                                    struct v4l2_subdev *arg1 , struct v4l2_subdev_fh *arg2 ,
                                                    struct v4l2_subdev_selection *arg3 ) ;
void ldv_dummy_resourceless_instance_callback_18_9(int (*arg0)(struct v4l2_subdev * ,
                                                               struct v4l2_subdev_fh * ,
                                                               struct v4l2_subdev_selection * ) ,
                                                   struct v4l2_subdev *arg1 , struct v4l2_subdev_fh *arg2 ,
                                                   struct v4l2_subdev_selection *arg3 ) ;
void ldv_dummy_resourceless_instance_callback_19_16(int (*arg0)(struct v4l2_subdev * ,
                                                                struct v4l2_subdev_fh * ,
                                                                struct v4l2_subdev_format * ) ,
                                                    struct v4l2_subdev *arg1 , struct v4l2_subdev_fh *arg2 ,
                                                    struct v4l2_subdev_format *arg3 ) ;
void ldv_dummy_resourceless_instance_callback_19_17(int (*arg0)(struct v4l2_subdev * ,
                                                                struct v4l2_subdev_fh * ,
                                                                struct v4l2_subdev_selection * ) ,
                                                    struct v4l2_subdev *arg1 , struct v4l2_subdev_fh *arg2 ,
                                                    struct v4l2_subdev_selection *arg3 ) ;
void ldv_dummy_resourceless_instance_callback_19_9(int (*arg0)(struct v4l2_subdev * ,
                                                               struct v4l2_subdev_fh * ,
                                                               struct v4l2_subdev_selection * ) ,
                                                   struct v4l2_subdev *arg1 , struct v4l2_subdev_fh *arg2 ,
                                                   struct v4l2_subdev_selection *arg3 ) ;
void ldv_dummy_resourceless_instance_callback_20_13(int (*arg0)(struct v4l2_subdev * ,
                                                                int ) , struct v4l2_subdev *arg1 ,
                                                    int arg2 ) ;
void ldv_dummy_resourceless_instance_callback_20_16(int (*arg0)(struct v4l2_subdev * ,
                                                                struct v4l2_subdev_fh * ,
                                                                struct v4l2_subdev_format * ) ,
                                                    struct v4l2_subdev *arg1 , struct v4l2_subdev_fh *arg2 ,
                                                    struct v4l2_subdev_format *arg3 ) ;
void ldv_dummy_resourceless_instance_callback_20_17(int (*arg0)(struct v4l2_subdev * ,
                                                                struct v4l2_subdev_fh * ,
                                                                struct v4l2_subdev_selection * ) ,
                                                    struct v4l2_subdev *arg1 , struct v4l2_subdev_fh *arg2 ,
                                                    struct v4l2_subdev_selection *arg3 ) ;
void ldv_dummy_resourceless_instance_callback_20_9(int (*arg0)(struct v4l2_subdev * ,
                                                               struct v4l2_subdev_fh * ,
                                                               struct v4l2_subdev_selection * ) ,
                                                   struct v4l2_subdev *arg1 , struct v4l2_subdev_fh *arg2 ,
                                                   struct v4l2_subdev_selection *arg3 ) ;
void ldv_dummy_resourceless_instance_callback_9_17(int (*arg0)(struct v4l2_subdev * ,
                                                               struct v4l2_subdev_fh * ,
                                                               struct v4l2_subdev_selection * ) ,
                                                   struct v4l2_subdev *arg1 , struct v4l2_subdev_fh *arg2 ,
                                                   struct v4l2_subdev_selection *arg3 ) ;
void ldv_dummy_resourceless_instance_callback_9_9(int (*arg0)(struct v4l2_subdev * ,
                                                              struct v4l2_subdev_fh * ,
                                                              struct v4l2_subdev_selection * ) ,
                                                  struct v4l2_subdev *arg1 , struct v4l2_subdev_fh *arg2 ,
                                                  struct v4l2_subdev_selection *arg3 ) ;
int (*ldv_10_callback_get_selection)(struct v4l2_subdev * , struct v4l2_subdev_fh * ,
                                     struct v4l2_subdev_selection * ) ;
int (*ldv_10_callback_s_stream)(struct v4l2_subdev * , int ) ;
int (*ldv_10_callback_set_selection)(struct v4l2_subdev * , struct v4l2_subdev_fh * ,
                                     struct v4l2_subdev_selection * ) ;
int (*ldv_11_callback_get_selection)(struct v4l2_subdev * , struct v4l2_subdev_fh * ,
                                     struct v4l2_subdev_selection * ) ;
int (*ldv_11_callback_s_stream)(struct v4l2_subdev * , int ) ;
int (*ldv_11_callback_set_selection)(struct v4l2_subdev * , struct v4l2_subdev_fh * ,
                                     struct v4l2_subdev_selection * ) ;
int (*ldv_12_callback_get_selection)(struct v4l2_subdev * , struct v4l2_subdev_fh * ,
                                     struct v4l2_subdev_selection * ) ;
int (*ldv_12_callback_s_stream)(struct v4l2_subdev * , int ) ;
int (*ldv_12_callback_set_selection)(struct v4l2_subdev * , struct v4l2_subdev_fh * ,
                                     struct v4l2_subdev_selection * ) ;
int (*ldv_13_callback_get_selection)(struct v4l2_subdev * , struct v4l2_subdev_fh * ,
                                     struct v4l2_subdev_selection * ) ;
int (*ldv_13_callback_s_stream)(struct v4l2_subdev * , int ) ;
int (*ldv_13_callback_set_selection)(struct v4l2_subdev * , struct v4l2_subdev_fh * ,
                                     struct v4l2_subdev_selection * ) ;
int (*ldv_14_callback_enum_mbus_code)(struct v4l2_subdev * , struct v4l2_subdev_fh * ,
                                      struct v4l2_subdev_mbus_code_enum * ) ;
int (*ldv_14_callback_get_fmt)(struct v4l2_subdev * , struct v4l2_subdev_fh * , struct v4l2_subdev_format * ) ;
int (*ldv_14_callback_get_selection)(struct v4l2_subdev * , struct v4l2_subdev_fh * ,
                                     struct v4l2_subdev_selection * ) ;
int (*ldv_14_callback_s_stream)(struct v4l2_subdev * , int ) ;
int (*ldv_14_callback_set_fmt)(struct v4l2_subdev * , struct v4l2_subdev_fh * , struct v4l2_subdev_format * ) ;
int (*ldv_14_callback_set_selection)(struct v4l2_subdev * , struct v4l2_subdev_fh * ,
                                     struct v4l2_subdev_selection * ) ;
int (*ldv_15_callback_get_selection)(struct v4l2_subdev * , struct v4l2_subdev_fh * ,
                                     struct v4l2_subdev_selection * ) ;
int (*ldv_15_callback_set_fmt)(struct v4l2_subdev * , struct v4l2_subdev_fh * , struct v4l2_subdev_format * ) ;
int (*ldv_15_callback_set_selection)(struct v4l2_subdev * , struct v4l2_subdev_fh * ,
                                     struct v4l2_subdev_selection * ) ;
int (*ldv_16_callback_get_selection)(struct v4l2_subdev * , struct v4l2_subdev_fh * ,
                                     struct v4l2_subdev_selection * ) ;
int (*ldv_16_callback_set_fmt)(struct v4l2_subdev * , struct v4l2_subdev_fh * , struct v4l2_subdev_format * ) ;
int (*ldv_16_callback_set_selection)(struct v4l2_subdev * , struct v4l2_subdev_fh * ,
                                     struct v4l2_subdev_selection * ) ;
int (*ldv_17_callback_get_selection)(struct v4l2_subdev * , struct v4l2_subdev_fh * ,
                                     struct v4l2_subdev_selection * ) ;
int (*ldv_17_callback_set_fmt)(struct v4l2_subdev * , struct v4l2_subdev_fh * , struct v4l2_subdev_format * ) ;
int (*ldv_17_callback_set_selection)(struct v4l2_subdev * , struct v4l2_subdev_fh * ,
                                     struct v4l2_subdev_selection * ) ;
int (*ldv_18_callback_get_selection)(struct v4l2_subdev * , struct v4l2_subdev_fh * ,
                                     struct v4l2_subdev_selection * ) ;
int (*ldv_18_callback_set_fmt)(struct v4l2_subdev * , struct v4l2_subdev_fh * , struct v4l2_subdev_format * ) ;
int (*ldv_18_callback_set_selection)(struct v4l2_subdev * , struct v4l2_subdev_fh * ,
                                     struct v4l2_subdev_selection * ) ;
int (*ldv_19_callback_get_selection)(struct v4l2_subdev * , struct v4l2_subdev_fh * ,
                                     struct v4l2_subdev_selection * ) ;
int (*ldv_19_callback_set_fmt)(struct v4l2_subdev * , struct v4l2_subdev_fh * , struct v4l2_subdev_format * ) ;
int (*ldv_19_callback_set_selection)(struct v4l2_subdev * , struct v4l2_subdev_fh * ,
                                     struct v4l2_subdev_selection * ) ;
int (*ldv_20_callback_get_selection)(struct v4l2_subdev * , struct v4l2_subdev_fh * ,
                                     struct v4l2_subdev_selection * ) ;
int (*ldv_20_callback_s_stream)(struct v4l2_subdev * , int ) ;
int (*ldv_20_callback_set_fmt)(struct v4l2_subdev * , struct v4l2_subdev_fh * , struct v4l2_subdev_format * ) ;
int (*ldv_20_callback_set_selection)(struct v4l2_subdev * , struct v4l2_subdev_fh * ,
                                     struct v4l2_subdev_selection * ) ;
int (*ldv_9_callback_get_selection)(struct v4l2_subdev * , struct v4l2_subdev_fh * ,
                                    struct v4l2_subdev_selection * ) ;
int (*ldv_9_callback_set_selection)(struct v4l2_subdev * , struct v4l2_subdev_fh * ,
                                    struct v4l2_subdev_selection * ) ;
int (*ldv_10_callback_get_selection)(struct v4l2_subdev * , struct v4l2_subdev_fh * ,
                                     struct v4l2_subdev_selection * ) = & vsp1_rwpf_get_selection;
int (*ldv_10_callback_s_stream)(struct v4l2_subdev * , int ) = & wpf_s_stream;
int (*ldv_10_callback_set_selection)(struct v4l2_subdev * , struct v4l2_subdev_fh * ,
                                     struct v4l2_subdev_selection * ) = & vsp1_rwpf_set_selection;
int (*ldv_11_callback_get_selection)(struct v4l2_subdev * , struct v4l2_subdev_fh * ,
                                     struct v4l2_subdev_selection * ) = & vsp1_rwpf_get_selection;
int (*ldv_11_callback_s_stream)(struct v4l2_subdev * , int ) = & wpf_s_stream;
int (*ldv_11_callback_set_selection)(struct v4l2_subdev * , struct v4l2_subdev_fh * ,
                                     struct v4l2_subdev_selection * ) = & vsp1_rwpf_set_selection;
int (*ldv_12_callback_get_selection)(struct v4l2_subdev * , struct v4l2_subdev_fh * ,
                                     struct v4l2_subdev_selection * ) = & vsp1_rwpf_get_selection;
int (*ldv_12_callback_s_stream)(struct v4l2_subdev * , int ) = & wpf_s_stream;
int (*ldv_12_callback_set_selection)(struct v4l2_subdev * , struct v4l2_subdev_fh * ,
                                     struct v4l2_subdev_selection * ) = & vsp1_rwpf_set_selection;
int (*ldv_13_callback_get_selection)(struct v4l2_subdev * , struct v4l2_subdev_fh * ,
                                     struct v4l2_subdev_selection * ) = & vsp1_rwpf_get_selection;
int (*ldv_13_callback_s_stream)(struct v4l2_subdev * , int ) = & wpf_s_stream;
int (*ldv_13_callback_set_selection)(struct v4l2_subdev * , struct v4l2_subdev_fh * ,
                                     struct v4l2_subdev_selection * ) = & vsp1_rwpf_set_selection;
int (*ldv_14_callback_enum_frame_size)(struct v4l2_subdev * , struct v4l2_subdev_fh * ,
                                       struct v4l2_subdev_frame_size_enum * ) = & vsp1_rwpf_enum_frame_size;
int (*ldv_14_callback_enum_mbus_code)(struct v4l2_subdev * , struct v4l2_subdev_fh * ,
                                      struct v4l2_subdev_mbus_code_enum * ) = & vsp1_rwpf_enum_mbus_code;
int (*ldv_14_callback_get_fmt)(struct v4l2_subdev * , struct v4l2_subdev_fh * , struct v4l2_subdev_format * ) = & vsp1_rwpf_get_format;
int (*ldv_14_callback_get_selection)(struct v4l2_subdev * , struct v4l2_subdev_fh * ,
                                     struct v4l2_subdev_selection * ) = & vsp1_rwpf_get_selection;
int (*ldv_14_callback_s_stream)(struct v4l2_subdev * , int ) = & wpf_s_stream;
int (*ldv_14_callback_set_fmt)(struct v4l2_subdev * , struct v4l2_subdev_fh * , struct v4l2_subdev_format * ) = & vsp1_rwpf_set_format;
int (*ldv_14_callback_set_selection)(struct v4l2_subdev * , struct v4l2_subdev_fh * ,
                                     struct v4l2_subdev_selection * ) = & vsp1_rwpf_set_selection;
int (*ldv_15_callback_get_selection)(struct v4l2_subdev * , struct v4l2_subdev_fh * ,
                                     struct v4l2_subdev_selection * ) = & vsp1_rwpf_get_selection;
int (*ldv_15_callback_set_fmt)(struct v4l2_subdev * , struct v4l2_subdev_fh * , struct v4l2_subdev_format * ) = & vsp1_rwpf_set_format;
int (*ldv_15_callback_set_selection)(struct v4l2_subdev * , struct v4l2_subdev_fh * ,
                                     struct v4l2_subdev_selection * ) = & vsp1_rwpf_set_selection;
int (*ldv_16_callback_get_selection)(struct v4l2_subdev * , struct v4l2_subdev_fh * ,
                                     struct v4l2_subdev_selection * ) = & vsp1_rwpf_get_selection;
int (*ldv_16_callback_set_fmt)(struct v4l2_subdev * , struct v4l2_subdev_fh * , struct v4l2_subdev_format * ) = & vsp1_rwpf_set_format;
int (*ldv_16_callback_set_selection)(struct v4l2_subdev * , struct v4l2_subdev_fh * ,
                                     struct v4l2_subdev_selection * ) = & vsp1_rwpf_set_selection;
int (*ldv_17_callback_get_selection)(struct v4l2_subdev * , struct v4l2_subdev_fh * ,
                                     struct v4l2_subdev_selection * ) = & vsp1_rwpf_get_selection;
int (*ldv_17_callback_set_fmt)(struct v4l2_subdev * , struct v4l2_subdev_fh * , struct v4l2_subdev_format * ) = & vsp1_rwpf_set_format;
int (*ldv_17_callback_set_selection)(struct v4l2_subdev * , struct v4l2_subdev_fh * ,
                                     struct v4l2_subdev_selection * ) = & vsp1_rwpf_set_selection;
int (*ldv_18_callback_get_selection)(struct v4l2_subdev * , struct v4l2_subdev_fh * ,
                                     struct v4l2_subdev_selection * ) = & vsp1_rwpf_get_selection;
int (*ldv_18_callback_set_fmt)(struct v4l2_subdev * , struct v4l2_subdev_fh * , struct v4l2_subdev_format * ) = & vsp1_rwpf_set_format;
int (*ldv_18_callback_set_selection)(struct v4l2_subdev * , struct v4l2_subdev_fh * ,
                                     struct v4l2_subdev_selection * ) = & vsp1_rwpf_set_selection;
int (*ldv_19_callback_get_selection)(struct v4l2_subdev * , struct v4l2_subdev_fh * ,
                                     struct v4l2_subdev_selection * ) = & vsp1_rwpf_get_selection;
int (*ldv_19_callback_set_fmt)(struct v4l2_subdev * , struct v4l2_subdev_fh * , struct v4l2_subdev_format * ) = & vsp1_rwpf_set_format;
int (*ldv_19_callback_set_selection)(struct v4l2_subdev * , struct v4l2_subdev_fh * ,
                                     struct v4l2_subdev_selection * ) = & vsp1_rwpf_set_selection;
int (*ldv_20_callback_get_selection)(struct v4l2_subdev * , struct v4l2_subdev_fh * ,
                                     struct v4l2_subdev_selection * ) = & vsp1_rwpf_get_selection;
int (*ldv_20_callback_s_stream)(struct v4l2_subdev * , int ) = & wpf_s_stream;
int (*ldv_20_callback_set_fmt)(struct v4l2_subdev * , struct v4l2_subdev_fh * , struct v4l2_subdev_format * ) = & vsp1_rwpf_set_format;
int (*ldv_20_callback_set_selection)(struct v4l2_subdev * , struct v4l2_subdev_fh * ,
                                     struct v4l2_subdev_selection * ) = & vsp1_rwpf_set_selection;
void (*ldv_23_callback_queue)(struct vsp1_video * , struct vsp1_video_buffer * ) = & wpf_vdev_queue;
int (*ldv_9_callback_get_selection)(struct v4l2_subdev * , struct v4l2_subdev_fh * ,
                                    struct v4l2_subdev_selection * ) = & vsp1_rwpf_get_selection;
int (*ldv_9_callback_set_selection)(struct v4l2_subdev * , struct v4l2_subdev_fh * ,
                                    struct v4l2_subdev_selection * ) = & vsp1_rwpf_set_selection;
void ldv_dummy_resourceless_instance_callback_10_13(int (*arg0)(struct v4l2_subdev * ,
                                                                int ) , struct v4l2_subdev *arg1 ,
                                                    int arg2 )
{
  {
  {
  wpf_s_stream(arg1, arg2);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_10_17(int (*arg0)(struct v4l2_subdev * ,
                                                                struct v4l2_subdev_fh * ,
                                                                struct v4l2_subdev_selection * ) ,
                                                    struct v4l2_subdev *arg1 , struct v4l2_subdev_fh *arg2 ,
                                                    struct v4l2_subdev_selection *arg3 )
{
  {
  {
  vsp1_rwpf_set_selection(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_10_9(int (*arg0)(struct v4l2_subdev * ,
                                                               struct v4l2_subdev_fh * ,
                                                               struct v4l2_subdev_selection * ) ,
                                                   struct v4l2_subdev *arg1 , struct v4l2_subdev_fh *arg2 ,
                                                   struct v4l2_subdev_selection *arg3 )
{
  {
  {
  vsp1_rwpf_get_selection(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_11_13(int (*arg0)(struct v4l2_subdev * ,
                                                                int ) , struct v4l2_subdev *arg1 ,
                                                    int arg2 )
{
  {
  {
  wpf_s_stream(arg1, arg2);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_11_17(int (*arg0)(struct v4l2_subdev * ,
                                                                struct v4l2_subdev_fh * ,
                                                                struct v4l2_subdev_selection * ) ,
                                                    struct v4l2_subdev *arg1 , struct v4l2_subdev_fh *arg2 ,
                                                    struct v4l2_subdev_selection *arg3 )
{
  {
  {
  vsp1_rwpf_set_selection(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_11_9(int (*arg0)(struct v4l2_subdev * ,
                                                               struct v4l2_subdev_fh * ,
                                                               struct v4l2_subdev_selection * ) ,
                                                   struct v4l2_subdev *arg1 , struct v4l2_subdev_fh *arg2 ,
                                                   struct v4l2_subdev_selection *arg3 )
{
  {
  {
  vsp1_rwpf_get_selection(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_12_13(int (*arg0)(struct v4l2_subdev * ,
                                                                int ) , struct v4l2_subdev *arg1 ,
                                                    int arg2 )
{
  {
  {
  wpf_s_stream(arg1, arg2);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_12_17(int (*arg0)(struct v4l2_subdev * ,
                                                                struct v4l2_subdev_fh * ,
                                                                struct v4l2_subdev_selection * ) ,
                                                    struct v4l2_subdev *arg1 , struct v4l2_subdev_fh *arg2 ,
                                                    struct v4l2_subdev_selection *arg3 )
{
  {
  {
  vsp1_rwpf_set_selection(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_12_9(int (*arg0)(struct v4l2_subdev * ,
                                                               struct v4l2_subdev_fh * ,
                                                               struct v4l2_subdev_selection * ) ,
                                                   struct v4l2_subdev *arg1 , struct v4l2_subdev_fh *arg2 ,
                                                   struct v4l2_subdev_selection *arg3 )
{
  {
  {
  vsp1_rwpf_get_selection(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_13_13(int (*arg0)(struct v4l2_subdev * ,
                                                                int ) , struct v4l2_subdev *arg1 ,
                                                    int arg2 )
{
  {
  {
  wpf_s_stream(arg1, arg2);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_13_17(int (*arg0)(struct v4l2_subdev * ,
                                                                struct v4l2_subdev_fh * ,
                                                                struct v4l2_subdev_selection * ) ,
                                                    struct v4l2_subdev *arg1 , struct v4l2_subdev_fh *arg2 ,
                                                    struct v4l2_subdev_selection *arg3 )
{
  {
  {
  vsp1_rwpf_set_selection(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_13_9(int (*arg0)(struct v4l2_subdev * ,
                                                               struct v4l2_subdev_fh * ,
                                                               struct v4l2_subdev_selection * ) ,
                                                   struct v4l2_subdev *arg1 , struct v4l2_subdev_fh *arg2 ,
                                                   struct v4l2_subdev_selection *arg3 )
{
  {
  {
  vsp1_rwpf_get_selection(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_14_13(int (*arg0)(struct v4l2_subdev * ,
                                                                int ) , struct v4l2_subdev *arg1 ,
                                                    int arg2 )
{
  {
  {
  wpf_s_stream(arg1, arg2);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_14_16(int (*arg0)(struct v4l2_subdev * ,
                                                                struct v4l2_subdev_fh * ,
                                                                struct v4l2_subdev_format * ) ,
                                                    struct v4l2_subdev *arg1 , struct v4l2_subdev_fh *arg2 ,
                                                    struct v4l2_subdev_format *arg3 )
{
  {
  {
  vsp1_rwpf_set_format(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_14_17(int (*arg0)(struct v4l2_subdev * ,
                                                                struct v4l2_subdev_fh * ,
                                                                struct v4l2_subdev_selection * ) ,
                                                    struct v4l2_subdev *arg1 , struct v4l2_subdev_fh *arg2 ,
                                                    struct v4l2_subdev_selection *arg3 )
{
  {
  {
  vsp1_rwpf_set_selection(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_14_3(int (*arg0)(struct v4l2_subdev * ,
                                                               struct v4l2_subdev_fh * ,
                                                               struct v4l2_subdev_frame_size_enum * ) ,
                                                   struct v4l2_subdev *arg1 , struct v4l2_subdev_fh *arg2 ,
                                                   struct v4l2_subdev_frame_size_enum *arg3 )
{
  {
  {
  vsp1_rwpf_enum_frame_size(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_14_7(int (*arg0)(struct v4l2_subdev * ,
                                                               struct v4l2_subdev_fh * ,
                                                               struct v4l2_subdev_mbus_code_enum * ) ,
                                                   struct v4l2_subdev *arg1 , struct v4l2_subdev_fh *arg2 ,
                                                   struct v4l2_subdev_mbus_code_enum *arg3 )
{
  {
  {
  vsp1_rwpf_enum_mbus_code(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_14_8(int (*arg0)(struct v4l2_subdev * ,
                                                               struct v4l2_subdev_fh * ,
                                                               struct v4l2_subdev_format * ) ,
                                                   struct v4l2_subdev *arg1 , struct v4l2_subdev_fh *arg2 ,
                                                   struct v4l2_subdev_format *arg3 )
{
  {
  {
  vsp1_rwpf_get_format(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_14_9(int (*arg0)(struct v4l2_subdev * ,
                                                               struct v4l2_subdev_fh * ,
                                                               struct v4l2_subdev_selection * ) ,
                                                   struct v4l2_subdev *arg1 , struct v4l2_subdev_fh *arg2 ,
                                                   struct v4l2_subdev_selection *arg3 )
{
  {
  {
  vsp1_rwpf_get_selection(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_15_16(int (*arg0)(struct v4l2_subdev * ,
                                                                struct v4l2_subdev_fh * ,
                                                                struct v4l2_subdev_format * ) ,
                                                    struct v4l2_subdev *arg1 , struct v4l2_subdev_fh *arg2 ,
                                                    struct v4l2_subdev_format *arg3 )
{
  {
  {
  vsp1_rwpf_set_format(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_15_17(int (*arg0)(struct v4l2_subdev * ,
                                                                struct v4l2_subdev_fh * ,
                                                                struct v4l2_subdev_selection * ) ,
                                                    struct v4l2_subdev *arg1 , struct v4l2_subdev_fh *arg2 ,
                                                    struct v4l2_subdev_selection *arg3 )
{
  {
  {
  vsp1_rwpf_set_selection(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_15_9(int (*arg0)(struct v4l2_subdev * ,
                                                               struct v4l2_subdev_fh * ,
                                                               struct v4l2_subdev_selection * ) ,
                                                   struct v4l2_subdev *arg1 , struct v4l2_subdev_fh *arg2 ,
                                                   struct v4l2_subdev_selection *arg3 )
{
  {
  {
  vsp1_rwpf_get_selection(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_16_16(int (*arg0)(struct v4l2_subdev * ,
                                                                struct v4l2_subdev_fh * ,
                                                                struct v4l2_subdev_format * ) ,
                                                    struct v4l2_subdev *arg1 , struct v4l2_subdev_fh *arg2 ,
                                                    struct v4l2_subdev_format *arg3 )
{
  {
  {
  vsp1_rwpf_set_format(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_16_17(int (*arg0)(struct v4l2_subdev * ,
                                                                struct v4l2_subdev_fh * ,
                                                                struct v4l2_subdev_selection * ) ,
                                                    struct v4l2_subdev *arg1 , struct v4l2_subdev_fh *arg2 ,
                                                    struct v4l2_subdev_selection *arg3 )
{
  {
  {
  vsp1_rwpf_set_selection(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_16_9(int (*arg0)(struct v4l2_subdev * ,
                                                               struct v4l2_subdev_fh * ,
                                                               struct v4l2_subdev_selection * ) ,
                                                   struct v4l2_subdev *arg1 , struct v4l2_subdev_fh *arg2 ,
                                                   struct v4l2_subdev_selection *arg3 )
{
  {
  {
  vsp1_rwpf_get_selection(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_17_16(int (*arg0)(struct v4l2_subdev * ,
                                                                struct v4l2_subdev_fh * ,
                                                                struct v4l2_subdev_format * ) ,
                                                    struct v4l2_subdev *arg1 , struct v4l2_subdev_fh *arg2 ,
                                                    struct v4l2_subdev_format *arg3 )
{
  {
  {
  vsp1_rwpf_set_format(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_17_17(int (*arg0)(struct v4l2_subdev * ,
                                                                struct v4l2_subdev_fh * ,
                                                                struct v4l2_subdev_selection * ) ,
                                                    struct v4l2_subdev *arg1 , struct v4l2_subdev_fh *arg2 ,
                                                    struct v4l2_subdev_selection *arg3 )
{
  {
  {
  vsp1_rwpf_set_selection(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_17_9(int (*arg0)(struct v4l2_subdev * ,
                                                               struct v4l2_subdev_fh * ,
                                                               struct v4l2_subdev_selection * ) ,
                                                   struct v4l2_subdev *arg1 , struct v4l2_subdev_fh *arg2 ,
                                                   struct v4l2_subdev_selection *arg3 )
{
  {
  {
  vsp1_rwpf_get_selection(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_18_16(int (*arg0)(struct v4l2_subdev * ,
                                                                struct v4l2_subdev_fh * ,
                                                                struct v4l2_subdev_format * ) ,
                                                    struct v4l2_subdev *arg1 , struct v4l2_subdev_fh *arg2 ,
                                                    struct v4l2_subdev_format *arg3 )
{
  {
  {
  vsp1_rwpf_set_format(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_18_17(int (*arg0)(struct v4l2_subdev * ,
                                                                struct v4l2_subdev_fh * ,
                                                                struct v4l2_subdev_selection * ) ,
                                                    struct v4l2_subdev *arg1 , struct v4l2_subdev_fh *arg2 ,
                                                    struct v4l2_subdev_selection *arg3 )
{
  {
  {
  vsp1_rwpf_set_selection(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_18_9(int (*arg0)(struct v4l2_subdev * ,
                                                               struct v4l2_subdev_fh * ,
                                                               struct v4l2_subdev_selection * ) ,
                                                   struct v4l2_subdev *arg1 , struct v4l2_subdev_fh *arg2 ,
                                                   struct v4l2_subdev_selection *arg3 )
{
  {
  {
  vsp1_rwpf_get_selection(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_19_16(int (*arg0)(struct v4l2_subdev * ,
                                                                struct v4l2_subdev_fh * ,
                                                                struct v4l2_subdev_format * ) ,
                                                    struct v4l2_subdev *arg1 , struct v4l2_subdev_fh *arg2 ,
                                                    struct v4l2_subdev_format *arg3 )
{
  {
  {
  vsp1_rwpf_set_format(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_19_17(int (*arg0)(struct v4l2_subdev * ,
                                                                struct v4l2_subdev_fh * ,
                                                                struct v4l2_subdev_selection * ) ,
                                                    struct v4l2_subdev *arg1 , struct v4l2_subdev_fh *arg2 ,
                                                    struct v4l2_subdev_selection *arg3 )
{
  {
  {
  vsp1_rwpf_set_selection(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_19_9(int (*arg0)(struct v4l2_subdev * ,
                                                               struct v4l2_subdev_fh * ,
                                                               struct v4l2_subdev_selection * ) ,
                                                   struct v4l2_subdev *arg1 , struct v4l2_subdev_fh *arg2 ,
                                                   struct v4l2_subdev_selection *arg3 )
{
  {
  {
  vsp1_rwpf_get_selection(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_20_13(int (*arg0)(struct v4l2_subdev * ,
                                                                int ) , struct v4l2_subdev *arg1 ,
                                                    int arg2 )
{
  {
  {
  wpf_s_stream(arg1, arg2);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_20_16(int (*arg0)(struct v4l2_subdev * ,
                                                                struct v4l2_subdev_fh * ,
                                                                struct v4l2_subdev_format * ) ,
                                                    struct v4l2_subdev *arg1 , struct v4l2_subdev_fh *arg2 ,
                                                    struct v4l2_subdev_format *arg3 )
{
  {
  {
  vsp1_rwpf_set_format(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_20_17(int (*arg0)(struct v4l2_subdev * ,
                                                                struct v4l2_subdev_fh * ,
                                                                struct v4l2_subdev_selection * ) ,
                                                    struct v4l2_subdev *arg1 , struct v4l2_subdev_fh *arg2 ,
                                                    struct v4l2_subdev_selection *arg3 )
{
  {
  {
  vsp1_rwpf_set_selection(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_20_9(int (*arg0)(struct v4l2_subdev * ,
                                                               struct v4l2_subdev_fh * ,
                                                               struct v4l2_subdev_selection * ) ,
                                                   struct v4l2_subdev *arg1 , struct v4l2_subdev_fh *arg2 ,
                                                   struct v4l2_subdev_selection *arg3 )
{
  {
  {
  vsp1_rwpf_get_selection(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_23_3(void (*arg0)(struct vsp1_video * ,
                                                                struct vsp1_video_buffer * ) ,
                                                   struct vsp1_video *arg1 , struct vsp1_video_buffer *arg2 )
{
  {
  {
  wpf_vdev_queue(arg1, arg2);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_9_17(int (*arg0)(struct v4l2_subdev * ,
                                                               struct v4l2_subdev_fh * ,
                                                               struct v4l2_subdev_selection * ) ,
                                                   struct v4l2_subdev *arg1 , struct v4l2_subdev_fh *arg2 ,
                                                   struct v4l2_subdev_selection *arg3 )
{
  {
  {
  vsp1_rwpf_set_selection(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_9_9(int (*arg0)(struct v4l2_subdev * ,
                                                              struct v4l2_subdev_fh * ,
                                                              struct v4l2_subdev_selection * ) ,
                                                  struct v4l2_subdev *arg1 , struct v4l2_subdev_fh *arg2 ,
                                                  struct v4l2_subdev_selection *arg3 )
{
  {
  {
  vsp1_rwpf_get_selection(arg1, arg2, arg3);
  }
  return;
}
}
__inline static void *ERR_PTR(long error ) ;
static void *ldv_dev_get_drvdata_37___1(struct device const *dev ) ;
__inline static void *video_get_drvdata___2(struct video_device *vdev )
{
  void *tmp ;
  {
  {
  tmp = ldv_dev_get_drvdata_37___1((struct device const *)(& vdev->dev));
  }
  return (tmp);
}
}
__inline static struct v4l2_mbus_framefmt *v4l2_subdev_get_try_format___1(struct v4l2_subdev_fh *fh ,
                                                                          unsigned int pad )
{
  void *tmp ;
  long tmp___0 ;
  {
  {
  tmp = video_get_drvdata___2(fh->vfh.vdev);
  tmp___0 = ldv__builtin_expect(pad >= (unsigned int )((struct v4l2_subdev *)tmp)->entity.num_pads,
                             0L);
  }
  if (tmp___0 != 0L) {
    {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"include/media/v4l2-subdev.h"),
                         "i" (643), "i" (12UL));
    __builtin_unreachable();
    }
  } else {
  }
  return (& (fh->pad + (unsigned long )pad)->try_fmt);
}
}
__inline static struct vsp1_hsit *to_hsit(struct v4l2_subdev *subdev )
{
  struct v4l2_subdev const *__mptr ;
  {
  __mptr = (struct v4l2_subdev const *)subdev;
  return ((struct vsp1_hsit *)__mptr + 0xffffffffffffffb0UL);
}
}
__inline static void vsp1_hsit_write(struct vsp1_hsit *hsit , u32 reg , u32 data )
{
  {
  {
  vsp1_write(hsit->entity.vsp1, reg, data);
  }
  return;
}
}
static int hsit_s_stream(struct v4l2_subdev *subdev , int enable )
{
  struct vsp1_hsit *hsit ;
  struct vsp1_hsit *tmp ;
  {
  {
  tmp = to_hsit(subdev);
  hsit = tmp;
  }
  if (enable == 0) {
    return (0);
  } else {
  }
  if ((int )hsit->inverse) {
    {
    vsp1_hsit_write(hsit, 11008U, 1U);
    }
  } else {
    {
    vsp1_hsit_write(hsit, 10752U, 1U);
    }
  }
  return (0);
}
}
static int hsit_enum_mbus_code(struct v4l2_subdev *subdev , struct v4l2_subdev_fh *fh ,
                               struct v4l2_subdev_mbus_code_enum *code )
{
  struct vsp1_hsit *hsit ;
  struct vsp1_hsit *tmp ;
  {
  {
  tmp = to_hsit(subdev);
  hsit = tmp;
  }
  if (code->index != 0U) {
    return (-22);
  } else {
  }
  if ((_Bool )(code->pad == 0U && ! hsit->inverse) || (_Bool )(code->pad == 1U && (int )hsit->inverse)) {
    code->code = 4109U;
  } else {
    code->code = 24577U;
  }
  return (0);
}
}
static int hsit_enum_frame_size(struct v4l2_subdev *subdev , struct v4l2_subdev_fh *fh ,
                                struct v4l2_subdev_frame_size_enum *fse )
{
  struct v4l2_mbus_framefmt *format ;
  {
  {
  format = v4l2_subdev_get_try_format___1(fh, fse->pad);
  }
  if (fse->index != 0U || fse->code != format->code) {
    return (-22);
  } else {
  }
  if (fse->pad == 0U) {
    fse->min_width = 4U;
    fse->max_width = 8190U;
    fse->min_height = 4U;
    fse->max_height = 8190U;
  } else {
    fse->min_width = format->width;
    fse->max_width = format->width;
    fse->min_height = format->height;
    fse->max_height = format->height;
  }
  return (0);
}
}
static int hsit_get_format(struct v4l2_subdev *subdev , struct v4l2_subdev_fh *fh ,
                           struct v4l2_subdev_format *fmt )
{
  struct vsp1_hsit *hsit ;
  struct vsp1_hsit *tmp ;
  struct v4l2_mbus_framefmt *tmp___0 ;
  {
  {
  tmp = to_hsit(subdev);
  hsit = tmp;
  tmp___0 = vsp1_entity_get_pad_format(& hsit->entity, fh, fmt->pad, fmt->which);
  fmt->format = *tmp___0;
  }
  return (0);
}
}
static int hsit_set_format(struct v4l2_subdev *subdev , struct v4l2_subdev_fh *fh ,
                           struct v4l2_subdev_format *fmt )
{
  struct vsp1_hsit *hsit ;
  struct vsp1_hsit *tmp ;
  struct v4l2_mbus_framefmt *format ;
  unsigned int __val ;
  unsigned int __min ;
  unsigned int __max ;
  unsigned int __val___0 ;
  unsigned int __min___0 ;
  unsigned int __max___0 ;
  {
  {
  tmp = to_hsit(subdev);
  hsit = tmp;
  format = vsp1_entity_get_pad_format(& hsit->entity, fh, fmt->pad, fmt->which);
  }
  if (fmt->pad == 1U) {
    fmt->format = *format;
    return (0);
  } else {
  }
  {
  format->code = (int )hsit->inverse ? 24577U : 4109U;
  __val = fmt->format.width;
  __min = 4U;
  __max = 8190U;
  __val = __min > __val ? __min : __val;
  format->width = __max < __val ? __max : __val;
  __val___0 = fmt->format.height;
  __min___0 = 4U;
  __max___0 = 8190U;
  __val___0 = __min___0 > __val___0 ? __min___0 : __val___0;
  format->height = __max___0 < __val___0 ? __max___0 : __val___0;
  format->field = 1U;
  format->colorspace = 8U;
  fmt->format = *format;
  format = vsp1_entity_get_pad_format(& hsit->entity, fh, 1U, fmt->which);
  *format = fmt->format;
  format->code = (int )hsit->inverse ? 4109U : 24577U;
  }
  return (0);
}
}
static struct v4l2_subdev_video_ops hsit_video_ops =
     {0, 0, 0, 0, 0, 0, 0, & hsit_s_stream, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    0, 0, 0, 0, 0, 0, 0, 0};
static struct v4l2_subdev_pad_ops hsit_pad_ops =
     {& hsit_enum_mbus_code, & hsit_enum_frame_size, 0, & hsit_get_format, & hsit_set_format,
    0, 0, 0, 0, 0, 0, 0, 0, 0};
static struct v4l2_subdev_ops hsit_ops =
     {0, 0, 0, (struct v4l2_subdev_video_ops const *)(& hsit_video_ops), 0, 0, 0,
    (struct v4l2_subdev_pad_ops const *)(& hsit_pad_ops)};
struct vsp1_hsit *vsp1_hsit_create(struct vsp1_device *vsp1 , bool inverse )
{
  struct v4l2_subdev *subdev ;
  struct vsp1_hsit *hsit ;
  int ret ;
  void *tmp ;
  void *tmp___0 ;
  void *tmp___1 ;
  char const *tmp___2 ;
  {
  {
  tmp = devm_kzalloc(vsp1->dev, 400UL, 208U);
  hsit = (struct vsp1_hsit *)tmp;
  }
  if ((unsigned long )hsit == (unsigned long )((struct vsp1_hsit *)0)) {
    {
    tmp___0 = ERR_PTR(-12L);
    }
    return ((struct vsp1_hsit *)tmp___0);
  } else {
  }
  hsit->inverse = inverse;
  if ((int )inverse) {
    hsit->entity.type = 0;
    hsit->entity.id = 31U;
  } else {
    hsit->entity.type = 1;
    hsit->entity.id = 30U;
  }
  {
  ret = vsp1_entity_init(vsp1, & hsit->entity, 2U);
  }
  if (ret < 0) {
    {
    tmp___1 = ERR_PTR((long )ret);
    }
    return ((struct vsp1_hsit *)tmp___1);
  } else {
  }
  {
  subdev = & hsit->entity.subdev;
  v4l2_subdev_init(subdev, (struct v4l2_subdev_ops const *)(& hsit_ops));
  subdev->entity.ops = & vsp1_media_ops;
  subdev->internal_ops = & vsp1_subdev_internal_ops;
  tmp___2 = dev_name((struct device const *)vsp1->dev);
  snprintf((char *)(& subdev->name), 32UL, "%s %s", tmp___2, (int )inverse ? (char *)"hsi" : (char *)"hst");
  v4l2_set_subdevdata(subdev, (void *)hsit);
  subdev->flags = subdev->flags | 4U;
  vsp1_entity_init_formats(subdev, (struct v4l2_subdev_fh *)0);
  }
  return (hsit);
}
}
void ldv_dummy_resourceless_instance_callback_15_7(int (*arg0)(struct v4l2_subdev * ,
                                                               struct v4l2_subdev_fh * ,
                                                               struct v4l2_subdev_mbus_code_enum * ) ,
                                                   struct v4l2_subdev *arg1 , struct v4l2_subdev_fh *arg2 ,
                                                   struct v4l2_subdev_mbus_code_enum *arg3 ) ;
void ldv_dummy_resourceless_instance_callback_15_8(int (*arg0)(struct v4l2_subdev * ,
                                                               struct v4l2_subdev_fh * ,
                                                               struct v4l2_subdev_format * ) ,
                                                   struct v4l2_subdev *arg1 , struct v4l2_subdev_fh *arg2 ,
                                                   struct v4l2_subdev_format *arg3 ) ;
void ldv_dummy_resourceless_instance_callback_16_7(int (*arg0)(struct v4l2_subdev * ,
                                                               struct v4l2_subdev_fh * ,
                                                               struct v4l2_subdev_mbus_code_enum * ) ,
                                                   struct v4l2_subdev *arg1 , struct v4l2_subdev_fh *arg2 ,
                                                   struct v4l2_subdev_mbus_code_enum *arg3 ) ;
void ldv_dummy_resourceless_instance_callback_16_8(int (*arg0)(struct v4l2_subdev * ,
                                                               struct v4l2_subdev_fh * ,
                                                               struct v4l2_subdev_format * ) ,
                                                   struct v4l2_subdev *arg1 , struct v4l2_subdev_fh *arg2 ,
                                                   struct v4l2_subdev_format *arg3 ) ;
void ldv_dummy_resourceless_instance_callback_17_7(int (*arg0)(struct v4l2_subdev * ,
                                                               struct v4l2_subdev_fh * ,
                                                               struct v4l2_subdev_mbus_code_enum * ) ,
                                                   struct v4l2_subdev *arg1 , struct v4l2_subdev_fh *arg2 ,
                                                   struct v4l2_subdev_mbus_code_enum *arg3 ) ;
void ldv_dummy_resourceless_instance_callback_17_8(int (*arg0)(struct v4l2_subdev * ,
                                                               struct v4l2_subdev_fh * ,
                                                               struct v4l2_subdev_format * ) ,
                                                   struct v4l2_subdev *arg1 , struct v4l2_subdev_fh *arg2 ,
                                                   struct v4l2_subdev_format *arg3 ) ;
void ldv_dummy_resourceless_instance_callback_18_7(int (*arg0)(struct v4l2_subdev * ,
                                                               struct v4l2_subdev_fh * ,
                                                               struct v4l2_subdev_mbus_code_enum * ) ,
                                                   struct v4l2_subdev *arg1 , struct v4l2_subdev_fh *arg2 ,
                                                   struct v4l2_subdev_mbus_code_enum *arg3 ) ;
void ldv_dummy_resourceless_instance_callback_18_8(int (*arg0)(struct v4l2_subdev * ,
                                                               struct v4l2_subdev_fh * ,
                                                               struct v4l2_subdev_format * ) ,
                                                   struct v4l2_subdev *arg1 , struct v4l2_subdev_fh *arg2 ,
                                                   struct v4l2_subdev_format *arg3 ) ;
void ldv_dummy_resourceless_instance_callback_19_7(int (*arg0)(struct v4l2_subdev * ,
                                                               struct v4l2_subdev_fh * ,
                                                               struct v4l2_subdev_mbus_code_enum * ) ,
                                                   struct v4l2_subdev *arg1 , struct v4l2_subdev_fh *arg2 ,
                                                   struct v4l2_subdev_mbus_code_enum *arg3 ) ;
void ldv_dummy_resourceless_instance_callback_19_8(int (*arg0)(struct v4l2_subdev * ,
                                                               struct v4l2_subdev_fh * ,
                                                               struct v4l2_subdev_format * ) ,
                                                   struct v4l2_subdev *arg1 , struct v4l2_subdev_fh *arg2 ,
                                                   struct v4l2_subdev_format *arg3 ) ;
void ldv_dummy_resourceless_instance_callback_20_7(int (*arg0)(struct v4l2_subdev * ,
                                                               struct v4l2_subdev_fh * ,
                                                               struct v4l2_subdev_mbus_code_enum * ) ,
                                                   struct v4l2_subdev *arg1 , struct v4l2_subdev_fh *arg2 ,
                                                   struct v4l2_subdev_mbus_code_enum *arg3 ) ;
void ldv_dummy_resourceless_instance_callback_20_8(int (*arg0)(struct v4l2_subdev * ,
                                                               struct v4l2_subdev_fh * ,
                                                               struct v4l2_subdev_format * ) ,
                                                   struct v4l2_subdev *arg1 , struct v4l2_subdev_fh *arg2 ,
                                                   struct v4l2_subdev_format *arg3 ) ;
void ldv_dummy_resourceless_instance_callback_9_13(int (*arg0)(struct v4l2_subdev * ,
                                                               int ) , struct v4l2_subdev *arg1 ,
                                                   int arg2 ) ;
void ldv_dummy_resourceless_instance_callback_9_16(int (*arg0)(struct v4l2_subdev * ,
                                                               struct v4l2_subdev_fh * ,
                                                               struct v4l2_subdev_format * ) ,
                                                   struct v4l2_subdev *arg1 , struct v4l2_subdev_fh *arg2 ,
                                                   struct v4l2_subdev_format *arg3 ) ;
void ldv_dummy_resourceless_instance_callback_9_7(int (*arg0)(struct v4l2_subdev * ,
                                                              struct v4l2_subdev_fh * ,
                                                              struct v4l2_subdev_mbus_code_enum * ) ,
                                                  struct v4l2_subdev *arg1 , struct v4l2_subdev_fh *arg2 ,
                                                  struct v4l2_subdev_mbus_code_enum *arg3 ) ;
void ldv_dummy_resourceless_instance_callback_9_8(int (*arg0)(struct v4l2_subdev * ,
                                                              struct v4l2_subdev_fh * ,
                                                              struct v4l2_subdev_format * ) ,
                                                  struct v4l2_subdev *arg1 , struct v4l2_subdev_fh *arg2 ,
                                                  struct v4l2_subdev_format *arg3 ) ;
int (*ldv_15_callback_enum_mbus_code)(struct v4l2_subdev * , struct v4l2_subdev_fh * ,
                                      struct v4l2_subdev_mbus_code_enum * ) ;
int (*ldv_15_callback_get_fmt)(struct v4l2_subdev * , struct v4l2_subdev_fh * , struct v4l2_subdev_format * ) ;
int (*ldv_16_callback_enum_mbus_code)(struct v4l2_subdev * , struct v4l2_subdev_fh * ,
                                      struct v4l2_subdev_mbus_code_enum * ) ;
int (*ldv_16_callback_get_fmt)(struct v4l2_subdev * , struct v4l2_subdev_fh * , struct v4l2_subdev_format * ) ;
int (*ldv_17_callback_enum_mbus_code)(struct v4l2_subdev * , struct v4l2_subdev_fh * ,
                                      struct v4l2_subdev_mbus_code_enum * ) ;
int (*ldv_17_callback_get_fmt)(struct v4l2_subdev * , struct v4l2_subdev_fh * , struct v4l2_subdev_format * ) ;
int (*ldv_18_callback_enum_mbus_code)(struct v4l2_subdev * , struct v4l2_subdev_fh * ,
                                      struct v4l2_subdev_mbus_code_enum * ) ;
int (*ldv_18_callback_get_fmt)(struct v4l2_subdev * , struct v4l2_subdev_fh * , struct v4l2_subdev_format * ) ;
int (*ldv_19_callback_enum_mbus_code)(struct v4l2_subdev * , struct v4l2_subdev_fh * ,
                                      struct v4l2_subdev_mbus_code_enum * ) ;
int (*ldv_19_callback_get_fmt)(struct v4l2_subdev * , struct v4l2_subdev_fh * , struct v4l2_subdev_format * ) ;
int (*ldv_20_callback_enum_mbus_code)(struct v4l2_subdev * , struct v4l2_subdev_fh * ,
                                      struct v4l2_subdev_mbus_code_enum * ) ;
int (*ldv_20_callback_get_fmt)(struct v4l2_subdev * , struct v4l2_subdev_fh * , struct v4l2_subdev_format * ) ;
int (*ldv_9_callback_enum_mbus_code)(struct v4l2_subdev * , struct v4l2_subdev_fh * ,
                                     struct v4l2_subdev_mbus_code_enum * ) ;
int (*ldv_9_callback_get_fmt)(struct v4l2_subdev * , struct v4l2_subdev_fh * , struct v4l2_subdev_format * ) ;
int (*ldv_9_callback_s_stream)(struct v4l2_subdev * , int ) ;
int (*ldv_9_callback_set_fmt)(struct v4l2_subdev * , struct v4l2_subdev_fh * , struct v4l2_subdev_format * ) ;
int (*ldv_15_callback_enum_frame_size)(struct v4l2_subdev * , struct v4l2_subdev_fh * ,
                                       struct v4l2_subdev_frame_size_enum * ) = & hsit_enum_frame_size;
int (*ldv_15_callback_enum_mbus_code)(struct v4l2_subdev * , struct v4l2_subdev_fh * ,
                                      struct v4l2_subdev_mbus_code_enum * ) = & hsit_enum_mbus_code;
int (*ldv_15_callback_get_fmt)(struct v4l2_subdev * , struct v4l2_subdev_fh * , struct v4l2_subdev_format * ) = & hsit_get_format;
int (*ldv_16_callback_enum_frame_size)(struct v4l2_subdev * , struct v4l2_subdev_fh * ,
                                       struct v4l2_subdev_frame_size_enum * ) = & hsit_enum_frame_size;
int (*ldv_16_callback_enum_mbus_code)(struct v4l2_subdev * , struct v4l2_subdev_fh * ,
                                      struct v4l2_subdev_mbus_code_enum * ) = & hsit_enum_mbus_code;
int (*ldv_16_callback_get_fmt)(struct v4l2_subdev * , struct v4l2_subdev_fh * , struct v4l2_subdev_format * ) = & hsit_get_format;
int (*ldv_17_callback_enum_frame_size)(struct v4l2_subdev * , struct v4l2_subdev_fh * ,
                                       struct v4l2_subdev_frame_size_enum * ) = & hsit_enum_frame_size;
int (*ldv_17_callback_enum_mbus_code)(struct v4l2_subdev * , struct v4l2_subdev_fh * ,
                                      struct v4l2_subdev_mbus_code_enum * ) = & hsit_enum_mbus_code;
int (*ldv_17_callback_get_fmt)(struct v4l2_subdev * , struct v4l2_subdev_fh * , struct v4l2_subdev_format * ) = & hsit_get_format;
int (*ldv_18_callback_enum_frame_size)(struct v4l2_subdev * , struct v4l2_subdev_fh * ,
                                       struct v4l2_subdev_frame_size_enum * ) = & hsit_enum_frame_size;
int (*ldv_18_callback_enum_mbus_code)(struct v4l2_subdev * , struct v4l2_subdev_fh * ,
                                      struct v4l2_subdev_mbus_code_enum * ) = & hsit_enum_mbus_code;
int (*ldv_18_callback_get_fmt)(struct v4l2_subdev * , struct v4l2_subdev_fh * , struct v4l2_subdev_format * ) = & hsit_get_format;
int (*ldv_19_callback_enum_frame_size)(struct v4l2_subdev * , struct v4l2_subdev_fh * ,
                                       struct v4l2_subdev_frame_size_enum * ) = & hsit_enum_frame_size;
int (*ldv_19_callback_enum_mbus_code)(struct v4l2_subdev * , struct v4l2_subdev_fh * ,
                                      struct v4l2_subdev_mbus_code_enum * ) = & hsit_enum_mbus_code;
int (*ldv_19_callback_get_fmt)(struct v4l2_subdev * , struct v4l2_subdev_fh * , struct v4l2_subdev_format * ) = & hsit_get_format;
int (*ldv_20_callback_enum_frame_size)(struct v4l2_subdev * , struct v4l2_subdev_fh * ,
                                       struct v4l2_subdev_frame_size_enum * ) = & hsit_enum_frame_size;
int (*ldv_20_callback_enum_mbus_code)(struct v4l2_subdev * , struct v4l2_subdev_fh * ,
                                      struct v4l2_subdev_mbus_code_enum * ) = & hsit_enum_mbus_code;
int (*ldv_20_callback_get_fmt)(struct v4l2_subdev * , struct v4l2_subdev_fh * , struct v4l2_subdev_format * ) = & hsit_get_format;
int (*ldv_9_callback_enum_frame_size)(struct v4l2_subdev * , struct v4l2_subdev_fh * ,
                                      struct v4l2_subdev_frame_size_enum * ) = & hsit_enum_frame_size;
int (*ldv_9_callback_enum_mbus_code)(struct v4l2_subdev * , struct v4l2_subdev_fh * ,
                                     struct v4l2_subdev_mbus_code_enum * ) = & hsit_enum_mbus_code;
int (*ldv_9_callback_get_fmt)(struct v4l2_subdev * , struct v4l2_subdev_fh * , struct v4l2_subdev_format * ) = & hsit_get_format;
int (*ldv_9_callback_s_stream)(struct v4l2_subdev * , int ) = & hsit_s_stream;
int (*ldv_9_callback_set_fmt)(struct v4l2_subdev * , struct v4l2_subdev_fh * , struct v4l2_subdev_format * ) = & hsit_set_format;
void ldv_dummy_resourceless_instance_callback_15_3(int (*arg0)(struct v4l2_subdev * ,
                                                               struct v4l2_subdev_fh * ,
                                                               struct v4l2_subdev_frame_size_enum * ) ,
                                                   struct v4l2_subdev *arg1 , struct v4l2_subdev_fh *arg2 ,
                                                   struct v4l2_subdev_frame_size_enum *arg3 )
{
  {
  {
  hsit_enum_frame_size(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_15_7(int (*arg0)(struct v4l2_subdev * ,
                                                               struct v4l2_subdev_fh * ,
                                                               struct v4l2_subdev_mbus_code_enum * ) ,
                                                   struct v4l2_subdev *arg1 , struct v4l2_subdev_fh *arg2 ,
                                                   struct v4l2_subdev_mbus_code_enum *arg3 )
{
  {
  {
  hsit_enum_mbus_code(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_15_8(int (*arg0)(struct v4l2_subdev * ,
                                                               struct v4l2_subdev_fh * ,
                                                               struct v4l2_subdev_format * ) ,
                                                   struct v4l2_subdev *arg1 , struct v4l2_subdev_fh *arg2 ,
                                                   struct v4l2_subdev_format *arg3 )
{
  {
  {
  hsit_get_format(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_16_3(int (*arg0)(struct v4l2_subdev * ,
                                                               struct v4l2_subdev_fh * ,
                                                               struct v4l2_subdev_frame_size_enum * ) ,
                                                   struct v4l2_subdev *arg1 , struct v4l2_subdev_fh *arg2 ,
                                                   struct v4l2_subdev_frame_size_enum *arg3 )
{
  {
  {
  hsit_enum_frame_size(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_16_7(int (*arg0)(struct v4l2_subdev * ,
                                                               struct v4l2_subdev_fh * ,
                                                               struct v4l2_subdev_mbus_code_enum * ) ,
                                                   struct v4l2_subdev *arg1 , struct v4l2_subdev_fh *arg2 ,
                                                   struct v4l2_subdev_mbus_code_enum *arg3 )
{
  {
  {
  hsit_enum_mbus_code(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_16_8(int (*arg0)(struct v4l2_subdev * ,
                                                               struct v4l2_subdev_fh * ,
                                                               struct v4l2_subdev_format * ) ,
                                                   struct v4l2_subdev *arg1 , struct v4l2_subdev_fh *arg2 ,
                                                   struct v4l2_subdev_format *arg3 )
{
  {
  {
  hsit_get_format(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_17_3(int (*arg0)(struct v4l2_subdev * ,
                                                               struct v4l2_subdev_fh * ,
                                                               struct v4l2_subdev_frame_size_enum * ) ,
                                                   struct v4l2_subdev *arg1 , struct v4l2_subdev_fh *arg2 ,
                                                   struct v4l2_subdev_frame_size_enum *arg3 )
{
  {
  {
  hsit_enum_frame_size(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_17_7(int (*arg0)(struct v4l2_subdev * ,
                                                               struct v4l2_subdev_fh * ,
                                                               struct v4l2_subdev_mbus_code_enum * ) ,
                                                   struct v4l2_subdev *arg1 , struct v4l2_subdev_fh *arg2 ,
                                                   struct v4l2_subdev_mbus_code_enum *arg3 )
{
  {
  {
  hsit_enum_mbus_code(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_17_8(int (*arg0)(struct v4l2_subdev * ,
                                                               struct v4l2_subdev_fh * ,
                                                               struct v4l2_subdev_format * ) ,
                                                   struct v4l2_subdev *arg1 , struct v4l2_subdev_fh *arg2 ,
                                                   struct v4l2_subdev_format *arg3 )
{
  {
  {
  hsit_get_format(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_18_3(int (*arg0)(struct v4l2_subdev * ,
                                                               struct v4l2_subdev_fh * ,
                                                               struct v4l2_subdev_frame_size_enum * ) ,
                                                   struct v4l2_subdev *arg1 , struct v4l2_subdev_fh *arg2 ,
                                                   struct v4l2_subdev_frame_size_enum *arg3 )
{
  {
  {
  hsit_enum_frame_size(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_18_7(int (*arg0)(struct v4l2_subdev * ,
                                                               struct v4l2_subdev_fh * ,
                                                               struct v4l2_subdev_mbus_code_enum * ) ,
                                                   struct v4l2_subdev *arg1 , struct v4l2_subdev_fh *arg2 ,
                                                   struct v4l2_subdev_mbus_code_enum *arg3 )
{
  {
  {
  hsit_enum_mbus_code(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_18_8(int (*arg0)(struct v4l2_subdev * ,
                                                               struct v4l2_subdev_fh * ,
                                                               struct v4l2_subdev_format * ) ,
                                                   struct v4l2_subdev *arg1 , struct v4l2_subdev_fh *arg2 ,
                                                   struct v4l2_subdev_format *arg3 )
{
  {
  {
  hsit_get_format(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_19_3(int (*arg0)(struct v4l2_subdev * ,
                                                               struct v4l2_subdev_fh * ,
                                                               struct v4l2_subdev_frame_size_enum * ) ,
                                                   struct v4l2_subdev *arg1 , struct v4l2_subdev_fh *arg2 ,
                                                   struct v4l2_subdev_frame_size_enum *arg3 )
{
  {
  {
  hsit_enum_frame_size(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_19_7(int (*arg0)(struct v4l2_subdev * ,
                                                               struct v4l2_subdev_fh * ,
                                                               struct v4l2_subdev_mbus_code_enum * ) ,
                                                   struct v4l2_subdev *arg1 , struct v4l2_subdev_fh *arg2 ,
                                                   struct v4l2_subdev_mbus_code_enum *arg3 )
{
  {
  {
  hsit_enum_mbus_code(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_19_8(int (*arg0)(struct v4l2_subdev * ,
                                                               struct v4l2_subdev_fh * ,
                                                               struct v4l2_subdev_format * ) ,
                                                   struct v4l2_subdev *arg1 , struct v4l2_subdev_fh *arg2 ,
                                                   struct v4l2_subdev_format *arg3 )
{
  {
  {
  hsit_get_format(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_20_3(int (*arg0)(struct v4l2_subdev * ,
                                                               struct v4l2_subdev_fh * ,
                                                               struct v4l2_subdev_frame_size_enum * ) ,
                                                   struct v4l2_subdev *arg1 , struct v4l2_subdev_fh *arg2 ,
                                                   struct v4l2_subdev_frame_size_enum *arg3 )
{
  {
  {
  hsit_enum_frame_size(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_20_7(int (*arg0)(struct v4l2_subdev * ,
                                                               struct v4l2_subdev_fh * ,
                                                               struct v4l2_subdev_mbus_code_enum * ) ,
                                                   struct v4l2_subdev *arg1 , struct v4l2_subdev_fh *arg2 ,
                                                   struct v4l2_subdev_mbus_code_enum *arg3 )
{
  {
  {
  hsit_enum_mbus_code(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_20_8(int (*arg0)(struct v4l2_subdev * ,
                                                               struct v4l2_subdev_fh * ,
                                                               struct v4l2_subdev_format * ) ,
                                                   struct v4l2_subdev *arg1 , struct v4l2_subdev_fh *arg2 ,
                                                   struct v4l2_subdev_format *arg3 )
{
  {
  {
  hsit_get_format(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_9_13(int (*arg0)(struct v4l2_subdev * ,
                                                               int ) , struct v4l2_subdev *arg1 ,
                                                   int arg2 )
{
  {
  {
  hsit_s_stream(arg1, arg2);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_9_16(int (*arg0)(struct v4l2_subdev * ,
                                                               struct v4l2_subdev_fh * ,
                                                               struct v4l2_subdev_format * ) ,
                                                   struct v4l2_subdev *arg1 , struct v4l2_subdev_fh *arg2 ,
                                                   struct v4l2_subdev_format *arg3 )
{
  {
  {
  hsit_set_format(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_9_3(int (*arg0)(struct v4l2_subdev * ,
                                                              struct v4l2_subdev_fh * ,
                                                              struct v4l2_subdev_frame_size_enum * ) ,
                                                  struct v4l2_subdev *arg1 , struct v4l2_subdev_fh *arg2 ,
                                                  struct v4l2_subdev_frame_size_enum *arg3 )
{
  {
  {
  hsit_enum_frame_size(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_9_7(int (*arg0)(struct v4l2_subdev * ,
                                                              struct v4l2_subdev_fh * ,
                                                              struct v4l2_subdev_mbus_code_enum * ) ,
                                                  struct v4l2_subdev *arg1 , struct v4l2_subdev_fh *arg2 ,
                                                  struct v4l2_subdev_mbus_code_enum *arg3 )
{
  {
  {
  hsit_enum_mbus_code(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_9_8(int (*arg0)(struct v4l2_subdev * ,
                                                              struct v4l2_subdev_fh * ,
                                                              struct v4l2_subdev_format * ) ,
                                                  struct v4l2_subdev *arg1 , struct v4l2_subdev_fh *arg2 ,
                                                  struct v4l2_subdev_format *arg3 )
{
  {
  {
  hsit_get_format(arg1, arg2, arg3);
  }
  return;
}
}
static void *ldv_dev_get_drvdata_37___1(struct device const *dev )
{
  void *tmp ;
  {
  {
  tmp = ldv_dev_get_drvdata(dev);
  }
  return (tmp);
}
}
__inline static void *ERR_PTR(long error ) ;
static void *ldv_dev_get_drvdata_37___2(struct device const *dev ) ;
__inline static void *video_get_drvdata___3(struct video_device *vdev )
{
  void *tmp ;
  {
  {
  tmp = ldv_dev_get_drvdata_37___2((struct device const *)(& vdev->dev));
  }
  return (tmp);
}
}
__inline static struct v4l2_mbus_framefmt *v4l2_subdev_get_try_format___2(struct v4l2_subdev_fh *fh ,
                                                                          unsigned int pad )
{
  void *tmp ;
  long tmp___0 ;
  {
  {
  tmp = video_get_drvdata___3(fh->vfh.vdev);
  tmp___0 = ldv__builtin_expect(pad >= (unsigned int )((struct v4l2_subdev *)tmp)->entity.num_pads,
                             0L);
  }
  if (tmp___0 != 0L) {
    {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"include/media/v4l2-subdev.h"),
                         "i" (643), "i" (12UL));
    __builtin_unreachable();
    }
  } else {
  }
  return (& (fh->pad + (unsigned long )pad)->try_fmt);
}
}
__inline static struct vsp1_lif *to_lif(struct v4l2_subdev *subdev )
{
  struct v4l2_subdev const *__mptr ;
  {
  __mptr = (struct v4l2_subdev const *)subdev;
  return ((struct vsp1_lif *)__mptr + 0xffffffffffffffb0UL);
}
}
__inline static void vsp1_lif_write(struct vsp1_lif *lif , u32 reg , u32 data )
{
  {
  {
  vsp1_write(lif->entity.vsp1, reg, data);
  }
  return;
}
}
static int lif_s_stream(struct v4l2_subdev *subdev , int enable )
{
  struct v4l2_mbus_framefmt const *format ;
  struct vsp1_lif *lif ;
  struct vsp1_lif *tmp ;
  unsigned int hbth ;
  unsigned int obth ;
  unsigned int lbth ;
  unsigned int _min1 ;
  unsigned int _min2 ;
  {
  {
  tmp = to_lif(subdev);
  lif = tmp;
  hbth = 1300U;
  obth = 400U;
  lbth = 200U;
  }
  if (enable == 0) {
    {
    vsp1_lif_write(lif, 15104U, 0U);
    }
    return (0);
  } else {
  }
  {
  format = (struct v4l2_mbus_framefmt const *)lif->entity.formats + 1U;
  _min1 = obth;
  _min2 = (((unsigned int )format->width + 1U) / 2U) * (unsigned int )format->height - 4U;
  obth = _min1 < _min2 ? _min1 : _min2;
  vsp1_lif_write(lif, 15108U, (hbth << 16) | lbth);
  vsp1_lif_write(lif, 15104U, ((obth << 16) | ((unsigned int )format->code == 0U ? 16U : 0U)) | 3U);
  }
  return (0);
}
}
static int lif_enum_mbus_code(struct v4l2_subdev *subdev , struct v4l2_subdev_fh *fh ,
                              struct v4l2_subdev_mbus_code_enum *code )
{
  unsigned int codes[2U] ;
  struct v4l2_mbus_framefmt *format ;
  {
  codes[0] = 4109U;
  codes[1] = 8215U;
  if (code->pad == 0U) {
    if (code->index > 1U) {
      return (-22);
    } else {
    }
    code->code = codes[code->index];
  } else {
    if (code->index != 0U) {
      return (-22);
    } else {
    }
    {
    format = v4l2_subdev_get_try_format___2(fh, 0U);
    code->code = format->code;
    }
  }
  return (0);
}
}
static int lif_enum_frame_size(struct v4l2_subdev *subdev , struct v4l2_subdev_fh *fh ,
                               struct v4l2_subdev_frame_size_enum *fse )
{
  struct v4l2_mbus_framefmt *format ;
  {
  {
  format = v4l2_subdev_get_try_format___2(fh, 0U);
  }
  if (fse->index != 0U || fse->code != format->code) {
    return (-22);
  } else {
  }
  if (fse->pad == 0U) {
    fse->min_width = 2U;
    fse->max_width = 2048U;
    fse->min_height = 2U;
    fse->max_height = 2048U;
  } else {
    fse->min_width = format->width;
    fse->max_width = format->width;
    fse->min_height = format->height;
    fse->max_height = format->height;
  }
  return (0);
}
}
static int lif_get_format(struct v4l2_subdev *subdev , struct v4l2_subdev_fh *fh ,
                          struct v4l2_subdev_format *fmt )
{
  struct vsp1_lif *lif ;
  struct vsp1_lif *tmp ;
  struct v4l2_mbus_framefmt *tmp___0 ;
  {
  {
  tmp = to_lif(subdev);
  lif = tmp;
  tmp___0 = vsp1_entity_get_pad_format(& lif->entity, fh, fmt->pad, fmt->which);
  fmt->format = *tmp___0;
  }
  return (0);
}
}
static int lif_set_format(struct v4l2_subdev *subdev , struct v4l2_subdev_fh *fh ,
                          struct v4l2_subdev_format *fmt )
{
  struct vsp1_lif *lif ;
  struct vsp1_lif *tmp ;
  struct v4l2_mbus_framefmt *format ;
  unsigned int __val ;
  unsigned int __min ;
  unsigned int __max ;
  unsigned int __val___0 ;
  unsigned int __min___0 ;
  unsigned int __max___0 ;
  {
  {
  tmp = to_lif(subdev);
  lif = tmp;
  }
  if (fmt->format.code != 4109U && fmt->format.code != 8215U) {
    fmt->format.code = 8215U;
  } else {
  }
  {
  format = vsp1_entity_get_pad_format(& lif->entity, fh, fmt->pad, fmt->which);
  }
  if (fmt->pad == 1U) {
    fmt->format = *format;
    return (0);
  } else {
  }
  {
  format->code = fmt->format.code;
  __val = fmt->format.width;
  __min = 2U;
  __max = 2048U;
  __val = __min > __val ? __min : __val;
  format->width = __max < __val ? __max : __val;
  __val___0 = fmt->format.height;
  __min___0 = 2U;
  __max___0 = 2048U;
  __val___0 = __min___0 > __val___0 ? __min___0 : __val___0;
  format->height = __max___0 < __val___0 ? __max___0 : __val___0;
  format->field = 1U;
  format->colorspace = 8U;
  fmt->format = *format;
  format = vsp1_entity_get_pad_format(& lif->entity, fh, 1U, fmt->which);
  *format = fmt->format;
  }
  return (0);
}
}
static struct v4l2_subdev_video_ops lif_video_ops =
     {0, 0, 0, 0, 0, 0, 0, & lif_s_stream, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    0, 0, 0, 0, 0, 0, 0, 0};
static struct v4l2_subdev_pad_ops lif_pad_ops =
     {& lif_enum_mbus_code, & lif_enum_frame_size, 0, & lif_get_format, & lif_set_format,
    0, 0, 0, 0, 0, 0, 0, 0, 0};
static struct v4l2_subdev_ops lif_ops =
     {0, 0, 0, (struct v4l2_subdev_video_ops const *)(& lif_video_ops), 0, 0, 0, (struct v4l2_subdev_pad_ops const *)(& lif_pad_ops)};
struct vsp1_lif *vsp1_lif_create(struct vsp1_device *vsp1 )
{
  struct v4l2_subdev *subdev ;
  struct vsp1_lif *lif ;
  int ret ;
  void *tmp ;
  void *tmp___0 ;
  void *tmp___1 ;
  char const *tmp___2 ;
  {
  {
  tmp = devm_kzalloc(vsp1->dev, 392UL, 208U);
  lif = (struct vsp1_lif *)tmp;
  }
  if ((unsigned long )lif == (unsigned long )((struct vsp1_lif *)0)) {
    {
    tmp___0 = ERR_PTR(-12L);
    }
    return ((struct vsp1_lif *)tmp___0);
  } else {
  }
  {
  lif->entity.type = 2;
  lif->entity.id = 55U;
  ret = vsp1_entity_init(vsp1, & lif->entity, 2U);
  }
  if (ret < 0) {
    {
    tmp___1 = ERR_PTR((long )ret);
    }
    return ((struct vsp1_lif *)tmp___1);
  } else {
  }
  {
  subdev = & lif->entity.subdev;
  v4l2_subdev_init(subdev, (struct v4l2_subdev_ops const *)(& lif_ops));
  subdev->entity.ops = & vsp1_media_ops;
  subdev->internal_ops = & vsp1_subdev_internal_ops;
  tmp___2 = dev_name((struct device const *)vsp1->dev);
  snprintf((char *)(& subdev->name), 32UL, "%s lif", tmp___2);
  v4l2_set_subdevdata(subdev, (void *)lif);
  subdev->flags = subdev->flags | 4U;
  vsp1_entity_init_formats(subdev, (struct v4l2_subdev_fh *)0);
  }
  return (lif);
}
}
void ldv_dummy_resourceless_instance_callback_10_16(int (*arg0)(struct v4l2_subdev * ,
                                                                struct v4l2_subdev_fh * ,
                                                                struct v4l2_subdev_format * ) ,
                                                    struct v4l2_subdev *arg1 , struct v4l2_subdev_fh *arg2 ,
                                                    struct v4l2_subdev_format *arg3 ) ;
void ldv_dummy_resourceless_instance_callback_10_7(int (*arg0)(struct v4l2_subdev * ,
                                                               struct v4l2_subdev_fh * ,
                                                               struct v4l2_subdev_mbus_code_enum * ) ,
                                                   struct v4l2_subdev *arg1 , struct v4l2_subdev_fh *arg2 ,
                                                   struct v4l2_subdev_mbus_code_enum *arg3 ) ;
void ldv_dummy_resourceless_instance_callback_10_8(int (*arg0)(struct v4l2_subdev * ,
                                                               struct v4l2_subdev_fh * ,
                                                               struct v4l2_subdev_format * ) ,
                                                   struct v4l2_subdev *arg1 , struct v4l2_subdev_fh *arg2 ,
                                                   struct v4l2_subdev_format *arg3 ) ;
void ldv_dummy_resourceless_instance_callback_15_13(int (*arg0)(struct v4l2_subdev * ,
                                                                int ) , struct v4l2_subdev *arg1 ,
                                                    int arg2 ) ;
int (*ldv_10_callback_enum_mbus_code)(struct v4l2_subdev * , struct v4l2_subdev_fh * ,
                                      struct v4l2_subdev_mbus_code_enum * ) ;
int (*ldv_10_callback_get_fmt)(struct v4l2_subdev * , struct v4l2_subdev_fh * , struct v4l2_subdev_format * ) ;
int (*ldv_10_callback_set_fmt)(struct v4l2_subdev * , struct v4l2_subdev_fh * , struct v4l2_subdev_format * ) ;
int (*ldv_15_callback_s_stream)(struct v4l2_subdev * , int ) ;
int (*ldv_10_callback_enum_frame_size)(struct v4l2_subdev * , struct v4l2_subdev_fh * ,
                                       struct v4l2_subdev_frame_size_enum * ) = & lif_enum_frame_size;
int (*ldv_10_callback_enum_mbus_code)(struct v4l2_subdev * , struct v4l2_subdev_fh * ,
                                      struct v4l2_subdev_mbus_code_enum * ) = & lif_enum_mbus_code;
int (*ldv_10_callback_get_fmt)(struct v4l2_subdev * , struct v4l2_subdev_fh * , struct v4l2_subdev_format * ) = & lif_get_format;
int (*ldv_10_callback_set_fmt)(struct v4l2_subdev * , struct v4l2_subdev_fh * , struct v4l2_subdev_format * ) = & lif_set_format;
int (*ldv_15_callback_s_stream)(struct v4l2_subdev * , int ) = & lif_s_stream;
void ldv_dummy_resourceless_instance_callback_10_16(int (*arg0)(struct v4l2_subdev * ,
                                                                struct v4l2_subdev_fh * ,
                                                                struct v4l2_subdev_format * ) ,
                                                    struct v4l2_subdev *arg1 , struct v4l2_subdev_fh *arg2 ,
                                                    struct v4l2_subdev_format *arg3 )
{
  {
  {
  lif_set_format(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_10_3(int (*arg0)(struct v4l2_subdev * ,
                                                               struct v4l2_subdev_fh * ,
                                                               struct v4l2_subdev_frame_size_enum * ) ,
                                                   struct v4l2_subdev *arg1 , struct v4l2_subdev_fh *arg2 ,
                                                   struct v4l2_subdev_frame_size_enum *arg3 )
{
  {
  {
  lif_enum_frame_size(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_10_7(int (*arg0)(struct v4l2_subdev * ,
                                                               struct v4l2_subdev_fh * ,
                                                               struct v4l2_subdev_mbus_code_enum * ) ,
                                                   struct v4l2_subdev *arg1 , struct v4l2_subdev_fh *arg2 ,
                                                   struct v4l2_subdev_mbus_code_enum *arg3 )
{
  {
  {
  lif_enum_mbus_code(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_10_8(int (*arg0)(struct v4l2_subdev * ,
                                                               struct v4l2_subdev_fh * ,
                                                               struct v4l2_subdev_format * ) ,
                                                   struct v4l2_subdev *arg1 , struct v4l2_subdev_fh *arg2 ,
                                                   struct v4l2_subdev_format *arg3 )
{
  {
  {
  lif_get_format(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_15_13(int (*arg0)(struct v4l2_subdev * ,
                                                                int ) , struct v4l2_subdev *arg1 ,
                                                    int arg2 )
{
  {
  {
  lif_s_stream(arg1, arg2);
  }
  return;
}
}
static void *ldv_dev_get_drvdata_37___2(struct device const *dev )
{
  void *tmp ;
  {
  {
  tmp = ldv_dev_get_drvdata(dev);
  }
  return (tmp);
}
}
extern void *memcpy(void * , void const * , size_t ) ;
__inline static void *ERR_PTR(long error ) ;
__inline static void memcpy_toio(void volatile *dst , void const *src , size_t count )
{
  {
  {
  memcpy((void *)dst, src, count);
  }
  return;
}
}
static void *ldv_dev_get_drvdata_37___3(struct device const *dev ) ;
__inline static void *video_get_drvdata___4(struct video_device *vdev )
{
  void *tmp ;
  {
  {
  tmp = ldv_dev_get_drvdata_37___3((struct device const *)(& vdev->dev));
  }
  return (tmp);
}
}
__inline static struct v4l2_mbus_framefmt *v4l2_subdev_get_try_format___3(struct v4l2_subdev_fh *fh ,
                                                                          unsigned int pad )
{
  void *tmp ;
  long tmp___0 ;
  {
  {
  tmp = video_get_drvdata___4(fh->vfh.vdev);
  tmp___0 = ldv__builtin_expect(pad >= (unsigned int )((struct v4l2_subdev *)tmp)->entity.num_pads,
                             0L);
  }
  if (tmp___0 != 0L) {
    {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"include/media/v4l2-subdev.h"),
                         "i" (643), "i" (12UL));
    __builtin_unreachable();
    }
  } else {
  }
  return (& (fh->pad + (unsigned long )pad)->try_fmt);
}
}
__inline static struct vsp1_lut *to_lut(struct v4l2_subdev *subdev )
{
  struct v4l2_subdev const *__mptr ;
  {
  __mptr = (struct v4l2_subdev const *)subdev;
  return ((struct vsp1_lut *)__mptr + 0xffffffffffffffb0UL);
}
}
__inline static void vsp1_lut_write(struct vsp1_lut *lut , u32 reg , u32 data )
{
  {
  {
  vsp1_write(lut->entity.vsp1, reg, data);
  }
  return;
}
}
static void lut_configure(struct vsp1_lut *lut , struct vsp1_lut_config *config )
{
  {
  {
  memcpy_toio((void volatile *)(lut->entity.vsp1)->mmio + 28672U, (void const *)(& config->lut),
              1024UL);
  }
  return;
}
}
static long lut_ioctl(struct v4l2_subdev *subdev , unsigned int cmd , void *arg )
{
  struct vsp1_lut *lut ;
  struct vsp1_lut *tmp ;
  {
  {
  tmp = to_lut(subdev);
  lut = tmp;
  }
  {
  if (cmd == 3288356545U) {
    goto case_3288356545;
  } else {
  }
  goto switch_default;
  case_3288356545:
  {
  lut_configure(lut, (struct vsp1_lut_config *)arg);
  }
  return (0L);
  switch_default: ;
  return (-515L);
  switch_break: ;
  }
}
}
static int lut_s_stream(struct v4l2_subdev *subdev , int enable )
{
  struct vsp1_lut *lut ;
  struct vsp1_lut *tmp ;
  {
  {
  tmp = to_lut(subdev);
  lut = tmp;
  }
  if (enable == 0) {
    return (0);
  } else {
  }
  {
  vsp1_lut_write(lut, 10240U, 1U);
  }
  return (0);
}
}
static int lut_enum_mbus_code(struct v4l2_subdev *subdev , struct v4l2_subdev_fh *fh ,
                              struct v4l2_subdev_mbus_code_enum *code )
{
  unsigned int codes[3U] ;
  struct v4l2_mbus_framefmt *format ;
  {
  codes[0] = 4109U;
  codes[1] = 24577U;
  codes[2] = 8215U;
  if (code->pad == 0U) {
    if (code->index > 2U) {
      return (-22);
    } else {
    }
    code->code = codes[code->index];
  } else {
    if (code->index != 0U) {
      return (-22);
    } else {
    }
    {
    format = v4l2_subdev_get_try_format___3(fh, 0U);
    code->code = format->code;
    }
  }
  return (0);
}
}
static int lut_enum_frame_size(struct v4l2_subdev *subdev , struct v4l2_subdev_fh *fh ,
                               struct v4l2_subdev_frame_size_enum *fse )
{
  struct v4l2_mbus_framefmt *format ;
  {
  {
  format = v4l2_subdev_get_try_format___3(fh, fse->pad);
  }
  if (fse->index != 0U || fse->code != format->code) {
    return (-22);
  } else {
  }
  if (fse->pad == 0U) {
    fse->min_width = 4U;
    fse->max_width = 8190U;
    fse->min_height = 4U;
    fse->max_height = 8190U;
  } else {
    fse->min_width = format->width;
    fse->max_width = format->width;
    fse->min_height = format->height;
    fse->max_height = format->height;
  }
  return (0);
}
}
static int lut_get_format(struct v4l2_subdev *subdev , struct v4l2_subdev_fh *fh ,
                          struct v4l2_subdev_format *fmt )
{
  struct vsp1_lut *lut ;
  struct vsp1_lut *tmp ;
  struct v4l2_mbus_framefmt *tmp___0 ;
  {
  {
  tmp = to_lut(subdev);
  lut = tmp;
  tmp___0 = vsp1_entity_get_pad_format(& lut->entity, fh, fmt->pad, fmt->which);
  fmt->format = *tmp___0;
  }
  return (0);
}
}
static int lut_set_format(struct v4l2_subdev *subdev , struct v4l2_subdev_fh *fh ,
                          struct v4l2_subdev_format *fmt )
{
  struct vsp1_lut *lut ;
  struct vsp1_lut *tmp ;
  struct v4l2_mbus_framefmt *format ;
  unsigned int __val ;
  unsigned int __min ;
  unsigned int __max ;
  unsigned int __val___0 ;
  unsigned int __min___0 ;
  unsigned int __max___0 ;
  {
  {
  tmp = to_lut(subdev);
  lut = tmp;
  }
  if ((fmt->format.code != 4109U && fmt->format.code != 24577U) && fmt->format.code != 8215U) {
    fmt->format.code = 8215U;
  } else {
  }
  {
  format = vsp1_entity_get_pad_format(& lut->entity, fh, fmt->pad, fmt->which);
  }
  if (fmt->pad == 1U) {
    fmt->format = *format;
    return (0);
  } else {
  }
  {
  __val = fmt->format.width;
  __min = 4U;
  __max = 8190U;
  __val = __min > __val ? __min : __val;
  format->width = __max < __val ? __max : __val;
  __val___0 = fmt->format.height;
  __min___0 = 4U;
  __max___0 = 8190U;
  __val___0 = __min___0 > __val___0 ? __min___0 : __val___0;
  format->height = __max___0 < __val___0 ? __max___0 : __val___0;
  format->field = 1U;
  format->colorspace = 8U;
  fmt->format = *format;
  format = vsp1_entity_get_pad_format(& lut->entity, fh, 1U, fmt->which);
  *format = fmt->format;
  }
  return (0);
}
}
static struct v4l2_subdev_core_ops lut_core_ops =
     {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, & lut_ioctl, 0, 0, 0, 0, 0, 0};
static struct v4l2_subdev_video_ops lut_video_ops =
     {0, 0, 0, 0, 0, 0, 0, & lut_s_stream, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    0, 0, 0, 0, 0, 0, 0, 0};
static struct v4l2_subdev_pad_ops lut_pad_ops =
     {& lut_enum_mbus_code, & lut_enum_frame_size, 0, & lut_get_format, & lut_set_format,
    0, 0, 0, 0, 0, 0, 0, 0, 0};
static struct v4l2_subdev_ops lut_ops =
     {(struct v4l2_subdev_core_ops const *)(& lut_core_ops), 0, 0, (struct v4l2_subdev_video_ops const *)(& lut_video_ops),
    0, 0, 0, (struct v4l2_subdev_pad_ops const *)(& lut_pad_ops)};
struct vsp1_lut *vsp1_lut_create(struct vsp1_device *vsp1 )
{
  struct v4l2_subdev *subdev ;
  struct vsp1_lut *lut ;
  int ret ;
  void *tmp ;
  void *tmp___0 ;
  void *tmp___1 ;
  char const *tmp___2 ;
  {
  {
  tmp = devm_kzalloc(vsp1->dev, 1416UL, 208U);
  lut = (struct vsp1_lut *)tmp;
  }
  if ((unsigned long )lut == (unsigned long )((struct vsp1_lut *)0)) {
    {
    tmp___0 = ERR_PTR(-12L);
    }
    return ((struct vsp1_lut *)tmp___0);
  } else {
  }
  {
  lut->entity.type = 3;
  lut->entity.id = 22U;
  ret = vsp1_entity_init(vsp1, & lut->entity, 2U);
  }
  if (ret < 0) {
    {
    tmp___1 = ERR_PTR((long )ret);
    }
    return ((struct vsp1_lut *)tmp___1);
  } else {
  }
  {
  subdev = & lut->entity.subdev;
  v4l2_subdev_init(subdev, (struct v4l2_subdev_ops const *)(& lut_ops));
  subdev->entity.ops = & vsp1_media_ops;
  subdev->internal_ops = & vsp1_subdev_internal_ops;
  tmp___2 = dev_name((struct device const *)vsp1->dev);
  snprintf((char *)(& subdev->name), 32UL, "%s lut", tmp___2);
  v4l2_set_subdevdata(subdev, (void *)lut);
  subdev->flags = subdev->flags | 4U;
  vsp1_entity_init_formats(subdev, (struct v4l2_subdev_fh *)0);
  }
  return (lut);
}
}
void ldv_dummy_resourceless_instance_callback_10_10(long (*arg0)(struct v4l2_subdev * ,
                                                                 unsigned int , void * ) ,
                                                    struct v4l2_subdev *arg1 , unsigned int arg2 ,
                                                    void *arg3 ) ;
void ldv_dummy_resourceless_instance_callback_11_10(long (*arg0)(struct v4l2_subdev * ,
                                                                 unsigned int , void * ) ,
                                                    struct v4l2_subdev *arg1 , unsigned int arg2 ,
                                                    void *arg3 ) ;
void ldv_dummy_resourceless_instance_callback_11_16(int (*arg0)(struct v4l2_subdev * ,
                                                                struct v4l2_subdev_fh * ,
                                                                struct v4l2_subdev_format * ) ,
                                                    struct v4l2_subdev *arg1 , struct v4l2_subdev_fh *arg2 ,
                                                    struct v4l2_subdev_format *arg3 ) ;
void ldv_dummy_resourceless_instance_callback_11_7(int (*arg0)(struct v4l2_subdev * ,
                                                               struct v4l2_subdev_fh * ,
                                                               struct v4l2_subdev_mbus_code_enum * ) ,
                                                   struct v4l2_subdev *arg1 , struct v4l2_subdev_fh *arg2 ,
                                                   struct v4l2_subdev_mbus_code_enum *arg3 ) ;
void ldv_dummy_resourceless_instance_callback_11_8(int (*arg0)(struct v4l2_subdev * ,
                                                               struct v4l2_subdev_fh * ,
                                                               struct v4l2_subdev_format * ) ,
                                                   struct v4l2_subdev *arg1 , struct v4l2_subdev_fh *arg2 ,
                                                   struct v4l2_subdev_format *arg3 ) ;
void ldv_dummy_resourceless_instance_callback_12_10(long (*arg0)(struct v4l2_subdev * ,
                                                                 unsigned int , void * ) ,
                                                    struct v4l2_subdev *arg1 , unsigned int arg2 ,
                                                    void *arg3 ) ;
void ldv_dummy_resourceless_instance_callback_13_10(long (*arg0)(struct v4l2_subdev * ,
                                                                 unsigned int , void * ) ,
                                                    struct v4l2_subdev *arg1 , unsigned int arg2 ,
                                                    void *arg3 ) ;
void ldv_dummy_resourceless_instance_callback_14_10(long (*arg0)(struct v4l2_subdev * ,
                                                                 unsigned int , void * ) ,
                                                    struct v4l2_subdev *arg1 , unsigned int arg2 ,
                                                    void *arg3 ) ;
void ldv_dummy_resourceless_instance_callback_15_10(long (*arg0)(struct v4l2_subdev * ,
                                                                 unsigned int , void * ) ,
                                                    struct v4l2_subdev *arg1 , unsigned int arg2 ,
                                                    void *arg3 ) ;
void ldv_dummy_resourceless_instance_callback_16_10(long (*arg0)(struct v4l2_subdev * ,
                                                                 unsigned int , void * ) ,
                                                    struct v4l2_subdev *arg1 , unsigned int arg2 ,
                                                    void *arg3 ) ;
void ldv_dummy_resourceless_instance_callback_16_13(int (*arg0)(struct v4l2_subdev * ,
                                                                int ) , struct v4l2_subdev *arg1 ,
                                                    int arg2 ) ;
void ldv_dummy_resourceless_instance_callback_17_10(long (*arg0)(struct v4l2_subdev * ,
                                                                 unsigned int , void * ) ,
                                                    struct v4l2_subdev *arg1 , unsigned int arg2 ,
                                                    void *arg3 ) ;
void ldv_dummy_resourceless_instance_callback_18_10(long (*arg0)(struct v4l2_subdev * ,
                                                                 unsigned int , void * ) ,
                                                    struct v4l2_subdev *arg1 , unsigned int arg2 ,
                                                    void *arg3 ) ;
void ldv_dummy_resourceless_instance_callback_19_10(long (*arg0)(struct v4l2_subdev * ,
                                                                 unsigned int , void * ) ,
                                                    struct v4l2_subdev *arg1 , unsigned int arg2 ,
                                                    void *arg3 ) ;
void ldv_dummy_resourceless_instance_callback_20_10(long (*arg0)(struct v4l2_subdev * ,
                                                                 unsigned int , void * ) ,
                                                    struct v4l2_subdev *arg1 , unsigned int arg2 ,
                                                    void *arg3 ) ;
void ldv_dummy_resourceless_instance_callback_9_10(long (*arg0)(struct v4l2_subdev * ,
                                                                unsigned int , void * ) ,
                                                   struct v4l2_subdev *arg1 , unsigned int arg2 ,
                                                   void *arg3 ) ;
long (*ldv_10_callback_ioctl)(struct v4l2_subdev * , unsigned int , void * ) ;
int (*ldv_11_callback_enum_mbus_code)(struct v4l2_subdev * , struct v4l2_subdev_fh * ,
                                      struct v4l2_subdev_mbus_code_enum * ) ;
int (*ldv_11_callback_get_fmt)(struct v4l2_subdev * , struct v4l2_subdev_fh * , struct v4l2_subdev_format * ) ;
long (*ldv_11_callback_ioctl)(struct v4l2_subdev * , unsigned int , void * ) ;
int (*ldv_11_callback_set_fmt)(struct v4l2_subdev * , struct v4l2_subdev_fh * , struct v4l2_subdev_format * ) ;
long (*ldv_12_callback_ioctl)(struct v4l2_subdev * , unsigned int , void * ) ;
long (*ldv_13_callback_ioctl)(struct v4l2_subdev * , unsigned int , void * ) ;
long (*ldv_14_callback_ioctl)(struct v4l2_subdev * , unsigned int , void * ) ;
long (*ldv_15_callback_ioctl)(struct v4l2_subdev * , unsigned int , void * ) ;
long (*ldv_16_callback_ioctl)(struct v4l2_subdev * , unsigned int , void * ) ;
int (*ldv_16_callback_s_stream)(struct v4l2_subdev * , int ) ;
long (*ldv_17_callback_ioctl)(struct v4l2_subdev * , unsigned int , void * ) ;
long (*ldv_18_callback_ioctl)(struct v4l2_subdev * , unsigned int , void * ) ;
long (*ldv_19_callback_ioctl)(struct v4l2_subdev * , unsigned int , void * ) ;
long (*ldv_20_callback_ioctl)(struct v4l2_subdev * , unsigned int , void * ) ;
long (*ldv_9_callback_ioctl)(struct v4l2_subdev * , unsigned int , void * ) ;
long (*ldv_10_callback_ioctl)(struct v4l2_subdev * , unsigned int , void * ) = & lut_ioctl;
int (*ldv_11_callback_enum_frame_size)(struct v4l2_subdev * , struct v4l2_subdev_fh * ,
                                       struct v4l2_subdev_frame_size_enum * ) = & lut_enum_frame_size;
int (*ldv_11_callback_enum_mbus_code)(struct v4l2_subdev * , struct v4l2_subdev_fh * ,
                                      struct v4l2_subdev_mbus_code_enum * ) = & lut_enum_mbus_code;
int (*ldv_11_callback_get_fmt)(struct v4l2_subdev * , struct v4l2_subdev_fh * , struct v4l2_subdev_format * ) = & lut_get_format;
long (*ldv_11_callback_ioctl)(struct v4l2_subdev * , unsigned int , void * ) = & lut_ioctl;
int (*ldv_11_callback_set_fmt)(struct v4l2_subdev * , struct v4l2_subdev_fh * , struct v4l2_subdev_format * ) = & lut_set_format;
long (*ldv_12_callback_ioctl)(struct v4l2_subdev * , unsigned int , void * ) = & lut_ioctl;
long (*ldv_13_callback_ioctl)(struct v4l2_subdev * , unsigned int , void * ) = & lut_ioctl;
long (*ldv_14_callback_ioctl)(struct v4l2_subdev * , unsigned int , void * ) = & lut_ioctl;
long (*ldv_15_callback_ioctl)(struct v4l2_subdev * , unsigned int , void * ) = & lut_ioctl;
long (*ldv_16_callback_ioctl)(struct v4l2_subdev * , unsigned int , void * ) = & lut_ioctl;
int (*ldv_16_callback_s_stream)(struct v4l2_subdev * , int ) = & lut_s_stream;
long (*ldv_17_callback_ioctl)(struct v4l2_subdev * , unsigned int , void * ) = & lut_ioctl;
long (*ldv_18_callback_ioctl)(struct v4l2_subdev * , unsigned int , void * ) = & lut_ioctl;
long (*ldv_19_callback_ioctl)(struct v4l2_subdev * , unsigned int , void * ) = & lut_ioctl;
long (*ldv_20_callback_ioctl)(struct v4l2_subdev * , unsigned int , void * ) = & lut_ioctl;
long (*ldv_9_callback_ioctl)(struct v4l2_subdev * , unsigned int , void * ) = & lut_ioctl;
void ldv_dummy_resourceless_instance_callback_10_10(long (*arg0)(struct v4l2_subdev * ,
                                                                 unsigned int , void * ) ,
                                                    struct v4l2_subdev *arg1 , unsigned int arg2 ,
                                                    void *arg3 )
{
  {
  {
  lut_ioctl(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_11_10(long (*arg0)(struct v4l2_subdev * ,
                                                                 unsigned int , void * ) ,
                                                    struct v4l2_subdev *arg1 , unsigned int arg2 ,
                                                    void *arg3 )
{
  {
  {
  lut_ioctl(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_11_16(int (*arg0)(struct v4l2_subdev * ,
                                                                struct v4l2_subdev_fh * ,
                                                                struct v4l2_subdev_format * ) ,
                                                    struct v4l2_subdev *arg1 , struct v4l2_subdev_fh *arg2 ,
                                                    struct v4l2_subdev_format *arg3 )
{
  {
  {
  lut_set_format(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_11_3(int (*arg0)(struct v4l2_subdev * ,
                                                               struct v4l2_subdev_fh * ,
                                                               struct v4l2_subdev_frame_size_enum * ) ,
                                                   struct v4l2_subdev *arg1 , struct v4l2_subdev_fh *arg2 ,
                                                   struct v4l2_subdev_frame_size_enum *arg3 )
{
  {
  {
  lut_enum_frame_size(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_11_7(int (*arg0)(struct v4l2_subdev * ,
                                                               struct v4l2_subdev_fh * ,
                                                               struct v4l2_subdev_mbus_code_enum * ) ,
                                                   struct v4l2_subdev *arg1 , struct v4l2_subdev_fh *arg2 ,
                                                   struct v4l2_subdev_mbus_code_enum *arg3 )
{
  {
  {
  lut_enum_mbus_code(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_11_8(int (*arg0)(struct v4l2_subdev * ,
                                                               struct v4l2_subdev_fh * ,
                                                               struct v4l2_subdev_format * ) ,
                                                   struct v4l2_subdev *arg1 , struct v4l2_subdev_fh *arg2 ,
                                                   struct v4l2_subdev_format *arg3 )
{
  {
  {
  lut_get_format(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_12_10(long (*arg0)(struct v4l2_subdev * ,
                                                                 unsigned int , void * ) ,
                                                    struct v4l2_subdev *arg1 , unsigned int arg2 ,
                                                    void *arg3 )
{
  {
  {
  lut_ioctl(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_13_10(long (*arg0)(struct v4l2_subdev * ,
                                                                 unsigned int , void * ) ,
                                                    struct v4l2_subdev *arg1 , unsigned int arg2 ,
                                                    void *arg3 )
{
  {
  {
  lut_ioctl(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_14_10(long (*arg0)(struct v4l2_subdev * ,
                                                                 unsigned int , void * ) ,
                                                    struct v4l2_subdev *arg1 , unsigned int arg2 ,
                                                    void *arg3 )
{
  {
  {
  lut_ioctl(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_15_10(long (*arg0)(struct v4l2_subdev * ,
                                                                 unsigned int , void * ) ,
                                                    struct v4l2_subdev *arg1 , unsigned int arg2 ,
                                                    void *arg3 )
{
  {
  {
  lut_ioctl(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_16_10(long (*arg0)(struct v4l2_subdev * ,
                                                                 unsigned int , void * ) ,
                                                    struct v4l2_subdev *arg1 , unsigned int arg2 ,
                                                    void *arg3 )
{
  {
  {
  lut_ioctl(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_16_13(int (*arg0)(struct v4l2_subdev * ,
                                                                int ) , struct v4l2_subdev *arg1 ,
                                                    int arg2 )
{
  {
  {
  lut_s_stream(arg1, arg2);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_17_10(long (*arg0)(struct v4l2_subdev * ,
                                                                 unsigned int , void * ) ,
                                                    struct v4l2_subdev *arg1 , unsigned int arg2 ,
                                                    void *arg3 )
{
  {
  {
  lut_ioctl(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_18_10(long (*arg0)(struct v4l2_subdev * ,
                                                                 unsigned int , void * ) ,
                                                    struct v4l2_subdev *arg1 , unsigned int arg2 ,
                                                    void *arg3 )
{
  {
  {
  lut_ioctl(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_19_10(long (*arg0)(struct v4l2_subdev * ,
                                                                 unsigned int , void * ) ,
                                                    struct v4l2_subdev *arg1 , unsigned int arg2 ,
                                                    void *arg3 )
{
  {
  {
  lut_ioctl(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_20_10(long (*arg0)(struct v4l2_subdev * ,
                                                                 unsigned int , void * ) ,
                                                    struct v4l2_subdev *arg1 , unsigned int arg2 ,
                                                    void *arg3 )
{
  {
  {
  lut_ioctl(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_9_10(long (*arg0)(struct v4l2_subdev * ,
                                                                unsigned int , void * ) ,
                                                   struct v4l2_subdev *arg1 , unsigned int arg2 ,
                                                   void *arg3 )
{
  {
  {
  lut_ioctl(arg1, arg2, arg3);
  }
  return;
}
}
static void *ldv_dev_get_drvdata_37___3(struct device const *dev )
{
  void *tmp ;
  {
  {
  tmp = ldv_dev_get_drvdata(dev);
  }
  return (tmp);
}
}
__inline static void *ERR_PTR(long error ) ;
static void *ldv_dev_get_drvdata_37___4(struct device const *dev ) ;
__inline static void *video_get_drvdata___5(struct video_device *vdev )
{
  void *tmp ;
  {
  {
  tmp = ldv_dev_get_drvdata_37___4((struct device const *)(& vdev->dev));
  }
  return (tmp);
}
}
__inline static struct v4l2_mbus_framefmt *v4l2_subdev_get_try_format___4(struct v4l2_subdev_fh *fh ,
                                                                          unsigned int pad )
{
  void *tmp ;
  long tmp___0 ;
  {
  {
  tmp = video_get_drvdata___5(fh->vfh.vdev);
  tmp___0 = ldv__builtin_expect(pad >= (unsigned int )((struct v4l2_subdev *)tmp)->entity.num_pads,
                             0L);
  }
  if (tmp___0 != 0L) {
    {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"include/media/v4l2-subdev.h"),
                         "i" (643), "i" (12UL));
    __builtin_unreachable();
    }
  } else {
  }
  return (& (fh->pad + (unsigned long )pad)->try_fmt);
}
}
extern int v4l2_ctrl_handler_init_class(struct v4l2_ctrl_handler * , unsigned int ,
                                        struct lock_class_key * , char const * ) ;
extern int v4l2_ctrl_handler_setup(struct v4l2_ctrl_handler * ) ;
extern struct v4l2_ctrl *v4l2_ctrl_new_custom(struct v4l2_ctrl_handler * , struct v4l2_ctrl_config const * ,
                                              void * ) ;
__inline static struct vsp1_sru *to_sru(struct v4l2_subdev *subdev )
{
  struct v4l2_subdev const *__mptr ;
  {
  __mptr = (struct v4l2_subdev const *)subdev;
  return ((struct vsp1_sru *)__mptr + 0xffffffffffffffb0UL);
}
}
__inline static void vsp1_sru_write(struct vsp1_sru *sru , u32 reg , u32 data )
{
  {
  {
  vsp1_write(sru->entity.vsp1, reg, data);
  }
  return;
}
}
static int sru_s_ctrl(struct v4l2_ctrl *ctrl )
{
  struct vsp1_sru *sru ;
  struct v4l2_ctrl_handler const *__mptr ;
  {
  __mptr = (struct v4l2_ctrl_handler const *)ctrl->handler;
  sru = (struct vsp1_sru *)__mptr + 0xfffffffffffffe78UL;
  {
  if (ctrl->id == 9963777U) {
    goto case_9963777;
  } else {
  }
  goto switch_break;
  case_9963777:
  sru->intensity = (unsigned int )ctrl->__annonCompField82.val;
  goto ldv_28698;
  switch_break: ;
  }
  ldv_28698: ;
  return (0);
}
}
static struct v4l2_ctrl_ops const sru_ctrl_ops = {0, 0, & sru_s_ctrl};
static struct v4l2_ctrl_config const sru_intensity_control =
     {& sru_ctrl_ops, 9963777U, "Intensity", 1, 1, 6, 1U, 0, 0U, 0U, 0, 0, 0U};
static struct vsp1_sru_param const vsp1_sru_params[6U] = { {16778241U, 1583359U},
        {16778241U, 528639U},
        {25167105U, 2374911U},
        {25167105U, 793599U},
        {33490433U, 3166463U},
        {33490433U, 1058047U}};
static int sru_s_stream(struct v4l2_subdev *subdev , int enable )
{
  struct vsp1_sru *sru ;
  struct vsp1_sru *tmp ;
  struct vsp1_sru_param const *param ;
  struct v4l2_mbus_framefmt *input ;
  struct v4l2_mbus_framefmt *output ;
  bool upscale ;
  u32 ctrl0 ;
  {
  {
  tmp = to_sru(subdev);
  sru = tmp;
  }
  if (enable == 0) {
    return (0);
  } else {
  }
  input = sru->entity.formats;
  output = sru->entity.formats + 1UL;
  upscale = input->width != output->width;
  param = (struct vsp1_sru_param const *)(& vsp1_sru_params) + (unsigned long )sru->intensity;
  if (input->code == 4109U) {
    ctrl0 = 14U;
  } else {
    ctrl0 = 4U;
  }
  {
  vsp1_sru_write(sru, 8704U, ((unsigned int )param->ctrl0 | ctrl0) | ((int )upscale ? 64U : 0U));
  vsp1_sru_write(sru, 8708U, 2047U);
  vsp1_sru_write(sru, 8712U, param->ctrl2);
  }
  return (0);
}
}
static int sru_enum_mbus_code(struct v4l2_subdev *subdev , struct v4l2_subdev_fh *fh ,
                              struct v4l2_subdev_mbus_code_enum *code )
{
  unsigned int codes[2U] ;
  struct v4l2_mbus_framefmt *format ;
  {
  codes[0] = 4109U;
  codes[1] = 8215U;
  if (code->pad == 0U) {
    if (code->index > 1U) {
      return (-22);
    } else {
    }
    code->code = codes[code->index];
  } else {
    if (code->index != 0U) {
      return (-22);
    } else {
    }
    {
    format = v4l2_subdev_get_try_format___4(fh, 0U);
    code->code = format->code;
    }
  }
  return (0);
}
}
static int sru_enum_frame_size(struct v4l2_subdev *subdev , struct v4l2_subdev_fh *fh ,
                               struct v4l2_subdev_frame_size_enum *fse )
{
  struct v4l2_mbus_framefmt *format ;
  {
  {
  format = v4l2_subdev_get_try_format___4(fh, 0U);
  }
  if (fse->index != 0U || fse->code != format->code) {
    return (-22);
  } else {
  }
  if (fse->pad == 0U) {
    fse->min_width = 4U;
    fse->max_width = 8190U;
    fse->min_height = 4U;
    fse->max_height = 8190U;
  } else {
    fse->min_width = format->width;
    fse->min_height = format->height;
    if (format->width <= 4095U && format->height <= 4095U) {
      fse->max_width = format->width * 2U;
      fse->max_height = format->height * 2U;
    } else {
      fse->max_width = format->width;
      fse->max_height = format->height;
    }
  }
  return (0);
}
}
static int sru_get_format(struct v4l2_subdev *subdev , struct v4l2_subdev_fh *fh ,
                          struct v4l2_subdev_format *fmt )
{
  struct vsp1_sru *sru ;
  struct vsp1_sru *tmp ;
  struct v4l2_mbus_framefmt *tmp___0 ;
  {
  {
  tmp = to_sru(subdev);
  sru = tmp;
  tmp___0 = vsp1_entity_get_pad_format(& sru->entity, fh, fmt->pad, fmt->which);
  fmt->format = *tmp___0;
  }
  return (0);
}
}
static void sru_try_format(struct vsp1_sru *sru , struct v4l2_subdev_fh *fh , unsigned int pad ,
                           struct v4l2_mbus_framefmt *fmt , enum v4l2_subdev_format_whence which )
{
  struct v4l2_mbus_framefmt *format ;
  unsigned int input_area ;
  unsigned int output_area ;
  __u32 __val ;
  unsigned int __min ;
  unsigned int __max ;
  __u32 __val___0 ;
  unsigned int __min___0 ;
  unsigned int __max___0 ;
  __u32 _min1 ;
  unsigned int _min2 ;
  __u32 _min1___0 ;
  unsigned int _min2___0 ;
  {
  {
  if (pad == 0U) {
    goto case_0;
  } else {
  }
  if (pad == 1U) {
    goto case_1;
  } else {
  }
  goto switch_break;
  case_0: ;
  if (fmt->code != 4109U && fmt->code != 8215U) {
    fmt->code = 8215U;
  } else {
  }
  __val = fmt->width;
  __min = 4U;
  __max = 8190U;
  __val = __min > __val ? __min : __val;
  fmt->width = __max < __val ? __max : __val;
  __val___0 = fmt->height;
  __min___0 = 4U;
  __max___0 = 8190U;
  __val___0 = __min___0 > __val___0 ? __min___0 : __val___0;
  fmt->height = __max___0 < __val___0 ? __max___0 : __val___0;
  goto ldv_28755;
  case_1:
  {
  format = vsp1_entity_get_pad_format(& sru->entity, fh, 0U, (u32 )which);
  fmt->code = format->code;
  input_area = format->width * format->height;
  _min1 = fmt->width;
  _min2 = 8190U;
  _min1___0 = fmt->height;
  _min2___0 = 8190U;
  output_area = (_min1 < _min2 ? _min1 : _min2) * (_min1___0 < _min2___0 ? _min1___0 : _min2___0);
  }
  if ((fmt->width <= 4095U && fmt->height <= 4095U) && output_area > (input_area * 9U) / 4U) {
    fmt->width = format->width * 2U;
    fmt->height = format->height * 2U;
  } else {
    fmt->width = format->width;
    fmt->height = format->height;
  }
  goto ldv_28755;
  switch_break: ;
  }
  ldv_28755:
  fmt->field = 1U;
  fmt->colorspace = 8U;
  return;
}
}
static int sru_set_format(struct v4l2_subdev *subdev , struct v4l2_subdev_fh *fh ,
                          struct v4l2_subdev_format *fmt )
{
  struct vsp1_sru *sru ;
  struct vsp1_sru *tmp ;
  struct v4l2_mbus_framefmt *format ;
  {
  {
  tmp = to_sru(subdev);
  sru = tmp;
  sru_try_format(sru, fh, fmt->pad, & fmt->format, (enum v4l2_subdev_format_whence )fmt->which);
  format = vsp1_entity_get_pad_format(& sru->entity, fh, fmt->pad, fmt->which);
  *format = fmt->format;
  }
  if (fmt->pad == 0U) {
    {
    format = vsp1_entity_get_pad_format(& sru->entity, fh, 1U, fmt->which);
    *format = fmt->format;
    sru_try_format(sru, fh, 1U, format, (enum v4l2_subdev_format_whence )fmt->which);
    }
  } else {
  }
  return (0);
}
}
static struct v4l2_subdev_video_ops sru_video_ops =
     {0, 0, 0, 0, 0, 0, 0, & sru_s_stream, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    0, 0, 0, 0, 0, 0, 0, 0};
static struct v4l2_subdev_pad_ops sru_pad_ops =
     {& sru_enum_mbus_code, & sru_enum_frame_size, 0, & sru_get_format, & sru_set_format,
    0, 0, 0, 0, 0, 0, 0, 0, 0};
static struct v4l2_subdev_ops sru_ops =
     {0, 0, 0, (struct v4l2_subdev_video_ops const *)(& sru_video_ops), 0, 0, 0, (struct v4l2_subdev_pad_ops const *)(& sru_pad_ops)};
struct vsp1_sru *vsp1_sru_create(struct vsp1_device *vsp1 )
{
  struct v4l2_subdev *subdev ;
  struct vsp1_sru *sru ;
  int ret ;
  void *tmp ;
  void *tmp___0 ;
  void *tmp___1 ;
  char const *tmp___2 ;
  struct lock_class_key _key ;
  {
  {
  tmp = devm_kzalloc(vsp1->dev, 648UL, 208U);
  sru = (struct vsp1_sru *)tmp;
  }
  if ((unsigned long )sru == (unsigned long )((struct vsp1_sru *)0)) {
    {
    tmp___0 = ERR_PTR(-12L);
    }
    return ((struct vsp1_sru *)tmp___0);
  } else {
  }
  {
  sru->entity.type = 5;
  sru->entity.id = 16U;
  ret = vsp1_entity_init(vsp1, & sru->entity, 2U);
  }
  if (ret < 0) {
    {
    tmp___1 = ERR_PTR((long )ret);
    }
    return ((struct vsp1_sru *)tmp___1);
  } else {
  }
  {
  subdev = & sru->entity.subdev;
  v4l2_subdev_init(subdev, (struct v4l2_subdev_ops const *)(& sru_ops));
  subdev->entity.ops = & vsp1_media_ops;
  subdev->internal_ops = & vsp1_subdev_internal_ops;
  tmp___2 = dev_name((struct device const *)vsp1->dev);
  snprintf((char *)(& subdev->name), 32UL, "%s sru", tmp___2);
  v4l2_set_subdevdata(subdev, (void *)sru);
  subdev->flags = subdev->flags | 4U;
  vsp1_entity_init_formats(subdev, (struct v4l2_subdev_fh *)0);
  v4l2_ctrl_handler_init_class(& sru->ctrls, 1U, & _key, "vsp1_sru:350:(&sru->ctrls)->_lock");
  v4l2_ctrl_new_custom(& sru->ctrls, & sru_intensity_control, (void *)0);
  v4l2_ctrl_handler_setup(& sru->ctrls);
  sru->entity.subdev.ctrl_handler = & sru->ctrls;
  }
  return (sru);
}
}
void ldv_dummy_resourceless_instance_callback_12_16(int (*arg0)(struct v4l2_subdev * ,
                                                                struct v4l2_subdev_fh * ,
                                                                struct v4l2_subdev_format * ) ,
                                                    struct v4l2_subdev *arg1 , struct v4l2_subdev_fh *arg2 ,
                                                    struct v4l2_subdev_format *arg3 ) ;
void ldv_dummy_resourceless_instance_callback_12_7(int (*arg0)(struct v4l2_subdev * ,
                                                               struct v4l2_subdev_fh * ,
                                                               struct v4l2_subdev_mbus_code_enum * ) ,
                                                   struct v4l2_subdev *arg1 , struct v4l2_subdev_fh *arg2 ,
                                                   struct v4l2_subdev_mbus_code_enum *arg3 ) ;
void ldv_dummy_resourceless_instance_callback_12_8(int (*arg0)(struct v4l2_subdev * ,
                                                               struct v4l2_subdev_fh * ,
                                                               struct v4l2_subdev_format * ) ,
                                                   struct v4l2_subdev *arg1 , struct v4l2_subdev_fh *arg2 ,
                                                   struct v4l2_subdev_format *arg3 ) ;
void ldv_dummy_resourceless_instance_callback_18_13(int (*arg0)(struct v4l2_subdev * ,
                                                                int ) , struct v4l2_subdev *arg1 ,
                                                    int arg2 ) ;
int (*ldv_12_callback_enum_mbus_code)(struct v4l2_subdev * , struct v4l2_subdev_fh * ,
                                      struct v4l2_subdev_mbus_code_enum * ) ;
int (*ldv_12_callback_get_fmt)(struct v4l2_subdev * , struct v4l2_subdev_fh * , struct v4l2_subdev_format * ) ;
int (*ldv_12_callback_set_fmt)(struct v4l2_subdev * , struct v4l2_subdev_fh * , struct v4l2_subdev_format * ) ;
int (*ldv_18_callback_s_stream)(struct v4l2_subdev * , int ) ;
int (*ldv_12_callback_enum_frame_size)(struct v4l2_subdev * , struct v4l2_subdev_fh * ,
                                       struct v4l2_subdev_frame_size_enum * ) = & sru_enum_frame_size;
int (*ldv_12_callback_enum_mbus_code)(struct v4l2_subdev * , struct v4l2_subdev_fh * ,
                                      struct v4l2_subdev_mbus_code_enum * ) = & sru_enum_mbus_code;
int (*ldv_12_callback_get_fmt)(struct v4l2_subdev * , struct v4l2_subdev_fh * , struct v4l2_subdev_format * ) = & sru_get_format;
int (*ldv_12_callback_set_fmt)(struct v4l2_subdev * , struct v4l2_subdev_fh * , struct v4l2_subdev_format * ) = & sru_set_format;
int (*ldv_18_callback_s_stream)(struct v4l2_subdev * , int ) = & sru_s_stream;
int (*ldv_6_callback_s_ctrl)(struct v4l2_ctrl * ) = & sru_s_ctrl;
void ldv_dummy_resourceless_instance_callback_12_16(int (*arg0)(struct v4l2_subdev * ,
                                                                struct v4l2_subdev_fh * ,
                                                                struct v4l2_subdev_format * ) ,
                                                    struct v4l2_subdev *arg1 , struct v4l2_subdev_fh *arg2 ,
                                                    struct v4l2_subdev_format *arg3 )
{
  {
  {
  sru_set_format(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_12_3(int (*arg0)(struct v4l2_subdev * ,
                                                               struct v4l2_subdev_fh * ,
                                                               struct v4l2_subdev_frame_size_enum * ) ,
                                                   struct v4l2_subdev *arg1 , struct v4l2_subdev_fh *arg2 ,
                                                   struct v4l2_subdev_frame_size_enum *arg3 )
{
  {
  {
  sru_enum_frame_size(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_12_7(int (*arg0)(struct v4l2_subdev * ,
                                                               struct v4l2_subdev_fh * ,
                                                               struct v4l2_subdev_mbus_code_enum * ) ,
                                                   struct v4l2_subdev *arg1 , struct v4l2_subdev_fh *arg2 ,
                                                   struct v4l2_subdev_mbus_code_enum *arg3 )
{
  {
  {
  sru_enum_mbus_code(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_12_8(int (*arg0)(struct v4l2_subdev * ,
                                                               struct v4l2_subdev_fh * ,
                                                               struct v4l2_subdev_format * ) ,
                                                   struct v4l2_subdev *arg1 , struct v4l2_subdev_fh *arg2 ,
                                                   struct v4l2_subdev_format *arg3 )
{
  {
  {
  sru_get_format(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_18_13(int (*arg0)(struct v4l2_subdev * ,
                                                                int ) , struct v4l2_subdev *arg1 ,
                                                    int arg2 )
{
  {
  {
  sru_s_stream(arg1, arg2);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_6_3(int (*arg0)(struct v4l2_ctrl * ) ,
                                                  struct v4l2_ctrl *arg1 )
{
  {
  {
  sru_s_ctrl(arg1);
  }
  return;
}
}
static void *ldv_dev_get_drvdata_37___4(struct device const *dev )
{
  void *tmp ;
  {
  {
  tmp = ldv_dev_get_drvdata(dev);
  }
  return (tmp);
}
}
extern int __dynamic_dev_dbg(struct _ddebug * , struct device const * , char const *
                             , ...) ;
__inline static void *ERR_PTR(long error ) ;
static void *ldv_dev_get_drvdata_37___5(struct device const *dev ) ;
__inline static void *video_get_drvdata___6(struct video_device *vdev )
{
  void *tmp ;
  {
  {
  tmp = ldv_dev_get_drvdata_37___5((struct device const *)(& vdev->dev));
  }
  return (tmp);
}
}
__inline static struct v4l2_mbus_framefmt *v4l2_subdev_get_try_format___5(struct v4l2_subdev_fh *fh ,
                                                                          unsigned int pad )
{
  void *tmp ;
  long tmp___0 ;
  {
  {
  tmp = video_get_drvdata___6(fh->vfh.vdev);
  tmp___0 = ldv__builtin_expect(pad >= (unsigned int )((struct v4l2_subdev *)tmp)->entity.num_pads,
                             0L);
  }
  if (tmp___0 != 0L) {
    {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"include/media/v4l2-subdev.h"),
                         "i" (643), "i" (12UL));
    __builtin_unreachable();
    }
  } else {
  }
  return (& (fh->pad + (unsigned long )pad)->try_fmt);
}
}
__inline static struct vsp1_uds *to_uds(struct v4l2_subdev *subdev )
{
  struct v4l2_subdev const *__mptr ;
  {
  __mptr = (struct v4l2_subdev const *)subdev;
  return ((struct vsp1_uds *)__mptr + 0xffffffffffffffb0UL);
}
}
__inline static void vsp1_uds_write(struct vsp1_uds *uds , u32 reg , u32 data )
{
  {
  {
  vsp1_write(uds->entity.vsp1, reg + uds->entity.index * 256U, data);
  }
  return;
}
}
static unsigned int uds_output_size(unsigned int input , unsigned int ratio )
{
  unsigned int mp ;
  {
  if (ratio > 4096U) {
    mp = ratio / 4096U;
    mp = mp > 3U ? (mp <= 7U ? 2U : 4U) : 1U;
    return (((((input - 1U) / mp) * mp) * 4096U) / ratio + 1U);
  } else {
    return (((input + 1048575U) * 4096U) / ratio + 1U);
  }
}
}
static void uds_output_limits(unsigned int input , unsigned int *minimum , unsigned int *maximum )
{
  unsigned int _max1 ;
  unsigned int tmp ;
  unsigned int _max2 ;
  unsigned int _min1 ;
  unsigned int tmp___0 ;
  unsigned int _min2 ;
  {
  {
  tmp = uds_output_size(input, 65535U);
  _max1 = tmp;
  _max2 = 4U;
  *minimum = _max1 > _max2 ? _max1 : _max2;
  tmp___0 = uds_output_size(input, 256U);
  _min1 = tmp___0;
  _min2 = 8190U;
  *maximum = _min1 < _min2 ? _min1 : _min2;
  }
  return;
}
}
static unsigned int uds_passband_width(unsigned int ratio )
{
  unsigned int mp ;
  {
  if (ratio > 4095U) {
    mp = ratio / 4096U;
    mp = mp > 3U ? (mp <= 7U ? 2U : 4U) : 1U;
    return ((mp * 262144U) / ratio);
  } else {
    return (64U);
  }
}
}
static unsigned int uds_compute_ratio(unsigned int input , unsigned int output )
{
  {
  return (((input + 1048575U) * 4096U) / (output - 1U));
}
}
static void uds_compute_ratios(struct vsp1_uds *uds )
{
  struct v4l2_mbus_framefmt *input ;
  struct v4l2_mbus_framefmt *output ;
  struct _ddebug descriptor ;
  long tmp ;
  {
  {
  input = uds->entity.formats;
  output = uds->entity.formats + 1UL;
  uds->hscale = uds_compute_ratio(input->width, output->width);
  uds->vscale = uds_compute_ratio(input->height, output->height);
  descriptor.modname = "vsp1";
  descriptor.function = "uds_compute_ratios";
  descriptor.filename = "drivers/media/platform/vsp1/vsp1_uds.c";
  descriptor.format = "hscale %u vscale %u\n";
  descriptor.lineno = 118U;
  descriptor.flags = 0U;
  tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  }
  if (tmp != 0L) {
    {
    __dynamic_dev_dbg(& descriptor, (struct device const *)(uds->entity.vsp1)->dev,
                      "hscale %u vscale %u\n", uds->hscale, uds->vscale);
    }
  } else {
  }
  return;
}
}
static int uds_s_stream(struct v4l2_subdev *subdev , int enable )
{
  struct v4l2_mbus_framefmt const *format ;
  struct vsp1_uds *uds ;
  struct vsp1_uds *tmp ;
  unsigned int tmp___0 ;
  unsigned int tmp___1 ;
  {
  {
  tmp = to_uds(subdev);
  uds = tmp;
  }
  if (enable == 0) {
    return (0);
  } else {
  }
  {
  vsp1_uds_write(uds, 8960U, 1048576U);
  tmp___0 = uds_passband_width(uds->hscale);
  tmp___1 = uds_passband_width(uds->vscale);
  vsp1_uds_write(uds, 8976U, (tmp___0 << 16) | tmp___1);
  format = (struct v4l2_mbus_framefmt const *)uds->entity.formats + 1U;
  vsp1_uds_write(uds, 8964U, (uds->hscale << 16) | uds->vscale);
  vsp1_uds_write(uds, 8996U, (unsigned int )(format->width << 16) | (unsigned int )format->height);
  }
  return (0);
}
}
static int uds_enum_mbus_code(struct v4l2_subdev *subdev , struct v4l2_subdev_fh *fh ,
                              struct v4l2_subdev_mbus_code_enum *code )
{
  unsigned int codes[2U] ;
  struct v4l2_mbus_framefmt *format ;
  {
  codes[0] = 4109U;
  codes[1] = 8215U;
  if (code->pad == 0U) {
    if (code->index > 1U) {
      return (-22);
    } else {
    }
    code->code = codes[code->index];
  } else {
    if (code->index != 0U) {
      return (-22);
    } else {
    }
    {
    format = v4l2_subdev_get_try_format___5(fh, 0U);
    code->code = format->code;
    }
  }
  return (0);
}
}
static int uds_enum_frame_size(struct v4l2_subdev *subdev , struct v4l2_subdev_fh *fh ,
                               struct v4l2_subdev_frame_size_enum *fse )
{
  struct v4l2_mbus_framefmt *format ;
  {
  {
  format = v4l2_subdev_get_try_format___5(fh, 0U);
  }
  if (fse->index != 0U || fse->code != format->code) {
    return (-22);
  } else {
  }
  if (fse->pad == 0U) {
    fse->min_width = 4U;
    fse->max_width = 8190U;
    fse->min_height = 4U;
    fse->max_height = 8190U;
  } else {
    {
    uds_output_limits(format->width, & fse->min_width, & fse->max_width);
    uds_output_limits(format->height, & fse->min_height, & fse->max_height);
    }
  }
  return (0);
}
}
static int uds_get_format(struct v4l2_subdev *subdev , struct v4l2_subdev_fh *fh ,
                          struct v4l2_subdev_format *fmt )
{
  struct vsp1_uds *uds ;
  struct vsp1_uds *tmp ;
  struct v4l2_mbus_framefmt *tmp___0 ;
  {
  {
  tmp = to_uds(subdev);
  uds = tmp;
  tmp___0 = vsp1_entity_get_pad_format(& uds->entity, fh, fmt->pad, fmt->which);
  fmt->format = *tmp___0;
  }
  return (0);
}
}
static void uds_try_format(struct vsp1_uds *uds , struct v4l2_subdev_fh *fh , unsigned int pad ,
                           struct v4l2_mbus_framefmt *fmt , enum v4l2_subdev_format_whence which )
{
  struct v4l2_mbus_framefmt *format ;
  unsigned int minimum ;
  unsigned int maximum ;
  __u32 __val ;
  unsigned int __min ;
  unsigned int __max ;
  __u32 __val___0 ;
  unsigned int __min___0 ;
  unsigned int __max___0 ;
  __u32 __val___1 ;
  unsigned int __min___1 ;
  unsigned int __max___1 ;
  __u32 __val___2 ;
  unsigned int __min___2 ;
  unsigned int __max___2 ;
  {
  {
  if (pad == 0U) {
    goto case_0;
  } else {
  }
  if (pad == 1U) {
    goto case_1;
  } else {
  }
  goto switch_break;
  case_0: ;
  if (fmt->code != 4109U && fmt->code != 8215U) {
    fmt->code = 8215U;
  } else {
  }
  __val = fmt->width;
  __min = 4U;
  __max = 8190U;
  __val = __min > __val ? __min : __val;
  fmt->width = __max < __val ? __max : __val;
  __val___0 = fmt->height;
  __min___0 = 4U;
  __max___0 = 8190U;
  __val___0 = __min___0 > __val___0 ? __min___0 : __val___0;
  fmt->height = __max___0 < __val___0 ? __max___0 : __val___0;
  goto ldv_28513;
  case_1:
  {
  format = vsp1_entity_get_pad_format(& uds->entity, fh, 0U, (u32 )which);
  fmt->code = format->code;
  uds_output_limits(format->width, & minimum, & maximum);
  __val___1 = fmt->width;
  __min___1 = minimum;
  __max___1 = maximum;
  __val___1 = __min___1 > __val___1 ? __min___1 : __val___1;
  fmt->width = __max___1 < __val___1 ? __max___1 : __val___1;
  uds_output_limits(format->height, & minimum, & maximum);
  __val___2 = fmt->height;
  __min___2 = minimum;
  __max___2 = maximum;
  __val___2 = __min___2 > __val___2 ? __min___2 : __val___2;
  fmt->height = __max___2 < __val___2 ? __max___2 : __val___2;
  }
  goto ldv_28513;
  switch_break: ;
  }
  ldv_28513:
  fmt->field = 1U;
  fmt->colorspace = 8U;
  return;
}
}
static int uds_set_format(struct v4l2_subdev *subdev , struct v4l2_subdev_fh *fh ,
                          struct v4l2_subdev_format *fmt )
{
  struct vsp1_uds *uds ;
  struct vsp1_uds *tmp ;
  struct v4l2_mbus_framefmt *format ;
  {
  {
  tmp = to_uds(subdev);
  uds = tmp;
  uds_try_format(uds, fh, fmt->pad, & fmt->format, (enum v4l2_subdev_format_whence )fmt->which);
  format = vsp1_entity_get_pad_format(& uds->entity, fh, fmt->pad, fmt->which);
  *format = fmt->format;
  }
  if (fmt->pad == 0U) {
    {
    format = vsp1_entity_get_pad_format(& uds->entity, fh, 1U, fmt->which);
    *format = fmt->format;
    uds_try_format(uds, fh, 1U, format, (enum v4l2_subdev_format_whence )fmt->which);
    }
  } else {
  }
  if (fmt->which == 1U) {
    {
    uds_compute_ratios(uds);
    }
  } else {
  }
  return (0);
}
}
static struct v4l2_subdev_video_ops uds_video_ops =
     {0, 0, 0, 0, 0, 0, 0, & uds_s_stream, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    0, 0, 0, 0, 0, 0, 0, 0};
static struct v4l2_subdev_pad_ops uds_pad_ops =
     {& uds_enum_mbus_code, & uds_enum_frame_size, 0, & uds_get_format, & uds_set_format,
    0, 0, 0, 0, 0, 0, 0, 0, 0};
static struct v4l2_subdev_ops uds_ops =
     {0, 0, 0, (struct v4l2_subdev_video_ops const *)(& uds_video_ops), 0, 0, 0, (struct v4l2_subdev_pad_ops const *)(& uds_pad_ops)};
struct vsp1_uds *vsp1_uds_create(struct vsp1_device *vsp1 , unsigned int index )
{
  struct v4l2_subdev *subdev ;
  struct vsp1_uds *uds ;
  int ret ;
  void *tmp ;
  void *tmp___0 ;
  void *tmp___1 ;
  char const *tmp___2 ;
  {
  {
  tmp = devm_kzalloc(vsp1->dev, 400UL, 208U);
  uds = (struct vsp1_uds *)tmp;
  }
  if ((unsigned long )uds == (unsigned long )((struct vsp1_uds *)0)) {
    {
    tmp___0 = ERR_PTR(-12L);
    }
    return ((struct vsp1_uds *)tmp___0);
  } else {
  }
  {
  uds->entity.type = 6;
  uds->entity.index = index;
  uds->entity.id = index + 17U;
  ret = vsp1_entity_init(vsp1, & uds->entity, 2U);
  }
  if (ret < 0) {
    {
    tmp___1 = ERR_PTR((long )ret);
    }
    return ((struct vsp1_uds *)tmp___1);
  } else {
  }
  {
  subdev = & uds->entity.subdev;
  v4l2_subdev_init(subdev, (struct v4l2_subdev_ops const *)(& uds_ops));
  subdev->entity.ops = & vsp1_media_ops;
  subdev->internal_ops = & vsp1_subdev_internal_ops;
  tmp___2 = dev_name((struct device const *)vsp1->dev);
  snprintf((char *)(& subdev->name), 32UL, "%s uds.%u", tmp___2, index);
  v4l2_set_subdevdata(subdev, (void *)uds);
  subdev->flags = subdev->flags | 4U;
  vsp1_entity_init_formats(subdev, (struct v4l2_subdev_fh *)0);
  }
  return (uds);
}
}
void ldv_dummy_resourceless_instance_callback_13_16(int (*arg0)(struct v4l2_subdev * ,
                                                                struct v4l2_subdev_fh * ,
                                                                struct v4l2_subdev_format * ) ,
                                                    struct v4l2_subdev *arg1 , struct v4l2_subdev_fh *arg2 ,
                                                    struct v4l2_subdev_format *arg3 ) ;
void ldv_dummy_resourceless_instance_callback_13_7(int (*arg0)(struct v4l2_subdev * ,
                                                               struct v4l2_subdev_fh * ,
                                                               struct v4l2_subdev_mbus_code_enum * ) ,
                                                   struct v4l2_subdev *arg1 , struct v4l2_subdev_fh *arg2 ,
                                                   struct v4l2_subdev_mbus_code_enum *arg3 ) ;
void ldv_dummy_resourceless_instance_callback_13_8(int (*arg0)(struct v4l2_subdev * ,
                                                               struct v4l2_subdev_fh * ,
                                                               struct v4l2_subdev_format * ) ,
                                                   struct v4l2_subdev *arg1 , struct v4l2_subdev_fh *arg2 ,
                                                   struct v4l2_subdev_format *arg3 ) ;
void ldv_dummy_resourceless_instance_callback_19_13(int (*arg0)(struct v4l2_subdev * ,
                                                                int ) , struct v4l2_subdev *arg1 ,
                                                    int arg2 ) ;
int (*ldv_13_callback_enum_mbus_code)(struct v4l2_subdev * , struct v4l2_subdev_fh * ,
                                      struct v4l2_subdev_mbus_code_enum * ) ;
int (*ldv_13_callback_get_fmt)(struct v4l2_subdev * , struct v4l2_subdev_fh * , struct v4l2_subdev_format * ) ;
int (*ldv_13_callback_set_fmt)(struct v4l2_subdev * , struct v4l2_subdev_fh * , struct v4l2_subdev_format * ) ;
int (*ldv_19_callback_s_stream)(struct v4l2_subdev * , int ) ;
int (*ldv_13_callback_enum_frame_size)(struct v4l2_subdev * , struct v4l2_subdev_fh * ,
                                       struct v4l2_subdev_frame_size_enum * ) = & uds_enum_frame_size;
int (*ldv_13_callback_enum_mbus_code)(struct v4l2_subdev * , struct v4l2_subdev_fh * ,
                                      struct v4l2_subdev_mbus_code_enum * ) = & uds_enum_mbus_code;
int (*ldv_13_callback_get_fmt)(struct v4l2_subdev * , struct v4l2_subdev_fh * , struct v4l2_subdev_format * ) = & uds_get_format;
int (*ldv_13_callback_set_fmt)(struct v4l2_subdev * , struct v4l2_subdev_fh * , struct v4l2_subdev_format * ) = & uds_set_format;
int (*ldv_19_callback_s_stream)(struct v4l2_subdev * , int ) = & uds_s_stream;
void ldv_dummy_resourceless_instance_callback_13_16(int (*arg0)(struct v4l2_subdev * ,
                                                                struct v4l2_subdev_fh * ,
                                                                struct v4l2_subdev_format * ) ,
                                                    struct v4l2_subdev *arg1 , struct v4l2_subdev_fh *arg2 ,
                                                    struct v4l2_subdev_format *arg3 )
{
  {
  {
  uds_set_format(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_13_3(int (*arg0)(struct v4l2_subdev * ,
                                                               struct v4l2_subdev_fh * ,
                                                               struct v4l2_subdev_frame_size_enum * ) ,
                                                   struct v4l2_subdev *arg1 , struct v4l2_subdev_fh *arg2 ,
                                                   struct v4l2_subdev_frame_size_enum *arg3 )
{
  {
  {
  uds_enum_frame_size(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_13_7(int (*arg0)(struct v4l2_subdev * ,
                                                               struct v4l2_subdev_fh * ,
                                                               struct v4l2_subdev_mbus_code_enum * ) ,
                                                   struct v4l2_subdev *arg1 , struct v4l2_subdev_fh *arg2 ,
                                                   struct v4l2_subdev_mbus_code_enum *arg3 )
{
  {
  {
  uds_enum_mbus_code(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_13_8(int (*arg0)(struct v4l2_subdev * ,
                                                               struct v4l2_subdev_fh * ,
                                                               struct v4l2_subdev_format * ) ,
                                                   struct v4l2_subdev *arg1 , struct v4l2_subdev_fh *arg2 ,
                                                   struct v4l2_subdev_format *arg3 )
{
  {
  {
  uds_get_format(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_19_13(int (*arg0)(struct v4l2_subdev * ,
                                                                int ) , struct v4l2_subdev *arg1 ,
                                                    int arg2 )
{
  {
  {
  uds_s_stream(arg1, arg2);
  }
  return;
}
}
static void *ldv_dev_get_drvdata_37___5(struct device const *dev )
{
  void *tmp ;
  {
  {
  tmp = ldv_dev_get_drvdata(dev);
  }
  return (tmp);
}
}
void *ldv_xzalloc(size_t size ) ;
void *ldv_dev_get_drvdata(struct device const *dev )
{
  {
  if ((unsigned long )dev != (unsigned long )((struct device const *)0) && (unsigned long )dev->p != (unsigned long )((struct device_private * )0)) {
    return ((dev->p)->driver_data);
  } else {
  }
  return ((void *)0);
}
}
int ldv_dev_set_drvdata(struct device *dev , void *data )
{
  void *tmp ;
  {
  {
  tmp = ldv_xzalloc(8UL);
  dev->p = (struct device_private *)tmp;
  (dev->p)->driver_data = data;
  }
  return (0);
}
}
void *ldv_zalloc(size_t size ) ;
struct spi_master *ldv_spi_alloc_master(struct device *host , unsigned int size )
{
  struct spi_master *master ;
  void *tmp ;
  {
  {
  tmp = ldv_zalloc((unsigned long )size + 2200UL);
  master = (struct spi_master *)tmp;
  }
  if ((unsigned long )master == (unsigned long )((struct spi_master *)0)) {
    return ((struct spi_master *)0);
  } else {
  }
  {
  ldv_dev_set_drvdata(& master->dev, (void *)master + 1U);
  }
  return (master);
}
}
long ldv_is_err(void const *ptr )
{
  {
  return ((unsigned long )ptr > 4294967295UL);
}
}
void *ldv_err_ptr(long error )
{
  {
  return ((void *)(4294967295L - error));
}
}
long ldv_ptr_err(void const *ptr )
{
  {
  return ((long )(4294967295UL - (unsigned long )ptr));
}
}
long ldv_is_err_or_null(void const *ptr )
{
  long tmp ;
  int tmp___0 ;
  {
  if ((unsigned long )ptr == (unsigned long )((void const *)0)) {
    tmp___0 = 1;
  } else {
    {
    tmp = ldv_is_err(ptr);
    }
    if (tmp != 0L) {
      tmp___0 = 1;
    } else {
      tmp___0 = 0;
    }
  }
  return ((long )tmp___0);
}
}
static int ldv_filter_positive_int(int val )
{
  {
  {
  ldv_assume(val <= 0);
  }
  return (val);
}
}
int ldv_post_init(int init_ret_val )
{
  int tmp ;
  {
  {
  tmp = ldv_filter_positive_int(init_ret_val);
  }
  return (tmp);
}
}
int ldv_post_probe(int probe_ret_val )
{
  int tmp ;
  {
  {
  tmp = ldv_filter_positive_int(probe_ret_val);
  }
  return (tmp);
}
}
int ldv_filter_err_code(int ret_val )
{
  int tmp ;
  {
  {
  tmp = ldv_filter_positive_int(ret_val);
  }
  return (tmp);
}
}
extern void ldv_check_alloc_flags(gfp_t ) ;
extern void ldv_after_alloc(void * ) ;
void *ldv_kzalloc(size_t size , gfp_t flags )
{
  void *res ;
  {
  {
  ldv_check_alloc_flags(flags);
  res = ldv_zalloc(size);
  ldv_after_alloc(res);
  }
  return (res);
}
}
extern void ldv_assert(char const * , int ) ;
void ldv__builtin_trap(void) ;
void ldv_assume(int expression )
{
  {
  if (expression == 0) {
    ldv_assume_label: ;
    goto ldv_assume_label;
  } else {
  }
  return;
}
}
void ldv_stop(void)
{
  {
  ldv_stop_label: ;
  goto ldv_stop_label;
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
  {
  ldv_assert("", 0);
  }
  return;
}
}
void *ldv_malloc(size_t size ) ;
void *ldv_calloc(size_t nmemb , size_t size ) ;
void *ldv_malloc_unknown_size(void) ;
void *ldv_calloc_unknown_size(void) ;
void *ldv_zalloc_unknown_size(void) ;
extern void *malloc(size_t ) ;
extern void *calloc(size_t , size_t ) ;
extern void free(void * ) ;
void *ldv_malloc(size_t size )
{
  void *res ;
  void *tmp ;
  long tmp___0 ;
  int tmp___1 ;
  {
  {
  tmp___1 = ldv_undef_int();
  }
  if (tmp___1 != 0) {
    {
    tmp = malloc(size);
    res = tmp;
    ldv_assume((unsigned long )res != (unsigned long )((void *)0));
    tmp___0 = ldv_is_err((void const *)res);
    ldv_assume(tmp___0 == 0L);
    }
    return (res);
  } else {
    return ((void *)0);
  }
}
}
void *ldv_calloc(size_t nmemb , size_t size )
{
  void *res ;
  void *tmp ;
  long tmp___0 ;
  int tmp___1 ;
  {
  {
  tmp___1 = ldv_undef_int();
  }
  if (tmp___1 != 0) {
    {
    tmp = calloc(nmemb, size);
    res = tmp;
    ldv_assume((unsigned long )res != (unsigned long )((void *)0));
    tmp___0 = ldv_is_err((void const *)res);
    ldv_assume(tmp___0 == 0L);
    }
    return (res);
  } else {
    return ((void *)0);
  }
}
}
void *ldv_zalloc(size_t size )
{
  void *tmp ;
  {
  {
  tmp = ldv_calloc(1UL, size);
  }
  return (tmp);
}
}
void ldv_free(void *s )
{
  {
  {
  free(s);
  }
  return;
}
}
void *ldv_xmalloc(size_t size )
{
  void *res ;
  void *tmp ;
  long tmp___0 ;
  {
  {
  tmp = malloc(size);
  res = tmp;
  ldv_assume((unsigned long )res != (unsigned long )((void *)0));
  tmp___0 = ldv_is_err((void const *)res);
  ldv_assume(tmp___0 == 0L);
  }
  return (res);
}
}
void *ldv_xzalloc(size_t size )
{
  void *res ;
  void *tmp ;
  long tmp___0 ;
  {
  {
  tmp = calloc(1UL, size);
  res = tmp;
  ldv_assume((unsigned long )res != (unsigned long )((void *)0));
  tmp___0 = ldv_is_err((void const *)res);
  ldv_assume(tmp___0 == 0L);
  }
  return (res);
}
}
void *ldv_malloc_unknown_size(void)
{
  void *res ;
  void *tmp ;
  long tmp___0 ;
  int tmp___1 ;
  {
  {
  tmp___1 = ldv_undef_int();
  }
  if (tmp___1 != 0) {
    {
    tmp = external_allocated_data();
    res = tmp;
    ldv_assume((unsigned long )res != (unsigned long )((void *)0));
    tmp___0 = ldv_is_err((void const *)res);
    ldv_assume(tmp___0 == 0L);
    }
    return (res);
  } else {
    return ((void *)0);
  }
}
}
void *ldv_calloc_unknown_size(void)
{
  void *res ;
  void *tmp ;
  long tmp___0 ;
  int tmp___1 ;
  {
  {
  tmp___1 = ldv_undef_int();
  }
  if (tmp___1 != 0) {
    {
    tmp = external_allocated_data();
    res = tmp;
    memset(res, 0, 8UL);
    ldv_assume((unsigned long )res != (unsigned long )((void *)0));
    tmp___0 = ldv_is_err((void const *)res);
    ldv_assume(tmp___0 == 0L);
    }
    return (res);
  } else {
    return ((void *)0);
  }
}
}
void *ldv_zalloc_unknown_size(void)
{
  void *tmp ;
  {
  {
  tmp = ldv_calloc_unknown_size();
  }
  return (tmp);
}
}
void *ldv_undef_ptr(void) ;
unsigned long ldv_undef_ulong(void) ;
int ldv_undef_int_negative(void) ;
int ldv_undef_int_nonpositive(void) ;
extern int __VERIFIER_nondet_int(void) ;
extern unsigned long __VERIFIER_nondet_ulong(void) ;
extern void *__VERIFIER_nondet_pointer(void) ;
int ldv_undef_int(void)
{
  int tmp ;
  {
  {
  tmp = __VERIFIER_nondet_int();
  }
  return (tmp);
}
}
void *ldv_undef_ptr(void)
{
  void *tmp ;
  {
  {
  tmp = __VERIFIER_nondet_pointer();
  }
  return (tmp);
}
}
unsigned long ldv_undef_ulong(void)
{
  unsigned long tmp ;
  {
  {
  tmp = __VERIFIER_nondet_ulong();
  }
  return (tmp);
}
}
int ldv_undef_int_negative(void)
{
  int ret ;
  int tmp ;
  {
  {
  tmp = ldv_undef_int();
  ret = tmp;
  ldv_assume(ret < 0);
  }
  return (ret);
}
}
int ldv_undef_int_nonpositive(void)
{
  int ret ;
  int tmp ;
  {
  {
  tmp = ldv_undef_int();
  ret = tmp;
  ldv_assume(ret <= 0);
  }
  return (ret);
}
}
int ldv_thread_create(struct ldv_thread *ldv_thread , void (*function)(void * ) ,
                      void *data ) ;
int ldv_thread_create_N(struct ldv_thread_set *ldv_thread_set , void (*function)(void * ) ,
                        void *data ) ;
int ldv_thread_join(struct ldv_thread *ldv_thread , void (*function)(void * ) ) ;
int ldv_thread_join_N(struct ldv_thread_set *ldv_thread_set , void (*function)(void * ) ) ;
int ldv_thread_create(struct ldv_thread *ldv_thread , void (*function)(void * ) ,
                      void *data )
{
  {
  if ((unsigned long )function != (unsigned long )((void (*)(void * ))0)) {
    {
    (*function)(data);
    }
  } else {
  }
  return (0);
}
}
int ldv_thread_create_N(struct ldv_thread_set *ldv_thread_set , void (*function)(void * ) ,
                        void *data )
{
  int i ;
  {
  if ((unsigned long )function != (unsigned long )((void (*)(void * ))0)) {
    i = 0;
    goto ldv_1179;
    ldv_1178:
    {
    (*function)(data);
    i = i + 1;
    }
    ldv_1179: ;
    if (i < ldv_thread_set->number) {
      goto ldv_1178;
    } else {
    }
  } else {
  }
  return (0);
}
}
int ldv_thread_join(struct ldv_thread *ldv_thread , void (*function)(void * ) )
{
  {
  return (0);
}
}
int ldv_thread_join_N(struct ldv_thread_set *ldv_thread_set , void (*function)(void * ) )
{
  {
  return (0);
}
}
void ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock(int expr ) ;
void ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(int expr ) ;
void ldv_assert_linux_kernel_locking_spinlock__one_thread_double_unlock(int expr ) ;
void ldv_assert_linux_kernel_locking_spinlock__one_thread_locked_at_exit(int expr ) ;
static int ldv_spin_alloc_lock_of_task_struct = 1;
void ldv_spin_lock_alloc_lock_of_task_struct(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock(ldv_spin_alloc_lock_of_task_struct == 1);
  ldv_assume(ldv_spin_alloc_lock_of_task_struct == 1);
  ldv_spin_alloc_lock_of_task_struct = 2;
  }
  return;
}
}
void ldv_spin_unlock_alloc_lock_of_task_struct(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_unlock(ldv_spin_alloc_lock_of_task_struct == 2);
  ldv_assume(ldv_spin_alloc_lock_of_task_struct == 2);
  ldv_spin_alloc_lock_of_task_struct = 1;
  }
  return;
}
}
int ldv_spin_trylock_alloc_lock_of_task_struct(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_spin_alloc_lock_of_task_struct == 1);
  ldv_assume(ldv_spin_alloc_lock_of_task_struct == 1);
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (is_spin_held_by_another_thread != 0) {
    return (0);
  } else {
    ldv_spin_alloc_lock_of_task_struct = 2;
    return (1);
  }
}
}
void ldv_spin_unlock_wait_alloc_lock_of_task_struct(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_spin_alloc_lock_of_task_struct == 1);
  ldv_assume(ldv_spin_alloc_lock_of_task_struct == 1);
  }
  return;
}
}
int ldv_spin_is_locked_alloc_lock_of_task_struct(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (ldv_spin_alloc_lock_of_task_struct == 1 && is_spin_held_by_another_thread == 0) {
    return (0);
  } else {
    return (1);
  }
}
}
int ldv_spin_can_lock_alloc_lock_of_task_struct(void)
{
  int tmp ;
  {
  {
  tmp = ldv_spin_is_locked_alloc_lock_of_task_struct();
  }
  return (tmp == 0);
}
}
int ldv_spin_is_contended_alloc_lock_of_task_struct(void)
{
  int is_spin_contended ;
  {
  {
  is_spin_contended = ldv_undef_int();
  }
  if (is_spin_contended != 0) {
    return (0);
  } else {
    return (1);
  }
}
}
int ldv_atomic_dec_and_lock_alloc_lock_of_task_struct(void)
{
  int atomic_value_after_dec ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_spin_alloc_lock_of_task_struct == 1);
  ldv_assume(ldv_spin_alloc_lock_of_task_struct == 1);
  atomic_value_after_dec = ldv_undef_int();
  }
  if (atomic_value_after_dec == 0) {
    ldv_spin_alloc_lock_of_task_struct = 2;
    return (1);
  } else {
  }
  return (0);
}
}
static int ldv_spin_i_lock_of_inode = 1;
void ldv_spin_lock_i_lock_of_inode(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock(ldv_spin_i_lock_of_inode == 1);
  ldv_assume(ldv_spin_i_lock_of_inode == 1);
  ldv_spin_i_lock_of_inode = 2;
  }
  return;
}
}
void ldv_spin_unlock_i_lock_of_inode(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_unlock(ldv_spin_i_lock_of_inode == 2);
  ldv_assume(ldv_spin_i_lock_of_inode == 2);
  ldv_spin_i_lock_of_inode = 1;
  }
  return;
}
}
int ldv_spin_trylock_i_lock_of_inode(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_spin_i_lock_of_inode == 1);
  ldv_assume(ldv_spin_i_lock_of_inode == 1);
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (is_spin_held_by_another_thread != 0) {
    return (0);
  } else {
    ldv_spin_i_lock_of_inode = 2;
    return (1);
  }
}
}
void ldv_spin_unlock_wait_i_lock_of_inode(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_spin_i_lock_of_inode == 1);
  ldv_assume(ldv_spin_i_lock_of_inode == 1);
  }
  return;
}
}
int ldv_spin_is_locked_i_lock_of_inode(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (ldv_spin_i_lock_of_inode == 1 && is_spin_held_by_another_thread == 0) {
    return (0);
  } else {
    return (1);
  }
}
}
int ldv_spin_can_lock_i_lock_of_inode(void)
{
  int tmp ;
  {
  {
  tmp = ldv_spin_is_locked_i_lock_of_inode();
  }
  return (tmp == 0);
}
}
int ldv_spin_is_contended_i_lock_of_inode(void)
{
  int is_spin_contended ;
  {
  {
  is_spin_contended = ldv_undef_int();
  }
  if (is_spin_contended != 0) {
    return (0);
  } else {
    return (1);
  }
}
}
int ldv_atomic_dec_and_lock_i_lock_of_inode(void)
{
  int atomic_value_after_dec ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_spin_i_lock_of_inode == 1);
  ldv_assume(ldv_spin_i_lock_of_inode == 1);
  atomic_value_after_dec = ldv_undef_int();
  }
  if (atomic_value_after_dec == 0) {
    ldv_spin_i_lock_of_inode = 2;
    return (1);
  } else {
  }
  return (0);
}
}
static int ldv_spin_irqlock_of_vsp1_pipeline = 1;
void ldv_spin_lock_irqlock_of_vsp1_pipeline(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock(ldv_spin_irqlock_of_vsp1_pipeline == 1);
  ldv_assume(ldv_spin_irqlock_of_vsp1_pipeline == 1);
  ldv_spin_irqlock_of_vsp1_pipeline = 2;
  }
  return;
}
}
void ldv_spin_unlock_irqlock_of_vsp1_pipeline(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_unlock(ldv_spin_irqlock_of_vsp1_pipeline == 2);
  ldv_assume(ldv_spin_irqlock_of_vsp1_pipeline == 2);
  ldv_spin_irqlock_of_vsp1_pipeline = 1;
  }
  return;
}
}
int ldv_spin_trylock_irqlock_of_vsp1_pipeline(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_spin_irqlock_of_vsp1_pipeline == 1);
  ldv_assume(ldv_spin_irqlock_of_vsp1_pipeline == 1);
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (is_spin_held_by_another_thread != 0) {
    return (0);
  } else {
    ldv_spin_irqlock_of_vsp1_pipeline = 2;
    return (1);
  }
}
}
void ldv_spin_unlock_wait_irqlock_of_vsp1_pipeline(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_spin_irqlock_of_vsp1_pipeline == 1);
  ldv_assume(ldv_spin_irqlock_of_vsp1_pipeline == 1);
  }
  return;
}
}
int ldv_spin_is_locked_irqlock_of_vsp1_pipeline(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (ldv_spin_irqlock_of_vsp1_pipeline == 1 && is_spin_held_by_another_thread == 0) {
    return (0);
  } else {
    return (1);
  }
}
}
int ldv_spin_can_lock_irqlock_of_vsp1_pipeline(void)
{
  int tmp ;
  {
  {
  tmp = ldv_spin_is_locked_irqlock_of_vsp1_pipeline();
  }
  return (tmp == 0);
}
}
int ldv_spin_is_contended_irqlock_of_vsp1_pipeline(void)
{
  int is_spin_contended ;
  {
  {
  is_spin_contended = ldv_undef_int();
  }
  if (is_spin_contended != 0) {
    return (0);
  } else {
    return (1);
  }
}
}
int ldv_atomic_dec_and_lock_irqlock_of_vsp1_pipeline(void)
{
  int atomic_value_after_dec ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_spin_irqlock_of_vsp1_pipeline == 1);
  ldv_assume(ldv_spin_irqlock_of_vsp1_pipeline == 1);
  atomic_value_after_dec = ldv_undef_int();
  }
  if (atomic_value_after_dec == 0) {
    ldv_spin_irqlock_of_vsp1_pipeline = 2;
    return (1);
  } else {
  }
  return (0);
}
}
static int ldv_spin_irqlock_of_vsp1_video = 1;
void ldv_spin_lock_irqlock_of_vsp1_video(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock(ldv_spin_irqlock_of_vsp1_video == 1);
  ldv_assume(ldv_spin_irqlock_of_vsp1_video == 1);
  ldv_spin_irqlock_of_vsp1_video = 2;
  }
  return;
}
}
void ldv_spin_unlock_irqlock_of_vsp1_video(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_unlock(ldv_spin_irqlock_of_vsp1_video == 2);
  ldv_assume(ldv_spin_irqlock_of_vsp1_video == 2);
  ldv_spin_irqlock_of_vsp1_video = 1;
  }
  return;
}
}
int ldv_spin_trylock_irqlock_of_vsp1_video(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_spin_irqlock_of_vsp1_video == 1);
  ldv_assume(ldv_spin_irqlock_of_vsp1_video == 1);
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (is_spin_held_by_another_thread != 0) {
    return (0);
  } else {
    ldv_spin_irqlock_of_vsp1_video = 2;
    return (1);
  }
}
}
void ldv_spin_unlock_wait_irqlock_of_vsp1_video(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_spin_irqlock_of_vsp1_video == 1);
  ldv_assume(ldv_spin_irqlock_of_vsp1_video == 1);
  }
  return;
}
}
int ldv_spin_is_locked_irqlock_of_vsp1_video(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (ldv_spin_irqlock_of_vsp1_video == 1 && is_spin_held_by_another_thread == 0) {
    return (0);
  } else {
    return (1);
  }
}
}
int ldv_spin_can_lock_irqlock_of_vsp1_video(void)
{
  int tmp ;
  {
  {
  tmp = ldv_spin_is_locked_irqlock_of_vsp1_video();
  }
  return (tmp == 0);
}
}
int ldv_spin_is_contended_irqlock_of_vsp1_video(void)
{
  int is_spin_contended ;
  {
  {
  is_spin_contended = ldv_undef_int();
  }
  if (is_spin_contended != 0) {
    return (0);
  } else {
    return (1);
  }
}
}
int ldv_atomic_dec_and_lock_irqlock_of_vsp1_video(void)
{
  int atomic_value_after_dec ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_spin_irqlock_of_vsp1_video == 1);
  ldv_assume(ldv_spin_irqlock_of_vsp1_video == 1);
  atomic_value_after_dec = ldv_undef_int();
  }
  if (atomic_value_after_dec == 0) {
    ldv_spin_irqlock_of_vsp1_video = 2;
    return (1);
  } else {
  }
  return (0);
}
}
static int ldv_spin_lock = 1;
void ldv_spin_lock_lock(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock(ldv_spin_lock == 1);
  ldv_assume(ldv_spin_lock == 1);
  ldv_spin_lock = 2;
  }
  return;
}
}
void ldv_spin_unlock_lock(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_unlock(ldv_spin_lock == 2);
  ldv_assume(ldv_spin_lock == 2);
  ldv_spin_lock = 1;
  }
  return;
}
}
int ldv_spin_trylock_lock(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_spin_lock == 1);
  ldv_assume(ldv_spin_lock == 1);
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (is_spin_held_by_another_thread != 0) {
    return (0);
  } else {
    ldv_spin_lock = 2;
    return (1);
  }
}
}
void ldv_spin_unlock_wait_lock(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_spin_lock == 1);
  ldv_assume(ldv_spin_lock == 1);
  }
  return;
}
}
int ldv_spin_is_locked_lock(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (ldv_spin_lock == 1 && is_spin_held_by_another_thread == 0) {
    return (0);
  } else {
    return (1);
  }
}
}
int ldv_spin_can_lock_lock(void)
{
  int tmp ;
  {
  {
  tmp = ldv_spin_is_locked_lock();
  }
  return (tmp == 0);
}
}
int ldv_spin_is_contended_lock(void)
{
  int is_spin_contended ;
  {
  {
  is_spin_contended = ldv_undef_int();
  }
  if (is_spin_contended != 0) {
    return (0);
  } else {
    return (1);
  }
}
}
int ldv_atomic_dec_and_lock_lock(void)
{
  int atomic_value_after_dec ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_spin_lock == 1);
  ldv_assume(ldv_spin_lock == 1);
  atomic_value_after_dec = ldv_undef_int();
  }
  if (atomic_value_after_dec == 0) {
    ldv_spin_lock = 2;
    return (1);
  } else {
  }
  return (0);
}
}
static int ldv_spin_lock_of_NOT_ARG_SIGN = 1;
void ldv_spin_lock_lock_of_NOT_ARG_SIGN(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock(ldv_spin_lock_of_NOT_ARG_SIGN == 1);
  ldv_assume(ldv_spin_lock_of_NOT_ARG_SIGN == 1);
  ldv_spin_lock_of_NOT_ARG_SIGN = 2;
  }
  return;
}
}
void ldv_spin_unlock_lock_of_NOT_ARG_SIGN(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_unlock(ldv_spin_lock_of_NOT_ARG_SIGN == 2);
  ldv_assume(ldv_spin_lock_of_NOT_ARG_SIGN == 2);
  ldv_spin_lock_of_NOT_ARG_SIGN = 1;
  }
  return;
}
}
int ldv_spin_trylock_lock_of_NOT_ARG_SIGN(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_spin_lock_of_NOT_ARG_SIGN == 1);
  ldv_assume(ldv_spin_lock_of_NOT_ARG_SIGN == 1);
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (is_spin_held_by_another_thread != 0) {
    return (0);
  } else {
    ldv_spin_lock_of_NOT_ARG_SIGN = 2;
    return (1);
  }
}
}
void ldv_spin_unlock_wait_lock_of_NOT_ARG_SIGN(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_spin_lock_of_NOT_ARG_SIGN == 1);
  ldv_assume(ldv_spin_lock_of_NOT_ARG_SIGN == 1);
  }
  return;
}
}
int ldv_spin_is_locked_lock_of_NOT_ARG_SIGN(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (ldv_spin_lock_of_NOT_ARG_SIGN == 1 && is_spin_held_by_another_thread == 0) {
    return (0);
  } else {
    return (1);
  }
}
}
int ldv_spin_can_lock_lock_of_NOT_ARG_SIGN(void)
{
  int tmp ;
  {
  {
  tmp = ldv_spin_is_locked_lock_of_NOT_ARG_SIGN();
  }
  return (tmp == 0);
}
}
int ldv_spin_is_contended_lock_of_NOT_ARG_SIGN(void)
{
  int is_spin_contended ;
  {
  {
  is_spin_contended = ldv_undef_int();
  }
  if (is_spin_contended != 0) {
    return (0);
  } else {
    return (1);
  }
}
}
int ldv_atomic_dec_and_lock_lock_of_NOT_ARG_SIGN(void)
{
  int atomic_value_after_dec ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_spin_lock_of_NOT_ARG_SIGN == 1);
  ldv_assume(ldv_spin_lock_of_NOT_ARG_SIGN == 1);
  atomic_value_after_dec = ldv_undef_int();
  }
  if (atomic_value_after_dec == 0) {
    ldv_spin_lock_of_NOT_ARG_SIGN = 2;
    return (1);
  } else {
  }
  return (0);
}
}
static int ldv_spin_node_size_lock_of_pglist_data = 1;
void ldv_spin_lock_node_size_lock_of_pglist_data(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock(ldv_spin_node_size_lock_of_pglist_data == 1);
  ldv_assume(ldv_spin_node_size_lock_of_pglist_data == 1);
  ldv_spin_node_size_lock_of_pglist_data = 2;
  }
  return;
}
}
void ldv_spin_unlock_node_size_lock_of_pglist_data(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_unlock(ldv_spin_node_size_lock_of_pglist_data == 2);
  ldv_assume(ldv_spin_node_size_lock_of_pglist_data == 2);
  ldv_spin_node_size_lock_of_pglist_data = 1;
  }
  return;
}
}
int ldv_spin_trylock_node_size_lock_of_pglist_data(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_spin_node_size_lock_of_pglist_data == 1);
  ldv_assume(ldv_spin_node_size_lock_of_pglist_data == 1);
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (is_spin_held_by_another_thread != 0) {
    return (0);
  } else {
    ldv_spin_node_size_lock_of_pglist_data = 2;
    return (1);
  }
}
}
void ldv_spin_unlock_wait_node_size_lock_of_pglist_data(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_spin_node_size_lock_of_pglist_data == 1);
  ldv_assume(ldv_spin_node_size_lock_of_pglist_data == 1);
  }
  return;
}
}
int ldv_spin_is_locked_node_size_lock_of_pglist_data(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (ldv_spin_node_size_lock_of_pglist_data == 1 && is_spin_held_by_another_thread == 0) {
    return (0);
  } else {
    return (1);
  }
}
}
int ldv_spin_can_lock_node_size_lock_of_pglist_data(void)
{
  int tmp ;
  {
  {
  tmp = ldv_spin_is_locked_node_size_lock_of_pglist_data();
  }
  return (tmp == 0);
}
}
int ldv_spin_is_contended_node_size_lock_of_pglist_data(void)
{
  int is_spin_contended ;
  {
  {
  is_spin_contended = ldv_undef_int();
  }
  if (is_spin_contended != 0) {
    return (0);
  } else {
    return (1);
  }
}
}
int ldv_atomic_dec_and_lock_node_size_lock_of_pglist_data(void)
{
  int atomic_value_after_dec ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_spin_node_size_lock_of_pglist_data == 1);
  ldv_assume(ldv_spin_node_size_lock_of_pglist_data == 1);
  atomic_value_after_dec = ldv_undef_int();
  }
  if (atomic_value_after_dec == 0) {
    ldv_spin_node_size_lock_of_pglist_data = 2;
    return (1);
  } else {
  }
  return (0);
}
}
static int ldv_spin_ptl = 1;
void ldv_spin_lock_ptl(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock(ldv_spin_ptl == 1);
  ldv_assume(ldv_spin_ptl == 1);
  ldv_spin_ptl = 2;
  }
  return;
}
}
void ldv_spin_unlock_ptl(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_unlock(ldv_spin_ptl == 2);
  ldv_assume(ldv_spin_ptl == 2);
  ldv_spin_ptl = 1;
  }
  return;
}
}
int ldv_spin_trylock_ptl(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_spin_ptl == 1);
  ldv_assume(ldv_spin_ptl == 1);
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (is_spin_held_by_another_thread != 0) {
    return (0);
  } else {
    ldv_spin_ptl = 2;
    return (1);
  }
}
}
void ldv_spin_unlock_wait_ptl(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_spin_ptl == 1);
  ldv_assume(ldv_spin_ptl == 1);
  }
  return;
}
}
int ldv_spin_is_locked_ptl(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (ldv_spin_ptl == 1 && is_spin_held_by_another_thread == 0) {
    return (0);
  } else {
    return (1);
  }
}
}
int ldv_spin_can_lock_ptl(void)
{
  int tmp ;
  {
  {
  tmp = ldv_spin_is_locked_ptl();
  }
  return (tmp == 0);
}
}
int ldv_spin_is_contended_ptl(void)
{
  int is_spin_contended ;
  {
  {
  is_spin_contended = ldv_undef_int();
  }
  if (is_spin_contended != 0) {
    return (0);
  } else {
    return (1);
  }
}
}
int ldv_atomic_dec_and_lock_ptl(void)
{
  int atomic_value_after_dec ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_spin_ptl == 1);
  ldv_assume(ldv_spin_ptl == 1);
  atomic_value_after_dec = ldv_undef_int();
  }
  if (atomic_value_after_dec == 0) {
    ldv_spin_ptl = 2;
    return (1);
  } else {
  }
  return (0);
}
}
static int ldv_spin_siglock_of_sighand_struct = 1;
void ldv_spin_lock_siglock_of_sighand_struct(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock(ldv_spin_siglock_of_sighand_struct == 1);
  ldv_assume(ldv_spin_siglock_of_sighand_struct == 1);
  ldv_spin_siglock_of_sighand_struct = 2;
  }
  return;
}
}
void ldv_spin_unlock_siglock_of_sighand_struct(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_unlock(ldv_spin_siglock_of_sighand_struct == 2);
  ldv_assume(ldv_spin_siglock_of_sighand_struct == 2);
  ldv_spin_siglock_of_sighand_struct = 1;
  }
  return;
}
}
int ldv_spin_trylock_siglock_of_sighand_struct(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_spin_siglock_of_sighand_struct == 1);
  ldv_assume(ldv_spin_siglock_of_sighand_struct == 1);
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (is_spin_held_by_another_thread != 0) {
    return (0);
  } else {
    ldv_spin_siglock_of_sighand_struct = 2;
    return (1);
  }
}
}
void ldv_spin_unlock_wait_siglock_of_sighand_struct(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_spin_siglock_of_sighand_struct == 1);
  ldv_assume(ldv_spin_siglock_of_sighand_struct == 1);
  }
  return;
}
}
int ldv_spin_is_locked_siglock_of_sighand_struct(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (ldv_spin_siglock_of_sighand_struct == 1 && is_spin_held_by_another_thread == 0) {
    return (0);
  } else {
    return (1);
  }
}
}
int ldv_spin_can_lock_siglock_of_sighand_struct(void)
{
  int tmp ;
  {
  {
  tmp = ldv_spin_is_locked_siglock_of_sighand_struct();
  }
  return (tmp == 0);
}
}
int ldv_spin_is_contended_siglock_of_sighand_struct(void)
{
  int is_spin_contended ;
  {
  {
  is_spin_contended = ldv_undef_int();
  }
  if (is_spin_contended != 0) {
    return (0);
  } else {
    return (1);
  }
}
}
int ldv_atomic_dec_and_lock_siglock_of_sighand_struct(void)
{
  int atomic_value_after_dec ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_spin_siglock_of_sighand_struct == 1);
  ldv_assume(ldv_spin_siglock_of_sighand_struct == 1);
  atomic_value_after_dec = ldv_undef_int();
  }
  if (atomic_value_after_dec == 0) {
    ldv_spin_siglock_of_sighand_struct = 2;
    return (1);
  } else {
  }
  return (0);
}
}
void ldv_check_final_state(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_locked_at_exit(ldv_spin_alloc_lock_of_task_struct == 1);
  ldv_assert_linux_kernel_locking_spinlock__one_thread_locked_at_exit(ldv_spin_i_lock_of_inode == 1);
  ldv_assert_linux_kernel_locking_spinlock__one_thread_locked_at_exit(ldv_spin_irqlock_of_vsp1_pipeline == 1);
  ldv_assert_linux_kernel_locking_spinlock__one_thread_locked_at_exit(ldv_spin_irqlock_of_vsp1_video == 1);
  ldv_assert_linux_kernel_locking_spinlock__one_thread_locked_at_exit(ldv_spin_lock == 1);
  ldv_assert_linux_kernel_locking_spinlock__one_thread_locked_at_exit(ldv_spin_lock_of_NOT_ARG_SIGN == 1);
  ldv_assert_linux_kernel_locking_spinlock__one_thread_locked_at_exit(ldv_spin_node_size_lock_of_pglist_data == 1);
  ldv_assert_linux_kernel_locking_spinlock__one_thread_locked_at_exit(ldv_spin_ptl == 1);
  ldv_assert_linux_kernel_locking_spinlock__one_thread_locked_at_exit(ldv_spin_siglock_of_sighand_struct == 1);
  }
  return;
}
}
int ldv_exclusive_spin_is_locked(void)
{
  {
  if (ldv_spin_alloc_lock_of_task_struct == 2) {
    return (1);
  } else {
  }
  if (ldv_spin_i_lock_of_inode == 2) {
    return (1);
  } else {
  }
  if (ldv_spin_irqlock_of_vsp1_pipeline == 2) {
    return (1);
  } else {
  }
  if (ldv_spin_irqlock_of_vsp1_video == 2) {
    return (1);
  } else {
  }
  if (ldv_spin_lock == 2) {
    return (1);
  } else {
  }
  if (ldv_spin_lock_of_NOT_ARG_SIGN == 2) {
    return (1);
  } else {
  }
  if (ldv_spin_node_size_lock_of_pglist_data == 2) {
    return (1);
  } else {
  }
  if (ldv_spin_ptl == 2) {
    return (1);
  } else {
  }
  if (ldv_spin_siglock_of_sighand_struct == 2) {
    return (1);
  } else {
  }
  return (0);
}
}
extern void __VERIFIER_error(void) ;
void ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock(int expr )
{
  {
  if (! expr) {
    {
    __VERIFIER_error();
    }
  } else {
  }
  return;
}
}
void ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(int expr )
{
  {
  if (! expr) {
    {
    __VERIFIER_error();
    }
  } else {
  }
  return;
}
}
void ldv_assert_linux_kernel_locking_spinlock__one_thread_double_unlock(int expr )
{
  {
  if (! expr) {
    {
    __VERIFIER_error();
    }
  } else {
  }
  return;
}
}
void ldv_assert_linux_kernel_locking_spinlock__one_thread_locked_at_exit(int expr )
{
  {
  if (! expr) {
    {
    __VERIFIER_error();
    }
  } else {
  }
  return;
}
}
int __VERIFIER_nondet_int(void);
int __dynamic_dev_dbg(struct _ddebug *arg0, const struct device *arg1, const char *arg2, ...) {
  return __VERIFIER_nondet_int();
}
void __init_waitqueue_head(wait_queue_head_t *arg0, const char *arg1, struct lock_class_key *arg2) {
  return;
}
void __ldv_spin_lock(spinlock_t *arg0) {
  return;
}
void __list_add(struct list_head *arg0, struct list_head *arg1, struct list_head *arg2) {
  return;
}
void __mutex_init(struct mutex *arg0, const char *arg1, struct lock_class_key *arg2) {
  return;
}
int __VERIFIER_nondet_int(void);
int __platform_driver_register(struct platform_driver *arg0, struct module *arg1) {
  return __VERIFIER_nondet_int();
}
void __raw_spin_lock_init(raw_spinlock_t *arg0, const char *arg1, struct lock_class_key *arg2) {
  return;
}
int __VERIFIER_nondet_int(void);
int __video_register_device(struct video_device *arg0, int arg1, int arg2, int arg3, struct module *arg4) {
  return __VERIFIER_nondet_int();
}
void __wake_up(wait_queue_head_t *arg0, unsigned int arg1, int arg2, void *arg3) {
  return;
}
void _raw_spin_unlock_irqrestore(raw_spinlock_t *arg0, unsigned long arg1) {
  return;
}
void clk_disable(struct clk *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int clk_enable(struct clk *arg0) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int clk_prepare(struct clk *arg0) {
  return __VERIFIER_nondet_int();
}
void clk_unprepare(struct clk *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int dev_err(const struct device *arg0, const char *arg1, ...) {
  return __VERIFIER_nondet_int();
}
void *external_alloc(void);
struct clk *devm_clk_get(struct device *arg0, const char *arg1) {
  return (struct clk *)external_alloc();
}
void *external_alloc(void);
void *devm_ioremap_resource(struct device *arg0, struct resource *arg1) {
  return (void *)external_alloc();
}
void *external_alloc(void);
void *devm_kmalloc(struct device *arg0, size_t arg1, gfp_t arg2) {
  return (void *)external_alloc();
}
int __VERIFIER_nondet_int(void);
int devm_request_threaded_irq(struct device *arg0, unsigned int arg1, irqreturn_t (*arg2)(int, void *), irqreturn_t (*arg3)(int, void *), unsigned long arg4, const char *arg5, void *arg6) {
  return __VERIFIER_nondet_int();
}
void *external_alloc(void);
void *external_allocated_data() {
  return (void *)external_alloc();
}
void finish_wait(wait_queue_head_t *arg0, wait_queue_t *arg1) {
  return;
}
unsigned int __VERIFIER_nondet_uint(void);
unsigned int ioread32(void *arg0) {
  return __VERIFIER_nondet_uint();
}
void iowrite32(u32 arg0, void *arg1) {
  return;
}
void ldv_after_alloc(void *arg0) {
  return;
}
void ldv_assert(const char *arg0, int arg1) {
  return;
}
void ldv_check_alloc_flags(gfp_t arg0) {
  return;
}
void ldv_initialize() {
  return;
}
void ldv_pre_probe() {
  return;
}
void ldv_switch_to_interrupt_context() {
  return;
}
void ldv_switch_to_process_context() {
  return;
}
void list_del(struct list_head *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int media_device_register(struct media_device *arg0) {
  return __VERIFIER_nondet_int();
}
void media_device_unregister(struct media_device *arg0) {
  return;
}
void media_entity_cleanup(struct media_entity *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int media_entity_create_link(struct media_entity *arg0, u16 arg1, struct media_entity *arg2, u16 arg3, u32 arg4) {
  return __VERIFIER_nondet_int();
}
void *external_alloc(void);
struct media_entity *media_entity_graph_walk_next(struct media_entity_graph *arg0) {
  return (struct media_entity *)external_alloc();
}
void media_entity_graph_walk_start(struct media_entity_graph *arg0, struct media_entity *arg1) {
  return;
}
int __VERIFIER_nondet_int(void);
int media_entity_init(struct media_entity *arg0, u16 arg1, struct media_pad *arg2, u16 arg3) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int media_entity_pipeline_start(struct media_entity *arg0, struct media_pipeline *arg1) {
  return __VERIFIER_nondet_int();
}
void media_entity_pipeline_stop(struct media_entity *arg0) {
  return;
}
void *external_alloc(void);
struct media_pad *media_entity_remote_pad(struct media_pad *arg0) {
  return (struct media_pad *)external_alloc();
}
unsigned long __VERIFIER_nondet_ulong(void);
unsigned long int msecs_to_jiffies(const unsigned int arg0) {
  return __VERIFIER_nondet_ulong();
}
void mutex_lock_nested(struct mutex *arg0, unsigned int arg1) {
  return;
}
void mutex_unlock(struct mutex *arg0) {
  return;
}
void platform_driver_unregister(struct platform_driver *arg0) {
  return;
}
void *external_alloc(void);
struct resource *platform_get_resource(struct platform_device *arg0, unsigned int arg1, unsigned int arg2) {
  return (struct resource *)external_alloc();
}
long __VERIFIER_nondet_long(void);
long int prepare_to_wait_event(wait_queue_head_t *arg0, wait_queue_t *arg1, int arg2) {
  return __VERIFIER_nondet_long();
}
long __VERIFIER_nondet_long(void);
long int schedule_timeout(long arg0) {
  return __VERIFIER_nondet_long();
}
unsigned long __VERIFIER_nondet_ulong(void);
size_t strlcpy(char *arg0, const char *arg1, size_t arg2) {
  return __VERIFIER_nondet_ulong();
}
void usleep_range(unsigned long arg0, unsigned long arg1) {
  return;
}
void v4l2_ctrl_handler_free(struct v4l2_ctrl_handler *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int v4l2_ctrl_handler_init_class(struct v4l2_ctrl_handler *arg0, unsigned int arg1, struct lock_class_key *arg2, const char *arg3) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int v4l2_ctrl_handler_setup(struct v4l2_ctrl_handler *arg0) {
  return __VERIFIER_nondet_int();
}
void *external_alloc(void);
struct v4l2_ctrl *v4l2_ctrl_new_custom(struct v4l2_ctrl_handler *arg0, const struct v4l2_ctrl_config *arg1, void *arg2) {
  return (struct v4l2_ctrl *)external_alloc();
}
int __VERIFIER_nondet_int(void);
int v4l2_device_register(struct device *arg0, struct v4l2_device *arg1) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int v4l2_device_register_subdev(struct v4l2_device *arg0, struct v4l2_subdev *arg1) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int v4l2_device_register_subdev_nodes(struct v4l2_device *arg0) {
  return __VERIFIER_nondet_int();
}
void v4l2_device_unregister(struct v4l2_device *arg0) {
  return;
}
void v4l2_fh_add(struct v4l2_fh *arg0) {
  return;
}
void v4l2_fh_del(struct v4l2_fh *arg0) {
  return;
}
void v4l2_fh_init(struct v4l2_fh *arg0, struct video_device *arg1) {
  return;
}
int __VERIFIER_nondet_int(void);
int v4l2_fh_release(struct file *arg0) {
  return __VERIFIER_nondet_int();
}
void v4l2_get_timestamp(struct timeval *arg0) {
  return;
}
void v4l2_subdev_init(struct v4l2_subdev *arg0, const struct v4l2_subdev_ops *arg1) {
  return;
}
int __VERIFIER_nondet_int(void);
int v4l2_subdev_link_validate(struct media_link *arg0) {
  return __VERIFIER_nondet_int();
}
void vb2_buffer_done(struct vb2_buffer *arg0, enum vb2_buffer_state arg1) {
  return;
}
void vb2_dma_contig_cleanup_ctx(void *arg0) {
  return;
}
void *external_alloc(void);
void *vb2_dma_contig_init_ctx(struct device *arg0) {
  return (void *)external_alloc();
}
int __VERIFIER_nondet_int(void);
int vb2_fop_mmap(struct file *arg0, struct vm_area_struct *arg1) {
  return __VERIFIER_nondet_int();
}
unsigned int __VERIFIER_nondet_uint(void);
unsigned int vb2_fop_poll(struct file *arg0, poll_table *arg1) {
  return __VERIFIER_nondet_uint();
}
int __VERIFIER_nondet_int(void);
int vb2_ioctl_create_bufs(struct file *arg0, void *arg1, struct v4l2_create_buffers *arg2) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int vb2_ioctl_dqbuf(struct file *arg0, void *arg1, struct v4l2_buffer *arg2) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int vb2_ioctl_prepare_buf(struct file *arg0, void *arg1, struct v4l2_buffer *arg2) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int vb2_ioctl_qbuf(struct file *arg0, void *arg1, struct v4l2_buffer *arg2) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int vb2_ioctl_querybuf(struct file *arg0, void *arg1, struct v4l2_buffer *arg2) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int vb2_ioctl_reqbufs(struct file *arg0, void *arg1, struct v4l2_requestbuffers *arg2) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int vb2_ioctl_streamoff(struct file *arg0, void *arg1, enum v4l2_buf_type arg2) {
  return __VERIFIER_nondet_int();
}
void vb2_ops_wait_finish(struct vb2_queue *arg0) {
  return;
}
void vb2_ops_wait_prepare(struct vb2_queue *arg0) {
  return;
}
void *external_alloc(void);
void *vb2_plane_cookie(struct vb2_buffer *arg0, unsigned int arg1) {
  return (void *)external_alloc();
}
int __VERIFIER_nondet_int(void);
int vb2_queue_init(struct vb2_queue *arg0) {
  return __VERIFIER_nondet_int();
}
void vb2_queue_release(struct vb2_queue *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int vb2_streamon(struct vb2_queue *arg0, enum v4l2_buf_type arg1) {
  return __VERIFIER_nondet_int();
}
void *external_alloc(void);
struct video_device *video_devdata(struct file *arg0) {
  return (struct video_device *)external_alloc();
}
long __VERIFIER_nondet_long(void);
long int video_ioctl2(struct file *arg0, unsigned int arg1, unsigned long arg2) {
  return __VERIFIER_nondet_long();
}
void video_unregister_device(struct video_device *arg0) {
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
