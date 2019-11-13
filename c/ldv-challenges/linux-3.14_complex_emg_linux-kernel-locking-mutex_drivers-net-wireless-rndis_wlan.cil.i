struct device;
typedef signed char __s8;
typedef unsigned char __u8;
typedef short __s16;
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
struct mutex;
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
struct __anonstruct____missing_field_name_9 {
   unsigned int a ;
   unsigned int b ;
};
struct __anonstruct____missing_field_name_10 {
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
union __anonunion____missing_field_name_8 {
   struct __anonstruct____missing_field_name_9 __annonCompField4 ;
   struct __anonstruct____missing_field_name_10 __annonCompField5 ;
};
struct desc_struct {
   union __anonunion____missing_field_name_8 __annonCompField6 ;
};
typedef unsigned long pgdval_t;
typedef unsigned long pgprotval_t;
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
struct arch_spinlock;
typedef u16 __ticket_t;
typedef u32 __ticketpair_t;
struct __raw_tickets {
   __ticket_t head ;
   __ticket_t tail ;
};
union __anonunion____missing_field_name_15 {
   __ticketpair_t head_tail ;
   struct __raw_tickets tickets ;
};
struct arch_spinlock {
   union __anonunion____missing_field_name_15 __annonCompField7 ;
};
typedef struct arch_spinlock arch_spinlock_t;
struct __anonstruct____missing_field_name_17 {
   u32 read ;
   s32 write ;
};
union __anonunion_arch_rwlock_t_16 {
   s64 lock ;
   struct __anonstruct____missing_field_name_17 __annonCompField8 ;
};
typedef union __anonunion_arch_rwlock_t_16 arch_rwlock_t;
typedef void (*ctor_fn_t)(void);
struct _ddebug {
   char const *modname ;
   char const *function ;
   char const *filename ;
   char const *format ;
   unsigned int lineno : 18 ;
   unsigned int flags : 8 ;
};
struct net_device;
struct file_operations;
struct completion;
struct pid;
struct plist_head {
   struct list_head node_list ;
};
struct plist_node {
   int prio ;
   struct list_head prio_list ;
   struct list_head node_list ;
};
struct lockdep_map;
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
struct rw_semaphore;
struct rw_semaphore {
   long count ;
   raw_spinlock_t wait_lock ;
   struct list_head wait_list ;
   struct lockdep_map dep_map ;
};
struct seqcount {
   unsigned int sequence ;
   struct lockdep_map dep_map ;
};
typedef struct seqcount seqcount_t;
struct __anonstruct_seqlock_t_35 {
   struct seqcount seqcount ;
   spinlock_t lock ;
};
typedef struct __anonstruct_seqlock_t_35 seqlock_t;
struct __wait_queue_head {
   spinlock_t lock ;
   struct list_head task_list ;
};
typedef struct __wait_queue_head wait_queue_head_t;
struct completion {
   unsigned int done ;
   wait_queue_head_t wait ;
};
struct notifier_block;
struct timespec {
   __kernel_time_t tv_sec ;
   long tv_nsec ;
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
struct notifier_block {
   int (*notifier_call)(struct notifier_block * , unsigned long , void * ) ;
   struct notifier_block *next ;
   int priority ;
};
struct blocking_notifier_head {
   struct rw_semaphore rwsem ;
   struct notifier_block *head ;
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
struct ctl_table;
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
struct pm_qos_request {
   struct plist_node node ;
   int pm_qos_class ;
   struct delayed_work work ;
};
struct pm_qos_flags_request {
   struct list_head node ;
   s32 flags ;
};
enum dev_pm_qos_req_type {
    DEV_PM_QOS_LATENCY = 1,
    DEV_PM_QOS_FLAGS = 2
} ;
union __anonunion_data_133 {
   struct plist_node pnode ;
   struct pm_qos_flags_request flr ;
};
struct dev_pm_qos_request {
   enum dev_pm_qos_req_type type ;
   union __anonunion_data_133 data ;
   struct device *dev ;
};
enum pm_qos_type {
    PM_QOS_UNITIALIZED = 0,
    PM_QOS_MAX = 1,
    PM_QOS_MIN = 2
} ;
struct pm_qos_constraints {
   struct plist_head list ;
   s32 target_value ;
   s32 default_value ;
   enum pm_qos_type type ;
   struct blocking_notifier_head *notifiers ;
};
struct pm_qos_flags {
   struct list_head list ;
   s32 effective_flags ;
};
struct dev_pm_qos {
   struct pm_qos_constraints latency ;
   struct pm_qos_flags flags ;
   struct dev_pm_qos_request *latency_req ;
   struct dev_pm_qos_request *flags_req ;
};
struct iovec {
   void *iov_base ;
   __kernel_size_t iov_len ;
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
struct __anonstruct____missing_field_name_136 {
   struct arch_uprobe_task autask ;
   unsigned long vaddr ;
};
struct __anonstruct____missing_field_name_137 {
   struct callback_head dup_xol_work ;
   unsigned long dup_xol_addr ;
};
union __anonunion____missing_field_name_135 {
   struct __anonstruct____missing_field_name_136 __annonCompField34 ;
   struct __anonstruct____missing_field_name_137 __annonCompField35 ;
};
struct uprobe;
struct return_instance;
struct uprobe_task {
   enum uprobe_task_state state ;
   union __anonunion____missing_field_name_135 __annonCompField36 ;
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
union __anonunion____missing_field_name_138 {
   struct address_space *mapping ;
   void *s_mem ;
};
union __anonunion____missing_field_name_140 {
   unsigned long index ;
   void *freelist ;
   bool pfmemalloc ;
};
struct __anonstruct____missing_field_name_144 {
   unsigned int inuse : 16 ;
   unsigned int objects : 15 ;
   unsigned int frozen : 1 ;
};
union __anonunion____missing_field_name_143 {
   atomic_t _mapcount ;
   struct __anonstruct____missing_field_name_144 __annonCompField39 ;
   int units ;
};
struct __anonstruct____missing_field_name_142 {
   union __anonunion____missing_field_name_143 __annonCompField40 ;
   atomic_t _count ;
};
union __anonunion____missing_field_name_141 {
   unsigned long counters ;
   struct __anonstruct____missing_field_name_142 __annonCompField41 ;
   unsigned int active ;
};
struct __anonstruct____missing_field_name_139 {
   union __anonunion____missing_field_name_140 __annonCompField38 ;
   union __anonunion____missing_field_name_141 __annonCompField42 ;
};
struct __anonstruct____missing_field_name_146 {
   struct page *next ;
   int pages ;
   int pobjects ;
};
struct slab;
union __anonunion____missing_field_name_145 {
   struct list_head lru ;
   struct __anonstruct____missing_field_name_146 __annonCompField44 ;
   struct list_head list ;
   struct slab *slab_page ;
   struct callback_head callback_head ;
   pgtable_t pmd_huge_pte ;
};
union __anonunion____missing_field_name_147 {
   unsigned long private ;
   spinlock_t *ptl ;
   struct kmem_cache *slab_cache ;
   struct page *first_page ;
};
struct page {
   unsigned long flags ;
   union __anonunion____missing_field_name_138 __annonCompField37 ;
   struct __anonstruct____missing_field_name_139 __annonCompField43 ;
   union __anonunion____missing_field_name_145 __annonCompField45 ;
   union __anonunion____missing_field_name_147 __annonCompField46 ;
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
typedef s32 dma_cookie_t;
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
struct sem_undo_list;
struct sysv_sem {
   struct sem_undo_list *undo_list ;
};
typedef unsigned short __kernel_sa_family_t;
struct cred;
typedef __kernel_sa_family_t sa_family_t;
struct sockaddr {
   sa_family_t sa_family ;
   char sa_data[14U] ;
};
struct msghdr {
   void *msg_name ;
   int msg_namelen ;
   struct iovec *msg_iov ;
   __kernel_size_t msg_iovlen ;
   void *msg_control ;
   __kernel_size_t msg_controllen ;
   unsigned int msg_flags ;
};
struct __anonstruct_sync_serial_settings_151 {
   unsigned int clock_rate ;
   unsigned int clock_type ;
   unsigned short loopback ;
};
typedef struct __anonstruct_sync_serial_settings_151 sync_serial_settings;
struct __anonstruct_te1_settings_152 {
   unsigned int clock_rate ;
   unsigned int clock_type ;
   unsigned short loopback ;
   unsigned int slot_map ;
};
typedef struct __anonstruct_te1_settings_152 te1_settings;
struct __anonstruct_raw_hdlc_proto_153 {
   unsigned short encoding ;
   unsigned short parity ;
};
typedef struct __anonstruct_raw_hdlc_proto_153 raw_hdlc_proto;
struct __anonstruct_fr_proto_154 {
   unsigned int t391 ;
   unsigned int t392 ;
   unsigned int n391 ;
   unsigned int n392 ;
   unsigned int n393 ;
   unsigned short lmi ;
   unsigned short dce ;
};
typedef struct __anonstruct_fr_proto_154 fr_proto;
struct __anonstruct_fr_proto_pvc_155 {
   unsigned int dlci ;
};
typedef struct __anonstruct_fr_proto_pvc_155 fr_proto_pvc;
struct __anonstruct_fr_proto_pvc_info_156 {
   unsigned int dlci ;
   char master[16U] ;
};
typedef struct __anonstruct_fr_proto_pvc_info_156 fr_proto_pvc_info;
struct __anonstruct_cisco_proto_157 {
   unsigned int interval ;
   unsigned int timeout ;
};
typedef struct __anonstruct_cisco_proto_157 cisco_proto;
struct ifmap {
   unsigned long mem_start ;
   unsigned long mem_end ;
   unsigned short base_addr ;
   unsigned char irq ;
   unsigned char dma ;
   unsigned char port ;
};
union __anonunion_ifs_ifsu_158 {
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
   union __anonunion_ifs_ifsu_158 ifs_ifsu ;
};
union __anonunion_ifr_ifrn_159 {
   char ifrn_name[16U] ;
};
union __anonunion_ifr_ifru_160 {
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
   union __anonunion_ifr_ifrn_159 ifr_ifrn ;
   union __anonunion_ifr_ifru_160 ifr_ifru ;
};
struct hlist_bl_node;
struct hlist_bl_head {
   struct hlist_bl_node *first ;
};
struct hlist_bl_node {
   struct hlist_bl_node *next ;
   struct hlist_bl_node **pprev ;
};
struct __anonstruct____missing_field_name_163 {
   spinlock_t lock ;
   unsigned int count ;
};
union __anonunion____missing_field_name_162 {
   struct __anonstruct____missing_field_name_163 __annonCompField47 ;
};
struct lockref {
   union __anonunion____missing_field_name_162 __annonCompField48 ;
};
struct nameidata;
struct vfsmount;
struct __anonstruct____missing_field_name_165 {
   u32 hash ;
   u32 len ;
};
union __anonunion____missing_field_name_164 {
   struct __anonstruct____missing_field_name_165 __annonCompField49 ;
   u64 hash_len ;
};
struct qstr {
   union __anonunion____missing_field_name_164 __annonCompField50 ;
   unsigned char const *name ;
};
struct dentry_operations;
union __anonunion_d_u_166 {
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
   union __anonunion_d_u_166 d_u ;
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
enum migrate_mode {
    MIGRATE_ASYNC = 0,
    MIGRATE_SYNC_LIGHT = 1,
    MIGRATE_SYNC = 2
} ;
struct block_device;
struct io_context;
struct cgroup_subsys_state;
struct export_operations;
struct kiocb;
struct pipe_inode_info;
struct poll_table_struct;
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
struct __anonstruct_kprojid_t_168 {
   projid_t val ;
};
typedef struct __anonstruct_kprojid_t_168 kprojid_t;
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
union __anonunion____missing_field_name_169 {
   kuid_t uid ;
   kgid_t gid ;
   kprojid_t projid ;
};
struct kqid {
   union __anonunion____missing_field_name_169 __annonCompField51 ;
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
union __anonunion_arg_171 {
   char *buf ;
   void *data ;
};
struct __anonstruct_read_descriptor_t_170 {
   size_t written ;
   size_t count ;
   union __anonunion_arg_171 arg ;
   int error ;
};
typedef struct __anonstruct_read_descriptor_t_170 read_descriptor_t;
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
struct backing_dev_info;
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
union __anonunion____missing_field_name_172 {
   unsigned int const i_nlink ;
   unsigned int __i_nlink ;
};
union __anonunion____missing_field_name_173 {
   struct hlist_head i_dentry ;
   struct callback_head i_rcu ;
};
struct file_lock;
struct cdev;
union __anonunion____missing_field_name_174 {
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
   union __anonunion____missing_field_name_172 __annonCompField52 ;
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
   union __anonunion____missing_field_name_173 __annonCompField53 ;
   u64 i_version ;
   atomic_t i_count ;
   atomic_t i_dio_count ;
   atomic_t i_writecount ;
   struct file_operations const *i_fop ;
   struct file_lock *i_flock ;
   struct address_space i_data ;
   struct dquot *i_dquot[2U] ;
   struct list_head i_devices ;
   union __anonunion____missing_field_name_174 __annonCompField54 ;
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
union __anonunion_f_u_175 {
   struct llist_node fu_llist ;
   struct callback_head fu_rcuhead ;
};
struct file {
   union __anonunion_f_u_175 f_u ;
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
struct net;
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
struct __anonstruct_afs_177 {
   struct list_head link ;
   int state ;
};
union __anonunion_fl_u_176 {
   struct nfs_lock_info nfs_fl ;
   struct nfs4_lock_info nfs4_fl ;
   struct __anonstruct_afs_177 afs ;
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
   union __anonunion_fl_u_176 fl_u ;
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
typedef unsigned long cputime_t;
struct __anonstruct_sigset_t_178 {
   unsigned long sig[1U] ;
};
typedef struct __anonstruct_sigset_t_178 sigset_t;
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
struct __anonstruct__kill_180 {
   __kernel_pid_t _pid ;
   __kernel_uid32_t _uid ;
};
struct __anonstruct__timer_181 {
   __kernel_timer_t _tid ;
   int _overrun ;
   char _pad[0U] ;
   sigval_t _sigval ;
   int _sys_private ;
};
struct __anonstruct__rt_182 {
   __kernel_pid_t _pid ;
   __kernel_uid32_t _uid ;
   sigval_t _sigval ;
};
struct __anonstruct__sigchld_183 {
   __kernel_pid_t _pid ;
   __kernel_uid32_t _uid ;
   int _status ;
   __kernel_clock_t _utime ;
   __kernel_clock_t _stime ;
};
struct __anonstruct__sigfault_184 {
   void *_addr ;
   short _addr_lsb ;
};
struct __anonstruct__sigpoll_185 {
   long _band ;
   int _fd ;
};
struct __anonstruct__sigsys_186 {
   void *_call_addr ;
   int _syscall ;
   unsigned int _arch ;
};
union __anonunion__sifields_179 {
   int _pad[28U] ;
   struct __anonstruct__kill_180 _kill ;
   struct __anonstruct__timer_181 _timer ;
   struct __anonstruct__rt_182 _rt ;
   struct __anonstruct__sigchld_183 _sigchld ;
   struct __anonstruct__sigfault_184 _sigfault ;
   struct __anonstruct__sigpoll_185 _sigpoll ;
   struct __anonstruct__sigsys_186 _sigsys ;
};
struct siginfo {
   int si_signo ;
   int si_errno ;
   int si_code ;
   union __anonunion__sifields_179 _sifields ;
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
struct __anonstruct____missing_field_name_190 {
   struct ctl_table *ctl_table ;
   int used ;
   int count ;
   int nreg ;
};
union __anonunion____missing_field_name_189 {
   struct __anonstruct____missing_field_name_190 __annonCompField55 ;
   struct callback_head rcu ;
};
struct ctl_table_set;
struct ctl_table_header {
   union __anonunion____missing_field_name_189 __annonCompField56 ;
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
union __anonunion____missing_field_name_191 {
   struct list_head graveyard_link ;
   struct rb_node serial_node ;
};
struct key_user;
union __anonunion____missing_field_name_192 {
   time_t expiry ;
   time_t revoked_at ;
};
struct __anonstruct____missing_field_name_194 {
   struct key_type *type ;
   char *description ;
};
union __anonunion____missing_field_name_193 {
   struct keyring_index_key index_key ;
   struct __anonstruct____missing_field_name_194 __annonCompField59 ;
};
union __anonunion_type_data_195 {
   struct list_head link ;
   unsigned long x[2U] ;
   void *p[2U] ;
   int reject_error ;
};
union __anonunion_payload_197 {
   unsigned long value ;
   void *rcudata ;
   void *data ;
   void *data2[2U] ;
};
union __anonunion____missing_field_name_196 {
   union __anonunion_payload_197 payload ;
   struct assoc_array keys ;
};
struct key {
   atomic_t usage ;
   key_serial_t serial ;
   union __anonunion____missing_field_name_191 __annonCompField57 ;
   struct rw_semaphore sem ;
   struct key_user *user ;
   void *security ;
   union __anonunion____missing_field_name_192 __annonCompField58 ;
   time_t last_used_at ;
   kuid_t uid ;
   kgid_t gid ;
   key_perm_t perm ;
   unsigned short quotalen ;
   unsigned short datalen ;
   unsigned long flags ;
   union __anonunion____missing_field_name_193 __annonCompField60 ;
   union __anonunion_type_data_195 type_data ;
   union __anonunion____missing_field_name_196 __annonCompField61 ;
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
struct uts_namespace;
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
struct mem_cgroup;
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
typedef s32 compat_long_t;
typedef u32 compat_uptr_t;
struct compat_robust_list {
   compat_uptr_t next ;
};
struct compat_robust_list_head {
   struct compat_robust_list list ;
   compat_long_t futex_offset ;
   compat_uptr_t list_op_pending ;
};
enum ldv_21625 {
    SS_FREE = 0,
    SS_UNCONNECTED = 1,
    SS_CONNECTING = 2,
    SS_CONNECTED = 3,
    SS_DISCONNECTING = 4
} ;
typedef enum ldv_21625 socket_state;
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
   int (*sendmsg)(struct kiocb * , struct socket * , struct msghdr * , size_t ) ;
   int (*recvmsg)(struct kiocb * , struct socket * , struct msghdr * , size_t , int ) ;
   int (*mmap)(struct file * , struct socket * , struct vm_area_struct * ) ;
   ssize_t (*sendpage)(struct socket * , struct page * , int , size_t , int ) ;
   ssize_t (*splice_read)(struct socket * , loff_t * , struct pipe_inode_info * ,
                          size_t , unsigned int ) ;
   int (*set_peek_off)(struct sock * , int ) ;
};
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
struct __anonstruct____missing_field_name_214 {
   struct callback_head callback_head ;
   struct kmem_cache *memcg_caches[0U] ;
};
struct __anonstruct____missing_field_name_215 {
   struct mem_cgroup *memcg ;
   struct list_head list ;
   struct kmem_cache *root_cache ;
   bool dead ;
   atomic_t nr_pages ;
   struct work_struct destroy ;
};
union __anonunion____missing_field_name_213 {
   struct __anonstruct____missing_field_name_214 __annonCompField63 ;
   struct __anonstruct____missing_field_name_215 __annonCompField64 ;
};
struct memcg_cache_params {
   bool is_root_cache ;
   union __anonunion____missing_field_name_213 __annonCompField65 ;
};
struct exception_table_entry {
   int insn ;
   int fixup ;
};
struct sk_buff;
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
typedef u64 netdev_features_t;
struct nf_conntrack {
   atomic_t use ;
};
struct nf_bridge_info {
   atomic_t use ;
   unsigned int mask ;
   struct net_device *physindev ;
   struct net_device *physoutdev ;
   unsigned long data[4U] ;
};
struct sk_buff_head {
   struct sk_buff *next ;
   struct sk_buff *prev ;
   __u32 qlen ;
   spinlock_t lock ;
};
typedef unsigned int sk_buff_data_t;
struct sec_path;
struct __anonstruct____missing_field_name_219 {
   __u16 csum_start ;
   __u16 csum_offset ;
};
union __anonunion____missing_field_name_218 {
   __wsum csum ;
   struct __anonstruct____missing_field_name_219 __annonCompField67 ;
};
union __anonunion____missing_field_name_220 {
   unsigned int napi_id ;
   dma_cookie_t dma_cookie ;
};
union __anonunion____missing_field_name_221 {
   __u32 mark ;
   __u32 dropcount ;
   __u32 reserved_tailroom ;
};
struct sk_buff {
   struct sk_buff *next ;
   struct sk_buff *prev ;
   ktime_t tstamp ;
   struct sock *sk ;
   struct net_device *dev ;
   char cb[48U] ;
   unsigned long _skb_refdst ;
   struct sec_path *sp ;
   unsigned int len ;
   unsigned int data_len ;
   __u16 mac_len ;
   __u16 hdr_len ;
   union __anonunion____missing_field_name_218 __annonCompField68 ;
   __u32 priority ;
   __u8 local_df : 1 ;
   __u8 cloned : 1 ;
   __u8 ip_summed : 2 ;
   __u8 nohdr : 1 ;
   __u8 nfctinfo : 3 ;
   __u8 pkt_type : 3 ;
   __u8 fclone : 2 ;
   __u8 ipvs_property : 1 ;
   __u8 peeked : 1 ;
   __u8 nf_trace : 1 ;
   __be16 protocol ;
   void (*destructor)(struct sk_buff * ) ;
   struct nf_conntrack *nfct ;
   struct nf_bridge_info *nf_bridge ;
   int skb_iif ;
   __u32 rxhash ;
   __be16 vlan_proto ;
   __u16 vlan_tci ;
   __u16 tc_index ;
   __u16 tc_verd ;
   __u16 queue_mapping ;
   __u8 ndisc_nodetype : 2 ;
   __u8 pfmemalloc : 1 ;
   __u8 ooo_okay : 1 ;
   __u8 l4_rxhash : 1 ;
   __u8 wifi_acked_valid : 1 ;
   __u8 wifi_acked : 1 ;
   __u8 no_fcs : 1 ;
   __u8 head_frag : 1 ;
   __u8 encapsulation : 1 ;
   union __anonunion____missing_field_name_220 __annonCompField69 ;
   __u32 secmark ;
   union __anonunion____missing_field_name_221 __annonCompField70 ;
   __be16 inner_protocol ;
   __u16 inner_transport_header ;
   __u16 inner_network_header ;
   __u16 inner_mac_header ;
   __u16 transport_header ;
   __u16 network_header ;
   __u16 mac_header ;
   sk_buff_data_t tail ;
   sk_buff_data_t end ;
   unsigned char *head ;
   unsigned char *data ;
   unsigned int truesize ;
   atomic_t users ;
};
struct dst_entry;
struct ethhdr {
   unsigned char h_dest[6U] ;
   unsigned char h_source[6U] ;
   __be16 h_proto ;
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
   char reserved1[32U] ;
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
   u32 (*get_rxfh_indir_size)(struct net_device * ) ;
   int (*get_rxfh_indir)(struct net_device * , u32 * ) ;
   int (*set_rxfh_indir)(struct net_device * , u32 const * ) ;
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
   unsigned long mibs[8U] ;
};
struct linux_mib {
   unsigned long mibs[97U] ;
};
struct linux_xfrm_mib {
   unsigned long mibs[29U] ;
};
struct proc_dir_entry;
struct netns_mib {
   struct tcp_mib *tcp_statistics[1U] ;
   struct ipstats_mib *ip_statistics[1U] ;
   struct linux_mib *net_statistics[1U] ;
   struct udp_mib *udp_statistics[1U] ;
   struct udp_mib *udplite_statistics[1U] ;
   struct icmp_mib *icmp_statistics[1U] ;
   struct icmpmsg_mib *icmpmsg_statistics ;
   struct proc_dir_entry *proc_net_devsnmp6 ;
   struct udp_mib *udp_stats_in6[1U] ;
   struct udp_mib *udplite_stats_in6[1U] ;
   struct ipstats_mib *ipv6_statistics[1U] ;
   struct icmpv6_mib *icmpv6_statistics[1U] ;
   struct icmpv6msg_mib *icmpv6msg_statistics ;
   struct linux_xfrm_mib *xfrm_statistics[1U] ;
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
   int nqueues ;
   struct list_head lru_list ;
   spinlock_t lru_lock ;
   struct percpu_counter mem ;
   int timeout ;
   int high_thresh ;
   int low_thresh ;
};
struct tcpm_hash_bucket;
struct ipv4_devconf;
struct fib_rules_ops;
struct fib_table;
struct local_ports {
   seqlock_t lock ;
   int range[2U] ;
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
   struct sock *fibnl ;
   struct sock **icmp_sk ;
   struct inet_peer_base *peers ;
   struct tcpm_hash_bucket *tcp_metrics_hash ;
   unsigned int tcp_metrics_hash_log ;
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
   struct local_ports sysctl_local_ports ;
   int sysctl_tcp_ecn ;
   int sysctl_ip_no_pmtu_disc ;
   int sysctl_ip_fwd_use_pmtu ;
   kgid_t sysctl_ping_group_range[2U] ;
   atomic_t dev_addr_genid ;
   struct list_head mr_tables ;
   struct fib_rules_ops *mr_rules_ops ;
   atomic_t rt_genid ;
};
struct neighbour;
struct dst_ops {
   unsigned short family ;
   __be16 protocol ;
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
   int icmpv6_time ;
   int anycast_src_echo_reply ;
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
   struct list_head mr6_tables ;
   struct fib_rules_ops *mr6_rules_ops ;
   atomic_t dev_addr_genid ;
   atomic_t rt_genid ;
};
struct netns_nf_frag {
   struct netns_sysctl_ipv6 sysctl ;
   struct netns_frags frags ;
};
struct sctp_mib;
struct netns_sctp {
   struct sctp_mib *sctp_statistics[1U] ;
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
struct nlattr;
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
   struct ebt_table *broute_table ;
   struct ebt_table *frame_filter ;
   struct ebt_table *frame_nat ;
   bool ulog_warn_deprecated ;
   bool ebt_ulog_warn_deprecated ;
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
struct ip_conntrack_stat;
struct nf_ct_event_notifier;
struct nf_exp_event_notifier;
struct netns_ct {
   atomic_t count ;
   unsigned int expect_count ;
   struct ctl_table_header *sysctl_header ;
   struct ctl_table_header *acct_sysctl_header ;
   struct ctl_table_header *tstamp_sysctl_header ;
   struct ctl_table_header *event_sysctl_header ;
   struct ctl_table_header *helper_sysctl_header ;
   char *slabname ;
   unsigned int sysctl_log_invalid ;
   unsigned int sysctl_events_retry_timeout ;
   int sysctl_events ;
   int sysctl_acct ;
   int sysctl_auto_assign_helper ;
   bool auto_assign_helper_warned ;
   int sysctl_tstamp ;
   int sysctl_checksum ;
   unsigned int htable_size ;
   struct kmem_cache *nf_conntrack_cachep ;
   struct hlist_nulls_head *hash ;
   struct hlist_head *expect_hash ;
   struct hlist_nulls_head unconfirmed ;
   struct hlist_nulls_head dying ;
   struct hlist_nulls_head tmpl ;
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
   u8 gencursor ;
   u8 genctr ;
};
struct xfrm_policy_hash {
   struct hlist_head *table ;
   unsigned int hmask ;
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
   struct hlist_head policy_inexact[6U] ;
   struct xfrm_policy_hash policy_bydst[6U] ;
   unsigned int policy_count[6U] ;
   struct work_struct policy_hash_work ;
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
   spinlock_t xfrm_policy_sk_bundle_lock ;
   rwlock_t xfrm_policy_lock ;
   struct mutex xfrm_cfg_mutex ;
};
struct net_generic;
struct netns_ipvs;
struct net {
   atomic_t passive ;
   atomic_t count ;
   spinlock_t rules_mod_lock ;
   struct list_head list ;
   struct list_head cleanup_list ;
   struct list_head exit_list ;
   struct user_namespace *user_ns ;
   unsigned int proc_inum ;
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
   struct sock *diag_nlsk ;
   atomic_t fnhe_genid ;
};
struct dsa_chip_data {
   struct device *mii_bus ;
   int sw_addr ;
   char *port_names[12U] ;
   s8 *rtable ;
};
struct dsa_platform_data {
   struct device *netdev ;
   int nr_chips ;
   struct dsa_chip_data *chip ;
};
struct dsa_switch;
struct dsa_switch_tree {
   struct dsa_platform_data *pd ;
   struct net_device *master_netdev ;
   __be16 tag_protocol ;
   s8 cpu_switch ;
   s8 cpu_port ;
   int link_poll_needed ;
   struct work_struct link_poll_work ;
   struct timer_list link_poll_timer ;
   struct dsa_switch *ds[4U] ;
};
struct dsa_switch_driver;
struct mii_bus;
struct dsa_switch {
   struct dsa_switch_tree *dst ;
   int index ;
   struct dsa_chip_data *pd ;
   struct dsa_switch_driver *drv ;
   struct mii_bus *master_mii_bus ;
   u32 dsa_port_mask ;
   u32 phys_port_mask ;
   struct mii_bus *slave_mii_bus ;
   struct net_device *ports[12U] ;
};
struct dsa_switch_driver {
   struct list_head list ;
   __be16 tag_protocol ;
   int priv_size ;
   char *(*probe)(struct mii_bus * , int ) ;
   int (*setup)(struct dsa_switch * ) ;
   int (*set_addr)(struct dsa_switch * , u8 * ) ;
   int (*phy_read)(struct dsa_switch * , int , int ) ;
   int (*phy_write)(struct dsa_switch * , int , int , u16 ) ;
   void (*poll_link)(struct dsa_switch * ) ;
   void (*get_strings)(struct dsa_switch * , int , uint8_t * ) ;
   void (*get_ethtool_stats)(struct dsa_switch * , int , uint64_t * ) ;
   int (*get_sset_count)(struct dsa_switch * ) ;
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
   u8 (*setapp)(struct net_device * , u8 , u16 , u8 ) ;
   u8 (*getapp)(struct net_device * , u8 , u16 ) ;
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
struct xattr_handler {
   char const *prefix ;
   int flags ;
   size_t (*list)(struct dentry * , char * , size_t , char const * , size_t ,
                  int ) ;
   int (*get)(struct dentry * , char const * , void * , size_t , int ) ;
   int (*set)(struct dentry * , char const * , void const * , size_t , int ,
              int ) ;
};
struct simple_xattrs {
   struct list_head head ;
   spinlock_t lock ;
};
struct percpu_ref;
typedef void percpu_ref_func_t(struct percpu_ref * );
struct percpu_ref {
   atomic_t count ;
   unsigned int *pcpu_count ;
   percpu_ref_func_t *release ;
   percpu_ref_func_t *confirm_kill ;
   struct callback_head rcu ;
};
struct cgroupfs_root;
struct cgroup_subsys;
struct cgroup;
struct cgroup_subsys_state {
   struct cgroup *cgroup ;
   struct cgroup_subsys *ss ;
   struct percpu_ref refcnt ;
   struct cgroup_subsys_state *parent ;
   unsigned long flags ;
   struct callback_head callback_head ;
   struct work_struct destroy_work ;
};
struct cgroup_name {
   struct callback_head callback_head ;
   char name[] ;
};
struct cgroup {
   unsigned long flags ;
   int id ;
   int nr_css ;
   struct list_head sibling ;
   struct list_head children ;
   struct list_head files ;
   struct cgroup *parent ;
   struct dentry *dentry ;
   u64 serial_nr ;
   struct cgroup_name *name ;
   struct cgroup_subsys_state *subsys[12U] ;
   struct cgroupfs_root *root ;
   struct list_head cset_links ;
   struct list_head release_list ;
   struct list_head pidlists ;
   struct mutex pidlist_mutex ;
   struct cgroup_subsys_state dummy_css ;
   struct callback_head callback_head ;
   struct work_struct destroy_work ;
   struct simple_xattrs xattrs ;
};
struct cgroupfs_root {
   struct super_block *sb ;
   unsigned long subsys_mask ;
   int hierarchy_id ;
   struct cgroup top_cgroup ;
   int number_of_cgroups ;
   struct list_head root_list ;
   unsigned long flags ;
   struct idr cgroup_idr ;
   char release_agent_path[4096U] ;
   char name[64U] ;
};
struct css_set {
   atomic_t refcount ;
   struct hlist_node hlist ;
   struct list_head tasks ;
   struct list_head cgrp_links ;
   struct cgroup_subsys_state *subsys[12U] ;
   struct callback_head callback_head ;
};
struct cftype {
   char name[64U] ;
   int private ;
   umode_t mode ;
   size_t max_write_len ;
   unsigned int flags ;
   struct cgroup_subsys *ss ;
   u64 (*read_u64)(struct cgroup_subsys_state * , struct cftype * ) ;
   s64 (*read_s64)(struct cgroup_subsys_state * , struct cftype * ) ;
   int (*seq_show)(struct seq_file * , void * ) ;
   void *(*seq_start)(struct seq_file * , loff_t * ) ;
   void *(*seq_next)(struct seq_file * , void * , loff_t * ) ;
   void (*seq_stop)(struct seq_file * , void * ) ;
   int (*write_u64)(struct cgroup_subsys_state * , struct cftype * , u64 ) ;
   int (*write_s64)(struct cgroup_subsys_state * , struct cftype * , s64 ) ;
   int (*write_string)(struct cgroup_subsys_state * , struct cftype * , char const * ) ;
   int (*trigger)(struct cgroup_subsys_state * , unsigned int ) ;
};
struct cftype_set {
   struct list_head node ;
   struct cftype *cfts ;
};
struct cgroup_taskset;
struct cgroup_subsys {
   struct cgroup_subsys_state *(*css_alloc)(struct cgroup_subsys_state * ) ;
   int (*css_online)(struct cgroup_subsys_state * ) ;
   void (*css_offline)(struct cgroup_subsys_state * ) ;
   void (*css_free)(struct cgroup_subsys_state * ) ;
   int (*can_attach)(struct cgroup_subsys_state * , struct cgroup_taskset * ) ;
   void (*cancel_attach)(struct cgroup_subsys_state * , struct cgroup_taskset * ) ;
   void (*attach)(struct cgroup_subsys_state * , struct cgroup_taskset * ) ;
   void (*fork)(struct task_struct * ) ;
   void (*exit)(struct cgroup_subsys_state * , struct cgroup_subsys_state * , struct task_struct * ) ;
   void (*bind)(struct cgroup_subsys_state * ) ;
   int subsys_id ;
   int disabled ;
   int early_init ;
   bool broken_hierarchy ;
   bool warned_broken_hierarchy ;
   char const *name ;
   struct cgroupfs_root *root ;
   struct list_head cftsets ;
   struct cftype *base_cftypes ;
   struct cftype_set base_cftset ;
   struct module *module ;
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
struct ifla_vf_info {
   __u32 vf ;
   __u8 mac[32U] ;
   __u32 vlan ;
   __u32 qos ;
   __u32 tx_rate ;
   __u32 spoofchk ;
   __u32 linkstate ;
};
struct netpoll_info;
struct phy_device;
struct wireless_dev;
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
struct netdev_hw_addr {
   struct list_head list ;
   unsigned char addr[32U] ;
   unsigned char type ;
   bool global_use ;
   int sync_cnt ;
   int refcount ;
   int synced ;
   struct callback_head callback_head ;
};
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
   int (*rebuild)(struct sk_buff * ) ;
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
struct netdev_phys_port_id {
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
   int (*ndo_netpoll_setup)(struct net_device * , struct netpoll_info * , gfp_t ) ;
   void (*ndo_netpoll_cleanup)(struct net_device * ) ;
   int (*ndo_busy_poll)(struct napi_struct * ) ;
   int (*ndo_set_vf_mac)(struct net_device * , int , u8 * ) ;
   int (*ndo_set_vf_vlan)(struct net_device * , int , u16 , u8 ) ;
   int (*ndo_set_vf_tx_rate)(struct net_device * , int , int ) ;
   int (*ndo_set_vf_spoofchk)(struct net_device * , int , bool ) ;
   int (*ndo_get_vf_config)(struct net_device * , int , struct ifla_vf_info * ) ;
   int (*ndo_set_vf_link_state)(struct net_device * , int , int ) ;
   int (*ndo_set_vf_port)(struct net_device * , int , struct nlattr ** ) ;
   int (*ndo_get_vf_port)(struct net_device * , int , struct sk_buff * ) ;
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
                      u16 ) ;
   int (*ndo_fdb_del)(struct ndmsg * , struct nlattr ** , struct net_device * , unsigned char const * ) ;
   int (*ndo_fdb_dump)(struct sk_buff * , struct netlink_callback * , struct net_device * ,
                       int ) ;
   int (*ndo_bridge_setlink)(struct net_device * , struct nlmsghdr * ) ;
   int (*ndo_bridge_getlink)(struct sk_buff * , u32 , u32 , struct net_device * ,
                             u32 ) ;
   int (*ndo_bridge_dellink)(struct net_device * , struct nlmsghdr * ) ;
   int (*ndo_change_carrier)(struct net_device * , bool ) ;
   int (*ndo_get_phys_port_id)(struct net_device * , struct netdev_phys_port_id * ) ;
   void (*ndo_add_vxlan_port)(struct net_device * , sa_family_t , __be16 ) ;
   void (*ndo_del_vxlan_port)(struct net_device * , sa_family_t , __be16 ) ;
   void *(*ndo_dfwd_add_station)(struct net_device * , struct net_device * ) ;
   void (*ndo_dfwd_del_station)(struct net_device * , void * ) ;
   netdev_tx_t (*ndo_dfwd_start_xmit)(struct sk_buff * , struct net_device * , void * ) ;
};
enum ldv_27983 {
    NETREG_UNINITIALIZED = 0,
    NETREG_REGISTERED = 1,
    NETREG_UNREGISTERING = 2,
    NETREG_UNREGISTERED = 3,
    NETREG_RELEASED = 4,
    NETREG_DUMMY = 5
} ;
enum ldv_27984 {
    RTNL_LINK_INITIALIZED = 0,
    RTNL_LINK_INITIALIZING = 1
} ;
struct __anonstruct_adj_list_235 {
   struct list_head upper ;
   struct list_head lower ;
};
struct __anonstruct_all_adj_list_236 {
   struct list_head upper ;
   struct list_head lower ;
};
struct iw_handler_def;
struct iw_public_data;
struct forwarding_accel_ops;
struct vlan_info;
struct tipc_bearer;
struct in_device;
struct dn_dev;
struct inet6_dev;
struct cpu_rmap;
struct pcpu_lstats;
struct pcpu_sw_netstats;
struct pcpu_dstats;
struct pcpu_vstats;
union __anonunion____missing_field_name_237 {
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
   unsigned long state ;
   struct list_head dev_list ;
   struct list_head napi_list ;
   struct list_head unreg_list ;
   struct list_head close_list ;
   struct __anonstruct_adj_list_235 adj_list ;
   struct __anonstruct_all_adj_list_236 all_adj_list ;
   netdev_features_t features ;
   netdev_features_t hw_features ;
   netdev_features_t wanted_features ;
   netdev_features_t vlan_features ;
   netdev_features_t hw_enc_features ;
   netdev_features_t mpls_features ;
   int ifindex ;
   int iflink ;
   struct net_device_stats stats ;
   atomic_long_t rx_dropped ;
   struct iw_handler_def const *wireless_handlers ;
   struct iw_public_data *wireless_data ;
   struct net_device_ops const *netdev_ops ;
   struct ethtool_ops const *ethtool_ops ;
   struct forwarding_accel_ops const *fwd_ops ;
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
   spinlock_t addr_list_lock ;
   struct netdev_hw_addr_list uc ;
   struct netdev_hw_addr_list mc ;
   struct netdev_hw_addr_list dev_addrs ;
   struct kset *queues_kset ;
   bool uc_promisc ;
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
   unsigned long last_rx ;
   unsigned char *dev_addr ;
   struct netdev_rx_queue *_rx ;
   unsigned int num_rx_queues ;
   unsigned int real_num_rx_queues ;
   rx_handler_func_t *rx_handler ;
   void *rx_handler_data ;
   struct netdev_queue *ingress_queue ;
   unsigned char broadcast[32U] ;
   struct netdev_queue *_tx ;
   unsigned int num_tx_queues ;
   unsigned int real_num_tx_queues ;
   struct Qdisc *qdisc ;
   unsigned long tx_queue_len ;
   spinlock_t tx_global_lock ;
   struct xps_dev_maps *xps_maps ;
   struct cpu_rmap *rx_cpu_rmap ;
   unsigned long trans_start ;
   int watchdog_timeo ;
   struct timer_list watchdog_timer ;
   int *pcpu_refcnt ;
   struct list_head todo_list ;
   struct hlist_node index_hlist ;
   struct list_head link_watch_list ;
   enum ldv_27983 reg_state : 8 ;
   bool dismantle ;
   enum ldv_27984 rtnl_link_state : 16 ;
   void (*destructor)(struct net_device * ) ;
   struct netpoll_info *npinfo ;
   struct net *nd_net ;
   union __anonunion____missing_field_name_237 __annonCompField74 ;
   struct garp_port *garp_port ;
   struct mrp_port *mrp_port ;
   struct device dev ;
   struct attribute_group const *sysfs_groups[4U] ;
   struct attribute_group const *sysfs_rx_queue_group ;
   struct rtnl_link_ops const *rtnl_link_ops ;
   unsigned int gso_max_size ;
   u16 gso_max_segs ;
   struct dcbnl_rtnl_ops const *dcbnl_ops ;
   u8 num_tc ;
   struct netdev_tc_txq tc_to_txq[16U] ;
   u8 prio_tc_map[16U] ;
   unsigned int fcoe_ddp_xid ;
   struct netprio_map *priomap ;
   struct phy_device *phydev ;
   struct lock_class_key *qdisc_tx_busylock ;
   int group ;
   struct pm_qos_request pm_qos_req ;
};
struct pcpu_sw_netstats {
   u64 rx_packets ;
   u64 rx_bytes ;
   u64 tx_packets ;
   u64 tx_bytes ;
   struct u64_stats_sync syncp ;
};
typedef unsigned long kernel_ulong_t;
struct usb_device_id {
   __u16 match_flags ;
   __u16 idVendor ;
   __u16 idProduct ;
   __u16 bcdDevice_lo ;
   __u16 bcdDevice_hi ;
   __u8 bDeviceClass ;
   __u8 bDeviceSubClass ;
   __u8 bDeviceProtocol ;
   __u8 bInterfaceClass ;
   __u8 bInterfaceSubClass ;
   __u8 bInterfaceProtocol ;
   __u8 bInterfaceNumber ;
   kernel_ulong_t driver_info ;
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
struct usb_device_descriptor {
   __u8 bLength ;
   __u8 bDescriptorType ;
   __le16 bcdUSB ;
   __u8 bDeviceClass ;
   __u8 bDeviceSubClass ;
   __u8 bDeviceProtocol ;
   __u8 bMaxPacketSize0 ;
   __le16 idVendor ;
   __le16 idProduct ;
   __le16 bcdDevice ;
   __u8 iManufacturer ;
   __u8 iProduct ;
   __u8 iSerialNumber ;
   __u8 bNumConfigurations ;
};
struct usb_config_descriptor {
   __u8 bLength ;
   __u8 bDescriptorType ;
   __le16 wTotalLength ;
   __u8 bNumInterfaces ;
   __u8 bConfigurationValue ;
   __u8 iConfiguration ;
   __u8 bmAttributes ;
   __u8 bMaxPower ;
};
struct usb_interface_descriptor {
   __u8 bLength ;
   __u8 bDescriptorType ;
   __u8 bInterfaceNumber ;
   __u8 bAlternateSetting ;
   __u8 bNumEndpoints ;
   __u8 bInterfaceClass ;
   __u8 bInterfaceSubClass ;
   __u8 bInterfaceProtocol ;
   __u8 iInterface ;
};
struct usb_endpoint_descriptor {
   __u8 bLength ;
   __u8 bDescriptorType ;
   __u8 bEndpointAddress ;
   __u8 bmAttributes ;
   __le16 wMaxPacketSize ;
   __u8 bInterval ;
   __u8 bRefresh ;
   __u8 bSynchAddress ;
};
struct usb_ss_ep_comp_descriptor {
   __u8 bLength ;
   __u8 bDescriptorType ;
   __u8 bMaxBurst ;
   __u8 bmAttributes ;
   __le16 wBytesPerInterval ;
};
struct usb_interface_assoc_descriptor {
   __u8 bLength ;
   __u8 bDescriptorType ;
   __u8 bFirstInterface ;
   __u8 bInterfaceCount ;
   __u8 bFunctionClass ;
   __u8 bFunctionSubClass ;
   __u8 bFunctionProtocol ;
   __u8 iFunction ;
};
struct usb_bos_descriptor {
   __u8 bLength ;
   __u8 bDescriptorType ;
   __le16 wTotalLength ;
   __u8 bNumDeviceCaps ;
};
struct usb_ext_cap_descriptor {
   __u8 bLength ;
   __u8 bDescriptorType ;
   __u8 bDevCapabilityType ;
   __le32 bmAttributes ;
};
struct usb_ss_cap_descriptor {
   __u8 bLength ;
   __u8 bDescriptorType ;
   __u8 bDevCapabilityType ;
   __u8 bmAttributes ;
   __le16 wSpeedSupported ;
   __u8 bFunctionalitySupport ;
   __u8 bU1devExitLat ;
   __le16 bU2DevExitLat ;
};
struct usb_ss_container_id_descriptor {
   __u8 bLength ;
   __u8 bDescriptorType ;
   __u8 bDevCapabilityType ;
   __u8 bReserved ;
   __u8 ContainerID[16U] ;
};
enum usb_device_speed {
    USB_SPEED_UNKNOWN = 0,
    USB_SPEED_LOW = 1,
    USB_SPEED_FULL = 2,
    USB_SPEED_HIGH = 3,
    USB_SPEED_WIRELESS = 4,
    USB_SPEED_SUPER = 5
} ;
enum usb_device_state {
    USB_STATE_NOTATTACHED = 0,
    USB_STATE_ATTACHED = 1,
    USB_STATE_POWERED = 2,
    USB_STATE_RECONNECTING = 3,
    USB_STATE_UNAUTHENTICATED = 4,
    USB_STATE_DEFAULT = 5,
    USB_STATE_ADDRESS = 6,
    USB_STATE_CONFIGURED = 7,
    USB_STATE_SUSPENDED = 8
} ;
struct tasklet_struct {
   struct tasklet_struct *next ;
   unsigned long state ;
   atomic_t count ;
   void (*func)(unsigned long ) ;
   unsigned long data ;
};
struct usb_device;
struct usb_driver;
struct wusb_dev;
struct ep_device;
struct usb_host_endpoint {
   struct usb_endpoint_descriptor desc ;
   struct usb_ss_ep_comp_descriptor ss_ep_comp ;
   struct list_head urb_list ;
   void *hcpriv ;
   struct ep_device *ep_dev ;
   unsigned char *extra ;
   int extralen ;
   int enabled ;
};
struct usb_host_interface {
   struct usb_interface_descriptor desc ;
   int extralen ;
   unsigned char *extra ;
   struct usb_host_endpoint *endpoint ;
   char *string ;
};
enum usb_interface_condition {
    USB_INTERFACE_UNBOUND = 0,
    USB_INTERFACE_BINDING = 1,
    USB_INTERFACE_BOUND = 2,
    USB_INTERFACE_UNBINDING = 3
} ;
struct usb_interface {
   struct usb_host_interface *altsetting ;
   struct usb_host_interface *cur_altsetting ;
   unsigned int num_altsetting ;
   struct usb_interface_assoc_descriptor *intf_assoc ;
   int minor ;
   enum usb_interface_condition condition ;
   unsigned int sysfs_files_created : 1 ;
   unsigned int ep_devs_created : 1 ;
   unsigned int unregistering : 1 ;
   unsigned int needs_remote_wakeup : 1 ;
   unsigned int needs_altsetting0 : 1 ;
   unsigned int needs_binding : 1 ;
   unsigned int reset_running : 1 ;
   unsigned int resetting_device : 1 ;
   struct device dev ;
   struct device *usb_dev ;
   atomic_t pm_usage_cnt ;
   struct work_struct reset_ws ;
};
struct usb_interface_cache {
   unsigned int num_altsetting ;
   struct kref ref ;
   struct usb_host_interface altsetting[0U] ;
};
struct usb_host_config {
   struct usb_config_descriptor desc ;
   char *string ;
   struct usb_interface_assoc_descriptor *intf_assoc[16U] ;
   struct usb_interface *interface[32U] ;
   struct usb_interface_cache *intf_cache[32U] ;
   unsigned char *extra ;
   int extralen ;
};
struct usb_host_bos {
   struct usb_bos_descriptor *desc ;
   struct usb_ext_cap_descriptor *ext_cap ;
   struct usb_ss_cap_descriptor *ss_cap ;
   struct usb_ss_container_id_descriptor *ss_id ;
};
struct usb_devmap {
   unsigned long devicemap[2U] ;
};
struct mon_bus;
struct usb_bus {
   struct device *controller ;
   int busnum ;
   char const *bus_name ;
   u8 uses_dma ;
   u8 uses_pio_for_control ;
   u8 otg_port ;
   unsigned int is_b_host : 1 ;
   unsigned int b_hnp_enable : 1 ;
   unsigned int no_stop_on_short : 1 ;
   unsigned int no_sg_constraint : 1 ;
   unsigned int sg_tablesize ;
   int devnum_next ;
   struct usb_devmap devmap ;
   struct usb_device *root_hub ;
   struct usb_bus *hs_companion ;
   struct list_head bus_list ;
   int bandwidth_allocated ;
   int bandwidth_int_reqs ;
   int bandwidth_isoc_reqs ;
   unsigned int resuming_ports ;
   struct mon_bus *mon_bus ;
   int monitored ;
};
struct usb_tt;
enum usb_device_removable {
    USB_DEVICE_REMOVABLE_UNKNOWN = 0,
    USB_DEVICE_REMOVABLE = 1,
    USB_DEVICE_FIXED = 2
} ;
struct usb2_lpm_parameters {
   unsigned int besl ;
   int timeout ;
};
struct usb3_lpm_parameters {
   unsigned int mel ;
   unsigned int pel ;
   unsigned int sel ;
   int timeout ;
};
struct usb_device {
   int devnum ;
   char devpath[16U] ;
   u32 route ;
   enum usb_device_state state ;
   enum usb_device_speed speed ;
   struct usb_tt *tt ;
   int ttport ;
   unsigned int toggle[2U] ;
   struct usb_device *parent ;
   struct usb_bus *bus ;
   struct usb_host_endpoint ep0 ;
   struct device dev ;
   struct usb_device_descriptor descriptor ;
   struct usb_host_bos *bos ;
   struct usb_host_config *config ;
   struct usb_host_config *actconfig ;
   struct usb_host_endpoint *ep_in[16U] ;
   struct usb_host_endpoint *ep_out[16U] ;
   char **rawdescriptors ;
   unsigned short bus_mA ;
   u8 portnum ;
   u8 level ;
   unsigned int can_submit : 1 ;
   unsigned int persist_enabled : 1 ;
   unsigned int have_langid : 1 ;
   unsigned int authorized : 1 ;
   unsigned int authenticated : 1 ;
   unsigned int wusb : 1 ;
   unsigned int lpm_capable : 1 ;
   unsigned int usb2_hw_lpm_capable : 1 ;
   unsigned int usb2_hw_lpm_besl_capable : 1 ;
   unsigned int usb2_hw_lpm_enabled : 1 ;
   unsigned int usb2_hw_lpm_allowed : 1 ;
   unsigned int usb3_lpm_enabled : 1 ;
   int string_langid ;
   char *product ;
   char *manufacturer ;
   char *serial ;
   struct list_head filelist ;
   int maxchild ;
   u32 quirks ;
   atomic_t urbnum ;
   unsigned long active_duration ;
   unsigned long connect_time ;
   unsigned int do_remote_wakeup : 1 ;
   unsigned int reset_resume : 1 ;
   unsigned int port_is_suspended : 1 ;
   struct wusb_dev *wusb_dev ;
   int slot_id ;
   enum usb_device_removable removable ;
   struct usb2_lpm_parameters l1_params ;
   struct usb3_lpm_parameters u1_params ;
   struct usb3_lpm_parameters u2_params ;
   unsigned int lpm_disable_count ;
};
struct usb_dynids {
   spinlock_t lock ;
   struct list_head list ;
};
struct usbdrv_wrap {
   struct device_driver driver ;
   int for_devices ;
};
struct usb_driver {
   char const *name ;
   int (*probe)(struct usb_interface * , struct usb_device_id const * ) ;
   void (*disconnect)(struct usb_interface * ) ;
   int (*unlocked_ioctl)(struct usb_interface * , unsigned int , void * ) ;
   int (*suspend)(struct usb_interface * , pm_message_t ) ;
   int (*resume)(struct usb_interface * ) ;
   int (*reset_resume)(struct usb_interface * ) ;
   int (*pre_reset)(struct usb_interface * ) ;
   int (*post_reset)(struct usb_interface * ) ;
   struct usb_device_id const *id_table ;
   struct usb_dynids dynids ;
   struct usbdrv_wrap drvwrap ;
   unsigned int no_dynamic_id : 1 ;
   unsigned int supports_autosuspend : 1 ;
   unsigned int disable_hub_initiated_lpm : 1 ;
   unsigned int soft_unbind : 1 ;
};
struct usb_iso_packet_descriptor {
   unsigned int offset ;
   unsigned int length ;
   unsigned int actual_length ;
   int status ;
};
struct urb;
struct usb_anchor {
   struct list_head urb_list ;
   wait_queue_head_t wait ;
   spinlock_t lock ;
   atomic_t suspend_wakeups ;
   unsigned int poisoned : 1 ;
};
struct urb {
   struct kref kref ;
   void *hcpriv ;
   atomic_t use_count ;
   atomic_t reject ;
   int unlinked ;
   struct list_head urb_list ;
   struct list_head anchor_list ;
   struct usb_anchor *anchor ;
   struct usb_device *dev ;
   struct usb_host_endpoint *ep ;
   unsigned int pipe ;
   unsigned int stream_id ;
   int status ;
   unsigned int transfer_flags ;
   void *transfer_buffer ;
   dma_addr_t transfer_dma ;
   struct scatterlist *sg ;
   int num_mapped_sgs ;
   int num_sgs ;
   u32 transfer_buffer_length ;
   u32 actual_length ;
   unsigned char *setup_packet ;
   dma_addr_t setup_dma ;
   int start_frame ;
   int number_of_packets ;
   int interval ;
   int error_count ;
   void *context ;
   void (*complete)(struct urb * ) ;
   struct usb_iso_packet_descriptor iso_frame_desc[0U] ;
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
struct kernel_param;
struct kernel_param_ops {
   unsigned int flags ;
   int (*set)(char const * , struct kernel_param const * ) ;
   int (*get)(char * , struct kernel_param const * ) ;
   void (*free)(void * ) ;
};
struct kparam_string;
struct kparam_array;
union __anonunion____missing_field_name_245 {
   void *arg ;
   struct kparam_string const *str ;
   struct kparam_array const *arr ;
};
struct kernel_param {
   char const *name ;
   struct kernel_param_ops const *ops ;
   u16 perm ;
   s16 level ;
   union __anonunion____missing_field_name_245 __annonCompField75 ;
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
struct mii_if_info {
   int phy_id ;
   int advertising ;
   int phy_id_mask ;
   int reg_num_mask ;
   unsigned int full_duplex : 1 ;
   unsigned int force_media : 1 ;
   unsigned int supports_gmii : 1 ;
   struct net_device *dev ;
   int (*mdio_read)(struct net_device * , int , int ) ;
   void (*mdio_write)(struct net_device * , int , int , int ) ;
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
    NUM_NL80211_IFTYPES = 11,
    NL80211_IFTYPE_MAX = 10
} ;
struct nl80211_sta_flag_update {
   __u32 mask ;
   __u32 set ;
};
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
    NL80211_USER_REG_HINT_CELL_BASE = 1
} ;
enum nl80211_mesh_power_mode {
    NL80211_MESH_POWER_UNKNOWN = 0,
    NL80211_MESH_POWER_ACTIVE = 1,
    NL80211_MESH_POWER_LIGHT_SLEEP = 2,
    NL80211_MESH_POWER_DEEP_SLEEP = 3,
    __NL80211_MESH_POWER_AFTER_LAST = 4,
    NL80211_MESH_POWER_MAX = 3
} ;
enum nl80211_ac {
    NL80211_AC_VO = 0,
    NL80211_AC_VI = 1,
    NL80211_AC_BE = 2,
    NL80211_AC_BK = 3,
    NL80211_NUM_ACS = 4
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
enum nl80211_key_type {
    NL80211_KEYTYPE_GROUP = 0,
    NL80211_KEYTYPE_PAIRWISE = 1,
    NL80211_KEYTYPE_PEERKEY = 2,
    NUM_NL80211_KEYTYPES = 3
} ;
enum nl80211_mfp {
    NL80211_MFP_NO = 0,
    NL80211_MFP_REQUIRED = 1
} ;
enum nl80211_cqm_rssi_threshold_event {
    NL80211_CQM_RSSI_THRESHOLD_EVENT_LOW = 0,
    NL80211_CQM_RSSI_THRESHOLD_EVENT_HIGH = 1,
    NL80211_CQM_RSSI_BEACON_LOSS_EVENT = 2
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
enum nl80211_coalesce_condition {
    NL80211_COALESCE_CONDITION_MATCH = 0,
    NL80211_COALESCE_CONDITION_NO_MATCH = 1
} ;
enum nl80211_hidden_ssid {
    NL80211_HIDDEN_SSID_NOT_IN_USE = 0,
    NL80211_HIDDEN_SSID_ZERO_LEN = 1,
    NL80211_HIDDEN_SSID_ZERO_CONTENTS = 2
} ;
enum nl80211_tdls_operation {
    NL80211_TDLS_DISCOVERY_REQ = 0,
    NL80211_TDLS_SETUP = 1,
    NL80211_TDLS_TEARDOWN = 2,
    NL80211_TDLS_ENABLE_LINK = 3,
    NL80211_TDLS_DISABLE_LINK = 4
} ;
enum nl80211_acl_policy {
    NL80211_ACL_POLICY_ACCEPT_UNLESS_LISTED = 0,
    NL80211_ACL_POLICY_DENY_UNLESS_LISTED = 1
} ;
enum nl80211_dfs_state {
    NL80211_DFS_USABLE = 0,
    NL80211_DFS_UNAVAILABLE = 1,
    NL80211_DFS_AVAILABLE = 2
} ;
enum nl80211_crit_proto_id {
    NL80211_CRIT_PROTO_UNSPEC = 0,
    NL80211_CRIT_PROTO_DHCP = 1,
    NL80211_CRIT_PROTO_EAPOL = 2,
    NL80211_CRIT_PROTO_APIPA = 3,
    NUM_NL80211_CRIT_PROTO = 4
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
};
struct ieee80211_regdomain {
   struct callback_head callback_head ;
   u32 n_reg_rules ;
   char alpha2[2U] ;
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
struct vif_params {
   int use_4addr ;
   u8 macaddr[6U] ;
};
struct key_params {
   u8 *key ;
   u8 *seq ;
   int key_len ;
   int seq_len ;
   u32 cipher ;
};
struct cfg80211_chan_def {
   struct ieee80211_channel *chan ;
   enum nl80211_chan_width width ;
   u32 center_freq1 ;
   u32 center_freq2 ;
};
struct survey_info {
   struct ieee80211_channel *channel ;
   u64 channel_time ;
   u64 channel_time_busy ;
   u64 channel_time_ext_busy ;
   u64 channel_time_rx ;
   u64 channel_time_tx ;
   u32 filled ;
   s8 noise ;
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
struct cfg80211_beacon_data {
   u8 const *head ;
   u8 const *tail ;
   u8 const *beacon_ies ;
   u8 const *proberesp_ies ;
   u8 const *assocresp_ies ;
   u8 const *probe_resp ;
   size_t head_len ;
   size_t tail_len ;
   size_t beacon_ies_len ;
   size_t proberesp_ies_len ;
   size_t assocresp_ies_len ;
   size_t probe_resp_len ;
};
struct mac_address {
   u8 addr[6U] ;
};
struct cfg80211_acl_data {
   enum nl80211_acl_policy acl_policy ;
   int n_acl_entries ;
   struct mac_address mac_addrs[] ;
};
struct cfg80211_ap_settings {
   struct cfg80211_chan_def chandef ;
   struct cfg80211_beacon_data beacon ;
   int beacon_interval ;
   int dtim_period ;
   u8 const *ssid ;
   size_t ssid_len ;
   enum nl80211_hidden_ssid hidden_ssid ;
   struct cfg80211_crypto_settings crypto ;
   bool privacy ;
   enum nl80211_auth_type auth_type ;
   int inactivity_timeout ;
   u8 p2p_ctwindow ;
   bool p2p_opp_ps ;
   struct cfg80211_acl_data const *acl ;
   bool radar_required ;
};
struct cfg80211_csa_settings {
   struct cfg80211_chan_def chandef ;
   struct cfg80211_beacon_data beacon_csa ;
   u16 counter_offset_beacon ;
   u16 counter_offset_presp ;
   struct cfg80211_beacon_data beacon_after ;
   bool radar_required ;
   bool block_tx ;
   u8 count ;
};
struct station_parameters {
   u8 const *supported_rates ;
   struct net_device *vlan ;
   u32 sta_flags_mask ;
   u32 sta_flags_set ;
   u32 sta_modify_mask ;
   int listen_interval ;
   u16 aid ;
   u8 supported_rates_len ;
   u8 plink_action ;
   u8 plink_state ;
   struct ieee80211_ht_cap const *ht_capa ;
   struct ieee80211_vht_cap const *vht_capa ;
   u8 uapsd_queues ;
   u8 max_sp ;
   enum nl80211_mesh_power_mode local_pm ;
   u16 capability ;
   u8 const *ext_capab ;
   u8 ext_capab_len ;
   u8 const *supported_channels ;
   u8 supported_channels_len ;
   u8 const *supported_oper_classes ;
   u8 supported_oper_classes_len ;
   u8 opmode_notif ;
   bool opmode_notif_used ;
};
struct rate_info {
   u8 flags ;
   u8 mcs ;
   u16 legacy ;
   u8 nss ;
};
struct sta_bss_parameters {
   u8 flags ;
   u8 dtim_period ;
   u16 beacon_interval ;
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
};
struct mpath_info {
   u32 filled ;
   u32 frame_qlen ;
   u32 sn ;
   u32 metric ;
   u32 exptime ;
   u32 discovery_timeout ;
   u8 discovery_retries ;
   u8 flags ;
   int generation ;
};
struct bss_parameters {
   int use_cts_prot ;
   int use_short_preamble ;
   int use_short_slot_time ;
   u8 *basic_rates ;
   u8 basic_rates_len ;
   int ap_isolate ;
   int ht_opmode ;
   s8 p2p_ctwindow ;
   s8 p2p_opp_ps ;
};
struct mesh_config {
   u16 dot11MeshRetryTimeout ;
   u16 dot11MeshConfirmTimeout ;
   u16 dot11MeshHoldingTimeout ;
   u16 dot11MeshMaxPeerLinks ;
   u8 dot11MeshMaxRetries ;
   u8 dot11MeshTTL ;
   u8 element_ttl ;
   bool auto_open_plinks ;
   u32 dot11MeshNbrOffsetMaxNeighbor ;
   u8 dot11MeshHWMPmaxPREQretries ;
   u32 path_refresh_time ;
   u16 min_discovery_timeout ;
   u32 dot11MeshHWMPactivePathTimeout ;
   u16 dot11MeshHWMPpreqMinInterval ;
   u16 dot11MeshHWMPperrMinInterval ;
   u16 dot11MeshHWMPnetDiameterTraversalTime ;
   u8 dot11MeshHWMPRootMode ;
   u16 dot11MeshHWMPRannInterval ;
   bool dot11MeshGateAnnouncementProtocol ;
   bool dot11MeshForwarding ;
   s32 rssi_threshold ;
   u16 ht_opmode ;
   u32 dot11MeshHWMPactivePathToRootTimeout ;
   u16 dot11MeshHWMProotInterval ;
   u16 dot11MeshHWMPconfirmationInterval ;
   enum nl80211_mesh_power_mode power_mode ;
   u16 dot11MeshAwakeWindowDuration ;
   u32 plink_timeout ;
};
struct mesh_setup {
   struct cfg80211_chan_def chandef ;
   u8 const *mesh_id ;
   u8 mesh_id_len ;
   u8 sync_method ;
   u8 path_sel_proto ;
   u8 path_metric ;
   u8 auth_id ;
   u8 const *ie ;
   u8 ie_len ;
   bool is_authenticated ;
   bool is_secure ;
   bool user_mpm ;
   u8 dtim_period ;
   u16 beacon_interval ;
   int mcast_rate[3U] ;
   u32 basic_rates ;
};
struct ieee80211_txq_params {
   enum nl80211_ac ac ;
   u16 txop ;
   u16 cwmin ;
   u16 cwmax ;
   u8 aifs ;
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
   struct wiphy *wiphy ;
   unsigned long scan_start ;
   bool aborted ;
   bool notified ;
   bool no_cck ;
   struct ieee80211_channel *channels[0U] ;
};
struct cfg80211_match_set {
   struct cfg80211_ssid ssid ;
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
   s32 rssi_thold ;
   struct wiphy *wiphy ;
   struct net_device *dev ;
   unsigned long scan_start ;
   struct ieee80211_channel *channels[0U] ;
};
enum cfg80211_signal_type {
    CFG80211_SIGNAL_TYPE_NONE = 0,
    CFG80211_SIGNAL_TYPE_MBM = 1,
    CFG80211_SIGNAL_TYPE_UNSPEC = 2
} ;
struct cfg80211_bss_ies {
   u64 tsf ;
   struct callback_head callback_head ;
   int len ;
   u8 data[] ;
};
struct cfg80211_bss {
   struct ieee80211_channel *channel ;
   enum nl80211_bss_scan_width scan_width ;
   struct cfg80211_bss_ies const *ies ;
   struct cfg80211_bss_ies const *beacon_ies ;
   struct cfg80211_bss_ies const *proberesp_ies ;
   struct cfg80211_bss *hidden_beacon_bss ;
   s32 signal ;
   u16 beacon_interval ;
   u16 capability ;
   u8 bssid[6U] ;
   u8 priv[0U] ;
};
struct cfg80211_auth_request {
   struct cfg80211_bss *bss ;
   u8 const *ie ;
   size_t ie_len ;
   enum nl80211_auth_type auth_type ;
   u8 const *key ;
   u8 key_len ;
   u8 key_idx ;
   u8 const *sae_data ;
   size_t sae_data_len ;
};
struct cfg80211_assoc_request {
   struct cfg80211_bss *bss ;
   u8 const *ie ;
   u8 const *prev_bssid ;
   size_t ie_len ;
   struct cfg80211_crypto_settings crypto ;
   bool use_mfp ;
   u32 flags ;
   struct ieee80211_ht_cap ht_capa ;
   struct ieee80211_ht_cap ht_capa_mask ;
   struct ieee80211_vht_cap vht_capa ;
   struct ieee80211_vht_cap vht_capa_mask ;
};
struct cfg80211_deauth_request {
   u8 const *bssid ;
   u8 const *ie ;
   size_t ie_len ;
   u16 reason_code ;
   bool local_state_change ;
};
struct cfg80211_disassoc_request {
   struct cfg80211_bss *bss ;
   u8 const *ie ;
   size_t ie_len ;
   u16 reason_code ;
   bool local_state_change ;
};
struct cfg80211_ibss_params {
   u8 *ssid ;
   u8 *bssid ;
   struct cfg80211_chan_def chandef ;
   u8 *ie ;
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
   u8 *bssid ;
   u8 *ssid ;
   size_t ssid_len ;
   enum nl80211_auth_type auth_type ;
   u8 *ie ;
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
struct __anonstruct_control_282 {
   u32 legacy ;
   u8 ht_mcs[10U] ;
   u16 vht_mcs[8U] ;
};
struct cfg80211_bitrate_mask {
   struct __anonstruct_control_282 control[3U] ;
};
struct cfg80211_pmksa {
   u8 *bssid ;
   u8 *pmkid ;
};
struct cfg80211_pkt_pattern {
   u8 *mask ;
   u8 *pattern ;
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
};
struct cfg80211_coalesce_rules {
   int delay ;
   enum nl80211_coalesce_condition condition ;
   struct cfg80211_pkt_pattern *patterns ;
   int n_patterns ;
};
struct cfg80211_coalesce {
   struct cfg80211_coalesce_rules *rules ;
   int n_rules ;
};
struct cfg80211_gtk_rekey_data {
   u8 kek[16U] ;
   u8 kck[16U] ;
   u8 replay_ctr[8U] ;
};
struct cfg80211_update_ft_ies_params {
   u16 md ;
   u8 const *ie ;
   size_t ie_len ;
};
struct cfg80211_mgmt_tx_params {
   struct ieee80211_channel *chan ;
   bool offchan ;
   unsigned int wait ;
   u8 const *buf ;
   size_t len ;
   bool no_cck ;
   bool dont_wait_for_ack ;
};
struct cfg80211_dscp_exception {
   u8 dscp ;
   u8 up ;
};
struct cfg80211_dscp_range {
   u8 low ;
   u8 high ;
};
struct cfg80211_qos_map {
   u8 num_des ;
   struct cfg80211_dscp_exception dscp_exception[21U] ;
   struct cfg80211_dscp_range up[8U] ;
};
struct cfg80211_ops {
   int (*suspend)(struct wiphy * , struct cfg80211_wowlan * ) ;
   int (*resume)(struct wiphy * ) ;
   void (*set_wakeup)(struct wiphy * , bool ) ;
   struct wireless_dev *(*add_virtual_intf)(struct wiphy * , char const * , enum nl80211_iftype ,
                                            u32 * , struct vif_params * ) ;
   int (*del_virtual_intf)(struct wiphy * , struct wireless_dev * ) ;
   int (*change_virtual_intf)(struct wiphy * , struct net_device * , enum nl80211_iftype ,
                              u32 * , struct vif_params * ) ;
   int (*add_key)(struct wiphy * , struct net_device * , u8 , bool , u8 const * ,
                  struct key_params * ) ;
   int (*get_key)(struct wiphy * , struct net_device * , u8 , bool , u8 const * ,
                  void * , void (*)(void * , struct key_params * ) ) ;
   int (*del_key)(struct wiphy * , struct net_device * , u8 , bool , u8 const * ) ;
   int (*set_default_key)(struct wiphy * , struct net_device * , u8 , bool , bool ) ;
   int (*set_default_mgmt_key)(struct wiphy * , struct net_device * , u8 ) ;
   int (*start_ap)(struct wiphy * , struct net_device * , struct cfg80211_ap_settings * ) ;
   int (*change_beacon)(struct wiphy * , struct net_device * , struct cfg80211_beacon_data * ) ;
   int (*stop_ap)(struct wiphy * , struct net_device * ) ;
   int (*add_station)(struct wiphy * , struct net_device * , u8 * , struct station_parameters * ) ;
   int (*del_station)(struct wiphy * , struct net_device * , u8 * ) ;
   int (*change_station)(struct wiphy * , struct net_device * , u8 * , struct station_parameters * ) ;
   int (*get_station)(struct wiphy * , struct net_device * , u8 * , struct station_info * ) ;
   int (*dump_station)(struct wiphy * , struct net_device * , int , u8 * , struct station_info * ) ;
   int (*add_mpath)(struct wiphy * , struct net_device * , u8 * , u8 * ) ;
   int (*del_mpath)(struct wiphy * , struct net_device * , u8 * ) ;
   int (*change_mpath)(struct wiphy * , struct net_device * , u8 * , u8 * ) ;
   int (*get_mpath)(struct wiphy * , struct net_device * , u8 * , u8 * , struct mpath_info * ) ;
   int (*dump_mpath)(struct wiphy * , struct net_device * , int , u8 * , u8 * , struct mpath_info * ) ;
   int (*get_mesh_config)(struct wiphy * , struct net_device * , struct mesh_config * ) ;
   int (*update_mesh_config)(struct wiphy * , struct net_device * , u32 , struct mesh_config const * ) ;
   int (*join_mesh)(struct wiphy * , struct net_device * , struct mesh_config const * ,
                    struct mesh_setup const * ) ;
   int (*leave_mesh)(struct wiphy * , struct net_device * ) ;
   int (*change_bss)(struct wiphy * , struct net_device * , struct bss_parameters * ) ;
   int (*set_txq_params)(struct wiphy * , struct net_device * , struct ieee80211_txq_params * ) ;
   int (*libertas_set_mesh_channel)(struct wiphy * , struct net_device * , struct ieee80211_channel * ) ;
   int (*set_monitor_channel)(struct wiphy * , struct cfg80211_chan_def * ) ;
   int (*scan)(struct wiphy * , struct cfg80211_scan_request * ) ;
   int (*auth)(struct wiphy * , struct net_device * , struct cfg80211_auth_request * ) ;
   int (*assoc)(struct wiphy * , struct net_device * , struct cfg80211_assoc_request * ) ;
   int (*deauth)(struct wiphy * , struct net_device * , struct cfg80211_deauth_request * ) ;
   int (*disassoc)(struct wiphy * , struct net_device * , struct cfg80211_disassoc_request * ) ;
   int (*connect)(struct wiphy * , struct net_device * , struct cfg80211_connect_params * ) ;
   int (*disconnect)(struct wiphy * , struct net_device * , u16 ) ;
   int (*join_ibss)(struct wiphy * , struct net_device * , struct cfg80211_ibss_params * ) ;
   int (*leave_ibss)(struct wiphy * , struct net_device * ) ;
   int (*set_mcast_rate)(struct wiphy * , struct net_device * , int * ) ;
   int (*set_wiphy_params)(struct wiphy * , u32 ) ;
   int (*set_tx_power)(struct wiphy * , struct wireless_dev * , enum nl80211_tx_power_setting ,
                       int ) ;
   int (*get_tx_power)(struct wiphy * , struct wireless_dev * , int * ) ;
   int (*set_wds_peer)(struct wiphy * , struct net_device * , u8 const * ) ;
   void (*rfkill_poll)(struct wiphy * ) ;
   int (*testmode_cmd)(struct wiphy * , struct wireless_dev * , void * , int ) ;
   int (*testmode_dump)(struct wiphy * , struct sk_buff * , struct netlink_callback * ,
                        void * , int ) ;
   int (*set_bitrate_mask)(struct wiphy * , struct net_device * , u8 const * , struct cfg80211_bitrate_mask const * ) ;
   int (*dump_survey)(struct wiphy * , struct net_device * , int , struct survey_info * ) ;
   int (*set_pmksa)(struct wiphy * , struct net_device * , struct cfg80211_pmksa * ) ;
   int (*del_pmksa)(struct wiphy * , struct net_device * , struct cfg80211_pmksa * ) ;
   int (*flush_pmksa)(struct wiphy * , struct net_device * ) ;
   int (*remain_on_channel)(struct wiphy * , struct wireless_dev * , struct ieee80211_channel * ,
                            unsigned int , u64 * ) ;
   int (*cancel_remain_on_channel)(struct wiphy * , struct wireless_dev * , u64 ) ;
   int (*mgmt_tx)(struct wiphy * , struct wireless_dev * , struct cfg80211_mgmt_tx_params * ,
                  u64 * ) ;
   int (*mgmt_tx_cancel_wait)(struct wiphy * , struct wireless_dev * , u64 ) ;
   int (*set_power_mgmt)(struct wiphy * , struct net_device * , bool , int ) ;
   int (*set_cqm_rssi_config)(struct wiphy * , struct net_device * , s32 , u32 ) ;
   int (*set_cqm_txe_config)(struct wiphy * , struct net_device * , u32 , u32 ,
                             u32 ) ;
   void (*mgmt_frame_register)(struct wiphy * , struct wireless_dev * , u16 , bool ) ;
   int (*set_antenna)(struct wiphy * , u32 , u32 ) ;
   int (*get_antenna)(struct wiphy * , u32 * , u32 * ) ;
   int (*set_ringparam)(struct wiphy * , u32 , u32 ) ;
   void (*get_ringparam)(struct wiphy * , u32 * , u32 * , u32 * , u32 * ) ;
   int (*sched_scan_start)(struct wiphy * , struct net_device * , struct cfg80211_sched_scan_request * ) ;
   int (*sched_scan_stop)(struct wiphy * , struct net_device * ) ;
   int (*set_rekey_data)(struct wiphy * , struct net_device * , struct cfg80211_gtk_rekey_data * ) ;
   int (*tdls_mgmt)(struct wiphy * , struct net_device * , u8 * , u8 , u8 , u16 ,
                    u8 const * , size_t ) ;
   int (*tdls_oper)(struct wiphy * , struct net_device * , u8 * , enum nl80211_tdls_operation ) ;
   int (*probe_client)(struct wiphy * , struct net_device * , u8 const * , u64 * ) ;
   int (*set_noack_map)(struct wiphy * , struct net_device * , u16 ) ;
   int (*get_et_sset_count)(struct wiphy * , struct net_device * , int ) ;
   void (*get_et_stats)(struct wiphy * , struct net_device * , struct ethtool_stats * ,
                        u64 * ) ;
   void (*get_et_strings)(struct wiphy * , struct net_device * , u32 , u8 * ) ;
   int (*get_channel)(struct wiphy * , struct wireless_dev * , struct cfg80211_chan_def * ) ;
   int (*start_p2p_device)(struct wiphy * , struct wireless_dev * ) ;
   void (*stop_p2p_device)(struct wiphy * , struct wireless_dev * ) ;
   int (*set_mac_acl)(struct wiphy * , struct net_device * , struct cfg80211_acl_data const * ) ;
   int (*start_radar_detection)(struct wiphy * , struct net_device * , struct cfg80211_chan_def * ) ;
   int (*update_ft_ies)(struct wiphy * , struct net_device * , struct cfg80211_update_ft_ies_params * ) ;
   int (*crit_proto_start)(struct wiphy * , struct wireless_dev * , enum nl80211_crit_proto_id ,
                           u16 ) ;
   void (*crit_proto_stop)(struct wiphy * , struct wireless_dev * ) ;
   int (*set_coalesce)(struct wiphy * , struct cfg80211_coalesce * ) ;
   int (*channel_switch)(struct wiphy * , struct net_device * , struct cfg80211_csa_settings * ) ;
   int (*set_qos_map)(struct wiphy * , struct net_device * , struct cfg80211_qos_map * ) ;
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
   struct net *_net ;
   struct iw_handler_def const *wext ;
   struct wiphy_coalesce_support const *coalesce ;
   struct wiphy_vendor_command const *vendor_commands ;
   struct nl80211_vendor_cmd_info const *vendor_events ;
   int n_vendor_commands ;
   int n_vendor_events ;
   char priv[0U] ;
};
struct cfg80211_conn;
struct cfg80211_internal_bss;
struct cfg80211_cached_keys;
struct __anonstruct_wext_283 {
   struct cfg80211_ibss_params ibss ;
   struct cfg80211_connect_params connect ;
   struct cfg80211_cached_keys *keys ;
   u8 *ie ;
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
   struct ieee80211_channel *channel ;
   bool ibss_fixed ;
   bool ibss_dfs_possible ;
   bool ps ;
   int ps_timeout ;
   int beacon_interval ;
   u32 ap_unexpected_nlportid ;
   bool cac_started ;
   unsigned long cac_start_time ;
   struct __anonstruct_wext_283 wext ;
};
struct driver_info;
struct usbnet {
   struct usb_device *udev ;
   struct usb_interface *intf ;
   struct driver_info *driver_info ;
   char const *driver_name ;
   void *driver_priv ;
   wait_queue_head_t wait ;
   struct mutex phy_mutex ;
   unsigned char suspend_count ;
   unsigned char pkt_cnt ;
   unsigned char pkt_err ;
   unsigned short rx_qlen ;
   unsigned short tx_qlen ;
   unsigned int can_dma_sg : 1 ;
   unsigned int in ;
   unsigned int out ;
   struct usb_host_endpoint *status ;
   unsigned int maxpacket ;
   struct timer_list delay ;
   char const *padding_pkt ;
   struct net_device *net ;
   int msg_enable ;
   unsigned long data[5U] ;
   u32 xid ;
   u32 hard_mtu ;
   size_t rx_urb_size ;
   struct mii_if_info mii ;
   struct sk_buff_head rxq ;
   struct sk_buff_head txq ;
   struct sk_buff_head done ;
   struct sk_buff_head rxq_pause ;
   struct urb *interrupt ;
   unsigned int interrupt_count ;
   struct mutex interrupt_mutex ;
   struct usb_anchor deferred ;
   struct tasklet_struct bh ;
   struct work_struct kevent ;
   unsigned long flags ;
};
struct driver_info {
   char *description ;
   int flags ;
   int (*bind)(struct usbnet * , struct usb_interface * ) ;
   void (*unbind)(struct usbnet * , struct usb_interface * ) ;
   int (*reset)(struct usbnet * ) ;
   int (*stop)(struct usbnet * ) ;
   int (*check_connect)(struct usbnet * ) ;
   int (*manage_power)(struct usbnet * , int ) ;
   void (*status)(struct usbnet * , struct urb * ) ;
   int (*link_reset)(struct usbnet * ) ;
   int (*rx_fixup)(struct usbnet * , struct sk_buff * ) ;
   struct sk_buff *(*tx_fixup)(struct usbnet * , struct sk_buff * , gfp_t ) ;
   int (*early_init)(struct usbnet * ) ;
   void (*indication)(struct usbnet * , void * , int ) ;
   int in ;
   int out ;
   unsigned long data ;
};
struct rndis_msg_hdr {
   __le32 msg_type ;
   __le32 msg_len ;
   __le32 request_id ;
   __le32 status ;
};
struct rndis_query {
   __le32 msg_type ;
   __le32 msg_len ;
   __le32 request_id ;
   __le32 oid ;
   __le32 len ;
   __le32 offset ;
   __le32 handle ;
};
struct rndis_query_c {
   __le32 msg_type ;
   __le32 msg_len ;
   __le32 request_id ;
   __le32 status ;
   __le32 len ;
   __le32 offset ;
};
struct rndis_set {
   __le32 msg_type ;
   __le32 msg_len ;
   __le32 request_id ;
   __le32 oid ;
   __le32 len ;
   __le32 offset ;
   __le32 handle ;
};
struct rndis_set_c {
   __le32 msg_type ;
   __le32 msg_len ;
   __le32 request_id ;
   __le32 status ;
};
struct rndis_reset {
   __le32 msg_type ;
   __le32 msg_len ;
   __le32 reserved ;
};
struct rndis_indicate {
   __le32 msg_type ;
   __le32 msg_len ;
   __le32 status ;
   __le32 length ;
   __le32 offset ;
   __le32 diag_status ;
   __le32 error_offset ;
   __le32 message ;
};
struct ndis_80211_auth_request {
   __le32 length ;
   u8 bssid[6U] ;
   u8 padding[2U] ;
   __le32 flags ;
};
struct ndis_80211_pmkid_candidate {
   u8 bssid[6U] ;
   u8 padding[2U] ;
   __le32 flags ;
};
struct ndis_80211_pmkid_cand_list {
   __le32 version ;
   __le32 num_candidates ;
   struct ndis_80211_pmkid_candidate candidate_list[0U] ;
};
union __anonunion_u_284 {
   __le32 media_stream_mode ;
   __le32 radio_status ;
   struct ndis_80211_auth_request auth_request[0U] ;
   struct ndis_80211_pmkid_cand_list cand_list ;
};
struct ndis_80211_status_indication {
   __le32 status_type ;
   union __anonunion_u_284 u ;
};
struct ndis_80211_ssid {
   __le32 length ;
   u8 essid[32U] ;
};
struct ndis_80211_conf_freq_hop {
   __le32 length ;
   __le32 hop_pattern ;
   __le32 hop_set ;
   __le32 dwell_time ;
};
struct ndis_80211_conf {
   __le32 length ;
   __le32 beacon_period ;
   __le32 atim_window ;
   __le32 ds_config ;
   struct ndis_80211_conf_freq_hop fh_config ;
};
struct ndis_80211_bssid_ex {
   __le32 length ;
   u8 mac[6U] ;
   u8 padding[2U] ;
   struct ndis_80211_ssid ssid ;
   __le32 privacy ;
   __le32 rssi ;
   __le32 net_type ;
   struct ndis_80211_conf config ;
   __le32 net_infra ;
   u8 rates[16U] ;
   __le32 ie_length ;
   u8 ies[0U] ;
};
struct ndis_80211_bssid_list_ex {
   __le32 num_items ;
   struct ndis_80211_bssid_ex bssid[0U] ;
};
struct ndis_80211_fixed_ies {
   u8 timestamp[8U] ;
   __le16 beacon_interval ;
   __le16 capabilities ;
};
struct ndis_80211_wep_key {
   __le32 size ;
   __le32 index ;
   __le32 length ;
   u8 material[32U] ;
};
struct ndis_80211_key {
   __le32 size ;
   __le32 index ;
   __le32 length ;
   u8 bssid[6U] ;
   u8 padding[6U] ;
   u8 rsc[8U] ;
   u8 material[32U] ;
};
struct ndis_80211_remove_key {
   __le32 size ;
   __le32 index ;
   u8 bssid[6U] ;
   u8 padding[2U] ;
};
struct ndis_config_param {
   __le32 name_offs ;
   __le32 name_length ;
   __le32 type ;
   __le32 value_offs ;
   __le32 value_length ;
};
struct req_ie {
   __le16 capa ;
   __le16 listen_interval ;
   u8 cur_ap_address[6U] ;
};
struct resp_ie {
   __le16 capa ;
   __le16 status_code ;
   __le16 assoc_id ;
};
struct ndis_80211_assoc_info {
   __le32 length ;
   __le16 req_ies ;
   struct req_ie req_ie ;
   __le32 req_ie_length ;
   __le32 offset_req_ies ;
   __le16 resp_ies ;
   struct resp_ie resp_ie ;
   __le32 resp_ie_length ;
   __le32 offset_resp_ies ;
};
struct ndis_80211_auth_encr_pair {
   __le32 auth_mode ;
   __le32 encr_mode ;
};
struct ndis_80211_capability {
   __le32 length ;
   __le32 version ;
   __le32 num_pmkids ;
   __le32 num_auth_encr_pair ;
   struct ndis_80211_auth_encr_pair auth_encr_pair[0U] ;
};
struct ndis_80211_bssid_info {
   u8 bssid[6U] ;
   u8 pmkid[16U] ;
};
struct ndis_80211_pmkid {
   __le32 length ;
   __le32 bssid_info_count ;
   struct ndis_80211_bssid_info bssid_info[0U] ;
};
struct rndis_wlan_encr_key {
   int len ;
   u32 cipher ;
   u8 material[32U] ;
   u8 bssid[6U] ;
   bool pairwise ;
   bool tx_key ;
};
struct rndis_wlan_private {
   struct usbnet *usbdev ;
   struct wireless_dev wdev ;
   struct cfg80211_scan_request *scan_request ;
   struct workqueue_struct *workqueue ;
   struct delayed_work dev_poller_work ;
   struct delayed_work scan_work ;
   struct work_struct work ;
   struct mutex command_lock ;
   unsigned long work_pending ;
   int last_qual ;
   s32 cqm_rssi_thold ;
   u32 cqm_rssi_hyst ;
   int last_cqm_event_rssi ;
   struct ieee80211_supported_band band ;
   struct ieee80211_channel channels[14U] ;
   struct ieee80211_rate rates[12U] ;
   u32 cipher_suites[4U] ;
   int device_type ;
   int caps ;
   int multicast_size ;
   char param_country[4U] ;
   int param_frameburst ;
   int param_afterburner ;
   int param_power_save ;
   int param_power_output ;
   int param_roamtrigger ;
   int param_roamdelta ;
   u32 param_workaround_interval ;
   bool radio_on ;
   int power_mode ;
   int infra_mode ;
   bool connected ;
   u8 bssid[6U] ;
   u32 current_command_oid ;
   u8 encr_tx_key_index ;
   struct rndis_wlan_encr_key encr_keys[4U] ;
   int wpa_version ;
   u8 command_buffer[1053U] ;
};
union __anonunion_u_286 {
   void *buf ;
   struct rndis_msg_hdr *header ;
   struct rndis_query *get ;
   struct rndis_query_c *get_c ;
};
union __anonunion_u_288 {
   void *buf ;
   struct rndis_msg_hdr *header ;
   struct rndis_set *set ;
   struct rndis_set_c *set_c ;
};
struct __anonstruct_networks_supported_290 {
   __le32 num_items ;
   __le32 items[8U] ;
};
typedef int ldv_func_ret_type;
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
typedef _Bool ldv_set;
long ldv__builtin_expect(long exp , long c ) ;
long ldv_is_err(void const *ptr ) ;
void *ldv_err_ptr(long error ) ;
long ldv_ptr_err(void const *ptr ) ;
void *ldv_kzalloc(size_t size , gfp_t flags ) ;
static void ldv_mutex_lock_15(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_lock_17(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_lock_19(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_command_lock_of_rndis_wlan_private(struct mutex *lock ) ;
void ldv_mutex_unlock_command_lock_of_rndis_wlan_private(struct mutex *lock ) ;
void ldv_initialize(void) ;
int ldv_post_init(int init_ret_val ) ;
extern void ldv_pre_probe(void) ;
int ldv_post_probe(int probe_ret_val ) ;
int ldv_filter_err_code(int ret_val ) ;
extern int ldv_pre_usb_register_driver(void) ;
void ldv_check_final_state(void) ;
extern void ldv_switch_to_interrupt_context(void) ;
extern void ldv_switch_to_process_context(void) ;
void ldv_assume(int expression ) ;
void ldv_stop(void) ;
int ldv_undef_int(void) ;
void ldv_free(void *s ) ;
void *ldv_xmalloc(size_t size ) ;
extern void *external_allocated_data(void) ;
extern struct module __this_module ;
__inline static void set_bit(long nr , unsigned long volatile *addr )
{
  {
  __asm__ volatile (".pushsection .smp_locks,\"a\"\n.balign 4\n.long 671f - .\n.popsection\n671:\n\tlock; bts %1,%0": "+m" (*((long volatile *)addr)): "Ir" (nr): "memory");
  return;
}
}
__inline static int test_and_clear_bit(long nr , unsigned long volatile *addr )
{
  {
  __asm__ volatile ("":);
  return (0);
  return (1);
}
}
__inline static int constant_test_bit(long nr , unsigned long const volatile *addr )
{
  {
  return ((int )((unsigned long )*(addr + (unsigned long )(nr >> 6)) >> ((int )nr & 63)) & 1);
}
}
__inline static __u32 __fswab32(__u32 val )
{
  int tmp ;
  {
  {
  tmp = __builtin_bswap32(val);
  }
  return ((__u32 )tmp);
}
}
extern int __dynamic_netdev_dbg(struct _ddebug * , struct net_device const * , char const *
                                , ...) ;
extern int sprintf(char * , char const * , ...) ;
__inline static void INIT_LIST_HEAD(struct list_head *list )
{
  {
  list->next = list;
  list->prev = list;
  return;
}
}
extern void *memcpy(void * , void const * , size_t ) ;
extern void *memset(void * , int , size_t ) ;
extern size_t strlen(char const * ) ;
extern char *strcpy(char * , char const * ) ;
extern int strcmp(char const * , char const * ) ;
extern void warn_slowpath_null(char const * , int const ) ;
__inline static void *ERR_PTR(long error ) ;
__inline static long PTR_ERR(void const *ptr ) ;
__inline static long IS_ERR(void const *ptr ) ;
extern void lockdep_init_map(struct lockdep_map * , char const * , struct lock_class_key * ,
                             int ) ;
extern void __mutex_init(struct mutex * , char const * , struct lock_class_key * ) ;
static void ldv_mutex_unlock_16(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_unlock_18(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_unlock_20(struct mutex *ldv_func_arg1 ) ;
extern void _raw_spin_lock_bh(raw_spinlock_t * ) ;
extern void _raw_spin_unlock_bh(raw_spinlock_t * ) ;
__inline static void spin_lock_bh(spinlock_t *lock )
{
  {
  {
  _raw_spin_lock_bh(& lock->__annonCompField19.rlock);
  }
  return;
}
}
__inline static void spin_unlock_bh(spinlock_t *lock )
{
  {
  {
  _raw_spin_unlock_bh(& lock->__annonCompField19.rlock);
  }
  return;
}
}
extern unsigned long msecs_to_jiffies(unsigned int const ) ;
extern void init_timer_key(struct timer_list * , unsigned int , char const * ,
                           struct lock_class_key * ) ;
extern unsigned long round_jiffies_relative(unsigned long ) ;
extern void delayed_work_timer_fn(unsigned long ) ;
extern void __init_work(struct work_struct * , int ) ;
extern struct workqueue_struct *__alloc_workqueue_key(char const * , unsigned int ,
                                                      int , struct lock_class_key * ,
                                                      char const * , ...) ;
extern void destroy_workqueue(struct workqueue_struct * ) ;
extern bool queue_work_on(int , struct workqueue_struct * , struct work_struct * ) ;
extern bool queue_delayed_work_on(int , struct workqueue_struct * , struct delayed_work * ,
                                  unsigned long ) ;
extern void flush_workqueue(struct workqueue_struct * ) ;
extern bool cancel_work_sync(struct work_struct * ) ;
extern bool cancel_delayed_work_sync(struct delayed_work * ) ;
__inline static bool queue_work(struct workqueue_struct *wq , struct work_struct *work )
{
  bool tmp ;
  {
  {
  tmp = queue_work_on(8192, wq, work);
  }
  return (tmp);
}
}
__inline static bool queue_delayed_work(struct workqueue_struct *wq , struct delayed_work *dwork ,
                                        unsigned long delay )
{
  bool tmp ;
  {
  {
  tmp = queue_delayed_work_on(8192, wq, dwork, delay);
  }
  return (tmp);
}
}
extern void msleep(unsigned int ) ;
extern void get_random_bytes(void * , int ) ;
extern void *krealloc(void const * , size_t , gfp_t ) ;
extern void kfree(void const * ) ;
extern void *ldv_malloc(size_t);
void *__kmalloc(size_t size, gfp_t t)
{
 return ldv_malloc(size);
}
__inline static void *kmalloc(size_t size , gfp_t flags )
{
  void *tmp___2 ;
  {
  {
  tmp___2 = __kmalloc(size, flags);
  }
  return (tmp___2);
}
}
__inline static void *kmalloc_array(size_t n , size_t size , gfp_t flags )
{
  void *tmp ;
  {
  if (size != 0UL && n > 0xffffffffffffffffUL / size) {
    return ((void *)0);
  } else {
  }
  {
  tmp = __kmalloc(n * size, flags);
  }
  return (tmp);
}
}
__inline static void *kzalloc(size_t size , gfp_t flags ) ;
__inline static void *netdev_priv(struct net_device const *dev )
{
  {
  return ((void *)dev + 3200U);
}
}
extern void netif_carrier_on(struct net_device * ) ;
extern void netif_carrier_off(struct net_device * ) ;
__inline static void netif_addr_lock_bh(struct net_device *dev )
{
  {
  {
  spin_lock_bh(& dev->addr_list_lock);
  }
  return;
}
}
__inline static void netif_addr_unlock_bh(struct net_device *dev )
{
  {
  {
  spin_unlock_bh(& dev->addr_list_lock);
  }
  return;
}
}
extern int netdev_err(struct net_device const * , char const * , ...) ;
extern int netdev_warn(struct net_device const * , char const * , ...) ;
extern int netdev_info(struct net_device const * , char const * , ...) ;
extern int usb_register_driver(struct usb_driver * , struct module * , char const * ) ;
static int ldv_usb_register_driver_21(struct usb_driver *ldv_func_arg1 , struct module *ldv_func_arg2 ,
                                      char const *ldv_func_arg3 ) ;
extern void usb_deregister(struct usb_driver * ) ;
static void ldv_usb_deregister_22(struct usb_driver *ldv_func_arg1 ) ;
extern int eth_mac_addr(struct net_device * , void * ) ;
extern int eth_validate_addr(struct net_device * ) ;
__inline static bool is_zero_ether_addr(u8 const *addr )
{
  {
  return (((unsigned int )*((u32 const *)addr) | (unsigned int )*((u16 const *)addr + 4U)) == 0U);
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
__inline static int ieee80211_dsss_chan_to_freq(int channel )
{
  {
  if ((unsigned int )channel - 1U <= 12U) {
    return (channel * 5 + 2407);
  } else
  if (channel == 14) {
    return (2484);
  } else {
    return (-1);
  }
}
}
extern unsigned char const _ctype[] ;
__inline static unsigned char __toupper(unsigned char c )
{
  {
  if (((int )_ctype[(int )c] & 2) != 0) {
    c = (unsigned int )c + 224U;
  } else {
  }
  return (c);
}
}
__inline static void *wiphy_priv(struct wiphy *wiphy )
{
  long tmp ;
  {
  {
  tmp = ldv__builtin_expect((unsigned long )wiphy == (unsigned long )((struct wiphy *)0),
                         0L);
  }
  if (tmp != 0L) {
    {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"include/net/cfg80211.h"),
                         "i" (3014), "i" (12UL));
    __builtin_unreachable();
    }
  } else {
  }
  return ((void *)(& wiphy->priv));
}
}
__inline static void set_wiphy_dev(struct wiphy *wiphy , struct device *dev )
{
  {
  wiphy->dev.parent = dev;
  return;
}
}
extern struct wiphy *wiphy_new(struct cfg80211_ops const * , int ) ;
extern int wiphy_register(struct wiphy * ) ;
extern void wiphy_unregister(struct wiphy * ) ;
extern void wiphy_free(struct wiphy * ) ;
extern int ieee80211_frequency_to_channel(int ) ;
extern struct ieee80211_channel *__ieee80211_get_channel(struct wiphy * , int ) ;
__inline static struct ieee80211_channel *ieee80211_get_channel(struct wiphy *wiphy ,
                                                                int freq )
{
  struct ieee80211_channel *tmp ;
  {
  {
  tmp = __ieee80211_get_channel(wiphy, freq);
  }
  return (tmp);
}
}
extern void cfg80211_scan_done(struct cfg80211_scan_request * , bool ) ;
extern struct cfg80211_bss *cfg80211_inform_bss_width(struct wiphy * , struct ieee80211_channel * ,
                                                      enum nl80211_bss_scan_width ,
                                                      u8 const * , u64 , u16 ,
                                                      u16 , u8 const * , size_t ,
                                                      s32 , gfp_t ) ;
__inline static struct cfg80211_bss *cfg80211_inform_bss(struct wiphy *wiphy , struct ieee80211_channel *channel ,
                                                         u8 const *bssid , u64 tsf ,
                                                         u16 capability , u16 beacon_interval ,
                                                         u8 const *ie , size_t ielen ,
                                                         s32 signal , gfp_t gfp )
{
  struct cfg80211_bss *tmp ;
  {
  {
  tmp = cfg80211_inform_bss_width(wiphy, channel, 0, bssid, tsf, (int )capability,
                                  (int )beacon_interval, ie, ielen, signal, gfp);
  }
  return (tmp);
}
}
extern void cfg80211_put_bss(struct wiphy * , struct cfg80211_bss * ) ;
extern void cfg80211_michael_mic_failure(struct net_device * , u8 const * , enum nl80211_key_type ,
                                         int , u8 const * , gfp_t ) ;
extern void cfg80211_ibss_joined(struct net_device * , u8 const * , gfp_t ) ;
extern void cfg80211_connect_result(struct net_device * , u8 const * , u8 const * ,
                                    size_t , u8 const * , size_t , u16 , gfp_t ) ;
extern void cfg80211_roamed(struct net_device * , struct ieee80211_channel * , u8 const * ,
                            u8 const * , size_t , u8 const * , size_t , gfp_t ) ;
extern void cfg80211_disconnected(struct net_device * , u16 , u8 * , size_t , gfp_t ) ;
extern void cfg80211_cqm_rssi_notify(struct net_device * , enum nl80211_cqm_rssi_threshold_event ,
                                     gfp_t ) ;
extern void cfg80211_pmksa_candidate_notify(struct net_device * , int , u8 const * ,
                                            bool , gfp_t ) ;
extern int usbnet_probe(struct usb_interface * , struct usb_device_id const * ) ;
extern int usbnet_suspend(struct usb_interface * , pm_message_t ) ;
extern int usbnet_resume(struct usb_interface * ) ;
extern void usbnet_disconnect(struct usb_interface * ) ;
extern int usbnet_open(struct net_device * ) ;
extern int usbnet_stop(struct net_device * ) ;
extern netdev_tx_t usbnet_start_xmit(struct sk_buff * , struct net_device * ) ;
extern void usbnet_tx_timeout(struct net_device * ) ;
extern void usbnet_pause_rx(struct usbnet * ) ;
extern void usbnet_resume_rx(struct usbnet * ) ;
extern void usbnet_purge_paused_rxq(struct usbnet * ) ;
extern void rndis_status(struct usbnet * , struct urb * ) ;
extern int rndis_command(struct usbnet * , struct rndis_msg_hdr * , int ) ;
extern int generic_rndis_bind(struct usbnet * , struct usb_interface * , int ) ;
extern void rndis_unbind(struct usbnet * , struct usb_interface * ) ;
extern int rndis_rx_fixup(struct usbnet * , struct sk_buff * ) ;
extern struct sk_buff *rndis_tx_fixup(struct usbnet * , struct sk_buff * , gfp_t ) ;
static char modparam_country[4U] = { 'E', 'U', '\000'};
static int modparam_frameburst = 1;
static int modparam_afterburner = 0;
static int modparam_power_save = 0;
static int modparam_power_output = 3;
static int modparam_roamtrigger = -70;
static int modparam_roamdelta = 1;
static int modparam_workaround_interval ;
static struct ieee80211_channel const rndis_channels[14U] =
  { {0, 2412U, (unsigned short)0, 0U, 0, 0, 0, (_Bool)0, 0U, 0, 0, 0, 0UL},
        {0, 2417U, (unsigned short)0, 0U, 0, 0, 0, (_Bool)0, 0U, 0, 0, 0, 0UL},
        {0, 2422U, (unsigned short)0, 0U, 0, 0, 0, (_Bool)0, 0U, 0, 0, 0, 0UL},
        {0, 2427U, (unsigned short)0, 0U, 0, 0, 0, (_Bool)0, 0U, 0, 0, 0, 0UL},
        {0, 2432U, (unsigned short)0, 0U, 0, 0, 0, (_Bool)0, 0U, 0, 0, 0, 0UL},
        {0, 2437U, (unsigned short)0, 0U, 0, 0, 0, (_Bool)0, 0U, 0, 0, 0, 0UL},
        {0, 2442U, (unsigned short)0, 0U, 0, 0, 0, (_Bool)0, 0U, 0, 0, 0, 0UL},
        {0, 2447U, (unsigned short)0, 0U, 0, 0, 0, (_Bool)0, 0U, 0, 0, 0, 0UL},
        {0, 2452U, (unsigned short)0, 0U, 0, 0, 0, (_Bool)0, 0U, 0, 0, 0, 0UL},
        {0, 2457U, (unsigned short)0, 0U, 0, 0, 0, (_Bool)0, 0U, 0, 0, 0, 0UL},
        {0, 2462U, (unsigned short)0, 0U, 0, 0, 0, (_Bool)0, 0U, 0, 0, 0, 0UL},
        {0, 2467U, (unsigned short)0, 0U, 0, 0, 0, (_Bool)0, 0U, 0, 0, 0, 0UL},
        {0, 2472U, (unsigned short)0, 0U, 0, 0, 0, (_Bool)0, 0U, 0, 0, 0, 0UL},
        {0, 2484U, (unsigned short)0, 0U, 0, 0, 0, (_Bool)0, 0U, 0, 0, 0, 0UL}};
static struct ieee80211_rate const rndis_rates[12U] =
  { {0U, 10U, (unsigned short)0, (unsigned short)0},
        {1U, 20U, (unsigned short)0, (unsigned short)0},
        {1U, 55U, (unsigned short)0, (unsigned short)0},
        {1U, 110U, (unsigned short)0, (unsigned short)0},
        {0U, 60U, (unsigned short)0, (unsigned short)0},
        {0U, 90U, (unsigned short)0, (unsigned short)0},
        {0U, 120U, (unsigned short)0, (unsigned short)0},
        {0U, 180U, (unsigned short)0, (unsigned short)0},
        {0U, 240U, (unsigned short)0, (unsigned short)0},
        {0U, 360U, (unsigned short)0, (unsigned short)0},
        {0U, 480U, (unsigned short)0, (unsigned short)0},
        {0U, 540U, (unsigned short)0, (unsigned short)0}};
static u32 const rndis_cipher_suites[4U] = { 1027073U, 1027077U, 1027074U, 1027076U};
static int rndis_change_virtual_intf(struct wiphy *wiphy , struct net_device *dev ,
                                     enum nl80211_iftype type , u32 *flags , struct vif_params *params ) ;
static int rndis_scan(struct wiphy *wiphy , struct cfg80211_scan_request *request ) ;
static int rndis_set_wiphy_params(struct wiphy *wiphy , u32 changed ) ;
static int rndis_set_tx_power(struct wiphy *wiphy , struct wireless_dev *wdev , enum nl80211_tx_power_setting type ,
                              int mbm ) ;
static int rndis_get_tx_power(struct wiphy *wiphy , struct wireless_dev *wdev , int *dbm ) ;
static int rndis_connect(struct wiphy *wiphy , struct net_device *dev , struct cfg80211_connect_params *sme ) ;
static int rndis_disconnect(struct wiphy *wiphy , struct net_device *dev , u16 reason_code ) ;
static int rndis_join_ibss(struct wiphy *wiphy , struct net_device *dev , struct cfg80211_ibss_params *params ) ;
static int rndis_leave_ibss(struct wiphy *wiphy , struct net_device *dev ) ;
static int rndis_add_key(struct wiphy *wiphy , struct net_device *netdev , u8 key_index ,
                         bool pairwise , u8 const *mac_addr , struct key_params *params ) ;
static int rndis_del_key(struct wiphy *wiphy , struct net_device *netdev , u8 key_index ,
                         bool pairwise , u8 const *mac_addr ) ;
static int rndis_set_default_key(struct wiphy *wiphy , struct net_device *netdev ,
                                 u8 key_index , bool unicast , bool multicast ) ;
static int rndis_get_station(struct wiphy *wiphy , struct net_device *dev , u8 *mac ,
                             struct station_info *sinfo ) ;
static int rndis_dump_station(struct wiphy *wiphy , struct net_device *dev , int idx ,
                              u8 *mac , struct station_info *sinfo ) ;
static int rndis_set_pmksa(struct wiphy *wiphy , struct net_device *netdev , struct cfg80211_pmksa *pmksa ) ;
static int rndis_del_pmksa(struct wiphy *wiphy , struct net_device *netdev , struct cfg80211_pmksa *pmksa ) ;
static int rndis_flush_pmksa(struct wiphy *wiphy , struct net_device *netdev ) ;
static int rndis_set_power_mgmt(struct wiphy *wiphy , struct net_device *dev , bool enabled ,
                                int timeout ) ;
static int rndis_set_cqm_rssi_config(struct wiphy *wiphy , struct net_device *dev ,
                                     s32 rssi_thold , u32 rssi_hyst ) ;
static struct cfg80211_ops const rndis_config_ops =
     {0, 0, 0, 0, 0, & rndis_change_virtual_intf, & rndis_add_key, 0, & rndis_del_key,
    & rndis_set_default_key, 0, 0, 0, 0, 0, 0, 0, & rndis_get_station, & rndis_dump_station,
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, & rndis_scan, 0, 0, 0, 0, & rndis_connect,
    & rndis_disconnect, & rndis_join_ibss, & rndis_leave_ibss, 0, & rndis_set_wiphy_params,
    & rndis_set_tx_power, & rndis_get_tx_power, 0, 0, 0, 0, 0, 0, & rndis_set_pmksa,
    & rndis_del_pmksa, & rndis_flush_pmksa, 0, 0, 0, 0, & rndis_set_power_mgmt, & rndis_set_cqm_rssi_config,
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    0};
static void *rndis_wiphy_privid = (void *)(& rndis_wiphy_privid);
static struct rndis_wlan_private *get_rndis_wlan_priv(struct usbnet *dev )
{
  {
  return ((struct rndis_wlan_private *)dev->driver_priv);
}
}
static u32 get_bcm4320_power_dbm(struct rndis_wlan_private *priv )
{
  {
  {
  if (priv->param_power_output == 3) {
    goto case_3;
  } else {
  }
  if (priv->param_power_output == 2) {
    goto case_2;
  } else {
  }
  if (priv->param_power_output == 1) {
    goto case_1;
  } else {
  }
  if (priv->param_power_output == 0) {
    goto case_0;
  } else {
  }
  goto switch_default;
  switch_default: ;
  case_3: ;
  return (13U);
  case_2: ;
  return (12U);
  case_1: ;
  return (10U);
  case_0: ;
  return (7U);
  switch_break: ;
  }
}
}
static bool is_wpa_key(struct rndis_wlan_private *priv , u8 idx )
{
  int cipher ;
  {
  cipher = (int )priv->encr_keys[(int )idx].cipher;
  return ((bool )(cipher == 1027076 || cipher == 1027074));
}
}
static int rndis_cipher_to_alg(u32 cipher )
{
  {
  {
  if (cipher == 1027073U) {
    goto case_1027073;
  } else {
  }
  if (cipher == 1027077U) {
    goto case_1027077;
  } else {
  }
  if (cipher == 1027074U) {
    goto case_1027074;
  } else {
  }
  if (cipher == 1027076U) {
    goto case_1027076;
  } else {
  }
  goto switch_default;
  switch_default: ;
  return (0);
  case_1027073: ;
  case_1027077: ;
  return (1);
  case_1027074: ;
  return (2);
  case_1027076: ;
  return (4);
  switch_break: ;
  }
}
}
static int rndis_akm_suite_to_key_mgmt(u32 akm_suite )
{
  {
  {
  if (akm_suite == 1027073U) {
    goto case_1027073;
  } else {
  }
  if (akm_suite == 1027074U) {
    goto case_1027074;
  } else {
  }
  goto switch_default;
  switch_default: ;
  return (0);
  case_1027073: ;
  return (1);
  case_1027074: ;
  return (2);
  switch_break: ;
  }
}
}
static char const *oid_to_string(u32 oid )
{
  {
  return ("?");
}
}
static int rndis_error_status(__le32 rndis_status___0 )
{
  int ret ;
  {
  ret = -22;
  {
  if (rndis_status___0 == 0U) {
    goto case_0;
  } else {
  }
  if (rndis_status___0 == 3221225473U) {
    goto case_3221225473;
  } else {
  }
  if (rndis_status___0 == 3221291029U) {
    goto case_3221291029;
  } else {
  }
  if (rndis_status___0 == 3221225659U) {
    goto case_3221225659;
  } else {
  }
  if (rndis_status___0 == 3221291025U) {
    goto case_3221291025;
  } else {
  }
  if (rndis_status___0 == 3221291026U) {
    goto case_3221291026;
  } else {
  }
  goto switch_break;
  case_0:
  ret = 0;
  goto ldv_46864;
  case_3221225473: ;
  case_3221291029:
  ret = -22;
  goto ldv_46864;
  case_3221225659:
  ret = -95;
  goto ldv_46864;
  case_3221291025: ;
  case_3221291026:
  ret = -16;
  goto ldv_46864;
  switch_break: ;
  }
  ldv_46864: ;
  return (ret);
}
}
static int rndis_query_oid(struct usbnet *dev , u32 oid , void *data , int *len )
{
  struct rndis_wlan_private *priv ;
  struct rndis_wlan_private *tmp ;
  union __anonunion_u_286 u ;
  int ret ;
  int buflen ;
  int resplen ;
  int respoffs ;
  int copylen ;
  struct _ddebug descriptor ;
  char const *tmp___0 ;
  long tmp___1 ;
  struct _ddebug descriptor___0 ;
  char const *tmp___2 ;
  long tmp___3 ;
  struct _ddebug descriptor___1 ;
  char const *tmp___4 ;
  long tmp___5 ;
  {
  {
  tmp = get_rndis_wlan_priv(dev);
  priv = tmp;
  buflen = (int )((unsigned int )*len + 28U);
  }
  if (buflen <= 1024) {
    buflen = 1025;
  } else {
  }
  if ((unsigned int )buflen > 1053U) {
    {
    u.buf = kmalloc((size_t )buflen, 208U);
    }
    if ((unsigned long )u.buf == (unsigned long )((void *)0)) {
      return (-12);
    } else {
    }
  } else {
    u.buf = (void *)(& priv->command_buffer);
  }
  {
  ldv_mutex_lock_15(& priv->command_lock);
  memset((void *)u.get, 0, 28UL);
  (u.get)->msg_type = 4U;
  (u.get)->msg_len = 28U;
  (u.get)->oid = oid;
  priv->current_command_oid = oid;
  ret = rndis_command(dev, u.header, buflen);
  priv->current_command_oid = 0U;
  }
  if (ret < 0) {
    {
    descriptor.modname = "rndis_wlan";
    descriptor.function = "rndis_query_oid";
    descriptor.filename = "drivers/net/wireless/rndis_wlan.c";
    descriptor.format = "%s(%s): rndis_command() failed, %d (%08x)\n";
    descriptor.lineno = 743U;
    descriptor.flags = 0U;
    tmp___1 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    }
    if (tmp___1 != 0L) {
      {
      tmp___0 = oid_to_string(oid);
      __dynamic_netdev_dbg(& descriptor, (struct net_device const *)dev->net, "%s(%s): rndis_command() failed, %d (%08x)\n",
                           "rndis_query_oid", tmp___0, ret, (u.get_c)->status);
      }
    } else {
    }
  } else {
  }
  if (ret == 0) {
    resplen = (int )(u.get_c)->len;
    respoffs = (int )((u.get_c)->offset + 8U);
    if (respoffs > buflen) {
      {
      descriptor___0.modname = "rndis_wlan";
      descriptor___0.function = "rndis_query_oid";
      descriptor___0.filename = "drivers/net/wireless/rndis_wlan.c";
      descriptor___0.format = "%s(%s): received invalid data offset: %d > %d\n";
      descriptor___0.lineno = 753U;
      descriptor___0.flags = 0U;
      tmp___3 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
      }
      if (tmp___3 != 0L) {
        {
        tmp___2 = oid_to_string(oid);
        __dynamic_netdev_dbg(& descriptor___0, (struct net_device const *)dev->net,
                             "%s(%s): received invalid data offset: %d > %d\n", "rndis_query_oid",
                             tmp___2, respoffs, buflen);
        }
      } else {
      }
      ret = -22;
      goto exit_unlock;
    } else {
    }
    if (resplen + respoffs > buflen) {
      copylen = buflen - respoffs;
    } else {
      copylen = resplen;
    }
    if (copylen > *len) {
      copylen = *len;
    } else {
    }
    {
    memcpy(data, (void const *)u.buf + (unsigned long )respoffs, (size_t )copylen);
    *len = resplen;
    ret = rndis_error_status((u.get_c)->status);
    }
    if (ret < 0) {
      {
      descriptor___1.modname = "rndis_wlan";
      descriptor___1.function = "rndis_query_oid";
      descriptor___1.filename = "drivers/net/wireless/rndis_wlan.c";
      descriptor___1.format = "%s(%s): device returned error,  0x%08x (%d)\n";
      descriptor___1.lineno = 779U;
      descriptor___1.flags = 0U;
      tmp___5 = ldv__builtin_expect((long )descriptor___1.flags & 1L, 0L);
      }
      if (tmp___5 != 0L) {
        {
        tmp___4 = oid_to_string(oid);
        __dynamic_netdev_dbg(& descriptor___1, (struct net_device const *)dev->net,
                             "%s(%s): device returned error,  0x%08x (%d)\n", "rndis_query_oid",
                             tmp___4, (u.get_c)->status, ret);
        }
      } else {
      }
    } else {
    }
  } else {
  }
  exit_unlock:
  {
  ldv_mutex_unlock_16(& priv->command_lock);
  }
  if ((unsigned long )u.buf != (unsigned long )((void *)(& priv->command_buffer))) {
    {
    kfree((void const *)u.buf);
    }
  } else {
  }
  return (ret);
}
}
static int rndis_set_oid(struct usbnet *dev , u32 oid , void const *data , int len )
{
  struct rndis_wlan_private *priv ;
  struct rndis_wlan_private *tmp ;
  union __anonunion_u_288 u ;
  int ret ;
  int buflen ;
  struct _ddebug descriptor ;
  char const *tmp___0 ;
  long tmp___1 ;
  struct _ddebug descriptor___0 ;
  char const *tmp___2 ;
  long tmp___3 ;
  {
  {
  tmp = get_rndis_wlan_priv(dev);
  priv = tmp;
  buflen = (int )((unsigned int )len + 28U);
  }
  if (buflen <= 1024) {
    buflen = 1025;
  } else {
  }
  if ((unsigned int )buflen > 1053U) {
    {
    u.buf = kmalloc((size_t )buflen, 208U);
    }
    if ((unsigned long )u.buf == (unsigned long )((void *)0)) {
      return (-12);
    } else {
    }
  } else {
    u.buf = (void *)(& priv->command_buffer);
  }
  {
  ldv_mutex_lock_17(& priv->command_lock);
  memset((void *)u.set, 0, 28UL);
  (u.set)->msg_type = 5U;
  (u.set)->msg_len = (unsigned int )len + 28U;
  (u.set)->oid = oid;
  (u.set)->len = (unsigned int )len;
  (u.set)->offset = 20U;
  (u.set)->handle = 0U;
  memcpy(u.buf + 28UL, data, (size_t )len);
  priv->current_command_oid = oid;
  ret = rndis_command(dev, u.header, buflen);
  priv->current_command_oid = 0U;
  }
  if (ret < 0) {
    {
    descriptor.modname = "rndis_wlan";
    descriptor.function = "rndis_set_oid";
    descriptor.filename = "drivers/net/wireless/rndis_wlan.c";
    descriptor.format = "%s(%s): rndis_command() failed, %d (%08x)\n";
    descriptor.lineno = 831U;
    descriptor.flags = 0U;
    tmp___1 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    }
    if (tmp___1 != 0L) {
      {
      tmp___0 = oid_to_string(oid);
      __dynamic_netdev_dbg(& descriptor, (struct net_device const *)dev->net, "%s(%s): rndis_command() failed, %d (%08x)\n",
                           "rndis_set_oid", tmp___0, ret, (u.set_c)->status);
      }
    } else {
    }
  } else {
  }
  if (ret == 0) {
    {
    ret = rndis_error_status((u.set_c)->status);
    }
    if (ret < 0) {
      {
      descriptor___0.modname = "rndis_wlan";
      descriptor___0.function = "rndis_set_oid";
      descriptor___0.filename = "drivers/net/wireless/rndis_wlan.c";
      descriptor___0.format = "%s(%s): device returned error, 0x%08x (%d)\n";
      descriptor___0.lineno = 839U;
      descriptor___0.flags = 0U;
      tmp___3 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
      }
      if (tmp___3 != 0L) {
        {
        tmp___2 = oid_to_string(oid);
        __dynamic_netdev_dbg(& descriptor___0, (struct net_device const *)dev->net,
                             "%s(%s): device returned error, 0x%08x (%d)\n", "rndis_set_oid",
                             tmp___2, (u.set_c)->status, ret);
        }
      } else {
      }
    } else {
    }
  } else {
  }
  {
  ldv_mutex_unlock_18(& priv->command_lock);
  }
  if ((unsigned long )u.buf != (unsigned long )((void *)(& priv->command_buffer))) {
    {
    kfree((void const *)u.buf);
    }
  } else {
  }
  return (ret);
}
}
static int rndis_reset(struct usbnet *usbdev )
{
  struct rndis_wlan_private *priv ;
  struct rndis_wlan_private *tmp ;
  struct rndis_reset *reset ;
  int ret ;
  {
  {
  tmp = get_rndis_wlan_priv(usbdev);
  priv = tmp;
  ldv_mutex_lock_19(& priv->command_lock);
  reset = (struct rndis_reset *)(& priv->command_buffer);
  memset((void *)reset, 0, 12UL);
  reset->msg_type = 6U;
  reset->msg_len = 12U;
  priv->current_command_oid = 0U;
  ret = rndis_command(usbdev, (struct rndis_msg_hdr *)reset, 1025);
  ldv_mutex_unlock_20(& priv->command_lock);
  }
  if (ret < 0) {
    return (ret);
  } else {
  }
  return (0);
}
}
static int rndis_set_config_parameter(struct usbnet *dev , char *param , int value_type ,
                                      void *value )
{
  struct ndis_config_param *infobuf ;
  int value_len ;
  int info_len ;
  int param_len ;
  int ret ;
  int i ;
  __le16 *unibuf ;
  __le32 *dst_value ;
  size_t tmp ;
  size_t tmp___0 ;
  void *tmp___1 ;
  struct _ddebug descriptor ;
  long tmp___2 ;
  struct _ddebug descriptor___0 ;
  long tmp___3 ;
  struct _ddebug descriptor___1 ;
  long tmp___4 ;
  {
  if (value_type == 0) {
    value_len = 4;
  } else
  if (value_type == 2) {
    {
    tmp = strlen((char const *)value);
    value_len = (int )((unsigned int )tmp * 2U);
    }
  } else {
    return (-22);
  }
  {
  tmp___0 = strlen((char const *)param);
  param_len = (int )((unsigned int )tmp___0 * 2U);
  info_len = (int )(((unsigned int )param_len + (unsigned int )value_len) + 20U);
  tmp___1 = kmalloc((size_t )info_len, 208U);
  infobuf = (struct ndis_config_param *)tmp___1;
  }
  if ((unsigned long )infobuf == (unsigned long )((struct ndis_config_param *)0)) {
    return (-12);
  } else {
  }
  if (value_type == 2) {
    {
    descriptor.modname = "rndis_wlan";
    descriptor.function = "rndis_set_config_parameter";
    descriptor.filename = "drivers/net/wireless/rndis_wlan.c";
    descriptor.format = "setting config parameter: %s, value: %s\n";
    descriptor.lineno = 909U;
    descriptor.flags = 0U;
    tmp___2 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    }
    if (tmp___2 != 0L) {
      {
      __dynamic_netdev_dbg(& descriptor, (struct net_device const *)dev->net, "setting config parameter: %s, value: %s\n",
                           param, (u8 *)value);
      }
    } else {
    }
  } else {
    {
    descriptor___0.modname = "rndis_wlan";
    descriptor___0.function = "rndis_set_config_parameter";
    descriptor___0.filename = "drivers/net/wireless/rndis_wlan.c";
    descriptor___0.format = "setting config parameter: %s, value: %d\n";
    descriptor___0.lineno = 912U;
    descriptor___0.flags = 0U;
    tmp___3 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
    }
    if (tmp___3 != 0L) {
      {
      __dynamic_netdev_dbg(& descriptor___0, (struct net_device const *)dev->net,
                           "setting config parameter: %s, value: %d\n", param, *((u32 *)value));
      }
    } else {
    }
  }
  infobuf->name_offs = 20U;
  infobuf->name_length = (unsigned int )param_len;
  infobuf->type = (unsigned int )value_type;
  infobuf->value_offs = (unsigned int )param_len + 20U;
  infobuf->value_length = (unsigned int )value_len;
  unibuf = (__le16 *)infobuf + 20U;
  i = 0;
  goto ldv_46935;
  ldv_46934:
  *(unibuf + (unsigned long )i) = (unsigned short )*(param + (unsigned long )i);
  i = i + 1;
  ldv_46935: ;
  if ((unsigned long )i < (unsigned long )param_len / 2UL) {
    goto ldv_46934;
  } else {
  }
  if (value_type == 2) {
    unibuf = (__le16 *)infobuf + ((unsigned long )param_len + 20UL);
    i = 0;
    goto ldv_46938;
    ldv_46937:
    *(unibuf + (unsigned long )i) = (unsigned short )*((u8 *)value + (unsigned long )i);
    i = i + 1;
    ldv_46938: ;
    if ((unsigned long )i < (unsigned long )value_len / 2UL) {
      goto ldv_46937;
    } else {
    }
  } else {
    dst_value = (__le32 *)infobuf + ((unsigned long )param_len + 20UL);
    *dst_value = *((u32 *)value);
  }
  {
  ret = rndis_set_oid(dev, 66075U, (void const *)infobuf, info_len);
  }
  if (ret != 0) {
    {
    descriptor___1.modname = "rndis_wlan";
    descriptor___1.function = "rndis_set_config_parameter";
    descriptor___1.filename = "drivers/net/wireless/rndis_wlan.c";
    descriptor___1.format = "setting rndis config parameter failed, %d\n";
    descriptor___1.lineno = 949U;
    descriptor___1.flags = 0U;
    tmp___4 = ldv__builtin_expect((long )descriptor___1.flags & 1L, 0L);
    }
    if (tmp___4 != 0L) {
      {
      __dynamic_netdev_dbg(& descriptor___1, (struct net_device const *)dev->net,
                           "setting rndis config parameter failed, %d\n", ret);
      }
    } else {
    }
  } else {
  }
  {
  kfree((void const *)infobuf);
  }
  return (ret);
}
}
static int rndis_set_config_parameter_str(struct usbnet *dev , char *param , char *value )
{
  int tmp ;
  {
  {
  tmp = rndis_set_config_parameter(dev, param, 2, (void *)value);
  }
  return (tmp);
}
}
static int level_to_qual(int level )
{
  int qual ;
  {
  qual = (level * 100 + 9600) / 64;
  return (qual >= 0 ? (100 < qual ? 100 : qual) : 0);
}
}
static int set_infra_mode(struct usbnet *usbdev , int mode ) ;
static void restore_keys(struct usbnet *usbdev ) ;
static int rndis_check_bssid_list(struct usbnet *usbdev , u8 *match_bssid , bool *matched ) ;
static int rndis_start_bssid_list_scan(struct usbnet *usbdev )
{
  __le32 tmp ;
  int tmp___0 ;
  {
  {
  tmp = 1U;
  tmp___0 = rndis_set_oid(usbdev, 218169626U, (void const *)(& tmp), 4);
  }
  return (tmp___0);
}
}
static int set_essid(struct usbnet *usbdev , struct ndis_80211_ssid *ssid )
{
  struct rndis_wlan_private *priv ;
  struct rndis_wlan_private *tmp ;
  int ret ;
  struct _ddebug descriptor ;
  long tmp___0 ;
  {
  {
  tmp = get_rndis_wlan_priv(usbdev);
  priv = tmp;
  ret = rndis_set_oid(usbdev, 218169602U, (void const *)ssid, 36);
  }
  if (ret < 0) {
    {
    netdev_warn((struct net_device const *)usbdev->net, "setting SSID failed (%08X)\n",
                ret);
    }
    return (ret);
  } else {
  }
  if (ret == 0) {
    {
    priv->radio_on = 1;
    descriptor.modname = "rndis_wlan";
    descriptor.function = "set_essid";
    descriptor.filename = "drivers/net/wireless/rndis_wlan.c";
    descriptor.format = "%s(): radio_on = true\n";
    descriptor.lineno = 1001U;
    descriptor.flags = 0U;
    tmp___0 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    }
    if (tmp___0 != 0L) {
      {
      __dynamic_netdev_dbg(& descriptor, (struct net_device const *)usbdev->net,
                           "%s(): radio_on = true\n", "set_essid");
      }
    } else {
    }
  } else {
  }
  return (ret);
}
}
static int set_bssid(struct usbnet *usbdev , u8 const *bssid )
{
  int ret ;
  {
  {
  ret = rndis_set_oid(usbdev, 218169601U, (void const *)bssid, 6);
  }
  if (ret < 0) {
    {
    netdev_warn((struct net_device const *)usbdev->net, "setting BSSID[%pM] failed (%08X)\n",
                bssid, ret);
    }
    return (ret);
  } else {
  }
  return (ret);
}
}
static int clear_bssid(struct usbnet *usbdev )
{
  u8 broadcast_mac[6U] ;
  int tmp ;
  {
  {
  broadcast_mac[0] = 255U;
  broadcast_mac[1] = 255U;
  broadcast_mac[2] = 255U;
  broadcast_mac[3] = 255U;
  broadcast_mac[4] = 255U;
  broadcast_mac[5] = 255U;
  tmp = set_bssid(usbdev, (u8 const *)(& broadcast_mac));
  }
  return (tmp);
}
}
static int get_bssid(struct usbnet *usbdev , u8 *bssid )
{
  int ret ;
  int len ;
  {
  {
  len = 6;
  ret = rndis_query_oid(usbdev, 218169601U, (void *)bssid, & len);
  }
  if (ret != 0) {
    {
    memset((void *)bssid, 0, 6UL);
    }
  } else {
  }
  return (ret);
}
}
static int get_association_info(struct usbnet *usbdev , struct ndis_80211_assoc_info *info ,
                                int len )
{
  int tmp ;
  {
  {
  tmp = rndis_query_oid(usbdev, 218169631U, (void *)info, & len);
  }
  return (tmp);
}
}
static bool is_associated(struct usbnet *usbdev )
{
  struct rndis_wlan_private *priv ;
  struct rndis_wlan_private *tmp ;
  u8 bssid[6U] ;
  int ret ;
  bool tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  {
  {
  tmp = get_rndis_wlan_priv(usbdev);
  priv = tmp;
  }
  if (! priv->radio_on) {
    return (0);
  } else {
  }
  {
  ret = get_bssid(usbdev, (u8 *)(& bssid));
  }
  if (ret == 0) {
    {
    tmp___0 = is_zero_ether_addr((u8 const *)(& bssid));
    }
    if (tmp___0) {
      tmp___1 = 0;
    } else {
      tmp___1 = 1;
    }
    if (tmp___1) {
      tmp___2 = 1;
    } else {
      tmp___2 = 0;
    }
  } else {
    tmp___2 = 0;
  }
  return ((bool )tmp___2);
}
}
static int disassociate(struct usbnet *usbdev , bool reset_ssid )
{
  struct rndis_wlan_private *priv ;
  struct rndis_wlan_private *tmp ;
  struct ndis_80211_ssid ssid ;
  int i ;
  int ret ;
  struct _ddebug descriptor ;
  long tmp___0 ;
  {
  {
  tmp = get_rndis_wlan_priv(usbdev);
  priv = tmp;
  ret = 0;
  }
  if ((int )priv->radio_on) {
    {
    ret = rndis_set_oid(usbdev, 218169621U, (void const *)0, 0);
    }
    if (ret == 0) {
      {
      priv->radio_on = 0;
      descriptor.modname = "rndis_wlan";
      descriptor.function = "disassociate";
      descriptor.filename = "drivers/net/wireless/rndis_wlan.c";
      descriptor.format = "%s(): radio_on = false\n";
      descriptor.lineno = 1080U;
      descriptor.flags = 0U;
      tmp___0 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
      }
      if (tmp___0 != 0L) {
        {
        __dynamic_netdev_dbg(& descriptor, (struct net_device const *)usbdev->net,
                             "%s(): radio_on = false\n", "disassociate");
        }
      } else {
      }
      if ((int )reset_ssid) {
        {
        msleep(100U);
        }
      } else {
      }
    } else {
    }
  } else {
  }
  if ((int )reset_ssid) {
    {
    set_infra_mode(usbdev, 1);
    ssid.length = 32U;
    get_random_bytes((void *)(& ssid.essid) + 2U, 30);
    ssid.essid[0] = 1U;
    ssid.essid[1] = 255U;
    i = 2;
    }
    goto ldv_47008;
    ldv_47007:
    ssid.essid[i] = (unsigned int )((u8 )(((int )ssid.essid[i] * 254) / 255)) + 1U;
    i = i + 1;
    ldv_47008: ;
    if ((unsigned int )i <= 31U) {
      goto ldv_47007;
    } else {
    }
    {
    ret = set_essid(usbdev, & ssid);
    }
  } else {
  }
  return (ret);
}
}
static int set_auth_mode(struct usbnet *usbdev , u32 wpa_version , enum nl80211_auth_type auth_type ,
                         int keymgmt )
{
  struct rndis_wlan_private *priv ;
  struct rndis_wlan_private *tmp ;
  __le32 tmp___0 ;
  int auth_mode ;
  int ret ;
  struct _ddebug descriptor ;
  long tmp___1 ;
  {
  {
  tmp = get_rndis_wlan_priv(usbdev);
  priv = tmp;
  descriptor.modname = "rndis_wlan";
  descriptor.function = "set_auth_mode";
  descriptor.filename = "drivers/net/wireless/rndis_wlan.c";
  descriptor.format = "%s(): wpa_version=0x%x authalg=0x%x keymgmt=0x%x\n";
  descriptor.lineno = 1114U;
  descriptor.flags = 0U;
  tmp___1 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  }
  if (tmp___1 != 0L) {
    {
    __dynamic_netdev_dbg(& descriptor, (struct net_device const *)usbdev->net, "%s(): wpa_version=0x%x authalg=0x%x keymgmt=0x%x\n",
                         "set_auth_mode", wpa_version, (unsigned int )auth_type, keymgmt);
    }
  } else {
  }
  if ((wpa_version & 2U) != 0U) {
    if (keymgmt & 1) {
      auth_mode = 6;
    } else {
      auth_mode = 7;
    }
  } else
  if ((int )wpa_version & 1) {
    if (keymgmt & 1) {
      auth_mode = 3;
    } else
    if ((keymgmt & 2) != 0) {
      auth_mode = 4;
    } else {
      auth_mode = 5;
    }
  } else
  if ((unsigned int )auth_type == 1U) {
    auth_mode = 1;
  } else
  if ((unsigned int )auth_type == 0U) {
    auth_mode = 0;
  } else
  if ((unsigned int )auth_type == 5U) {
    auth_mode = 2;
  } else {
    return (-524);
  }
  {
  tmp___0 = (unsigned int )auth_mode;
  ret = rndis_set_oid(usbdev, 218169624U, (void const *)(& tmp___0), 4);
  }
  if (ret != 0) {
    {
    netdev_warn((struct net_device const *)usbdev->net, "setting auth mode failed (%08X)\n",
                ret);
    }
    return (ret);
  } else {
  }
  priv->wpa_version = (int )wpa_version;
  return (0);
}
}
static int set_priv_filter(struct usbnet *usbdev )
{
  struct rndis_wlan_private *priv ;
  struct rndis_wlan_private *tmp ;
  __le32 tmp___0 ;
  struct _ddebug descriptor ;
  long tmp___1 ;
  int tmp___2 ;
  {
  {
  tmp = get_rndis_wlan_priv(usbdev);
  priv = tmp;
  descriptor.modname = "rndis_wlan";
  descriptor.function = "set_priv_filter";
  descriptor.filename = "drivers/net/wireless/rndis_wlan.c";
  descriptor.format = "%s(): wpa_version=0x%x\n";
  descriptor.lineno = 1158U;
  descriptor.flags = 0U;
  tmp___1 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  }
  if (tmp___1 != 0L) {
    {
    __dynamic_netdev_dbg(& descriptor, (struct net_device const *)usbdev->net, "%s(): wpa_version=0x%x\n",
                         "set_priv_filter", priv->wpa_version);
    }
  } else {
  }
  if (((unsigned int )*((int *)priv + 742UL) & 3U) != 0U) {
    tmp___0 = 1U;
  } else {
    tmp___0 = 0U;
  }
  {
  tmp___2 = rndis_set_oid(usbdev, 218169625U, (void const *)(& tmp___0), 4);
  }
  return (tmp___2);
}
}
static int set_encr_mode(struct usbnet *usbdev , int pairwise , int groupwise )
{
  __le32 tmp ;
  int encr_mode ;
  int ret ;
  struct _ddebug descriptor ;
  long tmp___0 ;
  {
  {
  descriptor.modname = "rndis_wlan";
  descriptor.function = "set_encr_mode";
  descriptor.filename = "drivers/net/wireless/rndis_wlan.c";
  descriptor.format = "%s(): cipher_pair=0x%x cipher_group=0x%x\n";
  descriptor.lineno = 1177U;
  descriptor.flags = 0U;
  tmp___0 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  }
  if (tmp___0 != 0L) {
    {
    __dynamic_netdev_dbg(& descriptor, (struct net_device const *)usbdev->net, "%s(): cipher_pair=0x%x cipher_group=0x%x\n",
                         "set_encr_mode", pairwise, groupwise);
    }
  } else {
  }
  if ((pairwise & 4) != 0) {
    encr_mode = 6;
  } else
  if ((pairwise & 2) != 0) {
    encr_mode = 4;
  } else
  if (pairwise & 1) {
    encr_mode = 0;
  } else
  if ((groupwise & 4) != 0) {
    encr_mode = 6;
  } else
  if ((groupwise & 2) != 0) {
    encr_mode = 4;
  } else {
    encr_mode = 1;
  }
  {
  tmp = (unsigned int )encr_mode;
  ret = rndis_set_oid(usbdev, 218169627U, (void const *)(& tmp), 4);
  }
  if (ret != 0) {
    {
    netdev_warn((struct net_device const *)usbdev->net, "setting encr mode failed (%08X)\n",
                ret);
    }
    return (ret);
  } else {
  }
  return (0);
}
}
static int set_infra_mode(struct usbnet *usbdev , int mode )
{
  struct rndis_wlan_private *priv ;
  struct rndis_wlan_private *tmp ;
  __le32 tmp___0 ;
  int ret ;
  struct _ddebug descriptor ;
  long tmp___1 ;
  {
  {
  tmp = get_rndis_wlan_priv(usbdev);
  priv = tmp;
  descriptor.modname = "rndis_wlan";
  descriptor.function = "set_infra_mode";
  descriptor.filename = "drivers/net/wireless/rndis_wlan.c";
  descriptor.format = "%s(): infra_mode=0x%x\n";
  descriptor.lineno = 1212U;
  descriptor.flags = 0U;
  tmp___1 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  }
  if (tmp___1 != 0L) {
    {
    __dynamic_netdev_dbg(& descriptor, (struct net_device const *)usbdev->net, "%s(): infra_mode=0x%x\n",
                         "set_infra_mode", priv->infra_mode);
    }
  } else {
  }
  {
  tmp___0 = (unsigned int )mode;
  ret = rndis_set_oid(usbdev, 218169608U, (void const *)(& tmp___0), 4);
  }
  if (ret != 0) {
    {
    netdev_warn((struct net_device const *)usbdev->net, "setting infra mode failed (%08X)\n",
                ret);
    }
    return (ret);
  } else {
  }
  {
  restore_keys(usbdev);
  priv->infra_mode = mode;
  }
  return (0);
}
}
static int set_rts_threshold(struct usbnet *usbdev , u32 rts_threshold )
{
  __le32 tmp ;
  struct _ddebug descriptor ;
  long tmp___0 ;
  int tmp___1 ;
  {
  {
  descriptor.modname = "rndis_wlan";
  descriptor.function = "set_rts_threshold";
  descriptor.filename = "drivers/net/wireless/rndis_wlan.c";
  descriptor.format = "%s(): %i\n";
  descriptor.lineno = 1237U;
  descriptor.flags = 0U;
  tmp___0 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  }
  if (tmp___0 != 0L) {
    {
    __dynamic_netdev_dbg(& descriptor, (struct net_device const *)usbdev->net, "%s(): %i\n",
                         "set_rts_threshold", rts_threshold);
    }
  } else {
  }
  if (rts_threshold > 2347U) {
    rts_threshold = 2347U;
  } else {
  }
  {
  tmp = rts_threshold;
  tmp___1 = rndis_set_oid(usbdev, 218169866U, (void const *)(& tmp), 4);
  }
  return (tmp___1);
}
}
static int set_frag_threshold(struct usbnet *usbdev , u32 frag_threshold )
{
  __le32 tmp ;
  struct _ddebug descriptor ;
  long tmp___0 ;
  int tmp___1 ;
  {
  {
  descriptor.modname = "rndis_wlan";
  descriptor.function = "set_frag_threshold";
  descriptor.filename = "drivers/net/wireless/rndis_wlan.c";
  descriptor.format = "%s(): %i\n";
  descriptor.lineno = 1252U;
  descriptor.flags = 0U;
  tmp___0 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  }
  if (tmp___0 != 0L) {
    {
    __dynamic_netdev_dbg(& descriptor, (struct net_device const *)usbdev->net, "%s(): %i\n",
                         "set_frag_threshold", frag_threshold);
    }
  } else {
  }
  if (frag_threshold - 256U > 2090U) {
    frag_threshold = 2346U;
  } else {
  }
  {
  tmp = frag_threshold;
  tmp___1 = rndis_set_oid(usbdev, 218169865U, (void const *)(& tmp), 4);
  }
  return (tmp___1);
}
}
static void set_default_iw_params(struct usbnet *usbdev )
{
  {
  {
  set_infra_mode(usbdev, 1);
  set_auth_mode(usbdev, 0U, 0, 0);
  set_priv_filter(usbdev);
  set_encr_mode(usbdev, 0, 0);
  }
  return;
}
}
static int deauthenticate(struct usbnet *usbdev )
{
  int ret ;
  {
  {
  ret = disassociate(usbdev, 1);
  set_default_iw_params(usbdev);
  }
  return (ret);
}
}
static int set_channel(struct usbnet *usbdev , int channel )
{
  struct ndis_80211_conf config ;
  unsigned int dsconfig ;
  int len ;
  int ret ;
  struct _ddebug descriptor ;
  long tmp ;
  bool tmp___0 ;
  int tmp___1 ;
  struct _ddebug descriptor___0 ;
  long tmp___2 ;
  struct _ddebug descriptor___1 ;
  long tmp___3 ;
  {
  {
  descriptor.modname = "rndis_wlan";
  descriptor.function = "set_channel";
  descriptor.filename = "drivers/net/wireless/rndis_wlan.c";
  descriptor.format = "%s(%d)\n";
  descriptor.lineno = 1287U;
  descriptor.flags = 0U;
  tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  }
  if (tmp != 0L) {
    {
    __dynamic_netdev_dbg(& descriptor, (struct net_device const *)usbdev->net, "%s(%d)\n",
                         "set_channel", channel);
    }
  } else {
  }
  {
  tmp___0 = is_associated(usbdev);
  }
  if ((int )tmp___0) {
    return (0);
  } else {
  }
  {
  tmp___1 = ieee80211_dsss_chan_to_freq(channel);
  dsconfig = (unsigned int )(tmp___1 * 1000);
  len = 32;
  ret = rndis_query_oid(usbdev, 218169873U, (void *)(& config), & len);
  }
  if (ret < 0) {
    {
    descriptor___0.modname = "rndis_wlan";
    descriptor___0.function = "set_channel";
    descriptor___0.filename = "drivers/net/wireless/rndis_wlan.c";
    descriptor___0.format = "%s(): querying configuration failed\n";
    descriptor___0.lineno = 1301U;
    descriptor___0.flags = 0U;
    tmp___2 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
    }
    if (tmp___2 != 0L) {
      {
      __dynamic_netdev_dbg(& descriptor___0, (struct net_device const *)usbdev->net,
                           "%s(): querying configuration failed\n", "set_channel");
      }
    } else {
    }
    return (ret);
  } else {
  }
  {
  config.ds_config = dsconfig;
  ret = rndis_set_oid(usbdev, 218169873U, (void const *)(& config), 32);
  descriptor___1.modname = "rndis_wlan";
  descriptor___1.function = "set_channel";
  descriptor___1.filename = "drivers/net/wireless/rndis_wlan.c";
  descriptor___1.format = "%s(): %d -> %d\n";
  descriptor___1.lineno = 1310U;
  descriptor___1.flags = 0U;
  tmp___3 = ldv__builtin_expect((long )descriptor___1.flags & 1L, 0L);
  }
  if (tmp___3 != 0L) {
    {
    __dynamic_netdev_dbg(& descriptor___1, (struct net_device const *)usbdev->net,
                         "%s(): %d -> %d\n", "set_channel", channel, ret);
    }
  } else {
  }
  return (ret);
}
}
static struct ieee80211_channel *get_current_channel(struct usbnet *usbdev , u32 *beacon_period )
{
  struct rndis_wlan_private *priv ;
  struct rndis_wlan_private *tmp ;
  struct ieee80211_channel *channel ;
  struct ndis_80211_conf config ;
  int len ;
  int ret ;
  struct _ddebug descriptor ;
  long tmp___0 ;
  {
  {
  tmp = get_rndis_wlan_priv(usbdev);
  priv = tmp;
  len = 32;
  ret = rndis_query_oid(usbdev, 218169873U, (void *)(& config), & len);
  descriptor.modname = "rndis_wlan";
  descriptor.function = "get_current_channel";
  descriptor.filename = "drivers/net/wireless/rndis_wlan.c";
  descriptor.format = "%s(): RNDIS_OID_802_11_CONFIGURATION -> %d\n";
  descriptor.lineno = 1329U;
  descriptor.flags = 0U;
  tmp___0 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  }
  if (tmp___0 != 0L) {
    {
    __dynamic_netdev_dbg(& descriptor, (struct net_device const *)usbdev->net, "%s(): RNDIS_OID_802_11_CONFIGURATION -> %d\n",
                         "get_current_channel", ret);
    }
  } else {
  }
  if (ret < 0) {
    return ((struct ieee80211_channel *)0);
  } else {
  }
  {
  channel = ieee80211_get_channel(priv->wdev.wiphy, (int )(config.ds_config / 1000U));
  }
  if ((unsigned long )channel == (unsigned long )((struct ieee80211_channel *)0)) {
    return ((struct ieee80211_channel *)0);
  } else {
  }
  if ((unsigned long )beacon_period != (unsigned long )((u32 *)0U)) {
    *beacon_period = config.beacon_period;
  } else {
  }
  return (channel);
}
}
static int add_wep_key(struct usbnet *usbdev , u8 const *key , int key_len , u8 index )
{
  struct rndis_wlan_private *priv ;
  struct rndis_wlan_private *tmp ;
  struct ndis_80211_wep_key ndis_key ;
  u32 cipher ;
  int ret ;
  struct _ddebug descriptor ;
  long tmp___0 ;
  {
  {
  tmp = get_rndis_wlan_priv(usbdev);
  priv = tmp;
  descriptor.modname = "rndis_wlan";
  descriptor.function = "add_wep_key";
  descriptor.filename = "drivers/net/wireless/rndis_wlan.c";
  descriptor.format = "%s(idx: %d, len: %d)\n";
  descriptor.lineno = 1353U;
  descriptor.flags = 0U;
  tmp___0 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  }
  if (tmp___0 != 0L) {
    {
    __dynamic_netdev_dbg(& descriptor, (struct net_device const *)usbdev->net, "%s(idx: %d, len: %d)\n",
                         "add_wep_key", (int )index, key_len);
    }
  } else {
  }
  if ((unsigned int )index > 3U) {
    return (-22);
  } else {
  }
  if (key_len == 5) {
    cipher = 1027073U;
  } else
  if (key_len == 13) {
    cipher = 1027077U;
  } else {
    return (-22);
  }
  {
  memset((void *)(& ndis_key), 0, 44UL);
  ndis_key.size = 44U;
  ndis_key.length = (unsigned int )key_len;
  ndis_key.index = (unsigned int )index;
  memcpy((void *)(& ndis_key.material), (void const *)key, (size_t )key_len);
  }
  if ((int )index == (int )priv->encr_tx_key_index) {
    {
    ndis_key.index = ndis_key.index | 2147483648U;
    ret = set_encr_mode(usbdev, 1, 0);
    }
    if (ret != 0) {
      {
      netdev_warn((struct net_device const *)usbdev->net, "encryption couldn\'t be enabled (%08X)\n",
                  ret);
      }
    } else {
    }
  } else {
  }
  {
  ret = rndis_set_oid(usbdev, 218169619U, (void const *)(& ndis_key), 44);
  }
  if (ret != 0) {
    {
    netdev_warn((struct net_device const *)usbdev->net, "adding encryption key %d failed (%08X)\n",
                (int )index + 1, ret);
    }
    return (ret);
  } else {
  }
  {
  priv->encr_keys[(int )index].len = key_len;
  priv->encr_keys[(int )index].cipher = cipher;
  memcpy((void *)(& priv->encr_keys[(int )index].material), (void const *)key, (size_t )key_len);
  memset((void *)(& priv->encr_keys[(int )index].bssid), 255, 6UL);
  }
  return (0);
}
}
static int add_wpa_key(struct usbnet *usbdev , u8 const *key , int key_len , u8 index ,
                       u8 const *addr , u8 const *rx_seq , int seq_len , u32 cipher ,
                       __le32 flags )
{
  struct rndis_wlan_private *priv ;
  struct rndis_wlan_private *tmp ;
  struct ndis_80211_key ndis_key ;
  bool is_addr_ok ;
  int ret ;
  struct _ddebug descriptor ;
  long tmp___0 ;
  struct _ddebug descriptor___0 ;
  long tmp___1 ;
  struct _ddebug descriptor___1 ;
  long tmp___2 ;
  struct _ddebug descriptor___2 ;
  long tmp___3 ;
  bool tmp___4 ;
  int tmp___5 ;
  bool tmp___6 ;
  int tmp___7 ;
  int tmp___8 ;
  struct _ddebug descriptor___3 ;
  long tmp___9 ;
  struct _ddebug descriptor___4 ;
  long tmp___10 ;
  struct _ddebug descriptor___5 ;
  long tmp___11 ;
  {
  {
  tmp = get_rndis_wlan_priv(usbdev);
  priv = tmp;
  }
  if ((unsigned int )index > 3U) {
    {
    descriptor.modname = "rndis_wlan";
    descriptor.function = "add_wpa_key";
    descriptor.filename = "drivers/net/wireless/rndis_wlan.c";
    descriptor.format = "%s(): index out of range (%i)\n";
    descriptor.lineno = 1409U;
    descriptor.flags = 0U;
    tmp___0 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    }
    if (tmp___0 != 0L) {
      {
      __dynamic_netdev_dbg(& descriptor, (struct net_device const *)usbdev->net,
                           "%s(): index out of range (%i)\n", "add_wpa_key", (int )index);
      }
    } else {
    }
    return (-22);
  } else {
  }
  if ((unsigned int )key_len > 32U) {
    {
    descriptor___0.modname = "rndis_wlan";
    descriptor___0.function = "add_wpa_key";
    descriptor___0.filename = "drivers/net/wireless/rndis_wlan.c";
    descriptor___0.format = "%s(): key length out of range (%i)\n";
    descriptor___0.lineno = 1414U;
    descriptor___0.flags = 0U;
    tmp___1 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
    }
    if (tmp___1 != 0L) {
      {
      __dynamic_netdev_dbg(& descriptor___0, (struct net_device const *)usbdev->net,
                           "%s(): key length out of range (%i)\n", "add_wpa_key",
                           key_len);
      }
    } else {
    }
    return (-22);
  } else {
  }
  if ((flags & 536870912U) != 0U) {
    if ((unsigned long )rx_seq == (unsigned long )((u8 const *)0U) || seq_len <= 0) {
      {
      descriptor___1.modname = "rndis_wlan";
      descriptor___1.function = "add_wpa_key";
      descriptor___1.filename = "drivers/net/wireless/rndis_wlan.c";
      descriptor___1.format = "%s(): recv seq flag without buffer\n";
      descriptor___1.lineno = 1420U;
      descriptor___1.flags = 0U;
      tmp___2 = ldv__builtin_expect((long )descriptor___1.flags & 1L, 0L);
      }
      if (tmp___2 != 0L) {
        {
        __dynamic_netdev_dbg(& descriptor___1, (struct net_device const *)usbdev->net,
                             "%s(): recv seq flag without buffer\n", "add_wpa_key");
        }
      } else {
      }
      return (-22);
    } else {
    }
    if ((unsigned long )rx_seq != (unsigned long )((u8 const *)0U) && (unsigned int )seq_len > 8U) {
      {
      descriptor___2.modname = "rndis_wlan";
      descriptor___2.function = "add_wpa_key";
      descriptor___2.filename = "drivers/net/wireless/rndis_wlan.c";
      descriptor___2.format = "%s(): too big recv seq buffer\n";
      descriptor___2.lineno = 1424U;
      descriptor___2.flags = 0U;
      tmp___3 = ldv__builtin_expect((long )descriptor___2.flags & 1L, 0L);
      }
      if (tmp___3 != 0L) {
        {
        __dynamic_netdev_dbg(& descriptor___2, (struct net_device const *)usbdev->net,
                             "%s(): too big recv seq buffer\n", "add_wpa_key");
        }
      } else {
      }
      return (-22);
    } else {
    }
  } else {
  }
  if ((unsigned long )addr != (unsigned long )((u8 const *)0U)) {
    {
    tmp___4 = is_zero_ether_addr(addr);
    }
    if (tmp___4) {
      tmp___5 = 0;
    } else {
      tmp___5 = 1;
    }
    if (tmp___5) {
      {
      tmp___6 = is_broadcast_ether_addr(addr);
      }
      if (tmp___6) {
        tmp___7 = 0;
      } else {
        tmp___7 = 1;
      }
      if (tmp___7) {
        tmp___8 = 1;
      } else {
        tmp___8 = 0;
      }
    } else {
      tmp___8 = 0;
    }
  } else {
    tmp___8 = 0;
  }
  is_addr_ok = (bool )tmp___8;
  if ((flags & 1073741824U) != 0U && ! is_addr_ok) {
    {
    descriptor___3.modname = "rndis_wlan";
    descriptor___3.function = "add_wpa_key";
    descriptor___3.filename = "drivers/net/wireless/rndis_wlan.c";
    descriptor___3.format = "%s(): pairwise but bssid invalid (%pM)\n";
    descriptor___3.lineno = 1433U;
    descriptor___3.flags = 0U;
    tmp___9 = ldv__builtin_expect((long )descriptor___3.flags & 1L, 0L);
    }
    if (tmp___9 != 0L) {
      {
      __dynamic_netdev_dbg(& descriptor___3, (struct net_device const *)usbdev->net,
                           "%s(): pairwise but bssid invalid (%pM)\n", "add_wpa_key",
                           addr);
      }
    } else {
    }
    return (-22);
  } else {
  }
  {
  descriptor___4.modname = "rndis_wlan";
  descriptor___4.function = "add_wpa_key";
  descriptor___4.filename = "drivers/net/wireless/rndis_wlan.c";
  descriptor___4.format = "%s(%i): flags:%i%i%i\n";
  descriptor___4.lineno = 1441U;
  descriptor___4.flags = 0U;
  tmp___10 = ldv__builtin_expect((long )descriptor___4.flags & 1L, 0L);
  }
  if (tmp___10 != 0L) {
    {
    __dynamic_netdev_dbg(& descriptor___4, (struct net_device const *)usbdev->net,
                         "%s(%i): flags:%i%i%i\n", "add_wpa_key", (int )index, (int )flags < 0,
                         (flags & 1073741824U) != 0U, (flags & 536870912U) != 0U);
    }
  } else {
  }
  {
  memset((void *)(& ndis_key), 0, 64UL);
  ndis_key.size = (unsigned int )key_len + 32U;
  ndis_key.length = (unsigned int )key_len;
  ndis_key.index = (unsigned int )index | flags;
  }
  if (cipher == 1027074U && key_len == 32) {
    {
    memcpy((void *)(& ndis_key.material), (void const *)key, 16UL);
    memcpy((void *)(& ndis_key.material) + 16U, (void const *)key + 24U, 8UL);
    memcpy((void *)(& ndis_key.material) + 24U, (void const *)key + 16U, 8UL);
    }
  } else {
    {
    memcpy((void *)(& ndis_key.material), (void const *)key, (size_t )key_len);
    }
  }
  if ((flags & 536870912U) != 0U) {
    {
    memcpy((void *)(& ndis_key.rsc), (void const *)rx_seq, (size_t )seq_len);
    }
  } else {
  }
  if ((flags & 1073741824U) != 0U) {
    {
    memcpy((void *)(& ndis_key.bssid), (void const *)addr, 6UL);
    }
  } else
  if (priv->infra_mode == 0) {
    {
    memset((void *)(& ndis_key.bssid), 255, 6UL);
    }
  } else {
    {
    get_bssid(usbdev, (u8 *)(& ndis_key.bssid));
    }
  }
  {
  ret = rndis_set_oid(usbdev, 218169629U, (void const *)(& ndis_key), (int )ndis_key.size);
  descriptor___5.modname = "rndis_wlan";
  descriptor___5.function = "add_wpa_key";
  descriptor___5.filename = "drivers/net/wireless/rndis_wlan.c";
  descriptor___5.format = "%s(): RNDIS_OID_802_11_ADD_KEY -> %08X\n";
  descriptor___5.lineno = 1477U;
  descriptor___5.flags = 0U;
  tmp___11 = ldv__builtin_expect((long )descriptor___5.flags & 1L, 0L);
  }
  if (tmp___11 != 0L) {
    {
    __dynamic_netdev_dbg(& descriptor___5, (struct net_device const *)usbdev->net,
                         "%s(): RNDIS_OID_802_11_ADD_KEY -> %08X\n", "add_wpa_key",
                         ret);
    }
  } else {
  }
  if (ret != 0) {
    return (ret);
  } else {
  }
  {
  memset((void *)(& priv->encr_keys) + (unsigned long )index, 0, 48UL);
  priv->encr_keys[(int )index].len = key_len;
  priv->encr_keys[(int )index].cipher = cipher;
  memcpy((void *)(& priv->encr_keys[(int )index].material), (void const *)key, (size_t )key_len);
  }
  if ((flags & 1073741824U) != 0U) {
    {
    memcpy((void *)(& priv->encr_keys[(int )index].bssid), (void const *)(& ndis_key.bssid),
           6UL);
    }
  } else {
    {
    memset((void *)(& priv->encr_keys[(int )index].bssid), 255, 6UL);
    }
  }
  if ((int )flags < 0) {
    priv->encr_tx_key_index = index;
  } else {
  }
  return (0);
}
}
static int restore_key(struct usbnet *usbdev , u8 key_idx )
{
  struct rndis_wlan_private *priv ;
  struct rndis_wlan_private *tmp ;
  struct rndis_wlan_encr_key key ;
  bool tmp___0 ;
  struct _ddebug descriptor ;
  long tmp___1 ;
  int tmp___2 ;
  {
  {
  tmp = get_rndis_wlan_priv(usbdev);
  priv = tmp;
  tmp___0 = is_wpa_key(priv, (int )key_idx);
  }
  if ((int )tmp___0) {
    return (0);
  } else {
  }
  {
  key = priv->encr_keys[(int )key_idx];
  descriptor.modname = "rndis_wlan";
  descriptor.function = "restore_key";
  descriptor.filename = "drivers/net/wireless/rndis_wlan.c";
  descriptor.format = "%s(): %i:%i\n";
  descriptor.lineno = 1506U;
  descriptor.flags = 0U;
  tmp___1 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  }
  if (tmp___1 != 0L) {
    {
    __dynamic_netdev_dbg(& descriptor, (struct net_device const *)usbdev->net, "%s(): %i:%i\n",
                         "restore_key", (int )key_idx, key.len);
    }
  } else {
  }
  if (key.len == 0) {
    return (0);
  } else {
  }
  {
  tmp___2 = add_wep_key(usbdev, (u8 const *)(& key.material), key.len, (int )key_idx);
  }
  return (tmp___2);
}
}
static void restore_keys(struct usbnet *usbdev )
{
  int i ;
  {
  i = 0;
  goto ldv_47140;
  ldv_47139:
  {
  restore_key(usbdev, (int )((u8 )i));
  i = i + 1;
  }
  ldv_47140: ;
  if (i <= 3) {
    goto ldv_47139;
  } else {
  }
  return;
}
}
static void clear_key(struct rndis_wlan_private *priv , u8 idx )
{
  {
  {
  memset((void *)(& priv->encr_keys) + (unsigned long )idx, 0, 48UL);
  }
  return;
}
}
static int remove_key(struct usbnet *usbdev , u8 index , u8 const *bssid )
{
  struct rndis_wlan_private *priv ;
  struct rndis_wlan_private *tmp ;
  struct ndis_80211_remove_key remove_key___0 ;
  __le32 keyindex ;
  bool is_wpa ;
  int ret ;
  struct _ddebug descriptor ;
  long tmp___0 ;
  bool tmp___1 ;
  int tmp___2 ;
  {
  {
  tmp = get_rndis_wlan_priv(usbdev);
  priv = tmp;
  }
  if ((unsigned int )index > 3U) {
    return (-2);
  } else {
  }
  if (priv->encr_keys[(int )index].len == 0) {
    return (0);
  } else {
  }
  {
  is_wpa = is_wpa_key(priv, (int )index);
  descriptor.modname = "rndis_wlan";
  descriptor.function = "remove_key";
  descriptor.filename = "drivers/net/wireless/rndis_wlan.c";
  descriptor.format = "%s(): %i:%s:%i\n";
  descriptor.lineno = 1546U;
  descriptor.flags = 0U;
  tmp___0 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  }
  if (tmp___0 != 0L) {
    {
    __dynamic_netdev_dbg(& descriptor, (struct net_device const *)usbdev->net, "%s(): %i:%s:%i\n",
                         "remove_key", (int )index, (int )is_wpa ? (char *)"wpa" : (char *)"wep",
                         priv->encr_keys[(int )index].len);
    }
  } else {
  }
  {
  clear_key(priv, (int )index);
  }
  if ((int )is_wpa) {
    remove_key___0.size = 16U;
    remove_key___0.index = (unsigned int )index;
    if ((unsigned long )bssid != (unsigned long )((u8 const *)0U)) {
      {
      tmp___1 = is_broadcast_ether_addr(bssid);
      }
      if (tmp___1) {
        tmp___2 = 0;
      } else {
        tmp___2 = 1;
      }
      if (tmp___2) {
        remove_key___0.index = remove_key___0.index | 1073741824U;
      } else {
      }
      {
      memcpy((void *)(& remove_key___0.bssid), (void const *)bssid, 6UL);
      }
    } else {
      {
      memset((void *)(& remove_key___0.bssid), 255, 6UL);
      }
    }
    {
    ret = rndis_set_oid(usbdev, 218169630U, (void const *)(& remove_key___0), 16);
    }
    if (ret != 0) {
      return (ret);
    } else {
    }
  } else {
    {
    keyindex = (unsigned int )index;
    ret = rndis_set_oid(usbdev, 218169620U, (void const *)(& keyindex), 4);
    }
    if (ret != 0) {
      {
      netdev_warn((struct net_device const *)usbdev->net, "removing encryption key %d failed (%08X)\n",
                  (int )index, ret);
      }
      return (ret);
    } else {
    }
  }
  if ((int )index == (int )priv->encr_tx_key_index) {
    {
    set_encr_mode(usbdev, 0, 0);
    }
  } else {
  }
  return (0);
}
}
static void set_multicast_list(struct usbnet *usbdev )
{
  struct rndis_wlan_private *priv ;
  struct rndis_wlan_private *tmp ;
  struct netdev_hw_addr *ha ;
  __le32 filter ;
  __le32 basefilter ;
  int ret ;
  char *mc_addrs ;
  int mc_count ;
  int i ;
  void *tmp___0 ;
  struct list_head const *__mptr ;
  int tmp___1 ;
  struct list_head const *__mptr___0 ;
  struct _ddebug descriptor ;
  long tmp___2 ;
  struct _ddebug descriptor___0 ;
  long tmp___3 ;
  {
  {
  tmp = get_rndis_wlan_priv(usbdev);
  priv = tmp;
  mc_addrs = (char *)0;
  filter = 9U;
  basefilter = filter;
  }
  if (((usbdev->net)->flags & 256U) != 0U) {
    filter = filter | 160U;
  } else
  if (((usbdev->net)->flags & 512U) != 0U) {
    filter = filter | 4U;
  } else {
  }
  if (filter != basefilter) {
    goto set_filter;
  } else {
  }
  {
  netif_addr_lock_bh(usbdev->net);
  mc_count = (usbdev->net)->mc.count;
  }
  if (mc_count > priv->multicast_size) {
    filter = filter | 4U;
  } else
  if (mc_count != 0) {
    {
    i = 0;
    tmp___0 = kmalloc_array((size_t )mc_count, 6UL, 32U);
    mc_addrs = (char *)tmp___0;
    }
    if ((unsigned long )mc_addrs == (unsigned long )((char *)0)) {
      {
      netif_addr_unlock_bh(usbdev->net);
      }
      return;
    } else {
    }
    __mptr = (struct list_head const *)(usbdev->net)->mc.list.next;
    ha = (struct netdev_hw_addr *)__mptr;
    goto ldv_47175;
    ldv_47174:
    {
    tmp___1 = i;
    i = i + 1;
    memcpy((void *)mc_addrs + (unsigned long )(tmp___1 * 6), (void const *)(& ha->addr),
           6UL);
    __mptr___0 = (struct list_head const *)ha->list.next;
    ha = (struct netdev_hw_addr *)__mptr___0;
    }
    ldv_47175: ;
    if ((unsigned long )(& ha->list) != (unsigned long )(& (usbdev->net)->mc.list)) {
      goto ldv_47174;
    } else {
    }
  } else {
  }
  {
  netif_addr_unlock_bh(usbdev->net);
  }
  if (filter != basefilter) {
    goto set_filter;
  } else {
  }
  if (mc_count != 0) {
    {
    ret = rndis_set_oid(usbdev, 16843011U, (void const *)mc_addrs, mc_count * 6);
    kfree((void const *)mc_addrs);
    }
    if (ret == 0) {
      filter = filter | 2U;
    } else {
      filter = filter | 4U;
    }
    {
    descriptor.modname = "rndis_wlan";
    descriptor.function = "set_multicast_list";
    descriptor.filename = "drivers/net/wireless/rndis_wlan.c";
    descriptor.format = "RNDIS_OID_802_3_MULTICAST_LIST(%d, max: %d) -> %d\n";
    descriptor.lineno = 1648U;
    descriptor.flags = 0U;
    tmp___2 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    }
    if (tmp___2 != 0L) {
      {
      __dynamic_netdev_dbg(& descriptor, (struct net_device const *)usbdev->net,
                           "RNDIS_OID_802_3_MULTICAST_LIST(%d, max: %d) -> %d\n",
                           mc_count, priv->multicast_size, ret);
      }
    } else {
    }
  } else {
  }
  set_filter:
  {
  ret = rndis_set_oid(usbdev, 65806U, (void const *)(& filter), 4);
  }
  if (ret < 0) {
    {
    netdev_warn((struct net_device const *)usbdev->net, "couldn\'t set packet filter: %08x\n",
                filter);
    }
  } else {
  }
  {
  descriptor___0.modname = "rndis_wlan";
  descriptor___0.function = "set_multicast_list";
  descriptor___0.filename = "drivers/net/wireless/rndis_wlan.c";
  descriptor___0.format = "RNDIS_OID_GEN_CURRENT_PACKET_FILTER(%08x) -> %d\n";
  descriptor___0.lineno = 1660U;
  descriptor___0.flags = 0U;
  tmp___3 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
  }
  if (tmp___3 != 0L) {
    {
    __dynamic_netdev_dbg(& descriptor___0, (struct net_device const *)usbdev->net,
                         "RNDIS_OID_GEN_CURRENT_PACKET_FILTER(%08x) -> %d\n", filter,
                         ret);
    }
  } else {
  }
  return;
}
}
static void debug_print_pmkids(struct usbnet *usbdev , struct ndis_80211_pmkid *pmkids ,
                               char const *func_str )
{
  {
  return;
}
}
static struct ndis_80211_pmkid *get_device_pmkids(struct usbnet *usbdev )
{
  struct rndis_wlan_private *priv ;
  struct rndis_wlan_private *tmp ;
  struct ndis_80211_pmkid *pmkids ;
  int len ;
  int ret ;
  int max_pmkids ;
  void *tmp___0 ;
  void *tmp___1 ;
  struct _ddebug descriptor ;
  long tmp___2 ;
  void *tmp___3 ;
  {
  {
  tmp = get_rndis_wlan_priv(usbdev);
  priv = tmp;
  max_pmkids = (int )(priv->wdev.wiphy)->max_num_pmkids;
  len = (int )((unsigned int )((unsigned long )max_pmkids) * 22U + 8U);
  tmp___0 = kzalloc((size_t )len, 208U);
  pmkids = (struct ndis_80211_pmkid *)tmp___0;
  }
  if ((unsigned long )pmkids == (unsigned long )((struct ndis_80211_pmkid *)0)) {
    {
    tmp___1 = ERR_PTR(-12L);
    }
    return ((struct ndis_80211_pmkid *)tmp___1);
  } else {
  }
  {
  pmkids->length = (unsigned int )len;
  pmkids->bssid_info_count = (unsigned int )max_pmkids;
  ret = rndis_query_oid(usbdev, 218169635U, (void *)pmkids, & len);
  }
  if (ret < 0) {
    {
    descriptor.modname = "rndis_wlan";
    descriptor.function = "get_device_pmkids";
    descriptor.filename = "drivers/net/wireless/rndis_wlan.c";
    descriptor.format = "%s(): RNDIS_OID_802_11_PMKID(%d, %d) -> %d\n";
    descriptor.lineno = 1722U;
    descriptor.flags = 0U;
    tmp___2 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    }
    if (tmp___2 != 0L) {
      {
      __dynamic_netdev_dbg(& descriptor, (struct net_device const *)usbdev->net,
                           "%s(): RNDIS_OID_802_11_PMKID(%d, %d) -> %d\n", "get_device_pmkids",
                           len, max_pmkids, ret);
      }
    } else {
    }
    {
    kfree((void const *)pmkids);
    tmp___3 = ERR_PTR((long )ret);
    }
    return ((struct ndis_80211_pmkid *)tmp___3);
  } else {
  }
  if (pmkids->bssid_info_count > (__le32 )max_pmkids) {
    pmkids->bssid_info_count = (unsigned int )max_pmkids;
  } else {
  }
  {
  debug_print_pmkids(usbdev, pmkids, "get_device_pmkids");
  }
  return (pmkids);
}
}
static int set_device_pmkids(struct usbnet *usbdev , struct ndis_80211_pmkid *pmkids )
{
  int ret ;
  int len ;
  int num_pmkids ;
  struct _ddebug descriptor ;
  long tmp ;
  {
  {
  num_pmkids = (int )pmkids->bssid_info_count;
  len = (int )((unsigned int )((unsigned long )num_pmkids) * 22U + 8U);
  pmkids->length = (unsigned int )len;
  debug_print_pmkids(usbdev, pmkids, "set_device_pmkids");
  ret = rndis_set_oid(usbdev, 218169635U, (void const *)pmkids, (int )pmkids->length);
  }
  if (ret < 0) {
    {
    descriptor.modname = "rndis_wlan";
    descriptor.function = "set_device_pmkids";
    descriptor.filename = "drivers/net/wireless/rndis_wlan.c";
    descriptor.format = "%s(): RNDIS_OID_802_11_PMKID(%d, %d) -> %d\n";
    descriptor.lineno = 1751U;
    descriptor.flags = 0U;
    tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    }
    if (tmp != 0L) {
      {
      __dynamic_netdev_dbg(& descriptor, (struct net_device const *)usbdev->net,
                           "%s(): RNDIS_OID_802_11_PMKID(%d, %d) -> %d\n", "set_device_pmkids",
                           len, num_pmkids, ret);
      }
    } else {
    }
  } else {
  }
  {
  kfree((void const *)pmkids);
  }
  return (ret);
}
}
static struct ndis_80211_pmkid *remove_pmkid(struct usbnet *usbdev , struct ndis_80211_pmkid *pmkids ,
                                             struct cfg80211_pmksa *pmksa , int max_pmkids )
{
  int i ;
  int newlen ;
  int err ;
  unsigned int count ;
  bool tmp ;
  struct _ddebug descriptor ;
  long tmp___0 ;
  void *tmp___1 ;
  {
  count = pmkids->bssid_info_count;
  if (count > (unsigned int )max_pmkids) {
    count = (unsigned int )max_pmkids;
  } else {
  }
  i = 0;
  goto ldv_47216;
  ldv_47215:
  {
  tmp = ether_addr_equal((u8 const *)(& pmkids->bssid_info[i].bssid), (u8 const *)pmksa->bssid);
  }
  if ((int )tmp) {
    goto ldv_47214;
  } else {
  }
  i = i + 1;
  ldv_47216: ;
  if ((unsigned int )i < count) {
    goto ldv_47215;
  } else {
  }
  ldv_47214: ;
  if ((unsigned int )i == count) {
    {
    descriptor.modname = "rndis_wlan";
    descriptor.function = "remove_pmkid";
    descriptor.filename = "drivers/net/wireless/rndis_wlan.c";
    descriptor.format = "%s(): bssid not found (%pM)\n";
    descriptor.lineno = 1779U;
    descriptor.flags = 0U;
    tmp___0 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    }
    if (tmp___0 != 0L) {
      {
      __dynamic_netdev_dbg(& descriptor, (struct net_device const *)usbdev->net,
                           "%s(): bssid not found (%pM)\n", "remove_pmkid", pmksa->bssid);
      }
    } else {
    }
    err = -2;
    goto error;
  } else {
  }
  goto ldv_47221;
  ldv_47220:
  pmkids->bssid_info[i] = pmkids->bssid_info[i + 1];
  i = i + 1;
  ldv_47221: ;
  if ((unsigned int )(i + 1) < count) {
    goto ldv_47220;
  } else {
  }
  count = count - 1U;
  newlen = (int )(count * 22U + 8U);
  pmkids->length = (unsigned int )newlen;
  pmkids->bssid_info_count = count;
  return (pmkids);
  error:
  {
  kfree((void const *)pmkids);
  tmp___1 = ERR_PTR((long )err);
  }
  return ((struct ndis_80211_pmkid *)tmp___1);
}
}
static struct ndis_80211_pmkid *update_pmkid(struct usbnet *usbdev , struct ndis_80211_pmkid *pmkids ,
                                             struct cfg80211_pmksa *pmksa , int max_pmkids )
{
  struct ndis_80211_pmkid *new_pmkids ;
  int i ;
  int err ;
  int newlen ;
  unsigned int count ;
  bool tmp ;
  int tmp___0 ;
  struct _ddebug descriptor ;
  long tmp___1 ;
  void *tmp___2 ;
  void *tmp___3 ;
  {
  count = pmkids->bssid_info_count;
  if (count > (unsigned int )max_pmkids) {
    count = (unsigned int )max_pmkids;
  } else {
  }
  i = 0;
  goto ldv_47236;
  ldv_47235:
  {
  tmp = ether_addr_equal((u8 const *)(& pmkids->bssid_info[i].bssid), (u8 const *)pmksa->bssid);
  }
  if (tmp) {
    tmp___0 = 0;
  } else {
    tmp___0 = 1;
  }
  if (tmp___0) {
    goto ldv_47234;
  } else {
  }
  {
  memcpy((void *)(& pmkids->bssid_info[i].pmkid), (void const *)pmksa->pmkid, 16UL);
  }
  return (pmkids);
  ldv_47234:
  i = i + 1;
  ldv_47236: ;
  if ((unsigned int )i < count) {
    goto ldv_47235;
  } else {
  }
  if (i == max_pmkids) {
    {
    descriptor.modname = "rndis_wlan";
    descriptor.function = "update_pmkid";
    descriptor.filename = "drivers/net/wireless/rndis_wlan.c";
    descriptor.format = "%s(): out of space\n";
    descriptor.lineno = 1827U;
    descriptor.flags = 0U;
    tmp___1 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    }
    if (tmp___1 != 0L) {
      {
      __dynamic_netdev_dbg(& descriptor, (struct net_device const *)usbdev->net,
                           "%s(): out of space\n", "update_pmkid");
      }
    } else {
    }
    err = -28;
    goto error;
  } else {
  }
  {
  newlen = (int )((count + 1U) * 22U + 8U);
  tmp___2 = krealloc((void const *)pmkids, (size_t )newlen, 208U);
  new_pmkids = (struct ndis_80211_pmkid *)tmp___2;
  }
  if ((unsigned long )new_pmkids == (unsigned long )((struct ndis_80211_pmkid *)0)) {
    err = -12;
    goto error;
  } else {
  }
  {
  pmkids = new_pmkids;
  pmkids->length = (unsigned int )newlen;
  pmkids->bssid_info_count = count + 1U;
  memcpy((void *)(& pmkids->bssid_info[count].bssid), (void const *)pmksa->bssid,
         6UL);
  memcpy((void *)(& pmkids->bssid_info[count].pmkid), (void const *)pmksa->pmkid,
         16UL);
  }
  return (pmkids);
  error:
  {
  kfree((void const *)pmkids);
  tmp___3 = ERR_PTR((long )err);
  }
  return ((struct ndis_80211_pmkid *)tmp___3);
}
}
static int rndis_change_virtual_intf(struct wiphy *wiphy , struct net_device *dev ,
                                     enum nl80211_iftype type , u32 *flags , struct vif_params *params )
{
  struct rndis_wlan_private *priv ;
  void *tmp ;
  struct usbnet *usbdev ;
  int mode ;
  int tmp___0 ;
  {
  {
  tmp = wiphy_priv(wiphy);
  priv = (struct rndis_wlan_private *)tmp;
  usbdev = priv->usbdev;
  }
  {
  if ((unsigned int )type == 1U) {
    goto case_1;
  } else {
  }
  if ((unsigned int )type == 2U) {
    goto case_2;
  } else {
  }
  goto switch_default;
  case_1:
  mode = 0;
  goto ldv_47252;
  case_2:
  mode = 1;
  goto ldv_47252;
  switch_default: ;
  return (-22);
  switch_break: ;
  }
  ldv_47252:
  {
  priv->wdev.iftype = type;
  tmp___0 = set_infra_mode(usbdev, mode);
  }
  return (tmp___0);
}
}
static int rndis_set_wiphy_params(struct wiphy *wiphy , u32 changed )
{
  struct rndis_wlan_private *priv ;
  void *tmp ;
  struct usbnet *usbdev ;
  int err ;
  {
  {
  tmp = wiphy_priv(wiphy);
  priv = (struct rndis_wlan_private *)tmp;
  usbdev = priv->usbdev;
  }
  if ((changed & 4U) != 0U) {
    {
    err = set_frag_threshold(usbdev, wiphy->frag_threshold);
    }
    if (err < 0) {
      return (err);
    } else {
    }
  } else {
  }
  if ((changed & 8U) != 0U) {
    {
    err = set_rts_threshold(usbdev, wiphy->rts_threshold);
    }
    if (err < 0) {
      return (err);
    } else {
    }
  } else {
  }
  return (0);
}
}
static int rndis_set_tx_power(struct wiphy *wiphy , struct wireless_dev *wdev , enum nl80211_tx_power_setting type ,
                              int mbm )
{
  struct rndis_wlan_private *priv ;
  void *tmp ;
  struct usbnet *usbdev ;
  struct _ddebug descriptor ;
  long tmp___0 ;
  u32 tmp___1 ;
  {
  {
  tmp = wiphy_priv(wiphy);
  priv = (struct rndis_wlan_private *)tmp;
  usbdev = priv->usbdev;
  descriptor.modname = "rndis_wlan";
  descriptor.function = "rndis_set_tx_power";
  descriptor.filename = "drivers/net/wireless/rndis_wlan.c";
  descriptor.format = "%s(): type:0x%x mbm:%i\n";
  descriptor.lineno = 1912U;
  descriptor.flags = 0U;
  tmp___0 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  }
  if (tmp___0 != 0L) {
    {
    __dynamic_netdev_dbg(& descriptor, (struct net_device const *)usbdev->net, "%s(): type:0x%x mbm:%i\n",
                         "rndis_set_tx_power", (unsigned int )type, mbm);
    }
  } else {
  }
  if (mbm < 0 || mbm % 100 != 0) {
    return (-524);
  } else {
  }
  if ((unsigned int )type == 0U) {
    goto _L;
  } else {
    {
    tmp___1 = get_bcm4320_power_dbm(priv);
    }
    if ((u32 )(mbm / 100) == tmp___1) {
      _L:
      if (! priv->radio_on) {
        {
        disassociate(usbdev, 1);
        }
      } else {
      }
      return (0);
    } else {
    }
  }
  return (-524);
}
}
static int rndis_get_tx_power(struct wiphy *wiphy , struct wireless_dev *wdev , int *dbm )
{
  struct rndis_wlan_private *priv ;
  void *tmp ;
  struct usbnet *usbdev ;
  u32 tmp___0 ;
  struct _ddebug descriptor ;
  long tmp___1 ;
  {
  {
  tmp = wiphy_priv(wiphy);
  priv = (struct rndis_wlan_private *)tmp;
  usbdev = priv->usbdev;
  tmp___0 = get_bcm4320_power_dbm(priv);
  *dbm = (int )tmp___0;
  descriptor.modname = "rndis_wlan";
  descriptor.function = "rndis_get_tx_power";
  descriptor.filename = "drivers/net/wireless/rndis_wlan.c";
  descriptor.format = "%s(): dbm:%i\n";
  descriptor.lineno = 1941U;
  descriptor.flags = 0U;
  tmp___1 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  }
  if (tmp___1 != 0L) {
    {
    __dynamic_netdev_dbg(& descriptor, (struct net_device const *)usbdev->net, "%s(): dbm:%i\n",
                         "rndis_get_tx_power", *dbm);
    }
  } else {
  }
  return (0);
}
}
static int rndis_scan(struct wiphy *wiphy , struct cfg80211_scan_request *request )
{
  struct net_device *dev ;
  struct usbnet *usbdev ;
  void *tmp ;
  struct rndis_wlan_private *priv ;
  struct rndis_wlan_private *tmp___0 ;
  int ret ;
  int delay ;
  struct _ddebug descriptor ;
  long tmp___1 ;
  {
  {
  dev = (request->wdev)->netdev;
  tmp = netdev_priv((struct net_device const *)dev);
  usbdev = (struct usbnet *)tmp;
  tmp___0 = get_rndis_wlan_priv(usbdev);
  priv = tmp___0;
  delay = 1500;
  descriptor.modname = "rndis_wlan";
  descriptor.function = "rndis_scan";
  descriptor.filename = "drivers/net/wireless/rndis_wlan.c";
  descriptor.format = "cfg80211.scan\n";
  descriptor.lineno = 1956U;
  descriptor.flags = 0U;
  tmp___1 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  }
  if (tmp___1 != 0L) {
    {
    __dynamic_netdev_dbg(& descriptor, (struct net_device const *)usbdev->net, "cfg80211.scan\n");
    }
  } else {
  }
  {
  rndis_check_bssid_list(usbdev, (u8 *)0U, (bool *)0);
  }
  if ((unsigned long )priv->scan_request != (unsigned long )((struct cfg80211_scan_request *)0) && (unsigned long )priv->scan_request != (unsigned long )request) {
    return (-16);
  } else {
  }
  {
  priv->scan_request = request;
  ret = rndis_start_bssid_list_scan(usbdev);
  }
  if (ret == 0) {
    if (priv->device_type == 1) {
      delay = 250;
    } else {
    }
    {
    queue_delayed_work(priv->workqueue, & priv->scan_work, (unsigned long )delay);
    }
  } else {
  }
  return (ret);
}
}
static bool rndis_bss_info_update(struct usbnet *usbdev , struct ndis_80211_bssid_ex *bssid )
{
  struct rndis_wlan_private *priv ;
  struct rndis_wlan_private *tmp ;
  struct ieee80211_channel *channel ;
  struct cfg80211_bss *bss ;
  s32 signal ;
  u64 timestamp ;
  u16 capability ;
  u16 beacon_interval ;
  struct ndis_80211_fixed_ies *fixed ;
  int ie_len ;
  int bssid_len ;
  u8 *ie ;
  struct _ddebug descriptor ;
  long tmp___0 ;
  int _min1 ;
  int _min2 ;
  {
  {
  tmp = get_rndis_wlan_priv(usbdev);
  priv = tmp;
  descriptor.modname = "rndis_wlan";
  descriptor.function = "rndis_bss_info_update";
  descriptor.filename = "drivers/net/wireless/rndis_wlan.c";
  descriptor.format = " found bssid: \'%.32s\' [%pM], len: %d\n";
  descriptor.lineno = 1995U;
  descriptor.flags = 0U;
  tmp___0 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  }
  if (tmp___0 != 0L) {
    {
    __dynamic_netdev_dbg(& descriptor, (struct net_device const *)usbdev->net, " found bssid: \'%.32s\' [%pM], len: %d\n",
                         (u8 *)(& bssid->ssid.essid), (u8 *)(& bssid->mac), bssid->length);
    }
  } else {
  }
  bssid_len = (int )bssid->length;
  if ((unsigned int )bssid_len <= 127U) {
    return (0);
  } else {
  }
  fixed = (struct ndis_80211_fixed_ies *)(& bssid->ies);
  ie = (u8 *)(& bssid->ies) + 12U;
  _min1 = bssid_len + -116;
  _min2 = (int )bssid->ie_length;
  ie_len = _min1 < _min2 ? _min1 : _min2;
  ie_len = (int )((unsigned int )ie_len - 12U);
  if (ie_len < 0) {
    return (0);
  } else {
  }
  {
  channel = ieee80211_get_channel(priv->wdev.wiphy, (int )(bssid->config.ds_config / 1000U));
  }
  if ((unsigned long )channel == (unsigned long )((struct ieee80211_channel *)0)) {
    return (0);
  } else {
  }
  {
  signal = level_to_qual((int )bssid->rssi);
  timestamp = *((__le64 *)(& fixed->timestamp));
  capability = fixed->capabilities;
  beacon_interval = fixed->beacon_interval;
  bss = cfg80211_inform_bss(priv->wdev.wiphy, channel, (u8 const *)(& bssid->mac),
                            timestamp, (int )capability, (int )beacon_interval, (u8 const *)ie,
                            (size_t )ie_len, signal, 208U);
  cfg80211_put_bss(priv->wdev.wiphy, bss);
  }
  return ((unsigned long )bss != (unsigned long )((struct cfg80211_bss *)0));
}
}
static struct ndis_80211_bssid_ex *next_bssid_list_item(struct ndis_80211_bssid_ex *bssid ,
                                                        int *bssid_len , void *buf ,
                                                        int len )
{
  void *buf_end ;
  void *bssid_end ;
  {
  buf_end = buf + (unsigned long )len;
  bssid_end = (void *)bssid + (unsigned long )*bssid_len;
  if ((unsigned int )((long )buf_end) - (unsigned int )((long )bssid_end) <= 3U) {
    *bssid_len = 0;
    return ((struct ndis_80211_bssid_ex *)0);
  } else {
    bssid = bssid + (unsigned long )*bssid_len;
    *bssid_len = (int )bssid->length;
    return (bssid);
  }
}
}
static bool check_bssid_list_item(struct ndis_80211_bssid_ex *bssid , int bssid_len ,
                                  void *buf , int len )
{
  void *buf_end ;
  void *bssid_end ;
  {
  if (((unsigned long )bssid == (unsigned long )((struct ndis_80211_bssid_ex *)0) || bssid_len <= 0) || bssid_len > len) {
    return (0);
  } else {
  }
  buf_end = buf + (unsigned long )len;
  bssid_end = (void *)bssid + (unsigned long )bssid_len;
  return ((bool )((int )((unsigned int )((long )buf_end) - (unsigned int )((long )bssid_end)) >= 0 && (int )((unsigned int )((long )bssid_end) - (unsigned int )((long )buf)) >= 0));
}
}
static int rndis_check_bssid_list(struct usbnet *usbdev , u8 *match_bssid , bool *matched )
{
  void *buf ;
  struct ndis_80211_bssid_list_ex *bssid_list ;
  struct ndis_80211_bssid_ex *bssid ;
  int ret ;
  int len ;
  int count ;
  int bssid_len ;
  int real_count ;
  int new_len ;
  struct _ddebug descriptor ;
  long tmp ;
  struct _ddebug descriptor___0 ;
  long tmp___0 ;
  bool tmp___1 ;
  bool tmp___2 ;
  bool tmp___3 ;
  struct _ddebug descriptor___1 ;
  long tmp___4 ;
  {
  {
  buf = (void *)0;
  ret = -22;
  descriptor.modname = "rndis_wlan";
  descriptor.function = "rndis_check_bssid_list";
  descriptor.filename = "drivers/net/wireless/rndis_wlan.c";
  descriptor.format = "%s()\n";
  descriptor.lineno = 2073U;
  descriptor.flags = 0U;
  tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  }
  if (tmp != 0L) {
    {
    __dynamic_netdev_dbg(& descriptor, (struct net_device const *)usbdev->net, "%s()\n",
                         "rndis_check_bssid_list");
    }
  } else {
  }
  len = 1025;
  resize_buf:
  {
  buf = kzalloc((size_t )len, 208U);
  }
  if ((unsigned long )buf == (unsigned long )((void *)0)) {
    ret = -12;
    goto out;
  } else {
  }
  {
  new_len = len;
  ret = rndis_query_oid(usbdev, 218169879U, buf, & new_len);
  }
  if (ret != 0 || (unsigned int )new_len <= 3U) {
    goto out;
  } else {
  }
  if (new_len > len) {
    {
    len = new_len;
    kfree((void const *)buf);
    }
    goto resize_buf;
  } else {
  }
  {
  len = new_len;
  bssid_list = (struct ndis_80211_bssid_list_ex *)buf;
  count = (int )bssid_list->num_items;
  real_count = 0;
  descriptor___0.modname = "rndis_wlan";
  descriptor___0.function = "rndis_check_bssid_list";
  descriptor___0.filename = "drivers/net/wireless/rndis_wlan.c";
  descriptor___0.format = "%s(): buflen: %d\n";
  descriptor___0.lineno = 2103U;
  descriptor___0.flags = 0U;
  tmp___0 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
  }
  if (tmp___0 != 0L) {
    {
    __dynamic_netdev_dbg(& descriptor___0, (struct net_device const *)usbdev->net,
                         "%s(): buflen: %d\n", "rndis_check_bssid_list", len);
    }
  } else {
  }
  {
  bssid_len = 0;
  bssid = next_bssid_list_item((struct ndis_80211_bssid_ex *)(& bssid_list->bssid),
                               & bssid_len, buf, len);
  }
  goto ldv_47348;
  ldv_47347:
  {
  tmp___2 = rndis_bss_info_update(usbdev, bssid);
  }
  if ((int )tmp___2 && ((unsigned long )match_bssid != (unsigned long )((u8 *)0U) && (unsigned long )matched != (unsigned long )((bool *)0))) {
    {
    tmp___1 = ether_addr_equal((u8 const *)(& bssid->mac), (u8 const *)match_bssid);
    }
    if ((int )tmp___1) {
      *matched = 1;
    } else {
    }
  } else {
  }
  {
  real_count = real_count + 1;
  bssid = next_bssid_list_item(bssid, & bssid_len, buf, len);
  }
  ldv_47348:
  {
  tmp___3 = check_bssid_list_item(bssid, bssid_len, buf, len);
  }
  if ((int )tmp___3) {
    goto ldv_47347;
  } else {
  }
  {
  descriptor___1.modname = "rndis_wlan";
  descriptor___1.function = "rndis_check_bssid_list";
  descriptor___1.filename = "drivers/net/wireless/rndis_wlan.c";
  descriptor___1.format = "%s(): num_items from device: %d, really found: %d\n";
  descriptor___1.lineno = 2123U;
  descriptor___1.flags = 0U;
  tmp___4 = ldv__builtin_expect((long )descriptor___1.flags & 1L, 0L);
  }
  if (tmp___4 != 0L) {
    {
    __dynamic_netdev_dbg(& descriptor___1, (struct net_device const *)usbdev->net,
                         "%s(): num_items from device: %d, really found: %d\n", "rndis_check_bssid_list",
                         count, real_count);
    }
  } else {
  }
  out:
  {
  kfree((void const *)buf);
  }
  return (ret);
}
}
static void rndis_get_scan_results(struct work_struct *work )
{
  struct rndis_wlan_private *priv ;
  struct work_struct const *__mptr ;
  struct usbnet *usbdev ;
  int ret ;
  struct _ddebug descriptor ;
  long tmp ;
  {
  {
  __mptr = (struct work_struct const *)work;
  priv = (struct rndis_wlan_private *)__mptr + 0xfffffffffffffb58UL;
  usbdev = priv->usbdev;
  descriptor.modname = "rndis_wlan";
  descriptor.function = "rndis_get_scan_results";
  descriptor.filename = "drivers/net/wireless/rndis_wlan.c";
  descriptor.format = "get_scan_results\n";
  descriptor.lineno = 2137U;
  descriptor.flags = 0U;
  tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  }
  if (tmp != 0L) {
    {
    __dynamic_netdev_dbg(& descriptor, (struct net_device const *)usbdev->net, "get_scan_results\n");
    }
  } else {
  }
  if ((unsigned long )priv->scan_request == (unsigned long )((struct cfg80211_scan_request *)0)) {
    return;
  } else {
  }
  {
  ret = rndis_check_bssid_list(usbdev, (u8 *)0U, (bool *)0);
  cfg80211_scan_done(priv->scan_request, ret < 0);
  priv->scan_request = (struct cfg80211_scan_request *)0;
  }
  return;
}
}
static int rndis_connect(struct wiphy *wiphy , struct net_device *dev , struct cfg80211_connect_params *sme )
{
  struct rndis_wlan_private *priv ;
  void *tmp ;
  struct usbnet *usbdev ;
  struct ieee80211_channel *channel ;
  struct ndis_80211_ssid ssid ;
  int pairwise ;
  int groupwise ;
  int keymgmt ;
  int length ;
  int i ;
  int ret ;
  int chan ;
  int tmp___0 ;
  int tmp___1 ;
  struct _ddebug descriptor ;
  long tmp___2 ;
  bool tmp___3 ;
  struct _ddebug descriptor___0 ;
  long tmp___4 ;
  struct _ddebug descriptor___1 ;
  long tmp___5 ;
  struct _ddebug descriptor___2 ;
  long tmp___6 ;
  struct _ddebug descriptor___3 ;
  long tmp___7 ;
  struct _ddebug descriptor___4 ;
  long tmp___8 ;
  struct _ddebug descriptor___5 ;
  long tmp___9 ;
  bool tmp___10 ;
  int tmp___11 ;
  bool tmp___12 ;
  int tmp___13 ;
  struct _ddebug descriptor___6 ;
  long tmp___14 ;
  {
  {
  tmp = wiphy_priv(wiphy);
  priv = (struct rndis_wlan_private *)tmp;
  usbdev = priv->usbdev;
  channel = sme->channel;
  pairwise = 0;
  groupwise = 0;
  keymgmt = 0;
  chan = -1;
  }
  if ((unsigned long )channel != (unsigned long )((struct ieee80211_channel *)0)) {
    {
    chan = ieee80211_frequency_to_channel((int )channel->center_freq);
    }
  } else {
  }
  {
  groupwise = rndis_cipher_to_alg(sme->crypto.cipher_group);
  i = 0;
  }
  goto ldv_47378;
  ldv_47377:
  {
  tmp___0 = rndis_cipher_to_alg(sme->crypto.ciphers_pairwise[i]);
  pairwise = pairwise | tmp___0;
  i = i + 1;
  }
  ldv_47378: ;
  if (i < sme->crypto.n_ciphers_pairwise) {
    goto ldv_47377;
  } else {
  }
  if (sme->crypto.n_ciphers_pairwise > 0 && pairwise == 0) {
    {
    netdev_err((struct net_device const *)usbdev->net, "Unsupported pairwise cipher\n");
    }
    return (-524);
  } else {
  }
  i = 0;
  goto ldv_47381;
  ldv_47380:
  {
  tmp___1 = rndis_akm_suite_to_key_mgmt(sme->crypto.akm_suites[i]);
  keymgmt = keymgmt | tmp___1;
  i = i + 1;
  }
  ldv_47381: ;
  if (i < sme->crypto.n_akm_suites) {
    goto ldv_47380;
  } else {
  }
  if (sme->crypto.n_akm_suites > 0 && keymgmt == 0) {
    {
    netdev_err((struct net_device const *)usbdev->net, "Invalid keymgmt\n");
    }
    return (-524);
  } else {
  }
  {
  descriptor.modname = "rndis_wlan";
  descriptor.function = "rndis_connect";
  descriptor.filename = "drivers/net/wireless/rndis_wlan.c";
  descriptor.format = "cfg80211.connect(\'%.32s\':[%pM]:%d:[%d,0x%x:0x%x]:[0x%x:0x%x]:0x%x)\n";
  descriptor.lineno = 2188U;
  descriptor.flags = 0U;
  tmp___2 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  }
  if (tmp___2 != 0L) {
    {
    __dynamic_netdev_dbg(& descriptor, (struct net_device const *)usbdev->net, "cfg80211.connect(\'%.32s\':[%pM]:%d:[%d,0x%x:0x%x]:[0x%x:0x%x]:0x%x)\n",
                         sme->ssid, sme->bssid, chan, (int )sme->privacy, sme->crypto.wpa_versions,
                         (unsigned int )sme->auth_type, groupwise, pairwise, keymgmt);
    }
  } else {
  }
  {
  tmp___3 = is_associated(usbdev);
  }
  if ((int )tmp___3) {
    {
    disassociate(usbdev, 0);
    }
  } else {
  }
  {
  ret = set_infra_mode(usbdev, 1);
  }
  if (ret < 0) {
    {
    descriptor___0.modname = "rndis_wlan";
    descriptor___0.function = "rndis_connect";
    descriptor___0.filename = "drivers/net/wireless/rndis_wlan.c";
    descriptor___0.format = "connect: set_infra_mode failed, %d\n";
    descriptor___0.lineno = 2196U;
    descriptor___0.flags = 0U;
    tmp___4 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
    }
    if (tmp___4 != 0L) {
      {
      __dynamic_netdev_dbg(& descriptor___0, (struct net_device const *)usbdev->net,
                           "connect: set_infra_mode failed, %d\n", ret);
      }
    } else {
    }
    goto err_turn_radio_on;
  } else {
  }
  {
  ret = set_auth_mode(usbdev, sme->crypto.wpa_versions, sme->auth_type, keymgmt);
  }
  if (ret < 0) {
    {
    descriptor___1.modname = "rndis_wlan";
    descriptor___1.function = "rndis_connect";
    descriptor___1.filename = "drivers/net/wireless/rndis_wlan.c";
    descriptor___1.format = "connect: set_auth_mode failed, %d\n";
    descriptor___1.lineno = 2204U;
    descriptor___1.flags = 0U;
    tmp___5 = ldv__builtin_expect((long )descriptor___1.flags & 1L, 0L);
    }
    if (tmp___5 != 0L) {
      {
      __dynamic_netdev_dbg(& descriptor___1, (struct net_device const *)usbdev->net,
                           "connect: set_auth_mode failed, %d\n", ret);
      }
    } else {
    }
    goto err_turn_radio_on;
  } else {
  }
  {
  set_priv_filter(usbdev);
  ret = set_encr_mode(usbdev, pairwise, groupwise);
  }
  if (ret < 0) {
    {
    descriptor___2.modname = "rndis_wlan";
    descriptor___2.function = "rndis_connect";
    descriptor___2.filename = "drivers/net/wireless/rndis_wlan.c";
    descriptor___2.format = "connect: set_encr_mode failed, %d\n";
    descriptor___2.lineno = 2213U;
    descriptor___2.flags = 0U;
    tmp___6 = ldv__builtin_expect((long )descriptor___2.flags & 1L, 0L);
    }
    if (tmp___6 != 0L) {
      {
      __dynamic_netdev_dbg(& descriptor___2, (struct net_device const *)usbdev->net,
                           "connect: set_encr_mode failed, %d\n", ret);
      }
    } else {
    }
    goto err_turn_radio_on;
  } else {
  }
  if ((unsigned long )channel != (unsigned long )((struct ieee80211_channel *)0)) {
    {
    ret = set_channel(usbdev, chan);
    }
    if (ret < 0) {
      {
      descriptor___3.modname = "rndis_wlan";
      descriptor___3.function = "rndis_connect";
      descriptor___3.filename = "drivers/net/wireless/rndis_wlan.c";
      descriptor___3.format = "connect: set_channel failed, %d\n";
      descriptor___3.lineno = 2221U;
      descriptor___3.flags = 0U;
      tmp___7 = ldv__builtin_expect((long )descriptor___3.flags & 1L, 0L);
      }
      if (tmp___7 != 0L) {
        {
        __dynamic_netdev_dbg(& descriptor___3, (struct net_device const *)usbdev->net,
                             "connect: set_channel failed, %d\n", ret);
        }
      } else {
      }
      goto err_turn_radio_on;
    } else {
    }
  } else {
  }
  if ((unsigned long )sme->key != (unsigned long )((u8 const *)0U) && (groupwise | pairwise) & 1) {
    {
    priv->encr_tx_key_index = sme->key_idx;
    ret = add_wep_key(usbdev, sme->key, (int )sme->key_len, (int )sme->key_idx);
    }
    if (ret < 0) {
      {
      descriptor___4.modname = "rndis_wlan";
      descriptor___4.function = "rndis_connect";
      descriptor___4.filename = "drivers/net/wireless/rndis_wlan.c";
      descriptor___4.format = "connect: add_wep_key failed, %d (%d, %d)\n";
      descriptor___4.lineno = 2231U;
      descriptor___4.flags = 0U;
      tmp___8 = ldv__builtin_expect((long )descriptor___4.flags & 1L, 0L);
      }
      if (tmp___8 != 0L) {
        {
        __dynamic_netdev_dbg(& descriptor___4, (struct net_device const *)usbdev->net,
                             "connect: add_wep_key failed, %d (%d, %d)\n", ret, (int )sme->key_len,
                             (int )sme->key_idx);
        }
      } else {
      }
      goto err_turn_radio_on;
    } else {
    }
  } else {
  }
  if ((unsigned long )sme->bssid != (unsigned long )((u8 *)0U)) {
    {
    tmp___10 = is_zero_ether_addr((u8 const *)sme->bssid);
    }
    if (tmp___10) {
      tmp___11 = 0;
    } else {
      tmp___11 = 1;
    }
    if (tmp___11) {
      {
      tmp___12 = is_broadcast_ether_addr((u8 const *)sme->bssid);
      }
      if (tmp___12) {
        tmp___13 = 0;
      } else {
        tmp___13 = 1;
      }
      if (tmp___13) {
        {
        ret = set_bssid(usbdev, (u8 const *)sme->bssid);
        }
        if (ret < 0) {
          {
          descriptor___5.modname = "rndis_wlan";
          descriptor___5.function = "rndis_connect";
          descriptor___5.filename = "drivers/net/wireless/rndis_wlan.c";
          descriptor___5.format = "connect: set_bssid failed, %d\n";
          descriptor___5.lineno = 2241U;
          descriptor___5.flags = 0U;
          tmp___9 = ldv__builtin_expect((long )descriptor___5.flags & 1L, 0L);
          }
          if (tmp___9 != 0L) {
            {
            __dynamic_netdev_dbg(& descriptor___5, (struct net_device const *)usbdev->net,
                                 "connect: set_bssid failed, %d\n", ret);
            }
          } else {
          }
          goto err_turn_radio_on;
        } else {
        }
      } else {
        {
        clear_bssid(usbdev);
        }
      }
    } else {
      {
      clear_bssid(usbdev);
      }
    }
  } else {
    {
    clear_bssid(usbdev);
    }
  }
  length = (int )sme->ssid_len;
  if (length > 32) {
    length = 32;
  } else {
  }
  {
  memset((void *)(& ssid), 0, 36UL);
  ssid.length = (unsigned int )length;
  memcpy((void *)(& ssid.essid), (void const *)sme->ssid, (size_t )length);
  usbnet_pause_rx(usbdev);
  usbnet_purge_paused_rxq(usbdev);
  ret = set_essid(usbdev, & ssid);
  }
  if (ret < 0) {
    {
    descriptor___6.modname = "rndis_wlan";
    descriptor___6.function = "rndis_connect";
    descriptor___6.filename = "drivers/net/wireless/rndis_wlan.c";
    descriptor___6.format = "connect: set_essid failed, %d\n";
    descriptor___6.lineno = 2263U;
    descriptor___6.flags = 0U;
    tmp___14 = ldv__builtin_expect((long )descriptor___6.flags & 1L, 0L);
    }
    if (tmp___14 != 0L) {
      {
      __dynamic_netdev_dbg(& descriptor___6, (struct net_device const *)usbdev->net,
                           "connect: set_essid failed, %d\n", ret);
      }
    } else {
    }
  } else {
  }
  return (ret);
  err_turn_radio_on:
  {
  disassociate(usbdev, 1);
  }
  return (ret);
}
}
static int rndis_disconnect(struct wiphy *wiphy , struct net_device *dev , u16 reason_code )
{
  struct rndis_wlan_private *priv ;
  void *tmp ;
  struct usbnet *usbdev ;
  struct _ddebug descriptor ;
  long tmp___0 ;
  int tmp___1 ;
  {
  {
  tmp = wiphy_priv(wiphy);
  priv = (struct rndis_wlan_private *)tmp;
  usbdev = priv->usbdev;
  descriptor.modname = "rndis_wlan";
  descriptor.function = "rndis_disconnect";
  descriptor.filename = "drivers/net/wireless/rndis_wlan.c";
  descriptor.format = "cfg80211.disconnect(%d)\n";
  descriptor.lineno = 2278U;
  descriptor.flags = 0U;
  tmp___0 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  }
  if (tmp___0 != 0L) {
    {
    __dynamic_netdev_dbg(& descriptor, (struct net_device const *)usbdev->net, "cfg80211.disconnect(%d)\n",
                         (int )reason_code);
    }
  } else {
  }
  {
  priv->connected = 0;
  memset((void *)(& priv->bssid), 0, 6UL);
  tmp___1 = deauthenticate(usbdev);
  }
  return (tmp___1);
}
}
static int rndis_join_ibss(struct wiphy *wiphy , struct net_device *dev , struct cfg80211_ibss_params *params )
{
  struct rndis_wlan_private *priv ;
  void *tmp ;
  struct usbnet *usbdev ;
  struct ieee80211_channel *channel ;
  struct ndis_80211_ssid ssid ;
  enum nl80211_auth_type auth_type ;
  int ret ;
  int alg ;
  int length ;
  int chan ;
  struct _ddebug descriptor ;
  long tmp___0 ;
  bool tmp___1 ;
  struct _ddebug descriptor___0 ;
  long tmp___2 ;
  struct _ddebug descriptor___1 ;
  long tmp___3 ;
  struct _ddebug descriptor___2 ;
  long tmp___4 ;
  struct _ddebug descriptor___3 ;
  long tmp___5 ;
  struct _ddebug descriptor___4 ;
  long tmp___6 ;
  bool tmp___7 ;
  int tmp___8 ;
  bool tmp___9 ;
  int tmp___10 ;
  struct _ddebug descriptor___5 ;
  long tmp___11 ;
  {
  {
  tmp = wiphy_priv(wiphy);
  priv = (struct rndis_wlan_private *)tmp;
  usbdev = priv->usbdev;
  channel = params->chandef.chan;
  chan = -1;
  }
  if ((unsigned long )channel != (unsigned long )((struct ieee80211_channel *)0)) {
    {
    chan = ieee80211_frequency_to_channel((int )channel->center_freq);
    }
  } else {
  }
  if ((int )params->privacy) {
    auth_type = 1;
    alg = 1;
  } else {
    auth_type = 0;
    alg = 0;
  }
  {
  descriptor.modname = "rndis_wlan";
  descriptor.function = "rndis_join_ibss";
  descriptor.filename = "drivers/net/wireless/rndis_wlan.c";
  descriptor.format = "cfg80211.join_ibss(\'%.32s\':[%pM]:%d:%d)\n";
  descriptor.lineno = 2313U;
  descriptor.flags = 0U;
  tmp___0 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  }
  if (tmp___0 != 0L) {
    {
    __dynamic_netdev_dbg(& descriptor, (struct net_device const *)usbdev->net, "cfg80211.join_ibss(\'%.32s\':[%pM]:%d:%d)\n",
                         params->ssid, params->bssid, chan, (int )params->privacy);
    }
  } else {
  }
  {
  tmp___1 = is_associated(usbdev);
  }
  if ((int )tmp___1) {
    {
    disassociate(usbdev, 0);
    }
  } else {
  }
  {
  ret = set_infra_mode(usbdev, 0);
  }
  if (ret < 0) {
    {
    descriptor___0.modname = "rndis_wlan";
    descriptor___0.function = "rndis_join_ibss";
    descriptor___0.filename = "drivers/net/wireless/rndis_wlan.c";
    descriptor___0.format = "join_ibss: set_infra_mode failed, %d\n";
    descriptor___0.lineno = 2321U;
    descriptor___0.flags = 0U;
    tmp___2 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
    }
    if (tmp___2 != 0L) {
      {
      __dynamic_netdev_dbg(& descriptor___0, (struct net_device const *)usbdev->net,
                           "join_ibss: set_infra_mode failed, %d\n", ret);
      }
    } else {
    }
    goto err_turn_radio_on;
  } else {
  }
  {
  ret = set_auth_mode(usbdev, 0U, auth_type, 0);
  }
  if (ret < 0) {
    {
    descriptor___1.modname = "rndis_wlan";
    descriptor___1.function = "rndis_join_ibss";
    descriptor___1.filename = "drivers/net/wireless/rndis_wlan.c";
    descriptor___1.format = "join_ibss: set_auth_mode failed, %d\n";
    descriptor___1.lineno = 2328U;
    descriptor___1.flags = 0U;
    tmp___3 = ldv__builtin_expect((long )descriptor___1.flags & 1L, 0L);
    }
    if (tmp___3 != 0L) {
      {
      __dynamic_netdev_dbg(& descriptor___1, (struct net_device const *)usbdev->net,
                           "join_ibss: set_auth_mode failed, %d\n", ret);
      }
    } else {
    }
    goto err_turn_radio_on;
  } else {
  }
  {
  set_priv_filter(usbdev);
  ret = set_encr_mode(usbdev, alg, 0);
  }
  if (ret < 0) {
    {
    descriptor___2.modname = "rndis_wlan";
    descriptor___2.function = "rndis_join_ibss";
    descriptor___2.filename = "drivers/net/wireless/rndis_wlan.c";
    descriptor___2.format = "join_ibss: set_encr_mode failed, %d\n";
    descriptor___2.lineno = 2337U;
    descriptor___2.flags = 0U;
    tmp___4 = ldv__builtin_expect((long )descriptor___2.flags & 1L, 0L);
    }
    if (tmp___4 != 0L) {
      {
      __dynamic_netdev_dbg(& descriptor___2, (struct net_device const *)usbdev->net,
                           "join_ibss: set_encr_mode failed, %d\n", ret);
      }
    } else {
    }
    goto err_turn_radio_on;
  } else {
  }
  if ((unsigned long )channel != (unsigned long )((struct ieee80211_channel *)0)) {
    {
    ret = set_channel(usbdev, chan);
    }
    if (ret < 0) {
      {
      descriptor___3.modname = "rndis_wlan";
      descriptor___3.function = "rndis_join_ibss";
      descriptor___3.filename = "drivers/net/wireless/rndis_wlan.c";
      descriptor___3.format = "join_ibss: set_channel failed, %d\n";
      descriptor___3.lineno = 2345U;
      descriptor___3.flags = 0U;
      tmp___5 = ldv__builtin_expect((long )descriptor___3.flags & 1L, 0L);
      }
      if (tmp___5 != 0L) {
        {
        __dynamic_netdev_dbg(& descriptor___3, (struct net_device const *)usbdev->net,
                             "join_ibss: set_channel failed, %d\n", ret);
        }
      } else {
      }
      goto err_turn_radio_on;
    } else {
    }
  } else {
  }
  if ((unsigned long )params->bssid != (unsigned long )((u8 *)0U)) {
    {
    tmp___7 = is_zero_ether_addr((u8 const *)params->bssid);
    }
    if (tmp___7) {
      tmp___8 = 0;
    } else {
      tmp___8 = 1;
    }
    if (tmp___8) {
      {
      tmp___9 = is_broadcast_ether_addr((u8 const *)params->bssid);
      }
      if (tmp___9) {
        tmp___10 = 0;
      } else {
        tmp___10 = 1;
      }
      if (tmp___10) {
        {
        ret = set_bssid(usbdev, (u8 const *)params->bssid);
        }
        if (ret < 0) {
          {
          descriptor___4.modname = "rndis_wlan";
          descriptor___4.function = "rndis_join_ibss";
          descriptor___4.filename = "drivers/net/wireless/rndis_wlan.c";
          descriptor___4.format = "join_ibss: set_bssid failed, %d\n";
          descriptor___4.lineno = 2355U;
          descriptor___4.flags = 0U;
          tmp___6 = ldv__builtin_expect((long )descriptor___4.flags & 1L, 0L);
          }
          if (tmp___6 != 0L) {
            {
            __dynamic_netdev_dbg(& descriptor___4, (struct net_device const *)usbdev->net,
                                 "join_ibss: set_bssid failed, %d\n", ret);
            }
          } else {
          }
          goto err_turn_radio_on;
        } else {
        }
      } else {
        {
        clear_bssid(usbdev);
        }
      }
    } else {
      {
      clear_bssid(usbdev);
      }
    }
  } else {
    {
    clear_bssid(usbdev);
    }
  }
  length = (int )params->ssid_len;
  if (length > 32) {
    length = 32;
  } else {
  }
  {
  memset((void *)(& ssid), 0, 36UL);
  ssid.length = (unsigned int )length;
  memcpy((void *)(& ssid.essid), (void const *)params->ssid, (size_t )length);
  usbnet_purge_paused_rxq(usbdev);
  usbnet_resume_rx(usbdev);
  ret = set_essid(usbdev, & ssid);
  }
  if (ret < 0) {
    {
    descriptor___5.modname = "rndis_wlan";
    descriptor___5.function = "rndis_join_ibss";
    descriptor___5.filename = "drivers/net/wireless/rndis_wlan.c";
    descriptor___5.format = "join_ibss: set_essid failed, %d\n";
    descriptor___5.lineno = 2376U;
    descriptor___5.flags = 0U;
    tmp___11 = ldv__builtin_expect((long )descriptor___5.flags & 1L, 0L);
    }
    if (tmp___11 != 0L) {
      {
      __dynamic_netdev_dbg(& descriptor___5, (struct net_device const *)usbdev->net,
                           "join_ibss: set_essid failed, %d\n", ret);
      }
    } else {
    }
  } else {
  }
  return (ret);
  err_turn_radio_on:
  {
  disassociate(usbdev, 1);
  }
  return (ret);
}
}
static int rndis_leave_ibss(struct wiphy *wiphy , struct net_device *dev )
{
  struct rndis_wlan_private *priv ;
  void *tmp ;
  struct usbnet *usbdev ;
  struct _ddebug descriptor ;
  long tmp___0 ;
  int tmp___1 ;
  {
  {
  tmp = wiphy_priv(wiphy);
  priv = (struct rndis_wlan_private *)tmp;
  usbdev = priv->usbdev;
  descriptor.modname = "rndis_wlan";
  descriptor.function = "rndis_leave_ibss";
  descriptor.filename = "drivers/net/wireless/rndis_wlan.c";
  descriptor.format = "cfg80211.leave_ibss()\n";
  descriptor.lineno = 2390U;
  descriptor.flags = 0U;
  tmp___0 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  }
  if (tmp___0 != 0L) {
    {
    __dynamic_netdev_dbg(& descriptor, (struct net_device const *)usbdev->net, "cfg80211.leave_ibss()\n");
    }
  } else {
  }
  {
  priv->connected = 0;
  memset((void *)(& priv->bssid), 0, 6UL);
  tmp___1 = deauthenticate(usbdev);
  }
  return (tmp___1);
}
}
static int rndis_add_key(struct wiphy *wiphy , struct net_device *netdev , u8 key_index ,
                         bool pairwise , u8 const *mac_addr , struct key_params *params )
{
  struct rndis_wlan_private *priv ;
  void *tmp ;
  struct usbnet *usbdev ;
  __le32 flags ;
  struct _ddebug descriptor ;
  long tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  struct _ddebug descriptor___0 ;
  long tmp___3 ;
  {
  {
  tmp = wiphy_priv(wiphy);
  priv = (struct rndis_wlan_private *)tmp;
  usbdev = priv->usbdev;
  descriptor.modname = "rndis_wlan";
  descriptor.function = "rndis_add_key";
  descriptor.filename = "drivers/net/wireless/rndis_wlan.c";
  descriptor.format = "%s(%i, %pM, %08x)\n";
  descriptor.lineno = 2407U;
  descriptor.flags = 0U;
  tmp___0 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  }
  if (tmp___0 != 0L) {
    {
    __dynamic_netdev_dbg(& descriptor, (struct net_device const *)usbdev->net, "%s(%i, %pM, %08x)\n",
                         "rndis_add_key", (int )key_index, mac_addr, params->cipher);
    }
  } else {
  }
  {
  if (params->cipher == 1027073U) {
    goto case_1027073;
  } else {
  }
  if (params->cipher == 1027077U) {
    goto case_1027077;
  } else {
  }
  if (params->cipher == 1027074U) {
    goto case_1027074;
  } else {
  }
  if (params->cipher == 1027076U) {
    goto case_1027076;
  } else {
  }
  goto switch_default;
  case_1027073: ;
  case_1027077:
  {
  tmp___1 = add_wep_key(usbdev, (u8 const *)params->key, params->key_len, (int )key_index);
  }
  return (tmp___1);
  case_1027074: ;
  case_1027076:
  flags = 0U;
  if ((unsigned long )params->seq != (unsigned long )((u8 *)0U) && params->seq_len > 0) {
    flags = flags | 536870912U;
  } else {
  }
  if ((unsigned long )mac_addr != (unsigned long )((u8 const *)0U)) {
    flags = flags | 3221225472U;
  } else {
  }
  {
  tmp___2 = add_wpa_key(usbdev, (u8 const *)params->key, params->key_len, (int )key_index,
                        mac_addr, (u8 const *)params->seq, params->seq_len, params->cipher,
                        flags);
  }
  return (tmp___2);
  switch_default:
  {
  descriptor___0.modname = "rndis_wlan";
  descriptor___0.function = "rndis_add_key";
  descriptor___0.filename = "drivers/net/wireless/rndis_wlan.c";
  descriptor___0.format = "%s(): unsupported cipher %08x\n";
  descriptor___0.lineno = 2429U;
  descriptor___0.flags = 0U;
  tmp___3 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
  }
  if (tmp___3 != 0L) {
    {
    __dynamic_netdev_dbg(& descriptor___0, (struct net_device const *)usbdev->net,
                         "%s(): unsupported cipher %08x\n", "rndis_add_key", params->cipher);
    }
  } else {
  }
  return (-524);
  switch_break: ;
  }
}
}
static int rndis_del_key(struct wiphy *wiphy , struct net_device *netdev , u8 key_index ,
                         bool pairwise , u8 const *mac_addr )
{
  struct rndis_wlan_private *priv ;
  void *tmp ;
  struct usbnet *usbdev ;
  struct _ddebug descriptor ;
  long tmp___0 ;
  int tmp___1 ;
  {
  {
  tmp = wiphy_priv(wiphy);
  priv = (struct rndis_wlan_private *)tmp;
  usbdev = priv->usbdev;
  descriptor.modname = "rndis_wlan";
  descriptor.function = "rndis_del_key";
  descriptor.filename = "drivers/net/wireless/rndis_wlan.c";
  descriptor.format = "%s(%i, %pM)\n";
  descriptor.lineno = 2440U;
  descriptor.flags = 0U;
  tmp___0 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  }
  if (tmp___0 != 0L) {
    {
    __dynamic_netdev_dbg(& descriptor, (struct net_device const *)usbdev->net, "%s(%i, %pM)\n",
                         "rndis_del_key", (int )key_index, mac_addr);
    }
  } else {
  }
  {
  tmp___1 = remove_key(usbdev, (int )key_index, mac_addr);
  }
  return (tmp___1);
}
}
static int rndis_set_default_key(struct wiphy *wiphy , struct net_device *netdev ,
                                 u8 key_index , bool unicast , bool multicast )
{
  struct rndis_wlan_private *priv ;
  void *tmp ;
  struct usbnet *usbdev ;
  struct rndis_wlan_encr_key key ;
  struct _ddebug descriptor ;
  long tmp___0 ;
  bool tmp___1 ;
  int tmp___2 ;
  {
  {
  tmp = wiphy_priv(wiphy);
  priv = (struct rndis_wlan_private *)tmp;
  usbdev = priv->usbdev;
  descriptor.modname = "rndis_wlan";
  descriptor.function = "rndis_set_default_key";
  descriptor.filename = "drivers/net/wireless/rndis_wlan.c";
  descriptor.format = "%s(%i)\n";
  descriptor.lineno = 2452U;
  descriptor.flags = 0U;
  tmp___0 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  }
  if (tmp___0 != 0L) {
    {
    __dynamic_netdev_dbg(& descriptor, (struct net_device const *)usbdev->net, "%s(%i)\n",
                         "rndis_set_default_key", (int )key_index);
    }
  } else {
  }
  if ((unsigned int )key_index > 3U) {
    return (-2);
  } else {
  }
  {
  priv->encr_tx_key_index = key_index;
  tmp___1 = is_wpa_key(priv, (int )key_index);
  }
  if ((int )tmp___1) {
    return (0);
  } else {
  }
  {
  key = priv->encr_keys[(int )key_index];
  tmp___2 = add_wep_key(usbdev, (u8 const *)(& key.material), key.len, (int )key_index);
  }
  return (tmp___2);
}
}
static void rndis_fill_station_info(struct usbnet *usbdev , struct station_info *sinfo )
{
  __le32 linkspeed ;
  __le32 rssi ;
  int ret ;
  int len ;
  int tmp ;
  {
  {
  memset((void *)sinfo, 0, 144UL);
  len = 4;
  ret = rndis_query_oid(usbdev, 65799U, (void *)(& linkspeed), & len);
  }
  if (ret == 0) {
    sinfo->txrate.legacy = (u16 )(linkspeed / 1000U);
    sinfo->filled = sinfo->filled | 128U;
  } else {
  }
  {
  len = 4;
  ret = rndis_query_oid(usbdev, 218169862U, (void *)(& rssi), & len);
  }
  if (ret == 0) {
    {
    tmp = level_to_qual((int )rssi);
    sinfo->signal = (s8 )tmp;
    sinfo->filled = sinfo->filled | 64U;
    }
  } else {
  }
  return;
}
}
static int rndis_get_station(struct wiphy *wiphy , struct net_device *dev , u8 *mac ,
                             struct station_info *sinfo )
{
  struct rndis_wlan_private *priv ;
  void *tmp ;
  struct usbnet *usbdev ;
  bool tmp___0 ;
  int tmp___1 ;
  {
  {
  tmp = wiphy_priv(wiphy);
  priv = (struct rndis_wlan_private *)tmp;
  usbdev = priv->usbdev;
  tmp___0 = ether_addr_equal((u8 const *)(& priv->bssid), (u8 const *)mac);
  }
  if (tmp___0) {
    tmp___1 = 0;
  } else {
    tmp___1 = 1;
  }
  if (tmp___1) {
    return (-2);
  } else {
  }
  {
  rndis_fill_station_info(usbdev, sinfo);
  }
  return (0);
}
}
static int rndis_dump_station(struct wiphy *wiphy , struct net_device *dev , int idx ,
                              u8 *mac , struct station_info *sinfo )
{
  struct rndis_wlan_private *priv ;
  void *tmp ;
  struct usbnet *usbdev ;
  {
  {
  tmp = wiphy_priv(wiphy);
  priv = (struct rndis_wlan_private *)tmp;
  usbdev = priv->usbdev;
  }
  if (idx != 0) {
    return (-2);
  } else {
  }
  {
  memcpy((void *)mac, (void const *)(& priv->bssid), 6UL);
  rndis_fill_station_info(usbdev, sinfo);
  }
  return (0);
}
}
static int rndis_set_pmksa(struct wiphy *wiphy , struct net_device *netdev , struct cfg80211_pmksa *pmksa )
{
  struct rndis_wlan_private *priv ;
  void *tmp ;
  struct usbnet *usbdev ;
  struct ndis_80211_pmkid *pmkids ;
  u32 *tmp___0 ;
  struct _ddebug descriptor ;
  __u32 tmp___1 ;
  __u32 tmp___2 ;
  __u32 tmp___3 ;
  __u32 tmp___4 ;
  long tmp___5 ;
  long tmp___6 ;
  long tmp___7 ;
  long tmp___8 ;
  long tmp___9 ;
  int tmp___10 ;
  {
  {
  tmp = wiphy_priv(wiphy);
  priv = (struct rndis_wlan_private *)tmp;
  usbdev = priv->usbdev;
  tmp___0 = (u32 *)pmksa->pmkid;
  descriptor.modname = "rndis_wlan";
  descriptor.function = "rndis_set_pmksa";
  descriptor.filename = "drivers/net/wireless/rndis_wlan.c";
  descriptor.format = "%s(%pM, %08X:%08X:%08X:%08X)\n";
  descriptor.lineno = 2532U;
  descriptor.flags = 0U;
  tmp___5 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  }
  if (tmp___5 != 0L) {
    {
    tmp___1 = __fswab32(*(tmp___0 + 3UL));
    tmp___2 = __fswab32(*(tmp___0 + 2UL));
    tmp___3 = __fswab32(*(tmp___0 + 1UL));
    tmp___4 = __fswab32(*tmp___0);
    __dynamic_netdev_dbg(& descriptor, (struct net_device const *)usbdev->net, "%s(%pM, %08X:%08X:%08X:%08X)\n",
                         "rndis_set_pmksa", pmksa->bssid, tmp___4, tmp___3, tmp___2,
                         tmp___1);
    }
  } else {
  }
  {
  pmkids = get_device_pmkids(usbdev);
  tmp___7 = IS_ERR((void const *)pmkids);
  }
  if (tmp___7 != 0L) {
    {
    tmp___6 = PTR_ERR((void const *)pmkids);
    }
    return ((int )tmp___6);
  } else {
  }
  {
  pmkids = update_pmkid(usbdev, pmkids, pmksa, (int )wiphy->max_num_pmkids);
  tmp___9 = IS_ERR((void const *)pmkids);
  }
  if (tmp___9 != 0L) {
    {
    tmp___8 = PTR_ERR((void const *)pmkids);
    }
    return ((int )tmp___8);
  } else {
  }
  {
  tmp___10 = set_device_pmkids(usbdev, pmkids);
  }
  return (tmp___10);
}
}
static int rndis_del_pmksa(struct wiphy *wiphy , struct net_device *netdev , struct cfg80211_pmksa *pmksa )
{
  struct rndis_wlan_private *priv ;
  void *tmp ;
  struct usbnet *usbdev ;
  struct ndis_80211_pmkid *pmkids ;
  u32 *tmp___0 ;
  struct _ddebug descriptor ;
  __u32 tmp___1 ;
  __u32 tmp___2 ;
  __u32 tmp___3 ;
  __u32 tmp___4 ;
  long tmp___5 ;
  long tmp___6 ;
  long tmp___7 ;
  long tmp___8 ;
  long tmp___9 ;
  int tmp___10 ;
  {
  {
  tmp = wiphy_priv(wiphy);
  priv = (struct rndis_wlan_private *)tmp;
  usbdev = priv->usbdev;
  tmp___0 = (u32 *)pmksa->pmkid;
  descriptor.modname = "rndis_wlan";
  descriptor.function = "rndis_del_pmksa";
  descriptor.filename = "drivers/net/wireless/rndis_wlan.c";
  descriptor.format = "%s(%pM, %08X:%08X:%08X:%08X)\n";
  descriptor.lineno = 2560U;
  descriptor.flags = 0U;
  tmp___5 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  }
  if (tmp___5 != 0L) {
    {
    tmp___1 = __fswab32(*(tmp___0 + 3UL));
    tmp___2 = __fswab32(*(tmp___0 + 2UL));
    tmp___3 = __fswab32(*(tmp___0 + 1UL));
    tmp___4 = __fswab32(*tmp___0);
    __dynamic_netdev_dbg(& descriptor, (struct net_device const *)usbdev->net, "%s(%pM, %08X:%08X:%08X:%08X)\n",
                         "rndis_del_pmksa", pmksa->bssid, tmp___4, tmp___3, tmp___2,
                         tmp___1);
    }
  } else {
  }
  {
  pmkids = get_device_pmkids(usbdev);
  tmp___7 = IS_ERR((void const *)pmkids);
  }
  if (tmp___7 != 0L) {
    {
    tmp___6 = PTR_ERR((void const *)pmkids);
    }
    return ((int )tmp___6);
  } else {
  }
  {
  pmkids = remove_pmkid(usbdev, pmkids, pmksa, (int )wiphy->max_num_pmkids);
  tmp___9 = IS_ERR((void const *)pmkids);
  }
  if (tmp___9 != 0L) {
    {
    tmp___8 = PTR_ERR((void const *)pmkids);
    }
    return ((int )tmp___8);
  } else {
  }
  {
  tmp___10 = set_device_pmkids(usbdev, pmkids);
  }
  return (tmp___10);
}
}
static int rndis_flush_pmksa(struct wiphy *wiphy , struct net_device *netdev )
{
  struct rndis_wlan_private *priv ;
  void *tmp ;
  struct usbnet *usbdev ;
  struct ndis_80211_pmkid pmkid ;
  struct _ddebug descriptor ;
  long tmp___0 ;
  int tmp___1 ;
  {
  {
  tmp = wiphy_priv(wiphy);
  priv = (struct rndis_wlan_private *)tmp;
  usbdev = priv->usbdev;
  descriptor.modname = "rndis_wlan";
  descriptor.function = "rndis_flush_pmksa";
  descriptor.filename = "drivers/net/wireless/rndis_wlan.c";
  descriptor.format = "%s()\n";
  descriptor.lineno = 2583U;
  descriptor.flags = 0U;
  tmp___0 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  }
  if (tmp___0 != 0L) {
    {
    __dynamic_netdev_dbg(& descriptor, (struct net_device const *)usbdev->net, "%s()\n",
                         "rndis_flush_pmksa");
    }
  } else {
  }
  {
  memset((void *)(& pmkid), 0, 8UL);
  pmkid.length = 8U;
  pmkid.bssid_info_count = 0U;
  tmp___1 = rndis_set_oid(usbdev, 218169635U, (void const *)(& pmkid), 8);
  }
  return (tmp___1);
}
}
static int rndis_set_power_mgmt(struct wiphy *wiphy , struct net_device *dev , bool enabled ,
                                int timeout )
{
  struct rndis_wlan_private *priv ;
  void *tmp ;
  struct usbnet *usbdev ;
  int power_mode ;
  __le32 mode ;
  int ret ;
  struct _ddebug descriptor ;
  long tmp___0 ;
  struct _ddebug descriptor___0 ;
  long tmp___1 ;
  {
  {
  tmp = wiphy_priv(wiphy);
  priv = (struct rndis_wlan_private *)tmp;
  usbdev = priv->usbdev;
  }
  if (priv->device_type != 2) {
    return (-524);
  } else {
  }
  {
  descriptor.modname = "rndis_wlan";
  descriptor.function = "rndis_set_power_mgmt";
  descriptor.filename = "drivers/net/wireless/rndis_wlan.c";
  descriptor.format = "%s(): %s, %d\n";
  descriptor.lineno = 2608U;
  descriptor.flags = 0U;
  tmp___0 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  }
  if (tmp___0 != 0L) {
    {
    __dynamic_netdev_dbg(& descriptor, (struct net_device const *)usbdev->net, "%s(): %s, %d\n",
                         "rndis_set_power_mgmt", (int )enabled ? (char *)"enabled" : (char *)"disabled",
                         timeout);
    }
  } else {
  }
  if ((int )enabled) {
    power_mode = 2;
  } else {
    power_mode = 0;
  }
  if (power_mode == priv->power_mode) {
    return (0);
  } else {
  }
  {
  priv->power_mode = power_mode;
  mode = (unsigned int )power_mode;
  ret = rndis_set_oid(usbdev, 218169878U, (void const *)(& mode), 4);
  descriptor___0.modname = "rndis_wlan";
  descriptor___0.function = "rndis_set_power_mgmt";
  descriptor___0.filename = "drivers/net/wireless/rndis_wlan.c";
  descriptor___0.format = "%s(): RNDIS_OID_802_11_POWER_MODE -> %d\n";
  descriptor___0.lineno = 2625U;
  descriptor___0.flags = 0U;
  tmp___1 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
  }
  if (tmp___1 != 0L) {
    {
    __dynamic_netdev_dbg(& descriptor___0, (struct net_device const *)usbdev->net,
                         "%s(): RNDIS_OID_802_11_POWER_MODE -> %d\n", "rndis_set_power_mgmt",
                         ret);
    }
  } else {
  }
  return (ret);
}
}
static int rndis_set_cqm_rssi_config(struct wiphy *wiphy , struct net_device *dev ,
                                     s32 rssi_thold , u32 rssi_hyst )
{
  struct rndis_wlan_private *priv ;
  void *tmp ;
  {
  {
  tmp = wiphy_priv(wiphy);
  priv = (struct rndis_wlan_private *)tmp;
  priv->cqm_rssi_thold = rssi_thold;
  priv->cqm_rssi_hyst = rssi_hyst;
  priv->last_cqm_event_rssi = 0;
  }
  return (0);
}
}
static void rndis_wlan_craft_connected_bss(struct usbnet *usbdev , u8 *bssid , struct ndis_80211_assoc_info *info )
{
  struct rndis_wlan_private *priv ;
  struct rndis_wlan_private *tmp ;
  struct ieee80211_channel *channel ;
  struct ndis_80211_ssid ssid ;
  struct cfg80211_bss *bss ;
  s32 signal ;
  u64 timestamp ;
  u16 capability ;
  u32 beacon_period ;
  __le32 rssi ;
  u8 ie_buf[34U] ;
  int len ;
  int ret ;
  int ie_len ;
  struct _ddebug descriptor ;
  int tmp___0 ;
  long tmp___1 ;
  struct _ddebug descriptor___0 ;
  long tmp___2 ;
  struct _ddebug descriptor___1 ;
  long tmp___3 ;
  {
  {
  tmp = get_rndis_wlan_priv(usbdev);
  priv = tmp;
  beacon_period = 0U;
  len = 4;
  rssi = 0U;
  ret = rndis_query_oid(usbdev, 218169862U, (void *)(& rssi), & len);
  signal = level_to_qual((int )rssi);
  descriptor.modname = "rndis_wlan";
  descriptor.function = "rndis_wlan_craft_connected_bss";
  descriptor.filename = "drivers/net/wireless/rndis_wlan.c";
  descriptor.format = "%s(): RNDIS_OID_802_11_RSSI -> %d, rssi:%d, qual: %d\n";
  descriptor.lineno = 2667U;
  descriptor.flags = 0U;
  tmp___1 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  }
  if (tmp___1 != 0L) {
    {
    tmp___0 = level_to_qual((int )rssi);
    __dynamic_netdev_dbg(& descriptor, (struct net_device const *)usbdev->net, "%s(): RNDIS_OID_802_11_RSSI -> %d, rssi:%d, qual: %d\n",
                         "rndis_wlan_craft_connected_bss", ret, rssi, tmp___0);
    }
  } else {
  }
  if ((unsigned long )info != (unsigned long )((struct ndis_80211_assoc_info *)0)) {
    capability = info->resp_ie.capa;
  } else {
    capability = priv->infra_mode == 1 ? 1U : 2U;
  }
  {
  channel = get_current_channel(usbdev, & beacon_period);
  }
  if ((unsigned long )channel == (unsigned long )((struct ieee80211_channel *)0)) {
    {
    netdev_warn((struct net_device const *)usbdev->net, "%s(): could not get channel.\n",
                "rndis_wlan_craft_connected_bss");
    }
    return;
  } else {
  }
  {
  len = 36;
  memset((void *)(& ssid), 0, 36UL);
  ret = rndis_query_oid(usbdev, 218169602U, (void *)(& ssid), & len);
  descriptor___0.modname = "rndis_wlan";
  descriptor___0.function = "rndis_wlan_craft_connected_bss";
  descriptor___0.filename = "drivers/net/wireless/rndis_wlan.c";
  descriptor___0.format = "%s(): RNDIS_OID_802_11_SSID -> %d, len: %d, ssid: \'%.32s\'\n";
  descriptor___0.lineno = 2693U;
  descriptor___0.flags = 0U;
  tmp___2 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
  }
  if (tmp___2 != 0L) {
    {
    __dynamic_netdev_dbg(& descriptor___0, (struct net_device const *)usbdev->net,
                         "%s(): RNDIS_OID_802_11_SSID -> %d, len: %d, ssid: \'%.32s\'\n",
                         "rndis_wlan_craft_connected_bss", ret, ssid.length, (u8 *)(& ssid.essid));
    }
  } else {
  }
  if (ssid.length > 32U) {
    ssid.length = 32U;
  } else {
  }
  {
  ie_buf[0] = 0U;
  ie_buf[1] = (u8 )ssid.length;
  memcpy((void *)(& ie_buf) + 2U, (void const *)(& ssid.essid), (size_t )ssid.length);
  ie_len = (int )(ssid.length + 2U);
  timestamp = 0ULL;
  descriptor___1.modname = "rndis_wlan";
  descriptor___1.function = "rndis_wlan_craft_connected_bss";
  descriptor___1.filename = "drivers/net/wireless/rndis_wlan.c";
  descriptor___1.format = "%s(): channel:%d(freq), bssid:[%pM], tsf:%d, capa:%x, beacon int:%d, resp_ie(len:%d, essid:\'%.32s\'), signal:%d\n";
  descriptor___1.lineno = 2711U;
  descriptor___1.flags = 0U;
  tmp___3 = ldv__builtin_expect((long )descriptor___1.flags & 1L, 0L);
  }
  if (tmp___3 != 0L) {
    {
    __dynamic_netdev_dbg(& descriptor___1, (struct net_device const *)usbdev->net,
                         "%s(): channel:%d(freq), bssid:[%pM], tsf:%d, capa:%x, beacon int:%d, resp_ie(len:%d, essid:\'%.32s\'), signal:%d\n",
                         "rndis_wlan_craft_connected_bss", (unsigned long )channel != (unsigned long )((struct ieee80211_channel *)0) ? (int )channel->center_freq : -1,
                         bssid, (unsigned int )timestamp, (int )capability, beacon_period,
                         ie_len, (u8 *)(& ssid.essid), signal);
    }
  } else {
  }
  {
  bss = cfg80211_inform_bss(priv->wdev.wiphy, channel, (u8 const *)bssid, timestamp,
                            (int )capability, (int )((u16 )beacon_period), (u8 const *)(& ie_buf),
                            (size_t )ie_len, signal, 208U);
  cfg80211_put_bss(priv->wdev.wiphy, bss);
  }
  return;
}
}
static void rndis_wlan_do_link_up_work(struct usbnet *usbdev )
{
  struct rndis_wlan_private *priv ;
  struct rndis_wlan_private *tmp ;
  struct ndis_80211_assoc_info *info ;
  u8 bssid[6U] ;
  unsigned int resp_ie_len ;
  unsigned int req_ie_len ;
  unsigned int offset ;
  u8 *req_ie ;
  u8 *resp_ie ;
  int ret ;
  bool roamed ;
  bool match_bss ;
  void *tmp___0 ;
  int __ret_warn_on ;
  long tmp___1 ;
  long tmp___2 ;
  struct _ddebug descriptor ;
  long tmp___3 ;
  bool tmp___4 ;
  int tmp___5 ;
  struct ieee80211_channel *tmp___6 ;
  {
  {
  tmp = get_rndis_wlan_priv(usbdev);
  priv = tmp;
  info = (struct ndis_80211_assoc_info *)0;
  roamed = 0;
  }
  if (priv->infra_mode == 1 && (int )priv->connected) {
    roamed = 1;
  } else {
  }
  req_ie_len = 0U;
  resp_ie_len = 0U;
  req_ie = (u8 *)0U;
  resp_ie = (u8 *)0U;
  if (priv->infra_mode == 1) {
    {
    tmp___0 = kzalloc(1025UL, 208U);
    info = (struct ndis_80211_assoc_info *)tmp___0;
    }
    if ((unsigned long )info == (unsigned long )((struct ndis_80211_assoc_info *)0)) {
      {
      set_bit(1L, (unsigned long volatile *)(& priv->work_pending));
      queue_work(priv->workqueue, & priv->work);
      }
      return;
    } else {
    }
    {
    ret = get_association_info(usbdev, info, 1025);
    }
    if (ret == 0) {
      req_ie_len = info->req_ie_length;
      if (req_ie_len > 1025U) {
        req_ie_len = 1025U;
      } else {
      }
      if (req_ie_len != 0U) {
        offset = info->offset_req_ies;
        if (offset > 1025U) {
          offset = 1025U;
        } else {
        }
        req_ie = (u8 *)info + (unsigned long )offset;
        if (offset + req_ie_len > 1025U) {
          req_ie_len = 1025U - offset;
        } else {
        }
      } else {
      }
      resp_ie_len = info->resp_ie_length;
      if (resp_ie_len > 1025U) {
        resp_ie_len = 1025U;
      } else {
      }
      if (resp_ie_len != 0U) {
        offset = info->offset_resp_ies;
        if (offset > 1025U) {
          offset = 1025U;
        } else {
        }
        resp_ie = (u8 *)info + (unsigned long )offset;
        if (offset + resp_ie_len > 1025U) {
          resp_ie_len = 1025U - offset;
        } else {
        }
      } else {
      }
    } else {
      {
      kfree((void const *)info);
      info = (struct ndis_80211_assoc_info *)0;
      }
    }
  } else {
    {
    __ret_warn_on = priv->infra_mode != 0;
    tmp___1 = ldv__builtin_expect(__ret_warn_on != 0, 0L);
    }
    if (tmp___1 != 0L) {
      {
      warn_slowpath_null("drivers/net/wireless/rndis_wlan.c", 2796);
      }
    } else {
    }
    {
    tmp___2 = ldv__builtin_expect(__ret_warn_on != 0, 0L);
    }
    if (tmp___2 != 0L) {
      return;
    } else {
    }
  }
  {
  ret = get_bssid(usbdev, (u8 *)(& bssid));
  }
  if (ret < 0) {
    {
    memset((void *)(& bssid), 0, 6UL);
    }
  } else {
  }
  {
  descriptor.modname = "rndis_wlan";
  descriptor.function = "rndis_wlan_do_link_up_work";
  descriptor.filename = "drivers/net/wireless/rndis_wlan.c";
  descriptor.format = "link up work: [%pM]%s\n";
  descriptor.lineno = 2804U;
  descriptor.flags = 0U;
  tmp___3 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  }
  if (tmp___3 != 0L) {
    {
    __dynamic_netdev_dbg(& descriptor, (struct net_device const *)usbdev->net, "link up work: [%pM]%s\n",
                         (u8 *)(& bssid), (int )roamed ? (char *)" roamed" : (char *)"");
    }
  } else {
  }
  {
  match_bss = 0;
  rndis_check_bssid_list(usbdev, (u8 *)(& bssid), & match_bss);
  tmp___4 = is_zero_ether_addr((u8 const *)(& bssid));
  }
  if (tmp___4) {
    tmp___5 = 0;
  } else {
    tmp___5 = 1;
  }
  if (tmp___5 && ! match_bss) {
    {
    rndis_wlan_craft_connected_bss(usbdev, (u8 *)(& bssid), info);
    }
  } else {
  }
  if (priv->infra_mode == 1) {
    if (! roamed) {
      {
      cfg80211_connect_result(usbdev->net, (u8 const *)(& bssid), (u8 const *)req_ie,
                              (size_t )req_ie_len, (u8 const *)resp_ie, (size_t )resp_ie_len,
                              0, 208U);
      }
    } else {
      {
      tmp___6 = get_current_channel(usbdev, (u32 *)0U);
      cfg80211_roamed(usbdev->net, tmp___6, (u8 const *)(& bssid), (u8 const *)req_ie,
                      (size_t )req_ie_len, (u8 const *)resp_ie, (size_t )resp_ie_len,
                      208U);
      }
    }
  } else
  if (priv->infra_mode == 0) {
    {
    cfg80211_ibss_joined(usbdev->net, (u8 const *)(& bssid), 208U);
    }
  } else {
  }
  {
  kfree((void const *)info);
  priv->connected = 1;
  memcpy((void *)(& priv->bssid), (void const *)(& bssid), 6UL);
  usbnet_resume_rx(usbdev);
  netif_carrier_on(usbdev->net);
  }
  return;
}
}
static void rndis_wlan_do_link_down_work(struct usbnet *usbdev )
{
  struct rndis_wlan_private *priv ;
  struct rndis_wlan_private *tmp ;
  {
  {
  tmp = get_rndis_wlan_priv(usbdev);
  priv = tmp;
  }
  if ((int )priv->connected) {
    {
    priv->connected = 0;
    memset((void *)(& priv->bssid), 0, 6UL);
    deauthenticate(usbdev);
    cfg80211_disconnected(usbdev->net, 0, (u8 *)0U, 0UL, 208U);
    }
  } else {
  }
  {
  netif_carrier_off(usbdev->net);
  }
  return;
}
}
static void rndis_wlan_worker(struct work_struct *work )
{
  struct rndis_wlan_private *priv ;
  struct work_struct const *__mptr ;
  struct usbnet *usbdev ;
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  {
  {
  __mptr = (struct work_struct const *)work;
  priv = (struct rndis_wlan_private *)__mptr + 0xfffffffffffffa78UL;
  usbdev = priv->usbdev;
  tmp = test_and_clear_bit(1L, (unsigned long volatile *)(& priv->work_pending));
  }
  if (tmp != 0) {
    {
    rndis_wlan_do_link_up_work(usbdev);
    }
  } else {
  }
  {
  tmp___0 = test_and_clear_bit(2L, (unsigned long volatile *)(& priv->work_pending));
  }
  if (tmp___0 != 0) {
    {
    rndis_wlan_do_link_down_work(usbdev);
    }
  } else {
  }
  {
  tmp___1 = test_and_clear_bit(4L, (unsigned long volatile *)(& priv->work_pending));
  }
  if (tmp___1 != 0) {
    {
    set_multicast_list(usbdev);
    }
  } else {
  }
  return;
}
}
static void rndis_wlan_set_multicast_list(struct net_device *dev )
{
  struct usbnet *usbdev ;
  void *tmp ;
  struct rndis_wlan_private *priv ;
  struct rndis_wlan_private *tmp___0 ;
  int tmp___1 ;
  {
  {
  tmp = netdev_priv((struct net_device const *)dev);
  usbdev = (struct usbnet *)tmp;
  tmp___0 = get_rndis_wlan_priv(usbdev);
  priv = tmp___0;
  tmp___1 = constant_test_bit(4L, (unsigned long const volatile *)(& priv->work_pending));
  }
  if (tmp___1 != 0) {
    return;
  } else {
  }
  {
  set_bit(4L, (unsigned long volatile *)(& priv->work_pending));
  queue_work(priv->workqueue, & priv->work);
  }
  return;
}
}
static void rndis_wlan_auth_indication(struct usbnet *usbdev , struct ndis_80211_status_indication *indication ,
                                       int len )
{
  u8 *buf ;
  char const *type ;
  int flags ;
  int buflen ;
  int key_id ;
  bool pairwise_error ;
  bool group_error ;
  struct ndis_80211_auth_request *auth_req ;
  enum nl80211_key_type key_type ;
  {
  if ((unsigned int )len <= 19U) {
    {
    netdev_info((struct net_device const *)usbdev->net, "authentication indication: too short message (%i)\n",
                len);
    }
    return;
  } else {
  }
  buf = (u8 *)(& indication->u.auth_request);
  buflen = (int )((unsigned int )len - 4U);
  goto ldv_47623;
  ldv_47622:
  auth_req = (struct ndis_80211_auth_request *)buf;
  type = "unknown";
  flags = (int )auth_req->flags;
  pairwise_error = 0;
  group_error = 0;
  if (flags & 1) {
    type = "reauth request";
  } else {
  }
  if ((flags & 2) != 0) {
    type = "key update request";
  } else {
  }
  if ((flags & 6) != 0) {
    pairwise_error = 1;
    type = "pairwise_error";
  } else {
  }
  if ((flags & 14) != 0) {
    group_error = 1;
    type = "group_error";
  } else {
  }
  {
  netdev_info((struct net_device const *)usbdev->net, "authentication indication: %s (0x%08x)\n",
              type, auth_req->flags);
  }
  if ((int )pairwise_error) {
    {
    key_type = 1;
    key_id = -1;
    cfg80211_michael_mic_failure(usbdev->net, (u8 const *)(& auth_req->bssid), key_type,
                                 key_id, (u8 const *)0U, 208U);
    }
  } else {
  }
  if ((int )group_error) {
    {
    key_type = 0;
    key_id = -1;
    cfg80211_michael_mic_failure(usbdev->net, (u8 const *)(& auth_req->bssid), key_type,
                                 key_id, (u8 const *)0U, 208U);
    }
  } else {
  }
  buflen = (int )((__le32 )buflen - auth_req->length);
  buf = buf + (unsigned long )auth_req->length;
  ldv_47623: ;
  if ((unsigned int )buflen > 15U) {
    goto ldv_47622;
  } else {
  }
  return;
}
}
static void rndis_wlan_pmkid_cand_list_indication(struct usbnet *usbdev , struct ndis_80211_status_indication *indication ,
                                                  int len )
{
  struct ndis_80211_pmkid_cand_list *cand_list ;
  int list_len ;
  int expected_len ;
  int i ;
  struct ndis_80211_pmkid_candidate *cand ;
  bool preauth ;
  struct _ddebug descriptor ;
  long tmp ;
  {
  if ((unsigned int )len <= 11U) {
    {
    netdev_info((struct net_device const *)usbdev->net, "pmkid candidate list indication: too short message (%i)\n",
                len);
    }
    return;
  } else {
  }
  list_len = (int )(indication->u.cand_list.num_candidates * 12U);
  expected_len = (int )((unsigned int )list_len + 12U);
  if (len < expected_len) {
    {
    netdev_info((struct net_device const *)usbdev->net, "pmkid candidate list indication: list larger than buffer (%i < %i)\n",
                len, expected_len);
    }
    return;
  } else {
  }
  {
  cand_list = & indication->u.cand_list;
  netdev_info((struct net_device const *)usbdev->net, "pmkid candidate list indication: version %i, candidates %i\n",
              cand_list->version, cand_list->num_candidates);
  }
  if (cand_list->version != 1U) {
    return;
  } else {
  }
  i = 0;
  goto ldv_47639;
  ldv_47638:
  {
  cand = (struct ndis_80211_pmkid_candidate *)(& cand_list->candidate_list) + (unsigned long )i;
  preauth = ((int )cand->flags & 1) != 0;
  descriptor.modname = "rndis_wlan";
  descriptor.function = "rndis_wlan_pmkid_cand_list_indication";
  descriptor.filename = "drivers/net/wireless/rndis_wlan.c";
  descriptor.format = "cand[%i]: flags: 0x%08x, preauth: %d, bssid: %pM\n";
  descriptor.lineno = 3003U;
  descriptor.flags = 0U;
  tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  }
  if (tmp != 0L) {
    {
    __dynamic_netdev_dbg(& descriptor, (struct net_device const *)usbdev->net, "cand[%i]: flags: 0x%08x, preauth: %d, bssid: %pM\n",
                         i, cand->flags, (int )preauth, (u8 *)(& cand->bssid));
    }
  } else {
  }
  {
  cfg80211_pmksa_candidate_notify(usbdev->net, i, (u8 const *)(& cand->bssid), (int )preauth,
                                  32U);
  i = i + 1;
  }
  ldv_47639: ;
  if ((__le32 )i < cand_list->num_candidates) {
    goto ldv_47638;
  } else {
  }
  return;
}
}
static void rndis_wlan_media_specific_indication(struct usbnet *usbdev , struct rndis_indicate *msg ,
                                                 int buflen )
{
  struct ndis_80211_status_indication *indication ;
  unsigned int len ;
  unsigned int offset ;
  {
  offset = msg->offset + 8U;
  len = msg->length;
  if (len <= 7U) {
    {
    netdev_info((struct net_device const *)usbdev->net, "media specific indication, ignore too short message (%i < 8)\n",
                len);
    }
    return;
  } else {
  }
  if ((len > (unsigned int )buflen || offset > (unsigned int )buflen) || offset + len > (unsigned int )buflen) {
    {
    netdev_info((struct net_device const *)usbdev->net, "media specific indication, too large to fit to buffer (%i > %i)\n",
                offset + len, buflen);
    }
    return;
  } else {
  }
  indication = (struct ndis_80211_status_indication *)msg + (unsigned long )offset;
  {
  if (indication->status_type == 3U) {
    goto case_3;
  } else {
  }
  if (indication->status_type == 1U) {
    goto case_1;
  } else {
  }
  if (indication->status_type == 0U) {
    goto case_0;
  } else {
  }
  if (indication->status_type == 2U) {
    goto case_2;
  } else {
  }
  goto switch_default;
  case_3:
  {
  netdev_info((struct net_device const *)usbdev->net, "radio state indication: %i\n",
              indication->u.radio_status);
  }
  return;
  case_1:
  {
  netdev_info((struct net_device const *)usbdev->net, "media stream mode indication: %i\n",
              indication->u.media_stream_mode);
  }
  return;
  case_0:
  {
  rndis_wlan_auth_indication(usbdev, indication, (int )len);
  }
  return;
  case_2:
  {
  rndis_wlan_pmkid_cand_list_indication(usbdev, indication, (int )len);
  }
  return;
  switch_default:
  {
  netdev_info((struct net_device const *)usbdev->net, "media specific indication: unknown status type 0x%08x\n",
              indication->status_type);
  }
  switch_break: ;
  }
  return;
}
}
static void rndis_wlan_indication(struct usbnet *usbdev , void *ind , int buflen )
{
  struct rndis_wlan_private *priv ;
  struct rndis_wlan_private *tmp ;
  struct rndis_indicate *msg ;
  struct _ddebug descriptor ;
  long tmp___0 ;
  {
  {
  tmp = get_rndis_wlan_priv(usbdev);
  priv = tmp;
  msg = (struct rndis_indicate *)ind;
  }
  {
  if (msg->status == 1073807371U) {
    goto case_1073807371;
  } else {
  }
  if (msg->status == 1073807372U) {
    goto case_1073807372;
  } else {
  }
  if (msg->status == 1073807378U) {
    goto case_1073807378;
  } else {
  }
  goto switch_default;
  case_1073807371: ;
  if (priv->current_command_oid == 218169629U) {
    {
    descriptor.modname = "rndis_wlan";
    descriptor.function = "rndis_wlan_indication";
    descriptor.filename = "drivers/net/wireless/rndis_wlan.c";
    descriptor.format = "ignored RNDIS_OID_802_11_ADD_KEY triggered \'media connect\'\n";
    descriptor.lineno = 3072U;
    descriptor.flags = 0U;
    tmp___0 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    }
    if (tmp___0 != 0L) {
      {
      __dynamic_netdev_dbg(& descriptor, (struct net_device const *)usbdev->net,
                           "ignored RNDIS_OID_802_11_ADD_KEY triggered \'media connect\'\n");
      }
    } else {
    }
    return;
  } else {
  }
  {
  usbnet_pause_rx(usbdev);
  netdev_info((struct net_device const *)usbdev->net, "media connect\n");
  set_bit(1L, (unsigned long volatile *)(& priv->work_pending));
  queue_work(priv->workqueue, & priv->work);
  }
  goto ldv_47664;
  case_1073807372:
  {
  netdev_info((struct net_device const *)usbdev->net, "media disconnect\n");
  set_bit(2L, (unsigned long volatile *)(& priv->work_pending));
  queue_work(priv->workqueue, & priv->work);
  }
  goto ldv_47664;
  case_1073807378:
  {
  rndis_wlan_media_specific_indication(usbdev, msg, buflen);
  }
  goto ldv_47664;
  switch_default:
  {
  netdev_info((struct net_device const *)usbdev->net, "indication: 0x%08x\n", msg->status);
  }
  goto ldv_47664;
  switch_break: ;
  }
  ldv_47664: ;
  return;
}
}
static int rndis_wlan_get_caps(struct usbnet *usbdev , struct wiphy *wiphy )
{
  struct __anonstruct_networks_supported_290 networks_supported ;
  struct ndis_80211_capability *caps ;
  u8 caps_buf[16U] ;
  int len ;
  int retval ;
  int i ;
  int n ;
  struct rndis_wlan_private *priv ;
  struct rndis_wlan_private *tmp ;
  struct _ddebug descriptor ;
  long tmp___0 ;
  {
  {
  tmp = get_rndis_wlan_priv(usbdev);
  priv = tmp;
  len = 36;
  retval = rndis_query_oid(usbdev, 218169859U, (void *)(& networks_supported), & len);
  }
  if (retval >= 0) {
    n = (int )networks_supported.num_items;
    if (n > 8) {
      n = 8;
    } else {
    }
    i = 0;
    goto ldv_47689;
    ldv_47688: ;
    {
    if (networks_supported.items[i] == 0U) {
      goto case_0;
    } else {
    }
    if (networks_supported.items[i] == 1U) {
      goto case_1;
    } else {
    }
    if (networks_supported.items[i] == 2U) {
      goto case_2;
    } else {
    }
    if (networks_supported.items[i] == 3U) {
      goto case_3;
    } else {
    }
    goto switch_break;
    case_0: ;
    case_1:
    priv->caps = priv->caps | 2;
    goto ldv_47685;
    case_2:
    priv->caps = priv->caps | 1;
    goto ldv_47685;
    case_3:
    priv->caps = priv->caps | 4;
    goto ldv_47685;
    switch_break: ;
    }
    ldv_47685:
    i = i + 1;
    ldv_47689: ;
    if (i < n) {
      goto ldv_47688;
    } else {
    }
  } else {
  }
  {
  caps = (struct ndis_80211_capability *)(& caps_buf);
  len = 16;
  retval = rndis_query_oid(usbdev, 218169634U, (void *)caps, & len);
  }
  if (retval >= 0) {
    {
    descriptor.modname = "rndis_wlan";
    descriptor.function = "rndis_wlan_get_caps";
    descriptor.filename = "drivers/net/wireless/rndis_wlan.c";
    descriptor.format = "RNDIS_OID_802_11_CAPABILITY -> len %d, ver %d, pmkids %d, auth-encr-pairs %d\n";
    descriptor.lineno = 3152U;
    descriptor.flags = 0U;
    tmp___0 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    }
    if (tmp___0 != 0L) {
      {
      __dynamic_netdev_dbg(& descriptor, (struct net_device const *)usbdev->net,
                           "RNDIS_OID_802_11_CAPABILITY -> len %d, ver %d, pmkids %d, auth-encr-pairs %d\n",
                           caps->length, caps->version, caps->num_pmkids, caps->num_auth_encr_pair);
      }
    } else {
    }
    wiphy->max_num_pmkids = (u8 )caps->num_pmkids;
  } else {
    wiphy->max_num_pmkids = 0U;
  }
  return (retval);
}
}
static void rndis_do_cqm(struct usbnet *usbdev , s32 rssi )
{
  struct rndis_wlan_private *priv ;
  struct rndis_wlan_private *tmp ;
  enum nl80211_cqm_rssi_threshold_event event ;
  int thold ;
  int hyst ;
  int last_event ;
  {
  {
  tmp = get_rndis_wlan_priv(usbdev);
  priv = tmp;
  }
  if (priv->cqm_rssi_thold >= 0 || rssi >= 0) {
    return;
  } else {
  }
  if (priv->infra_mode != 1) {
    return;
  } else {
  }
  last_event = priv->last_cqm_event_rssi;
  thold = priv->cqm_rssi_thold;
  hyst = (int )priv->cqm_rssi_hyst;
  if (rssi < thold && (last_event == 0 || rssi < last_event - hyst)) {
    event = 0;
  } else
  if (rssi > thold && (last_event == 0 || rssi > last_event + hyst)) {
    event = 1;
  } else {
    return;
  }
  {
  priv->last_cqm_event_rssi = rssi;
  cfg80211_cqm_rssi_notify(usbdev->net, event, 208U);
  }
  return;
}
}
static void rndis_device_poller(struct work_struct *work )
{
  struct rndis_wlan_private *priv ;
  struct work_struct const *__mptr ;
  struct usbnet *usbdev ;
  __le32 rssi ;
  __le32 tmp ;
  int len ;
  int ret ;
  int j ;
  int update_jiffies ;
  void *buf ;
  bool tmp___0 ;
  int tmp___1 ;
  struct _ddebug descriptor ;
  int tmp___2 ;
  long tmp___3 ;
  unsigned long tmp___4 ;
  unsigned long tmp___5 ;
  unsigned long tmp___6 ;
  long ret___0 ;
  int __x___0 ;
  {
  {
  __mptr = (struct work_struct const *)work;
  priv = (struct rndis_wlan_private *)__mptr + 0xfffffffffffffc38UL;
  usbdev = priv->usbdev;
  update_jiffies = 250;
  tmp___0 = is_associated(usbdev);
  }
  if (tmp___0) {
    tmp___1 = 0;
  } else {
    tmp___1 = 1;
  }
  if (tmp___1) {
    if ((priv->device_type == 1 && (int )priv->radio_on) && (unsigned long )priv->scan_request == (unsigned long )((struct cfg80211_scan_request *)0)) {
      {
      rndis_check_bssid_list(usbdev, (u8 *)0U, (bool *)0);
      rndis_start_bssid_list_scan(usbdev);
      }
    } else {
    }
    goto end;
  } else {
  }
  {
  len = 4;
  ret = rndis_query_oid(usbdev, 218169862U, (void *)(& rssi), & len);
  }
  if (ret == 0) {
    {
    priv->last_qual = level_to_qual((int )rssi);
    rndis_do_cqm(usbdev, (s32 )rssi);
    }
  } else {
  }
  {
  descriptor.modname = "rndis_wlan";
  descriptor.function = "rndis_device_poller";
  descriptor.filename = "drivers/net/wireless/rndis_wlan.c";
  descriptor.format = "dev-poller: RNDIS_OID_802_11_RSSI -> %d, rssi:%d, qual: %d\n";
  descriptor.lineno = 3227U;
  descriptor.flags = 0U;
  tmp___3 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  }
  if (tmp___3 != 0L) {
    {
    tmp___2 = level_to_qual((int )rssi);
    __dynamic_netdev_dbg(& descriptor, (struct net_device const *)usbdev->net, "dev-poller: RNDIS_OID_802_11_RSSI -> %d, rssi:%d, qual: %d\n",
                         ret, rssi, tmp___2);
    }
  } else {
  }
  if (priv->param_workaround_interval != 0U && priv->last_qual <= 25) {
    {
    tmp___4 = msecs_to_jiffies(priv->param_workaround_interval);
    j = (int )tmp___4;
    }
    if (j > 250) {
      j = 250;
    } else
    if (j <= 0) {
      j = 1;
    } else {
    }
    {
    update_jiffies = j;
    tmp = 1U;
    rndis_set_oid(usbdev, 218169626U, (void const *)(& tmp), 4);
    len = 1025;
    buf = kmalloc((size_t )len, 208U);
    }
    if ((unsigned long )buf == (unsigned long )((void *)0)) {
      goto end;
    } else {
    }
    {
    rndis_query_oid(usbdev, 218169879U, buf, & len);
    kfree((void const *)buf);
    }
  } else {
  }
  end: ;
  if (update_jiffies > 249) {
    {
    tmp___5 = round_jiffies_relative((unsigned long )update_jiffies);
    update_jiffies = (int )tmp___5;
    }
  } else {
    {
    tmp___6 = round_jiffies_relative((unsigned long )update_jiffies);
    j = (int )tmp___6;
    __x___0 = j - update_jiffies;
    ret___0 = (long )(__x___0 < 0 ? - __x___0 : __x___0);
    }
    if (ret___0 <= 10L) {
      update_jiffies = j;
    } else {
    }
  }
  {
  queue_delayed_work(priv->workqueue, & priv->dev_poller_work, (unsigned long )update_jiffies);
  }
  return;
}
}
static void rndis_copy_module_params(struct usbnet *usbdev , int device_type )
{
  struct rndis_wlan_private *priv ;
  struct rndis_wlan_private *tmp ;
  unsigned char tmp___0 ;
  unsigned char tmp___1 ;
  int tmp___2 ;
  {
  {
  tmp = get_rndis_wlan_priv(usbdev);
  priv = tmp;
  priv->device_type = device_type;
  priv->param_country[0] = modparam_country[0];
  priv->param_country[1] = modparam_country[1];
  priv->param_country[2] = 0;
  priv->param_frameburst = modparam_frameburst;
  priv->param_afterburner = modparam_afterburner;
  priv->param_power_save = modparam_power_save;
  priv->param_power_output = modparam_power_output;
  priv->param_roamtrigger = modparam_roamtrigger;
  priv->param_roamdelta = modparam_roamdelta;
  tmp___0 = __toupper((int )((unsigned char )priv->param_country[0]));
  priv->param_country[0] = (char )tmp___0;
  tmp___1 = __toupper((int )((unsigned char )priv->param_country[1]));
  priv->param_country[1] = (char )tmp___1;
  tmp___2 = strcmp((char const *)(& priv->param_country), "EU");
  }
  if (tmp___2 == 0) {
    {
    strcpy((char *)(& priv->param_country), "FI");
    }
  } else {
  }
  if (priv->param_power_save < 0) {
    priv->param_power_save = 0;
  } else
  if (priv->param_power_save > 2) {
    priv->param_power_save = 2;
  } else {
  }
  if (priv->param_power_output < 0) {
    priv->param_power_output = 0;
  } else
  if (priv->param_power_output > 3) {
    priv->param_power_output = 3;
  } else {
  }
  if (priv->param_roamtrigger < -80) {
    priv->param_roamtrigger = -80;
  } else
  if (priv->param_roamtrigger >= -59) {
    priv->param_roamtrigger = -60;
  } else {
  }
  if (priv->param_roamdelta < 0) {
    priv->param_roamdelta = 0;
  } else
  if (priv->param_roamdelta > 2) {
    priv->param_roamdelta = 2;
  } else {
  }
  if (modparam_workaround_interval < 0) {
    priv->param_workaround_interval = 500U;
  } else {
    priv->param_workaround_interval = (u32 )modparam_workaround_interval;
  }
  return;
}
}
static int unknown_early_init(struct usbnet *usbdev )
{
  {
  {
  rndis_copy_module_params(usbdev, 0);
  }
  return (0);
}
}
static int bcm4320a_early_init(struct usbnet *usbdev )
{
  {
  {
  rndis_copy_module_params(usbdev, 1);
  }
  return (0);
}
}
static int bcm4320b_early_init(struct usbnet *usbdev )
{
  struct rndis_wlan_private *priv ;
  struct rndis_wlan_private *tmp ;
  char buf[8U] ;
  {
  {
  tmp = get_rndis_wlan_priv(usbdev);
  priv = tmp;
  rndis_copy_module_params(usbdev, 2);
  rndis_set_config_parameter_str(usbdev, (char *)"Country", (char *)(& priv->param_country));
  rndis_set_config_parameter_str(usbdev, (char *)"FrameBursting", priv->param_frameburst != 0 ? (char *)"1" : (char *)"0");
  rndis_set_config_parameter_str(usbdev, (char *)"Afterburner", priv->param_afterburner != 0 ? (char *)"1" : (char *)"0");
  sprintf((char *)(& buf), "%d", priv->param_power_save);
  rndis_set_config_parameter_str(usbdev, (char *)"PowerSaveMode", (char *)(& buf));
  sprintf((char *)(& buf), "%d", priv->param_power_output);
  rndis_set_config_parameter_str(usbdev, (char *)"PwrOut", (char *)(& buf));
  sprintf((char *)(& buf), "%d", priv->param_roamtrigger);
  rndis_set_config_parameter_str(usbdev, (char *)"RoamTrigger", (char *)(& buf));
  sprintf((char *)(& buf), "%d", priv->param_roamdelta);
  rndis_set_config_parameter_str(usbdev, (char *)"RoamDelta", (char *)(& buf));
  }
  return (0);
}
}
static struct net_device_ops const rndis_wlan_netdev_ops =
     {0, 0, & usbnet_open, & usbnet_stop, & usbnet_start_xmit, 0, 0, & rndis_wlan_set_multicast_list,
    & eth_mac_addr, & eth_validate_addr, 0, 0, 0, 0, & usbnet_tx_timeout, 0, 0, 0,
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0};
static int rndis_wlan_bind(struct usbnet *usbdev , struct usb_interface *intf )
{
  struct wiphy *wiphy ;
  struct rndis_wlan_private *priv ;
  int retval ;
  int len ;
  __le32 tmp ;
  void *tmp___0 ;
  struct lock_class_key __key ;
  struct lock_class_key __key___0 ;
  char const *__lock_name ;
  struct workqueue_struct *tmp___1 ;
  struct lock_class_key __key___1 ;
  atomic_long_t __constr_expr_0 ;
  struct lock_class_key __key___2 ;
  atomic_long_t __constr_expr_1 ;
  struct lock_class_key __key___3 ;
  struct lock_class_key __key___4 ;
  atomic_long_t __constr_expr_2 ;
  struct lock_class_key __key___5 ;
  int tmp___2 ;
  {
  {
  wiphy = wiphy_new(& rndis_config_ops, 4032);
  }
  if ((unsigned long )wiphy == (unsigned long )((struct wiphy *)0)) {
    return (-12);
  } else {
  }
  {
  tmp___0 = wiphy_priv(wiphy);
  priv = (struct rndis_wlan_private *)tmp___0;
  (usbdev->net)->ieee80211_ptr = & priv->wdev;
  priv->wdev.wiphy = wiphy;
  priv->wdev.iftype = 2;
  usbdev->driver_priv = (void *)priv;
  priv->usbdev = usbdev;
  __mutex_init(& priv->command_lock, "&priv->command_lock", & __key);
  __lock_name = "\"%s\"(\"rndis_wlan\")";
  tmp___1 = __alloc_workqueue_key("%s", 10U, 1, & __key___0, __lock_name, (char *)"rndis_wlan");
  priv->workqueue = tmp___1;
  __init_work(& priv->work, 0);
  __constr_expr_0.counter = 137438953408L;
  priv->work.data = __constr_expr_0;
  lockdep_init_map(& priv->work.lockdep_map, "(&priv->work)", & __key___1, 0);
  INIT_LIST_HEAD(& priv->work.entry);
  priv->work.func = & rndis_wlan_worker;
  __init_work(& priv->dev_poller_work.work, 0);
  __constr_expr_1.counter = 137438953408L;
  priv->dev_poller_work.work.data = __constr_expr_1;
  lockdep_init_map(& priv->dev_poller_work.work.lockdep_map, "(&(&priv->dev_poller_work)->work)",
                   & __key___2, 0);
  INIT_LIST_HEAD(& priv->dev_poller_work.work.entry);
  priv->dev_poller_work.work.func = & rndis_device_poller;
  init_timer_key(& priv->dev_poller_work.timer, 2U, "(&(&priv->dev_poller_work)->timer)",
                 & __key___3);
  priv->dev_poller_work.timer.function = & delayed_work_timer_fn;
  priv->dev_poller_work.timer.data = (unsigned long )(& priv->dev_poller_work);
  __init_work(& priv->scan_work.work, 0);
  __constr_expr_2.counter = 137438953408L;
  priv->scan_work.work.data = __constr_expr_2;
  lockdep_init_map(& priv->scan_work.work.lockdep_map, "(&(&priv->scan_work)->work)",
                   & __key___4, 0);
  INIT_LIST_HEAD(& priv->scan_work.work.entry);
  priv->scan_work.work.func = & rndis_get_scan_results;
  init_timer_key(& priv->scan_work.timer, 2U, "(&(&priv->scan_work)->timer)", & __key___5);
  priv->scan_work.timer.function = & delayed_work_timer_fn;
  priv->scan_work.timer.data = (unsigned long )(& priv->scan_work);
  retval = generic_rndis_bind(usbdev, intf, 2);
  }
  if (retval < 0) {
    goto fail;
  } else {
  }
  {
  (usbdev->net)->netdev_ops = & rndis_wlan_netdev_ops;
  tmp = 9U;
  retval = rndis_set_oid(usbdev, 65806U, (void const *)(& tmp), 4);
  len = 4;
  retval = rndis_query_oid(usbdev, 16843012U, (void *)(& tmp), & len);
  priv->multicast_size = (int )tmp;
  }
  if (retval < 0 || priv->multicast_size < 0) {
    priv->multicast_size = 0;
  } else {
  }
  if (priv->multicast_size > 0) {
    (usbdev->net)->flags = (usbdev->net)->flags | 4096U;
  } else {
    (usbdev->net)->flags = (usbdev->net)->flags & 4294963199U;
  }
  {
  memcpy((void *)(& wiphy->perm_addr), (void const *)(usbdev->net)->dev_addr, 6UL);
  wiphy->privid = (void const *)rndis_wiphy_privid;
  wiphy->interface_modes = 6U;
  wiphy->max_scan_ssids = 1U;
  rndis_wlan_get_caps(usbdev, wiphy);
  memcpy((void *)(& priv->channels), (void const *)(& rndis_channels), 784UL);
  memcpy((void *)(& priv->rates), (void const *)(& rndis_rates), 144UL);
  priv->band.channels = (struct ieee80211_channel *)(& priv->channels);
  priv->band.n_channels = 14;
  priv->band.bitrates = (struct ieee80211_rate *)(& priv->rates);
  priv->band.n_bitrates = 12;
  wiphy->bands[0] = & priv->band;
  wiphy->signal_type = 2;
  memcpy((void *)(& priv->cipher_suites), (void const *)(& rndis_cipher_suites),
         16UL);
  wiphy->cipher_suites = (u32 const *)(& priv->cipher_suites);
  wiphy->n_cipher_suites = 4;
  set_wiphy_dev(wiphy, & (usbdev->udev)->dev);
  tmp___2 = wiphy_register(wiphy);
  }
  if (tmp___2 != 0) {
    retval = -19;
    goto fail;
  } else {
  }
  {
  set_default_iw_params(usbdev);
  priv->power_mode = -1;
  rndis_set_wiphy_params(wiphy, 12U);
  priv->radio_on = 0;
  disassociate(usbdev, 0);
  netif_carrier_off(usbdev->net);
  }
  return (0);
  fail:
  {
  cancel_delayed_work_sync(& priv->dev_poller_work);
  cancel_delayed_work_sync(& priv->scan_work);
  cancel_work_sync(& priv->work);
  flush_workqueue(priv->workqueue);
  destroy_workqueue(priv->workqueue);
  wiphy_free(wiphy);
  }
  return (retval);
}
}
static void rndis_wlan_unbind(struct usbnet *usbdev , struct usb_interface *intf )
{
  struct rndis_wlan_private *priv ;
  struct rndis_wlan_private *tmp ;
  {
  {
  tmp = get_rndis_wlan_priv(usbdev);
  priv = tmp;
  disassociate(usbdev, 0);
  cancel_delayed_work_sync(& priv->dev_poller_work);
  cancel_delayed_work_sync(& priv->scan_work);
  cancel_work_sync(& priv->work);
  flush_workqueue(priv->workqueue);
  destroy_workqueue(priv->workqueue);
  rndis_unbind(usbdev, intf);
  wiphy_unregister(priv->wdev.wiphy);
  wiphy_free(priv->wdev.wiphy);
  }
  return;
}
}
static int rndis_wlan_reset(struct usbnet *usbdev )
{
  struct rndis_wlan_private *priv ;
  struct rndis_wlan_private *tmp ;
  int retval ;
  struct _ddebug descriptor ;
  long tmp___0 ;
  unsigned long tmp___1 ;
  int tmp___2 ;
  {
  {
  tmp = get_rndis_wlan_priv(usbdev);
  priv = tmp;
  descriptor.modname = "rndis_wlan";
  descriptor.function = "rndis_wlan_reset";
  descriptor.filename = "drivers/net/wireless/rndis_wlan.c";
  descriptor.format = "%s()\n";
  descriptor.lineno = 3539U;
  descriptor.flags = 0U;
  tmp___0 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  }
  if (tmp___0 != 0L) {
    {
    __dynamic_netdev_dbg(& descriptor, (struct net_device const *)usbdev->net, "%s()\n",
                         "rndis_wlan_reset");
    }
  } else {
  }
  {
  retval = rndis_reset(usbdev);
  }
  if (retval != 0) {
    {
    netdev_warn((struct net_device const *)usbdev->net, "rndis_reset failed: %d\n",
                retval);
    }
  } else {
  }
  {
  set_multicast_list(usbdev);
  tmp___1 = round_jiffies_relative(250UL);
  queue_delayed_work(priv->workqueue, & priv->dev_poller_work, tmp___1);
  tmp___2 = deauthenticate(usbdev);
  }
  return (tmp___2);
}
}
static int rndis_wlan_stop(struct usbnet *usbdev )
{
  struct rndis_wlan_private *priv ;
  struct rndis_wlan_private *tmp ;
  int retval ;
  __le32 filter ;
  struct _ddebug descriptor ;
  long tmp___0 ;
  {
  {
  tmp = get_rndis_wlan_priv(usbdev);
  priv = tmp;
  descriptor.modname = "rndis_wlan";
  descriptor.function = "rndis_wlan_stop";
  descriptor.filename = "drivers/net/wireless/rndis_wlan.c";
  descriptor.format = "%s()\n";
  descriptor.lineno = 3561U;
  descriptor.flags = 0U;
  tmp___0 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  }
  if (tmp___0 != 0L) {
    {
    __dynamic_netdev_dbg(& descriptor, (struct net_device const *)usbdev->net, "%s()\n",
                         "rndis_wlan_stop");
    }
  } else {
  }
  {
  retval = disassociate(usbdev, 0);
  priv->work_pending = 0UL;
  cancel_delayed_work_sync(& priv->dev_poller_work);
  cancel_delayed_work_sync(& priv->scan_work);
  cancel_work_sync(& priv->work);
  flush_workqueue(priv->workqueue);
  }
  if ((unsigned long )priv->scan_request != (unsigned long )((struct cfg80211_scan_request *)0)) {
    {
    cfg80211_scan_done(priv->scan_request, 1);
    priv->scan_request = (struct cfg80211_scan_request *)0;
    }
  } else {
  }
  {
  filter = 0U;
  rndis_set_oid(usbdev, 65806U, (void const *)(& filter), 4);
  }
  return (retval);
}
}
static struct driver_info const bcm4320b_info =
     {(char *)"Wireless RNDIS device, BCM4320b based", 408, & rndis_wlan_bind, & rndis_wlan_unbind,
    & rndis_wlan_reset, & rndis_wlan_stop, 0, 0, & rndis_status, 0, & rndis_rx_fixup,
    & rndis_tx_fixup, & bcm4320b_early_init, & rndis_wlan_indication, 0, 0, 0UL};
static struct driver_info const bcm4320a_info =
     {(char *)"Wireless RNDIS device, BCM4320a based", 408, & rndis_wlan_bind, & rndis_wlan_unbind,
    & rndis_wlan_reset, & rndis_wlan_stop, 0, 0, & rndis_status, 0, & rndis_rx_fixup,
    & rndis_tx_fixup, & bcm4320a_early_init, & rndis_wlan_indication, 0, 0, 0UL};
static struct driver_info const rndis_wlan_info =
     {(char *)"Wireless RNDIS device", 408, & rndis_wlan_bind, & rndis_wlan_unbind,
    & rndis_wlan_reset, & rndis_wlan_stop, 0, 0, & rndis_status, 0, & rndis_rx_fixup,
    & rndis_tx_fixup, & unknown_early_init, & rndis_wlan_indication, 0, 0, 0UL};
static struct usb_device_id const products[15U] =
  { {899U, 1041U, 188U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, 2U, 2U, 255U, (unsigned char)0, (unsigned long )(& bcm4320b_info)},
        {899U,
      2991U, 283U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, 2U, 2U, 255U, (unsigned char)0, (unsigned long )(& bcm4320b_info)},
        {899U,
      1293U, 283U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, 2U, 2U, 255U, (unsigned char)0, (unsigned long )(& bcm4320b_info)},
        {899U,
      6041U, 283U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, 2U, 2U, 255U, (unsigned char)0, (unsigned long )(& bcm4320b_info)},
        {899U,
      5041U, 20U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, 2U, 2U, 255U, (unsigned char)0, (unsigned long )(& bcm4320b_info)},
        {899U,
      5041U, 38U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, 2U, 2U, 255U, (unsigned char)0, (unsigned long )(& bcm4320b_info)},
        {899U,
      2821U, 5911U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, 2U, 2U, 255U, (unsigned char)0, (unsigned long )(& bcm4320b_info)},
        {899U,
      2652U, 53531U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, 2U, 2U, 255U, (unsigned char)0, (unsigned long )(& bcm4320b_info)},
        {899U,
      5776U, 1813U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, 2U, 2U, 255U, (unsigned char)0, (unsigned long )(& bcm4320b_info)},
        {899U,
      5041U, 14U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, 2U, 2U, 255U, (unsigned char)0, (unsigned long )(& bcm4320a_info)},
        {899U,
      2991U, 273U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, 2U, 2U, 255U, (unsigned char)0, (unsigned long )(& bcm4320a_info)},
        {899U,
      1041U, 75U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, 2U, 2U, 255U, (unsigned char)0, (unsigned long )(& bcm4320a_info)},
        {896U,
      (unsigned short)0, (unsigned short)0, (unsigned short)0, (unsigned short)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, 2U, 2U, 255U, (unsigned char)0,
      (unsigned long )(& rndis_wlan_info)},
        {896U, (unsigned short)0, (unsigned short)0, (unsigned short)0, (unsigned short)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, 239U, 1U, 1U, (unsigned char)0,
      (unsigned long )(& rndis_wlan_info)}};
struct usb_device_id const __mod_usb_device_table ;
static struct usb_driver rndis_wlan_driver =
     {"rndis_wlan", & usbnet_probe, & usbnet_disconnect, 0, & usbnet_suspend, & usbnet_resume,
    0, 0, 0, (struct usb_device_id const *)(& products), {{{{{{0U}}, 0U, 0U, 0,
                                                               {0, {0, 0}, 0, 0, 0UL}}}},
                                                            {0, 0}}, {{0, 0, 0, 0,
                                                                       (_Bool)0, 0,
                                                                       0, 0, 0, 0,
                                                                       0, 0, 0, 0,
                                                                       0}, 0}, 0U,
    0U, 1U, 0U};
static int rndis_wlan_driver_init(void)
{
  int tmp ;
  {
  {
  tmp = ldv_usb_register_driver_21(& rndis_wlan_driver, & __this_module, "rndis_wlan");
  }
  return (tmp);
}
}
static void rndis_wlan_driver_exit(void)
{
  {
  {
  ldv_usb_deregister_22(& rndis_wlan_driver);
  }
  return;
}
}
void ldv_EMGentry_exit_rndis_wlan_driver_exit_11_2(void (*arg0)(void) ) ;
int ldv_EMGentry_init_rndis_wlan_driver_init_11_15(int (*arg0)(void) ) ;
void ldv_allocate_external_0(void) ;
void ldv_dispatch_deregister_9_1(struct usb_driver *arg0 ) ;
void ldv_dispatch_deregister_dummy_factory_7_11_4(void) ;
void ldv_dispatch_deregister_dummy_resourceless_instance_3_11_5(void) ;
void ldv_dispatch_deregister_io_instance_4_11_6(void) ;
void ldv_dispatch_deregister_io_instance_5_11_7(void) ;
void ldv_dispatch_instance_deregister_6_2(struct timer_list *arg0 ) ;
void ldv_dispatch_instance_deregister_8_2(struct usb_driver *arg0 ) ;
void ldv_dispatch_instance_register_6_3(struct timer_list *arg0 ) ;
void ldv_dispatch_instance_register_8_3(struct usb_driver *arg0 ) ;
void ldv_dispatch_register_10_2(struct usb_driver *arg0 ) ;
void ldv_dispatch_register_dummy_factory_7_11_8(void) ;
void ldv_dispatch_register_dummy_resourceless_instance_3_11_9(void) ;
void ldv_dispatch_register_io_instance_4_11_10(void) ;
void ldv_dispatch_register_io_instance_5_11_11(void) ;
void ldv_dummy_resourceless_instance_callback_0_10(int (*arg0)(struct net_device * ) ,
                                                   struct net_device *arg1 ) ;
void ldv_dummy_resourceless_instance_callback_0_11(void (*arg0)(struct net_device * ) ,
                                                   struct net_device *arg1 ) ;
void ldv_dummy_resourceless_instance_callback_0_12(int (*arg0)(struct net_device * ) ,
                                                   struct net_device *arg1 ) ;
void ldv_dummy_resourceless_instance_callback_0_3(int (*arg0)(struct net_device * ) ,
                                                  struct net_device *arg1 ) ;
void ldv_dummy_resourceless_instance_callback_0_7(int (*arg0)(struct net_device * ,
                                                              void * ) , struct net_device *arg1 ,
                                                  void *arg2 ) ;
void ldv_dummy_resourceless_instance_callback_0_8(void (*arg0)(struct net_device * ) ,
                                                  struct net_device *arg1 ) ;
void ldv_dummy_resourceless_instance_callback_0_9(enum netdev_tx (*arg0)(struct sk_buff * ,
                                                                         struct net_device * ) ,
                                                  struct sk_buff *arg1 , struct net_device *arg2 ) ;
void ldv_entry_EMGentry_11(void *arg0 ) ;
int main(void) ;
void ldv_initialize_external_data(void) ;
void ldv_io_instance_callback_1_21(int (*arg0)(struct wiphy * , struct net_device * ,
                                               enum nl80211_iftype , unsigned int * ,
                                               struct vif_params * ) , struct wiphy *arg1 ,
                                   struct net_device *arg2 , enum nl80211_iftype arg3 ,
                                   unsigned int *arg4 , struct vif_params *arg5 ) ;
void ldv_io_instance_callback_1_24(int (*arg0)(struct wiphy * , struct net_device * ,
                                               unsigned char , _Bool , unsigned char * ) ,
                                   struct wiphy *arg1 , struct net_device *arg2 ,
                                   unsigned char arg3 , _Bool arg4 , unsigned char *arg5 ) ;
void ldv_io_instance_callback_1_27(int (*arg0)(struct wiphy * , struct net_device * ,
                                               struct cfg80211_pmksa * ) , struct wiphy *arg1 ,
                                   struct net_device *arg2 , struct cfg80211_pmksa *arg3 ) ;
void ldv_io_instance_callback_1_28(int (*arg0)(struct wiphy * , struct net_device * ,
                                               int , unsigned char * , struct station_info * ) ,
                                   struct wiphy *arg1 , struct net_device *arg2 ,
                                   int arg3 , unsigned char *arg4 , struct station_info *arg5 ) ;
void ldv_io_instance_callback_1_31(int (*arg0)(struct wiphy * , struct net_device * ) ,
                                   struct wiphy *arg1 , struct net_device *arg2 ) ;
void ldv_io_instance_callback_1_32(int (*arg0)(struct wiphy * , struct net_device * ,
                                               unsigned char * , struct station_info * ) ,
                                   struct wiphy *arg1 , struct net_device *arg2 ,
                                   unsigned char *arg3 , struct station_info *arg4 ) ;
void ldv_io_instance_callback_1_35(int (*arg0)(struct wiphy * , struct wireless_dev * ,
                                               int * ) , struct wiphy *arg1 , struct wireless_dev *arg2 ,
                                   int *arg3 ) ;
void ldv_io_instance_callback_1_38(int (*arg0)(struct wiphy * , struct net_device * ,
                                               struct cfg80211_ibss_params * ) , struct wiphy *arg1 ,
                                   struct net_device *arg2 , struct cfg80211_ibss_params *arg3 ) ;
void ldv_io_instance_callback_1_39(int (*arg0)(struct wiphy * , struct net_device * ) ,
                                   struct wiphy *arg1 , struct net_device *arg2 ) ;
void ldv_io_instance_callback_1_4(int (*arg0)(struct wiphy * , struct net_device * ,
                                              unsigned char , _Bool , unsigned char * ,
                                              struct key_params * ) , struct wiphy *arg1 ,
                                  struct net_device *arg2 , unsigned char arg3 , _Bool arg4 ,
                                  unsigned char *arg5 , struct key_params *arg6 ) ;
void ldv_io_instance_callback_1_40(int (*arg0)(struct wiphy * , struct cfg80211_scan_request * ) ,
                                   struct wiphy *arg1 , struct cfg80211_scan_request *arg2 ) ;
void ldv_io_instance_callback_1_41(int (*arg0)(struct wiphy * , struct net_device * ,
                                               int , unsigned int ) , struct wiphy *arg1 ,
                                   struct net_device *arg2 , int arg3 , unsigned int arg4 ) ;
void ldv_io_instance_callback_1_44(int (*arg0)(struct wiphy * , struct net_device * ,
                                               unsigned char , _Bool , _Bool ) ,
                                   struct wiphy *arg1 , struct net_device *arg2 ,
                                   unsigned char arg3 , _Bool arg4 , _Bool arg5 ) ;
void ldv_io_instance_callback_1_47(int (*arg0)(struct wiphy * , struct net_device * ,
                                               struct cfg80211_pmksa * ) , struct wiphy *arg1 ,
                                   struct net_device *arg2 , struct cfg80211_pmksa *arg3 ) ;
void ldv_io_instance_callback_1_48(int (*arg0)(struct wiphy * , struct net_device * ,
                                               _Bool , int ) , struct wiphy *arg1 ,
                                   struct net_device *arg2 , _Bool arg3 , int arg4 ) ;
void ldv_io_instance_callback_1_51(int (*arg0)(struct wiphy * , struct wireless_dev * ,
                                               enum nl80211_tx_power_setting , int ) ,
                                   struct wiphy *arg1 , struct wireless_dev *arg2 ,
                                   enum nl80211_tx_power_setting arg3 , int arg4 ) ;
void ldv_io_instance_callback_1_54(int (*arg0)(struct wiphy * , unsigned int ) ,
                                   struct wiphy *arg1 , unsigned int arg2 ) ;
void ldv_io_instance_callback_2_17(void (*arg0)(struct usbnet * , void * , int ) ,
                                   struct usbnet *arg1 , void *arg2 , int arg3 ) ;
void ldv_io_instance_callback_2_20(int (*arg0)(struct usbnet * ) , struct usbnet *arg1 ) ;
void ldv_io_instance_callback_2_21(int (*arg0)(struct usbnet * , struct sk_buff * ) ,
                                   struct usbnet *arg1 , struct sk_buff *arg2 ) ;
void ldv_io_instance_callback_2_22(void (*arg0)(struct usbnet * , struct urb * ) ,
                                   struct usbnet *arg1 , struct urb *arg2 ) ;
void ldv_io_instance_callback_2_23(struct sk_buff *(*arg0)(struct usbnet * , struct sk_buff * ,
                                                           unsigned int ) , struct usbnet *arg1 ,
                                   struct sk_buff *arg2 , unsigned int arg3 ) ;
void ldv_io_instance_callback_2_26(void (*arg0)(struct usbnet * , struct usb_interface * ) ,
                                   struct usbnet *arg1 , struct usb_interface *arg2 ) ;
void ldv_io_instance_callback_2_4(int (*arg0)(struct usbnet * ) , struct usbnet *arg1 ) ;
void ldv_io_instance_callback_3_17(void (*arg0)(struct usbnet * , void * , int ) ,
                                   struct usbnet *arg1 , void *arg2 , int arg3 ) ;
void ldv_io_instance_callback_3_20(int (*arg0)(struct usbnet * ) , struct usbnet *arg1 ) ;
void ldv_io_instance_callback_3_21(int (*arg0)(struct usbnet * , struct sk_buff * ) ,
                                   struct usbnet *arg1 , struct sk_buff *arg2 ) ;
void ldv_io_instance_callback_3_22(void (*arg0)(struct usbnet * , struct urb * ) ,
                                   struct usbnet *arg1 , struct urb *arg2 ) ;
void ldv_io_instance_callback_3_23(struct sk_buff *(*arg0)(struct usbnet * , struct sk_buff * ,
                                                           unsigned int ) , struct usbnet *arg1 ,
                                   struct sk_buff *arg2 , unsigned int arg3 ) ;
void ldv_io_instance_callback_3_26(void (*arg0)(struct usbnet * , struct usb_interface * ) ,
                                   struct usbnet *arg1 , struct usb_interface *arg2 ) ;
void ldv_io_instance_callback_3_4(int (*arg0)(struct usbnet * ) , struct usbnet *arg1 ) ;
void ldv_io_instance_callback_4_17(void (*arg0)(struct usbnet * , void * , int ) ,
                                   struct usbnet *arg1 , void *arg2 , int arg3 ) ;
void ldv_io_instance_callback_4_20(int (*arg0)(struct usbnet * ) , struct usbnet *arg1 ) ;
void ldv_io_instance_callback_4_21(int (*arg0)(struct usbnet * , struct sk_buff * ) ,
                                   struct usbnet *arg1 , struct sk_buff *arg2 ) ;
void ldv_io_instance_callback_4_22(void (*arg0)(struct usbnet * , struct urb * ) ,
                                   struct usbnet *arg1 , struct urb *arg2 ) ;
void ldv_io_instance_callback_4_23(struct sk_buff *(*arg0)(struct usbnet * , struct sk_buff * ,
                                                           unsigned int ) , struct usbnet *arg1 ,
                                   struct sk_buff *arg2 , unsigned int arg3 ) ;
void ldv_io_instance_callback_4_26(void (*arg0)(struct usbnet * , struct usb_interface * ) ,
                                   struct usbnet *arg1 , struct usb_interface *arg2 ) ;
void ldv_io_instance_callback_4_4(int (*arg0)(struct usbnet * ) , struct usbnet *arg1 ) ;
int ldv_io_instance_probe_1_11(int (*arg0)(struct wiphy * , struct net_device * ,
                                           struct cfg80211_connect_params * ) , struct wiphy *arg1 ,
                               struct net_device *arg2 , struct cfg80211_connect_params *arg3 ) ;
int ldv_io_instance_probe_2_11(int (*arg0)(struct usbnet * , struct usb_interface * ) ,
                               struct usbnet *arg1 , struct usb_interface *arg2 ) ;
int ldv_io_instance_probe_3_11(int (*arg0)(struct usbnet * , struct usb_interface * ) ,
                               struct usbnet *arg1 , struct usb_interface *arg2 ) ;
int ldv_io_instance_probe_4_11(int (*arg0)(struct usbnet * , struct usb_interface * ) ,
                               struct usbnet *arg1 , struct usb_interface *arg2 ) ;
void ldv_io_instance_release_1_2(int (*arg0)(struct wiphy * , struct net_device * ,
                                             unsigned short ) , struct wiphy *arg1 ,
                                 struct net_device *arg2 , unsigned short arg3 ) ;
void ldv_io_instance_release_2_2(int (*arg0)(struct usbnet * ) , struct usbnet *arg1 ) ;
void ldv_io_instance_release_3_2(int (*arg0)(struct usbnet * ) , struct usbnet *arg1 ) ;
void ldv_io_instance_release_4_2(int (*arg0)(struct usbnet * ) , struct usbnet *arg1 ) ;
void ldv_net_dummy_resourceless_instance_0(void *arg0 ) ;
void ldv_struct_cfg80211_ops_io_instance_1(void *arg0 ) ;
void ldv_struct_driver_info_io_instance_2(void *arg0 ) ;
void ldv_struct_driver_info_io_instance_3(void *arg0 ) ;
void ldv_struct_driver_info_io_instance_4(void *arg0 ) ;
int ldv_switch_0(void) ;
int ldv_switch_1(void) ;
int ldv_switch_2(void) ;
int ldv_switch_3(void) ;
void ldv_switch_automaton_state_0_1(void) ;
void ldv_switch_automaton_state_0_5(void) ;
void ldv_switch_automaton_state_1_14(void) ;
void ldv_switch_automaton_state_1_5(void) ;
void ldv_switch_automaton_state_2_14(void) ;
void ldv_switch_automaton_state_2_5(void) ;
void ldv_switch_automaton_state_3_14(void) ;
void ldv_switch_automaton_state_3_5(void) ;
void ldv_switch_automaton_state_4_14(void) ;
void ldv_switch_automaton_state_4_5(void) ;
void ldv_switch_automaton_state_5_1(void) ;
void ldv_switch_automaton_state_5_3(void) ;
void ldv_switch_automaton_state_6_1(void) ;
void ldv_switch_automaton_state_6_4(void) ;
void ldv_switch_automaton_state_7_1(void) ;
void ldv_switch_automaton_state_7_15(void) ;
void ldv_switch_automaton_state_8_1(void) ;
void ldv_switch_automaton_state_8_4(void) ;
void ldv_timer_dummy_factory_6(void *arg0 ) ;
void ldv_timer_instance_callback_5_2(void (*arg0)(unsigned long ) , unsigned long arg1 ) ;
void ldv_timer_timer_instance_5(void *arg0 ) ;
void ldv_usb_deregister(void *arg0 , struct usb_driver *arg1 ) ;
void ldv_usb_dummy_factory_8(void *arg0 ) ;
void ldv_usb_instance_post_7_9(int (*arg0)(struct usb_interface * ) , struct usb_interface *arg1 ) ;
void ldv_usb_instance_pre_7_10(int (*arg0)(struct usb_interface * ) , struct usb_interface *arg1 ) ;
int ldv_usb_instance_probe_7_13(int (*arg0)(struct usb_interface * , struct usb_device_id * ) ,
                                struct usb_interface *arg1 , struct usb_device_id *arg2 ) ;
void ldv_usb_instance_release_7_4(void (*arg0)(struct usb_interface * ) , struct usb_interface *arg1 ) ;
void ldv_usb_instance_resume_7_7(int (*arg0)(struct usb_interface * ) , struct usb_interface *arg1 ) ;
void ldv_usb_instance_suspend_7_8(int (*arg0)(struct usb_interface * , struct pm_message ) ,
                                  struct usb_interface *arg1 , struct pm_message *arg2 ) ;
int ldv_usb_register_driver(int arg0 , struct usb_driver *arg1 , struct module *arg2 ,
                            char *arg3 ) ;
void ldv_usb_usb_instance_7(void *arg0 ) ;
int (*ldv_0_callback_ndo_open)(struct net_device * ) ;
int (*ldv_0_callback_ndo_set_mac_address)(struct net_device * , void * ) ;
void (*ldv_0_callback_ndo_set_rx_mode)(struct net_device * ) ;
enum netdev_tx (*ldv_0_callback_ndo_start_xmit)(struct sk_buff * , struct net_device * ) ;
int (*ldv_0_callback_ndo_stop)(struct net_device * ) ;
void (*ldv_0_callback_ndo_tx_timeout)(struct net_device * ) ;
int (*ldv_0_callback_ndo_validate_addr)(struct net_device * ) ;
struct net_device *ldv_0_container_net_device ;
struct sk_buff *ldv_0_container_struct_sk_buff_ptr ;
void (*ldv_11_exit_rndis_wlan_driver_exit_default)(void) ;
int (*ldv_11_init_rndis_wlan_driver_init_default)(void) ;
int ldv_11_ret_default ;
int (*ldv_1_callback_add_key)(struct wiphy * , struct net_device * , unsigned char ,
                              _Bool , unsigned char * , struct key_params * ) ;
int (*ldv_1_callback_change_virtual_intf)(struct wiphy * , struct net_device * , enum nl80211_iftype ,
                                          unsigned int * , struct vif_params * ) ;
int (*ldv_1_callback_del_key)(struct wiphy * , struct net_device * , unsigned char ,
                              _Bool , unsigned char * ) ;
int (*ldv_1_callback_del_pmksa)(struct wiphy * , struct net_device * , struct cfg80211_pmksa * ) ;
int (*ldv_1_callback_dump_station)(struct wiphy * , struct net_device * , int , unsigned char * ,
                                   struct station_info * ) ;
int (*ldv_1_callback_flush_pmksa)(struct wiphy * , struct net_device * ) ;
int (*ldv_1_callback_get_station)(struct wiphy * , struct net_device * , unsigned char * ,
                                  struct station_info * ) ;
int (*ldv_1_callback_get_tx_power)(struct wiphy * , struct wireless_dev * , int * ) ;
int (*ldv_1_callback_join_ibss)(struct wiphy * , struct net_device * , struct cfg80211_ibss_params * ) ;
int (*ldv_1_callback_leave_ibss)(struct wiphy * , struct net_device * ) ;
int (*ldv_1_callback_scan)(struct wiphy * , struct cfg80211_scan_request * ) ;
int (*ldv_1_callback_set_cqm_rssi_config)(struct wiphy * , struct net_device * , int ,
                                          unsigned int ) ;
int (*ldv_1_callback_set_default_key)(struct wiphy * , struct net_device * , unsigned char ,
                                      _Bool , _Bool ) ;
int (*ldv_1_callback_set_pmksa)(struct wiphy * , struct net_device * , struct cfg80211_pmksa * ) ;
int (*ldv_1_callback_set_power_mgmt)(struct wiphy * , struct net_device * , _Bool ,
                                     int ) ;
int (*ldv_1_callback_set_tx_power)(struct wiphy * , struct wireless_dev * , enum nl80211_tx_power_setting ,
                                   int ) ;
int (*ldv_1_callback_set_wiphy_params)(struct wiphy * , unsigned int ) ;
struct cfg80211_ops *ldv_1_container_struct_cfg80211_ops ;
unsigned int *ldv_1_ldv_param_21_3_default ;
unsigned char ldv_1_ldv_param_24_2_default ;
_Bool ldv_1_ldv_param_24_3_default ;
unsigned char *ldv_1_ldv_param_24_4_default ;
int ldv_1_ldv_param_28_2_default ;
unsigned char *ldv_1_ldv_param_28_3_default ;
unsigned short ldv_1_ldv_param_2_2_default ;
unsigned char *ldv_1_ldv_param_32_2_default ;
int *ldv_1_ldv_param_35_2_default ;
int ldv_1_ldv_param_41_2_default ;
unsigned int ldv_1_ldv_param_41_3_default ;
unsigned char ldv_1_ldv_param_44_2_default ;
_Bool ldv_1_ldv_param_44_3_default ;
_Bool ldv_1_ldv_param_44_4_default ;
_Bool ldv_1_ldv_param_48_2_default ;
int ldv_1_ldv_param_48_3_default ;
unsigned char ldv_1_ldv_param_4_2_default ;
_Bool ldv_1_ldv_param_4_3_default ;
unsigned char *ldv_1_ldv_param_4_4_default ;
int ldv_1_ldv_param_51_3_default ;
unsigned int ldv_1_ldv_param_54_1_default ;
enum nl80211_iftype ldv_1_resource_enum_nl80211_iftype ;
enum nl80211_tx_power_setting ldv_1_resource_enum_nl80211_tx_power_setting ;
struct cfg80211_connect_params *ldv_1_resource_struct_cfg80211_connect_params_ptr ;
struct cfg80211_ibss_params *ldv_1_resource_struct_cfg80211_ibss_params_ptr ;
struct cfg80211_pmksa *ldv_1_resource_struct_cfg80211_pmksa_ptr ;
struct cfg80211_scan_request *ldv_1_resource_struct_cfg80211_scan_request_ptr ;
struct key_params *ldv_1_resource_struct_key_params_ptr ;
struct net_device *ldv_1_resource_struct_net_device_ptr ;
struct station_info *ldv_1_resource_struct_station_info_ptr ;
struct vif_params *ldv_1_resource_struct_vif_params_ptr ;
struct wiphy *ldv_1_resource_struct_wiphy_ptr ;
struct wireless_dev *ldv_1_resource_struct_wireless_dev_ptr ;
int ldv_1_ret_default ;
int (*ldv_2_callback_early_init)(struct usbnet * ) ;
void (*ldv_2_callback_indication)(struct usbnet * , void * , int ) ;
int (*ldv_2_callback_reset)(struct usbnet * ) ;
int (*ldv_2_callback_rx_fixup)(struct usbnet * , struct sk_buff * ) ;
void (*ldv_2_callback_status)(struct usbnet * , struct urb * ) ;
struct sk_buff *(*ldv_2_callback_tx_fixup)(struct usbnet * , struct sk_buff * , unsigned int ) ;
void (*ldv_2_callback_unbind)(struct usbnet * , struct usb_interface * ) ;
struct driver_info *ldv_2_container_struct_driver_info ;
int ldv_2_ldv_param_17_2_default ;
unsigned int ldv_2_ldv_param_23_2_default ;
struct sk_buff *ldv_2_resource_struct_sk_buff_ptr ;
struct urb *ldv_2_resource_struct_urb_ptr ;
struct usb_interface *ldv_2_resource_struct_usb_interface_ptr ;
struct usbnet *ldv_2_resource_struct_usbnet_ptr ;
int ldv_2_ret_default ;
int (*ldv_3_callback_early_init)(struct usbnet * ) ;
void (*ldv_3_callback_indication)(struct usbnet * , void * , int ) ;
int (*ldv_3_callback_reset)(struct usbnet * ) ;
int (*ldv_3_callback_rx_fixup)(struct usbnet * , struct sk_buff * ) ;
void (*ldv_3_callback_status)(struct usbnet * , struct urb * ) ;
struct sk_buff *(*ldv_3_callback_tx_fixup)(struct usbnet * , struct sk_buff * , unsigned int ) ;
void (*ldv_3_callback_unbind)(struct usbnet * , struct usb_interface * ) ;
struct driver_info *ldv_3_container_struct_driver_info ;
int ldv_3_ldv_param_17_2_default ;
unsigned int ldv_3_ldv_param_23_2_default ;
struct sk_buff *ldv_3_resource_struct_sk_buff_ptr ;
struct urb *ldv_3_resource_struct_urb_ptr ;
struct usb_interface *ldv_3_resource_struct_usb_interface_ptr ;
struct usbnet *ldv_3_resource_struct_usbnet_ptr ;
int ldv_3_ret_default ;
int (*ldv_4_callback_early_init)(struct usbnet * ) ;
void (*ldv_4_callback_indication)(struct usbnet * , void * , int ) ;
int (*ldv_4_callback_reset)(struct usbnet * ) ;
int (*ldv_4_callback_rx_fixup)(struct usbnet * , struct sk_buff * ) ;
void (*ldv_4_callback_status)(struct usbnet * , struct urb * ) ;
struct sk_buff *(*ldv_4_callback_tx_fixup)(struct usbnet * , struct sk_buff * , unsigned int ) ;
void (*ldv_4_callback_unbind)(struct usbnet * , struct usb_interface * ) ;
struct driver_info *ldv_4_container_struct_driver_info ;
int ldv_4_ldv_param_17_2_default ;
unsigned int ldv_4_ldv_param_23_2_default ;
struct sk_buff *ldv_4_resource_struct_sk_buff_ptr ;
struct urb *ldv_4_resource_struct_urb_ptr ;
struct usb_interface *ldv_4_resource_struct_usb_interface_ptr ;
struct usbnet *ldv_4_resource_struct_usbnet_ptr ;
int ldv_4_ret_default ;
struct timer_list *ldv_5_container_timer_list ;
struct timer_list *ldv_6_container_timer_list ;
struct usb_driver *ldv_7_container_usb_driver ;
struct usb_device_id *ldv_7_ldv_param_13_1_default ;
struct pm_message *ldv_7_ldv_param_8_1_default ;
int ldv_7_probe_retval_default ;
_Bool ldv_7_reset_flag_default ;
struct usb_interface *ldv_7_resource_usb_interface ;
struct usb_device *ldv_7_usb_device_usb_device ;
struct usb_driver *ldv_8_container_usb_driver ;
int ldv_statevar_0 ;
int ldv_statevar_1 ;
int ldv_statevar_11 ;
int ldv_statevar_2 ;
int ldv_statevar_3 ;
int ldv_statevar_4 ;
int ldv_statevar_5 ;
int ldv_statevar_6 ;
int ldv_statevar_7 ;
int ldv_statevar_8 ;
int (*ldv_0_callback_ndo_open)(struct net_device * ) = & usbnet_open;
int (*ldv_0_callback_ndo_set_mac_address)(struct net_device * , void * ) = & eth_mac_addr;
void (*ldv_0_callback_ndo_set_rx_mode)(struct net_device * ) = & rndis_wlan_set_multicast_list;
enum netdev_tx (*ldv_0_callback_ndo_start_xmit)(struct sk_buff * , struct net_device * ) = & usbnet_start_xmit;
int (*ldv_0_callback_ndo_stop)(struct net_device * ) = & usbnet_stop;
void (*ldv_0_callback_ndo_tx_timeout)(struct net_device * ) = & usbnet_tx_timeout;
int (*ldv_0_callback_ndo_validate_addr)(struct net_device * ) = & eth_validate_addr;
void (*ldv_11_exit_rndis_wlan_driver_exit_default)(void) = & rndis_wlan_driver_exit;
int (*ldv_11_init_rndis_wlan_driver_init_default)(void) = & rndis_wlan_driver_init;
int (*ldv_1_callback_add_key)(struct wiphy * , struct net_device * , unsigned char ,
                              _Bool , unsigned char * , struct key_params * ) = (int (*)(struct wiphy * ,
            struct net_device * , unsigned char , _Bool , unsigned char * , struct key_params * ))(& rndis_add_key);
int (*ldv_1_callback_change_virtual_intf)(struct wiphy * , struct net_device * , enum nl80211_iftype ,
                                          unsigned int * , struct vif_params * ) = & rndis_change_virtual_intf;
int (*ldv_1_callback_del_key)(struct wiphy * , struct net_device * , unsigned char ,
                              _Bool , unsigned char * ) = (int (*)(struct wiphy * , struct net_device * , unsigned char , _Bool , unsigned char * ))(& rndis_del_key);
int (*ldv_1_callback_del_pmksa)(struct wiphy * , struct net_device * , struct cfg80211_pmksa * ) = & rndis_del_pmksa;
int (*ldv_1_callback_dump_station)(struct wiphy * , struct net_device * , int , unsigned char * ,
                                   struct station_info * ) = & rndis_dump_station;
int (*ldv_1_callback_flush_pmksa)(struct wiphy * , struct net_device * ) = & rndis_flush_pmksa;
int (*ldv_1_callback_get_station)(struct wiphy * , struct net_device * , unsigned char * ,
                                  struct station_info * ) = & rndis_get_station;
int (*ldv_1_callback_get_tx_power)(struct wiphy * , struct wireless_dev * , int * ) = & rndis_get_tx_power;
int (*ldv_1_callback_join_ibss)(struct wiphy * , struct net_device * , struct cfg80211_ibss_params * ) = & rndis_join_ibss;
int (*ldv_1_callback_leave_ibss)(struct wiphy * , struct net_device * ) = & rndis_leave_ibss;
int (*ldv_1_callback_scan)(struct wiphy * , struct cfg80211_scan_request * ) = & rndis_scan;
int (*ldv_1_callback_set_cqm_rssi_config)(struct wiphy * , struct net_device * , int ,
                                          unsigned int ) = & rndis_set_cqm_rssi_config;
int (*ldv_1_callback_set_default_key)(struct wiphy * , struct net_device * , unsigned char ,
                                      _Bool , _Bool ) = & rndis_set_default_key;
int (*ldv_1_callback_set_pmksa)(struct wiphy * , struct net_device * , struct cfg80211_pmksa * ) = & rndis_set_pmksa;
int (*ldv_1_callback_set_power_mgmt)(struct wiphy * , struct net_device * , _Bool ,
                                     int ) = & rndis_set_power_mgmt;
int (*ldv_1_callback_set_tx_power)(struct wiphy * , struct wireless_dev * , enum nl80211_tx_power_setting ,
                                   int ) = & rndis_set_tx_power;
int (*ldv_1_callback_set_wiphy_params)(struct wiphy * , unsigned int ) = & rndis_set_wiphy_params;
int (*ldv_2_callback_early_init)(struct usbnet * ) = & bcm4320a_early_init;
void (*ldv_2_callback_indication)(struct usbnet * , void * , int ) = & rndis_wlan_indication;
int (*ldv_2_callback_reset)(struct usbnet * ) = & rndis_wlan_reset;
int (*ldv_2_callback_rx_fixup)(struct usbnet * , struct sk_buff * ) = & rndis_rx_fixup;
void (*ldv_2_callback_status)(struct usbnet * , struct urb * ) = & rndis_status;
struct sk_buff *(*ldv_2_callback_tx_fixup)(struct usbnet * , struct sk_buff * , unsigned int ) = & rndis_tx_fixup;
void (*ldv_2_callback_unbind)(struct usbnet * , struct usb_interface * ) = & rndis_wlan_unbind;
int (*ldv_3_callback_early_init)(struct usbnet * ) = & bcm4320b_early_init;
void (*ldv_3_callback_indication)(struct usbnet * , void * , int ) = & rndis_wlan_indication;
int (*ldv_3_callback_reset)(struct usbnet * ) = & rndis_wlan_reset;
int (*ldv_3_callback_rx_fixup)(struct usbnet * , struct sk_buff * ) = & rndis_rx_fixup;
void (*ldv_3_callback_status)(struct usbnet * , struct urb * ) = & rndis_status;
struct sk_buff *(*ldv_3_callback_tx_fixup)(struct usbnet * , struct sk_buff * , unsigned int ) = & rndis_tx_fixup;
void (*ldv_3_callback_unbind)(struct usbnet * , struct usb_interface * ) = & rndis_wlan_unbind;
int (*ldv_4_callback_early_init)(struct usbnet * ) = & unknown_early_init;
void (*ldv_4_callback_indication)(struct usbnet * , void * , int ) = & rndis_wlan_indication;
int (*ldv_4_callback_reset)(struct usbnet * ) = & rndis_wlan_reset;
int (*ldv_4_callback_rx_fixup)(struct usbnet * , struct sk_buff * ) = & rndis_rx_fixup;
void (*ldv_4_callback_status)(struct usbnet * , struct urb * ) = & rndis_status;
struct sk_buff *(*ldv_4_callback_tx_fixup)(struct usbnet * , struct sk_buff * , unsigned int ) = & rndis_tx_fixup;
void (*ldv_4_callback_unbind)(struct usbnet * , struct usb_interface * ) = & rndis_wlan_unbind;
void ldv_EMGentry_exit_rndis_wlan_driver_exit_11_2(void (*arg0)(void) )
{
  {
  {
  rndis_wlan_driver_exit();
  }
  return;
}
}
int ldv_EMGentry_init_rndis_wlan_driver_init_11_15(int (*arg0)(void) )
{
  int tmp ;
  {
  {
  tmp = rndis_wlan_driver_init();
  }
  return (tmp);
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
  {
  {
  tmp = external_allocated_data();
  ldv_0_container_net_device = (struct net_device *)tmp;
  tmp___0 = external_allocated_data();
  ldv_0_container_struct_sk_buff_ptr = (struct sk_buff *)tmp___0;
  tmp___1 = external_allocated_data();
  ldv_1_ldv_param_21_3_default = (unsigned int *)tmp___1;
  tmp___2 = external_allocated_data();
  ldv_1_ldv_param_24_4_default = (unsigned char *)tmp___2;
  tmp___3 = external_allocated_data();
  ldv_1_ldv_param_28_3_default = (unsigned char *)tmp___3;
  tmp___4 = external_allocated_data();
  ldv_1_ldv_param_32_2_default = (unsigned char *)tmp___4;
  tmp___5 = external_allocated_data();
  ldv_1_ldv_param_35_2_default = (int *)tmp___5;
  tmp___6 = external_allocated_data();
  ldv_1_ldv_param_4_4_default = (unsigned char *)tmp___6;
  tmp___7 = external_allocated_data();
  ldv_1_resource_struct_cfg80211_connect_params_ptr = (struct cfg80211_connect_params *)tmp___7;
  tmp___8 = external_allocated_data();
  ldv_1_resource_struct_cfg80211_ibss_params_ptr = (struct cfg80211_ibss_params *)tmp___8;
  tmp___9 = external_allocated_data();
  ldv_1_resource_struct_cfg80211_pmksa_ptr = (struct cfg80211_pmksa *)tmp___9;
  tmp___10 = external_allocated_data();
  ldv_1_resource_struct_cfg80211_scan_request_ptr = (struct cfg80211_scan_request *)tmp___10;
  tmp___11 = external_allocated_data();
  ldv_1_resource_struct_key_params_ptr = (struct key_params *)tmp___11;
  tmp___12 = external_allocated_data();
  ldv_1_resource_struct_net_device_ptr = (struct net_device *)tmp___12;
  tmp___13 = external_allocated_data();
  ldv_1_resource_struct_station_info_ptr = (struct station_info *)tmp___13;
  tmp___14 = external_allocated_data();
  ldv_1_resource_struct_vif_params_ptr = (struct vif_params *)tmp___14;
  tmp___15 = external_allocated_data();
  ldv_1_resource_struct_wiphy_ptr = (struct wiphy *)tmp___15;
  tmp___16 = external_allocated_data();
  ldv_1_resource_struct_wireless_dev_ptr = (struct wireless_dev *)tmp___16;
  tmp___17 = external_allocated_data();
  ldv_2_resource_struct_sk_buff_ptr = (struct sk_buff *)tmp___17;
  tmp___18 = external_allocated_data();
  ldv_2_resource_struct_urb_ptr = (struct urb *)tmp___18;
  tmp___19 = external_allocated_data();
  ldv_2_resource_struct_usb_interface_ptr = (struct usb_interface *)tmp___19;
  tmp___20 = external_allocated_data();
  ldv_2_resource_struct_usbnet_ptr = (struct usbnet *)tmp___20;
  tmp___21 = external_allocated_data();
  ldv_3_resource_struct_sk_buff_ptr = (struct sk_buff *)tmp___21;
  tmp___22 = external_allocated_data();
  ldv_3_resource_struct_urb_ptr = (struct urb *)tmp___22;
  tmp___23 = external_allocated_data();
  ldv_3_resource_struct_usb_interface_ptr = (struct usb_interface *)tmp___23;
  tmp___24 = external_allocated_data();
  ldv_3_resource_struct_usbnet_ptr = (struct usbnet *)tmp___24;
  tmp___25 = external_allocated_data();
  ldv_4_resource_struct_sk_buff_ptr = (struct sk_buff *)tmp___25;
  tmp___26 = external_allocated_data();
  ldv_4_resource_struct_urb_ptr = (struct urb *)tmp___26;
  tmp___27 = external_allocated_data();
  ldv_4_resource_struct_usb_interface_ptr = (struct usb_interface *)tmp___27;
  tmp___28 = external_allocated_data();
  ldv_4_resource_struct_usbnet_ptr = (struct usbnet *)tmp___28;
  tmp___29 = external_allocated_data();
  ldv_5_container_timer_list = (struct timer_list *)tmp___29;
  tmp___30 = external_allocated_data();
  ldv_6_container_timer_list = (struct timer_list *)tmp___30;
  tmp___31 = external_allocated_data();
  ldv_7_ldv_param_13_1_default = (struct usb_device_id *)tmp___31;
  tmp___32 = external_allocated_data();
  ldv_7_ldv_param_8_1_default = (struct pm_message *)tmp___32;
  tmp___33 = external_allocated_data();
  ldv_7_resource_usb_interface = (struct usb_interface *)tmp___33;
  tmp___34 = external_allocated_data();
  ldv_7_usb_device_usb_device = (struct usb_device *)tmp___34;
  }
  return;
}
}
void ldv_dispatch_deregister_9_1(struct usb_driver *arg0 )
{
  {
  {
  ldv_8_container_usb_driver = arg0;
  ldv_switch_automaton_state_8_1();
  }
  return;
}
}
void ldv_dispatch_deregister_dummy_factory_7_11_4(void)
{
  {
  {
  ldv_switch_automaton_state_6_1();
  }
  return;
}
}
void ldv_dispatch_deregister_dummy_resourceless_instance_3_11_5(void)
{
  {
  {
  ldv_switch_automaton_state_0_1();
  }
  return;
}
}
void ldv_dispatch_deregister_io_instance_4_11_6(void)
{
  {
  {
  ldv_switch_automaton_state_1_5();
  }
  return;
}
}
void ldv_dispatch_deregister_io_instance_5_11_7(void)
{
  {
  {
  ldv_switch_automaton_state_2_5();
  ldv_switch_automaton_state_3_5();
  ldv_switch_automaton_state_4_5();
  }
  return;
}
}
void ldv_dispatch_instance_deregister_6_2(struct timer_list *arg0 )
{
  {
  {
  ldv_5_container_timer_list = arg0;
  ldv_switch_automaton_state_5_1();
  }
  return;
}
}
void ldv_dispatch_instance_deregister_8_2(struct usb_driver *arg0 )
{
  {
  {
  ldv_7_container_usb_driver = arg0;
  ldv_switch_automaton_state_7_1();
  }
  return;
}
}
void ldv_dispatch_instance_register_6_3(struct timer_list *arg0 )
{
  {
  {
  ldv_5_container_timer_list = arg0;
  ldv_switch_automaton_state_5_3();
  }
  return;
}
}
void ldv_dispatch_instance_register_8_3(struct usb_driver *arg0 )
{
  {
  {
  ldv_7_container_usb_driver = arg0;
  ldv_switch_automaton_state_7_15();
  }
  return;
}
}
void ldv_dispatch_register_10_2(struct usb_driver *arg0 )
{
  {
  {
  ldv_8_container_usb_driver = arg0;
  ldv_switch_automaton_state_8_4();
  }
  return;
}
}
void ldv_dispatch_register_dummy_factory_7_11_8(void)
{
  {
  {
  ldv_switch_automaton_state_6_4();
  }
  return;
}
}
void ldv_dispatch_register_dummy_resourceless_instance_3_11_9(void)
{
  {
  {
  ldv_switch_automaton_state_0_5();
  }
  return;
}
}
void ldv_dispatch_register_io_instance_4_11_10(void)
{
  {
  {
  ldv_switch_automaton_state_1_14();
  }
  return;
}
}
void ldv_dispatch_register_io_instance_5_11_11(void)
{
  {
  {
  ldv_switch_automaton_state_2_14();
  ldv_switch_automaton_state_3_14();
  ldv_switch_automaton_state_4_14();
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_0_10(int (*arg0)(struct net_device * ) ,
                                                   struct net_device *arg1 )
{
  {
  {
  usbnet_stop(arg1);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_0_11(void (*arg0)(struct net_device * ) ,
                                                   struct net_device *arg1 )
{
  {
  {
  usbnet_tx_timeout(arg1);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_0_12(int (*arg0)(struct net_device * ) ,
                                                   struct net_device *arg1 )
{
  {
  {
  eth_validate_addr(arg1);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_0_3(int (*arg0)(struct net_device * ) ,
                                                  struct net_device *arg1 )
{
  {
  {
  usbnet_open(arg1);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_0_7(int (*arg0)(struct net_device * ,
                                                              void * ) , struct net_device *arg1 ,
                                                  void *arg2 )
{
  {
  {
  eth_mac_addr(arg1, arg2);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_0_8(void (*arg0)(struct net_device * ) ,
                                                  struct net_device *arg1 )
{
  {
  {
  rndis_wlan_set_multicast_list(arg1);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_0_9(enum netdev_tx (*arg0)(struct sk_buff * ,
                                                                         struct net_device * ) ,
                                                  struct sk_buff *arg1 , struct net_device *arg2 )
{
  {
  {
  usbnet_start_xmit(arg1, arg2);
  }
  return;
}
}
void ldv_entry_EMGentry_11(void *arg0 )
{
  int tmp ;
  int tmp___0 ;
  {
  {
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
  if (ldv_statevar_11 == 6) {
    goto case_6;
  } else {
  }
  if (ldv_statevar_11 == 7) {
    goto case_7;
  } else {
  }
  if (ldv_statevar_11 == 8) {
    goto case_8;
  } else {
  }
  if (ldv_statevar_11 == 9) {
    goto case_9;
  } else {
  }
  if (ldv_statevar_11 == 10) {
    goto case_10;
  } else {
  }
  if (ldv_statevar_11 == 11) {
    goto case_11;
  } else {
  }
  if (ldv_statevar_11 == 12) {
    goto case_12;
  } else {
  }
  if (ldv_statevar_11 == 14) {
    goto case_14;
  } else {
  }
  if (ldv_statevar_11 == 15) {
    goto case_15;
  } else {
  }
  goto switch_default;
  case_2:
  {
  ldv_assume(ldv_statevar_8 == 2);
  ldv_EMGentry_exit_rndis_wlan_driver_exit_11_2(ldv_11_exit_rndis_wlan_driver_exit_default);
  ldv_check_final_state();
  ldv_stop();
  ldv_statevar_11 = 15;
  }
  goto ldv_48827;
  case_3:
  {
  ldv_assume(ldv_statevar_8 == 2);
  ldv_EMGentry_exit_rndis_wlan_driver_exit_11_2(ldv_11_exit_rndis_wlan_driver_exit_default);
  ldv_check_final_state();
  ldv_stop();
  ldv_statevar_11 = 15;
  }
  goto ldv_48827;
  case_4:
  {
  ldv_assume(ldv_statevar_6 == 2);
  ldv_dispatch_deregister_dummy_factory_7_11_4();
  ldv_statevar_11 = 2;
  }
  goto ldv_48827;
  case_5:
  {
  ldv_assume(ldv_statevar_0 == 1);
  ldv_dispatch_deregister_dummy_resourceless_instance_3_11_5();
  ldv_statevar_11 = 4;
  }
  goto ldv_48827;
  case_6:
  {
  ldv_assume(ldv_statevar_1 == 6);
  ldv_dispatch_deregister_io_instance_4_11_6();
  ldv_statevar_11 = 5;
  }
  goto ldv_48827;
  case_7:
  {
  ldv_assume((ldv_statevar_2 == 6 || ldv_statevar_3 == 6) || ldv_statevar_4 == 6);
  ldv_dispatch_deregister_io_instance_5_11_7();
  ldv_statevar_11 = 6;
  }
  goto ldv_48827;
  case_8:
  {
  ldv_assume(ldv_statevar_6 == 4);
  ldv_dispatch_register_dummy_factory_7_11_8();
  ldv_statevar_11 = 7;
  }
  goto ldv_48827;
  case_9:
  {
  ldv_assume(ldv_statevar_0 == 5);
  ldv_dispatch_register_dummy_resourceless_instance_3_11_9();
  ldv_statevar_11 = 8;
  }
  goto ldv_48827;
  case_10:
  {
  ldv_assume(ldv_statevar_1 == 14);
  ldv_dispatch_register_io_instance_4_11_10();
  ldv_statevar_11 = 9;
  }
  goto ldv_48827;
  case_11:
  {
  ldv_assume((ldv_statevar_2 == 14 || ldv_statevar_3 == 14) || ldv_statevar_4 == 14);
  ldv_dispatch_register_io_instance_5_11_11();
  ldv_statevar_11 = 10;
  }
  goto ldv_48827;
  case_12:
  {
  ldv_assume(ldv_11_ret_default == 0);
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    ldv_statevar_11 = 3;
  } else {
    ldv_statevar_11 = 11;
  }
  goto ldv_48827;
  case_14:
  {
  ldv_assume(ldv_11_ret_default != 0);
  ldv_check_final_state();
  ldv_stop();
  ldv_statevar_11 = 15;
  }
  goto ldv_48827;
  case_15:
  {
  ldv_assume(ldv_statevar_8 == 4);
  ldv_11_ret_default = ldv_EMGentry_init_rndis_wlan_driver_init_11_15(ldv_11_init_rndis_wlan_driver_init_default);
  ldv_11_ret_default = ldv_post_init(ldv_11_ret_default);
  tmp___0 = ldv_undef_int();
  }
  if (tmp___0 != 0) {
    ldv_statevar_11 = 12;
  } else {
    ldv_statevar_11 = 14;
  }
  goto ldv_48827;
  switch_default: ;
  switch_break: ;
  }
  ldv_48827: ;
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
  ldv_statevar_11 = 15;
  ldv_statevar_0 = 5;
  ldv_1_ret_default = 1;
  ldv_statevar_1 = 14;
  ldv_2_ret_default = 1;
  ldv_statevar_2 = 14;
  ldv_3_ret_default = 1;
  ldv_statevar_3 = 14;
  ldv_4_ret_default = 1;
  ldv_statevar_4 = 14;
  ldv_statevar_5 = 3;
  ldv_statevar_6 = 4;
  ldv_7_reset_flag_default = 0;
  ldv_statevar_7 = 15;
  ldv_statevar_8 = 4;
  }
  ldv_48855:
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
  goto switch_default;
  case_0:
  {
  ldv_entry_EMGentry_11((void *)0);
  }
  goto ldv_48844;
  case_1:
  {
  ldv_net_dummy_resourceless_instance_0((void *)0);
  }
  goto ldv_48844;
  case_2:
  {
  ldv_struct_cfg80211_ops_io_instance_1((void *)0);
  }
  goto ldv_48844;
  case_3:
  {
  ldv_struct_driver_info_io_instance_2((void *)0);
  }
  goto ldv_48844;
  case_4:
  {
  ldv_struct_driver_info_io_instance_3((void *)0);
  }
  goto ldv_48844;
  case_5:
  {
  ldv_struct_driver_info_io_instance_4((void *)0);
  }
  goto ldv_48844;
  case_6:
  {
  ldv_timer_timer_instance_5((void *)0);
  }
  goto ldv_48844;
  case_7:
  {
  ldv_timer_dummy_factory_6((void *)0);
  }
  goto ldv_48844;
  case_8:
  {
  ldv_usb_usb_instance_7((void *)0);
  }
  goto ldv_48844;
  case_9:
  {
  ldv_usb_dummy_factory_8((void *)0);
  }
  goto ldv_48844;
  switch_default:
  {
  ldv_stop();
  }
  switch_break: ;
  }
  ldv_48844: ;
  goto ldv_48855;
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
void ldv_io_instance_callback_1_21(int (*arg0)(struct wiphy * , struct net_device * ,
                                               enum nl80211_iftype , unsigned int * ,
                                               struct vif_params * ) , struct wiphy *arg1 ,
                                   struct net_device *arg2 , enum nl80211_iftype arg3 ,
                                   unsigned int *arg4 , struct vif_params *arg5 )
{
  {
  {
  rndis_change_virtual_intf(arg1, arg2, arg3, arg4, arg5);
  }
  return;
}
}
void ldv_io_instance_callback_1_24(int (*arg0)(struct wiphy * , struct net_device * ,
                                               unsigned char , _Bool , unsigned char * ) ,
                                   struct wiphy *arg1 , struct net_device *arg2 ,
                                   unsigned char arg3 , _Bool arg4 , unsigned char *arg5 )
{
  {
  {
  rndis_del_key(arg1, arg2, (int )arg3, (int )arg4, (u8 const *)arg5);
  }
  return;
}
}
void ldv_io_instance_callback_1_27(int (*arg0)(struct wiphy * , struct net_device * ,
                                               struct cfg80211_pmksa * ) , struct wiphy *arg1 ,
                                   struct net_device *arg2 , struct cfg80211_pmksa *arg3 )
{
  {
  {
  rndis_del_pmksa(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_io_instance_callback_1_28(int (*arg0)(struct wiphy * , struct net_device * ,
                                               int , unsigned char * , struct station_info * ) ,
                                   struct wiphy *arg1 , struct net_device *arg2 ,
                                   int arg3 , unsigned char *arg4 , struct station_info *arg5 )
{
  {
  {
  rndis_dump_station(arg1, arg2, arg3, arg4, arg5);
  }
  return;
}
}
void ldv_io_instance_callback_1_31(int (*arg0)(struct wiphy * , struct net_device * ) ,
                                   struct wiphy *arg1 , struct net_device *arg2 )
{
  {
  {
  rndis_flush_pmksa(arg1, arg2);
  }
  return;
}
}
void ldv_io_instance_callback_1_32(int (*arg0)(struct wiphy * , struct net_device * ,
                                               unsigned char * , struct station_info * ) ,
                                   struct wiphy *arg1 , struct net_device *arg2 ,
                                   unsigned char *arg3 , struct station_info *arg4 )
{
  {
  {
  rndis_get_station(arg1, arg2, arg3, arg4);
  }
  return;
}
}
void ldv_io_instance_callback_1_35(int (*arg0)(struct wiphy * , struct wireless_dev * ,
                                               int * ) , struct wiphy *arg1 , struct wireless_dev *arg2 ,
                                   int *arg3 )
{
  {
  {
  rndis_get_tx_power(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_io_instance_callback_1_38(int (*arg0)(struct wiphy * , struct net_device * ,
                                               struct cfg80211_ibss_params * ) , struct wiphy *arg1 ,
                                   struct net_device *arg2 , struct cfg80211_ibss_params *arg3 )
{
  {
  {
  rndis_join_ibss(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_io_instance_callback_1_39(int (*arg0)(struct wiphy * , struct net_device * ) ,
                                   struct wiphy *arg1 , struct net_device *arg2 )
{
  {
  {
  rndis_leave_ibss(arg1, arg2);
  }
  return;
}
}
void ldv_io_instance_callback_1_4(int (*arg0)(struct wiphy * , struct net_device * ,
                                              unsigned char , _Bool , unsigned char * ,
                                              struct key_params * ) , struct wiphy *arg1 ,
                                  struct net_device *arg2 , unsigned char arg3 , _Bool arg4 ,
                                  unsigned char *arg5 , struct key_params *arg6 )
{
  {
  {
  rndis_add_key(arg1, arg2, (int )arg3, (int )arg4, (u8 const *)arg5, arg6);
  }
  return;
}
}
void ldv_io_instance_callback_1_40(int (*arg0)(struct wiphy * , struct cfg80211_scan_request * ) ,
                                   struct wiphy *arg1 , struct cfg80211_scan_request *arg2 )
{
  {
  {
  rndis_scan(arg1, arg2);
  }
  return;
}
}
void ldv_io_instance_callback_1_41(int (*arg0)(struct wiphy * , struct net_device * ,
                                               int , unsigned int ) , struct wiphy *arg1 ,
                                   struct net_device *arg2 , int arg3 , unsigned int arg4 )
{
  {
  {
  rndis_set_cqm_rssi_config(arg1, arg2, arg3, arg4);
  }
  return;
}
}
void ldv_io_instance_callback_1_44(int (*arg0)(struct wiphy * , struct net_device * ,
                                               unsigned char , _Bool , _Bool ) ,
                                   struct wiphy *arg1 , struct net_device *arg2 ,
                                   unsigned char arg3 , _Bool arg4 , _Bool arg5 )
{
  {
  {
  rndis_set_default_key(arg1, arg2, (int )arg3, (int )arg4, (int )arg5);
  }
  return;
}
}
void ldv_io_instance_callback_1_47(int (*arg0)(struct wiphy * , struct net_device * ,
                                               struct cfg80211_pmksa * ) , struct wiphy *arg1 ,
                                   struct net_device *arg2 , struct cfg80211_pmksa *arg3 )
{
  {
  {
  rndis_set_pmksa(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_io_instance_callback_1_48(int (*arg0)(struct wiphy * , struct net_device * ,
                                               _Bool , int ) , struct wiphy *arg1 ,
                                   struct net_device *arg2 , _Bool arg3 , int arg4 )
{
  {
  {
  rndis_set_power_mgmt(arg1, arg2, (int )arg3, arg4);
  }
  return;
}
}
void ldv_io_instance_callback_1_51(int (*arg0)(struct wiphy * , struct wireless_dev * ,
                                               enum nl80211_tx_power_setting , int ) ,
                                   struct wiphy *arg1 , struct wireless_dev *arg2 ,
                                   enum nl80211_tx_power_setting arg3 , int arg4 )
{
  {
  {
  rndis_set_tx_power(arg1, arg2, arg3, arg4);
  }
  return;
}
}
void ldv_io_instance_callback_1_54(int (*arg0)(struct wiphy * , unsigned int ) ,
                                   struct wiphy *arg1 , unsigned int arg2 )
{
  {
  {
  rndis_set_wiphy_params(arg1, arg2);
  }
  return;
}
}
void ldv_io_instance_callback_2_17(void (*arg0)(struct usbnet * , void * , int ) ,
                                   struct usbnet *arg1 , void *arg2 , int arg3 )
{
  {
  {
  rndis_wlan_indication(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_io_instance_callback_2_20(int (*arg0)(struct usbnet * ) , struct usbnet *arg1 )
{
  {
  {
  rndis_wlan_reset(arg1);
  }
  return;
}
}
void ldv_io_instance_callback_2_21(int (*arg0)(struct usbnet * , struct sk_buff * ) ,
                                   struct usbnet *arg1 , struct sk_buff *arg2 )
{
  {
  {
  rndis_rx_fixup(arg1, arg2);
  }
  return;
}
}
void ldv_io_instance_callback_2_22(void (*arg0)(struct usbnet * , struct urb * ) ,
                                   struct usbnet *arg1 , struct urb *arg2 )
{
  {
  {
  rndis_status(arg1, arg2);
  }
  return;
}
}
void ldv_io_instance_callback_2_23(struct sk_buff *(*arg0)(struct usbnet * , struct sk_buff * ,
                                                           unsigned int ) , struct usbnet *arg1 ,
                                   struct sk_buff *arg2 , unsigned int arg3 )
{
  {
  {
  rndis_tx_fixup(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_io_instance_callback_2_26(void (*arg0)(struct usbnet * , struct usb_interface * ) ,
                                   struct usbnet *arg1 , struct usb_interface *arg2 )
{
  {
  {
  rndis_wlan_unbind(arg1, arg2);
  }
  return;
}
}
void ldv_io_instance_callback_2_4(int (*arg0)(struct usbnet * ) , struct usbnet *arg1 )
{
  {
  {
  bcm4320a_early_init(arg1);
  }
  return;
}
}
void ldv_io_instance_callback_3_17(void (*arg0)(struct usbnet * , void * , int ) ,
                                   struct usbnet *arg1 , void *arg2 , int arg3 )
{
  {
  {
  rndis_wlan_indication(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_io_instance_callback_3_20(int (*arg0)(struct usbnet * ) , struct usbnet *arg1 )
{
  {
  {
  rndis_wlan_reset(arg1);
  }
  return;
}
}
void ldv_io_instance_callback_3_21(int (*arg0)(struct usbnet * , struct sk_buff * ) ,
                                   struct usbnet *arg1 , struct sk_buff *arg2 )
{
  {
  {
  rndis_rx_fixup(arg1, arg2);
  }
  return;
}
}
void ldv_io_instance_callback_3_22(void (*arg0)(struct usbnet * , struct urb * ) ,
                                   struct usbnet *arg1 , struct urb *arg2 )
{
  {
  {
  rndis_status(arg1, arg2);
  }
  return;
}
}
void ldv_io_instance_callback_3_23(struct sk_buff *(*arg0)(struct usbnet * , struct sk_buff * ,
                                                           unsigned int ) , struct usbnet *arg1 ,
                                   struct sk_buff *arg2 , unsigned int arg3 )
{
  {
  {
  rndis_tx_fixup(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_io_instance_callback_3_26(void (*arg0)(struct usbnet * , struct usb_interface * ) ,
                                   struct usbnet *arg1 , struct usb_interface *arg2 )
{
  {
  {
  rndis_wlan_unbind(arg1, arg2);
  }
  return;
}
}
void ldv_io_instance_callback_3_4(int (*arg0)(struct usbnet * ) , struct usbnet *arg1 )
{
  {
  {
  bcm4320b_early_init(arg1);
  }
  return;
}
}
void ldv_io_instance_callback_4_17(void (*arg0)(struct usbnet * , void * , int ) ,
                                   struct usbnet *arg1 , void *arg2 , int arg3 )
{
  {
  {
  rndis_wlan_indication(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_io_instance_callback_4_20(int (*arg0)(struct usbnet * ) , struct usbnet *arg1 )
{
  {
  {
  rndis_wlan_reset(arg1);
  }
  return;
}
}
void ldv_io_instance_callback_4_21(int (*arg0)(struct usbnet * , struct sk_buff * ) ,
                                   struct usbnet *arg1 , struct sk_buff *arg2 )
{
  {
  {
  rndis_rx_fixup(arg1, arg2);
  }
  return;
}
}
void ldv_io_instance_callback_4_22(void (*arg0)(struct usbnet * , struct urb * ) ,
                                   struct usbnet *arg1 , struct urb *arg2 )
{
  {
  {
  rndis_status(arg1, arg2);
  }
  return;
}
}
void ldv_io_instance_callback_4_23(struct sk_buff *(*arg0)(struct usbnet * , struct sk_buff * ,
                                                           unsigned int ) , struct usbnet *arg1 ,
                                   struct sk_buff *arg2 , unsigned int arg3 )
{
  {
  {
  rndis_tx_fixup(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_io_instance_callback_4_26(void (*arg0)(struct usbnet * , struct usb_interface * ) ,
                                   struct usbnet *arg1 , struct usb_interface *arg2 )
{
  {
  {
  rndis_wlan_unbind(arg1, arg2);
  }
  return;
}
}
void ldv_io_instance_callback_4_4(int (*arg0)(struct usbnet * ) , struct usbnet *arg1 )
{
  {
  {
  unknown_early_init(arg1);
  }
  return;
}
}
int ldv_io_instance_probe_1_11(int (*arg0)(struct wiphy * , struct net_device * ,
                                           struct cfg80211_connect_params * ) , struct wiphy *arg1 ,
                               struct net_device *arg2 , struct cfg80211_connect_params *arg3 )
{
  int tmp ;
  {
  {
  tmp = rndis_connect(arg1, arg2, arg3);
  }
  return (tmp);
}
}
int ldv_io_instance_probe_2_11(int (*arg0)(struct usbnet * , struct usb_interface * ) ,
                               struct usbnet *arg1 , struct usb_interface *arg2 )
{
  int tmp ;
  {
  {
  tmp = rndis_wlan_bind(arg1, arg2);
  }
  return (tmp);
}
}
int ldv_io_instance_probe_3_11(int (*arg0)(struct usbnet * , struct usb_interface * ) ,
                               struct usbnet *arg1 , struct usb_interface *arg2 )
{
  int tmp ;
  {
  {
  tmp = rndis_wlan_bind(arg1, arg2);
  }
  return (tmp);
}
}
int ldv_io_instance_probe_4_11(int (*arg0)(struct usbnet * , struct usb_interface * ) ,
                               struct usbnet *arg1 , struct usb_interface *arg2 )
{
  int tmp ;
  {
  {
  tmp = rndis_wlan_bind(arg1, arg2);
  }
  return (tmp);
}
}
void ldv_io_instance_release_1_2(int (*arg0)(struct wiphy * , struct net_device * ,
                                             unsigned short ) , struct wiphy *arg1 ,
                                 struct net_device *arg2 , unsigned short arg3 )
{
  {
  {
  rndis_disconnect(arg1, arg2, (int )arg3);
  }
  return;
}
}
void ldv_io_instance_release_2_2(int (*arg0)(struct usbnet * ) , struct usbnet *arg1 )
{
  {
  {
  rndis_wlan_stop(arg1);
  }
  return;
}
}
void ldv_io_instance_release_3_2(int (*arg0)(struct usbnet * ) , struct usbnet *arg1 )
{
  {
  {
  rndis_wlan_stop(arg1);
  }
  return;
}
}
void ldv_io_instance_release_4_2(int (*arg0)(struct usbnet * ) , struct usbnet *arg1 )
{
  {
  {
  rndis_wlan_stop(arg1);
  }
  return;
}
}
void ldv_net_dummy_resourceless_instance_0(void *arg0 )
{
  {
  {
  if (ldv_statevar_0 == 1) {
    goto case_1;
  } else {
  }
  if (ldv_statevar_0 == 2) {
    goto case_2;
  } else {
  }
  if (ldv_statevar_0 == 3) {
    goto case_3;
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
  if (ldv_statevar_0 == 7) {
    goto case_7;
  } else {
  }
  if (ldv_statevar_0 == 8) {
    goto case_8;
  } else {
  }
  if (ldv_statevar_0 == 9) {
    goto case_9;
  } else {
  }
  if (ldv_statevar_0 == 10) {
    goto case_10;
  } else {
  }
  if (ldv_statevar_0 == 11) {
    goto case_11;
  } else {
  }
  if (ldv_statevar_0 == 12) {
    goto case_12;
  } else {
  }
  goto switch_default;
  case_1: ;
  goto ldv_49238;
  case_2:
  {
  ldv_statevar_0 = ldv_switch_0();
  }
  goto ldv_49238;
  case_3:
  {
  ldv_dummy_resourceless_instance_callback_0_3(ldv_0_callback_ndo_open, ldv_0_container_net_device);
  ldv_statevar_0 = 2;
  }
  goto ldv_49238;
  case_4:
  {
  ldv_statevar_0 = ldv_switch_0();
  }
  goto ldv_49238;
  case_5: ;
  goto ldv_49238;
  case_7:
  {
  ldv_dummy_resourceless_instance_callback_0_7(ldv_0_callback_ndo_set_mac_address,
                                               ldv_0_container_net_device, (void *)ldv_0_container_struct_sk_buff_ptr);
  ldv_statevar_0 = 2;
  }
  goto ldv_49238;
  case_8:
  {
  ldv_dummy_resourceless_instance_callback_0_8(ldv_0_callback_ndo_set_rx_mode, ldv_0_container_net_device);
  ldv_statevar_0 = 2;
  }
  goto ldv_49238;
  case_9:
  {
  ldv_dummy_resourceless_instance_callback_0_9(ldv_0_callback_ndo_start_xmit, ldv_0_container_struct_sk_buff_ptr,
                                               ldv_0_container_net_device);
  ldv_statevar_0 = 2;
  }
  goto ldv_49238;
  case_10:
  {
  ldv_dummy_resourceless_instance_callback_0_10(ldv_0_callback_ndo_stop, ldv_0_container_net_device);
  ldv_statevar_0 = 2;
  }
  goto ldv_49238;
  case_11:
  {
  ldv_dummy_resourceless_instance_callback_0_11(ldv_0_callback_ndo_tx_timeout, ldv_0_container_net_device);
  ldv_statevar_0 = 2;
  }
  goto ldv_49238;
  case_12:
  {
  ldv_dummy_resourceless_instance_callback_0_12(ldv_0_callback_ndo_validate_addr,
                                                ldv_0_container_net_device);
  ldv_statevar_0 = 2;
  }
  goto ldv_49238;
  switch_default: ;
  switch_break: ;
  }
  ldv_49238: ;
  return;
}
}
void ldv_struct_cfg80211_ops_io_instance_1(void *arg0 )
{
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
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
  int tmp___14 ;
  void *tmp___15 ;
  void *tmp___16 ;
  void *tmp___17 ;
  void *tmp___18 ;
  void *tmp___19 ;
  void *tmp___20 ;
  {
  {
  if (ldv_statevar_1 == 1) {
    goto case_1;
  } else {
  }
  if (ldv_statevar_1 == 3) {
    goto case_3;
  } else {
  }
  if (ldv_statevar_1 == 4) {
    goto case_4;
  } else {
  }
  if (ldv_statevar_1 == 6) {
    goto case_6;
  } else {
  }
  if (ldv_statevar_1 == 8) {
    goto case_8;
  } else {
  }
  if (ldv_statevar_1 == 10) {
    goto case_10;
  } else {
  }
  if (ldv_statevar_1 == 11) {
    goto case_11;
  } else {
  }
  if (ldv_statevar_1 == 13) {
    goto case_13;
  } else {
  }
  if (ldv_statevar_1 == 14) {
    goto case_14;
  } else {
  }
  if (ldv_statevar_1 == 17) {
    goto case_17;
  } else {
  }
  if (ldv_statevar_1 == 19) {
    goto case_19;
  } else {
  }
  if (ldv_statevar_1 == 22) {
    goto case_22;
  } else {
  }
  if (ldv_statevar_1 == 25) {
    goto case_25;
  } else {
  }
  if (ldv_statevar_1 == 27) {
    goto case_27;
  } else {
  }
  if (ldv_statevar_1 == 29) {
    goto case_29;
  } else {
  }
  if (ldv_statevar_1 == 31) {
    goto case_31;
  } else {
  }
  if (ldv_statevar_1 == 33) {
    goto case_33;
  } else {
  }
  if (ldv_statevar_1 == 36) {
    goto case_36;
  } else {
  }
  if (ldv_statevar_1 == 38) {
    goto case_38;
  } else {
  }
  if (ldv_statevar_1 == 39) {
    goto case_39;
  } else {
  }
  if (ldv_statevar_1 == 40) {
    goto case_40;
  } else {
  }
  if (ldv_statevar_1 == 42) {
    goto case_42;
  } else {
  }
  if (ldv_statevar_1 == 45) {
    goto case_45;
  } else {
  }
  if (ldv_statevar_1 == 47) {
    goto case_47;
  } else {
  }
  if (ldv_statevar_1 == 49) {
    goto case_49;
  } else {
  }
  if (ldv_statevar_1 == 52) {
    goto case_52;
  } else {
  }
  if (ldv_statevar_1 == 55) {
    goto case_55;
  } else {
  }
  goto switch_default;
  case_1:
  {
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    ldv_statevar_1 = 6;
  } else {
    ldv_statevar_1 = 11;
  }
  goto ldv_49254;
  case_3:
  {
  tmp___0 = ldv_undef_int();
  }
  if (tmp___0 != 0) {
    ldv_statevar_1 = 17;
  } else {
    ldv_statevar_1 = 19;
  }
  goto ldv_49254;
  case_4:
  {
  ldv_io_instance_callback_1_4(ldv_1_callback_add_key, ldv_1_resource_struct_wiphy_ptr,
                               ldv_1_resource_struct_net_device_ptr, (int )ldv_1_ldv_param_4_2_default,
                               (int )ldv_1_ldv_param_4_3_default, ldv_1_ldv_param_4_4_default,
                               ldv_1_resource_struct_key_params_ptr);
  ldv_free((void *)ldv_1_ldv_param_4_4_default);
  ldv_statevar_1 = 3;
  }
  goto ldv_49254;
  case_6:
  {
  ldv_free((void *)ldv_1_resource_struct_cfg80211_connect_params_ptr);
  ldv_free((void *)ldv_1_resource_struct_cfg80211_ibss_params_ptr);
  ldv_free((void *)ldv_1_resource_struct_cfg80211_pmksa_ptr);
  ldv_free((void *)ldv_1_resource_struct_cfg80211_scan_request_ptr);
  ldv_free((void *)ldv_1_resource_struct_key_params_ptr);
  ldv_free((void *)ldv_1_resource_struct_net_device_ptr);
  ldv_free((void *)ldv_1_resource_struct_station_info_ptr);
  ldv_free((void *)ldv_1_resource_struct_vif_params_ptr);
  ldv_free((void *)ldv_1_resource_struct_wiphy_ptr);
  ldv_free((void *)ldv_1_resource_struct_wireless_dev_ptr);
  ldv_1_ret_default = 1;
  ldv_statevar_1 = 14;
  }
  goto ldv_49254;
  case_8:
  {
  ldv_assume(ldv_1_ret_default != 0);
  tmp___1 = ldv_undef_int();
  }
  if (tmp___1 != 0) {
    ldv_statevar_1 = 6;
  } else {
    ldv_statevar_1 = 11;
  }
  goto ldv_49254;
  case_10:
  {
  ldv_assume(ldv_1_ret_default == 0);
  tmp___2 = ldv_undef_int();
  }
  if (tmp___2 != 0) {
    ldv_statevar_1 = 17;
  } else {
    ldv_statevar_1 = 19;
  }
  goto ldv_49254;
  case_11:
  {
  ldv_1_ret_default = ldv_io_instance_probe_1_11(ldv_1_container_struct_cfg80211_ops->connect,
                                                 ldv_1_resource_struct_wiphy_ptr,
                                                 ldv_1_resource_struct_net_device_ptr,
                                                 ldv_1_resource_struct_cfg80211_connect_params_ptr);
  ldv_1_ret_default = ldv_filter_err_code(ldv_1_ret_default);
  tmp___3 = ldv_undef_int();
  }
  if (tmp___3 != 0) {
    ldv_statevar_1 = 8;
  } else {
    ldv_statevar_1 = 10;
  }
  goto ldv_49254;
  case_13:
  {
  tmp___4 = ldv_xmalloc(216UL);
  ldv_1_resource_struct_cfg80211_connect_params_ptr = (struct cfg80211_connect_params *)tmp___4;
  tmp___5 = ldv_xmalloc(128UL);
  ldv_1_resource_struct_cfg80211_ibss_params_ptr = (struct cfg80211_ibss_params *)tmp___5;
  tmp___6 = ldv_xmalloc(16UL);
  ldv_1_resource_struct_cfg80211_pmksa_ptr = (struct cfg80211_pmksa *)tmp___6;
  tmp___7 = ldv_xmalloc(88UL);
  ldv_1_resource_struct_cfg80211_scan_request_ptr = (struct cfg80211_scan_request *)tmp___7;
  tmp___8 = ldv_xmalloc(32UL);
  ldv_1_resource_struct_key_params_ptr = (struct key_params *)tmp___8;
  tmp___9 = ldv_xmalloc(3200UL);
  ldv_1_resource_struct_net_device_ptr = (struct net_device *)tmp___9;
  tmp___10 = ldv_xmalloc(144UL);
  ldv_1_resource_struct_station_info_ptr = (struct station_info *)tmp___10;
  tmp___11 = ldv_xmalloc(12UL);
  ldv_1_resource_struct_vif_params_ptr = (struct vif_params *)tmp___11;
  tmp___12 = ldv_xmalloc(1728UL);
  ldv_1_resource_struct_wiphy_ptr = (struct wiphy *)tmp___12;
  tmp___13 = ldv_xmalloc(944UL);
  ldv_1_resource_struct_wireless_dev_ptr = (struct wireless_dev *)tmp___13;
  tmp___14 = ldv_undef_int();
  }
  if (tmp___14 != 0) {
    ldv_statevar_1 = 6;
  } else {
    ldv_statevar_1 = 11;
  }
  goto ldv_49254;
  case_14: ;
  goto ldv_49254;
  case_17:
  {
  ldv_io_instance_release_1_2(ldv_1_container_struct_cfg80211_ops->disconnect, ldv_1_resource_struct_wiphy_ptr,
                              ldv_1_resource_struct_net_device_ptr, (int )ldv_1_ldv_param_2_2_default);
  ldv_statevar_1 = 1;
  }
  goto ldv_49254;
  case_19:
  {
  tmp___15 = ldv_xmalloc(1UL);
  ldv_1_ldv_param_4_4_default = (unsigned char *)tmp___15;
  ldv_statevar_1 = ldv_switch_1();
  }
  goto ldv_49254;
  case_22:
  {
  tmp___16 = ldv_xmalloc(4UL);
  ldv_1_ldv_param_21_3_default = (unsigned int *)tmp___16;
  ldv_io_instance_callback_1_21(ldv_1_callback_change_virtual_intf, ldv_1_resource_struct_wiphy_ptr,
                                ldv_1_resource_struct_net_device_ptr, ldv_1_resource_enum_nl80211_iftype,
                                ldv_1_ldv_param_21_3_default, ldv_1_resource_struct_vif_params_ptr);
  ldv_free((void *)ldv_1_ldv_param_21_3_default);
  ldv_free((void *)ldv_1_ldv_param_4_4_default);
  ldv_statevar_1 = 3;
  }
  goto ldv_49254;
  case_25:
  {
  tmp___17 = ldv_xmalloc(1UL);
  ldv_1_ldv_param_24_4_default = (unsigned char *)tmp___17;
  ldv_io_instance_callback_1_24(ldv_1_callback_del_key, ldv_1_resource_struct_wiphy_ptr,
                                ldv_1_resource_struct_net_device_ptr, (int )ldv_1_ldv_param_24_2_default,
                                (int )ldv_1_ldv_param_24_3_default, ldv_1_ldv_param_24_4_default);
  ldv_free((void *)ldv_1_ldv_param_24_4_default);
  ldv_free((void *)ldv_1_ldv_param_4_4_default);
  ldv_statevar_1 = 3;
  }
  goto ldv_49254;
  case_27:
  {
  ldv_io_instance_callback_1_27(ldv_1_callback_del_pmksa, ldv_1_resource_struct_wiphy_ptr,
                                ldv_1_resource_struct_net_device_ptr, ldv_1_resource_struct_cfg80211_pmksa_ptr);
  ldv_free((void *)ldv_1_ldv_param_4_4_default);
  ldv_statevar_1 = 3;
  }
  goto ldv_49254;
  case_29:
  {
  tmp___18 = ldv_xmalloc(1UL);
  ldv_1_ldv_param_28_3_default = (unsigned char *)tmp___18;
  ldv_io_instance_callback_1_28(ldv_1_callback_dump_station, ldv_1_resource_struct_wiphy_ptr,
                                ldv_1_resource_struct_net_device_ptr, ldv_1_ldv_param_28_2_default,
                                ldv_1_ldv_param_28_3_default, ldv_1_resource_struct_station_info_ptr);
  ldv_free((void *)ldv_1_ldv_param_28_3_default);
  ldv_free((void *)ldv_1_ldv_param_4_4_default);
  ldv_statevar_1 = 3;
  }
  goto ldv_49254;
  case_31:
  {
  ldv_io_instance_callback_1_31(ldv_1_callback_flush_pmksa, ldv_1_resource_struct_wiphy_ptr,
                                ldv_1_resource_struct_net_device_ptr);
  ldv_free((void *)ldv_1_ldv_param_4_4_default);
  ldv_statevar_1 = 3;
  }
  goto ldv_49254;
  case_33:
  {
  tmp___19 = ldv_xmalloc(1UL);
  ldv_1_ldv_param_32_2_default = (unsigned char *)tmp___19;
  ldv_io_instance_callback_1_32(ldv_1_callback_get_station, ldv_1_resource_struct_wiphy_ptr,
                                ldv_1_resource_struct_net_device_ptr, ldv_1_ldv_param_32_2_default,
                                ldv_1_resource_struct_station_info_ptr);
  ldv_free((void *)ldv_1_ldv_param_32_2_default);
  ldv_free((void *)ldv_1_ldv_param_4_4_default);
  ldv_statevar_1 = 3;
  }
  goto ldv_49254;
  case_36:
  {
  tmp___20 = ldv_xmalloc(4UL);
  ldv_1_ldv_param_35_2_default = (int *)tmp___20;
  ldv_io_instance_callback_1_35(ldv_1_callback_get_tx_power, ldv_1_resource_struct_wiphy_ptr,
                                ldv_1_resource_struct_wireless_dev_ptr, ldv_1_ldv_param_35_2_default);
  ldv_free((void *)ldv_1_ldv_param_35_2_default);
  ldv_free((void *)ldv_1_ldv_param_4_4_default);
  ldv_statevar_1 = 3;
  }
  goto ldv_49254;
  case_38:
  {
  ldv_io_instance_callback_1_38(ldv_1_callback_join_ibss, ldv_1_resource_struct_wiphy_ptr,
                                ldv_1_resource_struct_net_device_ptr, ldv_1_resource_struct_cfg80211_ibss_params_ptr);
  ldv_free((void *)ldv_1_ldv_param_4_4_default);
  ldv_statevar_1 = 3;
  }
  goto ldv_49254;
  case_39:
  {
  ldv_io_instance_callback_1_39(ldv_1_callback_leave_ibss, ldv_1_resource_struct_wiphy_ptr,
                                ldv_1_resource_struct_net_device_ptr);
  ldv_free((void *)ldv_1_ldv_param_4_4_default);
  ldv_statevar_1 = 3;
  }
  goto ldv_49254;
  case_40:
  {
  ldv_io_instance_callback_1_40(ldv_1_callback_scan, ldv_1_resource_struct_wiphy_ptr,
                                ldv_1_resource_struct_cfg80211_scan_request_ptr);
  ldv_free((void *)ldv_1_ldv_param_4_4_default);
  ldv_statevar_1 = 3;
  }
  goto ldv_49254;
  case_42:
  {
  ldv_io_instance_callback_1_41(ldv_1_callback_set_cqm_rssi_config, ldv_1_resource_struct_wiphy_ptr,
                                ldv_1_resource_struct_net_device_ptr, ldv_1_ldv_param_41_2_default,
                                ldv_1_ldv_param_41_3_default);
  ldv_free((void *)ldv_1_ldv_param_4_4_default);
  ldv_statevar_1 = 3;
  }
  goto ldv_49254;
  case_45:
  {
  ldv_io_instance_callback_1_44(ldv_1_callback_set_default_key, ldv_1_resource_struct_wiphy_ptr,
                                ldv_1_resource_struct_net_device_ptr, (int )ldv_1_ldv_param_44_2_default,
                                (int )ldv_1_ldv_param_44_3_default, (int )ldv_1_ldv_param_44_4_default);
  ldv_free((void *)ldv_1_ldv_param_4_4_default);
  ldv_statevar_1 = 3;
  }
  goto ldv_49254;
  case_47:
  {
  ldv_io_instance_callback_1_47(ldv_1_callback_set_pmksa, ldv_1_resource_struct_wiphy_ptr,
                                ldv_1_resource_struct_net_device_ptr, ldv_1_resource_struct_cfg80211_pmksa_ptr);
  ldv_free((void *)ldv_1_ldv_param_4_4_default);
  ldv_statevar_1 = 3;
  }
  goto ldv_49254;
  case_49:
  {
  ldv_io_instance_callback_1_48(ldv_1_callback_set_power_mgmt, ldv_1_resource_struct_wiphy_ptr,
                                ldv_1_resource_struct_net_device_ptr, (int )ldv_1_ldv_param_48_2_default,
                                ldv_1_ldv_param_48_3_default);
  ldv_free((void *)ldv_1_ldv_param_4_4_default);
  ldv_statevar_1 = 3;
  }
  goto ldv_49254;
  case_52:
  {
  ldv_io_instance_callback_1_51(ldv_1_callback_set_tx_power, ldv_1_resource_struct_wiphy_ptr,
                                ldv_1_resource_struct_wireless_dev_ptr, ldv_1_resource_enum_nl80211_tx_power_setting,
                                ldv_1_ldv_param_51_3_default);
  ldv_free((void *)ldv_1_ldv_param_4_4_default);
  ldv_statevar_1 = 3;
  }
  goto ldv_49254;
  case_55:
  {
  ldv_io_instance_callback_1_54(ldv_1_callback_set_wiphy_params, ldv_1_resource_struct_wiphy_ptr,
                                ldv_1_ldv_param_54_1_default);
  ldv_free((void *)ldv_1_ldv_param_4_4_default);
  ldv_statevar_1 = 3;
  }
  goto ldv_49254;
  switch_default: ;
  switch_break: ;
  }
  ldv_49254: ;
  return;
}
}
void ldv_struct_driver_info_io_instance_2(void *arg0 )
{
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  void *tmp___2 ;
  void *tmp___3 ;
  void *tmp___4 ;
  void *tmp___5 ;
  int tmp___6 ;
  {
  {
  if (ldv_statevar_2 == 1) {
    goto case_1;
  } else {
  }
  if (ldv_statevar_2 == 2) {
    goto case_2;
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
  if (ldv_statevar_2 == 6) {
    goto case_6;
  } else {
  }
  if (ldv_statevar_2 == 8) {
    goto case_8;
  } else {
  }
  if (ldv_statevar_2 == 10) {
    goto case_10;
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
  if (ldv_statevar_2 == 18) {
    goto case_18;
  } else {
  }
  if (ldv_statevar_2 == 20) {
    goto case_20;
  } else {
  }
  if (ldv_statevar_2 == 21) {
    goto case_21;
  } else {
  }
  if (ldv_statevar_2 == 22) {
    goto case_22;
  } else {
  }
  if (ldv_statevar_2 == 24) {
    goto case_24;
  } else {
  }
  if (ldv_statevar_2 == 26) {
    goto case_26;
  } else {
  }
  goto switch_default;
  case_1:
  {
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    ldv_statevar_2 = 6;
  } else {
    ldv_statevar_2 = 11;
  }
  goto ldv_49286;
  case_2:
  {
  ldv_io_instance_release_2_2(ldv_2_container_struct_driver_info->stop, ldv_2_resource_struct_usbnet_ptr);
  ldv_statevar_2 = 1;
  }
  goto ldv_49286;
  case_3:
  {
  ldv_statevar_2 = ldv_switch_2();
  }
  goto ldv_49286;
  case_4:
  {
  ldv_io_instance_callback_2_4(ldv_2_callback_early_init, ldv_2_resource_struct_usbnet_ptr);
  ldv_statevar_2 = 3;
  }
  goto ldv_49286;
  case_6:
  {
  ldv_free((void *)ldv_2_resource_struct_sk_buff_ptr);
  ldv_free((void *)ldv_2_resource_struct_urb_ptr);
  ldv_free((void *)ldv_2_resource_struct_usb_interface_ptr);
  ldv_free((void *)ldv_2_resource_struct_usbnet_ptr);
  ldv_2_ret_default = 1;
  ldv_statevar_2 = 14;
  }
  goto ldv_49286;
  case_8:
  {
  ldv_assume(ldv_2_ret_default != 0);
  tmp___0 = ldv_undef_int();
  }
  if (tmp___0 != 0) {
    ldv_statevar_2 = 6;
  } else {
    ldv_statevar_2 = 11;
  }
  goto ldv_49286;
  case_10:
  {
  ldv_assume(ldv_2_ret_default == 0);
  ldv_statevar_2 = ldv_switch_2();
  }
  goto ldv_49286;
  case_11:
  {
  ldv_2_ret_default = ldv_io_instance_probe_2_11(ldv_2_container_struct_driver_info->bind,
                                                 ldv_2_resource_struct_usbnet_ptr,
                                                 ldv_2_resource_struct_usb_interface_ptr);
  ldv_2_ret_default = ldv_filter_err_code(ldv_2_ret_default);
  tmp___1 = ldv_undef_int();
  }
  if (tmp___1 != 0) {
    ldv_statevar_2 = 8;
  } else {
    ldv_statevar_2 = 10;
  }
  goto ldv_49286;
  case_13:
  {
  tmp___2 = ldv_xmalloc(232UL);
  ldv_2_resource_struct_sk_buff_ptr = (struct sk_buff *)tmp___2;
  tmp___3 = ldv_xmalloc(192UL);
  ldv_2_resource_struct_urb_ptr = (struct urb *)tmp___3;
  tmp___4 = ldv_xmalloc(1528UL);
  ldv_2_resource_struct_usb_interface_ptr = (struct usb_interface *)tmp___4;
  tmp___5 = ldv_xmalloc(1472UL);
  ldv_2_resource_struct_usbnet_ptr = (struct usbnet *)tmp___5;
  tmp___6 = ldv_undef_int();
  }
  if (tmp___6 != 0) {
    ldv_statevar_2 = 6;
  } else {
    ldv_statevar_2 = 11;
  }
  goto ldv_49286;
  case_14: ;
  goto ldv_49286;
  case_18:
  {
  ldv_io_instance_callback_2_17(ldv_2_callback_indication, ldv_2_resource_struct_usbnet_ptr,
                                (void *)ldv_2_resource_struct_sk_buff_ptr, ldv_2_ldv_param_17_2_default);
  ldv_statevar_2 = 3;
  }
  goto ldv_49286;
  case_20:
  {
  ldv_io_instance_callback_2_20(ldv_2_callback_reset, ldv_2_resource_struct_usbnet_ptr);
  ldv_statevar_2 = 3;
  }
  goto ldv_49286;
  case_21:
  {
  ldv_io_instance_callback_2_21(ldv_2_callback_rx_fixup, ldv_2_resource_struct_usbnet_ptr,
                                ldv_2_resource_struct_sk_buff_ptr);
  ldv_statevar_2 = 3;
  }
  goto ldv_49286;
  case_22:
  {
  ldv_io_instance_callback_2_22(ldv_2_callback_status, ldv_2_resource_struct_usbnet_ptr,
                                ldv_2_resource_struct_urb_ptr);
  ldv_statevar_2 = 3;
  }
  goto ldv_49286;
  case_24:
  {
  ldv_io_instance_callback_2_23(ldv_2_callback_tx_fixup, ldv_2_resource_struct_usbnet_ptr,
                                ldv_2_resource_struct_sk_buff_ptr, ldv_2_ldv_param_23_2_default);
  ldv_statevar_2 = 3;
  }
  goto ldv_49286;
  case_26:
  {
  ldv_io_instance_callback_2_26(ldv_2_callback_unbind, ldv_2_resource_struct_usbnet_ptr,
                                ldv_2_resource_struct_usb_interface_ptr);
  ldv_statevar_2 = 3;
  }
  goto ldv_49286;
  switch_default: ;
  switch_break: ;
  }
  ldv_49286: ;
  return;
}
}
void ldv_struct_driver_info_io_instance_3(void *arg0 )
{
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  void *tmp___2 ;
  void *tmp___3 ;
  void *tmp___4 ;
  void *tmp___5 ;
  int tmp___6 ;
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
  if (ldv_statevar_3 == 6) {
    goto case_6;
  } else {
  }
  if (ldv_statevar_3 == 8) {
    goto case_8;
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
  if (ldv_statevar_3 == 13) {
    goto case_13;
  } else {
  }
  if (ldv_statevar_3 == 14) {
    goto case_14;
  } else {
  }
  if (ldv_statevar_3 == 18) {
    goto case_18;
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
  if (ldv_statevar_3 == 24) {
    goto case_24;
  } else {
  }
  if (ldv_statevar_3 == 26) {
    goto case_26;
  } else {
  }
  goto switch_default;
  case_1:
  {
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    ldv_statevar_3 = 6;
  } else {
    ldv_statevar_3 = 11;
  }
  goto ldv_49307;
  case_2:
  {
  ldv_io_instance_release_3_2(ldv_3_container_struct_driver_info->stop, ldv_3_resource_struct_usbnet_ptr);
  ldv_statevar_3 = 1;
  }
  goto ldv_49307;
  case_3:
  {
  ldv_statevar_3 = ldv_switch_2();
  }
  goto ldv_49307;
  case_4:
  {
  ldv_io_instance_callback_3_4(ldv_3_callback_early_init, ldv_3_resource_struct_usbnet_ptr);
  ldv_statevar_3 = 3;
  }
  goto ldv_49307;
  case_6:
  {
  ldv_free((void *)ldv_3_resource_struct_sk_buff_ptr);
  ldv_free((void *)ldv_3_resource_struct_urb_ptr);
  ldv_free((void *)ldv_3_resource_struct_usb_interface_ptr);
  ldv_free((void *)ldv_3_resource_struct_usbnet_ptr);
  ldv_3_ret_default = 1;
  ldv_statevar_3 = 14;
  }
  goto ldv_49307;
  case_8:
  {
  ldv_assume(ldv_3_ret_default != 0);
  tmp___0 = ldv_undef_int();
  }
  if (tmp___0 != 0) {
    ldv_statevar_3 = 6;
  } else {
    ldv_statevar_3 = 11;
  }
  goto ldv_49307;
  case_10:
  {
  ldv_assume(ldv_3_ret_default == 0);
  ldv_statevar_3 = ldv_switch_2();
  }
  goto ldv_49307;
  case_11:
  {
  ldv_3_ret_default = ldv_io_instance_probe_3_11(ldv_3_container_struct_driver_info->bind,
                                                 ldv_3_resource_struct_usbnet_ptr,
                                                 ldv_3_resource_struct_usb_interface_ptr);
  ldv_3_ret_default = ldv_filter_err_code(ldv_3_ret_default);
  tmp___1 = ldv_undef_int();
  }
  if (tmp___1 != 0) {
    ldv_statevar_3 = 8;
  } else {
    ldv_statevar_3 = 10;
  }
  goto ldv_49307;
  case_13:
  {
  tmp___2 = ldv_xmalloc(232UL);
  ldv_3_resource_struct_sk_buff_ptr = (struct sk_buff *)tmp___2;
  tmp___3 = ldv_xmalloc(192UL);
  ldv_3_resource_struct_urb_ptr = (struct urb *)tmp___3;
  tmp___4 = ldv_xmalloc(1528UL);
  ldv_3_resource_struct_usb_interface_ptr = (struct usb_interface *)tmp___4;
  tmp___5 = ldv_xmalloc(1472UL);
  ldv_3_resource_struct_usbnet_ptr = (struct usbnet *)tmp___5;
  tmp___6 = ldv_undef_int();
  }
  if (tmp___6 != 0) {
    ldv_statevar_3 = 6;
  } else {
    ldv_statevar_3 = 11;
  }
  goto ldv_49307;
  case_14: ;
  goto ldv_49307;
  case_18:
  {
  ldv_io_instance_callback_3_17(ldv_3_callback_indication, ldv_3_resource_struct_usbnet_ptr,
                                (void *)ldv_3_resource_struct_sk_buff_ptr, ldv_3_ldv_param_17_2_default);
  ldv_statevar_3 = 3;
  }
  goto ldv_49307;
  case_20:
  {
  ldv_io_instance_callback_3_20(ldv_3_callback_reset, ldv_3_resource_struct_usbnet_ptr);
  ldv_statevar_3 = 3;
  }
  goto ldv_49307;
  case_21:
  {
  ldv_io_instance_callback_3_21(ldv_3_callback_rx_fixup, ldv_3_resource_struct_usbnet_ptr,
                                ldv_3_resource_struct_sk_buff_ptr);
  ldv_statevar_3 = 3;
  }
  goto ldv_49307;
  case_22:
  {
  ldv_io_instance_callback_3_22(ldv_3_callback_status, ldv_3_resource_struct_usbnet_ptr,
                                ldv_3_resource_struct_urb_ptr);
  ldv_statevar_3 = 3;
  }
  goto ldv_49307;
  case_24:
  {
  ldv_io_instance_callback_3_23(ldv_3_callback_tx_fixup, ldv_3_resource_struct_usbnet_ptr,
                                ldv_3_resource_struct_sk_buff_ptr, ldv_3_ldv_param_23_2_default);
  ldv_statevar_3 = 3;
  }
  goto ldv_49307;
  case_26:
  {
  ldv_io_instance_callback_3_26(ldv_3_callback_unbind, ldv_3_resource_struct_usbnet_ptr,
                                ldv_3_resource_struct_usb_interface_ptr);
  ldv_statevar_3 = 3;
  }
  goto ldv_49307;
  switch_default: ;
  switch_break: ;
  }
  ldv_49307: ;
  return;
}
}
void ldv_struct_driver_info_io_instance_4(void *arg0 )
{
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  void *tmp___2 ;
  void *tmp___3 ;
  void *tmp___4 ;
  void *tmp___5 ;
  int tmp___6 ;
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
  if (ldv_statevar_4 == 6) {
    goto case_6;
  } else {
  }
  if (ldv_statevar_4 == 8) {
    goto case_8;
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
  if (ldv_statevar_4 == 13) {
    goto case_13;
  } else {
  }
  if (ldv_statevar_4 == 14) {
    goto case_14;
  } else {
  }
  if (ldv_statevar_4 == 18) {
    goto case_18;
  } else {
  }
  if (ldv_statevar_4 == 20) {
    goto case_20;
  } else {
  }
  if (ldv_statevar_4 == 21) {
    goto case_21;
  } else {
  }
  if (ldv_statevar_4 == 22) {
    goto case_22;
  } else {
  }
  if (ldv_statevar_4 == 24) {
    goto case_24;
  } else {
  }
  if (ldv_statevar_4 == 26) {
    goto case_26;
  } else {
  }
  goto switch_default;
  case_1:
  {
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    ldv_statevar_4 = 6;
  } else {
    ldv_statevar_4 = 11;
  }
  goto ldv_49328;
  case_2:
  {
  ldv_io_instance_release_4_2(ldv_4_container_struct_driver_info->stop, ldv_4_resource_struct_usbnet_ptr);
  ldv_statevar_4 = 1;
  }
  goto ldv_49328;
  case_3:
  {
  ldv_statevar_4 = ldv_switch_2();
  }
  goto ldv_49328;
  case_4:
  {
  ldv_io_instance_callback_4_4(ldv_4_callback_early_init, ldv_4_resource_struct_usbnet_ptr);
  ldv_statevar_4 = 3;
  }
  goto ldv_49328;
  case_6:
  {
  ldv_free((void *)ldv_4_resource_struct_sk_buff_ptr);
  ldv_free((void *)ldv_4_resource_struct_urb_ptr);
  ldv_free((void *)ldv_4_resource_struct_usb_interface_ptr);
  ldv_free((void *)ldv_4_resource_struct_usbnet_ptr);
  ldv_4_ret_default = 1;
  ldv_statevar_4 = 14;
  }
  goto ldv_49328;
  case_8:
  {
  ldv_assume(ldv_4_ret_default != 0);
  tmp___0 = ldv_undef_int();
  }
  if (tmp___0 != 0) {
    ldv_statevar_4 = 6;
  } else {
    ldv_statevar_4 = 11;
  }
  goto ldv_49328;
  case_10:
  {
  ldv_assume(ldv_4_ret_default == 0);
  ldv_statevar_4 = ldv_switch_2();
  }
  goto ldv_49328;
  case_11:
  {
  ldv_4_ret_default = ldv_io_instance_probe_4_11(ldv_4_container_struct_driver_info->bind,
                                                 ldv_4_resource_struct_usbnet_ptr,
                                                 ldv_4_resource_struct_usb_interface_ptr);
  ldv_4_ret_default = ldv_filter_err_code(ldv_4_ret_default);
  tmp___1 = ldv_undef_int();
  }
  if (tmp___1 != 0) {
    ldv_statevar_4 = 8;
  } else {
    ldv_statevar_4 = 10;
  }
  goto ldv_49328;
  case_13:
  {
  tmp___2 = ldv_xmalloc(232UL);
  ldv_4_resource_struct_sk_buff_ptr = (struct sk_buff *)tmp___2;
  tmp___3 = ldv_xmalloc(192UL);
  ldv_4_resource_struct_urb_ptr = (struct urb *)tmp___3;
  tmp___4 = ldv_xmalloc(1528UL);
  ldv_4_resource_struct_usb_interface_ptr = (struct usb_interface *)tmp___4;
  tmp___5 = ldv_xmalloc(1472UL);
  ldv_4_resource_struct_usbnet_ptr = (struct usbnet *)tmp___5;
  tmp___6 = ldv_undef_int();
  }
  if (tmp___6 != 0) {
    ldv_statevar_4 = 6;
  } else {
    ldv_statevar_4 = 11;
  }
  goto ldv_49328;
  case_14: ;
  goto ldv_49328;
  case_18:
  {
  ldv_io_instance_callback_4_17(ldv_4_callback_indication, ldv_4_resource_struct_usbnet_ptr,
                                (void *)ldv_4_resource_struct_sk_buff_ptr, ldv_4_ldv_param_17_2_default);
  ldv_statevar_4 = 3;
  }
  goto ldv_49328;
  case_20:
  {
  ldv_io_instance_callback_4_20(ldv_4_callback_reset, ldv_4_resource_struct_usbnet_ptr);
  ldv_statevar_4 = 3;
  }
  goto ldv_49328;
  case_21:
  {
  ldv_io_instance_callback_4_21(ldv_4_callback_rx_fixup, ldv_4_resource_struct_usbnet_ptr,
                                ldv_4_resource_struct_sk_buff_ptr);
  ldv_statevar_4 = 3;
  }
  goto ldv_49328;
  case_22:
  {
  ldv_io_instance_callback_4_22(ldv_4_callback_status, ldv_4_resource_struct_usbnet_ptr,
                                ldv_4_resource_struct_urb_ptr);
  ldv_statevar_4 = 3;
  }
  goto ldv_49328;
  case_24:
  {
  ldv_io_instance_callback_4_23(ldv_4_callback_tx_fixup, ldv_4_resource_struct_usbnet_ptr,
                                ldv_4_resource_struct_sk_buff_ptr, ldv_4_ldv_param_23_2_default);
  ldv_statevar_4 = 3;
  }
  goto ldv_49328;
  case_26:
  {
  ldv_io_instance_callback_4_26(ldv_4_callback_unbind, ldv_4_resource_struct_usbnet_ptr,
                                ldv_4_resource_struct_usb_interface_ptr);
  ldv_statevar_4 = 3;
  }
  goto ldv_49328;
  switch_default: ;
  switch_break: ;
  }
  ldv_49328: ;
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
  return (8);
  case_4: ;
  return (9);
  case_5: ;
  return (10);
  case_6: ;
  return (11);
  case_7: ;
  return (12);
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
  goto switch_default;
  case_0: ;
  return (4);
  case_1: ;
  return (22);
  case_2: ;
  return (25);
  case_3: ;
  return (27);
  case_4: ;
  return (29);
  case_5: ;
  return (31);
  case_6: ;
  return (33);
  case_7: ;
  return (36);
  case_8: ;
  return (38);
  case_9: ;
  return (39);
  case_10: ;
  return (40);
  case_11: ;
  return (42);
  case_12: ;
  return (45);
  case_13: ;
  return (47);
  case_14: ;
  return (49);
  case_15: ;
  return (52);
  case_16: ;
  return (55);
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
  return (2);
  case_1: ;
  return (4);
  case_2: ;
  return (18);
  case_3: ;
  return (20);
  case_4: ;
  return (21);
  case_5: ;
  return (22);
  case_6: ;
  return (24);
  case_7: ;
  return (26);
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
  goto switch_default;
  case_0: ;
  return (5);
  case_1: ;
  return (6);
  case_2: ;
  return (11);
  case_3: ;
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
void ldv_switch_automaton_state_0_1(void)
{
  {
  ldv_statevar_0 = 5;
  return;
}
}
void ldv_switch_automaton_state_0_5(void)
{
  {
  ldv_statevar_0 = 4;
  return;
}
}
void ldv_switch_automaton_state_1_14(void)
{
  {
  ldv_statevar_1 = 13;
  return;
}
}
void ldv_switch_automaton_state_1_5(void)
{
  {
  ldv_1_ret_default = 1;
  ldv_statevar_1 = 14;
  return;
}
}
void ldv_switch_automaton_state_2_14(void)
{
  {
  ldv_statevar_2 = 13;
  return;
}
}
void ldv_switch_automaton_state_2_5(void)
{
  {
  ldv_2_ret_default = 1;
  ldv_statevar_2 = 14;
  return;
}
}
void ldv_switch_automaton_state_3_14(void)
{
  {
  ldv_statevar_3 = 13;
  return;
}
}
void ldv_switch_automaton_state_3_5(void)
{
  {
  ldv_3_ret_default = 1;
  ldv_statevar_3 = 14;
  return;
}
}
void ldv_switch_automaton_state_4_14(void)
{
  {
  ldv_statevar_4 = 13;
  return;
}
}
void ldv_switch_automaton_state_4_5(void)
{
  {
  ldv_4_ret_default = 1;
  ldv_statevar_4 = 14;
  return;
}
}
void ldv_switch_automaton_state_5_1(void)
{
  {
  ldv_statevar_5 = 3;
  return;
}
}
void ldv_switch_automaton_state_5_3(void)
{
  {
  ldv_statevar_5 = 2;
  return;
}
}
void ldv_switch_automaton_state_6_1(void)
{
  {
  ldv_statevar_6 = 4;
  return;
}
}
void ldv_switch_automaton_state_6_4(void)
{
  {
  ldv_statevar_6 = 3;
  return;
}
}
void ldv_switch_automaton_state_7_1(void)
{
  {
  ldv_7_reset_flag_default = 0;
  ldv_statevar_7 = 15;
  return;
}
}
void ldv_switch_automaton_state_7_15(void)
{
  {
  ldv_statevar_7 = 14;
  return;
}
}
void ldv_switch_automaton_state_8_1(void)
{
  {
  ldv_statevar_8 = 4;
  return;
}
}
void ldv_switch_automaton_state_8_4(void)
{
  {
  ldv_statevar_8 = 3;
  return;
}
}
void ldv_timer_dummy_factory_6(void *arg0 )
{
  {
  {
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
  goto switch_default;
  case_2:
  {
  ldv_assume(ldv_statevar_5 == 2);
  ldv_dispatch_instance_deregister_6_2(ldv_6_container_timer_list);
  ldv_statevar_6 = 4;
  }
  goto ldv_49434;
  case_3:
  {
  ldv_assume(ldv_statevar_5 == 3);
  ldv_dispatch_instance_register_6_3(ldv_6_container_timer_list);
  ldv_statevar_6 = 2;
  }
  goto ldv_49434;
  case_4: ;
  goto ldv_49434;
  switch_default: ;
  switch_break: ;
  }
  ldv_49434: ;
  return;
}
}
void ldv_timer_instance_callback_5_2(void (*arg0)(unsigned long ) , unsigned long arg1 )
{
  {
  {
  (*arg0)(arg1);
  }
  return;
}
}
void ldv_timer_timer_instance_5(void *arg0 )
{
  {
  {
  if (ldv_statevar_5 == 2) {
    goto case_2;
  } else {
  }
  if (ldv_statevar_5 == 3) {
    goto case_3;
  } else {
  }
  goto switch_default;
  case_2:
  {
  ldv_switch_to_interrupt_context();
  }
  if ((unsigned long )ldv_5_container_timer_list->function != (unsigned long )((void (*)(unsigned long ))0)) {
    {
    ldv_timer_instance_callback_5_2(ldv_5_container_timer_list->function, ldv_5_container_timer_list->data);
    }
  } else {
  }
  {
  ldv_switch_to_process_context();
  ldv_statevar_5 = 3;
  }
  goto ldv_49447;
  case_3: ;
  goto ldv_49447;
  switch_default: ;
  switch_break: ;
  }
  ldv_49447: ;
  return;
}
}
void ldv_usb_deregister(void *arg0 , struct usb_driver *arg1 )
{
  struct usb_driver *ldv_9_usb_driver_usb_driver ;
  {
  {
  ldv_9_usb_driver_usb_driver = arg1;
  ldv_assume(ldv_statevar_8 == 2);
  ldv_dispatch_deregister_9_1(ldv_9_usb_driver_usb_driver);
  }
  return;
  return;
}
}
void ldv_usb_dummy_factory_8(void *arg0 )
{
  {
  {
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
  goto switch_default;
  case_2:
  {
  ldv_assume(ldv_statevar_7 == 3);
  ldv_dispatch_instance_deregister_8_2(ldv_8_container_usb_driver);
  ldv_statevar_8 = 4;
  }
  goto ldv_49459;
  case_3:
  {
  ldv_assume(ldv_statevar_7 == 15);
  ldv_dispatch_instance_register_8_3(ldv_8_container_usb_driver);
  ldv_statevar_8 = 2;
  }
  goto ldv_49459;
  case_4: ;
  goto ldv_49459;
  switch_default: ;
  switch_break: ;
  }
  ldv_49459: ;
  return;
}
}
void ldv_usb_instance_post_7_9(int (*arg0)(struct usb_interface * ) , struct usb_interface *arg1 )
{
  {
  {
  (*arg0)(arg1);
  }
  return;
}
}
void ldv_usb_instance_pre_7_10(int (*arg0)(struct usb_interface * ) , struct usb_interface *arg1 )
{
  {
  {
  (*arg0)(arg1);
  }
  return;
}
}
int ldv_usb_instance_probe_7_13(int (*arg0)(struct usb_interface * , struct usb_device_id * ) ,
                                struct usb_interface *arg1 , struct usb_device_id *arg2 )
{
  int tmp ;
  {
  {
  tmp = usbnet_probe(arg1, (struct usb_device_id const *)arg2);
  }
  return (tmp);
}
}
void ldv_usb_instance_release_7_4(void (*arg0)(struct usb_interface * ) , struct usb_interface *arg1 )
{
  {
  {
  usbnet_disconnect(arg1);
  }
  return;
}
}
void ldv_usb_instance_resume_7_7(int (*arg0)(struct usb_interface * ) , struct usb_interface *arg1 )
{
  {
  {
  usbnet_resume(arg1);
  }
  return;
}
}
void ldv_usb_instance_suspend_7_8(int (*arg0)(struct usb_interface * , struct pm_message ) ,
                                  struct usb_interface *arg1 , struct pm_message *arg2 )
{
  {
  {
  usbnet_suspend(arg1, *arg2);
  }
  return;
}
}
int ldv_usb_register_driver(int arg0 , struct usb_driver *arg1 , struct module *arg2 ,
                            char *arg3 )
{
  struct usb_driver *ldv_10_usb_driver_usb_driver ;
  int tmp ;
  {
  {
  arg0 = ldv_pre_usb_register_driver();
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    {
    ldv_assume(arg0 == 0);
    ldv_10_usb_driver_usb_driver = arg1;
    ldv_assume(ldv_statevar_8 == 4);
    ldv_dispatch_register_10_2(ldv_10_usb_driver_usb_driver);
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
void ldv_usb_usb_instance_7(void *arg0 )
{
  void *tmp ;
  void *tmp___0 ;
  void *tmp___1 ;
  int tmp___2 ;
  void *tmp___3 ;
  {
  {
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
  if (ldv_statevar_7 == 6) {
    goto case_6;
  } else {
  }
  if (ldv_statevar_7 == 7) {
    goto case_7;
  } else {
  }
  if (ldv_statevar_7 == 9) {
    goto case_9;
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
  if (ldv_statevar_7 == 12) {
    goto case_12;
  } else {
  }
  if (ldv_statevar_7 == 14) {
    goto case_14;
  } else {
  }
  if (ldv_statevar_7 == 15) {
    goto case_15;
  } else {
  }
  if (ldv_statevar_7 == 16) {
    goto case_16;
  } else {
  }
  goto switch_default;
  case_3:
  {
  ldv_assume(ldv_7_probe_retval_default != 0);
  ldv_free((void *)ldv_7_resource_usb_interface);
  ldv_free((void *)ldv_7_usb_device_usb_device);
  ldv_7_reset_flag_default = 0;
  ldv_statevar_7 = 15;
  }
  goto ldv_49508;
  case_4:
  {
  ldv_usb_instance_release_7_4(ldv_7_container_usb_driver->disconnect, ldv_7_resource_usb_interface);
  ldv_free((void *)ldv_7_resource_usb_interface);
  ldv_free((void *)ldv_7_usb_device_usb_device);
  ldv_7_reset_flag_default = 0;
  ldv_statevar_7 = 15;
  }
  goto ldv_49508;
  case_5:
  {
  ldv_usb_instance_release_7_4(ldv_7_container_usb_driver->disconnect, ldv_7_resource_usb_interface);
  ldv_free((void *)ldv_7_resource_usb_interface);
  ldv_free((void *)ldv_7_usb_device_usb_device);
  ldv_7_reset_flag_default = 0;
  ldv_statevar_7 = 15;
  }
  goto ldv_49508;
  case_6:
  ldv_statevar_7 = 4;
  goto ldv_49508;
  case_7:
  {
  ldv_usb_instance_resume_7_7(ldv_7_container_usb_driver->resume, ldv_7_resource_usb_interface);
  ldv_statevar_7 = 4;
  }
  goto ldv_49508;
  case_9: ;
  if ((unsigned long )ldv_7_container_usb_driver->post_reset != (unsigned long )((int (*)(struct usb_interface * ))0)) {
    {
    ldv_usb_instance_post_7_9(ldv_7_container_usb_driver->post_reset, ldv_7_resource_usb_interface);
    }
  } else {
  }
  ldv_statevar_7 = 4;
  goto ldv_49508;
  case_10: ;
  if ((unsigned long )ldv_7_container_usb_driver->pre_reset != (unsigned long )((int (*)(struct usb_interface * ))0)) {
    {
    ldv_usb_instance_pre_7_10(ldv_7_container_usb_driver->pre_reset, ldv_7_resource_usb_interface);
    }
  } else {
  }
  ldv_statevar_7 = 9;
  goto ldv_49508;
  case_11: ;
  goto ldv_49508;
  case_12:
  {
  ldv_assume(ldv_7_probe_retval_default == 0);
  ldv_statevar_7 = ldv_switch_3();
  }
  goto ldv_49508;
  case_14:
  {
  tmp = ldv_xmalloc(1528UL);
  ldv_7_resource_usb_interface = (struct usb_interface *)tmp;
  tmp___0 = ldv_xmalloc(1992UL);
  ldv_7_usb_device_usb_device = (struct usb_device *)tmp___0;
  ldv_7_resource_usb_interface->dev.parent = & ldv_7_usb_device_usb_device->dev;
  tmp___1 = ldv_xmalloc(32UL);
  ldv_7_ldv_param_13_1_default = (struct usb_device_id *)tmp___1;
  ldv_pre_probe();
  ldv_7_probe_retval_default = ldv_usb_instance_probe_7_13((int (*)(struct usb_interface * ,
                                                                    struct usb_device_id * ))ldv_7_container_usb_driver->probe,
                                                           ldv_7_resource_usb_interface,
                                                           ldv_7_ldv_param_13_1_default);
  ldv_7_probe_retval_default = ldv_post_probe(ldv_7_probe_retval_default);
  ldv_free((void *)ldv_7_ldv_param_13_1_default);
  tmp___2 = ldv_undef_int();
  }
  if (tmp___2 != 0) {
    ldv_statevar_7 = 3;
  } else {
    ldv_statevar_7 = 12;
  }
  goto ldv_49508;
  case_15: ;
  goto ldv_49508;
  case_16:
  {
  tmp___3 = ldv_xmalloc(4UL);
  ldv_7_ldv_param_8_1_default = (struct pm_message *)tmp___3;
  ldv_usb_instance_suspend_7_8(ldv_7_container_usb_driver->suspend, ldv_7_resource_usb_interface,
                               ldv_7_ldv_param_8_1_default);
  ldv_free((void *)ldv_7_ldv_param_8_1_default);
  ldv_statevar_7 = 7;
  }
  goto ldv_49508;
  switch_default: ;
  switch_break: ;
  }
  ldv_49508: ;
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
static void ldv_mutex_lock_15(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_mutex_lock_command_lock_of_rndis_wlan_private(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_unlock_16(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_mutex_unlock_command_lock_of_rndis_wlan_private(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_lock_17(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_mutex_lock_command_lock_of_rndis_wlan_private(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_unlock_18(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_mutex_unlock_command_lock_of_rndis_wlan_private(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_lock_19(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_mutex_lock_command_lock_of_rndis_wlan_private(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_unlock_20(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_mutex_unlock_command_lock_of_rndis_wlan_private(ldv_func_arg1);
  }
  return;
}
}
static int ldv_usb_register_driver_21(struct usb_driver *ldv_func_arg1 , struct module *ldv_func_arg2 ,
                                      char const *ldv_func_arg3 )
{
  ldv_func_ret_type ldv_func_res ;
  int tmp ;
  int tmp___0 ;
  {
  {
  tmp = usb_register_driver(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3);
  ldv_func_res = tmp;
  tmp___0 = ldv_usb_register_driver(ldv_func_res, ldv_func_arg1, ldv_func_arg2, (char *)ldv_func_arg3);
  }
  return (tmp___0);
  return (ldv_func_res);
}
}
static void ldv_usb_deregister_22(struct usb_driver *ldv_func_arg1 )
{
  {
  {
  usb_deregister(ldv_func_arg1);
  ldv_usb_deregister((void *)0, ldv_func_arg1);
  }
  return;
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
void ldv_assert_linux_kernel_locking_mutex__one_thread_double_lock(int expr ) ;
void ldv_assert_linux_kernel_locking_mutex__one_thread_double_lock_try(int expr ) ;
void ldv_assert_linux_kernel_locking_mutex__one_thread_double_unlock(int expr ) ;
void ldv_assert_linux_kernel_locking_mutex__one_thread_locked_at_exit(int expr ) ;
ldv_set LDV_MUTEXES_command_lock_of_rndis_wlan_private ;
void ldv_mutex_lock_command_lock_of_rndis_wlan_private(struct mutex *lock )
{
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_lock(! LDV_MUTEXES_command_lock_of_rndis_wlan_private);
  LDV_MUTEXES_command_lock_of_rndis_wlan_private = 1;
  }
  return;
}
}
int ldv_mutex_lock_interruptible_or_killable_command_lock_of_rndis_wlan_private(struct mutex *lock )
{
  int tmp ;
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_lock(! LDV_MUTEXES_command_lock_of_rndis_wlan_private);
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    LDV_MUTEXES_command_lock_of_rndis_wlan_private = 1;
    return (0);
  } else {
    return (-4);
  }
}
}
int ldv_mutex_is_locked_command_lock_of_rndis_wlan_private(struct mutex *lock )
{
  int tmp ;
  {
  if ((int )LDV_MUTEXES_command_lock_of_rndis_wlan_private) {
    return (1);
  } else {
    {
    tmp = ldv_undef_int();
    }
    if (tmp != 0) {
      return (1);
    } else {
      return (0);
    }
  }
}
}
int ldv_mutex_trylock_command_lock_of_rndis_wlan_private(struct mutex *lock )
{
  int tmp ;
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_lock_try(! LDV_MUTEXES_command_lock_of_rndis_wlan_private);
  tmp = ldv_mutex_is_locked_command_lock_of_rndis_wlan_private(lock);
  }
  if (tmp != 0) {
    return (0);
  } else {
    LDV_MUTEXES_command_lock_of_rndis_wlan_private = 1;
    return (1);
  }
}
}
int ldv_atomic_dec_and_mutex_lock_command_lock_of_rndis_wlan_private(atomic_t *cnt ,
                                                                     struct mutex *lock )
{
  {
  cnt->counter = cnt->counter - 1;
  if (cnt->counter != 0) {
    return (0);
  } else {
    {
    ldv_mutex_lock_command_lock_of_rndis_wlan_private(lock);
    }
    return (1);
  }
}
}
void ldv_mutex_unlock_command_lock_of_rndis_wlan_private(struct mutex *lock )
{
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_unlock((int )LDV_MUTEXES_command_lock_of_rndis_wlan_private);
  LDV_MUTEXES_command_lock_of_rndis_wlan_private = 0;
  }
  return;
}
}
ldv_set LDV_MUTEXES_i_mutex_of_inode ;
void ldv_mutex_lock_i_mutex_of_inode(struct mutex *lock )
{
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_lock(! LDV_MUTEXES_i_mutex_of_inode);
  LDV_MUTEXES_i_mutex_of_inode = 1;
  }
  return;
}
}
int ldv_mutex_lock_interruptible_or_killable_i_mutex_of_inode(struct mutex *lock )
{
  int tmp ;
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_lock(! LDV_MUTEXES_i_mutex_of_inode);
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    LDV_MUTEXES_i_mutex_of_inode = 1;
    return (0);
  } else {
    return (-4);
  }
}
}
int ldv_mutex_is_locked_i_mutex_of_inode(struct mutex *lock )
{
  int tmp ;
  {
  if ((int )LDV_MUTEXES_i_mutex_of_inode) {
    return (1);
  } else {
    {
    tmp = ldv_undef_int();
    }
    if (tmp != 0) {
      return (1);
    } else {
      return (0);
    }
  }
}
}
int ldv_mutex_trylock_i_mutex_of_inode(struct mutex *lock )
{
  int tmp ;
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_lock_try(! LDV_MUTEXES_i_mutex_of_inode);
  tmp = ldv_mutex_is_locked_i_mutex_of_inode(lock);
  }
  if (tmp != 0) {
    return (0);
  } else {
    LDV_MUTEXES_i_mutex_of_inode = 1;
    return (1);
  }
}
}
int ldv_atomic_dec_and_mutex_lock_i_mutex_of_inode(atomic_t *cnt , struct mutex *lock )
{
  {
  cnt->counter = cnt->counter - 1;
  if (cnt->counter != 0) {
    return (0);
  } else {
    {
    ldv_mutex_lock_i_mutex_of_inode(lock);
    }
    return (1);
  }
}
}
void ldv_mutex_unlock_i_mutex_of_inode(struct mutex *lock )
{
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_unlock((int )LDV_MUTEXES_i_mutex_of_inode);
  LDV_MUTEXES_i_mutex_of_inode = 0;
  }
  return;
}
}
ldv_set LDV_MUTEXES_lock ;
void ldv_mutex_lock_lock(struct mutex *lock )
{
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_lock(! LDV_MUTEXES_lock);
  LDV_MUTEXES_lock = 1;
  }
  return;
}
}
int ldv_mutex_lock_interruptible_or_killable_lock(struct mutex *lock )
{
  int tmp ;
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_lock(! LDV_MUTEXES_lock);
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    LDV_MUTEXES_lock = 1;
    return (0);
  } else {
    return (-4);
  }
}
}
int ldv_mutex_is_locked_lock(struct mutex *lock )
{
  int tmp ;
  {
  if ((int )LDV_MUTEXES_lock) {
    return (1);
  } else {
    {
    tmp = ldv_undef_int();
    }
    if (tmp != 0) {
      return (1);
    } else {
      return (0);
    }
  }
}
}
int ldv_mutex_trylock_lock(struct mutex *lock )
{
  int tmp ;
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_lock_try(! LDV_MUTEXES_lock);
  tmp = ldv_mutex_is_locked_lock(lock);
  }
  if (tmp != 0) {
    return (0);
  } else {
    LDV_MUTEXES_lock = 1;
    return (1);
  }
}
}
int ldv_atomic_dec_and_mutex_lock_lock(atomic_t *cnt , struct mutex *lock )
{
  {
  cnt->counter = cnt->counter - 1;
  if (cnt->counter != 0) {
    return (0);
  } else {
    {
    ldv_mutex_lock_lock(lock);
    }
    return (1);
  }
}
}
void ldv_mutex_unlock_lock(struct mutex *lock )
{
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_unlock((int )LDV_MUTEXES_lock);
  LDV_MUTEXES_lock = 0;
  }
  return;
}
}
ldv_set LDV_MUTEXES_mutex_of_device ;
void ldv_mutex_lock_mutex_of_device(struct mutex *lock )
{
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_lock(! LDV_MUTEXES_mutex_of_device);
  LDV_MUTEXES_mutex_of_device = 1;
  }
  return;
}
}
int ldv_mutex_lock_interruptible_or_killable_mutex_of_device(struct mutex *lock )
{
  int tmp ;
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_lock(! LDV_MUTEXES_mutex_of_device);
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    LDV_MUTEXES_mutex_of_device = 1;
    return (0);
  } else {
    return (-4);
  }
}
}
int ldv_mutex_is_locked_mutex_of_device(struct mutex *lock )
{
  int tmp ;
  {
  if ((int )LDV_MUTEXES_mutex_of_device) {
    return (1);
  } else {
    {
    tmp = ldv_undef_int();
    }
    if (tmp != 0) {
      return (1);
    } else {
      return (0);
    }
  }
}
}
int ldv_mutex_trylock_mutex_of_device(struct mutex *lock )
{
  int tmp ;
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_lock_try(! LDV_MUTEXES_mutex_of_device);
  tmp = ldv_mutex_is_locked_mutex_of_device(lock);
  }
  if (tmp != 0) {
    return (0);
  } else {
    LDV_MUTEXES_mutex_of_device = 1;
    return (1);
  }
}
}
int ldv_atomic_dec_and_mutex_lock_mutex_of_device(atomic_t *cnt , struct mutex *lock )
{
  {
  cnt->counter = cnt->counter - 1;
  if (cnt->counter != 0) {
    return (0);
  } else {
    {
    ldv_mutex_lock_mutex_of_device(lock);
    }
    return (1);
  }
}
}
void ldv_mutex_unlock_mutex_of_device(struct mutex *lock )
{
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_unlock((int )LDV_MUTEXES_mutex_of_device);
  LDV_MUTEXES_mutex_of_device = 0;
  }
  return;
}
}
void ldv_initialize(void)
{
  {
  LDV_MUTEXES_command_lock_of_rndis_wlan_private = 0;
  LDV_MUTEXES_i_mutex_of_inode = 0;
  LDV_MUTEXES_lock = 0;
  LDV_MUTEXES_mutex_of_device = 0;
  return;
}
}
void ldv_check_final_state(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_locked_at_exit(! LDV_MUTEXES_command_lock_of_rndis_wlan_private);
  ldv_assert_linux_kernel_locking_mutex__one_thread_locked_at_exit(! LDV_MUTEXES_i_mutex_of_inode);
  ldv_assert_linux_kernel_locking_mutex__one_thread_locked_at_exit(! LDV_MUTEXES_lock);
  ldv_assert_linux_kernel_locking_mutex__one_thread_locked_at_exit(! LDV_MUTEXES_mutex_of_device);
  }
  return;
}
}
extern void __VERIFIER_error(void) ;
void ldv_assert_linux_kernel_locking_mutex__one_thread_double_lock(int expr )
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
void ldv_assert_linux_kernel_locking_mutex__one_thread_double_lock_try(int expr )
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
void ldv_assert_linux_kernel_locking_mutex__one_thread_double_unlock(int expr )
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
void ldv_assert_linux_kernel_locking_mutex__one_thread_locked_at_exit(int expr )
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
void *external_alloc(void);
struct workqueue_struct *__alloc_workqueue_key(const char *arg0, unsigned int arg1, int arg2, struct lock_class_key *arg3, const char *arg4, ...) {
  return (struct workqueue_struct *)external_alloc();
}
int __VERIFIER_nondet_int(void);
int __dynamic_netdev_dbg(struct _ddebug *arg0, const struct net_device *arg1, const char *arg2, ...) {
  return __VERIFIER_nondet_int();
}
void *external_alloc(void);
struct ieee80211_channel *__ieee80211_get_channel(struct wiphy *arg0, int arg1) {
  return (struct ieee80211_channel *)external_alloc();
}
void __init_work(struct work_struct *arg0, int arg1) {
  return;
}
void __mutex_init(struct mutex *arg0, const char *arg1, struct lock_class_key *arg2) {
  return;
}
void _raw_spin_lock_bh(raw_spinlock_t *arg0) {
  return;
}
void _raw_spin_unlock_bh(raw_spinlock_t *arg0) {
  return;
}
bool __VERIFIER_nondet_bool(void);
bool cancel_delayed_work_sync(struct delayed_work *arg0) {
  return __VERIFIER_nondet_bool();
}
bool __VERIFIER_nondet_bool(void);
bool cancel_work_sync(struct work_struct *arg0) {
  return __VERIFIER_nondet_bool();
}
void cfg80211_connect_result(struct net_device *arg0, const u8 *arg1, const u8 *arg2, size_t arg3, const u8 *arg4, size_t arg5, u16 arg6, gfp_t arg7) {
  return;
}
void cfg80211_cqm_rssi_notify(struct net_device *arg0, enum nl80211_cqm_rssi_threshold_event arg1, gfp_t arg2) {
  return;
}
void cfg80211_disconnected(struct net_device *arg0, u16 arg1, u8 *arg2, size_t arg3, gfp_t arg4) {
  return;
}
void cfg80211_ibss_joined(struct net_device *arg0, const u8 *arg1, gfp_t arg2) {
  return;
}
void *external_alloc(void);
struct cfg80211_bss *cfg80211_inform_bss_width(struct wiphy *arg0, struct ieee80211_channel *arg1, enum nl80211_bss_scan_width arg2, const u8 *arg3, u64 arg4, u16 arg5, u16 arg6, const u8 *arg7, size_t arg8, s32 arg9, gfp_t arg10) {
  return (struct cfg80211_bss *)external_alloc();
}
void cfg80211_michael_mic_failure(struct net_device *arg0, const u8 *arg1, enum nl80211_key_type arg2, int arg3, const u8 *arg4, gfp_t arg5) {
  return;
}
void cfg80211_pmksa_candidate_notify(struct net_device *arg0, int arg1, const u8 *arg2, bool arg3, gfp_t arg4) {
  return;
}
void cfg80211_put_bss(struct wiphy *arg0, struct cfg80211_bss *arg1) {
  return;
}
void cfg80211_roamed(struct net_device *arg0, struct ieee80211_channel *arg1, const u8 *arg2, const u8 *arg3, size_t arg4, const u8 *arg5, size_t arg6, gfp_t arg7) {
  return;
}
void cfg80211_scan_done(struct cfg80211_scan_request *arg0, bool arg1) {
  return;
}
void destroy_workqueue(struct workqueue_struct *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int eth_mac_addr(struct net_device *arg0, void *arg1) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int eth_validate_addr(struct net_device *arg0) {
  return __VERIFIER_nondet_int();
}
void *external_alloc(void);
void *external_allocated_data() {
  return (void *)external_alloc();
}
void flush_workqueue(struct workqueue_struct *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int generic_rndis_bind(struct usbnet *arg0, struct usb_interface *arg1, int arg2) {
  return __VERIFIER_nondet_int();
}
void get_random_bytes(void *arg0, int arg1) {
  return;
}
int __VERIFIER_nondet_int(void);
int ieee80211_frequency_to_channel(int arg0) {
  return __VERIFIER_nondet_int();
}
void init_timer_key(struct timer_list *arg0, unsigned int arg1, const char *arg2, struct lock_class_key *arg3) {
  return;
}
void *external_alloc(void);
void *krealloc(const void *arg0, size_t arg1, gfp_t arg2) {
  return (void *)external_alloc();
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
void ldv_pre_probe() {
  return;
}
int __VERIFIER_nondet_int(void);
int ldv_pre_usb_register_driver() {
  return __VERIFIER_nondet_int();
}
void ldv_switch_to_interrupt_context() {
  return;
}
void ldv_switch_to_process_context() {
  return;
}
void lockdep_init_map(struct lockdep_map *arg0, const char *arg1, struct lock_class_key *arg2, int arg3) {
  return;
}
unsigned long __VERIFIER_nondet_ulong(void);
unsigned long int msecs_to_jiffies(const unsigned int arg0) {
  return __VERIFIER_nondet_ulong();
}
void msleep(unsigned int arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int netdev_err(const struct net_device *arg0, const char *arg1, ...) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int netdev_info(const struct net_device *arg0, const char *arg1, ...) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int netdev_warn(const struct net_device *arg0, const char *arg1, ...) {
  return __VERIFIER_nondet_int();
}
void netif_carrier_off(struct net_device *arg0) {
  return;
}
void netif_carrier_on(struct net_device *arg0) {
  return;
}
bool __VERIFIER_nondet_bool(void);
bool queue_delayed_work_on(int arg0, struct workqueue_struct *arg1, struct delayed_work *arg2, unsigned long arg3) {
  return __VERIFIER_nondet_bool();
}
bool __VERIFIER_nondet_bool(void);
bool queue_work_on(int arg0, struct workqueue_struct *arg1, struct work_struct *arg2) {
  return __VERIFIER_nondet_bool();
}
int __VERIFIER_nondet_int(void);
int rndis_command(struct usbnet *arg0, struct rndis_msg_hdr *arg1, int arg2) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int rndis_rx_fixup(struct usbnet *arg0, struct sk_buff *arg1) {
  return __VERIFIER_nondet_int();
}
void rndis_status(struct usbnet *arg0, struct urb *arg1) {
  return;
}
void *external_alloc(void);
struct sk_buff *rndis_tx_fixup(struct usbnet *arg0, struct sk_buff *arg1, gfp_t arg2) {
  return (struct sk_buff *)external_alloc();
}
void rndis_unbind(struct usbnet *arg0, struct usb_interface *arg1) {
  return;
}
unsigned long __VERIFIER_nondet_ulong(void);
unsigned long int round_jiffies_relative(unsigned long arg0) {
  return __VERIFIER_nondet_ulong();
}
void usb_deregister(struct usb_driver *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int usb_register_driver(struct usb_driver *arg0, struct module *arg1, const char *arg2) {
  return __VERIFIER_nondet_int();
}
void usbnet_disconnect(struct usb_interface *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int usbnet_open(struct net_device *arg0) {
  return __VERIFIER_nondet_int();
}
void usbnet_pause_rx(struct usbnet *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int usbnet_probe(struct usb_interface *arg0, const struct usb_device_id *arg1) {
  return __VERIFIER_nondet_int();
}
void usbnet_purge_paused_rxq(struct usbnet *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int usbnet_resume(struct usb_interface *arg0) {
  return __VERIFIER_nondet_int();
}
void usbnet_resume_rx(struct usbnet *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
netdev_tx_t usbnet_start_xmit(struct sk_buff *arg0, struct net_device *arg1) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int usbnet_stop(struct net_device *arg0) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int usbnet_suspend(struct usb_interface *arg0, pm_message_t arg1) {
  return __VERIFIER_nondet_int();
}
void usbnet_tx_timeout(struct net_device *arg0) {
  return;
}
void warn_slowpath_null(const char *arg0, const int arg1) {
  return;
}
void wiphy_free(struct wiphy *arg0) {
  return;
}
void *external_alloc(void);
struct wiphy *wiphy_new(const struct cfg80211_ops *arg0, int arg1) {
  return (struct wiphy *)external_alloc();
}
int __VERIFIER_nondet_int(void);
int wiphy_register(struct wiphy *arg0) {
  return __VERIFIER_nondet_int();
}
void wiphy_unregister(struct wiphy *arg0) {
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
