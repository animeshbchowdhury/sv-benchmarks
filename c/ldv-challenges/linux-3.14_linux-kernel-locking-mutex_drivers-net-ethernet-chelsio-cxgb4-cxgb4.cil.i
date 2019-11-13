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
typedef __u16 __be16;
typedef __u32 __be32;
typedef __u64 __be64;
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
typedef unsigned int uint;
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
struct mutex;
struct ldv_thread;
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
struct net_device;
struct file_operations;
struct completion;
struct pid;
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
typedef int pao_T__;
typedef int pao_T_____0;
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
struct inode;
struct cdev {
   struct kobject kobj ;
   struct module *owner ;
   struct file_operations const *ops ;
   struct list_head list ;
   dev_t dev ;
   unsigned int count ;
};
struct backing_dev_info;
struct plist_head {
   struct list_head node_list ;
};
struct plist_node {
   int prio ;
   struct list_head prio_list ;
   struct list_head node_list ;
};
struct rw_semaphore;
struct rw_semaphore {
   long count ;
   raw_spinlock_t wait_lock ;
   struct list_head wait_list ;
   struct lockdep_map dep_map ;
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
struct resource {
   resource_size_t start ;
   resource_size_t end ;
   char const *name ;
   unsigned long flags ;
   struct resource *parent ;
   struct resource *sibling ;
   struct resource *child ;
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
struct pci_dev;
struct pci_bus;
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
struct semaphore {
   raw_spinlock_t lock ;
   unsigned int count ;
   struct list_head wait_list ;
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
enum ldv_21646 {
    SS_FREE = 0,
    SS_UNCONNECTED = 1,
    SS_CONNECTING = 2,
    SS_CONNECTED = 3,
    SS_DISCONNECTING = 4
} ;
typedef enum ldv_21646 socket_state;
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
struct in6_addr;
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
struct rtable;
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
struct icmpv6_mib_device {
   atomic_long_t mibs[6U] ;
};
struct icmpv6msg_mib {
   atomic_long_t mibs[512U] ;
};
struct icmpv6msg_mib_device {
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
struct in_addr {
   __be32 s_addr ;
};
union __anonunion_in6_u_224 {
   __u8 u6_addr8[16U] ;
   __be16 u6_addr16[8U] ;
   __be32 u6_addr32[4U] ;
};
struct in6_addr {
   union __anonunion_in6_u_224 in6_u ;
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
enum irqreturn {
    IRQ_NONE = 0,
    IRQ_HANDLED = 1,
    IRQ_WAKE_THREAD = 2
} ;
typedef enum irqreturn irqreturn_t;
struct netprio_map {
   struct callback_head rcu ;
   u32 priomap_len ;
   u32 priomap[] ;
};
struct xfrm_policy;
struct xfrm_state;
struct request_sock;
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
enum ldv_28004 {
    NETREG_UNINITIALIZED = 0,
    NETREG_REGISTERED = 1,
    NETREG_UNREGISTERING = 2,
    NETREG_UNREGISTERED = 3,
    NETREG_RELEASED = 4,
    NETREG_DUMMY = 5
} ;
enum ldv_28005 {
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
   enum ldv_28004 reg_state : 8 ;
   bool dismantle ;
   enum ldv_28005 rtnl_link_state : 16 ;
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
struct pci_driver;
union __anonunion____missing_field_name_241 {
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
   u8 pcie_mpss : 3 ;
   u8 rom_base_reg ;
   u8 pin ;
   u16 pcie_flags_reg ;
   struct pci_driver *driver ;
   u64 dma_mask ;
   struct device_dma_parameters dma_parms ;
   pci_power_t current_state ;
   u8 pm_cap ;
   unsigned int pme_support : 5 ;
   unsigned int pme_interrupt : 1 ;
   unsigned int pme_poll : 1 ;
   unsigned int d1_support : 1 ;
   unsigned int d2_support : 1 ;
   unsigned int no_d1d2 : 1 ;
   unsigned int no_d3cold : 1 ;
   unsigned int d3cold_allowed : 1 ;
   unsigned int mmio_always_on : 1 ;
   unsigned int wakeup_prepared : 1 ;
   unsigned int runtime_d3cold : 1 ;
   unsigned int d3_delay ;
   unsigned int d3cold_delay ;
   struct pcie_link_state *link_state ;
   pci_channel_state_t error_state ;
   struct device dev ;
   int cfg_size ;
   unsigned int irq ;
   struct resource resource[17U] ;
   bool match_driver ;
   unsigned int transparent : 1 ;
   unsigned int multifunction : 1 ;
   unsigned int is_added : 1 ;
   unsigned int is_busmaster : 1 ;
   unsigned int no_msi : 1 ;
   unsigned int block_cfg_access : 1 ;
   unsigned int broken_parity_status : 1 ;
   unsigned int irq_reroute_variant : 2 ;
   unsigned int msi_enabled : 1 ;
   unsigned int msix_enabled : 1 ;
   unsigned int ari_enabled : 1 ;
   unsigned int is_managed : 1 ;
   unsigned int needs_freset : 1 ;
   unsigned int state_saved : 1 ;
   unsigned int is_physfn : 1 ;
   unsigned int is_virtfn : 1 ;
   unsigned int reset_fn : 1 ;
   unsigned int is_hotplug_bridge : 1 ;
   unsigned int __aer_firmware_first_valid : 1 ;
   unsigned int __aer_firmware_first : 1 ;
   unsigned int broken_intx_masking : 1 ;
   unsigned int io_window_1k : 1 ;
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
   union __anonunion____missing_field_name_241 __annonCompField75 ;
   struct pci_ats *ats ;
   phys_addr_t rom ;
   size_t romlen ;
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
   unsigned int is_added : 1 ;
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
struct msix_entry {
   u32 vector ;
   u16 entry ;
};
struct firmware {
   size_t size ;
   u8 const *data ;
   struct page **pages ;
   void *priv ;
};
struct netpoll;
struct mii_ioctl_data {
   __u16 phy_id ;
   __u16 reg_num ;
   __u16 val_in ;
   __u16 val_out ;
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
union __anonunion____missing_field_name_250 {
   void *arg ;
   struct kparam_string const *str ;
   struct kparam_array const *arr ;
};
struct kernel_param {
   char const *name ;
   struct kernel_param_ops const *ops ;
   u16 perm ;
   s16 level ;
   union __anonunion____missing_field_name_250 __annonCompField76 ;
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
struct nla_policy {
   u16 type ;
   u16 len ;
};
struct rtnl_link_ops {
   struct list_head list ;
   char const *kind ;
   size_t priv_size ;
   void (*setup)(struct net_device * ) ;
   int maxtype ;
   struct nla_policy const *policy ;
   int (*validate)(struct nlattr ** , struct nlattr ** ) ;
   int (*newlink)(struct net * , struct net_device * , struct nlattr ** , struct nlattr ** ) ;
   int (*changelink)(struct net_device * , struct nlattr ** , struct nlattr ** ) ;
   void (*dellink)(struct net_device * , struct list_head * ) ;
   size_t (*get_size)(struct net_device const * ) ;
   int (*fill_info)(struct sk_buff * , struct net_device const * ) ;
   size_t (*get_xstats_size)(struct net_device const * ) ;
   int (*fill_xstats)(struct sk_buff * , struct net_device const * ) ;
   unsigned int (*get_num_tx_queues)(void) ;
   unsigned int (*get_num_rx_queues)(void) ;
   int slave_maxtype ;
   struct nla_policy const *slave_policy ;
   int (*slave_validate)(struct nlattr ** , struct nlattr ** ) ;
   int (*slave_changelink)(struct net_device * , struct net_device * , struct nlattr ** ,
                           struct nlattr ** ) ;
   size_t (*get_slave_size)(struct net_device const * , struct net_device const * ) ;
   int (*fill_slave_info)(struct sk_buff * , struct net_device const * , struct net_device const * ) ;
};
struct neigh_table;
struct neigh_parms {
   struct net *net ;
   struct net_device *dev ;
   struct neigh_parms *next ;
   int (*neigh_setup)(struct neighbour * ) ;
   void (*neigh_cleanup)(struct neighbour * ) ;
   struct neigh_table *tbl ;
   void *sysctl_table ;
   int dead ;
   atomic_t refcnt ;
   struct callback_head callback_head ;
   int reachable_time ;
   int data[12U] ;
   unsigned long data_state[1U] ;
};
struct neigh_statistics {
   unsigned long allocs ;
   unsigned long destroys ;
   unsigned long hash_grows ;
   unsigned long res_failed ;
   unsigned long lookups ;
   unsigned long hits ;
   unsigned long rcv_probes_mcast ;
   unsigned long rcv_probes_ucast ;
   unsigned long periodic_gc_runs ;
   unsigned long forced_gc_runs ;
   unsigned long unres_discards ;
};
struct neigh_ops;
struct neighbour {
   struct neighbour *next ;
   struct neigh_table *tbl ;
   struct neigh_parms *parms ;
   unsigned long confirmed ;
   unsigned long updated ;
   rwlock_t lock ;
   atomic_t refcnt ;
   struct sk_buff_head arp_queue ;
   unsigned int arp_queue_len_bytes ;
   struct timer_list timer ;
   unsigned long used ;
   atomic_t probes ;
   __u8 flags ;
   __u8 nud_state ;
   __u8 type ;
   __u8 dead ;
   seqlock_t ha_lock ;
   unsigned char ha[32U] ;
   struct hh_cache hh ;
   int (*output)(struct neighbour * , struct sk_buff * ) ;
   struct neigh_ops const *ops ;
   struct callback_head rcu ;
   struct net_device *dev ;
   u8 primary_key[0U] ;
};
struct neigh_ops {
   int family ;
   void (*solicit)(struct neighbour * , struct sk_buff * ) ;
   void (*error_report)(struct neighbour * , struct sk_buff * ) ;
   int (*output)(struct neighbour * , struct sk_buff * ) ;
   int (*connected_output)(struct neighbour * , struct sk_buff * ) ;
};
struct pneigh_entry {
   struct pneigh_entry *next ;
   struct net *net ;
   struct net_device *dev ;
   u8 flags ;
   u8 key[0U] ;
};
struct neigh_hash_table {
   struct neighbour **hash_buckets ;
   unsigned int hash_shift ;
   __u32 hash_rnd[4U] ;
   struct callback_head rcu ;
};
struct neigh_table {
   struct neigh_table *next ;
   int family ;
   int entry_size ;
   int key_len ;
   __u32 (*hash)(void const * , struct net_device const * , __u32 * ) ;
   int (*constructor)(struct neighbour * ) ;
   int (*pconstructor)(struct pneigh_entry * ) ;
   void (*pdestructor)(struct pneigh_entry * ) ;
   void (*proxy_redo)(struct sk_buff * ) ;
   char *id ;
   struct neigh_parms parms ;
   int gc_interval ;
   int gc_thresh1 ;
   int gc_thresh2 ;
   int gc_thresh3 ;
   unsigned long last_flush ;
   struct delayed_work gc_work ;
   struct timer_list proxy_timer ;
   struct sk_buff_head proxy_queue ;
   atomic_t entries ;
   rwlock_t lock ;
   unsigned long last_rand ;
   struct neigh_statistics *stats ;
   struct neigh_hash_table *nht ;
   struct pneigh_entry **phash_buckets ;
};
struct ipv6_devconf {
   __s32 forwarding ;
   __s32 hop_limit ;
   __s32 mtu6 ;
   __s32 accept_ra ;
   __s32 accept_redirects ;
   __s32 autoconf ;
   __s32 dad_transmits ;
   __s32 rtr_solicits ;
   __s32 rtr_solicit_interval ;
   __s32 rtr_solicit_delay ;
   __s32 force_mld_version ;
   __s32 mldv1_unsolicited_report_interval ;
   __s32 mldv2_unsolicited_report_interval ;
   __s32 use_tempaddr ;
   __s32 temp_valid_lft ;
   __s32 temp_prefered_lft ;
   __s32 regen_max_retry ;
   __s32 max_desync_factor ;
   __s32 max_addresses ;
   __s32 accept_ra_defrtr ;
   __s32 accept_ra_pinfo ;
   __s32 accept_ra_rtr_pref ;
   __s32 rtr_probe_interval ;
   __s32 accept_ra_rt_info_max_plen ;
   __s32 proxy_ndp ;
   __s32 accept_source_route ;
   __s32 optimistic_dad ;
   __s32 mc_forwarding ;
   __s32 disable_ipv6 ;
   __s32 accept_dad ;
   __s32 force_tllao ;
   __s32 ndisc_notify ;
   __s32 suppress_frag_ndisc ;
   void *sysctl ;
};
struct res_counter {
   unsigned long long usage ;
   unsigned long long max_usage ;
   unsigned long long limit ;
   unsigned long long soft_limit ;
   unsigned long long failcnt ;
   spinlock_t lock ;
   struct res_counter *parent ;
};
struct kioctx;
typedef int kiocb_cancel_fn(struct kiocb * );
union __anonunion_ki_obj_252 {
   void *user ;
   struct task_struct *tsk ;
};
struct eventfd_ctx;
struct kiocb {
   struct file *ki_filp ;
   struct kioctx *ki_ctx ;
   kiocb_cancel_fn *ki_cancel ;
   void *private ;
   union __anonunion_ki_obj_252 ki_obj ;
   __u64 ki_user_data ;
   loff_t ki_pos ;
   size_t ki_nbytes ;
   struct list_head ki_list ;
   struct eventfd_ctx *ki_eventfd ;
};
struct sock_filter {
   __u16 code ;
   __u8 jt ;
   __u8 jf ;
   __u32 k ;
};
union __anonunion____missing_field_name_253 {
   struct sock_filter insns[0U] ;
   struct work_struct work ;
};
struct sk_filter {
   atomic_t refcnt ;
   unsigned int len ;
   struct callback_head rcu ;
   unsigned int (*bpf_func)(struct sk_buff const * , struct sock_filter const * ) ;
   union __anonunion____missing_field_name_253 __annonCompField77 ;
};
struct poll_table_struct {
   void (*_qproc)(struct file * , wait_queue_head_t * , struct poll_table_struct * ) ;
   unsigned long _key ;
};
struct dn_route;
union __anonunion____missing_field_name_255 {
   struct dst_entry *next ;
   struct rtable *rt_next ;
   struct rt6_info *rt6_next ;
   struct dn_route *dn_next ;
};
struct dst_entry {
   struct callback_head callback_head ;
   struct dst_entry *child ;
   struct net_device *dev ;
   struct dst_ops *ops ;
   unsigned long _metrics ;
   unsigned long expires ;
   struct dst_entry *path ;
   struct dst_entry *from ;
   struct xfrm_state *xfrm ;
   int (*input)(struct sk_buff * ) ;
   int (*output)(struct sk_buff * ) ;
   unsigned short flags ;
   unsigned short pending_confirm ;
   short error ;
   short obsolete ;
   unsigned short header_len ;
   unsigned short trailer_len ;
   __u32 tclassid ;
   long __pad_to_align_refcnt[2U] ;
   atomic_t __refcnt ;
   int __use ;
   unsigned long lastuse ;
   union __anonunion____missing_field_name_255 __annonCompField78 ;
};
struct __anonstruct_socket_lock_t_256 {
   spinlock_t slock ;
   int owned ;
   wait_queue_head_t wq ;
   struct lockdep_map dep_map ;
};
typedef struct __anonstruct_socket_lock_t_256 socket_lock_t;
struct proto;
typedef __u32 __portpair;
typedef __u64 __addrpair;
struct __anonstruct____missing_field_name_258 {
   __be32 skc_daddr ;
   __be32 skc_rcv_saddr ;
};
union __anonunion____missing_field_name_257 {
   __addrpair skc_addrpair ;
   struct __anonstruct____missing_field_name_258 __annonCompField79 ;
};
union __anonunion____missing_field_name_259 {
   unsigned int skc_hash ;
   __u16 skc_u16hashes[2U] ;
};
struct __anonstruct____missing_field_name_261 {
   __be16 skc_dport ;
   __u16 skc_num ;
};
union __anonunion____missing_field_name_260 {
   __portpair skc_portpair ;
   struct __anonstruct____missing_field_name_261 __annonCompField82 ;
};
union __anonunion____missing_field_name_262 {
   struct hlist_node skc_bind_node ;
   struct hlist_nulls_node skc_portaddr_node ;
};
union __anonunion____missing_field_name_263 {
   struct hlist_node skc_node ;
   struct hlist_nulls_node skc_nulls_node ;
};
struct sock_common {
   union __anonunion____missing_field_name_257 __annonCompField80 ;
   union __anonunion____missing_field_name_259 __annonCompField81 ;
   union __anonunion____missing_field_name_260 __annonCompField83 ;
   unsigned short skc_family ;
   unsigned char volatile skc_state ;
   unsigned char skc_reuse : 4 ;
   unsigned char skc_reuseport : 4 ;
   int skc_bound_dev_if ;
   union __anonunion____missing_field_name_262 __annonCompField84 ;
   struct proto *skc_prot ;
   struct net *skc_net ;
   struct in6_addr skc_v6_daddr ;
   struct in6_addr skc_v6_rcv_saddr ;
   int skc_dontcopy_begin[0U] ;
   union __anonunion____missing_field_name_263 __annonCompField85 ;
   int skc_tx_queue_mapping ;
   atomic_t skc_refcnt ;
   int skc_dontcopy_end[0U] ;
};
struct cg_proto;
struct __anonstruct_sk_backlog_264 {
   atomic_t rmem_alloc ;
   int len ;
   struct sk_buff *head ;
   struct sk_buff *tail ;
};
struct sock {
   struct sock_common __sk_common ;
   socket_lock_t sk_lock ;
   struct sk_buff_head sk_receive_queue ;
   struct __anonstruct_sk_backlog_264 sk_backlog ;
   int sk_forward_alloc ;
   __u32 sk_rxhash ;
   unsigned int sk_napi_id ;
   unsigned int sk_ll_usec ;
   atomic_t sk_drops ;
   int sk_rcvbuf ;
   struct sk_filter *sk_filter ;
   struct socket_wq *sk_wq ;
   struct xfrm_policy *sk_policy[2U] ;
   unsigned long sk_flags ;
   struct dst_entry *sk_rx_dst ;
   struct dst_entry *sk_dst_cache ;
   spinlock_t sk_dst_lock ;
   atomic_t sk_wmem_alloc ;
   atomic_t sk_omem_alloc ;
   int sk_sndbuf ;
   struct sk_buff_head sk_write_queue ;
   unsigned int sk_shutdown : 2 ;
   unsigned int sk_no_check : 2 ;
   unsigned int sk_userlocks : 4 ;
   unsigned int sk_protocol : 8 ;
   unsigned int sk_type : 16 ;
   int sk_wmem_queued ;
   gfp_t sk_allocation ;
   u32 sk_pacing_rate ;
   u32 sk_max_pacing_rate ;
   netdev_features_t sk_route_caps ;
   netdev_features_t sk_route_nocaps ;
   int sk_gso_type ;
   unsigned int sk_gso_max_size ;
   u16 sk_gso_max_segs ;
   int sk_rcvlowat ;
   unsigned long sk_lingertime ;
   struct sk_buff_head sk_error_queue ;
   struct proto *sk_prot_creator ;
   rwlock_t sk_callback_lock ;
   int sk_err ;
   int sk_err_soft ;
   unsigned short sk_ack_backlog ;
   unsigned short sk_max_ack_backlog ;
   __u32 sk_priority ;
   __u32 sk_cgrp_prioidx ;
   struct pid *sk_peer_pid ;
   struct cred const *sk_peer_cred ;
   long sk_rcvtimeo ;
   long sk_sndtimeo ;
   void *sk_protinfo ;
   struct timer_list sk_timer ;
   ktime_t sk_stamp ;
   struct socket *sk_socket ;
   void *sk_user_data ;
   struct page_frag sk_frag ;
   struct sk_buff *sk_send_head ;
   __s32 sk_peek_off ;
   int sk_write_pending ;
   void *sk_security ;
   __u32 sk_mark ;
   u32 sk_classid ;
   struct cg_proto *sk_cgrp ;
   void (*sk_state_change)(struct sock * ) ;
   void (*sk_data_ready)(struct sock * , int ) ;
   void (*sk_write_space)(struct sock * ) ;
   void (*sk_error_report)(struct sock * ) ;
   int (*sk_backlog_rcv)(struct sock * , struct sk_buff * ) ;
   void (*sk_destruct)(struct sock * ) ;
};
struct request_sock_ops;
struct timewait_sock_ops;
struct inet_hashinfo;
struct raw_hashinfo;
struct udp_table;
union __anonunion_h_265 {
   struct inet_hashinfo *hashinfo ;
   struct udp_table *udp_table ;
   struct raw_hashinfo *raw_hash ;
};
struct proto {
   void (*close)(struct sock * , long ) ;
   int (*connect)(struct sock * , struct sockaddr * , int ) ;
   int (*disconnect)(struct sock * , int ) ;
   struct sock *(*accept)(struct sock * , int , int * ) ;
   int (*ioctl)(struct sock * , int , unsigned long ) ;
   int (*init)(struct sock * ) ;
   void (*destroy)(struct sock * ) ;
   void (*shutdown)(struct sock * , int ) ;
   int (*setsockopt)(struct sock * , int , int , char * , unsigned int ) ;
   int (*getsockopt)(struct sock * , int , int , char * , int * ) ;
   int (*compat_setsockopt)(struct sock * , int , int , char * , unsigned int ) ;
   int (*compat_getsockopt)(struct sock * , int , int , char * , int * ) ;
   int (*compat_ioctl)(struct sock * , unsigned int , unsigned long ) ;
   int (*sendmsg)(struct kiocb * , struct sock * , struct msghdr * , size_t ) ;
   int (*recvmsg)(struct kiocb * , struct sock * , struct msghdr * , size_t , int ,
                  int , int * ) ;
   int (*sendpage)(struct sock * , struct page * , int , size_t , int ) ;
   int (*bind)(struct sock * , struct sockaddr * , int ) ;
   int (*backlog_rcv)(struct sock * , struct sk_buff * ) ;
   void (*release_cb)(struct sock * ) ;
   void (*mtu_reduced)(struct sock * ) ;
   void (*hash)(struct sock * ) ;
   void (*unhash)(struct sock * ) ;
   void (*rehash)(struct sock * ) ;
   int (*get_port)(struct sock * , unsigned short ) ;
   void (*clear_sk)(struct sock * , int ) ;
   unsigned int inuse_idx ;
   bool (*stream_memory_free)(struct sock const * ) ;
   void (*enter_memory_pressure)(struct sock * ) ;
   atomic_long_t *memory_allocated ;
   struct percpu_counter *sockets_allocated ;
   int *memory_pressure ;
   long *sysctl_mem ;
   int *sysctl_wmem ;
   int *sysctl_rmem ;
   int max_header ;
   bool no_autobind ;
   struct kmem_cache *slab ;
   unsigned int obj_size ;
   int slab_flags ;
   struct percpu_counter *orphan_count ;
   struct request_sock_ops *rsk_prot ;
   struct timewait_sock_ops *twsk_prot ;
   union __anonunion_h_265 h ;
   struct module *owner ;
   char name[32U] ;
   struct list_head node ;
   int (*init_cgroup)(struct mem_cgroup * , struct cgroup_subsys * ) ;
   void (*destroy_cgroup)(struct mem_cgroup * ) ;
   struct cg_proto *(*proto_cgroup)(struct mem_cgroup * ) ;
};
struct cg_proto {
   struct res_counter memory_allocated ;
   struct percpu_counter sockets_allocated ;
   int memory_pressure ;
   long sysctl_mem[3U] ;
   unsigned long flags ;
   struct mem_cgroup *memcg ;
};
struct request_sock_ops {
   int family ;
   int obj_size ;
   struct kmem_cache *slab ;
   char *slab_name ;
   int (*rtx_syn_ack)(struct sock * , struct request_sock * ) ;
   void (*send_ack)(struct sock * , struct sk_buff * , struct request_sock * ) ;
   void (*send_reset)(struct sock * , struct sk_buff * ) ;
   void (*destructor)(struct request_sock * ) ;
   void (*syn_ack_timeout)(struct sock * , struct request_sock * ) ;
};
struct request_sock {
   struct sock_common __req_common ;
   struct request_sock *dl_next ;
   u16 mss ;
   u8 num_retrans ;
   u8 cookie_ts : 1 ;
   u8 num_timeout : 7 ;
   u32 window_clamp ;
   u32 rcv_wnd ;
   u32 ts_recent ;
   unsigned long expires ;
   struct request_sock_ops const *rsk_ops ;
   struct sock *sk ;
   u32 secid ;
   u32 peer_secid ;
};
struct timewait_sock_ops {
   struct kmem_cache *twsk_slab ;
   char *twsk_slab_name ;
   unsigned int twsk_obj_size ;
   int (*twsk_unique)(struct sock * , struct sock * , void * ) ;
   void (*twsk_destructor)(struct sock * ) ;
};
struct inet6_ifaddr {
   struct in6_addr addr ;
   __u32 prefix_len ;
   __u32 valid_lft ;
   __u32 prefered_lft ;
   atomic_t refcnt ;
   spinlock_t lock ;
   spinlock_t state_lock ;
   int state ;
   __u32 flags ;
   __u8 dad_probes ;
   __u16 scope ;
   unsigned long cstamp ;
   unsigned long tstamp ;
   struct delayed_work dad_work ;
   struct inet6_dev *idev ;
   struct rt6_info *rt ;
   struct hlist_node addr_lst ;
   struct list_head if_list ;
   struct list_head tmp_list ;
   struct inet6_ifaddr *ifpub ;
   int regen_count ;
   bool tokenized ;
   struct callback_head rcu ;
   struct in6_addr peer_addr ;
};
struct ip6_sf_list {
   struct ip6_sf_list *sf_next ;
   struct in6_addr sf_addr ;
   unsigned long sf_count[2U] ;
   unsigned char sf_gsresp ;
   unsigned char sf_oldin ;
   unsigned char sf_crcount ;
};
struct ifmcaddr6 {
   struct in6_addr mca_addr ;
   struct inet6_dev *idev ;
   struct ifmcaddr6 *next ;
   struct ip6_sf_list *mca_sources ;
   struct ip6_sf_list *mca_tomb ;
   unsigned int mca_sfmode ;
   unsigned char mca_crcount ;
   unsigned long mca_sfcount[2U] ;
   struct timer_list mca_timer ;
   unsigned int mca_flags ;
   int mca_users ;
   atomic_t mca_refcnt ;
   spinlock_t mca_lock ;
   unsigned long mca_cstamp ;
   unsigned long mca_tstamp ;
};
struct ifacaddr6 {
   struct in6_addr aca_addr ;
   struct inet6_dev *aca_idev ;
   struct rt6_info *aca_rt ;
   struct ifacaddr6 *aca_next ;
   int aca_users ;
   atomic_t aca_refcnt ;
   spinlock_t aca_lock ;
   unsigned long aca_cstamp ;
   unsigned long aca_tstamp ;
};
struct ipv6_devstat {
   struct proc_dir_entry *proc_dir_entry ;
   struct ipstats_mib *ipv6[1U] ;
   struct icmpv6_mib_device *icmpv6dev ;
   struct icmpv6msg_mib_device *icmpv6msgdev ;
};
struct inet6_dev {
   struct net_device *dev ;
   struct list_head addr_list ;
   struct ifmcaddr6 *mc_list ;
   struct ifmcaddr6 *mc_tomb ;
   spinlock_t mc_lock ;
   unsigned char mc_qrv ;
   unsigned char mc_gq_running ;
   unsigned char mc_ifc_count ;
   unsigned char mc_dad_count ;
   unsigned long mc_v1_seen ;
   unsigned long mc_qi ;
   unsigned long mc_qri ;
   unsigned long mc_maxdelay ;
   struct timer_list mc_gq_timer ;
   struct timer_list mc_ifc_timer ;
   struct timer_list mc_dad_timer ;
   struct ifacaddr6 *ac_list ;
   rwlock_t lock ;
   atomic_t refcnt ;
   __u32 if_flags ;
   int dead ;
   u8 rndid[8U] ;
   struct timer_list regen_timer ;
   struct list_head tempaddr_list ;
   struct in6_addr token ;
   struct neigh_parms *nd_parms ;
   struct ipv6_devconf cnf ;
   struct ipv6_devstat stats ;
   struct timer_list rs_timer ;
   __u8 rs_probes ;
   unsigned long tstamp ;
   struct callback_head rcu ;
};
struct sge_qstat {
   __be32 qid ;
   __be16 cidx ;
   __be16 pidx ;
};
typedef irqreturn_t (*irq_handler_t)(int , void * );
struct tasklet_struct {
   struct tasklet_struct *next ;
   unsigned long state ;
   atomic_t count ;
   void (*func)(unsigned long ) ;
   unsigned long data ;
};
struct ipv4_devconf {
   void *sysctl ;
   int data[28U] ;
   unsigned long state[1U] ;
};
struct in_ifaddr;
struct ip_mc_list;
struct in_device {
   struct net_device *dev ;
   atomic_t refcnt ;
   int dead ;
   struct in_ifaddr *ifa_list ;
   struct ip_mc_list *mc_list ;
   struct ip_mc_list **mc_hash ;
   int mc_count ;
   spinlock_t mc_tomb_lock ;
   struct ip_mc_list *mc_tomb ;
   unsigned long mr_v1_seen ;
   unsigned long mr_v2_seen ;
   unsigned long mr_maxdelay ;
   unsigned char mr_qrv ;
   unsigned char mr_gq_running ;
   unsigned char mr_ifc_count ;
   struct timer_list mr_gq_timer ;
   struct timer_list mr_ifc_timer ;
   struct neigh_parms *arp_parms ;
   struct ipv4_devconf cnf ;
   struct callback_head callback_head ;
};
struct in_ifaddr {
   struct hlist_node hash ;
   struct in_ifaddr *ifa_next ;
   struct in_device *ifa_dev ;
   struct callback_head callback_head ;
   __be32 ifa_local ;
   __be32 ifa_address ;
   __be32 ifa_mask ;
   __be32 ifa_broadcast ;
   unsigned char ifa_scope ;
   unsigned char ifa_prefixlen ;
   __u32 ifa_flags ;
   char ifa_label[16U] ;
   __u32 ifa_valid_lft ;
   __u32 ifa_preferred_lft ;
   unsigned long ifa_cstamp ;
   unsigned long ifa_tstamp ;
};
struct serv_entry {
   void *data ;
};
union aopen_entry {
   void *data ;
   union aopen_entry *next ;
};
struct filter_entry;
struct tid_info {
   void **tid_tab ;
   unsigned int ntids ;
   struct serv_entry *stid_tab ;
   unsigned long *stid_bmap ;
   unsigned int nstids ;
   unsigned int stid_base ;
   union aopen_entry *atid_tab ;
   unsigned int natids ;
   unsigned int atid_base ;
   struct filter_entry *ftid_tab ;
   unsigned int nftids ;
   unsigned int ftid_base ;
   unsigned int aftid_base ;
   unsigned int aftid_end ;
   unsigned int sftid_base ;
   unsigned int nsftids ;
   spinlock_t atid_lock ;
   union aopen_entry *afree ;
   unsigned int atids_in_use ;
   spinlock_t stid_lock ;
   unsigned int stids_in_use ;
   atomic_t tids_in_use ;
};
enum cxgb4_uld {
    CXGB4_ULD_RDMA = 0,
    CXGB4_ULD_ISCSI = 1,
    CXGB4_ULD_MAX = 2
} ;
enum cxgb4_state {
    CXGB4_STATE_UP = 0,
    CXGB4_STATE_START_RECOVERY = 1,
    CXGB4_STATE_DOWN = 2,
    CXGB4_STATE_DETACH = 3
} ;
enum cxgb4_control {
    CXGB4_CONTROL_DB_FULL = 0,
    CXGB4_CONTROL_DB_EMPTY = 1,
    CXGB4_CONTROL_DB_DROP = 2
} ;
struct l2t_data;
struct pkt_gl;
struct tp_tcp_stats;
struct cxgb4_range {
   unsigned int start ;
   unsigned int size ;
};
struct cxgb4_virt_res {
   struct cxgb4_range ddp ;
   struct cxgb4_range iscsi ;
   struct cxgb4_range stag ;
   struct cxgb4_range rq ;
   struct cxgb4_range pbl ;
   struct cxgb4_range qp ;
   struct cxgb4_range cq ;
   struct cxgb4_range ocq ;
};
struct cxgb4_lld_info {
   struct pci_dev *pdev ;
   struct l2t_data *l2t ;
   struct tid_info *tids ;
   struct net_device **ports ;
   struct cxgb4_virt_res const *vr ;
   unsigned short const *mtus ;
   unsigned short const *rxq_ids ;
   unsigned short nrxq ;
   unsigned short ntxq ;
   unsigned char nchan : 4 ;
   unsigned char nports : 4 ;
   unsigned char wr_cred ;
   unsigned char adapter_type ;
   unsigned char fw_api_ver ;
   unsigned int fw_vers ;
   unsigned int iscsi_iolen ;
   unsigned short udb_density ;
   unsigned short ucq_density ;
   unsigned short filt_mode ;
   unsigned short tx_modq[4U] ;
   void *gts_reg ;
   void *db_reg ;
   int dbfifo_int_thresh ;
   unsigned int sge_pktshift ;
   bool enable_fw_ofld_conn ;
};
struct cxgb4_uld_info {
   char const *name ;
   void *(*add)(struct cxgb4_lld_info const * ) ;
   int (*rx_handler)(void * , __be64 const * , struct pkt_gl const * ) ;
   int (*state_change)(void * , enum cxgb4_state ) ;
   int (*control)(void * , enum cxgb4_control , ...) ;
};
enum dev_master {
    MASTER_CANT = 0,
    MASTER_MAY = 1,
    MASTER_MUST = 2
} ;
enum dev_state {
    DEV_STATE_UNINIT = 0,
    DEV_STATE_INIT = 1,
    DEV_STATE_ERR = 2
} ;
struct port_stats {
   u64 tx_octets ;
   u64 tx_frames ;
   u64 tx_bcast_frames ;
   u64 tx_mcast_frames ;
   u64 tx_ucast_frames ;
   u64 tx_error_frames ;
   u64 tx_frames_64 ;
   u64 tx_frames_65_127 ;
   u64 tx_frames_128_255 ;
   u64 tx_frames_256_511 ;
   u64 tx_frames_512_1023 ;
   u64 tx_frames_1024_1518 ;
   u64 tx_frames_1519_max ;
   u64 tx_drop ;
   u64 tx_pause ;
   u64 tx_ppp0 ;
   u64 tx_ppp1 ;
   u64 tx_ppp2 ;
   u64 tx_ppp3 ;
   u64 tx_ppp4 ;
   u64 tx_ppp5 ;
   u64 tx_ppp6 ;
   u64 tx_ppp7 ;
   u64 rx_octets ;
   u64 rx_frames ;
   u64 rx_bcast_frames ;
   u64 rx_mcast_frames ;
   u64 rx_ucast_frames ;
   u64 rx_too_long ;
   u64 rx_jabber ;
   u64 rx_fcs_err ;
   u64 rx_len_err ;
   u64 rx_symbol_err ;
   u64 rx_runt ;
   u64 rx_frames_64 ;
   u64 rx_frames_65_127 ;
   u64 rx_frames_128_255 ;
   u64 rx_frames_256_511 ;
   u64 rx_frames_512_1023 ;
   u64 rx_frames_1024_1518 ;
   u64 rx_frames_1519_max ;
   u64 rx_pause ;
   u64 rx_ppp0 ;
   u64 rx_ppp1 ;
   u64 rx_ppp2 ;
   u64 rx_ppp3 ;
   u64 rx_ppp4 ;
   u64 rx_ppp5 ;
   u64 rx_ppp6 ;
   u64 rx_ppp7 ;
   u64 rx_ovflow0 ;
   u64 rx_ovflow1 ;
   u64 rx_ovflow2 ;
   u64 rx_ovflow3 ;
   u64 rx_trunc0 ;
   u64 rx_trunc1 ;
   u64 rx_trunc2 ;
   u64 rx_trunc3 ;
};
struct tp_tcp_stats {
   u32 tcpOutRsts ;
   u64 tcpInSegs ;
   u64 tcpOutSegs ;
   u64 tcpRetransSegs ;
};
struct tp_params {
   unsigned int ntxchan ;
   unsigned int tre ;
   unsigned short tx_modq_map ;
   uint32_t dack_re ;
   unsigned short tx_modq[4U] ;
   u32 vlan_pri_map ;
   u32 ingress_config ;
   int vlan_shift ;
   int vnic_shift ;
   int port_shift ;
   int protocol_shift ;
};
struct vpd_params {
   unsigned int cclk ;
   u8 ec[17U] ;
   u8 sn[25U] ;
   u8 id[17U] ;
};
struct pci_params {
   unsigned char speed ;
   unsigned char width ;
};
enum chip_type {
    T4_A1 = 65,
    T4_A2 = 66,
    T4_FIRST_REV = 65,
    T4_LAST_REV = 66,
    T5_A0 = 80,
    T5_A1 = 81,
    T5_FIRST_REV = 80,
    T5_LAST_REV = 81
} ;
struct adapter_params {
   struct tp_params tp ;
   struct vpd_params vpd ;
   struct pci_params pci ;
   unsigned int sf_size ;
   unsigned int sf_nsec ;
   unsigned int sf_fw_start ;
   unsigned int fw_vers ;
   unsigned int tp_vers ;
   u8 api_vers[7U] ;
   unsigned short mtus[16U] ;
   unsigned short a_wnd[32U] ;
   unsigned short b_wnd[32U] ;
   unsigned char nports ;
   unsigned char portvec ;
   enum chip_type chip ;
   unsigned char offload ;
   unsigned char bypass ;
   unsigned int ofldq_wr_cred ;
};
struct fw_filter_wr {
   __be32 op_pkd ;
   __be32 len16_pkd ;
   __be64 r3 ;
   __be32 tid_to_iq ;
   __be32 del_filter_to_l2tix ;
   __be16 ethtype ;
   __be16 ethtypem ;
   __u8 frag_to_ovlan_vldm ;
   __u8 smac_sel ;
   __be16 rx_chan_rx_rpl_iq ;
   __be32 maci_to_matchtypem ;
   __u8 ptcl ;
   __u8 ptclm ;
   __u8 ttyp ;
   __u8 ttypm ;
   __be16 ivlan ;
   __be16 ivlanm ;
   __be16 ovlan ;
   __be16 ovlanm ;
   __u8 lip[16U] ;
   __u8 lipm[16U] ;
   __u8 fip[16U] ;
   __u8 fipm[16U] ;
   __be16 lp ;
   __be16 lpm ;
   __be16 fp ;
   __be16 fpm ;
   __be16 r7 ;
   __u8 sma[6U] ;
};
struct fw_caps_config_cmd {
   __be32 op_to_write ;
   __be32 cfvalid_to_len16 ;
   __be32 r2 ;
   __be32 hwmbitmap ;
   __be16 nbmcaps ;
   __be16 linkcaps ;
   __be16 switchcaps ;
   __be16 r3 ;
   __be16 niccaps ;
   __be16 ofldcaps ;
   __be16 rdmacaps ;
   __be16 r4 ;
   __be16 iscsicaps ;
   __be16 fcoecaps ;
   __be32 cfcsum ;
   __be32 finiver ;
   __be32 finicsum ;
};
struct fw_clip_cmd {
   __be32 op_to_write ;
   __be32 alloc_to_len16 ;
   __be64 ip_hi ;
   __be64 ip_lo ;
   __be32 r4[2U] ;
};
struct fw_hdr {
   u8 ver ;
   u8 chip ;
   __be16 len512 ;
   __be32 fw_ver ;
   __be32 tp_microcode_ver ;
   u8 intfver_nic ;
   u8 intfver_vnic ;
   u8 intfver_ofld ;
   u8 intfver_ri ;
   u8 intfver_iscsipdu ;
   u8 intfver_iscsi ;
   u8 intfver_fcoepdu ;
   u8 intfver_fcoe ;
   __u32 reserved2 ;
   __u32 reserved3 ;
   __u32 reserved4 ;
   __be32 flags ;
   __be32 reserved6[23U] ;
};
struct fw_info {
   u8 chip ;
   char *fs_name ;
   char *fw_mod_name ;
   struct fw_hdr fw_hdr ;
};
struct link_config {
   unsigned short supported ;
   unsigned short advertising ;
   unsigned short requested_speed ;
   unsigned short speed ;
   unsigned char requested_fc ;
   unsigned char fc ;
   unsigned char autoneg ;
   unsigned char link_ok ;
};
struct adapter;
struct sge_rspq;
struct port_info {
   struct adapter *adapter ;
   u16 viid ;
   s16 xact_addr_filt ;
   u16 rss_size ;
   s8 mdio_addr ;
   u8 port_type ;
   u8 mod_type ;
   u8 port_id ;
   u8 tx_chan ;
   u8 lport ;
   u8 nqsets ;
   u8 first_qset ;
   u8 rss_mode ;
   struct link_config link_cfg ;
   u16 *rss ;
};
struct rx_sw_desc;
struct sge_fl {
   unsigned int avail ;
   unsigned int pend_cred ;
   unsigned int cidx ;
   unsigned int pidx ;
   unsigned long alloc_failed ;
   unsigned long large_alloc_failed ;
   unsigned long starving ;
   unsigned int cntxt_id ;
   unsigned int size ;
   struct rx_sw_desc *sdesc ;
   __be64 *desc ;
   dma_addr_t addr ;
};
struct pkt_gl {
   struct page_frag frags[17U] ;
   void *va ;
   unsigned int nfrags ;
   unsigned int tot_len ;
};
struct sge_rspq {
   struct napi_struct napi ;
   __be64 const *cur_desc ;
   unsigned int cidx ;
   u8 gen ;
   u8 intr_params ;
   u8 next_intr_params ;
   u8 pktcnt_idx ;
   u8 uld ;
   u8 idx ;
   int offset ;
   u16 cntxt_id ;
   u16 abs_id ;
   __be64 *desc ;
   dma_addr_t phys_addr ;
   unsigned int iqe_len ;
   unsigned int size ;
   struct adapter *adap ;
   struct net_device *netdev ;
   int (*handler)(struct sge_rspq * , __be64 const * , struct pkt_gl const * ) ;
};
struct sge_eth_stats {
   unsigned long pkts ;
   unsigned long lro_pkts ;
   unsigned long lro_merged ;
   unsigned long rx_cso ;
   unsigned long vlan_ex ;
   unsigned long rx_drops ;
};
struct sge_eth_rxq {
   struct sge_rspq rspq ;
   struct sge_fl fl ;
   struct sge_eth_stats stats ;
};
struct sge_ofld_stats {
   unsigned long pkts ;
   unsigned long imm ;
   unsigned long an ;
   unsigned long nomem ;
};
struct sge_ofld_rxq {
   struct sge_rspq rspq ;
   struct sge_fl fl ;
   struct sge_ofld_stats stats ;
};
struct tx_desc {
   __be64 flit[8U] ;
};
struct tx_sw_desc;
struct sge_txq {
   unsigned int in_use ;
   unsigned int size ;
   unsigned int cidx ;
   unsigned int pidx ;
   unsigned long stops ;
   unsigned long restarts ;
   unsigned int cntxt_id ;
   struct tx_desc *desc ;
   struct tx_sw_desc *sdesc ;
   struct sge_qstat *stat ;
   dma_addr_t phys_addr ;
   spinlock_t db_lock ;
   int db_disabled ;
   unsigned short db_pidx ;
   u64 udb ;
};
struct sge_eth_txq {
   struct sge_txq q ;
   struct netdev_queue *txq ;
   unsigned long tso ;
   unsigned long tx_cso ;
   unsigned long vlan_ins ;
   unsigned long mapping_err ;
};
struct sge_ofld_txq {
   struct sge_txq q ;
   struct adapter *adap ;
   struct sk_buff_head sendq ;
   struct tasklet_struct qresume_tsk ;
   u8 full ;
   unsigned long mapping_err ;
};
struct sge_ctrl_txq {
   struct sge_txq q ;
   struct adapter *adap ;
   struct sk_buff_head sendq ;
   struct tasklet_struct qresume_tsk ;
   u8 full ;
};
struct sge {
   struct sge_eth_txq ethtxq[32U] ;
   struct sge_ofld_txq ofldtxq[16U] ;
   struct sge_ctrl_txq ctrlq[4U] ;
   struct sge_eth_rxq ethrxq[32U] ;
   struct sge_ofld_rxq ofldrxq[16U] ;
   struct sge_ofld_rxq rdmarxq[4U] ;
   struct sge_rspq fw_evtq ;
   struct sge_rspq intrq ;
   spinlock_t intrq_lock ;
   u16 max_ethqsets ;
   u16 ethqsets ;
   u16 ethtxq_rover ;
   u16 ofldqsets ;
   u16 rdmaqs ;
   u16 ofld_rxq[16U] ;
   u16 rdma_rxq[4U] ;
   u16 timer_val[6U] ;
   u8 counter_val[4U] ;
   u32 fl_pg_order ;
   u32 stat_len ;
   u32 pktshift ;
   u32 fl_align ;
   u32 fl_starve_thres ;
   unsigned int starve_thres ;
   u8 idma_state[2U] ;
   unsigned int egr_start ;
   unsigned int ingr_start ;
   void *egr_map[128U] ;
   struct sge_rspq *ingr_map[64U] ;
   unsigned long starving_fl[2U] ;
   unsigned long txq_maperr[2U] ;
   struct timer_list rx_timer ;
   struct timer_list tx_timer ;
};
struct __anonstruct_msix_info_277 {
   unsigned short vec ;
   char desc[26U] ;
};
struct adapter {
   void *regs ;
   void *bar2 ;
   struct pci_dev *pdev ;
   struct device *pdev_dev ;
   unsigned int mbox ;
   unsigned int fn ;
   unsigned int flags ;
   enum chip_type chip ;
   int msg_enable ;
   struct adapter_params params ;
   struct cxgb4_virt_res vres ;
   unsigned int swintr ;
   unsigned int wol ;
   struct __anonstruct_msix_info_277 msix_info[65U] ;
   struct sge sge ;
   struct net_device *port[4U] ;
   u8 chan_map[4U] ;
   u32 filter_mode ;
   unsigned int l2t_start ;
   unsigned int l2t_end ;
   struct l2t_data *l2t ;
   void *uld_handle[2U] ;
   struct list_head list_node ;
   struct list_head rcu_node ;
   struct tid_info tids ;
   void **tid_release_head ;
   spinlock_t tid_release_lock ;
   struct work_struct tid_release_task ;
   struct work_struct db_full_task ;
   struct work_struct db_drop_task ;
   bool tid_release_task_busy ;
   struct dentry *debugfs_root ;
   spinlock_t stats_lock ;
};
struct ch_filter_tuple {
   uint32_t ethtype : 16 ;
   uint32_t frag : 1 ;
   uint32_t ivlan_vld : 1 ;
   uint32_t ovlan_vld : 1 ;
   uint32_t pfvf_vld : 1 ;
   uint32_t macidx : 9 ;
   uint32_t fcoe : 1 ;
   uint32_t iport : 3 ;
   uint32_t matchtype : 3 ;
   uint32_t proto : 8 ;
   uint32_t tos : 8 ;
   uint32_t pf : 8 ;
   uint32_t vf : 8 ;
   uint32_t ivlan : 16 ;
   uint32_t ovlan : 16 ;
   uint8_t lip[16U] ;
   uint8_t fip[16U] ;
   uint16_t lport ;
   uint16_t fport ;
};
struct ch_filter_specification {
   uint32_t hitcnts : 1 ;
   uint32_t prio : 1 ;
   uint32_t type : 1 ;
   uint32_t action : 2 ;
   uint32_t rpttid : 1 ;
   uint32_t dirsteer : 1 ;
   uint32_t iq : 10 ;
   uint32_t maskhash : 1 ;
   uint32_t dirsteerhash : 1 ;
   uint32_t eport : 2 ;
   uint32_t newdmac : 1 ;
   uint32_t newsmac : 1 ;
   uint32_t newvlan : 2 ;
   uint8_t dmac[6U] ;
   uint8_t smac[6U] ;
   uint16_t vlan ;
   struct ch_filter_tuple val ;
   struct ch_filter_tuple mask ;
};
union opcode_tid {
   __be32 opcode_tid ;
   u8 opcode ;
};
struct rss_header {
   u8 opcode ;
   u8 channel : 2 ;
   u8 filter_hit : 1 ;
   u8 filter_tid : 1 ;
   u8 hash_type : 2 ;
   u8 ipv6 : 1 ;
   u8 send2fw : 1 ;
   __be16 qid ;
   __be32 hash_val ;
};
struct work_request_hdr {
   __be32 wr_hi ;
   __be32 wr_mid ;
   __be64 wr_lo ;
};
struct cpl_pass_open_req {
   struct work_request_hdr wr ;
   union opcode_tid ot ;
   __be16 local_port ;
   __be16 peer_port ;
   __be32 local_ip ;
   __be32 peer_ip ;
   __be64 opt0 ;
   __be64 opt1 ;
};
struct cpl_pass_open_req6 {
   struct work_request_hdr wr ;
   union opcode_tid ot ;
   __be16 local_port ;
   __be16 peer_port ;
   __be64 local_ip_hi ;
   __be64 local_ip_lo ;
   __be64 peer_ip_hi ;
   __be64 peer_ip_lo ;
   __be64 opt0 ;
   __be64 opt1 ;
};
struct cpl_set_tcb_rpl {
   union opcode_tid ot ;
   __be16 rsvd ;
   u8 cookie ;
   u8 status ;
   __be64 oldval ;
};
struct cpl_close_listsvr_req {
   struct work_request_hdr wr ;
   union opcode_tid ot ;
   __be16 reply_ctrl ;
   __be16 rsvd ;
};
struct cpl_tid_release {
   struct work_request_hdr wr ;
   union opcode_tid ot ;
   __be32 rsvd ;
};
struct cpl_l2t_write_rpl {
   union opcode_tid ot ;
   u8 status ;
   u8 rsvd[3U] ;
};
struct cpl_sge_egr_update {
   __be32 opcode_qid ;
   __be16 cidx ;
   __be16 pidx ;
};
struct cpl_fw4_msg {
   u8 opcode ;
   u8 type ;
   __be16 rsvd0 ;
   __be32 rsvd1 ;
   __be64 data[2U] ;
};
struct cpl_fw6_msg {
   u8 opcode ;
   u8 type ;
   __be16 rsvd0 ;
   __be32 rsvd1 ;
   __be64 data[4U] ;
};
struct l2t_entry {
   u16 state ;
   u16 idx ;
   u32 addr[4U] ;
   int ifindex ;
   struct neighbour *neigh ;
   struct l2t_entry *first ;
   struct l2t_entry *next ;
   struct sk_buff *arpq_head ;
   struct sk_buff *arpq_tail ;
   spinlock_t lock ;
   atomic_t refcnt ;
   u16 hash ;
   u16 vlan ;
   u8 v6 ;
   u8 lport ;
   u8 dmac[6U] ;
};
union inet_addr {
   __u32 all[4U] ;
   __be32 ip ;
   __be32 ip6[4U] ;
   struct in_addr in ;
   struct in6_addr in6 ;
};
struct netpoll {
   struct net_device *dev ;
   char dev_name[16U] ;
   char const *name ;
   void (*rx_skb_hook)(struct netpoll * , int , struct sk_buff * , int , int ) ;
   union inet_addr local_ip ;
   union inet_addr remote_ip ;
   bool ipv6 ;
   u16 local_port ;
   u16 remote_port ;
   u8 remote_mac[6U] ;
   struct list_head rx ;
   struct work_struct cleanup_work ;
};
struct netpoll_info {
   atomic_t refcnt ;
   unsigned long rx_flags ;
   spinlock_t rx_lock ;
   struct semaphore dev_lock ;
   struct list_head rx_np ;
   struct sk_buff_head neigh_tx ;
   struct sk_buff_head txq ;
   struct delayed_work tx_work ;
   struct netpoll *netpoll ;
   struct callback_head rcu ;
};
struct reciprocal_value {
   u32 m ;
   u8 sh1 ;
   u8 sh2 ;
};
struct mac_addr {
   u8 mac_addr_value[6U] ;
};
enum ldv_35362 {
    AD_RX_DUMMY = 0,
    AD_RX_INITIALIZE = 1,
    AD_RX_PORT_DISABLED = 2,
    AD_RX_LACP_DISABLED = 3,
    AD_RX_EXPIRED = 4,
    AD_RX_DEFAULTED = 5,
    AD_RX_CURRENT = 6
} ;
typedef enum ldv_35362 rx_states_t;
enum ldv_35364 {
    AD_PERIODIC_DUMMY = 0,
    AD_NO_PERIODIC = 1,
    AD_FAST_PERIODIC = 2,
    AD_SLOW_PERIODIC = 3,
    AD_PERIODIC_TX = 4
} ;
typedef enum ldv_35364 periodic_states_t;
enum ldv_35366 {
    AD_MUX_DUMMY = 0,
    AD_MUX_DETACHED = 1,
    AD_MUX_WAITING = 2,
    AD_MUX_ATTACHED = 3,
    AD_MUX_COLLECTING_DISTRIBUTING = 4
} ;
typedef enum ldv_35366 mux_states_t;
enum ldv_35368 {
    AD_TX_DUMMY = 0,
    AD_TRANSMIT = 1
} ;
typedef enum ldv_35368 tx_states_t;
struct lacpdu {
   u8 subtype ;
   u8 version_number ;
   u8 tlv_type_actor_info ;
   u8 actor_information_length ;
   __be16 actor_system_priority ;
   struct mac_addr actor_system ;
   __be16 actor_key ;
   __be16 actor_port_priority ;
   __be16 actor_port ;
   u8 actor_state ;
   u8 reserved_3_1[3U] ;
   u8 tlv_type_partner_info ;
   u8 partner_information_length ;
   __be16 partner_system_priority ;
   struct mac_addr partner_system ;
   __be16 partner_key ;
   __be16 partner_port_priority ;
   __be16 partner_port ;
   u8 partner_state ;
   u8 reserved_3_2[3U] ;
   u8 tlv_type_collector_info ;
   u8 collector_information_length ;
   __be16 collector_max_delay ;
   u8 reserved_12[12U] ;
   u8 tlv_type_terminator ;
   u8 terminator_length ;
   u8 reserved_50[50U] ;
};
struct slave;
struct bonding;
struct port;
struct aggregator {
   struct mac_addr aggregator_mac_address ;
   u16 aggregator_identifier ;
   bool is_individual ;
   u16 actor_admin_aggregator_key ;
   u16 actor_oper_aggregator_key ;
   struct mac_addr partner_system ;
   u16 partner_system_priority ;
   u16 partner_oper_aggregator_key ;
   u16 receive_state ;
   u16 transmit_state ;
   struct port *lag_ports ;
   struct slave *slave ;
   u16 is_active ;
   u16 num_of_ports ;
};
struct port_params {
   struct mac_addr system ;
   u16 system_priority ;
   u16 key ;
   u16 port_number ;
   u16 port_priority ;
   u16 port_state ;
};
struct port {
   u16 actor_port_number ;
   u16 actor_port_priority ;
   struct mac_addr actor_system ;
   u16 actor_system_priority ;
   u16 actor_port_aggregator_identifier ;
   bool ntt ;
   u16 actor_admin_port_key ;
   u16 actor_oper_port_key ;
   u8 actor_admin_port_state ;
   u8 actor_oper_port_state ;
   struct port_params partner_admin ;
   struct port_params partner_oper ;
   bool is_enabled ;
   u16 sm_vars ;
   rx_states_t sm_rx_state ;
   u16 sm_rx_timer_counter ;
   periodic_states_t sm_periodic_state ;
   u16 sm_periodic_timer_counter ;
   mux_states_t sm_mux_state ;
   u16 sm_mux_timer_counter ;
   tx_states_t sm_tx_state ;
   u16 sm_tx_timer_counter ;
   struct slave *slave ;
   struct aggregator *aggregator ;
   struct port *next_port_in_aggregator ;
   u32 transaction_id ;
   struct lacpdu lacpdu ;
};
struct ad_system {
   u16 sys_priority ;
   struct mac_addr sys_mac_addr ;
};
struct ad_bond_info {
   struct ad_system system ;
   u32 agg_select_timer ;
   u16 aggregator_identifier ;
};
struct ad_slave_info {
   struct aggregator aggregator ;
   struct port port ;
   spinlock_t state_machine_lock ;
   u16 id ;
};
struct tlb_client_info {
   struct slave *tx_slave ;
   u32 tx_bytes ;
   u32 load_history ;
   u32 next ;
   u32 prev ;
};
struct rlb_client_info {
   __be32 ip_src ;
   __be32 ip_dst ;
   u8 mac_src[6U] ;
   u8 mac_dst[6U] ;
   u32 used_next ;
   u32 used_prev ;
   u32 src_next ;
   u32 src_prev ;
   u32 src_first ;
   u8 assigned ;
   u8 ntt ;
   struct slave *slave ;
   unsigned short vlan_id ;
};
struct tlb_slave_info {
   u32 head ;
   u32 load ;
};
struct alb_bond_info {
   struct tlb_client_info *tx_hashtbl ;
   spinlock_t tx_hashtbl_lock ;
   u32 unbalanced_load ;
   int tx_rebalance_counter ;
   int lp_counter ;
   int rlb_enabled ;
   struct rlb_client_info *rx_hashtbl ;
   spinlock_t rx_hashtbl_lock ;
   u32 rx_hashtbl_used_head ;
   u8 rx_ntt ;
   struct slave *rx_slave ;
   u8 primary_is_promisc ;
   u32 rlb_promisc_timeout_counter ;
   u32 rlb_update_delay_counter ;
   u32 rlb_update_retry_counter ;
   u8 rlb_rebalance ;
};
struct bond_params {
   int mode ;
   int xmit_policy ;
   int miimon ;
   u8 num_peer_notif ;
   int arp_interval ;
   int arp_validate ;
   int arp_all_targets ;
   int use_carrier ;
   int fail_over_mac ;
   int updelay ;
   int downdelay ;
   int lacp_fast ;
   unsigned int min_links ;
   int ad_select ;
   char primary[16U] ;
   int primary_reselect ;
   __be32 arp_targets[16U] ;
   int tx_queues ;
   int all_slaves_active ;
   int resend_igmp ;
   int lp_interval ;
   int packets_per_slave ;
   struct reciprocal_value reciprocal_packets_per_slave ;
};
struct slave {
   struct net_device *dev ;
   struct bonding *bond ;
   int delay ;
   unsigned long jiffies ;
   unsigned long last_arp_rx ;
   unsigned long target_last_arp_rx[16U] ;
   s8 link ;
   s8 new_link ;
   u8 backup : 1 ;
   u8 inactive : 1 ;
   u8 should_notify : 1 ;
   u8 duplex ;
   u32 original_mtu ;
   u32 link_failure_count ;
   u32 speed ;
   u16 queue_id ;
   u8 perm_hwaddr[6U] ;
   struct ad_slave_info ad_info ;
   struct tlb_slave_info tlb_info ;
   struct netpoll *np ;
   struct kobject kobj ;
};
struct bonding {
   struct net_device *dev ;
   struct slave *curr_active_slave ;
   struct slave *current_arp_slave ;
   struct slave *primary_slave ;
   bool force_primary ;
   s32 slave_cnt ;
   int (*recv_probe)(struct sk_buff const * , struct bonding * , struct slave * ) ;
   rwlock_t lock ;
   rwlock_t curr_slave_lock ;
   u8 send_peer_notif ;
   u8 igmp_retrans ;
   struct proc_dir_entry *proc_entry ;
   char proc_file_name[16U] ;
   struct list_head bond_list ;
   u32 rr_tx_counter ;
   struct ad_bond_info ad_info ;
   struct alb_bond_info alb_info ;
   struct bond_params params ;
   struct workqueue_struct *wq ;
   struct delayed_work mii_work ;
   struct delayed_work arp_work ;
   struct delayed_work alb_work ;
   struct delayed_work ad_work ;
   struct delayed_work mcast_work ;
   struct dentry *debug_dir ;
};
struct filter_entry {
   u32 valid : 1 ;
   u32 locked : 1 ;
   u32 pending : 1 ;
   u32 smtidx : 8 ;
   struct l2t_entry *l2t ;
   struct ch_filter_specification fs ;
};
struct queue_port_stats {
   u64 tso ;
   u64 tx_csum ;
   u64 rx_csum ;
   u64 vlan_ex ;
   u64 vlan_ins ;
   u64 gro_pkts ;
   u64 gro_merged ;
};
union __anonunion_last_289 {
   __be32 word ;
   char buf[4U] ;
};
struct ldv_struct_EMGentry_26 {
   int signal_pending ;
};
struct ldv_struct_dummy_resourceless_instance_4 {
   struct net_device *arg0 ;
   int signal_pending ;
};
struct ldv_struct_dummy_resourceless_instance_7 {
   struct notifier_block *arg0 ;
   int signal_pending ;
};
struct ldv_struct_free_irq_12 {
   int arg0 ;
   int signal_pending ;
};
struct ldv_struct_interrupt_instance_2 {
   int arg0 ;
   enum irqreturn (*arg1)(int , void * ) ;
   enum irqreturn (*arg2)(int , void * ) ;
   void *arg3 ;
   int signal_pending ;
};
struct ldv_struct_pci_instance_5 {
   struct pci_driver *arg0 ;
   int signal_pending ;
};
struct ldv_struct_timer_instance_9 {
   struct timer_list *arg0 ;
   int signal_pending ;
};
typedef int ldv_func_ret_type;
typedef int ldv_func_ret_type___0;
typedef int ldv_func_ret_type___1;
typedef int ldv_func_ret_type___2;
typedef int ldv_func_ret_type___3;
typedef int ldv_func_ret_type___4;
typedef int ldv_func_ret_type___5;
typedef int ldv_func_ret_type___6;
typedef struct net_device *ldv_func_ret_type___7;
typedef int ldv_func_ret_type___8;
typedef int ldv_func_ret_type___9;
typedef int ldv_func_ret_type___10;
typedef int ldv_func_ret_type___11;
enum hrtimer_restart;
struct l2t_skb_cb {
   void *handle ;
   void (*arp_err_handler)(void * , struct sk_buff * ) ;
};
struct cpl_l2t_write_req {
   struct work_request_hdr wr ;
   union opcode_tid ot ;
   __be16 params ;
   __be16 l2t_idx ;
   __be16 vlan ;
   u8 dst_mac[6U] ;
};
struct l2t_data {
   rwlock_t lock ;
   atomic_t nfree ;
   struct l2t_entry *rover ;
   struct l2t_entry l2tab[4096U] ;
};
struct ldv_struct_seq_instance_6 {
   struct seq_file *arg0 ;
   struct seq_operations *arg1 ;
   int signal_pending ;
};
enum hrtimer_restart;
struct fw_ldst_addrval {
   __be32 addr ;
   __be32 val ;
};
struct fw_ldst_idctxt {
   __be32 physid ;
   __be32 msg_pkd ;
   __be32 ctxt_data7 ;
   __be32 ctxt_data6 ;
   __be32 ctxt_data5 ;
   __be32 ctxt_data4 ;
   __be32 ctxt_data3 ;
   __be32 ctxt_data2 ;
   __be32 ctxt_data1 ;
   __be32 ctxt_data0 ;
};
struct fw_ldst_mdio {
   __be16 paddr_mmd ;
   __be16 raddr ;
   __be16 vctl ;
   __be16 rval ;
};
struct fw_ldst_mps {
   __be16 fid_ctl ;
   __be16 rplcpf_pkd ;
   __be32 rplc127_96 ;
   __be32 rplc95_64 ;
   __be32 rplc63_32 ;
   __be32 rplc31_0 ;
   __be32 atrb ;
   __be16 vlan[16U] ;
};
struct fw_ldst_func {
   u8 access_ctl ;
   u8 mod_index ;
   __be16 ctl_id ;
   __be32 offset ;
   __be64 data0 ;
   __be64 data1 ;
};
struct fw_ldst_pcie {
   u8 ctrl_to_fn ;
   u8 bnum ;
   u8 r ;
   u8 ext_r ;
   u8 select_naccess ;
   u8 pcie_fn ;
   __be16 nset_pkd ;
   __be32 data[12U] ;
};
union fw_ldst {
   struct fw_ldst_addrval addrval ;
   struct fw_ldst_idctxt idctxt ;
   struct fw_ldst_mdio mdio ;
   struct fw_ldst_mps mps ;
   struct fw_ldst_func func ;
   struct fw_ldst_pcie pcie ;
};
struct fw_ldst_cmd {
   __be32 op_to_addrspace ;
   __be32 cycles_to_len16 ;
   union fw_ldst u ;
};
struct fw_reset_cmd {
   __be32 op_to_write ;
   __be32 retval_len16 ;
   __be32 val ;
   __be32 halt_pkd ;
};
struct fw_hello_cmd {
   __be32 op_to_write ;
   __be32 retval_len16 ;
   __be32 err_to_clearinit ;
   __be32 fwrev ;
};
struct fw_bye_cmd {
   __be32 op_to_write ;
   __be32 retval_len16 ;
   __be64 r3 ;
};
struct fw_initialize_cmd {
   __be32 op_to_write ;
   __be32 retval_len16 ;
   __be64 r3 ;
};
struct fw_params_param {
   __be32 mnem ;
   __be32 val ;
};
struct fw_params_cmd {
   __be32 op_to_vfn ;
   __be32 retval_len16 ;
   struct fw_params_param param[7U] ;
};
struct fw_pfvf_cmd {
   __be32 op_to_vfn ;
   __be32 retval_len16 ;
   __be32 niqflint_niq ;
   __be32 type_to_neq ;
   __be32 tc_to_nexactf ;
   __be32 r_caps_to_nethctrl ;
   __be16 nricq ;
   __be16 nriqp ;
   __be32 r4 ;
};
struct fw_iq_cmd {
   __be32 op_to_vfn ;
   __be32 alloc_to_len16 ;
   __be16 physiqid ;
   __be16 iqid ;
   __be16 fl0id ;
   __be16 fl1id ;
   __be32 type_to_iqandstindex ;
   __be16 iqdroprss_to_iqesize ;
   __be16 iqsize ;
   __be64 iqaddr ;
   __be32 iqns_to_fl0congen ;
   __be16 fl0dcaen_to_fl0cidxfthresh ;
   __be16 fl0size ;
   __be64 fl0addr ;
   __be32 fl1cngchmap_to_fl1congen ;
   __be16 fl1dcaen_to_fl1cidxfthresh ;
   __be16 fl1size ;
   __be64 fl1addr ;
};
struct fw_eq_eth_cmd {
   __be32 op_to_vfn ;
   __be32 alloc_to_len16 ;
   __be32 eqid_pkd ;
   __be32 physeqid_pkd ;
   __be32 fetchszm_to_iqid ;
   __be32 dcaen_to_eqsize ;
   __be64 eqaddr ;
   __be32 viid_pkd ;
   __be32 r8_lo ;
   __be64 r9 ;
};
struct fw_eq_ctrl_cmd {
   __be32 op_to_vfn ;
   __be32 alloc_to_len16 ;
   __be32 cmpliqid_eqid ;
   __be32 physeqid_pkd ;
   __be32 fetchszm_to_iqid ;
   __be32 dcaen_to_eqsize ;
   __be64 eqaddr ;
};
struct fw_eq_ofld_cmd {
   __be32 op_to_vfn ;
   __be32 alloc_to_len16 ;
   __be32 eqid_pkd ;
   __be32 physeqid_pkd ;
   __be32 fetchszm_to_iqid ;
   __be32 dcaen_to_eqsize ;
   __be64 eqaddr ;
};
struct fw_vi_cmd {
   __be32 op_to_vfn ;
   __be32 alloc_to_len16 ;
   __be16 type_viid ;
   u8 mac[6U] ;
   u8 portid_pkd ;
   u8 nmac ;
   u8 nmac0[6U] ;
   __be16 rsssize_pkd ;
   u8 nmac1[6U] ;
   __be16 idsiiq_pkd ;
   u8 nmac2[6U] ;
   __be16 idseiq_pkd ;
   u8 nmac3[6U] ;
   __be64 r9 ;
   __be64 r10 ;
};
struct fw_vi_mac_exact {
   __be16 valid_to_idx ;
   u8 macaddr[6U] ;
};
struct fw_vi_mac_hash {
   __be64 hashvec ;
};
union fw_vi_mac {
   struct fw_vi_mac_exact exact[7U] ;
   struct fw_vi_mac_hash hash ;
};
struct fw_vi_mac_cmd {
   __be32 op_to_viid ;
   __be32 freemacs_to_len16 ;
   union fw_vi_mac u ;
};
struct fw_vi_rxmode_cmd {
   __be32 op_to_viid ;
   __be32 retval_len16 ;
   __be32 mtu_to_vlanexen ;
   __be32 r4_lo ;
};
struct fw_vi_enable_cmd {
   __be32 op_to_viid ;
   __be32 ien_to_len16 ;
   __be16 blinkdur ;
   __be16 r3 ;
   __be32 r4 ;
};
struct fw_port_l1cfg {
   __be32 rcap ;
   __be32 r ;
};
struct fw_port_l2cfg {
   __be16 ctlbf_to_ivlan0 ;
   __be16 ivlantype ;
   __be32 txipg_pkd ;
   __be16 ovlan0mask ;
   __be16 ovlan0type ;
   __be16 ovlan1mask ;
   __be16 ovlan1type ;
   __be16 ovlan2mask ;
   __be16 ovlan2type ;
   __be16 ovlan3mask ;
   __be16 ovlan3type ;
};
struct fw_port_info {
   __be32 lstatus_to_modtype ;
   __be16 pcap ;
   __be16 acap ;
   __be16 mtu ;
   __u8 cbllen ;
   __u8 r9 ;
   __be32 r10 ;
   __be64 r11 ;
};
struct fw_port_ppp {
   __be32 pppen_to_ncsich ;
   __be32 r11 ;
};
struct fw_port_dcb {
   __be16 cfg ;
   u8 up_map ;
   u8 sf_cfgrc ;
   __be16 prot_ix ;
   u8 pe7_to_pe0 ;
   u8 numTCPFCs ;
   __be32 pgid0_to_pgid7 ;
   __be32 numTCs_oui ;
   u8 pgpc[8U] ;
};
union fw_port {
   struct fw_port_l1cfg l1cfg ;
   struct fw_port_l2cfg l2cfg ;
   struct fw_port_info info ;
   struct fw_port_ppp ppp ;
   struct fw_port_dcb dcb ;
};
struct fw_port_cmd {
   __be32 op_to_portid ;
   __be32 action_to_len16 ;
   union fw_port u ;
};
struct fw_rss_ind_tbl_cmd {
   __be32 op_to_viid ;
   __be32 retval_len16 ;
   __be16 niqid ;
   __be16 startidx ;
   __be32 r3 ;
   __be32 iq0_to_iq2 ;
   __be32 iq3_to_iq5 ;
   __be32 iq6_to_iq8 ;
   __be32 iq9_to_iq11 ;
   __be32 iq12_to_iq14 ;
   __be32 iq15_to_iq17 ;
   __be32 iq18_to_iq20 ;
   __be32 iq21_to_iq23 ;
   __be32 iq24_to_iq26 ;
   __be32 iq27_to_iq29 ;
   __be32 iq30_iq31 ;
   __be32 r15_lo ;
};
struct fw_rss_glb_config_manual {
   __be32 mode_pkd ;
   __be32 r3 ;
   __be64 r4 ;
   __be64 r5 ;
};
struct fw_rss_glb_config_basicvirtual {
   __be32 mode_pkd ;
   __be32 synmapen_to_hashtoeplitz ;
   __be64 r8 ;
   __be64 r9 ;
};
union fw_rss_glb_config {
   struct fw_rss_glb_config_manual manual ;
   struct fw_rss_glb_config_basicvirtual basicvirtual ;
};
struct fw_rss_glb_config_cmd {
   __be32 op_to_write ;
   __be32 retval_len16 ;
   union fw_rss_glb_config u ;
};
struct fw_rss_vi_config_manual {
   __be64 r3 ;
   __be64 r4 ;
   __be64 r5 ;
};
struct fw_rss_vi_config_basicvirtual {
   __be32 r6 ;
   __be32 defaultq_to_udpen ;
   __be64 r9 ;
   __be64 r10 ;
};
union fw_rss_vi_config {
   struct fw_rss_vi_config_manual manual ;
   struct fw_rss_vi_config_basicvirtual basicvirtual ;
};
struct fw_rss_vi_config_cmd {
   __be32 op_to_viid ;
   __be32 retval_len16 ;
   union fw_rss_vi_config u ;
};
struct fw_debug_assert {
   __be32 fcid ;
   __be32 line ;
   __be32 x ;
   __be32 y ;
   u8 filename_0_7[8U] ;
   u8 filename_8_15[8U] ;
   __be64 r3 ;
};
struct fw_debug_prt {
   __be16 dprtstridx ;
   __be16 r3[3U] ;
   __be32 dprtstrparam0 ;
   __be32 dprtstrparam1 ;
   __be32 dprtstrparam2 ;
   __be32 dprtstrparam3 ;
};
union fw_debug {
   struct fw_debug_assert assert ;
   struct fw_debug_prt prt ;
};
struct fw_debug_cmd {
   __be32 op_type ;
   __be32 len16_pkd ;
   union fw_debug u ;
};
struct intr_info {
   unsigned int mask ;
   char const *msg ;
   short stat_idx ;
   unsigned short fatal ;
   void (*int_handler)(struct adapter * ) ;
};
typedef __u16 __sum16;
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
enum hrtimer_restart;
struct free_area {
   struct list_head free_list[6U] ;
   unsigned long nr_free ;
};
struct pglist_data;
struct zone_padding {
   char x[0U] ;
};
struct zone_reclaim_stat {
   unsigned long recent_rotated[2U] ;
   unsigned long recent_scanned[2U] ;
};
struct zone;
struct lruvec {
   struct list_head lists[5U] ;
   struct zone_reclaim_stat reclaim_stat ;
   struct zone *zone ;
};
struct per_cpu_pages {
   int count ;
   int high ;
   int batch ;
   struct list_head lists[3U] ;
};
struct per_cpu_pageset {
   struct per_cpu_pages pcp ;
   s8 expire ;
   s8 stat_threshold ;
   s8 vm_stat_diff[35U] ;
};
enum zone_type {
    ZONE_DMA = 0,
    ZONE_DMA32 = 1,
    ZONE_NORMAL = 2,
    ZONE_MOVABLE = 3,
    __MAX_NR_ZONES = 4
} ;
struct zone {
   unsigned long watermark[3U] ;
   unsigned long percpu_drift_mark ;
   unsigned long lowmem_reserve[4U] ;
   unsigned long dirty_balance_reserve ;
   int node ;
   unsigned long min_unmapped_pages ;
   unsigned long min_slab_pages ;
   struct per_cpu_pageset *pageset ;
   spinlock_t lock ;
   bool compact_blockskip_flush ;
   unsigned long compact_cached_free_pfn ;
   unsigned long compact_cached_migrate_pfn ;
   seqlock_t span_seqlock ;
   struct free_area free_area[11U] ;
   unsigned int compact_considered ;
   unsigned int compact_defer_shift ;
   int compact_order_failed ;
   struct zone_padding _pad1_ ;
   spinlock_t lru_lock ;
   struct lruvec lruvec ;
   unsigned long pages_scanned ;
   unsigned long flags ;
   atomic_long_t vm_stat[35U] ;
   unsigned int inactive_ratio ;
   struct zone_padding _pad2_ ;
   wait_queue_head_t *wait_table ;
   unsigned long wait_table_hash_nr_entries ;
   unsigned long wait_table_bits ;
   struct pglist_data *zone_pgdat ;
   unsigned long zone_start_pfn ;
   unsigned long spanned_pages ;
   unsigned long present_pages ;
   unsigned long managed_pages ;
   int nr_migrate_reserve_block ;
   char const *name ;
};
struct zonelist_cache {
   unsigned short z_to_n[4096U] ;
   unsigned long fullzones[64U] ;
   unsigned long last_full_zap ;
};
struct zoneref {
   struct zone *zone ;
   int zone_idx ;
};
struct zonelist {
   struct zonelist_cache *zlcache_ptr ;
   struct zoneref _zonerefs[4097U] ;
   struct zonelist_cache zlcache ;
};
struct pglist_data {
   struct zone node_zones[4U] ;
   struct zonelist node_zonelists[2U] ;
   int nr_zones ;
   spinlock_t node_size_lock ;
   unsigned long node_start_pfn ;
   unsigned long node_present_pages ;
   unsigned long node_spanned_pages ;
   int node_id ;
   nodemask_t reclaim_nodes ;
   wait_queue_head_t kswapd_wait ;
   wait_queue_head_t pfmemalloc_wait ;
   struct task_struct *kswapd ;
   int kswapd_max_order ;
   enum zone_type classzone_idx ;
   spinlock_t numabalancing_migrate_lock ;
   unsigned long numabalancing_migrate_next_window ;
   unsigned long numabalancing_migrate_nr_pages ;
};
typedef struct pglist_data pg_data_t;
struct skb_frag_struct;
typedef struct skb_frag_struct skb_frag_t;
struct __anonstruct_page_217 {
   struct page *p ;
};
struct skb_frag_struct {
   struct __anonstruct_page_217 page ;
   __u32 page_offset ;
   __u32 size ;
};
struct skb_shared_hwtstamps {
   ktime_t hwtstamp ;
   ktime_t syststamp ;
};
struct skb_shared_info {
   unsigned char nr_frags ;
   __u8 tx_flags ;
   unsigned short gso_size ;
   unsigned short gso_segs ;
   unsigned short gso_type ;
   struct sk_buff *frag_list ;
   struct skb_shared_hwtstamps hwtstamps ;
   __be32 ip6_frag_id ;
   atomic_t dataref ;
   void *destructor_arg ;
   skb_frag_t frags[17U] ;
};
enum pkt_hash_types {
    PKT_HASH_TYPE_NONE = 0,
    PKT_HASH_TYPE_L2 = 1,
    PKT_HASH_TYPE_L3 = 2,
    PKT_HASH_TYPE_L4 = 3
} ;
enum gro_result {
    GRO_MERGED = 0,
    GRO_MERGED_FREE = 1,
    GRO_HELD = 2,
    GRO_NORMAL = 3,
    GRO_DROP = 4
} ;
typedef enum gro_result gro_result_t;
struct iphdr {
   __u8 ihl : 4 ;
   __u8 version : 4 ;
   __u8 tos ;
   __be16 tot_len ;
   __be16 id ;
   __be16 frag_off ;
   __u8 ttl ;
   __u8 protocol ;
   __sum16 check ;
   __be32 saddr ;
   __be32 daddr ;
};
struct ipv6hdr {
   __u8 priority : 4 ;
   __u8 version : 4 ;
   __u8 flow_lbl[3U] ;
   __be16 payload_len ;
   __u8 nexthdr ;
   __u8 hop_limit ;
   struct in6_addr saddr ;
   struct in6_addr daddr ;
};
struct tcphdr {
   __be16 source ;
   __be16 dest ;
   __be32 seq ;
   __be32 ack_seq ;
   __u16 res1 : 4 ;
   __u16 doff : 4 ;
   __u16 fin : 1 ;
   __u16 syn : 1 ;
   __u16 rst : 1 ;
   __u16 psh : 1 ;
   __u16 ack : 1 ;
   __u16 urg : 1 ;
   __u16 ece : 1 ;
   __u16 cwr : 1 ;
   __be16 window ;
   __sum16 check ;
   __be16 urg_ptr ;
};
union __anonunion____missing_field_name_273 {
   __be32 a4 ;
   __be32 a6[4U] ;
};
struct inetpeer_addr_base {
   union __anonunion____missing_field_name_273 __annonCompField85 ;
};
struct inetpeer_addr {
   struct inetpeer_addr_base addr ;
   __u16 family ;
};
union __anonunion____missing_field_name_274 {
   struct list_head gc_list ;
   struct callback_head gc_rcu ;
};
struct __anonstruct____missing_field_name_276 {
   atomic_t rid ;
   atomic_t ip_id_count ;
};
union __anonunion____missing_field_name_275 {
   struct __anonstruct____missing_field_name_276 __annonCompField87 ;
   struct callback_head rcu ;
   struct inet_peer *gc_next ;
};
struct inet_peer {
   struct inet_peer *avl_left ;
   struct inet_peer *avl_right ;
   struct inetpeer_addr daddr ;
   __u32 avl_height ;
   u32 metrics[15U] ;
   u32 rate_tokens ;
   unsigned long rate_last ;
   union __anonunion____missing_field_name_274 __annonCompField86 ;
   union __anonunion____missing_field_name_275 __annonCompField88 ;
   __u32 dtime ;
   atomic_t refcnt ;
};
struct inet_peer_base {
   struct inet_peer *root ;
   seqlock_t lock ;
   u32 flush_seq ;
   int total ;
};
struct rtable {
   struct dst_entry dst ;
   int rt_genid ;
   unsigned int rt_flags ;
   __u16 rt_type ;
   __u8 rt_is_input ;
   __u8 rt_uses_gateway ;
   int rt_iif ;
   __be32 rt_gateway ;
   u32 rt_pmtu ;
   struct list_head rt_uncached ;
};
struct inet_ehash_bucket {
   struct hlist_nulls_head chain ;
};
struct inet_bind_hashbucket {
   spinlock_t lock ;
   struct hlist_head chain ;
};
struct inet_listen_hashbucket {
   spinlock_t lock ;
   struct hlist_nulls_head head ;
};
struct inet_hashinfo {
   struct inet_ehash_bucket *ehash ;
   spinlock_t *ehash_locks ;
   unsigned int ehash_mask ;
   unsigned int ehash_locks_mask ;
   struct inet_bind_hashbucket *bhash ;
   unsigned int bhash_size ;
   struct kmem_cache *bind_bucket_cachep ;
   struct inet_listen_hashbucket listening_hash[32U] ;
   atomic_t bsockets ;
};
union __anonunion____missing_field_name_279 {
   u8 type_gen ;
   __be64 last_flit ;
};
struct rsp_ctrl {
   __be32 hdrbuflen_pidx ;
   __be32 pldbuflen_qid ;
   union __anonunion____missing_field_name_279 __annonCompField90 ;
};
struct fw_wr_hdr {
   __be32 hi ;
   __be32 lo ;
};
struct fw_eth_tx_pkt_wr {
   __be32 op_immdlen ;
   __be32 equiq_to_len16 ;
   __be64 r3 ;
};
struct cpl_tx_pkt_core {
   __be32 ctrl0 ;
   __be16 pack ;
   __be16 len ;
   __be64 ctrl1 ;
};
struct cpl_tx_pkt_lso_core {
   __be32 lso_ctrl ;
   __be16 ipid_ofst ;
   __be16 mss ;
   __be32 seqno_offset ;
   __be32 len ;
};
struct cpl_tx_pkt_lso {
   struct work_request_hdr wr ;
   struct cpl_tx_pkt_lso_core c ;
};
struct cpl_rx_pkt {
   struct rss_header rsshdr ;
   u8 opcode ;
   u8 iff : 4 ;
   u8 csum_calc : 1 ;
   u8 ipmi_pkt : 1 ;
   u8 vlan_ex : 1 ;
   u8 ip_frag : 1 ;
   __be16 csum ;
   __be16 vlan ;
   __be16 len ;
   __be32 l2info ;
   __be16 hdr_len ;
   __be16 err_vec ;
};
struct ulptx_sge_pair {
   __be32 len[2U] ;
   __be64 addr[2U] ;
};
struct ulptx_sgl {
   __be32 cmd_nsge ;
   __be32 len0 ;
   __be64 addr0 ;
   struct ulptx_sge_pair sge[0U] ;
};
struct tx_sw_desc {
   struct sk_buff *skb ;
   struct ulptx_sgl *sgl ;
};
struct rx_sw_desc {
   struct page *page ;
   dma_addr_t dma_addr ;
};
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
void *ldv_dev_get_drvdata(struct device const *dev ) ;
int ldv_dev_set_drvdata(struct device *dev , void *data ) ;
long ldv_is_err(void const *ptr ) ;
long ldv_is_err_or_null(void const *ptr ) ;
long ldv_ptr_err(void const *ptr ) ;
void *ldv_kzalloc(size_t size , gfp_t flags ) ;
static void ldv_mutex_lock_28(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_lock_31(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_lock_33(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_lock_36(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_lock_38(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_lock_40(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_uld_mutex(struct mutex *lock ) ;
void ldv_mutex_unlock_uld_mutex(struct mutex *lock ) ;
void ldv_initialize(void) ;
int ldv_post_init(int init_ret_val ) ;
extern void ldv_pre_probe(void) ;
int ldv_post_probe(int probe_ret_val ) ;
int ldv_filter_err_code(int ret_val ) ;
extern int ldv_pre_register_netdev(void) ;
void ldv_check_final_state(void) ;
extern void ldv_switch_to_interrupt_context(void) ;
extern void ldv_switch_to_process_context(void) ;
void ldv_assume(int expression ) ;
void ldv_stop(void) ;
int ldv_undef_int(void) ;
void ldv_free(void *s ) ;
void *ldv_xmalloc(size_t size ) ;
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
extern void __list_del_entry(struct list_head * ) ;
extern void list_del(struct list_head * ) ;
__inline static int list_empty(struct list_head const *head )
{
  {
  return ((unsigned long )((struct list_head const *)head->next) == (unsigned long )head);
}
}
extern struct module __this_module ;
__inline static void set_bit(long nr , unsigned long volatile *addr )
{
  {
  __asm__ volatile (".pushsection .smp_locks,\"a\"\n.balign 4\n.long 671f - .\n.popsection\n671:\n\tlock; bts %1,%0": "+m" (*((long volatile *)addr)): "Ir" (nr): "memory");
  return;
}
}
__inline static void __set_bit(long nr , unsigned long volatile *addr )
{
  {
  __asm__ volatile ("bts %1,%0": "+m" (*((long volatile *)addr)): "Ir" (nr): "memory");
  return;
}
}
__inline static void clear_bit(long nr , unsigned long volatile *addr )
{
  {
  __asm__ volatile (".pushsection .smp_locks,\"a\"\n.balign 4\n.long 671f - .\n.popsection\n671:\n\tlock; btr %1,%0": "+m" (*((long volatile *)addr)): "Ir" (nr));
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
__inline static int test_and_set_bit(long nr , unsigned long volatile *addr )
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
__inline static int fls(int x )
{
  int r ;
  {
  __asm__ ("bsrl %1,%0": "=r" (r): "rm" (x), "0" (-1));
  return (r + 1);
}
}
__inline static int fls64(__u64 x )
{
  int bitpos ;
  {
  bitpos = -1;
  __asm__ ("bsrq %1,%q0": "+r" (bitpos): "rm" (x));
  return (bitpos + 1);
}
}
extern unsigned long find_next_zero_bit(unsigned long const * , unsigned long ,
                                        unsigned long ) ;
extern unsigned long find_first_zero_bit(unsigned long const * , unsigned long ) ;
__inline static unsigned int __arch_hweight32(unsigned int w )
{
  unsigned int res ;
  {
  res = 0U;
  __asm__ ("661:\n\tcall __sw_hweight32\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word (4*32+23)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0xf3,0x40,0x0f,0xb8,0xc7\n6641:\n\t.popsection": "=a" (res): "D" (w));
  return (res);
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
  int tmp ;
  {
  {
  tmp = __builtin_bswap32(val);
  }
  return ((__u32 )tmp);
}
}
__inline static __u64 __fswab64(__u64 val )
{
  long tmp ;
  {
  {
  tmp = __builtin_bswap64(val);
  }
  return ((__u64 )tmp);
}
}
__inline static unsigned int fls_long(unsigned long l )
{
  int tmp___0 ;
  {
  {
  tmp___0 = fls64((__u64 )l);
  }
  return ((unsigned int )tmp___0);
}
}
__inline static int __ilog2_u32(u32 n )
{
  int tmp ;
  {
  {
  tmp = fls((int )n);
  }
  return (tmp + -1);
}
}
__inline static unsigned long __roundup_pow_of_two(unsigned long n )
{
  unsigned int tmp ;
  {
  {
  tmp = fls_long(n - 1UL);
  }
  return (1UL << (int )tmp);
}
}
extern int printk(char const * , ...) ;
extern void __might_sleep(char const * , int , int ) ;
extern void might_fault(void) ;
extern int sprintf(char * , char const * , ...) ;
extern int snprintf(char * , size_t , char const * , ...) ;
__inline static long PTR_ERR(void const *ptr ) ;
__inline static long IS_ERR(void const *ptr ) ;
__inline static long IS_ERR_OR_NULL(void const *ptr ) ;
extern void __bad_percpu_size(void) ;
extern struct task_struct *current_task ;
__inline static struct task_struct *get_current(void)
{
  struct task_struct *pfo_ret__ ;
  {
  {
  if (8UL == 1UL) {
    goto case_1;
  } else {
  }
  if (8UL == 2UL) {
    goto case_2;
  } else {
  }
  if (8UL == 4UL) {
    goto case_4;
  } else {
  }
  if (8UL == 8UL) {
    goto case_8;
  } else {
  }
  goto switch_default;
  case_1:
  __asm__ ("movb %%gs:%P1,%0": "=q" (pfo_ret__): "p" (& current_task));
  goto ldv_2999;
  case_2:
  __asm__ ("movw %%gs:%P1,%0": "=r" (pfo_ret__): "p" (& current_task));
  goto ldv_2999;
  case_4:
  __asm__ ("movl %%gs:%P1,%0": "=r" (pfo_ret__): "p" (& current_task));
  goto ldv_2999;
  case_8:
  __asm__ ("movq %%gs:%P1,%0": "=r" (pfo_ret__): "p" (& current_task));
  goto ldv_2999;
  switch_default:
  {
  __bad_percpu_size();
  }
  switch_break: ;
  }
  ldv_2999: ;
  return (pfo_ret__);
}
}
extern void *memcpy(void * , void const * , size_t ) ;
extern void *memset(void * , int , size_t ) ;
extern size_t strlcpy(char * , char const * , size_t ) ;
extern int __bitmap_weight(unsigned long const * , int ) ;
extern int bitmap_find_free_region(unsigned long * , int , int ) ;
extern void bitmap_release_region(unsigned long * , int , int ) ;
__inline static void bitmap_zero(unsigned long *dst , int nbits )
{
  int len ;
  {
  {
  len = (int )((unsigned int )(((unsigned long )nbits + 63UL) / 64UL) * 8U);
  memset((void *)dst, 0, (size_t )len);
  }
  return;
}
}
__inline static int bitmap_weight(unsigned long const *src , int nbits )
{
  int tmp___0 ;
  {
  {
  tmp___0 = __bitmap_weight(src, nbits);
  }
  return (tmp___0);
}
}
extern void warn_slowpath_null(char const * , int const ) ;
extern int nr_cpu_ids ;
extern struct cpumask const * const cpu_online_mask ;
__inline static unsigned int cpumask_weight(struct cpumask const *srcp )
{
  int tmp ;
  {
  {
  tmp = bitmap_weight((unsigned long const *)(& srcp->bits), nr_cpu_ids);
  }
  return ((unsigned int )tmp);
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
__inline static void atomic_dec(atomic_t *v )
{
  {
  __asm__ volatile (".pushsection .smp_locks,\"a\"\n.balign 4\n.long 671f - .\n.popsection\n671:\n\tlock; decl %0": "+m" (v->counter));
  return;
}
}
extern void lockdep_init_map(struct lockdep_map * , char const * , struct lock_class_key * ,
                             int ) ;
extern void lock_acquire(struct lockdep_map * , unsigned int , int , int , int ,
                         struct lockdep_map * , unsigned long ) ;
extern void lock_release(struct lockdep_map * , int , unsigned long ) ;
extern int lock_is_held(struct lockdep_map * ) ;
extern void lockdep_rcu_suspicious(char const * , int const , char const * ) ;
static void ldv_mutex_unlock_29(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_unlock_32(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_unlock_35(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_unlock_37(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_unlock_39(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_unlock_41(struct mutex *ldv_func_arg1 ) ;
extern int __preempt_count ;
__inline static void __preempt_count_add(int val )
{
  int pao_ID__ ;
  {
  pao_ID__ = 0;
  {
  if (4UL == 1UL) {
    goto case_1;
  } else {
  }
  if (4UL == 2UL) {
    goto case_2;
  } else {
  }
  if (4UL == 4UL) {
    goto case_4;
  } else {
  }
  if (4UL == 8UL) {
    goto case_8;
  } else {
  }
  goto switch_default;
  case_1: ;
  if (pao_ID__ == 1) {
    __asm__ ("incb %%gs:%P0": "+m" (__preempt_count));
  } else
  if (pao_ID__ == -1) {
    __asm__ ("decb %%gs:%P0": "+m" (__preempt_count));
  } else {
    __asm__ ("addb %1, %%gs:%P0": "+m" (__preempt_count): "qi" (val));
  }
  goto ldv_6411;
  case_2: ;
  if (pao_ID__ == 1) {
    __asm__ ("incw %%gs:%P0": "+m" (__preempt_count));
  } else
  if (pao_ID__ == -1) {
    __asm__ ("decw %%gs:%P0": "+m" (__preempt_count));
  } else {
    __asm__ ("addw %1, %%gs:%P0": "+m" (__preempt_count): "ri" (val));
  }
  goto ldv_6411;
  case_4: ;
  if (pao_ID__ == 1) {
    __asm__ ("incl %%gs:%P0": "+m" (__preempt_count));
  } else
  if (pao_ID__ == -1) {
    __asm__ ("decl %%gs:%P0": "+m" (__preempt_count));
  } else {
    __asm__ ("addl %1, %%gs:%P0": "+m" (__preempt_count): "ri" (val));
  }
  goto ldv_6411;
  case_8: ;
  if (pao_ID__ == 1) {
    __asm__ ("incq %%gs:%P0": "+m" (__preempt_count));
  } else
  if (pao_ID__ == -1) {
    __asm__ ("decq %%gs:%P0": "+m" (__preempt_count));
  } else {
    __asm__ ("addq %1, %%gs:%P0": "+m" (__preempt_count): "re" (val));
  }
  goto ldv_6411;
  switch_default:
  {
  __bad_percpu_size();
  }
  switch_break: ;
  }
  ldv_6411: ;
  return;
}
}
__inline static void __preempt_count_sub(int val )
{
  int pao_ID__ ;
  {
  pao_ID__ = 0;
  {
  if (4UL == 1UL) {
    goto case_1;
  } else {
  }
  if (4UL == 2UL) {
    goto case_2;
  } else {
  }
  if (4UL == 4UL) {
    goto case_4;
  } else {
  }
  if (4UL == 8UL) {
    goto case_8;
  } else {
  }
  goto switch_default;
  case_1: ;
  if (pao_ID__ == 1) {
    __asm__ ("incb %%gs:%P0": "+m" (__preempt_count));
  } else
  if (pao_ID__ == -1) {
    __asm__ ("decb %%gs:%P0": "+m" (__preempt_count));
  } else {
    __asm__ ("addb %1, %%gs:%P0": "+m" (__preempt_count): "qi" (- val));
  }
  goto ldv_6423;
  case_2: ;
  if (pao_ID__ == 1) {
    __asm__ ("incw %%gs:%P0": "+m" (__preempt_count));
  } else
  if (pao_ID__ == -1) {
    __asm__ ("decw %%gs:%P0": "+m" (__preempt_count));
  } else {
    __asm__ ("addw %1, %%gs:%P0": "+m" (__preempt_count): "ri" (- val));
  }
  goto ldv_6423;
  case_4: ;
  if (pao_ID__ == 1) {
    __asm__ ("incl %%gs:%P0": "+m" (__preempt_count));
  } else
  if (pao_ID__ == -1) {
    __asm__ ("decl %%gs:%P0": "+m" (__preempt_count));
  } else {
    __asm__ ("addl %1, %%gs:%P0": "+m" (__preempt_count): "ri" (- val));
  }
  goto ldv_6423;
  case_8: ;
  if (pao_ID__ == 1) {
    __asm__ ("incq %%gs:%P0": "+m" (__preempt_count));
  } else
  if (pao_ID__ == -1) {
    __asm__ ("decq %%gs:%P0": "+m" (__preempt_count));
  } else {
    __asm__ ("addq %1, %%gs:%P0": "+m" (__preempt_count): "re" (- val));
  }
  goto ldv_6423;
  switch_default:
  {
  __bad_percpu_size();
  }
  switch_break: ;
  }
  ldv_6423: ;
  return;
}
}
extern void __raw_spin_lock_init(raw_spinlock_t * , char const * , struct lock_class_key * ) ;
extern void _raw_spin_lock(raw_spinlock_t * ) ;
extern void _raw_spin_lock_bh(raw_spinlock_t * ) ;
extern void _raw_spin_lock_irq(raw_spinlock_t * ) ;
extern void _raw_spin_unlock(raw_spinlock_t * ) ;
extern void _raw_spin_unlock_bh(raw_spinlock_t * ) ;
extern void _raw_spin_unlock_irq(raw_spinlock_t * ) ;
extern void _raw_read_lock(rwlock_t * ) ;
extern void _raw_read_lock_bh(rwlock_t * ) ;
extern void _raw_read_unlock(rwlock_t * ) ;
extern void _raw_read_unlock_bh(rwlock_t * ) ;
__inline static raw_spinlock_t *spinlock_check(spinlock_t *lock )
{
  {
  return (& lock->__annonCompField19.rlock);
}
}
__inline static void spin_lock(spinlock_t *lock )
{
  {
  {
  _raw_spin_lock(& lock->__annonCompField19.rlock);
  }
  return;
}
}
__inline static void spin_lock_bh(spinlock_t *lock )
{
  {
  {
  _raw_spin_lock_bh(& lock->__annonCompField19.rlock);
  }
  return;
}
}
__inline static void spin_lock_irq(spinlock_t *lock )
{
  {
  {
  _raw_spin_lock_irq(& lock->__annonCompField19.rlock);
  }
  return;
}
}
__inline static void spin_unlock(spinlock_t *lock )
{
  {
  {
  _raw_spin_unlock(& lock->__annonCompField19.rlock);
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
__inline static void spin_unlock_irq(spinlock_t *lock )
{
  {
  {
  _raw_spin_unlock_irq(& lock->__annonCompField19.rlock);
  }
  return;
}
}
__inline static void __rcu_read_lock(void)
{
  {
  {
  __preempt_count_add(1);
  __asm__ volatile ("": : : "memory");
  }
  return;
}
}
__inline static void __rcu_read_unlock(void)
{
  {
  {
  __asm__ volatile ("": : : "memory");
  __preempt_count_sub(1);
  }
  return;
}
}
extern bool rcu_is_watching(void) ;
extern bool rcu_lockdep_current_cpu_online(void) ;
__inline static void rcu_lock_acquire(struct lockdep_map *map )
{
  {
  {
  lock_acquire(map, 0U, 0, 2, 1, (struct lockdep_map *)0, (unsigned long )((void *)0));
  }
  return;
}
}
__inline static void rcu_lock_release(struct lockdep_map *map )
{
  {
  {
  lock_release(map, 1, (unsigned long )((void *)0));
  }
  return;
}
}
extern struct lockdep_map rcu_lock_map ;
extern int debug_lockdep_rcu_enabled(void) ;
__inline static int rcu_read_lock_held(void)
{
  int tmp ;
  bool tmp___0 ;
  int tmp___1 ;
  bool tmp___2 ;
  int tmp___3 ;
  int tmp___4 ;
  {
  {
  tmp = debug_lockdep_rcu_enabled();
  }
  if (tmp == 0) {
    return (1);
  } else {
  }
  {
  tmp___0 = rcu_is_watching();
  }
  if (tmp___0) {
    tmp___1 = 0;
  } else {
    tmp___1 = 1;
  }
  if (tmp___1) {
    return (0);
  } else {
  }
  {
  tmp___2 = rcu_lockdep_current_cpu_online();
  }
  if (tmp___2) {
    tmp___3 = 0;
  } else {
    tmp___3 = 1;
  }
  if (tmp___3) {
    return (0);
  } else {
  }
  {
  tmp___4 = lock_is_held(& rcu_lock_map);
  }
  return (tmp___4);
}
}
__inline static void rcu_read_lock(void)
{
  bool __warned ;
  int tmp ;
  bool tmp___0 ;
  int tmp___1 ;
  {
  {
  __rcu_read_lock();
  rcu_lock_acquire(& rcu_lock_map);
  tmp = debug_lockdep_rcu_enabled();
  }
  if (tmp != 0 && ! __warned) {
    {
    tmp___0 = rcu_is_watching();
    }
    if (tmp___0) {
      tmp___1 = 0;
    } else {
      tmp___1 = 1;
    }
    if (tmp___1) {
      {
      __warned = 1;
      lockdep_rcu_suspicious("include/linux/rcupdate.h", 812, "rcu_read_lock() used illegally while idle");
      }
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
  {
  tmp = debug_lockdep_rcu_enabled();
  }
  if (tmp != 0 && ! __warned) {
    {
    tmp___0 = rcu_is_watching();
    }
    if (tmp___0) {
      tmp___1 = 0;
    } else {
      tmp___1 = 1;
    }
    if (tmp___1) {
      {
      __warned = 1;
      lockdep_rcu_suspicious("include/linux/rcupdate.h", 833, "rcu_read_unlock() used illegally while idle");
      }
    } else {
    }
  } else {
  }
  {
  rcu_lock_release(& rcu_lock_map);
  __rcu_read_unlock();
  }
  return;
}
}
extern unsigned long usecs_to_jiffies(unsigned int const ) ;
extern void __init_work(struct work_struct * , int ) ;
extern struct workqueue_struct *__alloc_workqueue_key(char const * , unsigned int ,
                                                      int , struct lock_class_key * ,
                                                      char const * , ...) ;
extern void destroy_workqueue(struct workqueue_struct * ) ;
extern bool queue_work_on(int , struct workqueue_struct * , struct work_struct * ) ;
extern void flush_workqueue(struct workqueue_struct * ) ;
extern bool cancel_work_sync(struct work_struct * ) ;
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
__inline static char const *kobject_name(struct kobject const *kobj )
{
  {
  return ((char const *)kobj->name);
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
extern void iounmap(void volatile * ) ;
extern void *vzalloc(unsigned long ) ;
extern void vfree(void const * ) ;
extern void *ioremap_wc(resource_size_t , unsigned long ) ;
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
static void *ldv_dev_get_drvdata_13(struct device const *dev ) ;
static void *ldv_dev_get_drvdata_27(struct device const *dev ) ;
static int ldv_dev_set_drvdata_14(struct device *dev , void *data ) ;
extern int dev_alert(struct device const * , char const * , ...) ;
extern int dev_err(struct device const * , char const * , ...) ;
extern int dev_warn(struct device const * , char const * , ...) ;
extern int _dev_info(struct device const * , char const * , ...) ;
extern void msleep(unsigned int ) ;
extern void __list_add_rcu(struct list_head * , struct list_head * , struct list_head * ) ;
__inline static void list_add_tail_rcu(struct list_head *new , struct list_head *head )
{
  {
  {
  __list_add_rcu(new, head->prev, head);
  }
  return;
}
}
__inline static void list_del_rcu(struct list_head *entry )
{
  {
  {
  __list_del_entry(entry);
  entry->prev = (struct list_head *)-2401263026316508672L;
  }
  return;
}
}
__inline static int is_vmalloc_addr(void const *x )
{
  unsigned long addr ;
  {
  addr = (unsigned long )x;
  return (addr - 0xffffc90000000000UL <= 35184372088830UL);
}
}
__inline static struct inode *file_inode(struct file *f )
{
  {
  return (f->f_inode);
}
}
extern loff_t default_llseek(struct file * , loff_t , int ) ;
extern int simple_open(struct inode * , struct file * ) ;
extern long schedule_timeout(long ) ;
extern long schedule_timeout_uninterruptible(long ) ;
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
__inline static void *kcalloc(size_t n , size_t size , gfp_t flags )
{
  void *tmp ;
  {
  {
  tmp = kmalloc_array(n, size, flags | 32768U);
  }
  return (tmp);
}
}
__inline static void *kzalloc(size_t size , gfp_t flags ) ;
extern unsigned long _copy_to_user(void * , void const * , unsigned int ) ;
extern void __copy_to_user_overflow(void) ;
__inline static unsigned long copy_to_user(void *to , void const *from , unsigned long n )
{
  int sz ;
  long tmp ;
  long tmp___0 ;
  {
  {
  sz = -1;
  might_fault();
  tmp = ldv__builtin_expect(sz < 0, 1L);
  }
  if (tmp != 0L) {
    {
    n = _copy_to_user(to, from, (unsigned int )n);
    }
  } else {
    {
    tmp___0 = ldv__builtin_expect((unsigned long )sz >= n, 1L);
    }
    if (tmp___0 != 0L) {
      {
      n = _copy_to_user(to, from, (unsigned int )n);
      }
    } else {
      {
      __copy_to_user_overflow();
      }
    }
  }
  return (n);
}
}
extern int dma_supported(struct device * , u64 ) ;
extern int dma_set_mask(struct device * , u64 ) ;
__inline static int dma_set_coherent_mask(struct device *dev , u64 mask )
{
  int tmp ;
  {
  {
  tmp = dma_supported(dev, mask);
  }
  if (tmp == 0) {
    return (-5);
  } else {
  }
  dev->coherent_dma_mask = mask;
  return (0);
}
}
extern struct sk_buff *__alloc_skb(unsigned int , gfp_t , int , int ) ;
__inline static struct sk_buff *alloc_skb(unsigned int size , gfp_t priority )
{
  struct sk_buff *tmp ;
  {
  {
  tmp = __alloc_skb(size, priority, 0, -1);
  }
  return (tmp);
}
}
__inline static bool skb_is_nonlinear(struct sk_buff const *skb )
{
  {
  return ((unsigned int )skb->data_len != 0U);
}
}
__inline static unsigned char *skb_tail_pointer(struct sk_buff const *skb )
{
  {
  return ((unsigned char *)skb->head + (unsigned long )skb->tail);
}
}
__inline static unsigned char *__skb_put(struct sk_buff *skb , unsigned int len )
{
  unsigned char *tmp ;
  unsigned char *tmp___0 ;
  bool tmp___1 ;
  long tmp___2 ;
  {
  {
  tmp___0 = skb_tail_pointer((struct sk_buff const *)skb);
  tmp = tmp___0;
  tmp___1 = skb_is_nonlinear((struct sk_buff const *)skb);
  tmp___2 = ldv__builtin_expect((long )tmp___1, 0L);
  }
  if (tmp___2 != 0L) {
    {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"include/linux/skbuff.h"),
                         "i" (1498), "i" (12UL));
    __builtin_unreachable();
    }
  } else {
  }
  skb->tail = skb->tail + len;
  skb->len = skb->len + len;
  return (tmp);
}
}
__inline static void skb_set_queue_mapping(struct sk_buff *skb , u16 queue_mapping )
{
  {
  skb->queue_mapping = queue_mapping;
  return;
}
}
__inline static void ethtool_cmd_speed_set(struct ethtool_cmd *ep , __u32 speed )
{
  {
  ep->speed = (unsigned short )speed;
  ep->speed_hi = (unsigned short )(speed >> 16);
  return;
}
}
__inline static __u32 ethtool_cmd_speed(struct ethtool_cmd const *ep )
{
  {
  return ((__u32 )(((int )ep->speed_hi << 16) | (int )ep->speed));
}
}
extern u32 ethtool_op_get_link(struct net_device * ) ;
__inline static u32 ethtool_rxfh_indir_default(u32 index , u32 n_rx_rings )
{
  {
  return (index % n_rx_rings);
}
}
__inline static void napi_disable(struct napi_struct *n )
{
  int tmp ;
  {
  {
  __might_sleep("include/linux/netdevice.h", 486, 0);
  set_bit(1L, (unsigned long volatile *)(& n->state));
  }
  goto ldv_37782;
  ldv_37781:
  {
  msleep(1U);
  }
  ldv_37782:
  {
  tmp = test_and_set_bit(0L, (unsigned long volatile *)(& n->state));
  }
  if (tmp != 0) {
    goto ldv_37781;
  } else {
  }
  {
  clear_bit(1L, (unsigned long volatile *)(& n->state));
  }
  return;
}
}
__inline static void napi_enable(struct napi_struct *n )
{
  int tmp ;
  long tmp___0 ;
  {
  {
  tmp = constant_test_bit(0L, (unsigned long const volatile *)(& n->state));
  tmp___0 = ldv__builtin_expect(tmp == 0, 0L);
  }
  if (tmp___0 != 0L) {
    {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"include/linux/netdevice.h"),
                         "i" (502), "i" (12UL));
    __builtin_unreachable();
    }
  } else {
  }
  {
  __asm__ volatile ("": : : "memory");
  clear_bit(0L, (unsigned long volatile *)(& n->state));
  }
  return;
}
}
__inline static struct netdev_queue *netdev_get_tx_queue(struct net_device const *dev ,
                                                         unsigned int index )
{
  {
  return ((struct netdev_queue *)dev->_tx + (unsigned long )index);
}
}
__inline static void *netdev_priv(struct net_device const *dev )
{
  {
  return ((void *)dev + 3200U);
}
}
extern void free_netdev(struct net_device * ) ;
static void ldv_free_netdev_47(struct net_device *ldv_func_arg1 ) ;
extern int netpoll_trap(void) ;
extern void __netif_schedule(struct Qdisc * ) ;
__inline static void netif_tx_start_queue(struct netdev_queue *dev_queue )
{
  {
  {
  clear_bit(0L, (unsigned long volatile *)(& dev_queue->state));
  }
  return;
}
}
__inline static void netif_tx_start_all_queues(struct net_device *dev )
{
  unsigned int i ;
  struct netdev_queue *txq ;
  struct netdev_queue *tmp ;
  {
  i = 0U;
  goto ldv_38673;
  ldv_38672:
  {
  tmp = netdev_get_tx_queue((struct net_device const *)dev, i);
  txq = tmp;
  netif_tx_start_queue(txq);
  i = i + 1U;
  }
  ldv_38673: ;
  if (i < dev->num_tx_queues) {
    goto ldv_38672;
  } else {
  }
  return;
}
}
__inline static void netif_tx_wake_queue(struct netdev_queue *dev_queue )
{
  int tmp ;
  int tmp___0 ;
  {
  {
  tmp = netpoll_trap();
  }
  if (tmp != 0) {
    {
    netif_tx_start_queue(dev_queue);
    }
    return;
  } else {
  }
  {
  tmp___0 = test_and_set_bit(0L, (unsigned long volatile *)(& dev_queue->state));
  }
  if (tmp___0 != 0) {
    {
    __netif_schedule(dev_queue->qdisc);
    }
  } else {
  }
  return;
}
}
__inline static void netif_tx_stop_queue(struct netdev_queue *dev_queue )
{
  int __ret_warn_on ;
  long tmp ;
  long tmp___0 ;
  {
  {
  __ret_warn_on = (unsigned long )dev_queue == (unsigned long )((struct netdev_queue *)0);
  tmp = ldv__builtin_expect(__ret_warn_on != 0, 0L);
  }
  if (tmp != 0L) {
    {
    warn_slowpath_null("include/linux/netdevice.h", 2128);
    }
  } else {
  }
  {
  tmp___0 = ldv__builtin_expect(__ret_warn_on != 0, 0L);
  }
  if (tmp___0 != 0L) {
    {
    printk("\016netif_stop_queue() cannot be called before register_netdev()\n");
    }
    return;
  } else {
  }
  {
  set_bit(0L, (unsigned long volatile *)(& dev_queue->state));
  }
  return;
}
}
__inline static void netif_tx_stop_all_queues(struct net_device *dev )
{
  unsigned int i ;
  struct netdev_queue *txq ;
  struct netdev_queue *tmp ;
  {
  i = 0U;
  goto ldv_38703;
  ldv_38702:
  {
  tmp = netdev_get_tx_queue((struct net_device const *)dev, i);
  txq = tmp;
  netif_tx_stop_queue(txq);
  i = i + 1U;
  }
  ldv_38703: ;
  if (i < dev->num_tx_queues) {
    goto ldv_38702;
  } else {
  }
  return;
}
}
__inline static bool netif_running(struct net_device const *dev )
{
  int tmp ;
  {
  {
  tmp = constant_test_bit(0L, (unsigned long const volatile *)(& dev->state));
  }
  return (tmp != 0);
}
}
extern int netif_set_real_num_tx_queues(struct net_device * , unsigned int ) ;
extern int netif_set_real_num_rx_queues(struct net_device * , unsigned int ) ;
extern int netif_get_num_default_rss_queues(void) ;
__inline static bool netif_carrier_ok(struct net_device const *dev )
{
  int tmp ;
  {
  {
  tmp = constant_test_bit(2L, (unsigned long const volatile *)(& dev->state));
  }
  return (tmp == 0);
}
}
extern void netif_carrier_on(struct net_device * ) ;
extern void netif_carrier_off(struct net_device * ) ;
__inline static bool netif_device_present(struct net_device *dev )
{
  int tmp ;
  {
  {
  tmp = constant_test_bit(1L, (unsigned long const volatile *)(& dev->state));
  }
  return (tmp != 0);
}
}
extern void netif_device_detach(struct net_device * ) ;
extern void netif_device_attach(struct net_device * ) ;
extern int register_netdev(struct net_device * ) ;
static int ldv_register_netdev_49(struct net_device *ldv_func_arg1 ) ;
extern void unregister_netdev(struct net_device * ) ;
static void ldv_unregister_netdev_50(struct net_device *ldv_func_arg1 ) ;
extern void *netdev_lower_get_next_private(struct net_device * , struct list_head ** ) ;
extern int netdev_info(struct net_device const * , char const * , ...) ;
extern int pcie_capability_clear_and_set_word(struct pci_dev * , int , u16 , u16 ) ;
__inline static int pcie_capability_set_word(struct pci_dev *dev , int pos , u16 set )
{
  int tmp ;
  {
  {
  tmp = pcie_capability_clear_and_set_word(dev, pos, 0, (int )set);
  }
  return (tmp);
}
}
extern int pci_enable_device(struct pci_dev * ) ;
extern void pci_disable_device(struct pci_dev * ) ;
extern void pci_set_master(struct pci_dev * ) ;
extern int pci_save_state(struct pci_dev * ) ;
extern void pci_restore_state(struct pci_dev * ) ;
extern ssize_t pci_read_vpd(struct pci_dev * , loff_t , size_t , void * ) ;
extern ssize_t pci_write_vpd(struct pci_dev * , loff_t , size_t , void const * ) ;
extern int pci_request_regions(struct pci_dev * , char const * ) ;
extern void pci_release_regions(struct pci_dev * ) ;
extern int __pci_register_driver(struct pci_driver * , struct module * , char const * ) ;
static int ldv___pci_register_driver_51(struct pci_driver *ldv_func_arg1 , struct module *ldv_func_arg2 ,
                                        char const *ldv_func_arg3 ) ;
extern void pci_unregister_driver(struct pci_driver * ) ;
static void ldv_pci_unregister_driver_54(struct pci_driver *ldv_func_arg1 ) ;
extern int pci_enable_msi_block(struct pci_dev * , int ) ;
extern void pci_disable_msi(struct pci_dev * ) ;
extern int pci_enable_msix(struct pci_dev * , struct msix_entry * , int ) ;
extern void pci_disable_msix(struct pci_dev * ) ;
__inline static int pci_set_dma_mask(struct pci_dev *dev , u64 mask )
{
  int tmp ;
  {
  {
  tmp = dma_set_mask(& dev->dev, mask);
  }
  return (tmp);
}
}
__inline static int pci_set_consistent_dma_mask(struct pci_dev *dev , u64 mask )
{
  int tmp ;
  {
  {
  tmp = dma_set_coherent_mask(& dev->dev, mask);
  }
  return (tmp);
}
}
__inline static void *pci_get_drvdata(struct pci_dev *pdev )
{
  void *tmp ;
  {
  {
  tmp = ldv_dev_get_drvdata_13((struct device const *)(& pdev->dev));
  }
  return (tmp);
}
}
__inline static void pci_set_drvdata(struct pci_dev *pdev , void *data )
{
  {
  {
  ldv_dev_set_drvdata_14(& pdev->dev, data);
  }
  return;
}
}
__inline static char const *pci_name(struct pci_dev const *pdev )
{
  char const *tmp ;
  {
  {
  tmp = dev_name(& pdev->dev);
  }
  return (tmp);
}
}
extern void *pci_ioremap_bar(struct pci_dev * , int ) ;
extern int pci_enable_sriov(struct pci_dev * , int ) ;
extern void pci_disable_sriov(struct pci_dev * ) ;
extern struct dentry *debugfs_create_file(char const * , umode_t , struct dentry * ,
                                          void * , struct file_operations const * ) ;
extern struct dentry *debugfs_create_dir(char const * , struct dentry * ) ;
extern void debugfs_remove(struct dentry * ) ;
extern void debugfs_remove_recursive(struct dentry * ) ;
extern int eth_validate_addr(struct net_device * ) ;
extern struct net_device *alloc_etherdev_mqs(int , unsigned int , unsigned int ) ;
static struct net_device *ldv_alloc_etherdev_mqs_48(int ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                                    unsigned int ldv_func_arg3 ) ;
__inline static bool is_zero_ether_addr(u8 const *addr )
{
  {
  return (((unsigned int )*((u32 const *)addr) | (unsigned int )*((u16 const *)addr + 4U)) == 0U);
}
}
__inline static bool is_multicast_ether_addr(u8 const *addr )
{
  {
  return (((int )*addr & 1) != 0);
}
}
__inline static bool is_valid_ether_addr(u8 const *addr )
{
  bool tmp ;
  int tmp___0 ;
  bool tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  {
  {
  tmp = is_multicast_ether_addr(addr);
  }
  if (tmp) {
    tmp___0 = 0;
  } else {
    tmp___0 = 1;
  }
  if (tmp___0) {
    {
    tmp___1 = is_zero_ether_addr(addr);
    }
    if (tmp___1) {
      tmp___2 = 0;
    } else {
      tmp___2 = 1;
    }
    if (tmp___2) {
      tmp___3 = 1;
    } else {
      tmp___3 = 0;
    }
  } else {
    tmp___3 = 0;
  }
  return ((bool )tmp___3);
}
}
extern int request_firmware(struct firmware const ** , char const * , struct device * ) ;
extern void release_firmware(struct firmware const * ) ;
extern void rtnl_lock(void) ;
extern void rtnl_unlock(void) ;
extern int lockdep_rtnl_is_held(void) ;
extern struct net_device *__vlan_find_dev_deep(struct net_device * , __be16 , u16 ) ;
extern struct net_device *vlan_dev_real_dev(struct net_device const * ) ;
__inline static bool mdio_phy_id_is_c45(int phy_id )
{
  {
  return (((unsigned int )phy_id & 4294966272U) == 32768U);
}
}
__inline static __u16 mdio_phy_id_prtad(int phy_id )
{
  {
  return ((__u16 )((phy_id & 992) >> 5));
}
}
__inline static __u16 mdio_phy_id_devad(int phy_id )
{
  {
  return ((unsigned int )((__u16 )phy_id) & 31U);
}
}
extern int pci_enable_pcie_error_reporting(struct pci_dev * ) ;
extern int pci_disable_pcie_error_reporting(struct pci_dev * ) ;
extern int pci_cleanup_aer_uncorrect_error_status(struct pci_dev * ) ;
extern int register_netevent_notifier(struct notifier_block * ) ;
static int ldv_register_netevent_notifier_30(struct notifier_block *ldv_func_arg1 ) ;
extern int unregister_netevent_notifier(struct notifier_block * ) ;
static int ldv_unregister_netevent_notifier_34(struct notifier_block *ldv_func_arg1 ) ;
extern int register_inet6addr_notifier(struct notifier_block * ) ;
static int ldv_register_inet6addr_notifier_52(struct notifier_block *ldv_func_arg1 ) ;
extern int unregister_inet6addr_notifier(struct notifier_block * ) ;
static int ldv_unregister_inet6addr_notifier_53(struct notifier_block *ldv_func_arg1 ) ;
__inline static struct inet6_dev *__in6_dev_get(struct net_device const *dev )
{
  struct inet6_dev *_________p1 ;
  bool __warned ;
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  {
  {
  _________p1 = *((struct inet6_dev * const volatile *)(& dev->ip6_ptr));
  tmp = debug_lockdep_rcu_enabled();
  }
  if (tmp != 0 && ! __warned) {
    {
    tmp___0 = rcu_read_lock_held();
    }
    if (tmp___0 == 0) {
      {
      tmp___1 = lockdep_rtnl_is_held();
      }
      if (tmp___1 == 0) {
        {
        __warned = 1;
        lockdep_rcu_suspicious("include/net/addrconf.h", 229, "suspicious rcu_dereference_check() usage");
        }
      } else {
      }
    } else {
    }
  } else {
  }
  return (_________p1);
}
}
extern int request_threaded_irq(unsigned int , irqreturn_t (*)(int , void * ) ,
                                irqreturn_t (*)(int , void * ) , unsigned long ,
                                char const * , void * ) ;
__inline static int request_irq(unsigned int irq , irqreturn_t (*handler)(int , void * ) ,
                                unsigned long flags , char const *name , void *dev )
{
  int tmp ;
  {
  {
  tmp = request_threaded_irq(irq, handler, (irqreturn_t (*)(int , void * ))0, flags,
                             name, dev);
  }
  return (tmp);
}
}
__inline static int ldv_request_irq_15(unsigned int irq , irqreturn_t (*handler)(int ,
                                                                                 void * ) ,
                                       unsigned long flags , char const *name ,
                                       void *dev ) ;
__inline static int ldv_request_irq_16(unsigned int irq , irqreturn_t (*handler)(int ,
                                                                                 void * ) ,
                                       unsigned long flags , char const *name ,
                                       void *dev ) ;
__inline static int ldv_request_irq_17(unsigned int irq , irqreturn_t (*handler)(int ,
                                                                                 void * ) ,
                                       unsigned long flags , char const *name ,
                                       void *dev ) ;
__inline static int ldv_request_irq_18(unsigned int irq , irqreturn_t (*handler)(int ,
                                                                                 void * ) ,
                                       unsigned long flags , char const *name ,
                                       void *dev ) ;
__inline static int ldv_request_irq_42(unsigned int irq , irqreturn_t (*handler)(int ,
                                                                                 void * ) ,
                                       unsigned long flags , char const *name ,
                                       void *dev ) ;
__inline static int ldv_request_irq_44(unsigned int irq , irqreturn_t (*handler)(int ,
                                                                                 void * ) ,
                                       unsigned long flags , char const *name ,
                                       void *dev ) ;
extern void free_irq(unsigned int , void * ) ;
static void ldv_free_irq_19(unsigned int ldv_func_arg1 , void *ldv_func_arg2 ) ;
static void ldv_free_irq_20(unsigned int ldv_func_arg1 , void *ldv_func_arg2 ) ;
static void ldv_free_irq_21(unsigned int ldv_func_arg1 , void *ldv_func_arg2 ) ;
static void ldv_free_irq_22(unsigned int ldv_func_arg1 , void *ldv_func_arg2 ) ;
static void ldv_free_irq_23(unsigned int ldv_func_arg1 , void *ldv_func_arg2 ) ;
static void ldv_free_irq_24(unsigned int ldv_func_arg1 , void *ldv_func_arg2 ) ;
static void ldv_free_irq_25(unsigned int ldv_func_arg1 , void *ldv_func_arg2 ) ;
static void ldv_free_irq_26(unsigned int ldv_func_arg1 , void *ldv_func_arg2 ) ;
static void ldv_free_irq_43(unsigned int ldv_func_arg1 , void *ldv_func_arg2 ) ;
static void ldv_free_irq_45(unsigned int ldv_func_arg1 , void *ldv_func_arg2 ) ;
static void ldv_free_irq_46(unsigned int ldv_func_arg1 , void *ldv_func_arg2 ) ;
extern void __tasklet_schedule(struct tasklet_struct * ) ;
__inline static void tasklet_schedule(struct tasklet_struct *t )
{
  int tmp ;
  {
  {
  tmp = test_and_set_bit(0L, (unsigned long volatile *)(& t->state));
  }
  if (tmp == 0) {
    {
    __tasklet_schedule(t);
    }
  } else {
  }
  return;
}
}
int cxgb4_alloc_atid(struct tid_info *t , void *data ) ;
int cxgb4_alloc_stid(struct tid_info *t , int family , void *data ) ;
int cxgb4_alloc_sftid(struct tid_info *t , int family , void *data ) ;
void cxgb4_free_atid(struct tid_info *t , unsigned int atid ) ;
void cxgb4_free_stid(struct tid_info *t , unsigned int stid , int family ) ;
void cxgb4_remove_tid(struct tid_info *t , unsigned int chan , unsigned int tid ) ;
int cxgb4_create_server(struct net_device const *dev , unsigned int stid , __be32 sip ,
                        __be16 sport , __be16 vlan , unsigned int queue ) ;
int cxgb4_create_server6(struct net_device const *dev , unsigned int stid , struct in6_addr const *sip ,
                         __be16 sport , unsigned int queue ) ;
int cxgb4_remove_server(struct net_device const *dev , unsigned int stid , unsigned int queue ,
                        bool ipv6 ) ;
int cxgb4_create_server_filter(struct net_device const *dev , unsigned int stid ,
                               __be32 sip , __be16 sport , __be16 vlan , unsigned int queue ,
                               unsigned char port , unsigned char mask ) ;
int cxgb4_remove_server_filter(struct net_device const *dev , unsigned int stid ,
                               unsigned int queue , bool ipv6 ) ;
__inline static void set_wr_txq(struct sk_buff *skb , int prio , int queue )
{
  {
  {
  skb_set_queue_mapping(skb, (int )((u16 )((int )((short )(queue << 1)) | (int )((short )prio))));
  }
  return;
}
}
int cxgb4_register_uld(enum cxgb4_uld type , struct cxgb4_uld_info const *p ) ;
int cxgb4_unregister_uld(enum cxgb4_uld type ) ;
unsigned int cxgb4_dbfifo_count(struct net_device const *dev , int lpfifo ) ;
unsigned int cxgb4_port_chan(struct net_device const *dev ) ;
unsigned int cxgb4_port_viid(struct net_device const *dev ) ;
unsigned int cxgb4_port_idx(struct net_device const *dev ) ;
unsigned int cxgb4_best_mtu(unsigned short const *mtus , unsigned short mtu , unsigned int *idx ) ;
void cxgb4_get_tcp_stats(struct pci_dev *pdev , struct tp_tcp_stats *v4 , struct tp_tcp_stats *v6 ) ;
void cxgb4_iscsi_init(struct net_device *dev , unsigned int tag_mask , unsigned int const *pgsz_order ) ;
int cxgb4_sync_txq_pidx(struct net_device *dev , u16 qid , u16 pidx , u16 size ) ;
int cxgb4_flush_eq_cache(struct net_device *dev ) ;
void cxgb4_disable_db_coalescing(struct net_device *dev ) ;
void cxgb4_enable_db_coalescing(struct net_device *dev ) ;
__inline static int is_t5(enum chip_type chip )
{
  {
  return ((((unsigned int )chip >> 4) & 15U) == 5U);
}
}
__inline static int is_t4(enum chip_type chip )
{
  {
  return ((((unsigned int )chip >> 4) & 15U) == 4U);
}
}
__inline static u32 t4_read_reg(struct adapter *adap , u32 reg_addr )
{
  unsigned int tmp ;
  {
  {
  tmp = readl((void const volatile *)adap->regs + (unsigned long )reg_addr);
  }
  return (tmp);
}
}
__inline static void t4_write_reg(struct adapter *adap , u32 reg_addr , u32 val )
{
  {
  {
  writel(val, (void volatile *)adap->regs + (unsigned long )reg_addr);
  }
  return;
}
}
__inline static struct port_info *netdev2pinfo(struct net_device const *dev )
{
  void *tmp ;
  {
  {
  tmp = netdev_priv(dev);
  }
  return ((struct port_info *)tmp);
}
}
__inline static struct port_info *adap2pinfo(struct adapter *adap , int idx )
{
  void *tmp ;
  {
  {
  tmp = netdev_priv((struct net_device const *)adap->port[idx]);
  }
  return ((struct port_info *)tmp);
}
}
__inline static struct adapter *netdev2adap(struct net_device const *dev )
{
  struct port_info *tmp ;
  {
  {
  tmp = netdev2pinfo(dev);
  }
  return (tmp->adapter);
}
}
void t4_os_portmod_changed(struct adapter const *adap , int port_id ) ;
void t4_os_link_changed(struct adapter *adapter , int port_id , int link_stat ) ;
void *t4_alloc_mem(size_t size ) ;
void t4_free_sge_resources(struct adapter *adap ) ;
irq_handler_t t4_intr_handler(struct adapter *adap ) ;
netdev_tx_t t4_eth_xmit(struct sk_buff *skb , struct net_device *dev ) ;
int t4_ethrx_handler(struct sge_rspq *q , __be64 const *rsp , struct pkt_gl const *si ) ;
int t4_mgmt_tx(struct adapter *adap , struct sk_buff *skb ) ;
int t4_ofld_send(struct adapter *adap , struct sk_buff *skb ) ;
int t4_sge_alloc_rxq(struct adapter *adap , struct sge_rspq *iq , bool fwevtq , struct net_device *dev ,
                     int intr_idx , struct sge_fl *fl , int (*hnd)(struct sge_rspq * ,
                                                                   __be64 const * ,
                                                                   struct pkt_gl const * ) ) ;
int t4_sge_alloc_eth_txq(struct adapter *adap , struct sge_eth_txq *txq , struct net_device *dev ,
                         struct netdev_queue *netdevq , unsigned int iqid ) ;
int t4_sge_alloc_ctrl_txq(struct adapter *adap , struct sge_ctrl_txq *txq , struct net_device *dev ,
                          unsigned int iqid , unsigned int cmplqid ) ;
int t4_sge_alloc_ofld_txq(struct adapter *adap , struct sge_ofld_txq *txq , struct net_device *dev ,
                          unsigned int iqid ) ;
irqreturn_t t4_sge_intr_msix(int irq , void *cookie ) ;
int t4_sge_init(struct adapter *adap ) ;
void t4_sge_start(struct adapter *adap ) ;
void t4_sge_stop(struct adapter *adap ) ;
int dbfifo_int_thresh ;
__inline static int is_bypass(struct adapter *adap )
{
  {
  return ((int )adap->params.bypass);
}
}
__inline static int is_bypass_device(int device )
{
  {
  {
  if (device == 17419) {
    goto case_17419;
  } else {
  }
  if (device == 17420) {
    goto case_17420;
  } else {
  }
  goto switch_default;
  case_17419: ;
  case_17420: ;
  return (1);
  switch_default: ;
  return (0);
  switch_break: ;
  }
}
}
void t4_set_reg_field(struct adapter *adapter , unsigned int addr , u32 mask , u32 val ) ;
int t4_wr_mbox_meat(struct adapter *adap , int mbox , void const *cmd , int size ,
                    void *rpl , bool sleep_ok ) ;
__inline static int t4_wr_mbox(struct adapter *adap , int mbox , void const *cmd ,
                               int size , void *rpl )
{
  int tmp ;
  {
  {
  tmp = t4_wr_mbox_meat(adap, mbox, cmd, size, rpl, 1);
  }
  return (tmp);
}
}
void t4_write_indirect(struct adapter *adap , unsigned int addr_reg , unsigned int data_reg ,
                       u32 const *vals , unsigned int nregs , unsigned int start_idx ) ;
void t4_intr_enable(struct adapter *adapter ) ;
void t4_intr_disable(struct adapter *adapter ) ;
int t4_slow_intr_handler(struct adapter *adapter ) ;
int t4_wait_dev_ready(struct adapter *adap ) ;
int t4_link_start(struct adapter *adap , unsigned int mbox , unsigned int port , struct link_config *lc ) ;
int t4_restart_aneg(struct adapter *adap , unsigned int mbox , unsigned int port ) ;
int t4_memory_write(struct adapter *adap , int mtype , u32 addr , u32 len , __be32 *buf ) ;
int t4_seeprom_wp(struct adapter *adapter , bool enable ) ;
int get_vpd_params(struct adapter *adapter , struct vpd_params *p ) ;
int t4_load_fw(struct adapter *adap , u8 const *fw_data , unsigned int size ) ;
unsigned int t4_flash_cfg_addr(struct adapter *adapter ) ;
int t4_get_fw_version(struct adapter *adapter , u32 *vers ) ;
int t4_get_tp_version(struct adapter *adapter , u32 *vers ) ;
int t4_prep_fw(struct adapter *adap , struct fw_info *fw_info , u8 const *fw_data ,
               unsigned int fw_size , struct fw_hdr *card_fw , enum dev_state state ,
               int *reset ) ;
int t4_prep_adapter(struct adapter *adapter ) ;
int t4_init_tp_params(struct adapter *adap ) ;
int t4_port_init(struct adapter *adap , int mbox , int pf , int vf ) ;
void t4_fatal_err(struct adapter *adap ) ;
int t4_config_rss_range(struct adapter *adapter , int mbox , unsigned int viid , int start ,
                        int n , u16 const *rspq , unsigned int nrspq ) ;
int t4_config_glbl_rss(struct adapter *adapter , int mbox , unsigned int mode , unsigned int flags ) ;
int t4_mc_read(struct adapter *adap , int idx , u32 addr , __be32 *data , u64 *ecc ) ;
int t4_edc_read(struct adapter *adap , int idx , u32 addr , __be32 *data , u64 *ecc ) ;
void t4_get_port_stats(struct adapter *adap , int idx , struct port_stats *p ) ;
void t4_read_mtu_tbl(struct adapter *adap , u16 *mtus , u8 *mtu_log ) ;
void t4_tp_wr_bits_indirect(struct adapter *adap , unsigned int addr , unsigned int mask ,
                            unsigned int val ) ;
void t4_tp_get_tcp_stats(struct adapter *adap , struct tp_tcp_stats *v4 , struct tp_tcp_stats *v6 ) ;
void t4_load_mtus(struct adapter *adap , unsigned short const *mtus , unsigned short const *alpha ,
                  unsigned short const *beta ) ;
void t4_mk_filtdelwr(unsigned int ftid , struct fw_filter_wr *wr , int qid ) ;
void t4_wol_magic_enable(struct adapter *adap , unsigned int port , u8 const *addr ) ;
int t4_wol_pat_enable(struct adapter *adap , unsigned int port , unsigned int map ,
                      u64 mask0 , u64 mask1 , unsigned int crc , bool enable ) ;
int t4_fw_hello(struct adapter *adap , unsigned int mbox , unsigned int evt_mbox ,
                enum dev_master master , enum dev_state *state ) ;
int t4_fw_bye(struct adapter *adap , unsigned int mbox ) ;
int t4_early_init(struct adapter *adap , unsigned int mbox ) ;
int t4_fw_reset(struct adapter *adap , unsigned int mbox , int reset ) ;
int t4_fixup_host_params(struct adapter *adap , unsigned int page_size , unsigned int cache_line_size ) ;
int t4_fw_initialize(struct adapter *adap , unsigned int mbox ) ;
int t4_query_params(struct adapter *adap , unsigned int mbox , unsigned int pf , unsigned int vf ,
                    unsigned int nparams , u32 const *params , u32 *val ) ;
int t4_set_params(struct adapter *adap , unsigned int mbox , unsigned int pf , unsigned int vf ,
                  unsigned int nparams , u32 const *params , u32 const *val ) ;
int t4_cfg_pfvf(struct adapter *adap , unsigned int mbox , unsigned int pf , unsigned int vf ,
                unsigned int txq , unsigned int txq_eth_ctrl , unsigned int rxqi ,
                unsigned int rxq , unsigned int tc , unsigned int vi , unsigned int cmask ,
                unsigned int pmask , unsigned int nexact , unsigned int rcaps , unsigned int wxcaps ) ;
int t4_alloc_vi(struct adapter *adap , unsigned int mbox , unsigned int port , unsigned int pf ,
                unsigned int vf , unsigned int nmac , u8 *mac , unsigned int *rss_size ) ;
int t4_set_rxmode(struct adapter *adap , unsigned int mbox , unsigned int viid , int mtu ,
                  int promisc , int all_multi , int bcast , int vlanex , bool sleep_ok ) ;
int t4_alloc_mac_filt(struct adapter *adap , unsigned int mbox , unsigned int viid ,
                      bool free___0 , unsigned int naddr , u8 const **addr , u16 *idx ,
                      u64 *hash , bool sleep_ok ) ;
int t4_change_mac(struct adapter *adap , unsigned int mbox , unsigned int viid , int idx ,
                  u8 const *addr , bool persist , bool add_smt ) ;
int t4_set_addr_hash(struct adapter *adap , unsigned int mbox , unsigned int viid ,
                     bool ucast , u64 vec , bool sleep_ok ) ;
int t4_enable_vi(struct adapter *adap , unsigned int mbox , unsigned int viid , bool rx_en ,
                 bool tx_en ) ;
int t4_identify_port(struct adapter *adap , unsigned int mbox , unsigned int viid ,
                     unsigned int nblinks ) ;
int t4_mdio_rd(struct adapter *adap , unsigned int mbox , unsigned int phy_addr ,
               unsigned int mmd , unsigned int reg , u16 *valp ) ;
int t4_mdio_wr(struct adapter *adap , unsigned int mbox , unsigned int phy_addr ,
               unsigned int mmd , unsigned int reg , u16 val ) ;
int t4_handle_fw_rpl(struct adapter *adap , __be64 const *rpl ) ;
void t4_db_full(struct adapter *adap ) ;
void t4_db_dropped(struct adapter *adap ) ;
int t4_mem_win_read_len(struct adapter *adap , u32 addr , __be32 *data , int len ) ;
int t4_fwaddrspace_write(struct adapter *adap , unsigned int mbox , u32 addr , u32 val ) ;
void cxgb4_l2t_release(struct l2t_entry *e ) ;
void t4_l2t_update(struct adapter *adap , struct neighbour *neigh ) ;
struct l2t_entry *t4_l2t_alloc_switching(struct l2t_data *d ) ;
int t4_l2t_set_switching(struct adapter *adap , struct l2t_entry *e , u16 vlan , u8 port ,
                         u8 *eth_addr ) ;
struct l2t_data *t4_init_l2t(void) ;
void do_l2t_write_rpl(struct adapter *adap , struct cpl_l2t_write_rpl const *rpl ) ;
struct file_operations const t4_l2t_fops ;
static unsigned int pfvfres_pmask(struct adapter *adapter , unsigned int pf , unsigned int vf )
{
  unsigned int portn ;
  unsigned int portvec ;
  unsigned int pmask ;
  {
  if (vf == 0U) {
    return (15U);
  } else {
  }
  if ((unsigned int )adapter->params.nports == 0U) {
    return (0U);
  } else {
  }
  portn = pf % (unsigned int )adapter->params.nports;
  portvec = (unsigned int )adapter->params.portvec;
  ldv_53920:
  pmask = portvec & - portvec;
  if (portn == 0U) {
    return (pmask);
  } else {
  }
  portn = portn - 1U;
  portvec = portvec & ~ pmask;
  goto ldv_53920;
}
}
static struct pci_device_id const cxgb4_pci_tbl[62U] =
  { {5157U, 40960U, 4294967295U, 4294967295U, 0U, 0U, 0UL},
        {5157U, 16385U, 4294967295U, 4294967295U, 0U, 0U, 0xffffffffffffffffUL},
        {5157U, 16386U, 4294967295U, 4294967295U, 0U, 0U, 0xffffffffffffffffUL},
        {5157U, 16387U, 4294967295U, 4294967295U, 0U, 0U, 0xffffffffffffffffUL},
        {5157U, 16388U, 4294967295U, 4294967295U, 0U, 0U, 0xffffffffffffffffUL},
        {5157U, 16389U, 4294967295U, 4294967295U, 0U, 0U, 0xffffffffffffffffUL},
        {5157U, 16390U, 4294967295U, 4294967295U, 0U, 0U, 0xffffffffffffffffUL},
        {5157U, 16391U, 4294967295U, 4294967295U, 0U, 0U, 0xffffffffffffffffUL},
        {5157U, 16392U, 4294967295U, 4294967295U, 0U, 0U, 0xffffffffffffffffUL},
        {5157U, 16393U, 4294967295U, 4294967295U, 0U, 0U, 0xffffffffffffffffUL},
        {5157U, 16394U, 4294967295U, 4294967295U, 0U, 0U, 0xffffffffffffffffUL},
        {5157U, 17409U, 4294967295U, 4294967295U, 0U, 0U, 4UL},
        {5157U, 17410U, 4294967295U, 4294967295U, 0U, 0U, 4UL},
        {5157U, 17411U, 4294967295U, 4294967295U, 0U, 0U, 4UL},
        {5157U, 17412U, 4294967295U, 4294967295U, 0U, 0U, 4UL},
        {5157U, 17413U, 4294967295U, 4294967295U, 0U, 0U, 4UL},
        {5157U, 17414U, 4294967295U, 4294967295U, 0U, 0U, 4UL},
        {5157U, 17415U, 4294967295U, 4294967295U, 0U, 0U, 4UL},
        {5157U, 17416U, 4294967295U, 4294967295U, 0U, 0U, 4UL},
        {5157U, 17417U, 4294967295U, 4294967295U, 0U, 0U, 4UL},
        {5157U, 17418U, 4294967295U, 4294967295U, 0U, 0U, 4UL},
        {5157U, 17421U, 4294967295U, 4294967295U, 0U, 0U, 4UL},
        {5157U, 17422U, 4294967295U, 4294967295U, 0U, 0U, 4UL},
        {5157U, 20481U, 4294967295U, 4294967295U, 0U, 0U, 4UL},
        {5157U, 20482U, 4294967295U, 4294967295U, 0U, 0U, 4UL},
        {5157U, 20483U, 4294967295U, 4294967295U, 0U, 0U, 4UL},
        {5157U, 20484U, 4294967295U, 4294967295U, 0U, 0U, 4UL},
        {5157U, 20485U, 4294967295U, 4294967295U, 0U, 0U, 4UL},
        {5157U, 20486U, 4294967295U, 4294967295U, 0U, 0U, 4UL},
        {5157U, 20487U, 4294967295U, 4294967295U, 0U, 0U, 4UL},
        {5157U, 20488U, 4294967295U, 4294967295U, 0U, 0U, 4UL},
        {5157U, 20489U, 4294967295U, 4294967295U, 0U, 0U, 4UL},
        {5157U, 20490U, 4294967295U, 4294967295U, 0U, 0U, 4UL},
        {5157U, 20491U, 4294967295U, 4294967295U, 0U, 0U, 4UL},
        {5157U, 20492U, 4294967295U, 4294967295U, 0U, 0U, 4UL},
        {5157U, 20493U, 4294967295U, 4294967295U, 0U, 0U, 4UL},
        {5157U, 20494U, 4294967295U, 4294967295U, 0U, 0U, 4UL},
        {5157U, 20495U, 4294967295U, 4294967295U, 0U, 0U, 4UL},
        {5157U, 20496U, 4294967295U, 4294967295U, 0U, 0U, 4UL},
        {5157U, 20497U, 4294967295U, 4294967295U, 0U, 0U, 4UL},
        {5157U, 20498U, 4294967295U, 4294967295U, 0U, 0U, 4UL},
        {5157U, 20499U, 4294967295U, 4294967295U, 0U, 0U, 4UL},
        {5157U, 21505U, 4294967295U, 4294967295U, 0U, 0U, 4UL},
        {5157U, 21506U, 4294967295U, 4294967295U, 0U, 0U, 4UL},
        {5157U, 21507U, 4294967295U, 4294967295U, 0U, 0U, 4UL},
        {5157U, 21508U, 4294967295U, 4294967295U, 0U, 0U, 4UL},
        {5157U, 21509U, 4294967295U, 4294967295U, 0U, 0U, 4UL},
        {5157U, 21510U, 4294967295U, 4294967295U, 0U, 0U, 4UL},
        {5157U, 21511U, 4294967295U, 4294967295U, 0U, 0U, 4UL},
        {5157U, 21512U, 4294967295U, 4294967295U, 0U, 0U, 4UL},
        {5157U, 21513U, 4294967295U, 4294967295U, 0U, 0U, 4UL},
        {5157U, 21514U, 4294967295U, 4294967295U, 0U, 0U, 4UL},
        {5157U, 21515U, 4294967295U, 4294967295U, 0U, 0U, 4UL},
        {5157U, 21516U, 4294967295U, 4294967295U, 0U, 0U, 4UL},
        {5157U, 21517U, 4294967295U, 4294967295U, 0U, 0U, 4UL},
        {5157U, 21518U, 4294967295U, 4294967295U, 0U, 0U, 4UL},
        {5157U, 21519U, 4294967295U, 4294967295U, 0U, 0U, 4UL},
        {5157U, 21520U, 4294967295U, 4294967295U, 0U, 0U, 4UL},
        {5157U, 21521U, 4294967295U, 4294967295U, 0U, 0U, 4UL},
        {5157U, 21522U, 4294967295U, 4294967295U, 0U, 0U, 4UL},
        {5157U, 21523U, 4294967295U, 4294967295U, 0U, 0U, 4UL},
        {0U, 0U, 0U, 0U, 0U, 0U, 0UL}};
struct pci_device_id const __mod_pci_device_table ;
static uint force_init ;
static uint force_old_init ;
static int dflt_msg_enable = 255;
static int msi = 2;
static unsigned int intr_holdoff[5U] = { 5U, 10U, 20U, 50U,
        100U};
static unsigned int intr_cnt[3U] = { 4U, 8U, 16U};
static int rx_dma_offset = 2;
static bool vf_acls ;
static unsigned int num_vf[4U] ;
static unsigned int tp_vlan_pri_map = 811U;
static struct dentry *cxgb4_debugfs_root ;
static struct list_head adapter_list = {& adapter_list, & adapter_list};
static struct mutex uld_mutex = {{1}, {{{{{0U}}, 3735899821U, 4294967295U, (void *)-1, {0, {0, 0}, "uld_mutex.wait_lock",
                                                           0, 0UL}}}}, {& uld_mutex.wait_list,
                                                                        & uld_mutex.wait_list},
    0, 0, (void *)(& uld_mutex), {0, {0, 0}, "uld_mutex", 0, 0UL}};
static struct list_head adap_rcu_list = {& adap_rcu_list, & adap_rcu_list};
static spinlock_t adap_rcu_lock = {{{{{0U}}, 3735899821U, 4294967295U, (void *)-1, {0, {0, 0}, "adap_rcu_lock", 0,
                                                     0UL}}}};
static struct cxgb4_uld_info ulds[2U] ;
static char const *uld_str[2U] = { "RDMA", "iSCSI"};
static void link_report(struct net_device *dev )
{
  char const *fc[4U] ;
  char const *s ;
  struct port_info const *p ;
  void *tmp ;
  bool tmp___0 ;
  int tmp___1 ;
  {
  {
  tmp___0 = netif_carrier_ok((struct net_device const *)dev);
  }
  if (tmp___0) {
    tmp___1 = 0;
  } else {
    tmp___1 = 1;
  }
  if (tmp___1) {
    {
    netdev_info((struct net_device const *)dev, "link down\n");
    }
  } else {
    {
    fc[0] = "no";
    fc[1] = "Rx";
    fc[2] = "Tx";
    fc[3] = "Tx/Rx";
    s = "10Mbps";
    tmp = netdev_priv((struct net_device const *)dev);
    p = (struct port_info const *)tmp;
    }
    {
    if ((int )p->link_cfg.speed == 10000) {
      goto case_10000;
    } else {
    }
    if ((int )p->link_cfg.speed == 1000) {
      goto case_1000;
    } else {
    }
    if ((int )p->link_cfg.speed == 100) {
      goto case_100;
    } else {
    }
    goto switch_break;
    case_10000:
    s = "10Gbps";
    goto ldv_54091;
    case_1000:
    s = "1000Mbps";
    goto ldv_54091;
    case_100:
    s = "100Mbps";
    goto ldv_54091;
    switch_break: ;
    }
    ldv_54091:
    {
    netdev_info((struct net_device const *)dev, "link up, %s, full-duplex, %s PAUSE\n",
                s, fc[(int )p->link_cfg.fc]);
    }
  }
  return;
}
}
void t4_os_link_changed(struct adapter *adapter , int port_id , int link_stat )
{
  struct net_device *dev ;
  bool tmp ;
  bool tmp___0 ;
  {
  {
  dev = adapter->port[port_id];
  tmp = netif_running((struct net_device const *)dev);
  }
  if ((int )tmp) {
    {
    tmp___0 = netif_carrier_ok((struct net_device const *)dev);
    }
    if (link_stat != (int )tmp___0) {
      if (link_stat != 0) {
        {
        netif_carrier_on(dev);
        }
      } else {
        {
        netif_carrier_off(dev);
        }
      }
      {
      link_report(dev);
      }
    } else {
    }
  } else {
  }
  return;
}
}
void t4_os_portmod_changed(struct adapter const *adap , int port_id )
{
  char const *mod_str[7U] ;
  struct net_device const *dev ;
  struct port_info const *pi ;
  void *tmp ;
  {
  {
  mod_str[0] = (char const *)0;
  mod_str[1] = "LR";
  mod_str[2] = "SR";
  mod_str[3] = "ER";
  mod_str[4] = "passive DA";
  mod_str[5] = "active DA";
  mod_str[6] = "LRM";
  dev = (struct net_device const *)adap->port[port_id];
  tmp = netdev_priv(dev);
  pi = (struct port_info const *)tmp;
  }
  if ((unsigned int )((unsigned char )pi->mod_type) == 31U) {
    {
    netdev_info(dev, "port module unplugged\n");
    }
  } else
  if ((unsigned int )((unsigned char )pi->mod_type) <= 6U) {
    {
    netdev_info(dev, "%s module inserted\n", mod_str[(int )pi->mod_type]);
    }
  } else {
  }
  return;
}
}
static int set_addr_filters(struct net_device const *dev , bool sleep )
{
  u64 mhash ;
  u64 uhash ;
  bool free___0 ;
  u16 filt_idx[7U] ;
  u8 const *addr[7U] ;
  int ret ;
  int naddr ;
  struct netdev_hw_addr const *ha ;
  int uc_cnt ;
  int mc_cnt ;
  struct port_info const *pi ;
  void *tmp ;
  unsigned int mb ;
  struct list_head const *__mptr ;
  int tmp___0 ;
  struct list_head const *__mptr___0 ;
  struct list_head const *__mptr___1 ;
  int tmp___1 ;
  struct list_head const *__mptr___2 ;
  int tmp___2 ;
  {
  {
  mhash = 0ULL;
  uhash = 0ULL;
  free___0 = 1;
  naddr = 0;
  uc_cnt = dev->uc.count;
  mc_cnt = dev->mc.count;
  tmp = netdev_priv(dev);
  pi = (struct port_info const *)tmp;
  mb = (pi->adapter)->fn;
  __mptr = (struct list_head const *)dev->uc.list.next;
  ha = (struct netdev_hw_addr const *)__mptr;
  }
  goto ldv_54132;
  ldv_54131:
  tmp___0 = naddr;
  naddr = naddr + 1;
  addr[tmp___0] = (u8 const *)(& ha->addr);
  uc_cnt = uc_cnt - 1;
  if (uc_cnt == 0 || (unsigned int )naddr > 6U) {
    {
    ret = t4_alloc_mac_filt(pi->adapter, mb, (unsigned int )pi->viid, (int )free___0,
                            (unsigned int )naddr, (u8 const **)(& addr), (u16 *)(& filt_idx),
                            & uhash, (int )sleep);
    }
    if (ret < 0) {
      return (ret);
    } else {
    }
    free___0 = 0;
    naddr = 0;
  } else {
  }
  __mptr___0 = (struct list_head const *)ha->list.next;
  ha = (struct netdev_hw_addr const *)__mptr___0;
  ldv_54132: ;
  if ((unsigned long )(& ha->list) != (unsigned long )(& dev->uc.list)) {
    goto ldv_54131;
  } else {
  }
  __mptr___1 = (struct list_head const *)dev->mc.list.next;
  ha = (struct netdev_hw_addr const *)__mptr___1;
  goto ldv_54141;
  ldv_54140:
  tmp___1 = naddr;
  naddr = naddr + 1;
  addr[tmp___1] = (u8 const *)(& ha->addr);
  mc_cnt = mc_cnt - 1;
  if (mc_cnt == 0 || (unsigned int )naddr > 6U) {
    {
    ret = t4_alloc_mac_filt(pi->adapter, mb, (unsigned int )pi->viid, (int )free___0,
                            (unsigned int )naddr, (u8 const **)(& addr), (u16 *)(& filt_idx),
                            & mhash, (int )sleep);
    }
    if (ret < 0) {
      return (ret);
    } else {
    }
    free___0 = 0;
    naddr = 0;
  } else {
  }
  __mptr___2 = (struct list_head const *)ha->list.next;
  ha = (struct netdev_hw_addr const *)__mptr___2;
  ldv_54141: ;
  if ((unsigned long )(& ha->list) != (unsigned long )(& dev->mc.list)) {
    goto ldv_54140;
  } else {
  }
  {
  tmp___2 = t4_set_addr_hash(pi->adapter, mb, (unsigned int )pi->viid, uhash != 0ULL,
                             uhash | mhash, (int )sleep);
  }
  return (tmp___2);
}
}
int dbfifo_int_thresh = 10;
static int dbfifo_drain_delay = 1000;
static int set_rxmode(struct net_device *dev , int mtu , bool sleep_ok )
{
  int ret ;
  struct port_info *pi ;
  void *tmp ;
  {
  {
  tmp = netdev_priv((struct net_device const *)dev);
  pi = (struct port_info *)tmp;
  ret = set_addr_filters((struct net_device const *)dev, (int )sleep_ok);
  }
  if (ret == 0) {
    {
    ret = t4_set_rxmode(pi->adapter, (pi->adapter)->fn, (unsigned int )pi->viid, mtu,
                        (dev->flags & 256U) != 0U, (dev->flags & 512U) != 0U, 1, -1,
                        (int )sleep_ok);
    }
  } else {
  }
  return (ret);
}
}
static struct workqueue_struct *workq ;
static int link_start(struct net_device *dev )
{
  int ret ;
  struct port_info *pi ;
  void *tmp ;
  unsigned int mb ;
  {
  {
  tmp = netdev_priv((struct net_device const *)dev);
  pi = (struct port_info *)tmp;
  mb = (pi->adapter)->fn;
  ret = t4_set_rxmode(pi->adapter, mb, (unsigned int )pi->viid, (int )dev->mtu, -1,
                      -1, -1, (dev->features & 256ULL) != 0ULL, 1);
  }
  if (ret == 0) {
    {
    ret = t4_change_mac(pi->adapter, mb, (unsigned int )pi->viid, (int )pi->xact_addr_filt,
                        (u8 const *)dev->dev_addr, 1, 1);
    }
    if (ret >= 0) {
      pi->xact_addr_filt = (s16 )ret;
      ret = 0;
    } else {
    }
  } else {
  }
  if (ret == 0) {
    {
    ret = t4_link_start(pi->adapter, mb, (unsigned int )pi->tx_chan, & pi->link_cfg);
    }
  } else {
  }
  if (ret == 0) {
    {
    ret = t4_enable_vi(pi->adapter, mb, (unsigned int )pi->viid, 1, 1);
    }
  } else {
  }
  return (ret);
}
}
static void clear_filter(struct adapter *adap , struct filter_entry *f )
{
  {
  if ((unsigned long )f->l2t != (unsigned long )((struct l2t_entry *)0)) {
    {
    cxgb4_l2t_release(f->l2t);
    }
  } else {
  }
  {
  memset((void *)f, 0, 144UL);
  }
  return;
}
}
static void filter_rpl(struct adapter *adap , struct cpl_set_tcb_rpl const *rpl )
{
  unsigned int idx ;
  __u32 tmp ;
  unsigned int nidx ;
  unsigned int ret ;
  struct filter_entry *f ;
  __u64 tmp___0 ;
  {
  {
  tmp = __fswab32(rpl->ot.opcode_tid);
  idx = tmp & 16777215U;
  nidx = idx - adap->tids.ftid_base;
  }
  if (idx >= adap->tids.ftid_base && nidx < adap->tids.nftids + adap->tids.nsftids) {
    idx = nidx;
    ret = (unsigned int )((int )((unsigned char )rpl->cookie) >> 5) & 7U;
    f = adap->tids.ftid_tab + (unsigned long )idx;
    if (ret == 2U) {
      {
      clear_filter(adap, f);
      }
    } else
    if (ret == 3U) {
      {
      dev_err((struct device const *)adap->pdev_dev, "filter %u setup failed due to full SMT\n",
              idx);
      clear_filter(adap, f);
      }
    } else
    if (ret == 1U) {
      {
      tmp___0 = __fswab64(rpl->oldval);
      f->smtidx = (unsigned char )(tmp___0 >> 24);
      f->pending = 0U;
      f->valid = 1U;
      }
    } else {
      {
      dev_err((struct device const *)adap->pdev_dev, "filter %u setup failed with error %u\n",
              idx, ret);
      clear_filter(adap, f);
      }
    }
  } else {
  }
  return;
}
}
static int fwevtq_handler(struct sge_rspq *q , __be64 const *rsp , struct pkt_gl const *gl )
{
  u8 opcode ;
  long tmp ;
  long tmp___0 ;
  struct cpl_sge_egr_update const *p ;
  unsigned int qid ;
  __u32 tmp___1 ;
  struct sge_txq *txq ;
  struct sge_eth_txq *eq ;
  struct sge_txq const *__mptr ;
  struct sge_ofld_txq *oq ;
  struct sge_txq const *__mptr___0 ;
  struct cpl_fw6_msg const *p___0 ;
  struct cpl_l2t_write_rpl const *p___1 ;
  struct cpl_set_tcb_rpl const *p___2 ;
  long tmp___2 ;
  {
  {
  opcode = ((struct rss_header const *)rsp)->opcode;
  rsp = rsp + 1;
  tmp = ldv__builtin_expect((unsigned int )opcode == 192U, 0L);
  }
  if (tmp != 0L) {
    {
    tmp___0 = ldv__builtin_expect((unsigned int )((unsigned char )((struct cpl_fw4_msg const *)rsp)->type) == 4U,
                               0L);
    }
    if (tmp___0 != 0L) {
      rsp = rsp + 1;
      opcode = ((struct rss_header const *)rsp)->opcode;
      rsp = rsp + 1;
      if ((unsigned int )opcode != 165U) {
        {
        dev_err((struct device const *)(q->adap)->pdev_dev, "unexpected FW4/CPL %#x on FW event queue\n",
                (int )opcode);
        }
        goto out;
      } else {
      }
    } else {
    }
  } else {
  }
  {
  tmp___2 = ldv__builtin_expect((unsigned int )opcode == 165U, 1L);
  }
  if (tmp___2 != 0L) {
    {
    p = (struct cpl_sge_egr_update const *)rsp;
    tmp___1 = __fswab32(p->opcode_qid);
    qid = tmp___1 & 131071U;
    txq = (struct sge_txq *)(q->adap)->sge.egr_map[qid - (q->adap)->sge.egr_start];
    txq->restarts = txq->restarts + 1UL;
    }
    if ((unsigned long )((u8 *)txq) < (unsigned long )((u8 *)(& (q->adap)->sge.ofldtxq))) {
      {
      __mptr = (struct sge_txq const *)txq;
      eq = (struct sge_eth_txq *)__mptr;
      netif_tx_wake_queue(eq->txq);
      }
    } else {
      {
      __mptr___0 = (struct sge_txq const *)txq;
      oq = (struct sge_ofld_txq *)__mptr___0;
      tasklet_schedule(& oq->qresume_tsk);
      }
    }
  } else
  if ((unsigned int )opcode == 224U || (unsigned int )opcode == 192U) {
    p___0 = (struct cpl_fw6_msg const *)rsp;
    if ((unsigned int )((unsigned char )p___0->type) == 0U) {
      {
      t4_handle_fw_rpl(q->adap, (__be64 const *)(& p___0->data));
      }
    } else {
    }
  } else
  if ((unsigned int )opcode == 35U) {
    {
    p___1 = (struct cpl_l2t_write_rpl const *)rsp;
    do_l2t_write_rpl(q->adap, p___1);
    }
  } else
  if ((unsigned int )opcode == 58U) {
    {
    p___2 = (struct cpl_set_tcb_rpl const *)rsp;
    filter_rpl(q->adap, p___2);
    }
  } else {
    {
    dev_err((struct device const *)(q->adap)->pdev_dev, "unexpected CPL %#x on FW event queue\n",
            (int )opcode);
    }
  }
  out: ;
  return (0);
}
}
static int uldrx_handler(struct sge_rspq *q , __be64 const *rsp , struct pkt_gl const *gl )
{
  struct sge_ofld_rxq *rxq ;
  struct sge_rspq const *__mptr ;
  int tmp ;
  {
  __mptr = (struct sge_rspq const *)q;
  rxq = (struct sge_ofld_rxq *)__mptr;
  if ((unsigned int )((unsigned char )((struct rss_header const *)rsp)->opcode) == 192U && (unsigned int )((unsigned char )((struct cpl_fw4_msg const *)rsp + 1U)->type) == 4U) {
    rsp = rsp + 2UL;
  } else {
  }
  {
  tmp = (*(ulds[(int )q->uld].rx_handler))((q->adap)->uld_handle[(int )q->uld], rsp,
                                           gl);
  }
  if (tmp != 0) {
    rxq->stats.nomem = rxq->stats.nomem + 1UL;
    return (-1);
  } else {
  }
  if ((unsigned long )gl == (unsigned long )((struct pkt_gl const *)0)) {
    rxq->stats.imm = rxq->stats.imm + 1UL;
  } else
  if ((unsigned long )((void *)gl) == (unsigned long )((void *)1)) {
    rxq->stats.an = rxq->stats.an + 1UL;
  } else {
    rxq->stats.pkts = rxq->stats.pkts + 1UL;
  }
  return (0);
}
}
static void disable_msi(struct adapter *adapter )
{
  {
  if ((adapter->flags & 8U) != 0U) {
    {
    pci_disable_msix(adapter->pdev);
    adapter->flags = adapter->flags & 4294967287U;
    }
  } else
  if ((adapter->flags & 4U) != 0U) {
    {
    pci_disable_msi(adapter->pdev);
    adapter->flags = adapter->flags & 4294967291U;
    }
  } else {
  }
  return;
}
}
static irqreturn_t t4_nondata_intr(int irq , void *cookie )
{
  struct adapter *adap ;
  u32 v ;
  u32 tmp ;
  {
  {
  adap = (struct adapter *)cookie;
  tmp = t4_read_reg(adap, 111552U);
  v = tmp;
  }
  if ((v & 8U) != 0U) {
    {
    adap->swintr = 1U;
    t4_write_reg(adap, 111552U, v);
    }
  } else {
  }
  {
  t4_slow_intr_handler(adap);
  }
  return (1);
}
}
static void name_msix_vecs(struct adapter *adap )
{
  int i ;
  int j ;
  int msi_idx ;
  int n ;
  struct net_device *d ;
  struct port_info const *pi ;
  void *tmp ;
  int tmp___0 ;
  int tmp___1 ;
  {
  {
  msi_idx = 2;
  n = 26;
  snprintf((char *)(& adap->msix_info[0].desc), (size_t )n, "%s", (char *)(& (adap->port[0])->name));
  snprintf((char *)(& adap->msix_info[1].desc), (size_t )n, "%s-FWeventq", (char *)(& (adap->port[0])->name));
  j = 0;
  }
  goto ldv_54244;
  ldv_54243:
  {
  d = adap->port[j];
  tmp = netdev_priv((struct net_device const *)d);
  pi = (struct port_info const *)tmp;
  i = 0;
  }
  goto ldv_54241;
  ldv_54240:
  {
  snprintf((char *)(& adap->msix_info[msi_idx].desc), (size_t )n, "%s-Rx%d", (char *)(& d->name),
           i);
  i = i + 1;
  msi_idx = msi_idx + 1;
  }
  ldv_54241: ;
  if (i < (int )pi->nqsets) {
    goto ldv_54240;
  } else {
  }
  j = j + 1;
  ldv_54244: ;
  if (j < (int )adap->params.nports) {
    goto ldv_54243;
  } else {
  }
  i = 0;
  goto ldv_54247;
  ldv_54246:
  {
  tmp___0 = msi_idx;
  msi_idx = msi_idx + 1;
  snprintf((char *)(& adap->msix_info[tmp___0].desc), (size_t )n, "%s-ofld%d", (char *)(& (adap->port[0])->name),
           i);
  i = i + 1;
  }
  ldv_54247: ;
  if (i < (int )adap->sge.ofldqsets) {
    goto ldv_54246;
  } else {
  }
  i = 0;
  goto ldv_54250;
  ldv_54249:
  {
  tmp___1 = msi_idx;
  msi_idx = msi_idx + 1;
  snprintf((char *)(& adap->msix_info[tmp___1].desc), (size_t )n, "%s-rdma%d", (char *)(& (adap->port[0])->name),
           i);
  i = i + 1;
  }
  ldv_54250: ;
  if (i < (int )adap->sge.rdmaqs) {
    goto ldv_54249;
  } else {
  }
  return;
}
}
static int request_msix_queue_irqs(struct adapter *adap )
{
  struct sge *s ;
  int err ;
  int ethqidx ;
  int ofldqidx ;
  int rdmaqidx ;
  int msi_index ;
  {
  {
  s = & adap->sge;
  ofldqidx = 0;
  rdmaqidx = 0;
  msi_index = 2;
  err = ldv_request_irq_15((unsigned int )adap->msix_info[1].vec, & t4_sge_intr_msix,
                           0UL, (char const *)(& adap->msix_info[1].desc), (void *)(& s->fw_evtq));
  }
  if (err != 0) {
    return (err);
  } else {
  }
  ethqidx = 0;
  goto ldv_54263;
  ldv_54262:
  {
  err = ldv_request_irq_16((unsigned int )adap->msix_info[msi_index].vec, & t4_sge_intr_msix,
                           0UL, (char const *)(& adap->msix_info[msi_index].desc),
                           (void *)(& s->ethrxq[ethqidx].rspq));
  }
  if (err != 0) {
    goto unwind;
  } else {
  }
  msi_index = msi_index + 1;
  ethqidx = ethqidx + 1;
  ldv_54263: ;
  if (ethqidx < (int )s->ethqsets) {
    goto ldv_54262;
  } else {
  }
  ofldqidx = 0;
  goto ldv_54266;
  ldv_54265:
  {
  err = ldv_request_irq_17((unsigned int )adap->msix_info[msi_index].vec, & t4_sge_intr_msix,
                           0UL, (char const *)(& adap->msix_info[msi_index].desc),
                           (void *)(& s->ofldrxq[ofldqidx].rspq));
  }
  if (err != 0) {
    goto unwind;
  } else {
  }
  msi_index = msi_index + 1;
  ofldqidx = ofldqidx + 1;
  ldv_54266: ;
  if (ofldqidx < (int )s->ofldqsets) {
    goto ldv_54265;
  } else {
  }
  rdmaqidx = 0;
  goto ldv_54269;
  ldv_54268:
  {
  err = ldv_request_irq_18((unsigned int )adap->msix_info[msi_index].vec, & t4_sge_intr_msix,
                           0UL, (char const *)(& adap->msix_info[msi_index].desc),
                           (void *)(& s->rdmarxq[rdmaqidx].rspq));
  }
  if (err != 0) {
    goto unwind;
  } else {
  }
  msi_index = msi_index + 1;
  rdmaqidx = rdmaqidx + 1;
  ldv_54269: ;
  if (rdmaqidx < (int )s->rdmaqs) {
    goto ldv_54268;
  } else {
  }
  return (0);
  unwind: ;
  goto ldv_54272;
  ldv_54271:
  {
  msi_index = msi_index - 1;
  ldv_free_irq_19((unsigned int )adap->msix_info[msi_index].vec, (void *)(& s->rdmarxq[rdmaqidx].rspq));
  }
  ldv_54272:
  rdmaqidx = rdmaqidx - 1;
  if (rdmaqidx >= 0) {
    goto ldv_54271;
  } else {
  }
  goto ldv_54275;
  ldv_54274:
  {
  msi_index = msi_index - 1;
  ldv_free_irq_20((unsigned int )adap->msix_info[msi_index].vec, (void *)(& s->ofldrxq[ofldqidx].rspq));
  }
  ldv_54275:
  ofldqidx = ofldqidx - 1;
  if (ofldqidx >= 0) {
    goto ldv_54274;
  } else {
  }
  goto ldv_54278;
  ldv_54277:
  {
  msi_index = msi_index - 1;
  ldv_free_irq_21((unsigned int )adap->msix_info[msi_index].vec, (void *)(& s->ethrxq[ethqidx].rspq));
  }
  ldv_54278:
  ethqidx = ethqidx - 1;
  if (ethqidx >= 0) {
    goto ldv_54277;
  } else {
  }
  {
  ldv_free_irq_22((unsigned int )adap->msix_info[1].vec, (void *)(& s->fw_evtq));
  }
  return (err);
}
}
static void free_msix_queue_irqs(struct adapter *adap )
{
  int i ;
  int msi_index ;
  struct sge *s ;
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  {
  {
  msi_index = 2;
  s = & adap->sge;
  ldv_free_irq_23((unsigned int )adap->msix_info[1].vec, (void *)(& s->fw_evtq));
  i = 0;
  }
  goto ldv_54287;
  ldv_54286:
  {
  tmp = msi_index;
  msi_index = msi_index + 1;
  ldv_free_irq_24((unsigned int )adap->msix_info[tmp].vec, (void *)(& s->ethrxq[i].rspq));
  i = i + 1;
  }
  ldv_54287: ;
  if (i < (int )s->ethqsets) {
    goto ldv_54286;
  } else {
  }
  i = 0;
  goto ldv_54290;
  ldv_54289:
  {
  tmp___0 = msi_index;
  msi_index = msi_index + 1;
  ldv_free_irq_25((unsigned int )adap->msix_info[tmp___0].vec, (void *)(& s->ofldrxq[i].rspq));
  i = i + 1;
  }
  ldv_54290: ;
  if (i < (int )s->ofldqsets) {
    goto ldv_54289;
  } else {
  }
  i = 0;
  goto ldv_54293;
  ldv_54292:
  {
  tmp___1 = msi_index;
  msi_index = msi_index + 1;
  ldv_free_irq_26((unsigned int )adap->msix_info[tmp___1].vec, (void *)(& s->rdmarxq[i].rspq));
  i = i + 1;
  }
  ldv_54293: ;
  if (i < (int )s->rdmaqs) {
    goto ldv_54292;
  } else {
  }
  return;
}
}
static int write_rss(struct port_info const *pi , u16 const *queues )
{
  u16 *rss ;
  int i ;
  int err ;
  struct sge_eth_rxq const *q ;
  void *tmp ;
  {
  {
  q = (struct sge_eth_rxq const *)(& (pi->adapter)->sge.ethrxq) + (unsigned long )pi->first_qset;
  tmp = kmalloc((unsigned long )pi->rss_size * 2UL, 208U);
  rss = (u16 *)tmp;
  }
  if ((unsigned long )rss == (unsigned long )((u16 *)0U)) {
    return (-12);
  } else {
  }
  i = 0;
  goto ldv_54304;
  ldv_54303:
  *(rss + (unsigned long )i) = (q + (unsigned long )*queues)->rspq.abs_id;
  i = i + 1;
  queues = queues + 1;
  ldv_54304: ;
  if (i < (int )pi->rss_size) {
    goto ldv_54303;
  } else {
  }
  {
  err = t4_config_rss_range(pi->adapter, (int )(pi->adapter)->fn, (unsigned int )pi->viid,
                            0, (int )pi->rss_size, (u16 const *)rss, (unsigned int )pi->rss_size);
  kfree((void const *)rss);
  }
  return (err);
}
}
static int setup_rss(struct adapter *adap )
{
  int i ;
  int err ;
  struct port_info const *pi ;
  struct port_info *tmp ;
  {
  i = 0;
  goto ldv_54313;
  ldv_54312:
  {
  tmp = adap2pinfo(adap, i);
  pi = (struct port_info const *)tmp;
  err = write_rss(pi, (u16 const *)pi->rss);
  }
  if (err != 0) {
    return (err);
  } else {
  }
  i = i + 1;
  ldv_54313: ;
  if (i < (int )adap->params.nports) {
    goto ldv_54312;
  } else {
  }
  return (0);
}
}
static unsigned int rxq_to_chan(struct sge const *p , unsigned int qid )
{
  struct port_info *tmp ;
  {
  {
  qid = qid - (unsigned int )p->ingr_start;
  tmp = netdev2pinfo((struct net_device const *)(p->ingr_map[qid])->netdev);
  }
  return ((unsigned int )tmp->tx_chan);
}
}
static void quiesce_rx(struct adapter *adap )
{
  int i ;
  struct sge_rspq *q ;
  {
  i = 0;
  goto ldv_54327;
  ldv_54326:
  q = adap->sge.ingr_map[i];
  if ((unsigned long )q != (unsigned long )((struct sge_rspq *)0) && (unsigned long )q->handler != (unsigned long )((int (*)(struct sge_rspq * ,
                                                                                                                             __be64 const * ,
                                                                                                                             struct pkt_gl const * ))0)) {
    {
    napi_disable(& q->napi);
    }
  } else {
  }
  i = i + 1;
  ldv_54327: ;
  if ((unsigned int )i <= 63U) {
    goto ldv_54326;
  } else {
  }
  return;
}
}
static void enable_rx(struct adapter *adap )
{
  int i ;
  struct sge_rspq *q ;
  {
  i = 0;
  goto ldv_54338;
  ldv_54337:
  q = adap->sge.ingr_map[i];
  if ((unsigned long )q == (unsigned long )((struct sge_rspq *)0)) {
    goto ldv_54336;
  } else {
  }
  if ((unsigned long )q->handler != (unsigned long )((int (*)(struct sge_rspq * ,
                                                              __be64 const * , struct pkt_gl const * ))0)) {
    {
    napi_enable(& q->napi);
    }
  } else {
  }
  {
  t4_write_reg(adap, 110596U, (u32 )(((int )q->intr_params << 12) | ((int )q->cntxt_id << 16)));
  }
  ldv_54336:
  i = i + 1;
  ldv_54338: ;
  if ((unsigned int )i <= 63U) {
    goto ldv_54337;
  } else {
  }
  return;
}
}
static int setup_sge_queues(struct adapter *adap )
{
  int err ;
  int msi_idx ;
  int i ;
  int j ;
  struct sge *s ;
  struct net_device *dev ;
  struct port_info *pi ;
  void *tmp ;
  struct sge_eth_rxq *q ;
  struct sge_eth_txq *t ;
  struct netdev_queue *tmp___0 ;
  struct sge_ofld_rxq *q___0 ;
  struct net_device *dev___0 ;
  struct sge_ofld_rxq *q___1 ;
  struct port_info *tmp___1 ;
  {
  {
  s = & adap->sge;
  bitmap_zero((unsigned long *)(& s->starving_fl), 128);
  bitmap_zero((unsigned long *)(& s->txq_maperr), 128);
  }
  if ((adap->flags & 8U) != 0U) {
    msi_idx = 1;
  } else {
    {
    err = t4_sge_alloc_rxq(adap, & s->intrq, 0, adap->port[0], 0, (struct sge_fl *)0,
                           (int (*)(struct sge_rspq * , __be64 const * , struct pkt_gl const * ))0);
    }
    if (err != 0) {
      return (err);
    } else {
    }
    msi_idx = ~ ((int )s->intrq.abs_id);
  }
  {
  err = t4_sge_alloc_rxq(adap, & s->fw_evtq, 1, adap->port[0], msi_idx, (struct sge_fl *)0,
                         & fwevtq_handler);
  }
  if (err != 0) {
    freeout:
    {
    t4_free_sge_resources(adap);
    }
    return (err);
  } else {
  }
  i = 0;
  goto ldv_54360;
  ldv_54359:
  {
  dev = adap->port[i];
  tmp = netdev_priv((struct net_device const *)dev);
  pi = (struct port_info *)tmp;
  q = (struct sge_eth_rxq *)(& s->ethrxq) + (unsigned long )pi->first_qset;
  t = (struct sge_eth_txq *)(& s->ethtxq) + (unsigned long )pi->first_qset;
  j = 0;
  }
  goto ldv_54354;
  ldv_54353: ;
  if (msi_idx > 0) {
    msi_idx = msi_idx + 1;
  } else {
  }
  {
  err = t4_sge_alloc_rxq(adap, & q->rspq, 0, dev, msi_idx, & q->fl, & t4_ethrx_handler);
  }
  if (err != 0) {
    goto freeout;
  } else {
  }
  {
  q->rspq.idx = (u8 )j;
  memset((void *)(& q->stats), 0, 48UL);
  j = j + 1;
  q = q + 1;
  }
  ldv_54354: ;
  if (j < (int )pi->nqsets) {
    goto ldv_54353;
  } else {
  }
  j = 0;
  goto ldv_54357;
  ldv_54356:
  {
  tmp___0 = netdev_get_tx_queue((struct net_device const *)dev, (unsigned int )j);
  err = t4_sge_alloc_eth_txq(adap, t, dev, tmp___0, (unsigned int )s->fw_evtq.cntxt_id);
  }
  if (err != 0) {
    goto freeout;
  } else {
  }
  j = j + 1;
  t = t + 1;
  ldv_54357: ;
  if (j < (int )pi->nqsets) {
    goto ldv_54356;
  } else {
  }
  i = i + 1;
  ldv_54360: ;
  if (i < (int )adap->params.nports) {
    goto ldv_54359;
  } else {
  }
  j = (int )s->ofldqsets / (int )adap->params.nports;
  i = 0;
  goto ldv_54365;
  ldv_54364:
  q___0 = (struct sge_ofld_rxq *)(& s->ofldrxq) + (unsigned long )i;
  dev___0 = adap->port[i / j];
  if (msi_idx > 0) {
    msi_idx = msi_idx + 1;
  } else {
  }
  {
  err = t4_sge_alloc_rxq(adap, & q___0->rspq, 0, dev___0, msi_idx, & q___0->fl, & uldrx_handler);
  }
  if (err != 0) {
    goto freeout;
  } else {
  }
  {
  memset((void *)(& q___0->stats), 0, 32UL);
  s->ofld_rxq[i] = q___0->rspq.abs_id;
  err = t4_sge_alloc_ofld_txq(adap, (struct sge_ofld_txq *)(& s->ofldtxq) + (unsigned long )i,
                              dev___0, (unsigned int )s->fw_evtq.cntxt_id);
  }
  if (err != 0) {
    goto freeout;
  } else {
  }
  i = i + 1;
  ldv_54365: ;
  if (i < (int )s->ofldqsets) {
    goto ldv_54364;
  } else {
  }
  i = 0;
  goto ldv_54369;
  ldv_54368:
  q___1 = (struct sge_ofld_rxq *)(& s->rdmarxq) + (unsigned long )i;
  if (msi_idx > 0) {
    msi_idx = msi_idx + 1;
  } else {
  }
  {
  err = t4_sge_alloc_rxq(adap, & q___1->rspq, 0, adap->port[i], msi_idx, & q___1->fl,
                         & uldrx_handler);
  }
  if (err != 0) {
    goto freeout;
  } else {
  }
  {
  memset((void *)(& q___1->stats), 0, 32UL);
  s->rdma_rxq[i] = q___1->rspq.abs_id;
  i = i + 1;
  }
  ldv_54369: ;
  if (i < (int )s->rdmaqs) {
    goto ldv_54368;
  } else {
  }
  i = 0;
  goto ldv_54372;
  ldv_54371:
  {
  err = t4_sge_alloc_ctrl_txq(adap, (struct sge_ctrl_txq *)(& s->ctrlq) + (unsigned long )i,
                              adap->port[i], (unsigned int )s->fw_evtq.cntxt_id, (unsigned int )s->rdmarxq[i].rspq.cntxt_id);
  }
  if (err != 0) {
    goto freeout;
  } else {
  }
  i = i + 1;
  ldv_54372: ;
  if (i < (int )adap->params.nports) {
    goto ldv_54371;
  } else {
  }
  {
  tmp___1 = netdev2pinfo((struct net_device const *)adap->port[0]);
  t4_write_reg(adap, 38920U, (u32 )(((int )tmp___1->tx_chan << 16) | (int )s->ethrxq[0].rspq.abs_id));
  }
  return (0);
}
}
void *t4_alloc_mem(size_t size )
{
  void *p ;
  void *tmp ;
  {
  {
  tmp = kzalloc(size, 720U);
  p = tmp;
  }
  if ((unsigned long )p == (unsigned long )((void *)0)) {
    {
    p = vzalloc(size);
    }
  } else {
  }
  return (p);
}
}
static void t4_free_mem(void *addr )
{
  int tmp ;
  {
  {
  tmp = is_vmalloc_addr((void const *)addr);
  }
  if (tmp != 0) {
    {
    vfree((void const *)addr);
    }
  } else {
    {
    kfree((void const *)addr);
    }
  }
  return;
}
}
static int set_filter_wr(struct adapter *adapter , int fidx )
{
  struct filter_entry *f ;
  struct sk_buff *skb ;
  struct fw_filter_wr *fwr ;
  unsigned int ftid ;
  int tmp ;
  unsigned char *tmp___0 ;
  __u32 tmp___1 ;
  __u32 tmp___2 ;
  __u16 tmp___3 ;
  __u16 tmp___4 ;
  __u16 tmp___5 ;
  __u32 tmp___6 ;
  __u16 tmp___7 ;
  __u16 tmp___8 ;
  __u16 tmp___9 ;
  __u16 tmp___10 ;
  __u16 tmp___11 ;
  __u16 tmp___12 ;
  __u16 tmp___13 ;
  __u16 tmp___14 ;
  {
  f = adapter->tids.ftid_tab + (unsigned long )fidx;
  if ((unsigned int )*((unsigned short *)f + 9UL) != 0U) {
    {
    f->l2t = t4_l2t_alloc_switching(adapter->l2t);
    }
    if ((unsigned long )f->l2t == (unsigned long )((struct l2t_entry *)0)) {
      return (-11);
    } else {
    }
    {
    tmp = t4_l2t_set_switching(adapter, f->l2t, (int )f->fs.vlan, (int )f->fs.eport,
                               (u8 *)(& f->fs.dmac));
    }
    if (tmp != 0) {
      {
      cxgb4_l2t_release(f->l2t);
      f->l2t = (struct l2t_entry *)0;
      }
      return (-12);
    } else {
    }
  } else {
  }
  {
  ftid = adapter->tids.ftid_base + (unsigned int )fidx;
  skb = alloc_skb(128U, 2256U);
  tmp___0 = __skb_put(skb, 128U);
  fwr = (struct fw_filter_wr *)tmp___0;
  memset((void *)fwr, 0, 128UL);
  fwr->op_pkd = 2U;
  fwr->len16_pkd = 134217728U;
  tmp___1 = __fswab32(((ftid << 12) | (unsigned int )((int )f->fs.type << 11)) | f->fs.iq);
  fwr->tid_to_iq = tmp___1;
  tmp___2 = __fswab32((__u32 )(((((((((((((((int )f->fs.rpttid << 25) | ((unsigned int )*((unsigned char *)f + 16UL) == 8U ? 16777216 : 0)) | ((int )f->fs.dirsteer << 23)) | ((int )f->fs.maskhash << 22)) | ((int )f->fs.dirsteerhash << 21)) | ((unsigned int )*((unsigned char *)f + 16UL) == 16U ? 1048576 : 0)) | ((int )f->fs.newdmac << 19)) | ((int )f->fs.newsmac << 18)) | (((unsigned int )*((unsigned short *)f + 9UL) == 256U || (unsigned int )*((unsigned short *)f + 9UL) == 384U) << 17)) | (((unsigned int )*((unsigned short *)f + 9UL) == 128U || (unsigned int )*((unsigned short *)f + 9UL) == 384U) << 16)) | ((int )f->fs.hitcnts << 15)) | ((int )f->fs.eport << 13)) | ((int )f->fs.prio << 12)) | ((unsigned long )f->l2t != (unsigned long )((struct l2t_entry *)0) ? (int )(f->l2t)->idx : 0)));
  fwr->del_filter_to_l2tix = tmp___2;
  tmp___3 = __fswab16((int )f->fs.val.ethtype);
  fwr->ethtype = tmp___3;
  tmp___4 = __fswab16((int )f->fs.mask.ethtype);
  fwr->ethtypem = tmp___4;
  fwr->frag_to_ovlan_vldm = (__u8 )((((((int )((signed char )((int )f->fs.val.frag << 7)) | (int )((signed char )((int )f->fs.mask.frag << 6))) | (int )((signed char )((int )f->fs.val.ivlan_vld << 5))) | (int )((signed char )((int )f->fs.val.ovlan_vld << 4))) | (int )((signed char )((int )f->fs.mask.ivlan_vld << 3))) | (int )((signed char )((int )f->fs.mask.ovlan_vld << 2)));
  fwr->smac_sel = 0U;
  tmp___5 = __fswab16((int )adapter->sge.fw_evtq.abs_id);
  fwr->rx_chan_rx_rpl_iq = tmp___5;
  tmp___6 = __fswab32((__u32 )(((((((((int )f->fs.val.macidx << 23) | ((int )f->fs.mask.macidx << 14)) | ((int )f->fs.val.fcoe << 13)) | ((int )f->fs.mask.fcoe << 12)) | ((int )f->fs.val.iport << 9)) | ((int )f->fs.mask.iport << 6)) | ((int )f->fs.val.matchtype << 3)) | (int )f->fs.mask.matchtype));
  fwr->maci_to_matchtypem = tmp___6;
  fwr->ptcl = f->fs.val.proto;
  fwr->ptclm = f->fs.mask.proto;
  fwr->ttyp = f->fs.val.tos;
  fwr->ttypm = f->fs.mask.tos;
  tmp___7 = __fswab16((int )f->fs.val.ivlan);
  fwr->ivlan = tmp___7;
  tmp___8 = __fswab16((int )f->fs.mask.ivlan);
  fwr->ivlanm = tmp___8;
  tmp___9 = __fswab16((int )f->fs.val.ovlan);
  fwr->ovlan = tmp___9;
  tmp___10 = __fswab16((int )f->fs.mask.ovlan);
  fwr->ovlanm = tmp___10;
  memcpy((void *)(& fwr->lip), (void const *)(& f->fs.val.lip), 16UL);
  memcpy((void *)(& fwr->lipm), (void const *)(& f->fs.mask.lip), 16UL);
  memcpy((void *)(& fwr->fip), (void const *)(& f->fs.val.fip), 16UL);
  memcpy((void *)(& fwr->fipm), (void const *)(& f->fs.mask.fip), 16UL);
  tmp___11 = __fswab16((int )f->fs.val.lport);
  fwr->lp = tmp___11;
  tmp___12 = __fswab16((int )f->fs.mask.lport);
  fwr->lpm = tmp___12;
  tmp___13 = __fswab16((int )f->fs.val.fport);
  fwr->fp = tmp___13;
  tmp___14 = __fswab16((int )f->fs.mask.fport);
  fwr->fpm = tmp___14;
  }
  if ((unsigned int )*((unsigned char *)f + 18UL) != 0U) {
    {
    memcpy((void *)(& fwr->sma), (void const *)(& f->fs.smac), 6UL);
    }
  } else {
  }
  {
  f->pending = 1U;
  set_wr_txq(skb, 1, (int )f->fs.val.iport & 3);
  t4_ofld_send(adapter, skb);
  }
  return (0);
}
}
static int del_filter_wr(struct adapter *adapter , int fidx )
{
  struct filter_entry *f ;
  struct sk_buff *skb ;
  struct fw_filter_wr *fwr ;
  unsigned int len ;
  unsigned int ftid ;
  unsigned char *tmp ;
  {
  {
  f = adapter->tids.ftid_tab + (unsigned long )fidx;
  len = 128U;
  ftid = adapter->tids.ftid_base + (unsigned int )fidx;
  skb = alloc_skb(len, 2256U);
  tmp = __skb_put(skb, len);
  fwr = (struct fw_filter_wr *)tmp;
  t4_mk_filtdelwr(ftid, fwr, (int )adapter->sge.fw_evtq.abs_id);
  f->pending = 1U;
  t4_mgmt_tx(adapter, skb);
  }
  return (0);
}
}
__inline static int is_offload(struct adapter const *adap )
{
  {
  return ((int )adap->params.offload);
}
}
static u32 get_msglevel(struct net_device *dev )
{
  struct adapter *tmp ;
  {
  {
  tmp = netdev2adap((struct net_device const *)dev);
  }
  return ((u32 )tmp->msg_enable);
}
}
static void set_msglevel(struct net_device *dev , u32 val )
{
  struct adapter *tmp ;
  {
  {
  tmp = netdev2adap((struct net_device const *)dev);
  tmp->msg_enable = (int )val;
  }
  return;
}
}
static char stats_strings[67U][32U] =
  { { 'T', 'x', 'O', 'c',
            't', 'e', 't', 's',
            'O', 'K', ' ', ' ',
            ' ', ' ', ' ', ' ',
            ' ', ' ', ' ', '\000'},
   { 'T', 'x', 'F', 'r',
            'a', 'm', 'e', 's',
            'O', 'K', ' ', ' ',
            ' ', ' ', ' ', ' ',
            ' ', ' ', ' ', '\000'},
   { 'T', 'x', 'B', 'r',
            'o', 'a', 'd', 'c',
            'a', 's', 't', 'F',
            'r', 'a', 'm', 'e',
            's', ' ', ' ', '\000'},
   { 'T', 'x', 'M', 'u',
            'l', 't', 'i', 'c',
            'a', 's', 't', 'F',
            'r', 'a', 'm', 'e',
            's', ' ', ' ', '\000'},
   { 'T', 'x', 'U', 'n',
            'i', 'c', 'a', 's',
            't', 'F', 'r', 'a',
            'm', 'e', 's', ' ',
            ' ', ' ', ' ', '\000'},
   { 'T', 'x', 'E', 'r',
            'r', 'o', 'r', 'F',
            'r', 'a', 'm', 'e',
            's', ' ', ' ', ' ',
            ' ', ' ', ' ', '\000'},
   { 'T', 'x', 'F', 'r',
            'a', 'm', 'e', 's',
            '6', '4', ' ', ' ',
            ' ', ' ', ' ', ' ',
            ' ', ' ', ' ', '\000'},
   { 'T', 'x', 'F', 'r',
            'a', 'm', 'e', 's',
            '6', '5', 'T', 'o',
            '1', '2', '7', ' ',
            ' ', ' ', ' ', '\000'},
   { 'T', 'x', 'F', 'r',
            'a', 'm', 'e', 's',
            '1', '2', '8', 'T',
            'o', '2', '5', '5',
            ' ', ' ', ' ', '\000'},
   { 'T', 'x', 'F', 'r',
            'a', 'm', 'e', 's',
            '2', '5', '6', 'T',
            'o', '5', '1', '1',
            ' ', ' ', ' ', '\000'},
   { 'T', 'x', 'F', 'r',
            'a', 'm', 'e', 's',
            '5', '1', '2', 'T',
            'o', '1', '0', '2',
            '3', ' ', ' ', '\000'},
   { 'T', 'x', 'F', 'r',
            'a', 'm', 'e', 's',
            '1', '0', '2', '4',
            'T', 'o', '1', '5',
            '1', '8', ' ', '\000'},
   { 'T', 'x', 'F', 'r',
            'a', 'm', 'e', 's',
            '1', '5', '1', '9',
            'T', 'o', 'M', 'a',
            'x', ' ', ' ', '\000'},
   { 'T', 'x', 'F', 'r',
            'a', 'm', 'e', 's',
            'D', 'r', 'o', 'p',
            'p', 'e', 'd', ' ',
            ' ', ' ', ' ', '\000'},
   { 'T', 'x', 'P', 'a',
            'u', 's', 'e', 'F',
            'r', 'a', 'm', 'e',
            's', ' ', ' ', ' ',
            ' ', ' ', ' ', '\000'},
   { 'T', 'x', 'P', 'P',
            'P', '0', 'F', 'r',
            'a', 'm', 'e', 's',
            ' ', ' ', ' ', ' ',
            ' ', ' ', ' ', '\000'},
   { 'T', 'x', 'P', 'P',
            'P', '1', 'F', 'r',
            'a', 'm', 'e', 's',
            ' ', ' ', ' ', ' ',
            ' ', ' ', ' ', '\000'},
   { 'T', 'x', 'P', 'P',
            'P', '2', 'F', 'r',
            'a', 'm', 'e', 's',
            ' ', ' ', ' ', ' ',
            ' ', ' ', ' ', '\000'},
   { 'T', 'x', 'P', 'P',
            'P', '3', 'F', 'r',
            'a', 'm', 'e', 's',
            ' ', ' ', ' ', ' ',
            ' ', ' ', ' ', '\000'},
   { 'T', 'x', 'P', 'P',
            'P', '4', 'F', 'r',
            'a', 'm', 'e', 's',
            ' ', ' ', ' ', ' ',
            ' ', ' ', ' ', '\000'},
   { 'T', 'x', 'P', 'P',
            'P', '5', 'F', 'r',
            'a', 'm', 'e', 's',
            ' ', ' ', ' ', ' ',
            ' ', ' ', ' ', '\000'},
   { 'T', 'x', 'P', 'P',
            'P', '6', 'F', 'r',
            'a', 'm', 'e', 's',
            ' ', ' ', ' ', ' ',
            ' ', ' ', ' ', '\000'},
   { 'T', 'x', 'P', 'P',
            'P', '7', 'F', 'r',
            'a', 'm', 'e', 's',
            ' ', ' ', ' ', ' ',
            ' ', ' ', ' ', '\000'},
   { 'R', 'x', 'O', 'c',
            't', 'e', 't', 's',
            'O', 'K', ' ', ' ',
            ' ', ' ', ' ', ' ',
            ' ', ' ', ' ', '\000'},
   { 'R', 'x', 'F', 'r',
            'a', 'm', 'e', 's',
            'O', 'K', ' ', ' ',
            ' ', ' ', ' ', ' ',
            ' ', ' ', ' ', '\000'},
   { 'R', 'x', 'B', 'r',
            'o', 'a', 'd', 'c',
            'a', 's', 't', 'F',
            'r', 'a', 'm', 'e',
            's', ' ', ' ', '\000'},
   { 'R', 'x', 'M', 'u',
            'l', 't', 'i', 'c',
            'a', 's', 't', 'F',
            'r', 'a', 'm', 'e',
            's', ' ', ' ', '\000'},
   { 'R', 'x', 'U', 'n',
            'i', 'c', 'a', 's',
            't', 'F', 'r', 'a',
            'm', 'e', 's', ' ',
            ' ', ' ', ' ', '\000'},
   { 'R', 'x', 'F', 'r',
            'a', 'm', 'e', 's',
            'T', 'o', 'o', 'L',
            'o', 'n', 'g', ' ',
            ' ', ' ', ' ', '\000'},
   { 'R', 'x', 'J', 'a',
            'b', 'b', 'e', 'r',
            'E', 'r', 'r', 'o',
            'r', 's', ' ', ' ',
            ' ', ' ', ' ', '\000'},
   { 'R', 'x', 'F', 'C',
            'S', 'E', 'r', 'r',
            'o', 'r', 's', ' ',
            ' ', ' ', ' ', ' ',
            ' ', ' ', ' ', '\000'},
   { 'R', 'x', 'L', 'e',
            'n', 'g', 't', 'h',
            'E', 'r', 'r', 'o',
            'r', 's', ' ', ' ',
            ' ', ' ', ' ', '\000'},
   { 'R', 'x', 'S', 'y',
            'm', 'b', 'o', 'l',
            'E', 'r', 'r', 'o',
            'r', 's', ' ', ' ',
            ' ', ' ', ' ', '\000'},
   { 'R', 'x', 'R', 'u',
            'n', 't', 'F', 'r',
            'a', 'm', 'e', 's',
            ' ', ' ', ' ', ' ',
            ' ', ' ', ' ', '\000'},
   { 'R', 'x', 'F', 'r',
            'a', 'm', 'e', 's',
            '6', '4', ' ', ' ',
            ' ', ' ', ' ', ' ',
            ' ', ' ', ' ', '\000'},
   { 'R', 'x', 'F', 'r',
            'a', 'm', 'e', 's',
            '6', '5', 'T', 'o',
            '1', '2', '7', ' ',
            ' ', ' ', ' ', '\000'},
   { 'R', 'x', 'F', 'r',
            'a', 'm', 'e', 's',
            '1', '2', '8', 'T',
            'o', '2', '5', '5',
            ' ', ' ', ' ', '\000'},
   { 'R', 'x', 'F', 'r',
            'a', 'm', 'e', 's',
            '2', '5', '6', 'T',
            'o', '5', '1', '1',
            ' ', ' ', ' ', '\000'},
   { 'R', 'x', 'F', 'r',
            'a', 'm', 'e', 's',
            '5', '1', '2', 'T',
            'o', '1', '0', '2',
            '3', ' ', ' ', '\000'},
   { 'R', 'x', 'F', 'r',
            'a', 'm', 'e', 's',
            '1', '0', '2', '4',
            'T', 'o', '1', '5',
            '1', '8', ' ', '\000'},
   { 'R', 'x', 'F', 'r',
            'a', 'm', 'e', 's',
            '1', '5', '1', '9',
            'T', 'o', 'M', 'a',
            'x', ' ', ' ', '\000'},
   { 'R', 'x', 'P', 'a',
            'u', 's', 'e', 'F',
            'r', 'a', 'm', 'e',
            's', ' ', ' ', ' ',
            ' ', ' ', ' ', '\000'},
   { 'R', 'x', 'P', 'P',
            'P', '0', 'F', 'r',
            'a', 'm', 'e', 's',
            ' ', ' ', ' ', ' ',
            ' ', ' ', ' ', '\000'},
   { 'R', 'x', 'P', 'P',
            'P', '1', 'F', 'r',
            'a', 'm', 'e', 's',
            ' ', ' ', ' ', ' ',
            ' ', ' ', ' ', '\000'},
   { 'R', 'x', 'P', 'P',
            'P', '2', 'F', 'r',
            'a', 'm', 'e', 's',
            ' ', ' ', ' ', ' ',
            ' ', ' ', ' ', '\000'},
   { 'R', 'x', 'P', 'P',
            'P', '3', 'F', 'r',
            'a', 'm', 'e', 's',
            ' ', ' ', ' ', ' ',
            ' ', ' ', ' ', '\000'},
   { 'R', 'x', 'P', 'P',
            'P', '4', 'F', 'r',
            'a', 'm', 'e', 's',
            ' ', ' ', ' ', ' ',
            ' ', ' ', ' ', '\000'},
   { 'R', 'x', 'P', 'P',
            'P', '5', 'F', 'r',
            'a', 'm', 'e', 's',
            ' ', ' ', ' ', ' ',
            ' ', ' ', ' ', '\000'},
   { 'R', 'x', 'P', 'P',
            'P', '6', 'F', 'r',
            'a', 'm', 'e', 's',
            ' ', ' ', ' ', ' ',
            ' ', ' ', ' ', '\000'},
   { 'R', 'x', 'P', 'P',
            'P', '7', 'F', 'r',
            'a', 'm', 'e', 's',
            ' ', ' ', ' ', ' ',
            ' ', ' ', ' ', '\000'},
   { 'R', 'x', 'B', 'G',
            '0', 'F', 'r', 'a',
            'm', 'e', 's', 'D',
            'r', 'o', 'p', 'p',
            'e', 'd', ' ', '\000'},
   { 'R', 'x', 'B', 'G',
            '1', 'F', 'r', 'a',
            'm', 'e', 's', 'D',
            'r', 'o', 'p', 'p',
            'e', 'd', ' ', '\000'},
   { 'R', 'x', 'B', 'G',
            '2', 'F', 'r', 'a',
            'm', 'e', 's', 'D',
            'r', 'o', 'p', 'p',
            'e', 'd', ' ', '\000'},
   { 'R', 'x', 'B', 'G',
            '3', 'F', 'r', 'a',
            'm', 'e', 's', 'D',
            'r', 'o', 'p', 'p',
            'e', 'd', ' ', '\000'},
   { 'R', 'x', 'B', 'G',
            '0', 'F', 'r', 'a',
            'm', 'e', 's', 'T',
            'r', 'u', 'n', 'c',
            ' ', ' ', ' ', '\000'},
   { 'R', 'x', 'B', 'G',
            '1', 'F', 'r', 'a',
            'm', 'e', 's', 'T',
            'r', 'u', 'n', 'c',
            ' ', ' ', ' ', '\000'},
   { 'R', 'x', 'B', 'G',
            '2', 'F', 'r', 'a',
            'm', 'e', 's', 'T',
            'r', 'u', 'n', 'c',
            ' ', ' ', ' ', '\000'},
   { 'R', 'x', 'B', 'G',
            '3', 'F', 'r', 'a',
            'm', 'e', 's', 'T',
            'r', 'u', 'n', 'c',
            ' ', ' ', ' ', '\000'},
   { 'T', 'S', 'O', ' ',
            ' ', ' ', ' ', ' ',
            ' ', ' ', ' ', ' ',
            ' ', ' ', ' ', ' ',
            ' ', ' ', ' ', '\000'},
   { 'T', 'x', 'C', 's',
            'u', 'm', 'O', 'f',
            'f', 'l', 'o', 'a',
            'd', ' ', ' ', ' ',
            ' ', ' ', ' ', '\000'},
   { 'R', 'x', 'C', 's',
            'u', 'm', 'G', 'o',
            'o', 'd', ' ', ' ',
            ' ', ' ', ' ', ' ',
            ' ', ' ', ' ', '\000'},
   { 'V', 'L', 'A', 'N',
            'e', 'x', 't', 'r',
            'a', 'c', 't', 'i',
            'o', 'n', 's', ' ',
            ' ', ' ', ' ', '\000'},
   { 'V', 'L', 'A', 'N',
            'i', 'n', 's', 'e',
            'r', 't', 'i', 'o',
            'n', 's', ' ', ' ',
            ' ', ' ', ' ', '\000'},
   { 'G', 'R', 'O', 'p',
            'a', 'c', 'k', 'e',
            't', 's', ' ', ' ',
            ' ', ' ', ' ', ' ',
            ' ', ' ', ' ', '\000'},
   { 'G', 'R', 'O', 'm',
            'e', 'r', 'g', 'e',
            'd', ' ', ' ', ' ',
            ' ', ' ', ' ', ' ',
            ' ', ' ', ' ', '\000'},
   { 'W', 'r', 'i', 't',
            'e', 'C', 'o', 'a',
            'l', 'S', 'u', 'c',
            'c', 'e', 's', 's',
            ' ', ' ', ' ', '\000'},
   { 'W', 'r', 'i', 't',
            'e', 'C', 'o', 'a',
            'l', 'F', 'a', 'i',
            'l', ' ', ' ', ' ',
            ' ', ' ', ' ', '\000'}};
static int get_sset_count(struct net_device *dev , int sset )
{
  {
  {
  if (sset == 1) {
    goto case_1;
  } else {
  }
  goto switch_default;
  case_1: ;
  return (67);
  switch_default: ;
  return (-95);
  switch_break: ;
  }
}
}
static int get_regs_len(struct net_device *dev )
{
  struct adapter *adap ;
  struct adapter *tmp ;
  int tmp___0 ;
  {
  {
  tmp = netdev2adap((struct net_device const *)dev);
  adap = tmp;
  tmp___0 = is_t4(adap->params.chip);
  }
  if (tmp___0 != 0) {
    return (163840);
  } else {
    return (339968);
  }
}
}
static int get_eeprom_len(struct net_device *dev )
{
  {
  return (17408);
}
}
static void get_drvinfo(struct net_device *dev , struct ethtool_drvinfo *info )
{
  struct adapter *adapter ;
  struct adapter *tmp ;
  char const *tmp___0 ;
  {
  {
  tmp = netdev2adap((struct net_device const *)dev);
  adapter = tmp;
  strlcpy((char *)(& info->driver), "cxgb4", 32UL);
  strlcpy((char *)(& info->version), "2.0.0-ko", 32UL);
  tmp___0 = pci_name((struct pci_dev const *)adapter->pdev);
  strlcpy((char *)(& info->bus_info), tmp___0, 32UL);
  }
  if (adapter->params.fw_vers != 0U) {
    {
    snprintf((char *)(& info->fw_version), 32UL, "%u.%u.%u.%u, TP %u.%u.%u.%u", adapter->params.fw_vers >> 24,
             (adapter->params.fw_vers >> 16) & 255U, (adapter->params.fw_vers >> 8) & 255U,
             adapter->params.fw_vers & 255U, adapter->params.tp_vers >> 24, (adapter->params.tp_vers >> 16) & 255U,
             (adapter->params.tp_vers >> 8) & 255U, adapter->params.tp_vers & 255U);
    }
  } else {
  }
  return;
}
}
static void get_strings(struct net_device *dev , u32 stringset , u8 *data )
{
  {
  if (stringset == 1U) {
    {
    memcpy((void *)data, (void const *)(& stats_strings), 2144UL);
    }
  } else {
  }
  return;
}
}
static void collect_sge_port_stats(struct adapter const *adap , struct port_info const *p ,
                                   struct queue_port_stats *s )
{
  int i ;
  struct sge_eth_txq const *tx ;
  struct sge_eth_rxq const *rx ;
  {
  {
  tx = (struct sge_eth_txq const *)(& adap->sge.ethtxq) + (unsigned long )p->first_qset;
  rx = (struct sge_eth_rxq const *)(& adap->sge.ethrxq) + (unsigned long )p->first_qset;
  memset((void *)s, 0, 56UL);
  i = 0;
  }
  goto ldv_54451;
  ldv_54450:
  s->tso = s->tso + (unsigned long long )tx->tso;
  s->tx_csum = s->tx_csum + (unsigned long long )tx->tx_cso;
  s->rx_csum = s->rx_csum + (unsigned long long )rx->stats.rx_cso;
  s->vlan_ex = s->vlan_ex + (unsigned long long )rx->stats.vlan_ex;
  s->vlan_ins = s->vlan_ins + (unsigned long long )tx->vlan_ins;
  s->gro_pkts = s->gro_pkts + (unsigned long long )rx->stats.lro_pkts;
  s->gro_merged = s->gro_merged + (unsigned long long )rx->stats.lro_merged;
  i = i + 1;
  rx = rx + 1;
  tx = tx + 1;
  ldv_54451: ;
  if (i < (int )p->nqsets) {
    goto ldv_54450;
  } else {
  }
  return;
}
}
static void get_stats(struct net_device *dev , struct ethtool_stats *stats , u64 *data )
{
  struct port_info *pi ;
  void *tmp ;
  struct adapter *adapter ;
  u32 val1 ;
  u32 val2 ;
  int tmp___0 ;
  {
  {
  tmp = netdev_priv((struct net_device const *)dev);
  pi = (struct port_info *)tmp;
  adapter = pi->adapter;
  t4_get_port_stats(adapter, (int )pi->tx_chan, (struct port_stats *)data);
  data = data + 58UL;
  collect_sge_port_stats((struct adapter const *)adapter, (struct port_info const *)pi,
                         (struct queue_port_stats *)data);
  data = data + 7UL;
  tmp___0 = is_t4(adapter->params.chip);
  }
  if (tmp___0 == 0) {
    {
    t4_write_reg(adapter, 4332U, 3584U);
    val1 = t4_read_reg(adapter, 4324U);
    val2 = t4_read_reg(adapter, 4328U);
    *data = (u64 )(val1 - val2);
    data = data + 1;
    *data = (u64 )val2;
    data = data + 1;
    }
  } else {
    {
    memset((void *)data, 0, 16UL);
    *data = *data + 2ULL;
    }
  }
  return;
}
}
__inline static unsigned int mk_adap_vers(struct adapter const *ap )
{
  {
  return (((((unsigned int )ap->params.chip >> 4) & 15U) | (((unsigned int )ap->params.chip & 15U) << 10)) | 65536U);
}
}
static void reg_block_dump(struct adapter *ap , void *buf , unsigned int start , unsigned int end )
{
  u32 *p ;
  u32 *tmp ;
  {
  p = (u32 *)buf + (unsigned long )start;
  goto ldv_54473;
  ldv_54472:
  {
  tmp = p;
  p = p + 1;
  *tmp = t4_read_reg(ap, start);
  start = start + 4U;
  }
  ldv_54473: ;
  if (start <= end) {
    goto ldv_54472;
  } else {
  }
  return;
}
}
static void get_regs(struct net_device *dev , struct ethtool_regs *regs , void *buf )
{
  unsigned int t4_reg_ranges[434U] ;
  unsigned int t5_reg_ranges[848U] ;
  int i ;
  struct adapter *ap ;
  struct adapter *tmp ;
  unsigned int const *reg_ranges ;
  int arr_size ;
  int buf_size ;
  int tmp___0 ;
  {
  {
  t4_reg_ranges[0] = 4104U;
  t4_reg_ranges[1] = 4360U;
  t4_reg_ranges[2] = 4480U;
  t4_reg_ranges[3] = 4532U;
  t4_reg_ranges[4] = 4604U;
  t4_reg_ranges[5] = 4668U;
  t4_reg_ranges[6] = 4864U;
  t4_reg_ranges[7] = 5948U;
  t4_reg_ranges[8] = 6144U;
  t4_reg_ranges[9] = 6396U;
  t4_reg_ranges[10] = 12288U;
  t4_reg_ranges[11] = 12504U;
  t4_reg_ranges[12] = 12512U;
  t4_reg_ranges[13] = 22820U;
  t4_reg_ranges[14] = 22880U;
  t4_reg_ranges[15] = 22996U;
  t4_reg_ranges[16] = 23040U;
  t4_reg_ranges[17] = 23288U;
  t4_reg_ranges[18] = 24576U;
  t4_reg_ranges[19] = 24728U;
  t4_reg_ranges[20] = 24832U;
  t4_reg_ranges[21] = 24912U;
  t4_reg_ranges[22] = 25088U;
  t4_reg_ranges[23] = 25096U;
  t4_reg_ranges[24] = 25152U;
  t4_reg_ranges[25] = 25160U;
  t4_reg_ranges[26] = 25216U;
  t4_reg_ranges[27] = 25400U;
  t4_reg_ranges[28] = 25456U;
  t4_reg_ranges[29] = 25484U;
  t4_reg_ranges[30] = 25600U;
  t4_reg_ranges[31] = 25660U;
  t4_reg_ranges[32] = 25856U;
  t4_reg_ranges[33] = 25892U;
  t4_reg_ranges[34] = 27136U;
  t4_reg_ranges[35] = 27192U;
  t4_reg_ranges[36] = 27232U;
  t4_reg_ranges[37] = 27256U;
  t4_reg_ranges[38] = 27392U;
  t4_reg_ranges[39] = 27524U;
  t4_reg_ranges[40] = 27632U;
  t4_reg_ranges[41] = 27780U;
  t4_reg_ranges[42] = 27888U;
  t4_reg_ranges[43] = 28036U;
  t4_reg_ranges[44] = 28144U;
  t4_reg_ranges[45] = 28292U;
  t4_reg_ranges[46] = 28400U;
  t4_reg_ranges[47] = 28548U;
  t4_reg_ranges[48] = 28656U;
  t4_reg_ranges[49] = 28804U;
  t4_reg_ranges[50] = 28912U;
  t4_reg_ranges[51] = 29060U;
  t4_reg_ranges[52] = 29168U;
  t4_reg_ranges[53] = 29316U;
  t4_reg_ranges[54] = 29424U;
  t4_reg_ranges[55] = 29572U;
  t4_reg_ranges[56] = 29680U;
  t4_reg_ranges[57] = 29776U;
  t4_reg_ranges[58] = 29952U;
  t4_reg_ranges[59] = 30000U;
  t4_reg_ranges[60] = 30208U;
  t4_reg_ranges[61] = 30236U;
  t4_reg_ranges[62] = 30336U;
  t4_reg_ranges[63] = 30412U;
  t4_reg_ranges[64] = 30464U;
  t4_reg_ranges[65] = 30616U;
  t4_reg_ranges[66] = 30656U;
  t4_reg_ranges[67] = 30716U;
  t4_reg_ranges[68] = 30976U;
  t4_reg_ranges[69] = 31228U;
  t4_reg_ranges[70] = 31488U;
  t4_reg_ranges[71] = 31800U;
  t4_reg_ranges[72] = 32000U;
  t4_reg_ranges[73] = 32508U;
  t4_reg_ranges[74] = 36288U;
  t4_reg_ranges[75] = 36380U;
  t4_reg_ranges[76] = 36400U;
  t4_reg_ranges[77] = 36472U;
  t4_reg_ranges[78] = 36512U;
  t4_reg_ranges[79] = 36716U;
  t4_reg_ranges[80] = 36800U;
  t4_reg_ranges[81] = 36980U;
  t4_reg_ranges[82] = 37116U;
  t4_reg_ranges[83] = 37116U;
  t4_reg_ranges[84] = 37888U;
  t4_reg_ranges[85] = 37976U;
  t4_reg_ranges[86] = 38400U;
  t4_reg_ranges[87] = 38588U;
  t4_reg_ranges[88] = 38912U;
  t4_reg_ranges[89] = 38920U;
  t4_reg_ranges[90] = 38944U;
  t4_reg_ranges[91] = 38972U;
  t4_reg_ranges[92] = 38992U;
  t4_reg_ranges[93] = 39012U;
  t4_reg_ranges[94] = 39936U;
  t4_reg_ranges[95] = 40044U;
  t4_reg_ranges[96] = 40064U;
  t4_reg_ranges[97] = 40172U;
  t4_reg_ranges[98] = 40192U;
  t4_reg_ranges[99] = 40300U;
  t4_reg_ranges[100] = 40320U;
  t4_reg_ranges[101] = 40428U;
  t4_reg_ranges[102] = 40448U;
  t4_reg_ranges[103] = 40556U;
  t4_reg_ranges[104] = 40576U;
  t4_reg_ranges[105] = 40684U;
  t4_reg_ranges[106] = 40704U;
  t4_reg_ranges[107] = 40812U;
  t4_reg_ranges[108] = 40832U;
  t4_reg_ranges[109] = 40940U;
  t4_reg_ranges[110] = 53252U;
  t4_reg_ranges[111] = 53308U;
  t4_reg_ranges[112] = 57280U;
  t4_reg_ranges[113] = 57312U;
  t4_reg_ranges[114] = 57344U;
  t4_reg_ranges[115] = 60028U;
  t4_reg_ranges[116] = 61440U;
  t4_reg_ranges[117] = 70032U;
  t4_reg_ranges[118] = 102464U;
  t4_reg_ranges[119] = 102508U;
  t4_reg_ranges[120] = 102520U;
  t4_reg_ranges[121] = 102528U;
  t4_reg_ranges[122] = 102540U;
  t4_reg_ranges[123] = 102692U;
  t4_reg_ranges[124] = 102736U;
  t4_reg_ranges[125] = 102832U;
  t4_reg_ranges[126] = 102864U;
  t4_reg_ranges[127] = 102888U;
  t4_reg_ranges[128] = 102968U;
  t4_reg_ranges[129] = 102988U;
  t4_reg_ranges[130] = 103416U;
  t4_reg_ranges[131] = 103540U;
  t4_reg_ranges[132] = 103568U;
  t4_reg_ranges[133] = 103672U;
  t4_reg_ranges[134] = 104448U;
  t4_reg_ranges[135] = 106288U;
  t4_reg_ranges[136] = 106496U;
  t4_reg_ranges[137] = 106604U;
  t4_reg_ranges[138] = 106672U;
  t4_reg_ranges[139] = 106784U;
  t4_reg_ranges[140] = 106792U;
  t4_reg_ranges[141] = 106808U;
  t4_reg_ranges[142] = 106896U;
  t4_reg_ranges[143] = 106948U;
  t4_reg_ranges[144] = 107004U;
  t4_reg_ranges[145] = 107004U;
  t4_reg_ranges[146] = 122944U;
  t4_reg_ranges[147] = 122956U;
  t4_reg_ranges[148] = 123524U;
  t4_reg_ranges[149] = 123532U;
  t4_reg_ranges[150] = 123584U;
  t4_reg_ranges[151] = 123584U;
  t4_reg_ranges[152] = 123616U;
  t4_reg_ranges[153] = 123616U;
  t4_reg_ranges[154] = 123648U;
  t4_reg_ranges[155] = 123780U;
  t4_reg_ranges[156] = 123840U;
  t4_reg_ranges[157] = 123848U;
  t4_reg_ranges[158] = 123968U;
  t4_reg_ranges[159] = 123980U;
  t4_reg_ranges[160] = 124548U;
  t4_reg_ranges[161] = 124556U;
  t4_reg_ranges[162] = 124608U;
  t4_reg_ranges[163] = 124608U;
  t4_reg_ranges[164] = 124640U;
  t4_reg_ranges[165] = 124640U;
  t4_reg_ranges[166] = 124672U;
  t4_reg_ranges[167] = 124804U;
  t4_reg_ranges[168] = 124864U;
  t4_reg_ranges[169] = 124872U;
  t4_reg_ranges[170] = 124992U;
  t4_reg_ranges[171] = 125004U;
  t4_reg_ranges[172] = 125572U;
  t4_reg_ranges[173] = 125580U;
  t4_reg_ranges[174] = 125632U;
  t4_reg_ranges[175] = 125632U;
  t4_reg_ranges[176] = 125664U;
  t4_reg_ranges[177] = 125664U;
  t4_reg_ranges[178] = 125696U;
  t4_reg_ranges[179] = 125828U;
  t4_reg_ranges[180] = 125888U;
  t4_reg_ranges[181] = 125896U;
  t4_reg_ranges[182] = 126016U;
  t4_reg_ranges[183] = 126028U;
  t4_reg_ranges[184] = 126596U;
  t4_reg_ranges[185] = 126604U;
  t4_reg_ranges[186] = 126656U;
  t4_reg_ranges[187] = 126656U;
  t4_reg_ranges[188] = 126688U;
  t4_reg_ranges[189] = 126688U;
  t4_reg_ranges[190] = 126720U;
  t4_reg_ranges[191] = 126852U;
  t4_reg_ranges[192] = 126912U;
  t4_reg_ranges[193] = 126920U;
  t4_reg_ranges[194] = 127040U;
  t4_reg_ranges[195] = 127052U;
  t4_reg_ranges[196] = 127620U;
  t4_reg_ranges[197] = 127628U;
  t4_reg_ranges[198] = 127680U;
  t4_reg_ranges[199] = 127680U;
  t4_reg_ranges[200] = 127712U;
  t4_reg_ranges[201] = 127712U;
  t4_reg_ranges[202] = 127744U;
  t4_reg_ranges[203] = 127876U;
  t4_reg_ranges[204] = 127936U;
  t4_reg_ranges[205] = 127944U;
  t4_reg_ranges[206] = 128064U;
  t4_reg_ranges[207] = 128076U;
  t4_reg_ranges[208] = 128644U;
  t4_reg_ranges[209] = 128652U;
  t4_reg_ranges[210] = 128704U;
  t4_reg_ranges[211] = 128704U;
  t4_reg_ranges[212] = 128736U;
  t4_reg_ranges[213] = 128736U;
  t4_reg_ranges[214] = 128768U;
  t4_reg_ranges[215] = 128900U;
  t4_reg_ranges[216] = 128960U;
  t4_reg_ranges[217] = 128968U;
  t4_reg_ranges[218] = 129088U;
  t4_reg_ranges[219] = 129100U;
  t4_reg_ranges[220] = 129668U;
  t4_reg_ranges[221] = 129676U;
  t4_reg_ranges[222] = 129728U;
  t4_reg_ranges[223] = 129728U;
  t4_reg_ranges[224] = 129760U;
  t4_reg_ranges[225] = 129760U;
  t4_reg_ranges[226] = 129792U;
  t4_reg_ranges[227] = 129924U;
  t4_reg_ranges[228] = 129984U;
  t4_reg_ranges[229] = 129992U;
  t4_reg_ranges[230] = 130112U;
  t4_reg_ranges[231] = 130124U;
  t4_reg_ranges[232] = 130692U;
  t4_reg_ranges[233] = 130700U;
  t4_reg_ranges[234] = 130752U;
  t4_reg_ranges[235] = 130752U;
  t4_reg_ranges[236] = 130784U;
  t4_reg_ranges[237] = 130784U;
  t4_reg_ranges[238] = 130816U;
  t4_reg_ranges[239] = 130948U;
  t4_reg_ranges[240] = 131008U;
  t4_reg_ranges[241] = 131016U;
  t4_reg_ranges[242] = 131072U;
  t4_reg_ranges[243] = 131116U;
  t4_reg_ranges[244] = 131328U;
  t4_reg_ranges[245] = 131388U;
  t4_reg_ranges[246] = 131472U;
  t4_reg_ranges[247] = 131528U;
  t4_reg_ranges[248] = 131584U;
  t4_reg_ranges[249] = 131864U;
  t4_reg_ranges[250] = 132096U;
  t4_reg_ranges[251] = 132392U;
  t4_reg_ranges[252] = 132416U;
  t4_reg_ranges[253] = 132628U;
  t4_reg_ranges[254] = 135168U;
  t4_reg_ranges[255] = 135232U;
  t4_reg_ranges[256] = 135244U;
  t4_reg_ranges[257] = 135264U;
  t4_reg_ranges[258] = 135360U;
  t4_reg_ranges[259] = 135404U;
  t4_reg_ranges[260] = 135680U;
  t4_reg_ranges[261] = 135784U;
  t4_reg_ranges[262] = 135792U;
  t4_reg_ranges[263] = 135812U;
  t4_reg_ranges[264] = 135932U;
  t4_reg_ranges[265] = 136072U;
  t4_reg_ranges[266] = 136192U;
  t4_reg_ranges[267] = 136196U;
  t4_reg_ranges[268] = 136448U;
  t4_reg_ranges[269] = 136472U;
  t4_reg_ranges[270] = 136492U;
  t4_reg_ranges[271] = 136508U;
  t4_reg_ranges[272] = 136528U;
  t4_reg_ranges[273] = 136532U;
  t4_reg_ranges[274] = 136704U;
  t4_reg_ranges[275] = 136704U;
  t4_reg_ranges[276] = 136712U;
  t4_reg_ranges[277] = 136744U;
  t4_reg_ranges[278] = 136752U;
  t4_reg_ranges[279] = 136764U;
  t4_reg_ranges[280] = 136960U;
  t4_reg_ranges[281] = 136988U;
  t4_reg_ranges[282] = 137088U;
  t4_reg_ranges[283] = 137100U;
  t4_reg_ranges[284] = 137216U;
  t4_reg_ranges[285] = 138296U;
  t4_reg_ranges[286] = 138368U;
  t4_reg_ranges[287] = 138620U;
  t4_reg_ranges[288] = 138752U;
  t4_reg_ranges[289] = 138756U;
  t4_reg_ranges[290] = 139264U;
  t4_reg_ranges[291] = 139308U;
  t4_reg_ranges[292] = 139520U;
  t4_reg_ranges[293] = 139580U;
  t4_reg_ranges[294] = 139664U;
  t4_reg_ranges[295] = 139720U;
  t4_reg_ranges[296] = 139776U;
  t4_reg_ranges[297] = 140056U;
  t4_reg_ranges[298] = 140288U;
  t4_reg_ranges[299] = 140584U;
  t4_reg_ranges[300] = 140608U;
  t4_reg_ranges[301] = 140820U;
  t4_reg_ranges[302] = 143360U;
  t4_reg_ranges[303] = 143424U;
  t4_reg_ranges[304] = 143436U;
  t4_reg_ranges[305] = 143456U;
  t4_reg_ranges[306] = 143552U;
  t4_reg_ranges[307] = 143596U;
  t4_reg_ranges[308] = 143872U;
  t4_reg_ranges[309] = 143976U;
  t4_reg_ranges[310] = 143984U;
  t4_reg_ranges[311] = 144004U;
  t4_reg_ranges[312] = 144124U;
  t4_reg_ranges[313] = 144264U;
  t4_reg_ranges[314] = 144384U;
  t4_reg_ranges[315] = 144388U;
  t4_reg_ranges[316] = 144640U;
  t4_reg_ranges[317] = 144664U;
  t4_reg_ranges[318] = 144684U;
  t4_reg_ranges[319] = 144700U;
  t4_reg_ranges[320] = 144720U;
  t4_reg_ranges[321] = 144724U;
  t4_reg_ranges[322] = 144896U;
  t4_reg_ranges[323] = 144896U;
  t4_reg_ranges[324] = 144904U;
  t4_reg_ranges[325] = 144936U;
  t4_reg_ranges[326] = 144944U;
  t4_reg_ranges[327] = 144956U;
  t4_reg_ranges[328] = 145152U;
  t4_reg_ranges[329] = 145180U;
  t4_reg_ranges[330] = 145280U;
  t4_reg_ranges[331] = 145292U;
  t4_reg_ranges[332] = 145408U;
  t4_reg_ranges[333] = 146488U;
  t4_reg_ranges[334] = 146560U;
  t4_reg_ranges[335] = 146812U;
  t4_reg_ranges[336] = 146944U;
  t4_reg_ranges[337] = 146948U;
  t4_reg_ranges[338] = 147456U;
  t4_reg_ranges[339] = 147500U;
  t4_reg_ranges[340] = 147712U;
  t4_reg_ranges[341] = 147772U;
  t4_reg_ranges[342] = 147856U;
  t4_reg_ranges[343] = 147912U;
  t4_reg_ranges[344] = 147968U;
  t4_reg_ranges[345] = 148248U;
  t4_reg_ranges[346] = 148480U;
  t4_reg_ranges[347] = 148776U;
  t4_reg_ranges[348] = 148800U;
  t4_reg_ranges[349] = 149012U;
  t4_reg_ranges[350] = 151552U;
  t4_reg_ranges[351] = 151616U;
  t4_reg_ranges[352] = 151628U;
  t4_reg_ranges[353] = 151648U;
  t4_reg_ranges[354] = 151744U;
  t4_reg_ranges[355] = 151788U;
  t4_reg_ranges[356] = 152064U;
  t4_reg_ranges[357] = 152168U;
  t4_reg_ranges[358] = 152176U;
  t4_reg_ranges[359] = 152196U;
  t4_reg_ranges[360] = 152316U;
  t4_reg_ranges[361] = 152456U;
  t4_reg_ranges[362] = 152576U;
  t4_reg_ranges[363] = 152580U;
  t4_reg_ranges[364] = 152832U;
  t4_reg_ranges[365] = 152856U;
  t4_reg_ranges[366] = 152876U;
  t4_reg_ranges[367] = 152892U;
  t4_reg_ranges[368] = 152912U;
  t4_reg_ranges[369] = 152916U;
  t4_reg_ranges[370] = 153088U;
  t4_reg_ranges[371] = 153088U;
  t4_reg_ranges[372] = 153096U;
  t4_reg_ranges[373] = 153128U;
  t4_reg_ranges[374] = 153136U;
  t4_reg_ranges[375] = 153148U;
  t4_reg_ranges[376] = 153344U;
  t4_reg_ranges[377] = 153372U;
  t4_reg_ranges[378] = 153472U;
  t4_reg_ranges[379] = 153484U;
  t4_reg_ranges[380] = 153600U;
  t4_reg_ranges[381] = 154680U;
  t4_reg_ranges[382] = 154752U;
  t4_reg_ranges[383] = 155004U;
  t4_reg_ranges[384] = 155136U;
  t4_reg_ranges[385] = 155140U;
  t4_reg_ranges[386] = 155648U;
  t4_reg_ranges[387] = 155692U;
  t4_reg_ranges[388] = 155904U;
  t4_reg_ranges[389] = 155964U;
  t4_reg_ranges[390] = 156048U;
  t4_reg_ranges[391] = 156104U;
  t4_reg_ranges[392] = 156160U;
  t4_reg_ranges[393] = 156440U;
  t4_reg_ranges[394] = 156672U;
  t4_reg_ranges[395] = 156968U;
  t4_reg_ranges[396] = 156992U;
  t4_reg_ranges[397] = 157204U;
  t4_reg_ranges[398] = 159744U;
  t4_reg_ranges[399] = 159808U;
  t4_reg_ranges[400] = 159820U;
  t4_reg_ranges[401] = 159840U;
  t4_reg_ranges[402] = 159936U;
  t4_reg_ranges[403] = 159980U;
  t4_reg_ranges[404] = 160256U;
  t4_reg_ranges[405] = 160360U;
  t4_reg_ranges[406] = 160368U;
  t4_reg_ranges[407] = 160388U;
  t4_reg_ranges[408] = 160508U;
  t4_reg_ranges[409] = 160648U;
  t4_reg_ranges[410] = 160768U;
  t4_reg_ranges[411] = 160772U;
  t4_reg_ranges[412] = 161024U;
  t4_reg_ranges[413] = 161048U;
  t4_reg_ranges[414] = 161068U;
  t4_reg_ranges[415] = 161084U;
  t4_reg_ranges[416] = 161104U;
  t4_reg_ranges[417] = 161108U;
  t4_reg_ranges[418] = 161280U;
  t4_reg_ranges[419] = 161280U;
  t4_reg_ranges[420] = 161288U;
  t4_reg_ranges[421] = 161320U;
  t4_reg_ranges[422] = 161328U;
  t4_reg_ranges[423] = 161340U;
  t4_reg_ranges[424] = 161536U;
  t4_reg_ranges[425] = 161564U;
  t4_reg_ranges[426] = 161664U;
  t4_reg_ranges[427] = 161676U;
  t4_reg_ranges[428] = 161792U;
  t4_reg_ranges[429] = 162872U;
  t4_reg_ranges[430] = 162944U;
  t4_reg_ranges[431] = 163196U;
  t4_reg_ranges[432] = 163328U;
  t4_reg_ranges[433] = 163332U;
  t5_reg_ranges[0] = 4104U;
  t5_reg_ranges[1] = 4424U;
  t5_reg_ranges[2] = 4480U;
  t5_reg_ranges[3] = 4532U;
  t5_reg_ranges[4] = 4604U;
  t5_reg_ranges[5] = 4668U;
  t5_reg_ranges[6] = 4736U;
  t5_reg_ranges[7] = 5948U;
  t5_reg_ranges[8] = 6144U;
  t5_reg_ranges[9] = 6396U;
  t5_reg_ranges[10] = 12288U;
  t5_reg_ranges[11] = 12328U;
  t5_reg_ranges[12] = 12384U;
  t5_reg_ranges[13] = 12504U;
  t5_reg_ranges[14] = 12512U;
  t5_reg_ranges[15] = 12540U;
  t5_reg_ranges[16] = 12608U;
  t5_reg_ranges[17] = 13692U;
  t5_reg_ranges[18] = 13736U;
  t5_reg_ranges[19] = 13772U;
  t5_reg_ranges[20] = 13804U;
  t5_reg_ranges[21] = 13804U;
  t5_reg_ranges[22] = 13824U;
  t5_reg_ranges[23] = 22052U;
  t5_reg_ranges[24] = 22220U;
  t5_reg_ranges[25] = 22364U;
  t5_reg_ranges[26] = 22540U;
  t5_reg_ranges[27] = 22548U;
  t5_reg_ranges[28] = 22672U;
  t5_reg_ranges[29] = 22716U;
  t5_reg_ranges[30] = 22848U;
  t5_reg_ranges[31] = 23004U;
  t5_reg_ranges[32] = 23036U;
  t5_reg_ranges[33] = 23064U;
  t5_reg_ranges[34] = 23136U;
  t5_reg_ranges[35] = 23196U;
  t5_reg_ranges[36] = 23452U;
  t5_reg_ranges[37] = 23548U;
  t5_reg_ranges[38] = 24576U;
  t5_reg_ranges[39] = 24640U;
  t5_reg_ranges[40] = 24664U;
  t5_reg_ranges[41] = 24908U;
  t5_reg_ranges[42] = 30464U;
  t5_reg_ranges[43] = 30616U;
  t5_reg_ranges[44] = 30656U;
  t5_reg_ranges[45] = 30972U;
  t5_reg_ranges[46] = 31488U;
  t5_reg_ranges[47] = 31828U;
  t5_reg_ranges[48] = 32000U;
  t5_reg_ranges[49] = 32508U;
  t5_reg_ranges[50] = 36288U;
  t5_reg_ranges[51] = 36320U;
  t5_reg_ranges[52] = 36344U;
  t5_reg_ranges[53] = 36484U;
  t5_reg_ranges[54] = 36512U;
  t5_reg_ranges[55] = 36740U;
  t5_reg_ranges[56] = 36800U;
  t5_reg_ranges[57] = 37112U;
  t5_reg_ranges[58] = 37888U;
  t5_reg_ranges[59] = 38000U;
  t5_reg_ranges[60] = 38400U;
  t5_reg_ranges[61] = 38644U;
  t5_reg_ranges[62] = 38912U;
  t5_reg_ranges[63] = 38920U;
  t5_reg_ranges[64] = 38944U;
  t5_reg_ranges[65] = 38972U;
  t5_reg_ranges[66] = 38992U;
  t5_reg_ranges[67] = 39012U;
  t5_reg_ranges[68] = 39936U;
  t5_reg_ranges[69] = 40044U;
  t5_reg_ranges[70] = 40064U;
  t5_reg_ranges[71] = 40172U;
  t5_reg_ranges[72] = 40192U;
  t5_reg_ranges[73] = 40300U;
  t5_reg_ranges[74] = 40320U;
  t5_reg_ranges[75] = 40428U;
  t5_reg_ranges[76] = 40448U;
  t5_reg_ranges[77] = 40556U;
  t5_reg_ranges[78] = 40576U;
  t5_reg_ranges[79] = 40684U;
  t5_reg_ranges[80] = 40704U;
  t5_reg_ranges[81] = 40812U;
  t5_reg_ranges[82] = 40832U;
  t5_reg_ranges[83] = 40992U;
  t5_reg_ranges[84] = 53252U;
  t5_reg_ranges[85] = 53308U;
  t5_reg_ranges[86] = 57280U;
  t5_reg_ranges[87] = 57312U;
  t5_reg_ranges[88] = 57344U;
  t5_reg_ranges[89] = 69768U;
  t5_reg_ranges[90] = 69788U;
  t5_reg_ranges[91] = 70012U;
  t5_reg_ranges[92] = 70032U;
  t5_reg_ranges[93] = 70148U;
  t5_reg_ranges[94] = 102464U;
  t5_reg_ranges[95] = 102508U;
  t5_reg_ranges[96] = 102520U;
  t5_reg_ranges[97] = 102528U;
  t5_reg_ranges[98] = 102540U;
  t5_reg_ranges[99] = 102692U;
  t5_reg_ranges[100] = 102736U;
  t5_reg_ranges[101] = 102832U;
  t5_reg_ranges[102] = 102864U;
  t5_reg_ranges[103] = 102888U;
  t5_reg_ranges[104] = 102968U;
  t5_reg_ranges[105] = 103056U;
  t5_reg_ranges[106] = 103416U;
  t5_reg_ranges[107] = 103540U;
  t5_reg_ranges[108] = 103568U;
  t5_reg_ranges[109] = 103628U;
  t5_reg_ranges[110] = 103664U;
  t5_reg_ranges[111] = 103672U;
  t5_reg_ranges[112] = 105472U;
  t5_reg_ranges[113] = 105568U;
  t5_reg_ranges[114] = 105620U;
  t5_reg_ranges[115] = 106000U;
  t5_reg_ranges[116] = 106064U;
  t5_reg_ranges[117] = 106292U;
  t5_reg_ranges[118] = 106304U;
  t5_reg_ranges[119] = 106320U;
  t5_reg_ranges[120] = 106384U;
  t5_reg_ranges[121] = 106468U;
  t5_reg_ranges[122] = 106496U;
  t5_reg_ranges[123] = 106604U;
  t5_reg_ranges[124] = 106672U;
  t5_reg_ranges[125] = 106784U;
  t5_reg_ranges[126] = 106792U;
  t5_reg_ranges[127] = 106808U;
  t5_reg_ranges[128] = 106896U;
  t5_reg_ranges[129] = 106948U;
  t5_reg_ranges[130] = 107004U;
  t5_reg_ranges[131] = 107004U;
  t5_reg_ranges[132] = 122888U;
  t5_reg_ranges[133] = 122892U;
  t5_reg_ranges[134] = 122944U;
  t5_reg_ranges[135] = 122956U;
  t5_reg_ranges[136] = 123524U;
  t5_reg_ranges[137] = 123536U;
  t5_reg_ranges[138] = 123584U;
  t5_reg_ranges[139] = 123584U;
  t5_reg_ranges[140] = 123616U;
  t5_reg_ranges[141] = 123616U;
  t5_reg_ranges[142] = 123648U;
  t5_reg_ranges[143] = 123780U;
  t5_reg_ranges[144] = 123840U;
  t5_reg_ranges[145] = 123848U;
  t5_reg_ranges[146] = 123912U;
  t5_reg_ranges[147] = 123916U;
  t5_reg_ranges[148] = 123968U;
  t5_reg_ranges[149] = 123980U;
  t5_reg_ranges[150] = 124548U;
  t5_reg_ranges[151] = 124560U;
  t5_reg_ranges[152] = 124608U;
  t5_reg_ranges[153] = 124608U;
  t5_reg_ranges[154] = 124640U;
  t5_reg_ranges[155] = 124640U;
  t5_reg_ranges[156] = 124672U;
  t5_reg_ranges[157] = 124804U;
  t5_reg_ranges[158] = 124864U;
  t5_reg_ranges[159] = 124872U;
  t5_reg_ranges[160] = 124936U;
  t5_reg_ranges[161] = 124940U;
  t5_reg_ranges[162] = 124992U;
  t5_reg_ranges[163] = 125004U;
  t5_reg_ranges[164] = 125572U;
  t5_reg_ranges[165] = 125584U;
  t5_reg_ranges[166] = 125632U;
  t5_reg_ranges[167] = 125632U;
  t5_reg_ranges[168] = 125664U;
  t5_reg_ranges[169] = 125664U;
  t5_reg_ranges[170] = 125696U;
  t5_reg_ranges[171] = 125828U;
  t5_reg_ranges[172] = 125888U;
  t5_reg_ranges[173] = 125896U;
  t5_reg_ranges[174] = 125960U;
  t5_reg_ranges[175] = 125964U;
  t5_reg_ranges[176] = 126016U;
  t5_reg_ranges[177] = 126028U;
  t5_reg_ranges[178] = 126596U;
  t5_reg_ranges[179] = 126608U;
  t5_reg_ranges[180] = 126656U;
  t5_reg_ranges[181] = 126656U;
  t5_reg_ranges[182] = 126688U;
  t5_reg_ranges[183] = 126688U;
  t5_reg_ranges[184] = 126720U;
  t5_reg_ranges[185] = 126852U;
  t5_reg_ranges[186] = 126912U;
  t5_reg_ranges[187] = 126920U;
  t5_reg_ranges[188] = 126984U;
  t5_reg_ranges[189] = 126988U;
  t5_reg_ranges[190] = 127040U;
  t5_reg_ranges[191] = 127052U;
  t5_reg_ranges[192] = 127620U;
  t5_reg_ranges[193] = 127632U;
  t5_reg_ranges[194] = 127680U;
  t5_reg_ranges[195] = 127680U;
  t5_reg_ranges[196] = 127712U;
  t5_reg_ranges[197] = 127712U;
  t5_reg_ranges[198] = 127744U;
  t5_reg_ranges[199] = 127876U;
  t5_reg_ranges[200] = 127936U;
  t5_reg_ranges[201] = 127944U;
  t5_reg_ranges[202] = 128008U;
  t5_reg_ranges[203] = 128012U;
  t5_reg_ranges[204] = 128064U;
  t5_reg_ranges[205] = 128076U;
  t5_reg_ranges[206] = 128644U;
  t5_reg_ranges[207] = 128656U;
  t5_reg_ranges[208] = 128704U;
  t5_reg_ranges[209] = 128704U;
  t5_reg_ranges[210] = 128736U;
  t5_reg_ranges[211] = 128736U;
  t5_reg_ranges[212] = 128768U;
  t5_reg_ranges[213] = 128900U;
  t5_reg_ranges[214] = 128960U;
  t5_reg_ranges[215] = 128968U;
  t5_reg_ranges[216] = 129032U;
  t5_reg_ranges[217] = 129036U;
  t5_reg_ranges[218] = 129088U;
  t5_reg_ranges[219] = 129100U;
  t5_reg_ranges[220] = 129668U;
  t5_reg_ranges[221] = 129680U;
  t5_reg_ranges[222] = 129728U;
  t5_reg_ranges[223] = 129728U;
  t5_reg_ranges[224] = 129760U;
  t5_reg_ranges[225] = 129760U;
  t5_reg_ranges[226] = 129792U;
  t5_reg_ranges[227] = 129924U;
  t5_reg_ranges[228] = 129984U;
  t5_reg_ranges[229] = 129992U;
  t5_reg_ranges[230] = 130056U;
  t5_reg_ranges[231] = 130060U;
  t5_reg_ranges[232] = 130112U;
  t5_reg_ranges[233] = 130124U;
  t5_reg_ranges[234] = 130692U;
  t5_reg_ranges[235] = 130704U;
  t5_reg_ranges[236] = 130752U;
  t5_reg_ranges[237] = 130752U;
  t5_reg_ranges[238] = 130784U;
  t5_reg_ranges[239] = 130784U;
  t5_reg_ranges[240] = 130816U;
  t5_reg_ranges[241] = 130948U;
  t5_reg_ranges[242] = 131008U;
  t5_reg_ranges[243] = 131016U;
  t5_reg_ranges[244] = 196608U;
  t5_reg_ranges[245] = 196656U;
  t5_reg_ranges[246] = 196864U;
  t5_reg_ranges[247] = 196932U;
  t5_reg_ranges[248] = 197008U;
  t5_reg_ranges[249] = 197072U;
  t5_reg_ranges[250] = 197120U;
  t5_reg_ranges[251] = 197400U;
  t5_reg_ranges[252] = 197632U;
  t5_reg_ranges[253] = 197932U;
  t5_reg_ranges[254] = 197952U;
  t5_reg_ranges[255] = 198172U;
  t5_reg_ranges[256] = 198656U;
  t5_reg_ranges[257] = 198708U;
  t5_reg_ranges[258] = 198848U;
  t5_reg_ranges[259] = 198920U;
  t5_reg_ranges[260] = 198928U;
  t5_reg_ranges[261] = 199084U;
  t5_reg_ranges[262] = 199168U;
  t5_reg_ranges[263] = 199172U;
  t5_reg_ranges[264] = 199180U;
  t5_reg_ranges[265] = 199212U;
  t5_reg_ranges[266] = 199236U;
  t5_reg_ranges[267] = 199248U;
  t5_reg_ranges[268] = 199284U;
  t5_reg_ranges[269] = 199716U;
  t5_reg_ranges[270] = 199944U;
  t5_reg_ranges[271] = 199956U;
  t5_reg_ranges[272] = 199964U;
  t5_reg_ranges[273] = 199968U;
  t5_reg_ranges[274] = 199996U;
  t5_reg_ranges[275] = 200016U;
  t5_reg_ranges[276] = 201216U;
  t5_reg_ranges[277] = 201228U;
  t5_reg_ranges[278] = 201248U;
  t5_reg_ranges[279] = 201248U;
  t5_reg_ranges[280] = 201280U;
  t5_reg_ranges[281] = 201280U;
  t5_reg_ranges[282] = 202240U;
  t5_reg_ranges[283] = 202240U;
  t5_reg_ranges[284] = 202248U;
  t5_reg_ranges[285] = 202252U;
  t5_reg_ranges[286] = 203264U;
  t5_reg_ranges[287] = 203292U;
  t5_reg_ranges[288] = 204292U;
  t5_reg_ranges[289] = 204320U;
  t5_reg_ranges[290] = 204344U;
  t5_reg_ranges[291] = 204348U;
  t5_reg_ranges[292] = 204416U;
  t5_reg_ranges[293] = 204416U;
  t5_reg_ranges[294] = 204424U;
  t5_reg_ranges[295] = 204456U;
  t5_reg_ranges[296] = 204464U;
  t5_reg_ranges[297] = 204468U;
  t5_reg_ranges[298] = 204488U;
  t5_reg_ranges[299] = 204500U;
  t5_reg_ranges[300] = 204728U;
  t5_reg_ranges[301] = 204804U;
  t5_reg_ranges[302] = 205320U;
  t5_reg_ranges[303] = 205372U;
  t5_reg_ranges[304] = 206336U;
  t5_reg_ranges[305] = 206384U;
  t5_reg_ranges[306] = 207360U;
  t5_reg_ranges[307] = 207548U;
  t5_reg_ranges[308] = 207616U;
  t5_reg_ranges[309] = 207728U;
  t5_reg_ranges[310] = 208896U;
  t5_reg_ranges[311] = 208968U;
  t5_reg_ranges[312] = 208992U;
  t5_reg_ranges[313] = 209052U;
  t5_reg_ranges[314] = 209136U;
  t5_reg_ranges[315] = 209224U;
  t5_reg_ranges[316] = 209248U;
  t5_reg_ranges[317] = 209308U;
  t5_reg_ranges[318] = 209392U;
  t5_reg_ranges[319] = 209636U;
  t5_reg_ranges[320] = 209656U;
  t5_reg_ranges[321] = 209892U;
  t5_reg_ranges[322] = 209912U;
  t5_reg_ranges[323] = 209992U;
  t5_reg_ranges[324] = 210016U;
  t5_reg_ranges[325] = 210076U;
  t5_reg_ranges[326] = 210160U;
  t5_reg_ranges[327] = 210248U;
  t5_reg_ranges[328] = 210272U;
  t5_reg_ranges[329] = 210332U;
  t5_reg_ranges[330] = 210416U;
  t5_reg_ranges[331] = 210660U;
  t5_reg_ranges[332] = 210680U;
  t5_reg_ranges[333] = 210916U;
  t5_reg_ranges[334] = 210936U;
  t5_reg_ranges[335] = 210940U;
  t5_reg_ranges[336] = 210964U;
  t5_reg_ranges[337] = 210964U;
  t5_reg_ranges[338] = 210988U;
  t5_reg_ranges[339] = 210988U;
  t5_reg_ranges[340] = 211072U;
  t5_reg_ranges[341] = 211084U;
  t5_reg_ranges[342] = 211176U;
  t5_reg_ranges[343] = 211180U;
  t5_reg_ranges[344] = 211200U;
  t5_reg_ranges[345] = 211272U;
  t5_reg_ranges[346] = 211296U;
  t5_reg_ranges[347] = 211356U;
  t5_reg_ranges[348] = 211440U;
  t5_reg_ranges[349] = 211684U;
  t5_reg_ranges[350] = 211704U;
  t5_reg_ranges[351] = 211728U;
  t5_reg_ranges[352] = 211752U;
  t5_reg_ranges[353] = 211752U;
  t5_reg_ranges[354] = 211772U;
  t5_reg_ranges[355] = 211792U;
  t5_reg_ranges[356] = 211952U;
  t5_reg_ranges[357] = 211984U;
  t5_reg_ranges[358] = 212008U;
  t5_reg_ranges[359] = 212008U;
  t5_reg_ranges[360] = 212028U;
  t5_reg_ranges[361] = 212048U;
  t5_reg_ranges[362] = 212208U;
  t5_reg_ranges[363] = 212220U;
  t5_reg_ranges[364] = 212992U;
  t5_reg_ranges[365] = 213040U;
  t5_reg_ranges[366] = 213248U;
  t5_reg_ranges[367] = 213316U;
  t5_reg_ranges[368] = 213392U;
  t5_reg_ranges[369] = 213456U;
  t5_reg_ranges[370] = 213504U;
  t5_reg_ranges[371] = 213784U;
  t5_reg_ranges[372] = 214016U;
  t5_reg_ranges[373] = 214316U;
  t5_reg_ranges[374] = 214336U;
  t5_reg_ranges[375] = 214556U;
  t5_reg_ranges[376] = 215040U;
  t5_reg_ranges[377] = 215092U;
  t5_reg_ranges[378] = 215232U;
  t5_reg_ranges[379] = 215304U;
  t5_reg_ranges[380] = 215312U;
  t5_reg_ranges[381] = 215468U;
  t5_reg_ranges[382] = 215552U;
  t5_reg_ranges[383] = 215556U;
  t5_reg_ranges[384] = 215564U;
  t5_reg_ranges[385] = 215596U;
  t5_reg_ranges[386] = 215620U;
  t5_reg_ranges[387] = 215632U;
  t5_reg_ranges[388] = 215668U;
  t5_reg_ranges[389] = 216100U;
  t5_reg_ranges[390] = 216328U;
  t5_reg_ranges[391] = 216340U;
  t5_reg_ranges[392] = 216348U;
  t5_reg_ranges[393] = 216352U;
  t5_reg_ranges[394] = 216380U;
  t5_reg_ranges[395] = 216400U;
  t5_reg_ranges[396] = 217600U;
  t5_reg_ranges[397] = 217612U;
  t5_reg_ranges[398] = 217632U;
  t5_reg_ranges[399] = 217632U;
  t5_reg_ranges[400] = 217664U;
  t5_reg_ranges[401] = 217664U;
  t5_reg_ranges[402] = 218624U;
  t5_reg_ranges[403] = 218624U;
  t5_reg_ranges[404] = 218632U;
  t5_reg_ranges[405] = 218636U;
  t5_reg_ranges[406] = 219648U;
  t5_reg_ranges[407] = 219676U;
  t5_reg_ranges[408] = 220676U;
  t5_reg_ranges[409] = 220704U;
  t5_reg_ranges[410] = 220728U;
  t5_reg_ranges[411] = 220732U;
  t5_reg_ranges[412] = 220800U;
  t5_reg_ranges[413] = 220800U;
  t5_reg_ranges[414] = 220808U;
  t5_reg_ranges[415] = 220840U;
  t5_reg_ranges[416] = 220848U;
  t5_reg_ranges[417] = 220852U;
  t5_reg_ranges[418] = 220872U;
  t5_reg_ranges[419] = 220884U;
  t5_reg_ranges[420] = 221112U;
  t5_reg_ranges[421] = 221188U;
  t5_reg_ranges[422] = 221704U;
  t5_reg_ranges[423] = 221756U;
  t5_reg_ranges[424] = 222720U;
  t5_reg_ranges[425] = 222768U;
  t5_reg_ranges[426] = 223744U;
  t5_reg_ranges[427] = 223932U;
  t5_reg_ranges[428] = 224000U;
  t5_reg_ranges[429] = 224112U;
  t5_reg_ranges[430] = 225280U;
  t5_reg_ranges[431] = 225352U;
  t5_reg_ranges[432] = 225376U;
  t5_reg_ranges[433] = 225436U;
  t5_reg_ranges[434] = 225520U;
  t5_reg_ranges[435] = 225608U;
  t5_reg_ranges[436] = 225632U;
  t5_reg_ranges[437] = 225692U;
  t5_reg_ranges[438] = 225776U;
  t5_reg_ranges[439] = 226020U;
  t5_reg_ranges[440] = 226040U;
  t5_reg_ranges[441] = 226276U;
  t5_reg_ranges[442] = 226296U;
  t5_reg_ranges[443] = 226376U;
  t5_reg_ranges[444] = 226400U;
  t5_reg_ranges[445] = 226460U;
  t5_reg_ranges[446] = 226544U;
  t5_reg_ranges[447] = 226632U;
  t5_reg_ranges[448] = 226656U;
  t5_reg_ranges[449] = 226716U;
  t5_reg_ranges[450] = 226800U;
  t5_reg_ranges[451] = 227044U;
  t5_reg_ranges[452] = 227064U;
  t5_reg_ranges[453] = 227300U;
  t5_reg_ranges[454] = 227320U;
  t5_reg_ranges[455] = 227324U;
  t5_reg_ranges[456] = 227348U;
  t5_reg_ranges[457] = 227348U;
  t5_reg_ranges[458] = 227372U;
  t5_reg_ranges[459] = 227372U;
  t5_reg_ranges[460] = 227456U;
  t5_reg_ranges[461] = 227468U;
  t5_reg_ranges[462] = 227560U;
  t5_reg_ranges[463] = 227564U;
  t5_reg_ranges[464] = 227584U;
  t5_reg_ranges[465] = 227656U;
  t5_reg_ranges[466] = 227680U;
  t5_reg_ranges[467] = 227740U;
  t5_reg_ranges[468] = 227824U;
  t5_reg_ranges[469] = 228068U;
  t5_reg_ranges[470] = 228088U;
  t5_reg_ranges[471] = 228112U;
  t5_reg_ranges[472] = 228136U;
  t5_reg_ranges[473] = 228136U;
  t5_reg_ranges[474] = 228156U;
  t5_reg_ranges[475] = 228176U;
  t5_reg_ranges[476] = 228336U;
  t5_reg_ranges[477] = 228368U;
  t5_reg_ranges[478] = 228392U;
  t5_reg_ranges[479] = 228392U;
  t5_reg_ranges[480] = 228412U;
  t5_reg_ranges[481] = 228432U;
  t5_reg_ranges[482] = 228592U;
  t5_reg_ranges[483] = 228604U;
  t5_reg_ranges[484] = 229376U;
  t5_reg_ranges[485] = 229424U;
  t5_reg_ranges[486] = 229632U;
  t5_reg_ranges[487] = 229700U;
  t5_reg_ranges[488] = 229776U;
  t5_reg_ranges[489] = 229840U;
  t5_reg_ranges[490] = 229888U;
  t5_reg_ranges[491] = 230168U;
  t5_reg_ranges[492] = 230400U;
  t5_reg_ranges[493] = 230700U;
  t5_reg_ranges[494] = 230720U;
  t5_reg_ranges[495] = 230940U;
  t5_reg_ranges[496] = 231424U;
  t5_reg_ranges[497] = 231476U;
  t5_reg_ranges[498] = 231616U;
  t5_reg_ranges[499] = 231688U;
  t5_reg_ranges[500] = 231696U;
  t5_reg_ranges[501] = 231852U;
  t5_reg_ranges[502] = 231936U;
  t5_reg_ranges[503] = 231940U;
  t5_reg_ranges[504] = 231948U;
  t5_reg_ranges[505] = 231980U;
  t5_reg_ranges[506] = 232004U;
  t5_reg_ranges[507] = 232016U;
  t5_reg_ranges[508] = 232052U;
  t5_reg_ranges[509] = 232484U;
  t5_reg_ranges[510] = 232712U;
  t5_reg_ranges[511] = 232724U;
  t5_reg_ranges[512] = 232732U;
  t5_reg_ranges[513] = 232736U;
  t5_reg_ranges[514] = 232764U;
  t5_reg_ranges[515] = 232784U;
  t5_reg_ranges[516] = 233984U;
  t5_reg_ranges[517] = 233996U;
  t5_reg_ranges[518] = 234016U;
  t5_reg_ranges[519] = 234016U;
  t5_reg_ranges[520] = 234048U;
  t5_reg_ranges[521] = 234048U;
  t5_reg_ranges[522] = 235008U;
  t5_reg_ranges[523] = 235008U;
  t5_reg_ranges[524] = 235016U;
  t5_reg_ranges[525] = 235020U;
  t5_reg_ranges[526] = 236032U;
  t5_reg_ranges[527] = 236060U;
  t5_reg_ranges[528] = 237060U;
  t5_reg_ranges[529] = 237088U;
  t5_reg_ranges[530] = 237112U;
  t5_reg_ranges[531] = 237116U;
  t5_reg_ranges[532] = 237184U;
  t5_reg_ranges[533] = 237184U;
  t5_reg_ranges[534] = 237192U;
  t5_reg_ranges[535] = 237224U;
  t5_reg_ranges[536] = 237232U;
  t5_reg_ranges[537] = 237236U;
  t5_reg_ranges[538] = 237256U;
  t5_reg_ranges[539] = 237268U;
  t5_reg_ranges[540] = 237496U;
  t5_reg_ranges[541] = 237572U;
  t5_reg_ranges[542] = 238088U;
  t5_reg_ranges[543] = 238140U;
  t5_reg_ranges[544] = 239104U;
  t5_reg_ranges[545] = 239152U;
  t5_reg_ranges[546] = 240128U;
  t5_reg_ranges[547] = 240316U;
  t5_reg_ranges[548] = 240384U;
  t5_reg_ranges[549] = 240496U;
  t5_reg_ranges[550] = 241664U;
  t5_reg_ranges[551] = 241736U;
  t5_reg_ranges[552] = 241760U;
  t5_reg_ranges[553] = 241820U;
  t5_reg_ranges[554] = 241904U;
  t5_reg_ranges[555] = 241992U;
  t5_reg_ranges[556] = 242016U;
  t5_reg_ranges[557] = 242076U;
  t5_reg_ranges[558] = 242160U;
  t5_reg_ranges[559] = 242404U;
  t5_reg_ranges[560] = 242424U;
  t5_reg_ranges[561] = 242660U;
  t5_reg_ranges[562] = 242680U;
  t5_reg_ranges[563] = 242760U;
  t5_reg_ranges[564] = 242784U;
  t5_reg_ranges[565] = 242844U;
  t5_reg_ranges[566] = 242928U;
  t5_reg_ranges[567] = 243016U;
  t5_reg_ranges[568] = 243040U;
  t5_reg_ranges[569] = 243100U;
  t5_reg_ranges[570] = 243184U;
  t5_reg_ranges[571] = 243428U;
  t5_reg_ranges[572] = 243448U;
  t5_reg_ranges[573] = 243684U;
  t5_reg_ranges[574] = 243704U;
  t5_reg_ranges[575] = 243708U;
  t5_reg_ranges[576] = 243732U;
  t5_reg_ranges[577] = 243732U;
  t5_reg_ranges[578] = 243756U;
  t5_reg_ranges[579] = 243756U;
  t5_reg_ranges[580] = 243840U;
  t5_reg_ranges[581] = 243852U;
  t5_reg_ranges[582] = 243944U;
  t5_reg_ranges[583] = 243948U;
  t5_reg_ranges[584] = 243968U;
  t5_reg_ranges[585] = 244040U;
  t5_reg_ranges[586] = 244064U;
  t5_reg_ranges[587] = 244124U;
  t5_reg_ranges[588] = 244208U;
  t5_reg_ranges[589] = 244452U;
  t5_reg_ranges[590] = 244472U;
  t5_reg_ranges[591] = 244496U;
  t5_reg_ranges[592] = 244520U;
  t5_reg_ranges[593] = 244520U;
  t5_reg_ranges[594] = 244540U;
  t5_reg_ranges[595] = 244560U;
  t5_reg_ranges[596] = 244720U;
  t5_reg_ranges[597] = 244752U;
  t5_reg_ranges[598] = 244776U;
  t5_reg_ranges[599] = 244776U;
  t5_reg_ranges[600] = 244796U;
  t5_reg_ranges[601] = 244816U;
  t5_reg_ranges[602] = 244976U;
  t5_reg_ranges[603] = 244988U;
  t5_reg_ranges[604] = 245760U;
  t5_reg_ranges[605] = 245808U;
  t5_reg_ranges[606] = 246016U;
  t5_reg_ranges[607] = 246084U;
  t5_reg_ranges[608] = 246160U;
  t5_reg_ranges[609] = 246224U;
  t5_reg_ranges[610] = 246272U;
  t5_reg_ranges[611] = 246552U;
  t5_reg_ranges[612] = 246784U;
  t5_reg_ranges[613] = 247084U;
  t5_reg_ranges[614] = 247104U;
  t5_reg_ranges[615] = 247324U;
  t5_reg_ranges[616] = 247808U;
  t5_reg_ranges[617] = 247860U;
  t5_reg_ranges[618] = 248000U;
  t5_reg_ranges[619] = 248072U;
  t5_reg_ranges[620] = 248080U;
  t5_reg_ranges[621] = 248236U;
  t5_reg_ranges[622] = 248320U;
  t5_reg_ranges[623] = 248324U;
  t5_reg_ranges[624] = 248332U;
  t5_reg_ranges[625] = 248364U;
  t5_reg_ranges[626] = 248388U;
  t5_reg_ranges[627] = 248400U;
  t5_reg_ranges[628] = 248436U;
  t5_reg_ranges[629] = 248868U;
  t5_reg_ranges[630] = 249096U;
  t5_reg_ranges[631] = 249108U;
  t5_reg_ranges[632] = 249116U;
  t5_reg_ranges[633] = 249120U;
  t5_reg_ranges[634] = 249148U;
  t5_reg_ranges[635] = 249168U;
  t5_reg_ranges[636] = 250368U;
  t5_reg_ranges[637] = 250380U;
  t5_reg_ranges[638] = 250400U;
  t5_reg_ranges[639] = 250400U;
  t5_reg_ranges[640] = 250432U;
  t5_reg_ranges[641] = 250432U;
  t5_reg_ranges[642] = 251392U;
  t5_reg_ranges[643] = 251392U;
  t5_reg_ranges[644] = 251400U;
  t5_reg_ranges[645] = 251404U;
  t5_reg_ranges[646] = 252416U;
  t5_reg_ranges[647] = 252444U;
  t5_reg_ranges[648] = 253444U;
  t5_reg_ranges[649] = 253472U;
  t5_reg_ranges[650] = 253496U;
  t5_reg_ranges[651] = 253500U;
  t5_reg_ranges[652] = 253568U;
  t5_reg_ranges[653] = 253568U;
  t5_reg_ranges[654] = 253576U;
  t5_reg_ranges[655] = 253608U;
  t5_reg_ranges[656] = 253616U;
  t5_reg_ranges[657] = 253620U;
  t5_reg_ranges[658] = 253640U;
  t5_reg_ranges[659] = 253652U;
  t5_reg_ranges[660] = 253880U;
  t5_reg_ranges[661] = 253956U;
  t5_reg_ranges[662] = 254472U;
  t5_reg_ranges[663] = 254524U;
  t5_reg_ranges[664] = 255488U;
  t5_reg_ranges[665] = 255536U;
  t5_reg_ranges[666] = 256512U;
  t5_reg_ranges[667] = 256700U;
  t5_reg_ranges[668] = 256768U;
  t5_reg_ranges[669] = 256880U;
  t5_reg_ranges[670] = 258048U;
  t5_reg_ranges[671] = 258120U;
  t5_reg_ranges[672] = 258144U;
  t5_reg_ranges[673] = 258204U;
  t5_reg_ranges[674] = 258288U;
  t5_reg_ranges[675] = 258376U;
  t5_reg_ranges[676] = 258400U;
  t5_reg_ranges[677] = 258460U;
  t5_reg_ranges[678] = 258544U;
  t5_reg_ranges[679] = 258788U;
  t5_reg_ranges[680] = 258808U;
  t5_reg_ranges[681] = 259044U;
  t5_reg_ranges[682] = 259064U;
  t5_reg_ranges[683] = 259144U;
  t5_reg_ranges[684] = 259168U;
  t5_reg_ranges[685] = 259228U;
  t5_reg_ranges[686] = 259312U;
  t5_reg_ranges[687] = 259400U;
  t5_reg_ranges[688] = 259424U;
  t5_reg_ranges[689] = 259484U;
  t5_reg_ranges[690] = 259568U;
  t5_reg_ranges[691] = 259812U;
  t5_reg_ranges[692] = 259832U;
  t5_reg_ranges[693] = 260068U;
  t5_reg_ranges[694] = 260088U;
  t5_reg_ranges[695] = 260092U;
  t5_reg_ranges[696] = 260116U;
  t5_reg_ranges[697] = 260116U;
  t5_reg_ranges[698] = 260140U;
  t5_reg_ranges[699] = 260140U;
  t5_reg_ranges[700] = 260224U;
  t5_reg_ranges[701] = 260236U;
  t5_reg_ranges[702] = 260328U;
  t5_reg_ranges[703] = 260332U;
  t5_reg_ranges[704] = 260352U;
  t5_reg_ranges[705] = 260424U;
  t5_reg_ranges[706] = 260448U;
  t5_reg_ranges[707] = 260508U;
  t5_reg_ranges[708] = 260592U;
  t5_reg_ranges[709] = 260836U;
  t5_reg_ranges[710] = 260856U;
  t5_reg_ranges[711] = 260880U;
  t5_reg_ranges[712] = 260904U;
  t5_reg_ranges[713] = 260904U;
  t5_reg_ranges[714] = 260924U;
  t5_reg_ranges[715] = 260944U;
  t5_reg_ranges[716] = 261104U;
  t5_reg_ranges[717] = 261136U;
  t5_reg_ranges[718] = 261160U;
  t5_reg_ranges[719] = 261160U;
  t5_reg_ranges[720] = 261180U;
  t5_reg_ranges[721] = 261200U;
  t5_reg_ranges[722] = 261360U;
  t5_reg_ranges[723] = 261372U;
  t5_reg_ranges[724] = 262144U;
  t5_reg_ranges[725] = 262156U;
  t5_reg_ranges[726] = 262208U;
  t5_reg_ranges[727] = 262248U;
  t5_reg_ranges[728] = 262272U;
  t5_reg_ranges[729] = 262468U;
  t5_reg_ranges[730] = 262528U;
  t5_reg_ranges[731] = 262540U;
  t5_reg_ranges[732] = 262656U;
  t5_reg_ranges[733] = 262808U;
  t5_reg_ranges[734] = 262828U;
  t5_reg_ranges[735] = 262972U;
  t5_reg_ranges[736] = 263160U;
  t5_reg_ranges[737] = 263164U;
  t5_reg_ranges[738] = 267008U;
  t5_reg_ranges[739] = 267204U;
  t5_reg_ranges[740] = 267264U;
  t5_reg_ranges[741] = 267292U;
  t5_reg_ranges[742] = 267392U;
  t5_reg_ranges[743] = 267472U;
  t5_reg_ranges[744] = 278528U;
  t5_reg_ranges[745] = 278648U;
  t5_reg_ranges[746] = 278720U;
  t5_reg_ranges[747] = 279160U;
  t5_reg_ranges[748] = 279232U;
  t5_reg_ranges[749] = 279672U;
  t5_reg_ranges[750] = 279744U;
  t5_reg_ranges[751] = 280184U;
  t5_reg_ranges[752] = 280256U;
  t5_reg_ranges[753] = 280696U;
  t5_reg_ranges[754] = 280768U;
  t5_reg_ranges[755] = 281084U;
  t5_reg_ranges[756] = 282624U;
  t5_reg_ranges[757] = 282728U;
  t5_reg_ranges[758] = 282752U;
  t5_reg_ranges[759] = 282756U;
  t5_reg_ranges[760] = 282784U;
  t5_reg_ranges[761] = 282800U;
  t5_reg_ranges[762] = 283136U;
  t5_reg_ranges[763] = 283240U;
  t5_reg_ranges[764] = 283264U;
  t5_reg_ranges[765] = 283268U;
  t5_reg_ranges[766] = 283296U;
  t5_reg_ranges[767] = 283312U;
  t5_reg_ranges[768] = 286912U;
  t5_reg_ranges[769] = 286948U;
  t5_reg_ranges[770] = 290816U;
  t5_reg_ranges[771] = 290956U;
  t5_reg_ranges[772] = 291328U;
  t5_reg_ranges[773] = 291408U;
  t5_reg_ranges[774] = 291840U;
  t5_reg_ranges[775] = 291872U;
  t5_reg_ranges[776] = 292352U;
  t5_reg_ranges[777] = 292376U;
  t5_reg_ranges[778] = 292864U;
  t5_reg_ranges[779] = 292884U;
  t5_reg_ranges[780] = 294912U;
  t5_reg_ranges[781] = 294924U;
  t5_reg_ranges[782] = 294976U;
  t5_reg_ranges[783] = 295016U;
  t5_reg_ranges[784] = 295040U;
  t5_reg_ranges[785] = 295236U;
  t5_reg_ranges[786] = 295296U;
  t5_reg_ranges[787] = 295308U;
  t5_reg_ranges[788] = 295424U;
  t5_reg_ranges[789] = 295576U;
  t5_reg_ranges[790] = 295596U;
  t5_reg_ranges[791] = 295740U;
  t5_reg_ranges[792] = 295928U;
  t5_reg_ranges[793] = 295932U;
  t5_reg_ranges[794] = 299776U;
  t5_reg_ranges[795] = 299972U;
  t5_reg_ranges[796] = 300032U;
  t5_reg_ranges[797] = 300060U;
  t5_reg_ranges[798] = 300160U;
  t5_reg_ranges[799] = 300240U;
  t5_reg_ranges[800] = 311296U;
  t5_reg_ranges[801] = 311416U;
  t5_reg_ranges[802] = 311488U;
  t5_reg_ranges[803] = 311928U;
  t5_reg_ranges[804] = 312000U;
  t5_reg_ranges[805] = 312440U;
  t5_reg_ranges[806] = 312512U;
  t5_reg_ranges[807] = 312952U;
  t5_reg_ranges[808] = 313024U;
  t5_reg_ranges[809] = 313464U;
  t5_reg_ranges[810] = 313536U;
  t5_reg_ranges[811] = 313852U;
  t5_reg_ranges[812] = 315392U;
  t5_reg_ranges[813] = 315496U;
  t5_reg_ranges[814] = 315520U;
  t5_reg_ranges[815] = 315524U;
  t5_reg_ranges[816] = 315552U;
  t5_reg_ranges[817] = 315568U;
  t5_reg_ranges[818] = 315904U;
  t5_reg_ranges[819] = 316008U;
  t5_reg_ranges[820] = 316032U;
  t5_reg_ranges[821] = 316036U;
  t5_reg_ranges[822] = 316064U;
  t5_reg_ranges[823] = 316080U;
  t5_reg_ranges[824] = 319680U;
  t5_reg_ranges[825] = 319716U;
  t5_reg_ranges[826] = 323584U;
  t5_reg_ranges[827] = 323724U;
  t5_reg_ranges[828] = 324096U;
  t5_reg_ranges[829] = 324176U;
  t5_reg_ranges[830] = 324608U;
  t5_reg_ranges[831] = 324640U;
  t5_reg_ranges[832] = 325120U;
  t5_reg_ranges[833] = 325144U;
  t5_reg_ranges[834] = 325632U;
  t5_reg_ranges[835] = 325652U;
  t5_reg_ranges[836] = 327680U;
  t5_reg_ranges[837] = 327884U;
  t5_reg_ranges[838] = 328704U;
  t5_reg_ranges[839] = 328704U;
  t5_reg_ranges[840] = 329728U;
  t5_reg_ranges[841] = 329932U;
  t5_reg_ranges[842] = 330752U;
  t5_reg_ranges[843] = 330752U;
  t5_reg_ranges[844] = 331776U;
  t5_reg_ranges[845] = 331804U;
  t5_reg_ranges[846] = 332544U;
  t5_reg_ranges[847] = 332552U;
  tmp = netdev2adap((struct net_device const *)dev);
  ap = tmp;
  arr_size = 0;
  buf_size = 0;
  tmp___0 = is_t4(ap->params.chip);
  }
  if (tmp___0 != 0) {
    reg_ranges = (unsigned int const *)(& t4_reg_ranges);
    arr_size = 434;
    buf_size = 163840;
  } else {
    reg_ranges = (unsigned int const *)(& t5_reg_ranges);
    arr_size = 848;
    buf_size = 339968;
  }
  {
  regs->version = mk_adap_vers((struct adapter const *)ap);
  memset(buf, 0, (size_t )buf_size);
  i = 0;
  }
  goto ldv_54492;
  ldv_54491:
  {
  reg_block_dump(ap, buf, *(reg_ranges + (unsigned long )i), *(reg_ranges + ((unsigned long )i + 1UL)));
  i = i + 2;
  }
  ldv_54492: ;
  if (i < arr_size) {
    goto ldv_54491;
  } else {
  }
  return;
}
}
static int restart_autoneg(struct net_device *dev )
{
  struct port_info *p ;
  void *tmp ;
  bool tmp___0 ;
  int tmp___1 ;
  {
  {
  tmp = netdev_priv((struct net_device const *)dev);
  p = (struct port_info *)tmp;
  tmp___0 = netif_running((struct net_device const *)dev);
  }
  if (tmp___0) {
    tmp___1 = 0;
  } else {
    tmp___1 = 1;
  }
  if (tmp___1) {
    return (-11);
  } else {
  }
  if ((unsigned int )p->link_cfg.autoneg != 1U) {
    return (-22);
  } else {
  }
  {
  t4_restart_aneg(p->adapter, (p->adapter)->fn, (unsigned int )p->tx_chan);
  }
  return (0);
}
}
static int identify_port(struct net_device *dev , enum ethtool_phys_id_state state )
{
  unsigned int val ;
  struct adapter *adap ;
  struct adapter *tmp ;
  struct port_info *tmp___0 ;
  int tmp___1 ;
  {
  {
  tmp = netdev2adap((struct net_device const *)dev);
  adap = tmp;
  }
  if ((unsigned int )state == 1U) {
    val = 65535U;
  } else
  if ((unsigned int )state == 0U) {
    val = 0U;
  } else {
    return (-22);
  }
  {
  tmp___0 = netdev2pinfo((struct net_device const *)dev);
  tmp___1 = t4_identify_port(adap, adap->fn, (unsigned int )tmp___0->viid, val);
  }
  return (tmp___1);
}
}
static unsigned int from_fw_linkcaps(unsigned int type , unsigned int caps )
{
  unsigned int v ;
  {
  v = 0U;
  if (type - 2U <= 2U) {
    v = v | 128U;
    if ((int )caps & 1) {
      v = v | 8U;
    } else {
    }
    if ((caps & 2U) != 0U) {
      v = v | 32U;
    } else {
    }
    if ((caps & 8U) != 0U) {
      v = v | 4096U;
    } else {
    }
  } else
  if (type == 5U || type == 7U) {
    v = v | 65536U;
    if ((caps & 2U) != 0U) {
      v = v | 131072U;
    } else {
    }
    if ((caps & 8U) != 0U) {
      v = v | 262144U;
    } else {
    }
  } else
  if (type == 8U) {
    v = v | 589824U;
  } else
  if (type == 10U) {
    v = v | 1769472U;
  } else
  if (type == 11U) {
    v = v | 2031616U;
  } else
  if (type <= 1U || type == 9U) {
    v = v | 1024U;
  } else {
  }
  if ((caps & 256U) != 0U) {
    v = v | 64U;
  } else {
  }
  return (v);
}
}
static unsigned int to_fw_linkcaps(unsigned int caps )
{
  unsigned int v ;
  {
  v = 0U;
  if ((caps & 8U) != 0U) {
    v = v | 1U;
  } else {
  }
  if ((caps & 32U) != 0U) {
    v = v | 2U;
  } else {
  }
  if ((caps & 4096U) != 0U) {
    v = v | 8U;
  } else {
  }
  return (v);
}
}
static int get_settings(struct net_device *dev , struct ethtool_cmd *cmd )
{
  struct port_info const *p ;
  void *tmp ;
  bool tmp___0 ;
  {
  {
  tmp = netdev_priv((struct net_device const *)dev);
  p = (struct port_info const *)tmp;
  }
  if ((unsigned int )p->port_type - 2U <= 2U) {
    cmd->port = 0U;
  } else
  if ((unsigned int )p->port_type <= 1U) {
    cmd->port = 3U;
  } else
  if ((unsigned int )((unsigned char )p->port_type) == 9U) {
    if ((unsigned int )p->mod_type - 4U <= 1U) {
      cmd->port = 5U;
    } else {
      cmd->port = 3U;
    }
  } else {
    cmd->port = 255U;
  }
  if ((int )((signed char )p->mdio_addr) >= 0) {
    cmd->phy_address = (__u8 )p->mdio_addr;
    cmd->transceiver = 1U;
    cmd->mdio_support = (unsigned int )((unsigned char )p->port_type) == 2U ? 1U : 2U;
  } else {
    cmd->phy_address = 0U;
    cmd->transceiver = 0U;
    cmd->mdio_support = 0U;
  }
  {
  cmd->supported = from_fw_linkcaps((unsigned int )p->port_type, (unsigned int )p->link_cfg.supported);
  cmd->advertising = from_fw_linkcaps((unsigned int )p->port_type, (unsigned int )p->link_cfg.advertising);
  tmp___0 = netif_carrier_ok((struct net_device const *)dev);
  ethtool_cmd_speed_set(cmd, (int )tmp___0 ? (__u32 )p->link_cfg.speed : 0U);
  cmd->duplex = 1U;
  cmd->autoneg = p->link_cfg.autoneg;
  cmd->maxtxpkt = 0U;
  cmd->maxrxpkt = 0U;
  }
  return (0);
}
}
static unsigned int speed_to_caps(int speed )
{
  {
  if (speed == 100) {
    return (1U);
  } else {
  }
  if (speed == 1000) {
    return (2U);
  } else {
  }
  if (speed == 10000) {
    return (8U);
  } else {
  }
  return (0U);
}
}
static int set_settings(struct net_device *dev , struct ethtool_cmd *cmd )
{
  unsigned int cap ;
  struct port_info *p ;
  void *tmp ;
  struct link_config *lc ;
  u32 speed ;
  __u32 tmp___0 ;
  unsigned int tmp___1 ;
  int tmp___2 ;
  bool tmp___3 ;
  {
  {
  tmp = netdev_priv((struct net_device const *)dev);
  p = (struct port_info *)tmp;
  lc = & p->link_cfg;
  tmp___0 = ethtool_cmd_speed((struct ethtool_cmd const *)cmd);
  speed = tmp___0;
  }
  if ((unsigned int )cmd->duplex != 1U) {
    return (-22);
  } else {
  }
  if (((int )lc->supported & 256) == 0) {
    if ((unsigned int )cmd->autoneg == 0U) {
      {
      tmp___1 = speed_to_caps((int )speed);
      }
      if (((unsigned int )lc->supported & tmp___1) != 0U) {
        return (0);
      } else {
      }
    } else {
    }
    return (-22);
  } else {
  }
  if ((unsigned int )cmd->autoneg == 0U) {
    {
    cap = speed_to_caps((int )speed);
    }
    if ((((unsigned int )lc->supported & cap) == 0U || speed == 1000U) || speed == 10000U) {
      return (-22);
    } else {
    }
    lc->requested_speed = (unsigned short )cap;
    lc->advertising = 0U;
  } else {
    {
    cap = to_fw_linkcaps(cmd->advertising);
    }
    if (((unsigned int )lc->supported & cap) == 0U) {
      return (-22);
    } else {
    }
    lc->requested_speed = 0U;
    lc->advertising = (unsigned int )((unsigned short )cap) | 256U;
  }
  {
  lc->autoneg = cmd->autoneg;
  tmp___3 = netif_running((struct net_device const *)dev);
  }
  if ((int )tmp___3) {
    {
    tmp___2 = t4_link_start(p->adapter, (p->adapter)->fn, (unsigned int )p->tx_chan,
                            lc);
    }
    return (tmp___2);
  } else {
  }
  return (0);
}
}
static void get_pauseparam(struct net_device *dev , struct ethtool_pauseparam *epause )
{
  struct port_info *p ;
  void *tmp ;
  {
  {
  tmp = netdev_priv((struct net_device const *)dev);
  p = (struct port_info *)tmp;
  epause->autoneg = ((int )p->link_cfg.requested_fc & 4) != 0;
  epause->rx_pause = (__u32 )p->link_cfg.fc & 1U;
  epause->tx_pause = ((int )p->link_cfg.fc & 2) != 0;
  }
  return;
}
}
static int set_pauseparam(struct net_device *dev , struct ethtool_pauseparam *epause )
{
  struct port_info *p ;
  void *tmp ;
  struct link_config *lc ;
  int tmp___0 ;
  bool tmp___1 ;
  {
  {
  tmp = netdev_priv((struct net_device const *)dev);
  p = (struct port_info *)tmp;
  lc = & p->link_cfg;
  }
  if (epause->autoneg == 0U) {
    lc->requested_fc = 0U;
  } else
  if (((int )lc->supported & 256) != 0) {
    lc->requested_fc = 4U;
  } else {
    return (-22);
  }
  if (epause->rx_pause != 0U) {
    lc->requested_fc = (unsigned int )lc->requested_fc | 1U;
  } else {
  }
  if (epause->tx_pause != 0U) {
    lc->requested_fc = (unsigned int )lc->requested_fc | 2U;
  } else {
  }
  {
  tmp___1 = netif_running((struct net_device const *)dev);
  }
  if ((int )tmp___1) {
    {
    tmp___0 = t4_link_start(p->adapter, (p->adapter)->fn, (unsigned int )p->tx_chan,
                            lc);
    }
    return (tmp___0);
  } else {
  }
  return (0);
}
}
static void get_sge_param(struct net_device *dev , struct ethtool_ringparam *e )
{
  struct port_info const *pi ;
  void *tmp ;
  struct sge const *s ;
  {
  {
  tmp = netdev_priv((struct net_device const *)dev);
  pi = (struct port_info const *)tmp;
  s = (struct sge const *)(& (pi->adapter)->sge);
  e->rx_max_pending = 16384U;
  e->rx_mini_max_pending = 16384U;
  e->rx_jumbo_max_pending = 0U;
  e->tx_max_pending = 16384U;
  e->rx_pending = (unsigned int )s->ethrxq[(int )pi->first_qset].fl.size - 8U;
  e->rx_mini_pending = s->ethrxq[(int )pi->first_qset].rspq.size;
  e->rx_jumbo_pending = 0U;
  e->tx_pending = s->ethtxq[(int )pi->first_qset].q.size;
  }
  return;
}
}
static int set_sge_param(struct net_device *dev , struct ethtool_ringparam *e )
{
  int i ;
  struct port_info const *pi ;
  void *tmp ;
  struct adapter *adapter ;
  struct sge *s ;
  {
  {
  tmp = netdev_priv((struct net_device const *)dev);
  pi = (struct port_info const *)tmp;
  adapter = pi->adapter;
  s = & adapter->sge;
  }
  if ((((((e->rx_pending > 16384U || e->rx_jumbo_pending != 0U) || e->tx_pending > 16384U) || e->rx_mini_pending > 16384U) || e->rx_mini_pending <= 127U) || e->rx_pending <= 15U) || e->tx_pending <= 31U) {
    return (-22);
  } else {
  }
  if ((int )adapter->flags & 1) {
    return (-16);
  } else {
  }
  i = 0;
  goto ldv_54555;
  ldv_54554:
  s->ethtxq[(int )pi->first_qset + i].q.size = e->tx_pending;
  s->ethrxq[(int )pi->first_qset + i].fl.size = e->rx_pending + 8U;
  s->ethrxq[(int )pi->first_qset + i].rspq.size = e->rx_mini_pending;
  i = i + 1;
  ldv_54555: ;
  if (i < (int )pi->nqsets) {
    goto ldv_54554;
  } else {
  }
  return (0);
}
}
static int closest_timer(struct sge const *s , int time )
{
  int i ;
  int delta ;
  int match ;
  int min_delta ;
  {
  match = 0;
  min_delta = 2147483647;
  i = 0;
  goto ldv_54568;
  ldv_54567:
  delta = time - (int )s->timer_val[i];
  if (delta < 0) {
    delta = - delta;
  } else {
  }
  if (delta < min_delta) {
    min_delta = delta;
    match = i;
  } else {
  }
  i = i + 1;
  ldv_54568: ;
  if ((unsigned int )i <= 5U) {
    goto ldv_54567;
  } else {
  }
  return (match);
}
}
static int closest_thres(struct sge const *s , int thres )
{
  int i ;
  int delta ;
  int match ;
  int min_delta ;
  {
  match = 0;
  min_delta = 2147483647;
  i = 0;
  goto ldv_54581;
  ldv_54580:
  delta = thres - (int )s->counter_val[i];
  if (delta < 0) {
    delta = - delta;
  } else {
  }
  if (delta < min_delta) {
    min_delta = delta;
    match = i;
  } else {
  }
  i = i + 1;
  ldv_54581: ;
  if ((unsigned int )i <= 3U) {
    goto ldv_54580;
  } else {
  }
  return (match);
}
}
static unsigned int qtimer_val(struct adapter const *adap , struct sge_rspq const *q )
{
  unsigned int idx ;
  {
  idx = (unsigned int )((int )((unsigned char )q->intr_params) >> 1);
  return (idx <= 5U ? (unsigned int )adap->sge.timer_val[idx] : 0U);
}
}
static int set_rxq_intr_params(struct adapter *adap , struct sge_rspq *q , unsigned int us ,
                               unsigned int cnt )
{
  int err ;
  u32 v ;
  u32 new_idx ;
  int tmp ;
  int tmp___0 ;
  {
  if ((us | cnt) == 0U) {
    cnt = 1U;
  } else {
  }
  if (cnt != 0U) {
    {
    tmp = closest_thres((struct sge const *)(& adap->sge), (int )cnt);
    new_idx = (u32 )tmp;
    }
    if ((unsigned long )q->desc != (unsigned long )((__be64 *)0ULL) && (u32 )q->pktcnt_idx != new_idx) {
      {
      v = (u32 )((int )q->cntxt_id | 67174400);
      err = t4_set_params(adap, adap->fn, adap->fn, 0U, 1U, (u32 const *)(& v),
                          (u32 const *)(& new_idx));
      }
      if (err != 0) {
        return (err);
      } else {
      }
    } else {
    }
    q->pktcnt_idx = (u8 )new_idx;
  } else {
  }
  if (us != 0U) {
    {
    tmp___0 = closest_timer((struct sge const *)(& adap->sge), (int )us);
    us = (unsigned int )tmp___0;
    }
  } else {
    us = 6U;
  }
  q->intr_params = (unsigned int )((int )((u8 )us) << 1U) | (cnt != 0U ? 1U : 0U);
  return (0);
}
}
static int set_coalesce(struct net_device *dev , struct ethtool_coalesce *c )
{
  struct port_info const *pi ;
  void *tmp ;
  struct adapter *adap ;
  struct sge_rspq *q ;
  int i ;
  int r ;
  {
  {
  tmp = netdev_priv((struct net_device const *)dev);
  pi = (struct port_info const *)tmp;
  adap = pi->adapter;
  r = 0;
  i = (int )pi->first_qset;
  }
  goto ldv_54608;
  ldv_54607:
  {
  q = & adap->sge.ethrxq[i].rspq;
  r = set_rxq_intr_params(adap, q, c->rx_coalesce_usecs, c->rx_max_coalesced_frames);
  }
  if (r != 0) {
    {
    dev_err((struct device const *)(& dev->dev), "failed to set coalesce %d\n",
            r);
    }
    goto ldv_54606;
  } else {
  }
  i = i + 1;
  ldv_54608: ;
  if (i < (int )pi->first_qset + (int )pi->nqsets) {
    goto ldv_54607;
  } else {
  }
  ldv_54606: ;
  return (r);
}
}
static int get_coalesce(struct net_device *dev , struct ethtool_coalesce *c )
{
  struct port_info const *pi ;
  void *tmp ;
  struct adapter const *adap ;
  struct sge_rspq const *rq ;
  {
  {
  tmp = netdev_priv((struct net_device const *)dev);
  pi = (struct port_info const *)tmp;
  adap = (struct adapter const *)pi->adapter;
  rq = & adap->sge.ethrxq[(int )pi->first_qset].rspq;
  c->rx_coalesce_usecs = qtimer_val(adap, rq);
  c->rx_max_coalesced_frames = (int )rq->intr_params & 1 ? (__u32 )adap->sge.counter_val[(int )rq->pktcnt_idx] : 0U;
  }
  return (0);
}
}
static int eeprom_ptov(unsigned int phys_addr , unsigned int fn , unsigned int sz )
{
  {
  fn = fn * sz;
  if (phys_addr <= 1023U) {
    return ((int )(phys_addr + 31744U));
  } else {
  }
  if (phys_addr < fn + 1024U) {
    return ((int )((phys_addr - fn) + 30720U));
  } else {
  }
  if (phys_addr <= 17407U) {
    return ((int )((phys_addr - fn) - 1024U));
  } else {
  }
  return (-22);
}
}
static int eeprom_rd_phys(struct adapter *adap , unsigned int phys_addr , u32 *v )
{
  int vaddr ;
  int tmp ;
  ssize_t tmp___0 ;
  {
  {
  tmp = eeprom_ptov(phys_addr, adap->fn, 1024U);
  vaddr = tmp;
  }
  if (vaddr >= 0) {
    {
    tmp___0 = pci_read_vpd(adap->pdev, (loff_t )vaddr, 4UL, (void *)v);
    vaddr = (int )tmp___0;
    }
  } else {
  }
  return (0 < vaddr ? 0 : vaddr);
}
}
static int eeprom_wr_phys(struct adapter *adap , unsigned int phys_addr , u32 v )
{
  int vaddr ;
  int tmp ;
  ssize_t tmp___0 ;
  {
  {
  tmp = eeprom_ptov(phys_addr, adap->fn, 1024U);
  vaddr = tmp;
  }
  if (vaddr >= 0) {
    {
    tmp___0 = pci_write_vpd(adap->pdev, (loff_t )vaddr, 4UL, (void const *)(& v));
    vaddr = (int )tmp___0;
    }
  } else {
  }
  return (0 < vaddr ? 0 : vaddr);
}
}
static int get_eeprom(struct net_device *dev , struct ethtool_eeprom *e , u8 *data )
{
  int i ;
  int err ;
  struct adapter *adapter ;
  struct adapter *tmp ;
  u8 *buf ;
  void *tmp___0 ;
  {
  {
  err = 0;
  tmp = netdev2adap((struct net_device const *)dev);
  adapter = tmp;
  tmp___0 = kmalloc(17408UL, 208U);
  buf = (u8 *)tmp___0;
  }
  if ((unsigned long )buf == (unsigned long )((u8 *)0U)) {
    return (-12);
  } else {
  }
  e->magic = 954396940U;
  i = (int )e->offset & -4;
  goto ldv_54643;
  ldv_54642:
  {
  err = eeprom_rd_phys(adapter, (unsigned int )i, (u32 *)buf + (unsigned long )i);
  i = i + 4;
  }
  ldv_54643: ;
  if (err == 0 && (__u32 )i < e->offset + e->len) {
    goto ldv_54642;
  } else {
  }
  if (err == 0) {
    {
    memcpy((void *)data, (void const *)buf + (unsigned long )e->offset, (size_t )e->len);
    }
  } else {
  }
  {
  kfree((void const *)buf);
  }
  return (err);
}
}
static int set_eeprom(struct net_device *dev , struct ethtool_eeprom *eeprom , u8 *data )
{
  u8 *buf ;
  int err ;
  u32 aligned_offset ;
  u32 aligned_len ;
  u32 *p ;
  struct adapter *adapter ;
  struct adapter *tmp ;
  u32 start ;
  void *tmp___0 ;
  {
  {
  err = 0;
  tmp = netdev2adap((struct net_device const *)dev);
  adapter = tmp;
  }
  if (eeprom->magic != 954396940U) {
    return (-22);
  } else {
  }
  aligned_offset = eeprom->offset & 4294967292U;
  aligned_len = ((eeprom->len + (eeprom->offset & 3U)) + 3U) & 4294967292U;
  if (adapter->fn != 0U) {
    start = (adapter->fn + 1U) * 1024U;
    if (aligned_offset < start || aligned_offset + aligned_len > start + 1024U) {
      return (-1);
    } else {
    }
  } else {
  }
  if (aligned_offset != eeprom->offset || aligned_len != eeprom->len) {
    {
    tmp___0 = kmalloc((size_t )aligned_len, 208U);
    buf = (u8 *)tmp___0;
    }
    if ((unsigned long )buf == (unsigned long )((u8 *)0U)) {
      return (-12);
    } else {
    }
    {
    err = eeprom_rd_phys(adapter, aligned_offset, (u32 *)buf);
    }
    if (err == 0 && aligned_len > 4U) {
      {
      err = eeprom_rd_phys(adapter, (aligned_offset + aligned_len) - 4U, (u32 *)buf + (unsigned long )(aligned_len - 4U));
      }
    } else {
    }
    if (err != 0) {
      goto out;
    } else {
    }
    {
    memcpy((void *)(buf + ((unsigned long )eeprom->offset & 3UL)), (void const *)data,
           (size_t )eeprom->len);
    }
  } else {
    buf = data;
  }
  {
  err = t4_seeprom_wp(adapter, 0);
  }
  if (err != 0) {
    goto out;
  } else {
  }
  p = (u32 *)buf;
  goto ldv_54659;
  ldv_54658:
  {
  err = eeprom_wr_phys(adapter, aligned_offset, *p);
  aligned_offset = aligned_offset + 4U;
  aligned_len = aligned_len - 4U;
  p = p + 1;
  }
  ldv_54659: ;
  if (err == 0 && aligned_len != 0U) {
    goto ldv_54658;
  } else {
  }
  if (err == 0) {
    {
    err = t4_seeprom_wp(adapter, 1);
    }
  } else {
  }
  out: ;
  if ((unsigned long )buf != (unsigned long )data) {
    {
    kfree((void const *)buf);
    }
  } else {
  }
  return (err);
}
}
static int set_flash(struct net_device *netdev , struct ethtool_flash *ef )
{
  int ret ;
  struct firmware const *fw ;
  struct adapter *adap ;
  struct adapter *tmp ;
  {
  {
  tmp = netdev2adap((struct net_device const *)netdev);
  adap = tmp;
  ef->data[127UL] = 0;
  ret = request_firmware(& fw, (char const *)(& ef->data), adap->pdev_dev);
  }
  if (ret < 0) {
    return (ret);
  } else {
  }
  {
  ret = t4_load_fw(adap, fw->data, (unsigned int )fw->size);
  release_firmware(fw);
  }
  if (ret == 0) {
    {
    _dev_info((struct device const *)adap->pdev_dev, "loaded firmware %s\n", (char *)(& ef->data));
    }
  } else {
  }
  return (ret);
}
}
static void get_wol(struct net_device *dev , struct ethtool_wolinfo *wol )
{
  struct adapter *tmp ;
  {
  {
  wol->supported = 40U;
  tmp = netdev2adap((struct net_device const *)dev);
  wol->wolopts = tmp->wol;
  memset((void *)(& wol->sopass), 0, 6UL);
  }
  return;
}
}
static int set_wol(struct net_device *dev , struct ethtool_wolinfo *wol )
{
  int err ;
  struct port_info *pi ;
  void *tmp ;
  {
  {
  err = 0;
  tmp = netdev_priv((struct net_device const *)dev);
  pi = (struct port_info *)tmp;
  }
  if ((wol->wolopts & 4294967255U) != 0U) {
    return (-22);
  } else {
  }
  {
  t4_wol_magic_enable(pi->adapter, (unsigned int )pi->tx_chan, (wol->wolopts & 32U) != 0U ? (u8 const *)dev->dev_addr : (u8 const *)0U);
  }
  if ((wol->wolopts & 8U) != 0U) {
    {
    err = t4_wol_pat_enable(pi->adapter, (unsigned int )pi->tx_chan, 254U, 0xffffffffffffffffULL,
                            0xffffffffffffffffULL, 0U, 0);
    }
    if (err == 0) {
      {
      err = t4_wol_pat_enable(pi->adapter, (unsigned int )pi->tx_chan, 1U, 0xfffffffffffffff9ULL,
                              0xffffffffffffffffULL, 2697773478U, 1);
      }
    } else {
    }
  } else {
    {
    t4_wol_pat_enable(pi->adapter, (unsigned int )pi->tx_chan, 0U, 0ULL, 0ULL, 0U,
                      0);
    }
  }
  return (err);
}
}
static int cxgb_set_features(struct net_device *dev , netdev_features_t features )
{
  struct port_info const *pi ;
  void *tmp ;
  netdev_features_t changed ;
  int err ;
  long tmp___0 ;
  {
  {
  tmp = netdev_priv((struct net_device const *)dev);
  pi = (struct port_info const *)tmp;
  changed = dev->features ^ features;
  }
  if ((changed & 256ULL) == 0ULL) {
    return (0);
  } else {
  }
  {
  err = t4_set_rxmode(pi->adapter, (pi->adapter)->fn, (unsigned int )pi->viid, -1,
                      -1, -1, -1, (features & 256ULL) != 0ULL, 1);
  tmp___0 = ldv__builtin_expect(err != 0, 0L);
  }
  if (tmp___0 != 0L) {
    dev->features = features ^ 256ULL;
  } else {
  }
  return (err);
}
}
static u32 get_rss_table_size(struct net_device *dev )
{
  struct port_info const *pi ;
  void *tmp ;
  {
  {
  tmp = netdev_priv((struct net_device const *)dev);
  pi = (struct port_info const *)tmp;
  }
  return ((u32 )pi->rss_size);
}
}
static int get_rss_table(struct net_device *dev , u32 *p )
{
  struct port_info const *pi ;
  void *tmp ;
  unsigned int n ;
  unsigned int tmp___0 ;
  {
  {
  tmp = netdev_priv((struct net_device const *)dev);
  pi = (struct port_info const *)tmp;
  n = (unsigned int )pi->rss_size;
  }
  goto ldv_54696;
  ldv_54695:
  *(p + (unsigned long )n) = (u32 )*(pi->rss + (unsigned long )n);
  ldv_54696:
  tmp___0 = n;
  n = n - 1U;
  if (tmp___0 != 0U) {
    goto ldv_54695;
  } else {
  }
  return (0);
}
}
static int set_rss_table(struct net_device *dev , u32 const *p )
{
  unsigned int i ;
  struct port_info *pi ;
  void *tmp ;
  int tmp___0 ;
  {
  {
  tmp = netdev_priv((struct net_device const *)dev);
  pi = (struct port_info *)tmp;
  i = 0U;
  }
  goto ldv_54705;
  ldv_54704:
  *(pi->rss + (unsigned long )i) = (u16 )*(p + (unsigned long )i);
  i = i + 1U;
  ldv_54705: ;
  if (i < (unsigned int )pi->rss_size) {
    goto ldv_54704;
  } else {
  }
  if ((int )(pi->adapter)->flags & 1) {
    {
    tmp___0 = write_rss((struct port_info const *)pi, (u16 const *)pi->rss);
    }
    return (tmp___0);
  } else {
  }
  return (0);
}
}
static int get_rxnfc(struct net_device *dev , struct ethtool_rxnfc *info , u32 *rules )
{
  struct port_info const *pi ;
  void *tmp ;
  unsigned int v ;
  {
  {
  tmp = netdev_priv((struct net_device const *)dev);
  pi = (struct port_info const *)tmp;
  }
  {
  if (info->cmd == 41U) {
    goto case_41;
  } else {
  }
  if (info->cmd == 45U) {
    goto case_45;
  } else {
  }
  goto switch_break;
  case_41:
  v = (unsigned int )pi->rss_mode;
  info->data = 0ULL;
  {
  if (info->flow_type == 1U) {
    goto case_1;
  } else {
  }
  if (info->flow_type == 2U) {
    goto case_2;
  } else {
  }
  if (info->flow_type == 3U) {
    goto case_3;
  } else {
  }
  if (info->flow_type == 4U) {
    goto case_4;
  } else {
  }
  if (info->flow_type == 16U) {
    goto case_16;
  } else {
  }
  if (info->flow_type == 5U) {
    goto case_5;
  } else {
  }
  if (info->flow_type == 6U) {
    goto case_6;
  } else {
  }
  if (info->flow_type == 7U) {
    goto case_7;
  } else {
  }
  if (info->flow_type == 8U) {
    goto case_8;
  } else {
  }
  if (info->flow_type == 17U) {
    goto case_17;
  } else {
  }
  goto switch_break___0;
  case_1: ;
  if ((v & 4U) != 0U) {
    info->data = 240ULL;
  } else
  if ((v & 2U) != 0U) {
    info->data = 48ULL;
  } else {
  }
  goto ldv_54716;
  case_2: ;
  if ((v & 5U) == 5U) {
    info->data = 240ULL;
  } else
  if ((v & 2U) != 0U) {
    info->data = 48ULL;
  } else {
  }
  goto ldv_54716;
  case_3: ;
  case_4: ;
  case_16: ;
  if ((v & 2U) != 0U) {
    info->data = 48ULL;
  } else {
  }
  goto ldv_54716;
  case_5: ;
  if ((v & 16U) != 0U) {
    info->data = 240ULL;
  } else
  if ((v & 8U) != 0U) {
    info->data = 48ULL;
  } else {
  }
  goto ldv_54716;
  case_6: ;
  if ((v & 17U) == 17U) {
    info->data = 240ULL;
  } else
  if ((v & 8U) != 0U) {
    info->data = 48ULL;
  } else {
  }
  goto ldv_54716;
  case_7: ;
  case_8: ;
  case_17: ;
  if ((v & 8U) != 0U) {
    info->data = 48ULL;
  } else {
  }
  goto ldv_54716;
  switch_break___0: ;
  }
  ldv_54716: ;
  return (0);
  case_45:
  info->data = (__u64 )pi->nqsets;
  return (0);
  switch_break: ;
  }
  return (-95);
}
}
static struct ethtool_ops const cxgb_ethtool_ops =
     {& get_settings, & set_settings, & get_drvinfo, & get_regs_len, & get_regs, & get_wol,
    & set_wol, & get_msglevel, & set_msglevel, & restart_autoneg, & ethtool_op_get_link,
    & get_eeprom_len, & get_eeprom, & set_eeprom, & get_coalesce, & set_coalesce,
    & get_sge_param, & set_sge_param, & get_pauseparam, & set_pauseparam, 0, & get_strings,
    & identify_port, & get_stats, 0, 0, 0, 0, & get_sset_count, & get_rxnfc, 0, & set_flash,
    0, & get_rss_table_size, & get_rss_table, & set_rss_table, 0, 0, 0, 0, 0, 0, 0,
    0, 0, 0};
static ssize_t mem_read(struct file *file , char *buf , size_t count , loff_t *ppos )
{
  loff_t pos ;
  loff_t avail ;
  struct inode *tmp ;
  unsigned int mem ;
  struct adapter *adap ;
  size_t len ;
  int ret ;
  int ofst ;
  __be32 data[16U] ;
  size_t _min1 ;
  unsigned long _min2 ;
  unsigned long tmp___0 ;
  {
  {
  pos = *ppos;
  tmp = file_inode(file);
  avail = tmp->i_size;
  mem = (unsigned int )((long )file->private_data) & 3U;
  adap = (struct adapter *)(file->private_data + - ((unsigned long )mem));
  }
  if (pos < 0LL) {
    return (-22L);
  } else {
  }
  if (pos >= avail) {
    return (0L);
  } else {
  }
  if ((unsigned long long )count > (unsigned long long )(avail - pos)) {
    count = (size_t )(avail - pos);
  } else {
  }
  goto ldv_54746;
  ldv_54745: ;
  if (mem - 2U <= 1U) {
    {
    ret = t4_mc_read(adap, (int )mem & 1, (u32 )pos, (__be32 *)(& data), (u64 *)0ULL);
    }
  } else {
    {
    ret = t4_edc_read(adap, (int )mem, (u32 )pos, (__be32 *)(& data), (u64 *)0ULL);
    }
  }
  if (ret != 0) {
    return ((ssize_t )ret);
  } else {
  }
  {
  ofst = (int )pos & 63;
  _min1 = count;
  _min2 = 64UL - (unsigned long )ofst;
  len = _min1 < _min2 ? _min1 : _min2;
  tmp___0 = copy_to_user((void *)buf, (void const *)(& data) + (unsigned long )ofst,
                         len);
  }
  if (tmp___0 != 0UL) {
    return (-14L);
  } else {
  }
  buf = buf + len;
  pos = (loff_t )((unsigned long long )pos + (unsigned long long )len);
  count = count - len;
  ldv_54746: ;
  if (count != 0UL) {
    goto ldv_54745;
  } else {
  }
  count = (size_t )(pos - *ppos);
  *ppos = pos;
  return ((ssize_t )count);
}
}
static struct file_operations const mem_debugfs_fops =
     {& __this_module, & default_llseek, & mem_read, 0, 0, 0, 0, 0, 0, 0, 0, & simple_open,
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0};
static void add_debugfs_mem(struct adapter *adap , char const *name , unsigned int idx ,
                            unsigned int size_mb )
{
  struct dentry *de ;
  {
  {
  de = debugfs_create_file(name, 256, adap->debugfs_root, (void *)adap + (unsigned long )idx,
                           & mem_debugfs_fops);
  }
  if ((unsigned long )de != (unsigned long )((struct dentry *)0) && (unsigned long )de->d_inode != (unsigned long )((struct inode *)0)) {
    (de->d_inode)->i_size = (loff_t )(size_mb << 20);
  } else {
  }
  return;
}
}
static int setup_debugfs(struct adapter *adap )
{
  int i ;
  u32 size ;
  long tmp ;
  u32 tmp___0 ;
  int tmp___1 ;
  {
  {
  tmp = IS_ERR_OR_NULL((void const *)adap->debugfs_root);
  }
  if (tmp != 0L) {
    return (-1);
  } else {
  }
  {
  tmp___0 = t4_read_reg(adap, 30680U);
  i = (int )tmp___0;
  }
  if (i & 1) {
    {
    size = t4_read_reg(adap, 30656U);
    add_debugfs_mem(adap, "edc0", 0U, size & 4095U);
    }
  } else {
  }
  if (((unsigned int )i & 2U) != 0U) {
    {
    size = t4_read_reg(adap, 30660U);
    add_debugfs_mem(adap, "edc1", 1U, size & 4095U);
    }
  } else {
  }
  {
  tmp___1 = is_t4(adap->params.chip);
  }
  if (tmp___1 != 0) {
    {
    size = t4_read_reg(adap, 30664U);
    }
    if (((unsigned int )i & 4U) != 0U) {
      {
      add_debugfs_mem(adap, "mc", 2U, size & 4095U);
      }
    } else {
    }
  } else {
    if (((unsigned int )i & 4U) != 0U) {
      {
      size = t4_read_reg(adap, 30664U);
      add_debugfs_mem(adap, "mc0", 2U, size & 4095U);
      }
    } else {
    }
    if (((unsigned int )i & 16U) != 0U) {
      {
      size = t4_read_reg(adap, 30728U);
      add_debugfs_mem(adap, "mc1", 3U, size & 4095U);
      }
    } else {
    }
  }
  if ((unsigned long )adap->l2t != (unsigned long )((struct l2t_data *)0)) {
    {
    debugfs_create_file("l2t", 256, adap->debugfs_root, (void *)adap, & t4_l2t_fops);
    }
  } else {
  }
  return (0);
}
}
int cxgb4_alloc_atid(struct tid_info *t , void *data )
{
  int atid ;
  union aopen_entry *p ;
  {
  {
  atid = -1;
  spin_lock_bh(& t->atid_lock);
  }
  if ((unsigned long )t->afree != (unsigned long )((union aopen_entry *)0)) {
    p = t->afree;
    atid = (int )((unsigned int )(((long )p - (long )t->atid_tab) / 8L) + t->atid_base);
    t->afree = p->next;
    p->data = data;
    t->atids_in_use = t->atids_in_use + 1U;
  } else {
  }
  {
  spin_unlock_bh(& t->atid_lock);
  }
  return (atid);
}
}
static char const __kstrtab_cxgb4_alloc_atid[17U] =
  { 'c', 'x', 'g', 'b',
        '4', '_', 'a', 'l',
        'l', 'o', 'c', '_',
        'a', 't', 'i', 'd',
        '\000'};
struct kernel_symbol const __ksymtab_cxgb4_alloc_atid ;
struct kernel_symbol const __ksymtab_cxgb4_alloc_atid = {(unsigned long )(& cxgb4_alloc_atid), (char const *)(& __kstrtab_cxgb4_alloc_atid)};
void cxgb4_free_atid(struct tid_info *t , unsigned int atid )
{
  union aopen_entry *p ;
  {
  {
  p = t->atid_tab + (unsigned long )(atid - t->atid_base);
  spin_lock_bh(& t->atid_lock);
  p->next = t->afree;
  t->afree = p;
  t->atids_in_use = t->atids_in_use - 1U;
  spin_unlock_bh(& t->atid_lock);
  }
  return;
}
}
static char const __kstrtab_cxgb4_free_atid[16U] =
  { 'c', 'x', 'g', 'b',
        '4', '_', 'f', 'r',
        'e', 'e', '_', 'a',
        't', 'i', 'd', '\000'};
struct kernel_symbol const __ksymtab_cxgb4_free_atid ;
struct kernel_symbol const __ksymtab_cxgb4_free_atid = {(unsigned long )(& cxgb4_free_atid), (char const *)(& __kstrtab_cxgb4_free_atid)};
int cxgb4_alloc_stid(struct tid_info *t , int family , void *data )
{
  int stid ;
  unsigned long tmp ;
  {
  {
  spin_lock_bh(& t->stid_lock);
  }
  if (family == 2) {
    {
    tmp = find_first_zero_bit((unsigned long const *)t->stid_bmap, (unsigned long )t->nstids);
    stid = (int )tmp;
    }
    if ((unsigned int )stid < t->nstids) {
      {
      __set_bit((long )stid, (unsigned long volatile *)t->stid_bmap);
      }
    } else {
      stid = -1;
    }
  } else {
    {
    stid = bitmap_find_free_region(t->stid_bmap, (int )t->nstids, 2);
    }
    if (stid < 0) {
      stid = -1;
    } else {
    }
  }
  if (stid >= 0) {
    (t->stid_tab + (unsigned long )stid)->data = data;
    stid = (int )((unsigned int )stid + t->stid_base);
    if (family == 2) {
      t->stids_in_use = t->stids_in_use + 1U;
    } else {
      t->stids_in_use = t->stids_in_use + 4U;
    }
  } else {
  }
  {
  spin_unlock_bh(& t->stid_lock);
  }
  return (stid);
}
}
static char const __kstrtab_cxgb4_alloc_stid[17U] =
  { 'c', 'x', 'g', 'b',
        '4', '_', 'a', 'l',
        'l', 'o', 'c', '_',
        's', 't', 'i', 'd',
        '\000'};
struct kernel_symbol const __ksymtab_cxgb4_alloc_stid ;
struct kernel_symbol const __ksymtab_cxgb4_alloc_stid = {(unsigned long )(& cxgb4_alloc_stid), (char const *)(& __kstrtab_cxgb4_alloc_stid)};
int cxgb4_alloc_sftid(struct tid_info *t , int family , void *data )
{
  int stid ;
  unsigned long tmp ;
  {
  {
  spin_lock_bh(& t->stid_lock);
  }
  if (family == 2) {
    {
    tmp = find_next_zero_bit((unsigned long const *)t->stid_bmap, (unsigned long )(t->nstids + t->nsftids),
                             (unsigned long )t->nstids);
    stid = (int )tmp;
    }
    if ((unsigned int )stid < t->nstids + t->nsftids) {
      {
      __set_bit((long )stid, (unsigned long volatile *)t->stid_bmap);
      }
    } else {
      stid = -1;
    }
  } else {
    stid = -1;
  }
  if (stid >= 0) {
    (t->stid_tab + (unsigned long )stid)->data = data;
    stid = (int )((unsigned int )stid - t->nstids);
    stid = (int )((unsigned int )stid + t->sftid_base);
    t->stids_in_use = t->stids_in_use + 1U;
  } else {
  }
  {
  spin_unlock_bh(& t->stid_lock);
  }
  return (stid);
}
}
static char const __kstrtab_cxgb4_alloc_sftid[18U] =
  { 'c', 'x', 'g', 'b',
        '4', '_', 'a', 'l',
        'l', 'o', 'c', '_',
        's', 'f', 't', 'i',
        'd', '\000'};
struct kernel_symbol const __ksymtab_cxgb4_alloc_sftid ;
struct kernel_symbol const __ksymtab_cxgb4_alloc_sftid = {(unsigned long )(& cxgb4_alloc_sftid), (char const *)(& __kstrtab_cxgb4_alloc_sftid)};
void cxgb4_free_stid(struct tid_info *t , unsigned int stid , int family )
{
  {
  if (t->nsftids != 0U && stid >= t->sftid_base) {
    stid = stid - t->sftid_base;
    stid = stid + t->nstids;
  } else {
    stid = stid - t->stid_base;
  }
  {
  spin_lock_bh(& t->stid_lock);
  }
  if (family == 2) {
    {
    __clear_bit((long )stid, (unsigned long volatile *)t->stid_bmap);
    }
  } else {
    {
    bitmap_release_region(t->stid_bmap, (int )stid, 2);
    }
  }
  (t->stid_tab + (unsigned long )stid)->data = (void *)0;
  if (family == 2) {
    t->stids_in_use = t->stids_in_use - 1U;
  } else {
    t->stids_in_use = t->stids_in_use - 4U;
  }
  {
  spin_unlock_bh(& t->stid_lock);
  }
  return;
}
}
static char const __kstrtab_cxgb4_free_stid[16U] =
  { 'c', 'x', 'g', 'b',
        '4', '_', 'f', 'r',
        'e', 'e', '_', 's',
        't', 'i', 'd', '\000'};
struct kernel_symbol const __ksymtab_cxgb4_free_stid ;
struct kernel_symbol const __ksymtab_cxgb4_free_stid = {(unsigned long )(& cxgb4_free_stid), (char const *)(& __kstrtab_cxgb4_free_stid)};
static void mk_tid_release(struct sk_buff *skb , unsigned int chan , unsigned int tid )
{
  struct cpl_tid_release *req ;
  unsigned char *tmp ;
  __u32 tmp___0 ;
  __u32 tmp___1 ;
  {
  {
  set_wr_txq(skb, 1, (int )chan);
  tmp = __skb_put(skb, 24U);
  req = (struct cpl_tid_release *)tmp;
  req->wr.wr_hi = 134217733U;
  tmp___0 = __fswab32((tid << 8) | 2U);
  req->wr.wr_mid = tmp___0;
  req->wr.wr_lo = 0ULL;
  tmp___1 = __fswab32(tid | 436207616U);
  req->ot.opcode_tid = tmp___1;
  }
  return;
}
}
static void cxgb4_queue_tid_release(struct tid_info *t , unsigned int chan , unsigned int tid )
{
  void **p ;
  struct adapter *adap ;
  struct tid_info const *__mptr ;
  {
  {
  p = t->tid_tab + (unsigned long )tid;
  __mptr = (struct tid_info const *)t;
  adap = (struct adapter *)__mptr + 0xffffffffffff6540UL;
  spin_lock_bh(& adap->tid_release_lock);
  *p = (void *)adap->tid_release_head;
  adap->tid_release_head = (void **)((unsigned long )p | (unsigned long )chan);
  }
  if (! adap->tid_release_task_busy) {
    {
    adap->tid_release_task_busy = 1;
    queue_work(workq, & adap->tid_release_task);
    }
  } else {
  }
  {
  spin_unlock_bh(& adap->tid_release_lock);
  }
  return;
}
}
static void process_tid_release_list(struct work_struct *work )
{
  struct sk_buff *skb ;
  struct adapter *adap ;
  struct work_struct const *__mptr ;
  void **p ;
  unsigned int chan ;
  {
  {
  __mptr = (struct work_struct const *)work;
  adap = (struct adapter *)__mptr + 0xffffffffffff63b0UL;
  spin_lock_bh(& adap->tid_release_lock);
  }
  goto ldv_54860;
  ldv_54859:
  {
  p = adap->tid_release_head;
  chan = (unsigned int )((long )p) & 3U;
  p = p + - ((unsigned long )chan);
  adap->tid_release_head = (void **)*p;
  *p = (void *)0;
  spin_unlock_bh(& adap->tid_release_lock);
  }
  goto ldv_54857;
  ldv_54856:
  {
  schedule_timeout_uninterruptible(1L);
  }
  ldv_54857:
  {
  skb = alloc_skb(24U, 208U);
  }
  if ((unsigned long )skb == (unsigned long )((struct sk_buff *)0)) {
    goto ldv_54856;
  } else {
  }
  {
  mk_tid_release(skb, chan, (unsigned int )(((long )p - (long )adap->tids.tid_tab) / 8L));
  t4_ofld_send(adap, skb);
  spin_lock_bh(& adap->tid_release_lock);
  }
  ldv_54860: ;
  if ((unsigned long )adap->tid_release_head != (unsigned long )((void **)0)) {
    goto ldv_54859;
  } else {
  }
  {
  adap->tid_release_task_busy = 0;
  spin_unlock_bh(& adap->tid_release_lock);
  }
  return;
}
}
void cxgb4_remove_tid(struct tid_info *t , unsigned int chan , unsigned int tid )
{
  void *old ;
  struct sk_buff *skb ;
  struct adapter *adap ;
  struct tid_info const *__mptr ;
  long tmp ;
  {
  {
  __mptr = (struct tid_info const *)t;
  adap = (struct adapter *)__mptr + 0xffffffffffff6540UL;
  old = *(t->tid_tab + (unsigned long )tid);
  skb = alloc_skb(24U, 32U);
  tmp = ldv__builtin_expect((unsigned long )skb != (unsigned long )((struct sk_buff *)0),
                         1L);
  }
  if (tmp != 0L) {
    {
    *(t->tid_tab + (unsigned long )tid) = (void *)0;
    mk_tid_release(skb, chan, tid);
    t4_ofld_send(adap, skb);
    }
  } else {
    {
    cxgb4_queue_tid_release(t, chan, tid);
    }
  }
  if ((unsigned long )old != (unsigned long )((void *)0)) {
    {
    atomic_dec(& t->tids_in_use);
    }
  } else {
  }
  return;
}
}
static char const __kstrtab_cxgb4_remove_tid[17U] =
  { 'c', 'x', 'g', 'b',
        '4', '_', 'r', 'e',
        'm', 'o', 'v', 'e',
        '_', 't', 'i', 'd',
        '\000'};
struct kernel_symbol const __ksymtab_cxgb4_remove_tid ;
struct kernel_symbol const __ksymtab_cxgb4_remove_tid = {(unsigned long )(& cxgb4_remove_tid), (char const *)(& __kstrtab_cxgb4_remove_tid)};
static int tid_init(struct tid_info *t )
{
  size_t size ;
  unsigned int stid_bmap_size ;
  unsigned int natids ;
  struct adapter *adap ;
  struct tid_info const *__mptr ;
  void *tmp ;
  struct lock_class_key __key ;
  struct lock_class_key __key___0 ;
  int tmp___0 ;
  int tmp___1 ;
  {
  {
  natids = t->natids;
  __mptr = (struct tid_info const *)t;
  adap = (struct adapter *)__mptr + 0xffffffffffff6540UL;
  stid_bmap_size = (unsigned int )(((unsigned long )(t->nstids + t->nsftids) + 63UL) / 64UL);
  size = ((((((unsigned long )t->ntids + (unsigned long )natids) + (unsigned long )t->nstids) + (unsigned long )t->nsftids) + (unsigned long )stid_bmap_size) + ((unsigned long )t->nsftids + (unsigned long )t->nftids) * 18UL) * 8UL;
  tmp = t4_alloc_mem(size);
  t->tid_tab = (void **)tmp;
  }
  if ((unsigned long )t->tid_tab == (unsigned long )((void **)0)) {
    return (-12);
  } else {
  }
  {
  t->atid_tab = (union aopen_entry *)t->tid_tab + (unsigned long )t->ntids;
  t->stid_tab = (struct serv_entry *)t->atid_tab + (unsigned long )natids;
  t->stid_bmap = (unsigned long *)t->stid_tab + (unsigned long )(t->nstids + t->nsftids);
  t->ftid_tab = (struct filter_entry *)t->stid_bmap + (unsigned long )stid_bmap_size;
  spinlock_check(& t->stid_lock);
  __raw_spin_lock_init(& t->stid_lock.__annonCompField19.rlock, "&(&t->stid_lock)->rlock",
                       & __key);
  spinlock_check(& t->atid_lock);
  __raw_spin_lock_init(& t->atid_lock.__annonCompField19.rlock, "&(&t->atid_lock)->rlock",
                       & __key___0);
  t->stids_in_use = 0U;
  t->afree = (union aopen_entry *)0;
  t->atids_in_use = 0U;
  atomic_set(& t->tids_in_use, 0);
  }
  if (natids != 0U) {
    goto ldv_54893;
    ldv_54892:
    (t->atid_tab + (unsigned long )(natids - 1U))->next = t->atid_tab + (unsigned long )natids;
    ldv_54893:
    natids = natids - 1U;
    if (natids != 0U) {
      goto ldv_54892;
    } else {
    }
    t->afree = t->atid_tab;
  } else {
  }
  {
  bitmap_zero(t->stid_bmap, (int )(t->nstids + t->nsftids));
  }
  if (t->stid_base == 0U) {
    {
    tmp___0 = is_t4(adap->params.chip);
    }
    if (tmp___0 != 0) {
      {
      __set_bit(0L, (unsigned long volatile *)t->stid_bmap);
      }
    } else {
      {
      tmp___1 = is_t5(adap->params.chip);
      }
      if (tmp___1 != 0) {
        {
        __set_bit(0L, (unsigned long volatile *)t->stid_bmap);
        }
      } else {
      }
    }
  } else {
  }
  return (0);
}
}
static int cxgb4_clip_get(struct net_device const *dev , struct in6_addr const *lip )
{
  struct adapter *adap ;
  struct fw_clip_cmd c ;
  int tmp ;
  {
  {
  adap = netdev2adap(dev);
  memset((void *)(& c), 0, 32UL);
  c.op_to_write = 41000U;
  c.alloc_to_len16 = 33554560U;
  c.ip_hi = *((__be64 *)(& lip->in6_u.u6_addr8));
  c.ip_lo = *((__be64 *)(& lip->in6_u.u6_addr8) + 8U);
  tmp = t4_wr_mbox_meat(adap, (int )adap->mbox, (void const *)(& c), 32, (void *)(& c),
                        0);
  }
  return (tmp);
}
}
static int cxgb4_clip_release(struct net_device const *dev , struct in6_addr const *lip )
{
  struct adapter *adap ;
  struct fw_clip_cmd c ;
  int tmp ;
  {
  {
  adap = netdev2adap(dev);
  memset((void *)(& c), 0, 32UL);
  c.op_to_write = 49192U;
  c.alloc_to_len16 = 33554496U;
  c.ip_hi = *((__be64 *)(& lip->in6_u.u6_addr8));
  c.ip_lo = *((__be64 *)(& lip->in6_u.u6_addr8) + 8U);
  tmp = t4_wr_mbox_meat(adap, (int )adap->mbox, (void const *)(& c), 32, (void *)(& c),
                        0);
  }
  return (tmp);
}
}
int cxgb4_create_server(struct net_device const *dev , unsigned int stid , __be32 sip ,
                        __be16 sport , __be16 vlan , unsigned int queue )
{
  unsigned int chan ;
  struct sk_buff *skb ;
  struct adapter *adap ;
  struct cpl_pass_open_req *req ;
  int ret ;
  unsigned char *tmp ;
  __u32 tmp___0 ;
  __u64 tmp___1 ;
  __u64 tmp___2 ;
  {
  {
  skb = alloc_skb(48U, 208U);
  }
  if ((unsigned long )skb == (unsigned long )((struct sk_buff *)0)) {
    return (-12);
  } else {
  }
  {
  adap = netdev2adap(dev);
  tmp = __skb_put(skb, 48U);
  req = (struct cpl_pass_open_req *)tmp;
  req->wr.wr_hi = 536870917U;
  req->wr.wr_mid = 50331648U;
  req->wr.wr_lo = 0ULL;
  tmp___0 = __fswab32(stid | 16777216U);
  req->ot.opcode_tid = tmp___0;
  req->local_port = sport;
  req->peer_port = 0U;
  req->local_ip = sip;
  req->peer_ip = 0U;
  chan = rxq_to_chan((struct sge const *)(& adap->sge), queue);
  tmp___1 = __fswab64((__u64 )(chan << 2));
  req->opt0 = tmp___1;
  tmp___2 = __fswab64((__u64 )((queue << 2) | 4194305U));
  req->opt1 = tmp___2;
  ret = t4_mgmt_tx(adap, skb);
  }
  return (ret != 2 ? ret : 0);
}
}
static char const __kstrtab_cxgb4_create_server[20U] =
  { 'c', 'x', 'g', 'b',
        '4', '_', 'c', 'r',
        'e', 'a', 't', 'e',
        '_', 's', 'e', 'r',
        'v', 'e', 'r', '\000'};
struct kernel_symbol const __ksymtab_cxgb4_create_server ;
struct kernel_symbol const __ksymtab_cxgb4_create_server = {(unsigned long )(& cxgb4_create_server), (char const *)(& __kstrtab_cxgb4_create_server)};
int cxgb4_create_server6(struct net_device const *dev , unsigned int stid , struct in6_addr const *sip ,
                         __be16 sport , unsigned int queue )
{
  unsigned int chan ;
  struct sk_buff *skb ;
  struct adapter *adap ;
  struct cpl_pass_open_req6 *req ;
  int ret ;
  unsigned char *tmp ;
  __u32 tmp___0 ;
  __u64 tmp___1 ;
  __u64 tmp___2 ;
  {
  {
  skb = alloc_skb(72U, 208U);
  }
  if ((unsigned long )skb == (unsigned long )((struct sk_buff *)0)) {
    return (-12);
  } else {
  }
  {
  adap = netdev2adap(dev);
  tmp = __skb_put(skb, 72U);
  req = (struct cpl_pass_open_req6 *)tmp;
  req->wr.wr_hi = 939524101U;
  req->wr.wr_mid = 83886080U;
  req->wr.wr_lo = 0ULL;
  tmp___0 = __fswab32(stid | 2164260864U);
  req->ot.opcode_tid = tmp___0;
  req->local_port = sport;
  req->peer_port = 0U;
  req->local_ip_hi = *((__be64 *)(& sip->in6_u.u6_addr8));
  req->local_ip_lo = *((__be64 *)(& sip->in6_u.u6_addr8) + 8U);
  req->peer_ip_hi = 0ULL;
  req->peer_ip_lo = 0ULL;
  chan = rxq_to_chan((struct sge const *)(& adap->sge), queue);
  tmp___1 = __fswab64((__u64 )(chan << 2));
  req->opt0 = tmp___1;
  tmp___2 = __fswab64((__u64 )((queue << 2) | 4194305U));
  req->opt1 = tmp___2;
  ret = t4_mgmt_tx(adap, skb);
  }
  return (ret != 2 ? ret : 0);
}
}
static char const __kstrtab_cxgb4_create_server6[21U] =
  { 'c', 'x', 'g', 'b',
        '4', '_', 'c', 'r',
        'e', 'a', 't', 'e',
        '_', 's', 'e', 'r',
        'v', 'e', 'r', '6',
        '\000'};
struct kernel_symbol const __ksymtab_cxgb4_create_server6 ;
struct kernel_symbol const __ksymtab_cxgb4_create_server6 = {(unsigned long )(& cxgb4_create_server6), (char const *)(& __kstrtab_cxgb4_create_server6)};
int cxgb4_remove_server(struct net_device const *dev , unsigned int stid , unsigned int queue ,
                        bool ipv6 )
{
  struct sk_buff *skb ;
  struct adapter *adap ;
  struct cpl_close_listsvr_req *req ;
  int ret ;
  unsigned char *tmp ;
  __u32 tmp___0 ;
  __u16 tmp___1 ;
  {
  {
  adap = netdev2adap(dev);
  skb = alloc_skb(24U, 208U);
  }
  if ((unsigned long )skb == (unsigned long )((struct sk_buff *)0)) {
    return (-12);
  } else {
  }
  {
  tmp = __skb_put(skb, 24U);
  req = (struct cpl_close_listsvr_req *)tmp;
  req->wr.wr_hi = 134217733U;
  req->wr.wr_mid = 33554432U;
  req->wr.wr_lo = 0ULL;
  tmp___0 = __fswab32(stid | 150994944U);
  req->ot.opcode_tid = tmp___0;
  tmp___1 = __fswab16((int )(((int )ipv6 ? 16384U : 0U) | (unsigned int )((__u16 )queue)));
  req->reply_ctrl = tmp___1;
  ret = t4_mgmt_tx(adap, skb);
  }
  return (ret != 2 ? ret : 0);
}
}
static char const __kstrtab_cxgb4_remove_server[20U] =
  { 'c', 'x', 'g', 'b',
        '4', '_', 'r', 'e',
        'm', 'o', 'v', 'e',
        '_', 's', 'e', 'r',
        'v', 'e', 'r', '\000'};
struct kernel_symbol const __ksymtab_cxgb4_remove_server ;
struct kernel_symbol const __ksymtab_cxgb4_remove_server = {(unsigned long )(& cxgb4_remove_server), (char const *)(& __kstrtab_cxgb4_remove_server)};
unsigned int cxgb4_best_mtu(unsigned short const *mtus , unsigned short mtu , unsigned int *idx )
{
  unsigned int i ;
  {
  i = 0U;
  goto ldv_54982;
  ldv_54981:
  i = i + 1U;
  ldv_54982: ;
  if (i <= 14U && (int )((unsigned short )*(mtus + (unsigned long )(i + 1U))) <= (int )mtu) {
    goto ldv_54981;
  } else {
  }
  if ((unsigned long )idx != (unsigned long )((unsigned int *)0U)) {
    *idx = i;
  } else {
  }
  return ((unsigned int )*(mtus + (unsigned long )i));
}
}
static char const __kstrtab_cxgb4_best_mtu[15U] =
  { 'c', 'x', 'g', 'b',
        '4', '_', 'b', 'e',
        's', 't', '_', 'm',
        't', 'u', '\000'};
struct kernel_symbol const __ksymtab_cxgb4_best_mtu ;
struct kernel_symbol const __ksymtab_cxgb4_best_mtu = {(unsigned long )(& cxgb4_best_mtu), (char const *)(& __kstrtab_cxgb4_best_mtu)};
unsigned int cxgb4_port_chan(struct net_device const *dev )
{
  struct port_info *tmp ;
  {
  {
  tmp = netdev2pinfo(dev);
  }
  return ((unsigned int )tmp->tx_chan);
}
}
static char const __kstrtab_cxgb4_port_chan[16U] =
  { 'c', 'x', 'g', 'b',
        '4', '_', 'p', 'o',
        'r', 't', '_', 'c',
        'h', 'a', 'n', '\000'};
struct kernel_symbol const __ksymtab_cxgb4_port_chan ;
struct kernel_symbol const __ksymtab_cxgb4_port_chan = {(unsigned long )(& cxgb4_port_chan), (char const *)(& __kstrtab_cxgb4_port_chan)};
unsigned int cxgb4_dbfifo_count(struct net_device const *dev , int lpfifo )
{
  struct adapter *adap ;
  struct adapter *tmp ;
  u32 v1 ;
  u32 v2 ;
  u32 lp_count ;
  u32 hp_count ;
  int tmp___0 ;
  {
  {
  tmp = netdev2adap(dev);
  adap = tmp;
  v1 = t4_read_reg(adap, 4260U);
  v2 = t4_read_reg(adap, 4376U);
  tmp___0 = is_t4(adap->params.chip);
  }
  if (tmp___0 != 0) {
    lp_count = v1 & 2047U;
    hp_count = (v1 >> 16) & 2047U;
  } else {
    lp_count = v1 & 262143U;
    hp_count = v2 & 1023U;
  }
  return (lpfifo != 0 ? lp_count : hp_count);
}
}
static char const __kstrtab_cxgb4_dbfifo_count[19U] =
  { 'c', 'x', 'g', 'b',
        '4', '_', 'd', 'b',
        'f', 'i', 'f', 'o',
        '_', 'c', 'o', 'u',
        'n', 't', '\000'};
struct kernel_symbol const __ksymtab_cxgb4_dbfifo_count ;
struct kernel_symbol const __ksymtab_cxgb4_dbfifo_count = {(unsigned long )(& cxgb4_dbfifo_count), (char const *)(& __kstrtab_cxgb4_dbfifo_count)};
unsigned int cxgb4_port_viid(struct net_device const *dev )
{
  struct port_info *tmp ;
  {
  {
  tmp = netdev2pinfo(dev);
  }
  return ((unsigned int )tmp->viid);
}
}
static char const __kstrtab_cxgb4_port_viid[16U] =
  { 'c', 'x', 'g', 'b',
        '4', '_', 'p', 'o',
        'r', 't', '_', 'v',
        'i', 'i', 'd', '\000'};
struct kernel_symbol const __ksymtab_cxgb4_port_viid ;
struct kernel_symbol const __ksymtab_cxgb4_port_viid = {(unsigned long )(& cxgb4_port_viid), (char const *)(& __kstrtab_cxgb4_port_viid)};
unsigned int cxgb4_port_idx(struct net_device const *dev )
{
  struct port_info *tmp ;
  {
  {
  tmp = netdev2pinfo(dev);
  }
  return ((unsigned int )tmp->port_id);
}
}
static char const __kstrtab_cxgb4_port_idx[15U] =
  { 'c', 'x', 'g', 'b',
        '4', '_', 'p', 'o',
        'r', 't', '_', 'i',
        'd', 'x', '\000'};
struct kernel_symbol const __ksymtab_cxgb4_port_idx ;
struct kernel_symbol const __ksymtab_cxgb4_port_idx = {(unsigned long )(& cxgb4_port_idx), (char const *)(& __kstrtab_cxgb4_port_idx)};
void cxgb4_get_tcp_stats(struct pci_dev *pdev , struct tp_tcp_stats *v4 , struct tp_tcp_stats *v6 )
{
  struct adapter *adap ;
  void *tmp ;
  {
  {
  tmp = pci_get_drvdata(pdev);
  adap = (struct adapter *)tmp;
  spin_lock(& adap->stats_lock);
  t4_tp_get_tcp_stats(adap, v4, v6);
  spin_unlock(& adap->stats_lock);
  }
  return;
}
}
static char const __kstrtab_cxgb4_get_tcp_stats[20U] =
  { 'c', 'x', 'g', 'b',
        '4', '_', 'g', 'e',
        't', '_', 't', 'c',
        'p', '_', 's', 't',
        'a', 't', 's', '\000'};
struct kernel_symbol const __ksymtab_cxgb4_get_tcp_stats ;
struct kernel_symbol const __ksymtab_cxgb4_get_tcp_stats = {(unsigned long )(& cxgb4_get_tcp_stats), (char const *)(& __kstrtab_cxgb4_get_tcp_stats)};
void cxgb4_iscsi_init(struct net_device *dev , unsigned int tag_mask , unsigned int const *pgsz_order )
{
  struct adapter *adap ;
  struct adapter *tmp ;
  {
  {
  tmp = netdev2adap((struct net_device const *)dev);
  adap = tmp;
  t4_write_reg(adap, 102756U, tag_mask);
  t4_write_reg(adap, 102760U, (((unsigned int )*pgsz_order | (unsigned int )(*(pgsz_order + 1UL) << 8)) | (unsigned int )(*(pgsz_order + 2UL) << 16)) | (unsigned int )(*(pgsz_order + 3UL) << 24));
  }
  return;
}
}
static char const __kstrtab_cxgb4_iscsi_init[17U] =
  { 'c', 'x', 'g', 'b',
        '4', '_', 'i', 's',
        'c', 's', 'i', '_',
        'i', 'n', 'i', 't',
        '\000'};
struct kernel_symbol const __ksymtab_cxgb4_iscsi_init ;
struct kernel_symbol const __ksymtab_cxgb4_iscsi_init = {(unsigned long )(& cxgb4_iscsi_init), (char const *)(& __kstrtab_cxgb4_iscsi_init)};
int cxgb4_flush_eq_cache(struct net_device *dev )
{
  struct adapter *adap ;
  struct adapter *tmp ;
  int ret ;
  {
  {
  tmp = netdev2adap((struct net_device const *)dev);
  adap = tmp;
  ret = t4_fwaddrspace_write(adap, adap->mbox, 3774878204U, 536870912U);
  }
  return (ret);
}
}
static char const __kstrtab_cxgb4_flush_eq_cache[21U] =
  { 'c', 'x', 'g', 'b',
        '4', '_', 'f', 'l',
        'u', 's', 'h', '_',
        'e', 'q', '_', 'c',
        'a', 'c', 'h', 'e',
        '\000'};
struct kernel_symbol const __ksymtab_cxgb4_flush_eq_cache ;
struct kernel_symbol const __ksymtab_cxgb4_flush_eq_cache = {(unsigned long )(& cxgb4_flush_eq_cache), (char const *)(& __kstrtab_cxgb4_flush_eq_cache)};
static int read_eq_indices(struct adapter *adap , u16 qid , u16 *pidx , u16 *cidx )
{
  u32 addr ;
  u32 tmp ;
  __be64 indices ;
  int ret ;
  __u64 tmp___0 ;
  __u64 tmp___1 ;
  {
  {
  tmp = t4_read_reg(adap, 4228U);
  addr = (tmp + (u32 )((int )qid * 24)) + 8U;
  ret = t4_mem_win_read_len(adap, addr, (__be32 *)(& indices), 8);
  }
  if (ret == 0) {
    {
    tmp___0 = __fswab64(indices);
    *cidx = (u16 )(tmp___0 >> 25);
    tmp___1 = __fswab64(indices);
    *pidx = (u16 )(tmp___1 >> 9);
    }
  } else {
  }
  return (ret);
}
}
int cxgb4_sync_txq_pidx(struct net_device *dev , u16 qid , u16 pidx , u16 size )
{
  struct adapter *adap ;
  struct adapter *tmp ;
  u16 hw_pidx ;
  u16 hw_cidx ;
  int ret ;
  u16 delta ;
  {
  {
  tmp = netdev2adap((struct net_device const *)dev);
  adap = tmp;
  ret = read_eq_indices(adap, (int )qid, & hw_pidx, & hw_cidx);
  }
  if (ret != 0) {
    goto out;
  } else {
  }
  if ((int )pidx != (int )hw_pidx) {
    if ((int )pidx >= (int )hw_pidx) {
      delta = (int )pidx - (int )hw_pidx;
    } else {
      delta = ((int )size - (int )hw_pidx) + (int )pidx;
    }
    {
    __asm__ volatile ("sfence": : : "memory");
    t4_write_reg(adap, 110592U, (u32 )(((int )qid << 15) | (int )delta));
    }
  } else {
  }
  out: ;
  return (ret);
}
}
static char const __kstrtab_cxgb4_sync_txq_pidx[20U] =
  { 'c', 'x', 'g', 'b',
        '4', '_', 's', 'y',
        'n', 'c', '_', 't',
        'x', 'q', '_', 'p',
        'i', 'd', 'x', '\000'};
struct kernel_symbol const __ksymtab_cxgb4_sync_txq_pidx ;
struct kernel_symbol const __ksymtab_cxgb4_sync_txq_pidx = {(unsigned long )(& cxgb4_sync_txq_pidx), (char const *)(& __kstrtab_cxgb4_sync_txq_pidx)};
void cxgb4_disable_db_coalescing(struct net_device *dev )
{
  struct adapter *adap ;
  {
  {
  adap = netdev2adap((struct net_device const *)dev);
  t4_set_reg_field(adap, 4264U, 67108864U, 67108864U);
  }
  return;
}
}
static char const __kstrtab_cxgb4_disable_db_coalescing[28U] =
  { 'c', 'x', 'g', 'b',
        '4', '_', 'd', 'i',
        's', 'a', 'b', 'l',
        'e', '_', 'd', 'b',
        '_', 'c', 'o', 'a',
        'l', 'e', 's', 'c',
        'i', 'n', 'g', '\000'};
struct kernel_symbol const __ksymtab_cxgb4_disable_db_coalescing ;
struct kernel_symbol const __ksymtab_cxgb4_disable_db_coalescing = {(unsigned long )(& cxgb4_disable_db_coalescing), (char const *)(& __kstrtab_cxgb4_disable_db_coalescing)};
void cxgb4_enable_db_coalescing(struct net_device *dev )
{
  struct adapter *adap ;
  {
  {
  adap = netdev2adap((struct net_device const *)dev);
  t4_set_reg_field(adap, 4264U, 67108864U, 0U);
  }
  return;
}
}
static char const __kstrtab_cxgb4_enable_db_coalescing[27U] =
  { 'c', 'x', 'g', 'b',
        '4', '_', 'e', 'n',
        'a', 'b', 'l', 'e',
        '_', 'd', 'b', '_',
        'c', 'o', 'a', 'l',
        'e', 's', 'c', 'i',
        'n', 'g', '\000'};
struct kernel_symbol const __ksymtab_cxgb4_enable_db_coalescing ;
struct kernel_symbol const __ksymtab_cxgb4_enable_db_coalescing = {(unsigned long )(& cxgb4_enable_db_coalescing), (char const *)(& __kstrtab_cxgb4_enable_db_coalescing)};
static struct pci_driver cxgb4_driver ;
static void check_neigh_update(struct neighbour *neigh )
{
  struct device const *parent ;
  struct net_device const *netdev ;
  struct net_device *tmp ;
  void *tmp___0 ;
  {
  netdev = (struct net_device const *)neigh->dev;
  if ((int )netdev->priv_flags & 1) {
    {
    tmp = vlan_dev_real_dev(netdev);
    netdev = (struct net_device const *)tmp;
    }
  } else {
  }
  parent = (struct device const *)netdev->dev.parent;
  if ((unsigned long )parent != (unsigned long )((struct device const *)0) && (unsigned long )((struct device_driver *)parent->driver) == (unsigned long )(& cxgb4_driver.driver)) {
    {
    tmp___0 = ldv_dev_get_drvdata_27(parent);
    t4_l2t_update((struct adapter *)tmp___0, neigh);
    }
  } else {
  }
  return;
}
}
static int netevent_cb(struct notifier_block *nb , unsigned long event , void *data )
{
  {
  {
  if (event == 1UL) {
    goto case_1;
  } else {
  }
  if (event == 2UL) {
    goto case_2;
  } else {
  }
  goto switch_default;
  case_1:
  {
  check_neigh_update((struct neighbour *)data);
  }
  goto ldv_55147;
  case_2: ;
  switch_default: ;
  goto ldv_55147;
  switch_break: ;
  }
  ldv_55147: ;
  return (0);
}
}
static bool netevent_registered ;
static struct notifier_block cxgb4_netevent_nb = {& netevent_cb, 0, 0};
static void drain_db_fifo(struct adapter *adap , int usecs )
{
  u32 v1 ;
  u32 v2 ;
  u32 lp_count ;
  u32 hp_count ;
  int tmp ;
  long volatile __ret ;
  struct task_struct *tmp___0 ;
  struct task_struct *tmp___1 ;
  struct task_struct *tmp___2 ;
  struct task_struct *tmp___3 ;
  unsigned long tmp___4 ;
  {
  ldv_55169:
  {
  v1 = t4_read_reg(adap, 4260U);
  v2 = t4_read_reg(adap, 4376U);
  tmp = is_t4(adap->params.chip);
  }
  if (tmp != 0) {
    lp_count = v1 & 2047U;
    hp_count = (v1 >> 16) & 2047U;
  } else {
    lp_count = v1 & 262143U;
    hp_count = v2 & 1023U;
  }
  if ((lp_count | hp_count) == 0U) {
    goto ldv_55160;
  } else {
  }
  __ret = 2L;
  {
  if (8UL == 1UL) {
    goto case_1;
  } else {
  }
  if (8UL == 2UL) {
    goto case_2;
  } else {
  }
  if (8UL == 4UL) {
    goto case_4;
  } else {
  }
  if (8UL == 8UL) {
    goto case_8;
  } else {
  }
  goto switch_default;
  case_1:
  {
  tmp___0 = get_current();
  __asm__ volatile ("xchgb %b0, %1\n": "+q" (__ret), "+m" (tmp___0->state): : "memory",
                       "cc");
  }
  goto ldv_55163;
  case_2:
  {
  tmp___1 = get_current();
  __asm__ volatile ("xchgw %w0, %1\n": "+r" (__ret), "+m" (tmp___1->state): : "memory",
                       "cc");
  }
  goto ldv_55163;
  case_4:
  {
  tmp___2 = get_current();
  __asm__ volatile ("xchgl %0, %1\n": "+r" (__ret), "+m" (tmp___2->state): : "memory",
                       "cc");
  }
  goto ldv_55163;
  case_8:
  {
  tmp___3 = get_current();
  __asm__ volatile ("xchgq %q0, %1\n": "+r" (__ret), "+m" (tmp___3->state): : "memory",
                       "cc");
  }
  goto ldv_55163;
  switch_default:
  {
  __xchg_wrong_size();
  }
  switch_break: ;
  }
  ldv_55163:
  {
  tmp___4 = usecs_to_jiffies((unsigned int const )usecs);
  schedule_timeout((long )tmp___4);
  }
  goto ldv_55169;
  ldv_55160: ;
  return;
}
}
static void disable_txq_db(struct sge_txq *q )
{
  {
  {
  spin_lock_irq(& q->db_lock);
  q->db_disabled = 1;
  spin_unlock_irq(& q->db_lock);
  }
  return;
}
}
static void enable_txq_db(struct sge_txq *q )
{
  {
  {
  spin_lock_irq(& q->db_lock);
  q->db_disabled = 0;
  spin_unlock_irq(& q->db_lock);
  }
  return;
}
}
static void disable_dbs(struct adapter *adap )
{
  int i ;
  {
  i = 0;
  goto ldv_55181;
  ldv_55180:
  {
  disable_txq_db(& adap->sge.ethtxq[i].q);
  i = i + 1;
  }
  ldv_55181: ;
  if (i < (int )adap->sge.ethqsets) {
    goto ldv_55180;
  } else {
  }
  i = 0;
  goto ldv_55184;
  ldv_55183:
  {
  disable_txq_db(& adap->sge.ofldtxq[i].q);
  i = i + 1;
  }
  ldv_55184: ;
  if (i < (int )adap->sge.ofldqsets) {
    goto ldv_55183;
  } else {
  }
  i = 0;
  goto ldv_55187;
  ldv_55186:
  {
  disable_txq_db(& adap->sge.ctrlq[i].q);
  i = i + 1;
  }
  ldv_55187: ;
  if (i < (int )adap->params.nports) {
    goto ldv_55186;
  } else {
  }
  return;
}
}
static void enable_dbs(struct adapter *adap )
{
  int i ;
  {
  i = 0;
  goto ldv_55194;
  ldv_55193:
  {
  enable_txq_db(& adap->sge.ethtxq[i].q);
  i = i + 1;
  }
  ldv_55194: ;
  if (i < (int )adap->sge.ethqsets) {
    goto ldv_55193;
  } else {
  }
  i = 0;
  goto ldv_55197;
  ldv_55196:
  {
  enable_txq_db(& adap->sge.ofldtxq[i].q);
  i = i + 1;
  }
  ldv_55197: ;
  if (i < (int )adap->sge.ofldqsets) {
    goto ldv_55196;
  } else {
  }
  i = 0;
  goto ldv_55200;
  ldv_55199:
  {
  enable_txq_db(& adap->sge.ctrlq[i].q);
  i = i + 1;
  }
  ldv_55200: ;
  if (i < (int )adap->params.nports) {
    goto ldv_55199;
  } else {
  }
  return;
}
}
static void sync_txq_pidx(struct adapter *adap , struct sge_txq *q )
{
  u16 hw_pidx ;
  u16 hw_cidx ;
  int ret ;
  u16 delta ;
  {
  {
  spin_lock_bh(& q->db_lock);
  ret = read_eq_indices(adap, (int )((unsigned short )q->cntxt_id), & hw_pidx, & hw_cidx);
  }
  if (ret != 0) {
    goto out;
  } else {
  }
  if ((int )q->db_pidx != (int )hw_pidx) {
    if ((int )q->db_pidx >= (int )hw_pidx) {
      delta = (int )q->db_pidx - (int )hw_pidx;
    } else {
      delta = ((int )((u16 )q->size) - (int )hw_pidx) + (int )q->db_pidx;
    }
    {
    __asm__ volatile ("sfence": : : "memory");
    t4_write_reg(adap, 110592U, (q->cntxt_id << 15) | (unsigned int )delta);
    }
  } else {
  }
  out:
  {
  q->db_disabled = 0;
  spin_unlock_bh(& q->db_lock);
  }
  if (ret != 0) {
    {
    dev_warn((struct device const *)adap->pdev_dev, "DB drop recovery failed.\n");
    }
  } else {
  }
  return;
}
}
static void recover_all_queues(struct adapter *adap )
{
  int i ;
  {
  i = 0;
  goto ldv_55216;
  ldv_55215:
  {
  sync_txq_pidx(adap, & adap->sge.ethtxq[i].q);
  i = i + 1;
  }
  ldv_55216: ;
  if (i < (int )adap->sge.ethqsets) {
    goto ldv_55215;
  } else {
  }
  i = 0;
  goto ldv_55219;
  ldv_55218:
  {
  sync_txq_pidx(adap, & adap->sge.ofldtxq[i].q);
  i = i + 1;
  }
  ldv_55219: ;
  if (i < (int )adap->sge.ofldqsets) {
    goto ldv_55218;
  } else {
  }
  i = 0;
  goto ldv_55222;
  ldv_55221:
  {
  sync_txq_pidx(adap, & adap->sge.ctrlq[i].q);
  i = i + 1;
  }
  ldv_55222: ;
  if (i < (int )adap->params.nports) {
    goto ldv_55221;
  } else {
  }
  return;
}
}
static void notify_rdma_uld(struct adapter *adap , enum cxgb4_control cmd )
{
  {
  {
  ldv_mutex_lock_28(& uld_mutex);
  }
  if ((unsigned long )adap->uld_handle[0] != (unsigned long )((void *)0)) {
    {
    (*(ulds[0].control))(adap->uld_handle[0], cmd);
    }
  } else {
  }
  {
  ldv_mutex_unlock_29(& uld_mutex);
  }
  return;
}
}
static void process_db_full(struct work_struct *work )
{
  struct adapter *adap ;
  struct work_struct const *__mptr ;
  {
  {
  __mptr = (struct work_struct const *)work;
  adap = (struct adapter *)__mptr + 0xffffffffffff6360UL;
  notify_rdma_uld(adap, 0);
  drain_db_fifo(adap, dbfifo_drain_delay);
  t4_set_reg_field(adap, 4160U, 384U, 384U);
  notify_rdma_uld(adap, 1);
  }
  return;
}
}
static void process_db_drop(struct work_struct *work )
{
  struct adapter *adap ;
  struct work_struct const *__mptr ;
  u32 dropped_db ;
  u32 tmp ;
  u16 qid ;
  u16 pidx_inc ;
  unsigned int s_qpp ;
  unsigned short udb_density ;
  unsigned long qpshift ;
  int page ;
  u32 udb ;
  u32 tmp___0 ;
  int tmp___67 ;
  int tmp___68 ;
  {
  {
  __mptr = (struct work_struct const *)work;
  adap = (struct adapter *)__mptr + 0xffffffffffff6310UL;
  tmp___68 = is_t4(adap->params.chip);
  }
  if (tmp___68 != 0) {
    {
    disable_dbs(adap);
    notify_rdma_uld(adap, 2);
    drain_db_fifo(adap, 1);
    recover_all_queues(adap);
    enable_dbs(adap);
    }
  } else {
    {
    tmp = t4_read_reg(adap, 4268U);
    dropped_db = tmp;
    qid = (u16 )(dropped_db >> 15);
    pidx_inc = (unsigned int )((u16 )dropped_db) & 8191U;
    dev_warn((struct device const *)adap->pdev_dev, "Dropped DB 0x%x qid %d bar2 %d coalesce %d pidx %d\n",
             dropped_db, (int )qid, (dropped_db >> 14) & 1U, (dropped_db >> 13) & 1U,
             (int )pidx_inc);
    drain_db_fifo(adap, 1);
    s_qpp = adap->fn * 4U;
    tmp___0 = t4_read_reg(adap, 4112U);
    udb_density = (unsigned short )(1 << ((int )(tmp___0 >> (int )s_qpp) & 15));
    tmp___67 = __ilog2_u32((u32 )udb_density);
    qpshift = (unsigned long )(12 - tmp___67);
    udb = (u32 )((int )qid << (int )qpshift);
    udb = udb & 4294963200U;
    page = (int )(udb / 4096U);
    udb = udb + (u32 )(((int )qid - page * (int )udb_density) * 128);
    writel((unsigned int )pidx_inc, (void volatile *)(adap->bar2 + ((unsigned long )udb + 8UL)));
    t4_set_reg_field(adap, 4272U, 32768U, 32768U);
    }
  }
  {
  t4_set_reg_field(adap, 4264U, 1U, 0U);
  }
  return;
}
}
void t4_db_full(struct adapter *adap )
{
  int tmp ;
  {
  {
  tmp = is_t4(adap->params.chip);
  }
  if (tmp != 0) {
    {
    t4_set_reg_field(adap, 4160U, 384U, 0U);
    queue_work(workq, & adap->db_full_task);
    }
  } else {
  }
  return;
}
}
void t4_db_dropped(struct adapter *adap )
{
  int tmp ;
  {
  {
  tmp = is_t4(adap->params.chip);
  }
  if (tmp != 0) {
    {
    queue_work(workq, & adap->db_drop_task);
    }
  } else {
  }
  return;
}
}
static void uld_attach(struct adapter *adap , unsigned int uld )
{
  void *handle ;
  struct cxgb4_lld_info lli ;
  unsigned short i ;
  u32 tmp ;
  u32 tmp___0 ;
  u32 tmp___1 ;
  long tmp___2 ;
  long tmp___3 ;
  {
  lli.pdev = adap->pdev;
  lli.l2t = adap->l2t;
  lli.tids = & adap->tids;
  lli.ports = (struct net_device **)(& adap->port);
  lli.vr = (struct cxgb4_virt_res const *)(& adap->vres);
  lli.mtus = (unsigned short const *)(& adap->params.mtus);
  if (uld == 0U) {
    lli.rxq_ids = (unsigned short const *)(& adap->sge.rdma_rxq);
    lli.nrxq = adap->sge.rdmaqs;
  } else
  if (uld == 1U) {
    lli.rxq_ids = (unsigned short const *)(& adap->sge.ofld_rxq);
    lli.nrxq = adap->sge.ofldqsets;
  } else {
  }
  {
  lli.ntxq = adap->sge.ofldqsets;
  lli.nchan = adap->params.nports;
  lli.nports = adap->params.nports;
  lli.wr_cred = (unsigned char )adap->params.ofldq_wr_cred;
  lli.adapter_type = (unsigned char )adap->params.chip;
  tmp = t4_read_reg(adap, 32104U);
  lli.iscsi_iolen = tmp >> 16;
  tmp___0 = t4_read_reg(adap, 4112U);
  lli.udb_density = (unsigned short )(1 << ((int )(tmp___0 >> (int )(adap->fn * 4U)) & 15));
  tmp___1 = t4_read_reg(adap, 4340U);
  lli.ucq_density = (unsigned short )(1 << ((int )(tmp___1 >> (int )(adap->fn * 4U)) & 15));
  lli.filt_mode = (unsigned short )adap->params.tp.vlan_pri_map;
  i = 0U;
  }
  goto ldv_55262;
  ldv_55261:
  lli.tx_modq[(int )i] = i;
  i = (unsigned short )((int )i + 1);
  ldv_55262: ;
  if ((unsigned int )i <= 3U) {
    goto ldv_55261;
  } else {
  }
  {
  lli.gts_reg = adap->regs + 110596UL;
  lli.db_reg = adap->regs + 110592UL;
  lli.fw_vers = adap->params.fw_vers;
  lli.dbfifo_int_thresh = dbfifo_int_thresh;
  lli.sge_pktshift = adap->sge.pktshift;
  lli.enable_fw_ofld_conn = (adap->flags & 512U) != 0U;
  handle = (*(ulds[uld].add))((struct cxgb4_lld_info const *)(& lli));
  tmp___3 = IS_ERR((void const *)handle);
  }
  if (tmp___3 != 0L) {
    {
    tmp___2 = PTR_ERR((void const *)handle);
    dev_warn((struct device const *)adap->pdev_dev, "could not attach to the %s driver, error %ld\n",
             uld_str[uld], tmp___2);
    }
    return;
  } else {
  }
  adap->uld_handle[uld] = handle;
  if (! netevent_registered) {
    {
    ldv_register_netevent_notifier_30(& cxgb4_netevent_nb);
    netevent_registered = 1;
    }
  } else {
  }
  if ((int )adap->flags & 1) {
    {
    (*(ulds[uld].state_change))(handle, 0);
    }
  } else {
  }
  return;
}
}
static void attach_ulds(struct adapter *adap )
{
  unsigned int i ;
  {
  {
  spin_lock(& adap_rcu_lock);
  list_add_tail_rcu(& adap->rcu_node, & adap_rcu_list);
  spin_unlock(& adap_rcu_lock);
  ldv_mutex_lock_31(& uld_mutex);
  list_add_tail(& adap->list_node, & adapter_list);
  i = 0U;
  }
  goto ldv_55269;
  ldv_55268: ;
  if ((unsigned long )ulds[i].add != (unsigned long )((void *(*)(struct cxgb4_lld_info const * ))0)) {
    {
    uld_attach(adap, i);
    }
  } else {
  }
  i = i + 1U;
  ldv_55269: ;
  if (i <= 1U) {
    goto ldv_55268;
  } else {
  }
  {
  ldv_mutex_unlock_32(& uld_mutex);
  }
  return;
}
}
static void detach_ulds(struct adapter *adap )
{
  unsigned int i ;
  int tmp ;
  {
  {
  ldv_mutex_lock_33(& uld_mutex);
  list_del(& adap->list_node);
  i = 0U;
  }
  goto ldv_55276;
  ldv_55275: ;
  if ((unsigned long )adap->uld_handle[i] != (unsigned long )((void *)0)) {
    {
    (*(ulds[i].state_change))(adap->uld_handle[i], 3);
    adap->uld_handle[i] = (void *)0;
    }
  } else {
  }
  i = i + 1U;
  ldv_55276: ;
  if (i <= 1U) {
    goto ldv_55275;
  } else {
  }
  if ((int )netevent_registered) {
    {
    tmp = list_empty((struct list_head const *)(& adapter_list));
    }
    if (tmp != 0) {
      {
      ldv_unregister_netevent_notifier_34(& cxgb4_netevent_nb);
      netevent_registered = 0;
      }
    } else {
    }
  } else {
  }
  {
  ldv_mutex_unlock_35(& uld_mutex);
  spin_lock(& adap_rcu_lock);
  list_del_rcu(& adap->rcu_node);
  spin_unlock(& adap_rcu_lock);
  }
  return;
}
}
static void notify_ulds(struct adapter *adap , enum cxgb4_state new_state )
{
  unsigned int i ;
  {
  {
  ldv_mutex_lock_36(& uld_mutex);
  i = 0U;
  }
  goto ldv_55284;
  ldv_55283: ;
  if ((unsigned long )adap->uld_handle[i] != (unsigned long )((void *)0)) {
    {
    (*(ulds[i].state_change))(adap->uld_handle[i], new_state);
    }
  } else {
  }
  i = i + 1U;
  ldv_55284: ;
  if (i <= 1U) {
    goto ldv_55283;
  } else {
  }
  {
  ldv_mutex_unlock_37(& uld_mutex);
  }
  return;
}
}
int cxgb4_register_uld(enum cxgb4_uld type , struct cxgb4_uld_info const *p )
{
  int ret ;
  struct adapter *adap ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  {
  ret = 0;
  if ((unsigned int )type > 1U) {
    return (-22);
  } else {
  }
  {
  ldv_mutex_lock_38(& uld_mutex);
  }
  if ((unsigned long )ulds[(unsigned int )type].add != (unsigned long )((void *(*)(struct cxgb4_lld_info const * ))0)) {
    ret = -16;
    goto out;
  } else {
  }
  ulds[(unsigned int )type] = *p;
  __mptr = (struct list_head const *)adapter_list.next;
  adap = (struct adapter *)__mptr + 0xffffffffffff6578UL;
  goto ldv_55298;
  ldv_55297:
  {
  uld_attach(adap, (unsigned int )type);
  __mptr___0 = (struct list_head const *)adap->list_node.next;
  adap = (struct adapter *)__mptr___0 + 0xffffffffffff6578UL;
  }
  ldv_55298: ;
  if ((unsigned long )(& adap->list_node) != (unsigned long )(& adapter_list)) {
    goto ldv_55297;
  } else {
  }
  out:
  {
  ldv_mutex_unlock_39(& uld_mutex);
  }
  return (ret);
}
}
static char const __kstrtab_cxgb4_register_uld[19U] =
  { 'c', 'x', 'g', 'b',
        '4', '_', 'r', 'e',
        'g', 'i', 's', 't',
        'e', 'r', '_', 'u',
        'l', 'd', '\000'};
struct kernel_symbol const __ksymtab_cxgb4_register_uld ;
struct kernel_symbol const __ksymtab_cxgb4_register_uld = {(unsigned long )(& cxgb4_register_uld), (char const *)(& __kstrtab_cxgb4_register_uld)};
int cxgb4_unregister_uld(enum cxgb4_uld type )
{
  struct adapter *adap ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  {
  if ((unsigned int )type > 1U) {
    return (-22);
  } else {
  }
  {
  ldv_mutex_lock_40(& uld_mutex);
  __mptr = (struct list_head const *)adapter_list.next;
  adap = (struct adapter *)__mptr + 0xffffffffffff6578UL;
  }
  goto ldv_55317;
  ldv_55316:
  adap->uld_handle[(unsigned int )type] = (void *)0;
  __mptr___0 = (struct list_head const *)adap->list_node.next;
  adap = (struct adapter *)__mptr___0 + 0xffffffffffff6578UL;
  ldv_55317: ;
  if ((unsigned long )(& adap->list_node) != (unsigned long )(& adapter_list)) {
    goto ldv_55316;
  } else {
  }
  {
  ulds[(unsigned int )type].add = (void *(*)(struct cxgb4_lld_info const * ))0;
  ldv_mutex_unlock_41(& uld_mutex);
  }
  return (0);
}
}
static char const __kstrtab_cxgb4_unregister_uld[21U] =
  { 'c', 'x', 'g', 'b',
        '4', '_', 'u', 'n',
        'r', 'e', 'g', 'i',
        's', 't', 'e', 'r',
        '_', 'u', 'l', 'd',
        '\000'};
struct kernel_symbol const __ksymtab_cxgb4_unregister_uld ;
struct kernel_symbol const __ksymtab_cxgb4_unregister_uld = {(unsigned long )(& cxgb4_unregister_uld), (char const *)(& __kstrtab_cxgb4_unregister_uld)};
static int cxgb4_netdev(struct net_device *netdev )
{
  struct adapter *adap ;
  int i ;
  struct list_head *__ptr ;
  struct list_head const *__mptr ;
  struct list_head *_________p1 ;
  bool __warned ;
  int tmp ;
  struct list_head *__ptr___0 ;
  struct list_head const *__mptr___0 ;
  struct list_head *_________p1___0 ;
  bool __warned___0 ;
  int tmp___0 ;
  {
  {
  spin_lock(& adap_rcu_lock);
  __ptr = adap_rcu_list.next;
  _________p1 = *((struct list_head * volatile *)(& __ptr));
  tmp = debug_lockdep_rcu_enabled();
  }
  if (tmp != 0 && ! __warned) {
    {
    rcu_read_lock_held();
    }
  } else {
  }
  __mptr = (struct list_head const *)_________p1;
  adap = (struct adapter *)__mptr + 0xffffffffffff6568UL;
  goto ldv_55349;
  ldv_55348:
  i = 0;
  goto ldv_55346;
  ldv_55345: ;
  if ((unsigned long )adap->port[i] == (unsigned long )netdev) {
    {
    spin_unlock(& adap_rcu_lock);
    }
    return (1);
  } else {
  }
  i = i + 1;
  ldv_55346: ;
  if (i <= 3) {
    goto ldv_55345;
  } else {
  }
  {
  __ptr___0 = adap->rcu_node.next;
  _________p1___0 = *((struct list_head * volatile *)(& __ptr___0));
  tmp___0 = debug_lockdep_rcu_enabled();
  }
  if (tmp___0 != 0 && ! __warned___0) {
    {
    rcu_read_lock_held();
    }
  } else {
  }
  __mptr___0 = (struct list_head const *)_________p1___0;
  adap = (struct adapter *)__mptr___0 + 0xffffffffffff6568UL;
  ldv_55349: ;
  if ((unsigned long )(& adap->rcu_node) != (unsigned long )(& adap_rcu_list)) {
    goto ldv_55348;
  } else {
  }
  {
  spin_unlock(& adap_rcu_lock);
  }
  return (0);
}
}
static int clip_add(struct net_device *event_dev , struct inet6_ifaddr *ifa , unsigned long event )
{
  int ret ;
  int tmp ;
  {
  {
  ret = 0;
  rcu_read_lock();
  tmp = cxgb4_netdev(event_dev);
  }
  if (tmp != 0) {
    {
    if (event == 1UL) {
      goto case_1;
    } else {
    }
    if (event == 2UL) {
      goto case_2;
    } else {
    }
    goto switch_default;
    case_1:
    {
    ret = cxgb4_clip_get((struct net_device const *)event_dev, (struct in6_addr const *)(& ifa->addr.in6_u.u6_addr8));
    }
    if (ret < 0) {
      {
      rcu_read_unlock();
      }
      return (ret);
    } else {
    }
    ret = 1;
    goto ldv_55358;
    case_2:
    {
    cxgb4_clip_release((struct net_device const *)event_dev, (struct in6_addr const *)(& ifa->addr.in6_u.u6_addr8));
    ret = 1;
    }
    goto ldv_55358;
    switch_default: ;
    goto ldv_55358;
    switch_break: ;
    }
    ldv_55358: ;
  } else {
  }
  {
  rcu_read_unlock();
  }
  return (ret);
}
}
static int cxgb4_inet6addr_handler(struct notifier_block *this , unsigned long event ,
                                   void *data )
{
  struct inet6_ifaddr *ifa ;
  struct net_device *event_dev ;
  int ret ;
  struct bonding *bond ;
  void *tmp ;
  struct list_head *iter ;
  struct slave *slave ;
  struct pci_dev *first_pdev ;
  void *tmp___0 ;
  struct device const *__mptr ;
  struct device const *__mptr___0 ;
  void *tmp___1 ;
  {
  {
  ifa = (struct inet6_ifaddr *)data;
  ret = 0;
  tmp = netdev_priv((struct net_device const *)(ifa->idev)->dev);
  bond = (struct bonding *)tmp;
  first_pdev = (struct pci_dev *)0;
  }
  if ((int )((ifa->idev)->dev)->priv_flags & 1) {
    {
    event_dev = vlan_dev_real_dev((struct net_device const *)(ifa->idev)->dev);
    ret = clip_add(event_dev, ifa, event);
    }
  } else
  if ((((ifa->idev)->dev)->flags & 1024U) != 0U) {
    {
    _raw_read_lock(& bond->lock);
    iter = (bond->dev)->adj_list.lower.next;
    tmp___0 = netdev_lower_get_next_private(bond->dev, & iter);
    slave = (struct slave *)tmp___0;
    }
    goto ldv_55378;
    ldv_55377: ;
    if ((unsigned long )first_pdev == (unsigned long )((struct pci_dev *)0)) {
      {
      ret = clip_add(slave->dev, ifa, event);
      }
      if (ret == 1) {
        __mptr = (struct device const *)(slave->dev)->dev.parent;
        first_pdev = (struct pci_dev *)__mptr + 0xffffffffffffff68UL;
      } else {
      }
    } else {
      __mptr___0 = (struct device const *)(slave->dev)->dev.parent;
      if ((unsigned long )first_pdev != (unsigned long )((struct pci_dev *)__mptr___0 + 0xffffffffffffff68UL)) {
        {
        ret = clip_add(slave->dev, ifa, event);
        }
      } else {
      }
    }
    {
    tmp___1 = netdev_lower_get_next_private(bond->dev, & iter);
    slave = (struct slave *)tmp___1;
    }
    ldv_55378: ;
    if ((unsigned long )slave != (unsigned long )((struct slave *)0)) {
      goto ldv_55377;
    } else {
    }
    {
    _raw_read_unlock(& bond->lock);
    }
  } else {
    {
    ret = clip_add((ifa->idev)->dev, ifa, event);
    }
  }
  return (ret);
}
}
static struct notifier_block cxgb4_inet6addr_notifier = {& cxgb4_inet6addr_handler, 0, 0};
static int update_dev_clip(struct net_device *root_dev , struct net_device *dev )
{
  struct inet6_dev *idev ;
  struct inet6_ifaddr *ifa ;
  int ret ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  {
  {
  idev = (struct inet6_dev *)0;
  ret = 0;
  idev = __in6_dev_get((struct net_device const *)root_dev);
  }
  if ((unsigned long )idev == (unsigned long )((struct inet6_dev *)0)) {
    return (ret);
  } else {
  }
  {
  _raw_read_lock_bh(& idev->lock);
  __mptr = (struct list_head const *)idev->addr_list.next;
  ifa = (struct inet6_ifaddr *)__mptr + 0xfffffffffffffe30UL;
  }
  goto ldv_55394;
  ldv_55393:
  {
  ret = cxgb4_clip_get((struct net_device const *)dev, (struct in6_addr const *)(& ifa->addr.in6_u.u6_addr8));
  }
  if (ret < 0) {
    goto ldv_55392;
  } else {
  }
  __mptr___0 = (struct list_head const *)ifa->if_list.next;
  ifa = (struct inet6_ifaddr *)__mptr___0 + 0xfffffffffffffe30UL;
  ldv_55394: ;
  if ((unsigned long )(& ifa->if_list) != (unsigned long )(& idev->addr_list)) {
    goto ldv_55393;
  } else {
  }
  ldv_55392:
  {
  _raw_read_unlock_bh(& idev->lock);
  }
  return (ret);
}
}
static int update_root_dev_clip(struct net_device *dev )
{
  struct net_device *root_dev ;
  int i ;
  int ret ;
  {
  {
  root_dev = (struct net_device *)0;
  ret = 0;
  ret = update_dev_clip(dev, dev);
  }
  if (ret != 0) {
    return (ret);
  } else {
  }
  i = 0;
  goto ldv_55404;
  ldv_55403:
  {
  root_dev = __vlan_find_dev_deep(dev, 129, (int )((u16 )i));
  }
  if ((unsigned long )root_dev == (unsigned long )((struct net_device *)0)) {
    goto ldv_55401;
  } else {
  }
  {
  ret = update_dev_clip(root_dev, dev);
  }
  if (ret != 0) {
    goto ldv_55402;
  } else {
  }
  ldv_55401:
  i = i + 1;
  ldv_55404: ;
  if (i <= 4095) {
    goto ldv_55403;
  } else {
  }
  ldv_55402: ;
  return (ret);
}
}
static void update_clip(struct adapter const *adap )
{
  int i ;
  struct net_device *dev ;
  int ret ;
  {
  {
  rcu_read_lock();
  i = 0;
  }
  goto ldv_55413;
  ldv_55412:
  dev = adap->port[i];
  ret = 0;
  if ((unsigned long )dev != (unsigned long )((struct net_device *)0)) {
    {
    ret = update_root_dev_clip(dev);
    }
  } else {
  }
  if (ret < 0) {
    goto ldv_55411;
  } else {
  }
  i = i + 1;
  ldv_55413: ;
  if (i <= 3) {
    goto ldv_55412;
  } else {
  }
  ldv_55411:
  {
  rcu_read_unlock();
  }
  return;
}
}
static int cxgb_up(struct adapter *adap )
{
  int err ;
  irq_handler_t tmp ;
  {
  {
  err = setup_sge_queues(adap);
  }
  if (err != 0) {
    goto out;
  } else {
  }
  {
  err = setup_rss(adap);
  }
  if (err != 0) {
    goto freeq;
  } else {
  }
  if ((adap->flags & 8U) != 0U) {
    {
    name_msix_vecs(adap);
    err = ldv_request_irq_42((unsigned int )adap->msix_info[0].vec, & t4_nondata_intr,
                             0UL, (char const *)(& adap->msix_info[0].desc), (void *)adap);
    }
    if (err != 0) {
      goto irq_err;
    } else {
    }
    {
    err = request_msix_queue_irqs(adap);
    }
    if (err != 0) {
      {
      ldv_free_irq_43((unsigned int )adap->msix_info[0].vec, (void *)adap);
      }
      goto irq_err;
    } else {
    }
  } else {
    {
    tmp = t4_intr_handler(adap);
    err = ldv_request_irq_44((adap->pdev)->irq, tmp, (adap->flags & 4U) != 0U ? 0UL : 128UL,
                             (char const *)(& (adap->port[0])->name), (void *)adap);
    }
    if (err != 0) {
      goto irq_err;
    } else {
    }
  }
  {
  enable_rx(adap);
  t4_sge_start(adap);
  t4_intr_enable(adap);
  adap->flags = adap->flags | 1U;
  notify_ulds(adap, 0);
  update_clip((struct adapter const *)adap);
  }
  out: ;
  return (err);
  irq_err:
  {
  dev_err((struct device const *)adap->pdev_dev, "request_irq failed, err %d\n",
          err);
  }
  freeq:
  {
  t4_free_sge_resources(adap);
  }
  goto out;
}
}
static void cxgb_down(struct adapter *adapter )
{
  {
  {
  t4_intr_disable(adapter);
  cancel_work_sync(& adapter->tid_release_task);
  cancel_work_sync(& adapter->db_full_task);
  cancel_work_sync(& adapter->db_drop_task);
  adapter->tid_release_task_busy = 0;
  adapter->tid_release_head = (void **)0;
  }
  if ((adapter->flags & 8U) != 0U) {
    {
    free_msix_queue_irqs(adapter);
    ldv_free_irq_45((unsigned int )adapter->msix_info[0].vec, (void *)adapter);
    }
  } else {
    {
    ldv_free_irq_46((adapter->pdev)->irq, (void *)adapter);
    }
  }
  {
  quiesce_rx(adapter);
  t4_sge_stop(adapter);
  t4_free_sge_resources(adapter);
  adapter->flags = adapter->flags & 4294967294U;
  }
  return;
}
}
static int cxgb_open(struct net_device *dev )
{
  int err ;
  struct port_info *pi ;
  void *tmp ;
  struct adapter *adapter ;
  {
  {
  tmp = netdev_priv((struct net_device const *)dev);
  pi = (struct port_info *)tmp;
  adapter = pi->adapter;
  netif_carrier_off(dev);
  }
  if ((adapter->flags & 1U) == 0U) {
    {
    err = cxgb_up(adapter);
    }
    if (err < 0) {
      return (err);
    } else {
    }
  } else {
  }
  {
  err = link_start(dev);
  }
  if (err == 0) {
    {
    netif_tx_start_all_queues(dev);
    }
  } else {
  }
  return (err);
}
}
static int cxgb_close(struct net_device *dev )
{
  struct port_info *pi ;
  void *tmp ;
  struct adapter *adapter ;
  int tmp___0 ;
  {
  {
  tmp = netdev_priv((struct net_device const *)dev);
  pi = (struct port_info *)tmp;
  adapter = pi->adapter;
  netif_tx_stop_all_queues(dev);
  netif_carrier_off(dev);
  tmp___0 = t4_enable_vi(adapter, adapter->fn, (unsigned int )pi->viid, 0, 0);
  }
  return (tmp___0);
}
}
static int writable_filter(struct filter_entry *f )
{
  {
  if ((unsigned int )*((unsigned char *)f + 0UL) != 0U) {
    return (-1);
  } else {
  }
  if ((unsigned int )*((unsigned char *)f + 0UL) != 0U) {
    return (-16);
  } else {
  }
  return (0);
}
}
static int delete_filter(struct adapter *adapter , unsigned int fidx )
{
  struct filter_entry *f ;
  int ret ;
  int tmp ;
  {
  if (fidx >= adapter->tids.nftids + adapter->tids.nsftids) {
    return (-22);
  } else {
  }
  {
  f = adapter->tids.ftid_tab + (unsigned long )fidx;
  ret = writable_filter(f);
  }
  if (ret != 0) {
    return (ret);
  } else {
  }
  if ((unsigned int )*((unsigned char *)f + 0UL) != 0U) {
    {
    tmp = del_filter_wr(adapter, (int )fidx);
    }
    return (tmp);
  } else {
  }
  return (0);
}
}
int cxgb4_create_server_filter(struct net_device const *dev , unsigned int stid ,
                               __be32 sip , __be16 sport , __be16 vlan , unsigned int queue ,
                               unsigned char port , unsigned char mask )
{
  int ret ;
  struct filter_entry *f ;
  struct adapter *adap ;
  int i ;
  u8 *val ;
  __u16 tmp ;
  {
  {
  adap = netdev2adap(dev);
  stid = stid - adap->tids.sftid_base;
  stid = stid + adap->tids.nftids;
  f = adap->tids.ftid_tab + (unsigned long )stid;
  ret = writable_filter(f);
  }
  if (ret != 0) {
    return (ret);
  } else {
  }
  if ((unsigned int )*((unsigned char *)f + 0UL) != 0U) {
    {
    clear_filter(adap, f);
    }
  } else {
  }
  {
  memset((void *)(& f->fs), 0, 124UL);
  tmp = __fswab16((int )sport);
  f->fs.val.lport = tmp;
  f->fs.mask.lport = 65535U;
  val = (u8 *)(& sip);
  }
  if ((unsigned int )((((int )*val | (int )*(val + 1UL)) | (int )*(val + 2UL)) | (int )*(val + 3UL)) != 0U) {
    i = 0;
    goto ldv_55460;
    ldv_55459:
    f->fs.val.lip[i] = *(val + (unsigned long )i);
    f->fs.mask.lip[i] = 255U;
    i = i + 1;
    ldv_55460: ;
    if (i <= 3) {
      goto ldv_55459;
    } else {
    }
    if ((adap->params.tp.vlan_pri_map & 2U) != 0U) {
      f->fs.val.iport = port;
      f->fs.mask.iport = mask;
    } else {
    }
  } else {
  }
  if ((adap->params.tp.vlan_pri_map & 32U) != 0U) {
    f->fs.val.proto = 6U;
    f->fs.mask.proto = 255U;
  } else {
  }
  {
  f->fs.dirsteer = 1U;
  f->fs.iq = (unsigned short )queue;
  f->locked = 1U;
  f->fs.rpttid = 1U;
  ret = set_filter_wr(adap, (int )stid);
  }
  if (ret != 0) {
    {
    clear_filter(adap, f);
    }
    return (ret);
  } else {
  }
  return (0);
}
}
static char const __kstrtab_cxgb4_create_server_filter[27U] =
  { 'c', 'x', 'g', 'b',
        '4', '_', 'c', 'r',
        'e', 'a', 't', 'e',
        '_', 's', 'e', 'r',
        'v', 'e', 'r', '_',
        'f', 'i', 'l', 't',
        'e', 'r', '\000'};
struct kernel_symbol const __ksymtab_cxgb4_create_server_filter ;
struct kernel_symbol const __ksymtab_cxgb4_create_server_filter = {(unsigned long )(& cxgb4_create_server_filter), (char const *)(& __kstrtab_cxgb4_create_server_filter)};
int cxgb4_remove_server_filter(struct net_device const *dev , unsigned int stid ,
                               unsigned int queue , bool ipv6 )
{
  int ret ;
  struct filter_entry *f ;
  struct adapter *adap ;
  {
  {
  adap = netdev2adap(dev);
  stid = stid - adap->tids.sftid_base;
  stid = stid + adap->tids.nftids;
  f = adap->tids.ftid_tab + (unsigned long )stid;
  f->locked = 0U;
  ret = delete_filter(adap, stid);
  }
  if (ret != 0) {
    return (ret);
  } else {
  }
  return (0);
}
}
static char const __kstrtab_cxgb4_remove_server_filter[27U] =
  { 'c', 'x', 'g', 'b',
        '4', '_', 'r', 'e',
        'm', 'o', 'v', 'e',
        '_', 's', 'e', 'r',
        'v', 'e', 'r', '_',
        'f', 'i', 'l', 't',
        'e', 'r', '\000'};
struct kernel_symbol const __ksymtab_cxgb4_remove_server_filter ;
struct kernel_symbol const __ksymtab_cxgb4_remove_server_filter = {(unsigned long )(& cxgb4_remove_server_filter), (char const *)(& __kstrtab_cxgb4_remove_server_filter)};
static struct rtnl_link_stats64 *cxgb_get_stats(struct net_device *dev , struct rtnl_link_stats64 *ns )
{
  struct port_stats stats ;
  struct port_info *p ;
  void *tmp ;
  struct adapter *adapter ;
  bool tmp___0 ;
  int tmp___1 ;
  {
  {
  tmp = netdev_priv((struct net_device const *)dev);
  p = (struct port_info *)tmp;
  adapter = p->adapter;
  spin_lock(& adapter->stats_lock);
  tmp___0 = netif_device_present(dev);
  }
  if (tmp___0) {
    tmp___1 = 0;
  } else {
    tmp___1 = 1;
  }
  if (tmp___1) {
    {
    spin_unlock(& adapter->stats_lock);
    }
    return (ns);
  } else {
  }
  {
  t4_get_port_stats(adapter, (int )p->tx_chan, & stats);
  spin_unlock(& adapter->stats_lock);
  ns->tx_bytes = stats.tx_octets;
  ns->tx_packets = stats.tx_frames;
  ns->rx_bytes = stats.rx_octets;
  ns->rx_packets = stats.rx_frames;
  ns->multicast = stats.rx_mcast_frames;
  ns->rx_length_errors = (stats.rx_jabber + stats.rx_too_long) + stats.rx_runt;
  ns->rx_over_errors = 0ULL;
  ns->rx_crc_errors = stats.rx_fcs_err;
  ns->rx_frame_errors = stats.rx_symbol_err;
  ns->rx_fifo_errors = ((((((stats.rx_ovflow0 + stats.rx_ovflow1) + stats.rx_ovflow2) + stats.rx_ovflow3) + stats.rx_trunc0) + stats.rx_trunc1) + stats.rx_trunc2) + stats.rx_trunc3;
  ns->rx_missed_errors = 0ULL;
  ns->tx_aborted_errors = 0ULL;
  ns->tx_carrier_errors = 0ULL;
  ns->tx_fifo_errors = 0ULL;
  ns->tx_heartbeat_errors = 0ULL;
  ns->tx_window_errors = 0ULL;
  ns->tx_errors = stats.tx_error_frames;
  ns->rx_errors = (((stats.rx_symbol_err + stats.rx_fcs_err) + ns->rx_length_errors) + stats.rx_len_err) + ns->rx_fifo_errors;
  }
  return (ns);
}
}
static int cxgb_ioctl(struct net_device *dev , struct ifreq *req , int cmd )
{
  unsigned int mbox ;
  int ret ;
  int prtad ;
  int devad ;
  struct port_info *pi ;
  void *tmp ;
  struct mii_ioctl_data *data ;
  __u16 tmp___0 ;
  __u16 tmp___1 ;
  bool tmp___2 ;
  {
  {
  ret = 0;
  tmp = netdev_priv((struct net_device const *)dev);
  pi = (struct port_info *)tmp;
  data = (struct mii_ioctl_data *)(& req->ifr_ifru.ifru_data);
  }
  {
  if (cmd == 35143) {
    goto case_35143;
  } else {
  }
  if (cmd == 35144) {
    goto case_35144;
  } else {
  }
  if (cmd == 35145) {
    goto case_35145;
  } else {
  }
  goto switch_default;
  case_35143: ;
  if ((int )pi->mdio_addr < 0) {
    return (-95);
  } else {
  }
  data->phy_id = (__u16 )pi->mdio_addr;
  goto ldv_55514;
  case_35144: ;
  case_35145:
  {
  tmp___2 = mdio_phy_id_is_c45((int )data->phy_id);
  }
  if ((int )tmp___2) {
    {
    tmp___0 = mdio_phy_id_prtad((int )data->phy_id);
    prtad = (int )tmp___0;
    tmp___1 = mdio_phy_id_devad((int )data->phy_id);
    devad = (int )tmp___1;
    }
  } else
  if ((unsigned int )data->phy_id <= 31U) {
    prtad = (int )data->phy_id;
    devad = 0;
    data->reg_num = (unsigned int )data->reg_num & 31U;
  } else {
    return (-22);
  }
  mbox = (pi->adapter)->fn;
  if (cmd == 35144) {
    {
    ret = t4_mdio_rd(pi->adapter, mbox, (unsigned int )prtad, (unsigned int )devad,
                     (unsigned int )data->reg_num, & data->val_out);
    }
  } else {
    {
    ret = t4_mdio_wr(pi->adapter, mbox, (unsigned int )prtad, (unsigned int )devad,
                     (unsigned int )data->reg_num, (int )data->val_in);
    }
  }
  goto ldv_55514;
  switch_default: ;
  return (-95);
  switch_break: ;
  }
  ldv_55514: ;
  return (ret);
}
}
static void cxgb_set_rxmode(struct net_device *dev )
{
  {
  {
  set_rxmode(dev, -1, 0);
  }
  return;
}
}
static int cxgb_change_mtu(struct net_device *dev , int new_mtu )
{
  int ret ;
  struct port_info *pi ;
  void *tmp ;
  {
  {
  tmp = netdev_priv((struct net_device const *)dev);
  pi = (struct port_info *)tmp;
  }
  if ((unsigned int )new_mtu - 81U > 9519U) {
    return (-22);
  } else {
  }
  {
  ret = t4_set_rxmode(pi->adapter, (pi->adapter)->fn, (unsigned int )pi->viid, new_mtu,
                      -1, -1, -1, -1, 1);
  }
  if (ret == 0) {
    dev->mtu = (unsigned int )new_mtu;
  } else {
  }
  return (ret);
}
}
static int cxgb_set_mac_addr(struct net_device *dev , void *p )
{
  int ret ;
  struct sockaddr *addr ;
  struct port_info *pi ;
  void *tmp ;
  bool tmp___0 ;
  int tmp___1 ;
  {
  {
  addr = (struct sockaddr *)p;
  tmp = netdev_priv((struct net_device const *)dev);
  pi = (struct port_info *)tmp;
  tmp___0 = is_valid_ether_addr((u8 const *)(& addr->sa_data));
  }
  if (tmp___0) {
    tmp___1 = 0;
  } else {
    tmp___1 = 1;
  }
  if (tmp___1) {
    return (-99);
  } else {
  }
  {
  ret = t4_change_mac(pi->adapter, (pi->adapter)->fn, (unsigned int )pi->viid, (int )pi->xact_addr_filt,
                      (u8 const *)(& addr->sa_data), 1, 1);
  }
  if (ret < 0) {
    return (ret);
  } else {
  }
  {
  memcpy((void *)dev->dev_addr, (void const *)(& addr->sa_data), (size_t )dev->addr_len);
  pi->xact_addr_filt = (s16 )ret;
  }
  return (0);
}
}
static void cxgb_netpoll(struct net_device *dev )
{
  struct port_info *pi ;
  void *tmp ;
  struct adapter *adap ;
  int i ;
  struct sge_eth_rxq *rx ;
  irq_handler_t tmp___0 ;
  {
  {
  tmp = netdev_priv((struct net_device const *)dev);
  pi = (struct port_info *)tmp;
  adap = pi->adapter;
  }
  if ((adap->flags & 8U) != 0U) {
    rx = (struct sge_eth_rxq *)(& adap->sge.ethrxq) + (unsigned long )pi->first_qset;
    i = (int )pi->nqsets;
    goto ldv_55542;
    ldv_55541:
    {
    t4_sge_intr_msix(0, (void *)(& rx->rspq));
    i = i - 1;
    rx = rx + 1;
    }
    ldv_55542: ;
    if (i != 0) {
      goto ldv_55541;
    } else {
    }
  } else {
    {
    tmp___0 = t4_intr_handler(adap);
    (*tmp___0)(0, (void *)adap);
    }
  }
  return;
}
}
static struct net_device_ops const cxgb4_netdev_ops =
     {0, 0, & cxgb_open, & cxgb_close, & t4_eth_xmit, 0, 0, & cxgb_set_rxmode, & cxgb_set_mac_addr,
    & eth_validate_addr, & cxgb_ioctl, 0, & cxgb_change_mtu, 0, 0, & cxgb_get_stats,
    0, 0, 0, & cxgb_netpoll, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    0, 0, 0, 0, 0, & cxgb_set_features, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    0};
void t4_fatal_err(struct adapter *adap )
{
  {
  {
  t4_set_reg_field(adap, 4104U, 1U, 0U);
  t4_intr_disable(adap);
  dev_alert((struct device const *)adap->pdev_dev, "encountered fatal error, adapter stopped\n");
  }
  return;
}
}
static void setup_memwin(struct adapter *adap )
{
  u32 bar0 ;
  u32 mem_win0_base ;
  u32 mem_win1_base ;
  u32 mem_win2_base ;
  int tmp ;
  {
  {
  bar0 = (u32 )(adap->pdev)->resource[0].start;
  tmp = is_t4(adap->params.chip);
  }
  if (tmp != 0) {
    mem_win0_base = bar0 + 112640U;
    mem_win1_base = bar0 + 163840U;
    mem_win2_base = bar0 + 196608U;
  } else {
    mem_win0_base = 112640U;
    mem_win1_base = 335872U;
    mem_win2_base = 344064U;
  }
  {
  t4_write_reg(adap, 12392U, mem_win0_base | 1U);
  t4_write_reg(adap, 12400U, mem_win1_base | 5U);
  t4_write_reg(adap, 12408U, mem_win2_base | 6U);
  }
  return;
}
}
static void setup_memwin_rdma(struct adapter *adap )
{
  unsigned int start ;
  unsigned int sz_kb ;
  unsigned long tmp___67 ;
  unsigned long tmp___136 ;
  int tmp___203 ;
  {
  if (adap->vres.ocq.size != 0U) {
    {
    tmp___67 = __roundup_pow_of_two((unsigned long )adap->vres.ocq.size);
    start = (unsigned int )(adap->pdev)->resource[2].start + (((adap->pdev)->resource[2].start != 0ULL || (adap->pdev)->resource[2].end != (adap->pdev)->resource[2].start ? ((unsigned int )(adap->pdev)->resource[2].end - (unsigned int )(adap->pdev)->resource[2].start) + 1U : 0U) - (unsigned int )tmp___67);
    tmp___136 = __roundup_pow_of_two((unsigned long )adap->vres.ocq.size);
    sz_kb = (unsigned int )(tmp___136 >> 10);
    tmp___203 = __ilog2_u32(sz_kb);
    t4_write_reg(adap, 12416U, (start | (unsigned int )tmp___203) | 256U);
    t4_write_reg(adap, 12420U, adap->vres.ocq.start);
    t4_read_reg(adap, 12420U);
    }
  } else {
  }
  return;
}
}
static int adap_init1(struct adapter *adap , struct fw_caps_config_cmd *c )
{
  u32 v ;
  int ret ;
  int tmp ;
  int tmp___0 ;
  {
  {
  memset((void *)c, 0, 48UL);
  c->op_to_write = 49159U;
  c->cfvalid_to_len16 = 50331648U;
  ret = t4_wr_mbox(adap, (int )adap->fn, (void const *)c, 48, (void *)c);
  }
  if (ret < 0) {
    return (ret);
  } else {
  }
  if (((int )c->niccaps & 512) != 0) {
    if (! vf_acls) {
      c->niccaps = (__be16 )((unsigned int )c->niccaps ^ 512U);
    } else {
      c->niccaps = 512U;
    }
  } else
  if ((int )vf_acls) {
    {
    dev_err((struct device const *)adap->pdev_dev, "virtualization ACLs not supported");
    }
    return (ret);
  } else {
  }
  {
  c->op_to_write = 40967U;
  ret = t4_wr_mbox(adap, (int )adap->fn, (void const *)c, 48, (void *)0);
  }
  if (ret < 0) {
    return (ret);
  } else {
  }
  {
  ret = t4_config_glbl_rss(adap, (int )adap->fn, 1U, 6U);
  }
  if (ret < 0) {
    return (ret);
  } else {
  }
  {
  ret = t4_cfg_pfvf(adap, adap->fn, adap->fn, 0U, 128U, 64U, 64U, 0U, 0U, 4U, 15U,
                    15U, 16U, 1U, 1U);
  }
  if (ret < 0) {
    return (ret);
  } else {
  }
  {
  t4_sge_init(adap);
  t4_write_reg(adap, 32192U, 105875529U);
  t4_write_reg(adap, 102776U, 0U);
  t4_write_reg(adap, 32320U, 321U);
  v = t4_read_reg(adap, 32324U);
  t4_write_reg(adap, 32324U, v & 4294966271U);
  adap->params.tp.tx_modq_map = 228U;
  t4_write_reg(adap, 32296U, (u32 )adap->params.tp.tx_modq_map);
  v = 2216789025U;
  t4_write_indirect(adap, 32320U, 32324U, (u32 const *)(& v), 1U, 35U);
  t4_write_indirect(adap, 32320U, 32324U, (u32 const *)(& v), 1U, 36U);
  t4_write_indirect(adap, 32320U, 32324U, (u32 const *)(& v), 1U, 37U);
  tmp = is_offload((struct adapter const *)adap);
  }
  if (tmp != 0) {
    {
    t4_write_reg(adap, 32304U, 269488144U);
    t4_write_reg(adap, 32308U, 269488144U);
    }
  } else {
  }
  {
  tmp___0 = t4_early_init(adap, adap->fn);
  }
  return (tmp___0);
}
}
static int adap_init0_tweaks(struct adapter *adapter )
{
  {
  {
  t4_fixup_host_params(adapter, 4096U, 64U);
  }
  if (rx_dma_offset != 2 && rx_dma_offset != 0) {
    {
    dev_err((struct device const *)(& (adapter->pdev)->dev), "Ignoring illegal rx_dma_offset=%d, using 2\n",
            rx_dma_offset);
    rx_dma_offset = 2;
    }
  } else {
  }
  {
  t4_set_reg_field(adapter, 4104U, 7168U, (u32 )(rx_dma_offset << 10));
  t4_tp_wr_bits_indirect(adapter, 321U, 1024U, 0U);
  }
  return (0);
}
}
static int adap_init0_config(struct adapter *adapter , int reset )
{
  struct fw_caps_config_cmd caps_cmd ;
  struct firmware const *cf ;
  unsigned long mtype ;
  unsigned long maddr ;
  u32 finiver ;
  u32 finicsum ;
  u32 cfcsum ;
  int ret ;
  int config_issued ;
  char *fw_config_file ;
  char fw_config_file_path[256U] ;
  char *config_name ;
  unsigned int tmp ;
  u32 params[7U] ;
  u32 val[7U] ;
  size_t resid ;
  size_t size ;
  __be32 *data ;
  union __anonunion_last_289 last ;
  int i ;
  __u32 tmp___0 ;
  __u32 tmp___1 ;
  __u32 tmp___2 ;
  __u32 tmp___3 ;
  {
  mtype = 0UL;
  maddr = 0UL;
  config_issued = 0;
  config_name = (char *)0;
  if (reset != 0) {
    {
    ret = t4_fw_reset(adapter, adapter->mbox, 3);
    }
    if (ret < 0) {
      goto bye;
    } else {
    }
  } else {
  }
  {
  if ((((unsigned int )adapter->params.chip >> 4) & 15U) == 4U) {
    goto case_4;
  } else {
  }
  if ((((unsigned int )adapter->params.chip >> 4) & 15U) == 5U) {
    goto case_5;
  } else {
  }
  goto switch_default;
  case_4:
  fw_config_file = (char *)"cxgb4/t4-config.txt";
  goto ldv_55587;
  case_5:
  fw_config_file = (char *)"cxgb4/t5-config.txt";
  goto ldv_55587;
  switch_default:
  {
  dev_err((struct device const *)adapter->pdev_dev, "Device %d is not supported\n",
          (int )(adapter->pdev)->device);
  ret = -22;
  }
  goto bye;
  switch_break: ;
  }
  ldv_55587:
  {
  ret = request_firmware(& cf, (char const *)fw_config_file, adapter->pdev_dev);
  }
  if (ret < 0) {
    {
    config_name = (char *)"On FLASH";
    mtype = 4UL;
    tmp = t4_flash_cfg_addr(adapter);
    maddr = (unsigned long )tmp;
    }
  } else {
    {
    sprintf((char *)(& fw_config_file_path), "/lib/firmware/%s", fw_config_file);
    config_name = (char *)(& fw_config_file_path);
    }
    if ((unsigned long )cf->size > 65535UL) {
      ret = -12;
    } else {
      {
      params[0] = 17629184U;
      ret = t4_query_params(adapter, adapter->mbox, adapter->fn, 0U, 1U, (u32 const *)(& params),
                            (u32 *)(& val));
      }
      if (ret == 0) {
        {
        resid = (unsigned long )cf->size & 3UL;
        size = (unsigned long )cf->size & 0xfffffffffffffffcUL;
        data = (__be32 *)cf->data;
        mtype = (unsigned long )(val[0] >> 8) & 255UL;
        maddr = (unsigned long )((val[0] & 255U) << 16);
        ret = t4_memory_write(adapter, (int )mtype, (u32 )maddr, (u32 )size, data);
        }
        if (ret == 0 && resid != 0UL) {
          last.word = *(data + (size >> 2));
          i = (int )resid;
          goto ldv_55601;
          ldv_55600:
          last.buf[i] = 0;
          i = i + 1;
          ldv_55601: ;
          if (i <= 3) {
            goto ldv_55600;
          } else {
          }
          {
          ret = t4_memory_write(adapter, (int )mtype, (u32 )maddr + (u32 )size, 4U,
                                & last.word);
          }
        } else {
        }
      } else {
      }
    }
    {
    release_firmware(cf);
    }
    if (ret != 0) {
      goto bye;
    } else {
    }
  }
  {
  memset((void *)(& caps_cmd), 0, 48UL);
  caps_cmd.op_to_write = 49159U;
  tmp___0 = __fswab32((((__u32 )mtype << 24U) | ((__u32 )maddr & 4294901760U)) | 134217731U);
  caps_cmd.cfvalid_to_len16 = tmp___0;
  ret = t4_wr_mbox(adapter, (int )adapter->mbox, (void const *)(& caps_cmd), 48,
                   (void *)(& caps_cmd));
  }
  if (ret == -2) {
    {
    memset((void *)(& caps_cmd), 0, 48UL);
    caps_cmd.op_to_write = 49159U;
    caps_cmd.cfvalid_to_len16 = 50331648U;
    ret = t4_wr_mbox(adapter, (int )adapter->mbox, (void const *)(& caps_cmd), 48,
                     (void *)(& caps_cmd));
    config_name = (char *)"Firmware Default";
    }
  } else {
  }
  config_issued = 1;
  if (ret < 0) {
    goto bye;
  } else {
  }
  {
  tmp___1 = __fswab32(caps_cmd.finiver);
  finiver = tmp___1;
  tmp___2 = __fswab32(caps_cmd.finicsum);
  finicsum = tmp___2;
  tmp___3 = __fswab32(caps_cmd.cfcsum);
  cfcsum = tmp___3;
  }
  if (finicsum != cfcsum) {
    {
    dev_warn((struct device const *)adapter->pdev_dev, "Configuration File checksum mismatch: [fini] csum=%#x, computed csum=%#x\n",
             finicsum, cfcsum);
    }
  } else {
  }
  {
  caps_cmd.op_to_write = 40967U;
  caps_cmd.cfvalid_to_len16 = 50331648U;
  ret = t4_wr_mbox(adapter, (int )adapter->mbox, (void const *)(& caps_cmd), 48,
                   (void *)0);
  }
  if (ret < 0) {
    goto bye;
  } else {
  }
  {
  ret = adap_init0_tweaks(adapter);
  }
  if (ret < 0) {
    goto bye;
  } else {
  }
  {
  ret = t4_fw_initialize(adapter, adapter->mbox);
  }
  if (ret < 0) {
    goto bye;
  } else {
  }
  {
  adapter->flags = adapter->flags | 64U;
  _dev_info((struct device const *)adapter->pdev_dev, "Successfully configured using Firmware Configuration File \"%s\", version %#x, computed checksum %#x\n",
            config_name, finiver, cfcsum);
  }
  return (0);
  bye: ;
  if (config_issued != 0 && ret != -2) {
    {
    dev_warn((struct device const *)adapter->pdev_dev, "\"%s\" configuration file error %d\n",
             config_name, - ret);
    }
  } else {
  }
  return (ret);
}
}
static int adap_init0_no_config(struct adapter *adapter , int reset )
{
  struct sge *s ;
  struct fw_caps_config_cmd caps_cmd ;
  u32 v ;
  int i ;
  int ret ;
  unsigned int tmp ;
  unsigned int _min1 ;
  unsigned int _min2 ;
  unsigned int _min1___0 ;
  unsigned int _min2___0 ;
  int pf ;
  int vf ;
  unsigned int tmp___0 ;
  int j ;
  int bits ;
  {
  s = & adapter->sge;
  if (reset != 0) {
    {
    ret = t4_fw_reset(adapter, adapter->mbox, 3);
    }
    if (ret < 0) {
      goto bye;
    } else {
    }
  } else {
  }
  {
  memset((void *)(& caps_cmd), 0, 48UL);
  caps_cmd.op_to_write = 49159U;
  caps_cmd.cfvalid_to_len16 = 50331648U;
  ret = t4_wr_mbox(adapter, (int )adapter->mbox, (void const *)(& caps_cmd), 48,
                   (void *)(& caps_cmd));
  }
  if (ret < 0) {
    goto bye;
  } else {
  }
  if (((int )caps_cmd.niccaps & 512) != 0) {
    if (! vf_acls) {
      caps_cmd.niccaps = (__be16 )((unsigned int )caps_cmd.niccaps ^ 512U);
    } else {
      caps_cmd.niccaps = 512U;
    }
  } else
  if ((int )vf_acls) {
    {
    dev_err((struct device const *)adapter->pdev_dev, "virtualization ACLs not supported");
    }
    goto bye;
  } else {
  }
  {
  caps_cmd.op_to_write = 40967U;
  ret = t4_wr_mbox(adapter, (int )adapter->mbox, (void const *)(& caps_cmd), 48,
                   (void *)0);
  }
  if (ret < 0) {
    goto bye;
  } else {
  }
  {
  ret = adap_init0_tweaks(adapter);
  }
  if (ret < 0) {
    goto bye;
  } else {
  }
  {
  adapter->flags = adapter->flags | 32U;
  ret = t4_config_glbl_rss(adapter, (int )adapter->mbox, 1U, (adapter->flags & 32U) != 0U ? 7U : 5U);
  }
  if (ret < 0) {
    goto bye;
  } else {
  }
  {
  tmp = pfvfres_pmask(adapter, adapter->fn, 0U);
  ret = t4_cfg_pfvf(adapter, adapter->mbox, adapter->fn, 0U, 256U, 128U, 128U, 0U,
                    0U, 4U, 15U, tmp, 128U, 1U, 1U);
  }
  if (ret < 0) {
    goto bye;
  } else {
  }
  i = 0;
  goto ldv_55617;
  ldv_55616:
  _min1 = intr_holdoff[i];
  _min2 = 200U;
  s->timer_val[i] = (u16 )(_min1 < _min2 ? _min1 : _min2);
  i = i + 1;
  ldv_55617: ;
  if (i <= 4) {
    goto ldv_55616;
  } else {
  }
  s->timer_val[5] = 200U;
  s->counter_val[0] = 1U;
  i = 1;
  goto ldv_55623;
  ldv_55622:
  _min1___0 = intr_cnt[i + -1];
  _min2___0 = 63U;
  s->counter_val[i] = (u8 )(_min1___0 < _min2___0 ? _min1___0 : _min2___0);
  i = i + 1;
  ldv_55623: ;
  if (i <= 3) {
    goto ldv_55622;
  } else {
  }
  {
  t4_sge_init(adapter);
  pf = 0;
  }
  goto ldv_55634;
  ldv_55633: ;
  if (num_vf[pf] == 0U) {
    goto ldv_55629;
  } else {
  }
  vf = 1;
  goto ldv_55631;
  ldv_55630:
  {
  tmp___0 = pfvfres_pmask(adapter, (unsigned int )pf, (unsigned int )vf);
  ret = t4_cfg_pfvf(adapter, adapter->mbox, (unsigned int )pf, (unsigned int )vf,
                    4U, 2U, 4U, 0U, 0U, 1U, 15U, tmp___0, 16U, 134U, 130U);
  }
  if (ret < 0) {
    {
    dev_warn((struct device const *)adapter->pdev_dev, "failed to provision pf/vf=%d/%d; err=%d\n",
             pf, vf, ret);
    }
  } else {
  }
  vf = vf + 1;
  ldv_55631: ;
  if ((unsigned int )vf <= num_vf[pf]) {
    goto ldv_55630;
  } else {
  }
  ldv_55629:
  pf = pf + 1;
  ldv_55634: ;
  if ((unsigned int )pf <= 3U) {
    goto ldv_55633;
  } else {
  }
  if (tp_vlan_pri_map != 811U) {
    bits = 0;
    j = 0;
    goto ldv_55651;
    ldv_55650: ;
    {
    if ((tp_vlan_pri_map & (unsigned int )(1 << j)) == 0U) {
      goto case_0;
    } else {
    }
    if ((tp_vlan_pri_map & (unsigned int )(1 << j)) == 1U) {
      goto case_1;
    } else {
    }
    if ((tp_vlan_pri_map & (unsigned int )(1 << j)) == 2U) {
      goto case_2;
    } else {
    }
    if ((tp_vlan_pri_map & (unsigned int )(1 << j)) == 4U) {
      goto case_4;
    } else {
    }
    if ((tp_vlan_pri_map & (unsigned int )(1 << j)) == 8U) {
      goto case_8;
    } else {
    }
    if ((tp_vlan_pri_map & (unsigned int )(1 << j)) == 16U) {
      goto case_16;
    } else {
    }
    if ((tp_vlan_pri_map & (unsigned int )(1 << j)) == 32U) {
      goto case_32;
    } else {
    }
    if ((tp_vlan_pri_map & (unsigned int )(1 << j)) == 64U) {
      goto case_64;
    } else {
    }
    if ((tp_vlan_pri_map & (unsigned int )(1 << j)) == 128U) {
      goto case_128;
    } else {
    }
    if ((tp_vlan_pri_map & (unsigned int )(1 << j)) == 256U) {
      goto case_256;
    } else {
    }
    if ((tp_vlan_pri_map & (unsigned int )(1 << j)) == 512U) {
      goto case_512;
    } else {
    }
    goto switch_break;
    case_0: ;
    goto ldv_55639;
    case_1:
    bits = bits + 1;
    goto ldv_55639;
    case_2:
    bits = bits + 3;
    goto ldv_55639;
    case_4:
    bits = bits + 17;
    goto ldv_55639;
    case_8:
    bits = bits + 17;
    goto ldv_55639;
    case_16:
    bits = bits + 8;
    goto ldv_55639;
    case_32:
    bits = bits + 8;
    goto ldv_55639;
    case_64:
    bits = bits + 16;
    goto ldv_55639;
    case_128:
    bits = bits + 9;
    goto ldv_55639;
    case_256:
    bits = bits + 3;
    goto ldv_55639;
    case_512:
    bits = bits + 1;
    goto ldv_55639;
    switch_break: ;
    }
    ldv_55639:
    j = j + 1;
    ldv_55651: ;
    if (j <= 9) {
      goto ldv_55650;
    } else {
    }
    if (bits > 36) {
      {
      dev_err((struct device const *)adapter->pdev_dev, "tp_vlan_pri_map=%#x needs %d bits > 36; using %#x\n",
              tp_vlan_pri_map, bits, 811);
      tp_vlan_pri_map = 811U;
      }
    } else {
    }
  } else {
  }
  {
  v = tp_vlan_pri_map;
  t4_write_indirect(adapter, 32320U, 32324U, (u32 const *)(& v), 1U, 320U);
  }
  if (tp_vlan_pri_map != 0U) {
    {
    t4_set_reg_field(adapter, 32008U, 393216U, 393216U);
    }
  } else {
  }
  {
  t4_write_reg(adapter, 32192U, 105875529U);
  ret = t4_fw_initialize(adapter, adapter->mbox);
  }
  if (ret < 0) {
    goto bye;
  } else {
  }
  {
  _dev_info((struct device const *)adapter->pdev_dev, "Successfully configured using built-in driver parameters\n");
  }
  return (0);
  bye: ;
  return (ret);
}
}
static struct fw_info fw_info_array[2U] = { {4U, (char *)"cxgb4/t4-config.txt", (char *)"cxgb4/t4fw.bin", {(unsigned char)0,
                                                                    0U, (unsigned short)0,
                                                                    0U, 0U, 0U, 0U,
                                                                    (unsigned char)0,
                                                                    0U, (unsigned char)0,
                                                                    0U, (unsigned char)0,
                                                                    0U, 0U, 0U, 0U,
                                                                    0U, {0U, 0U, 0U,
                                                                         0U, 0U, 0U,
                                                                         0U, 0U, 0U,
                                                                         0U, 0U, 0U,
                                                                         0U, 0U, 0U,
                                                                         0U, 0U, 0U,
                                                                         0U, 0U, 0U,
                                                                         0U, 0U}}},
        {5U,
      (char *)"cxgb4/t5-config.txt", (char *)"cxgb4/t5fw.bin", {(unsigned char)0,
                                                                1U, (unsigned short)0,
                                                                0U, 0U, 0U, 0U, (unsigned char)0,
                                                                0U, (unsigned char)0,
                                                                0U, (unsigned char)0,
                                                                0U, 0U, 0U, 0U, 0U,
                                                                {0U, 0U, 0U, 0U, 0U,
                                                                 0U, 0U, 0U, 0U, 0U,
                                                                 0U, 0U, 0U, 0U, 0U,
                                                                 0U, 0U, 0U, 0U, 0U,
                                                                 0U, 0U, 0U}}}};
static struct fw_info *find_fw_info(int chip )
{
  int i ;
  {
  i = 0;
  goto ldv_55661;
  ldv_55660: ;
  if ((int )fw_info_array[i].chip == chip) {
    return ((struct fw_info *)(& fw_info_array) + (unsigned long )i);
  } else {
  }
  i = i + 1;
  ldv_55661: ;
  if ((unsigned int )i <= 1U) {
    goto ldv_55660;
  } else {
  }
  return ((struct fw_info *)0);
}
}
static int adap_init0(struct adapter *adap )
{
  int ret ;
  u32 v ;
  u32 port_vec ;
  enum dev_state state ;
  u32 params[7U] ;
  u32 val[7U] ;
  struct fw_caps_config_cmd caps_cmd ;
  int reset ;
  struct fw_info *fw_info ;
  struct fw_hdr *card_fw ;
  struct firmware const *fw ;
  u8 const *fw_data ;
  unsigned int fw_size ;
  void *tmp ;
  unsigned int tmp___0 ;
  int tmp___1 ;
  unsigned int _min1 ;
  unsigned int _min2 ;
  int tmp___2 ;
  {
  {
  reset = 1;
  ret = t4_fw_hello(adap, adap->mbox, adap->fn, force_init != 0U ? 2 : 1, & state);
  }
  if (ret < 0) {
    {
    dev_err((struct device const *)adap->pdev_dev, "could not connect to FW, error %d\n",
            ret);
    }
    return (ret);
  } else {
  }
  if ((unsigned int )ret == adap->mbox) {
    adap->flags = adap->flags | 128U;
  } else {
  }
  if (force_init != 0U && (unsigned int )state == 1U) {
    state = 0;
  } else {
  }
  {
  t4_get_fw_version(adap, & adap->params.fw_vers);
  t4_get_tp_version(adap, & adap->params.tp_vers);
  }
  if ((adap->flags & 128U) != 0U && (unsigned int )state != 1U) {
    {
    fw_data = (u8 const *)0U;
    fw_size = 0U;
    fw_info = find_fw_info((int )((unsigned int )adap->params.chip >> 4) & 15);
    }
    if ((unsigned long )fw_info == (unsigned long )((struct fw_info *)0)) {
      {
      dev_err((struct device const *)adap->pdev_dev, "unable to get firmware info for chip %d.\n",
              ((unsigned int )adap->params.chip >> 4) & 15U);
      }
      return (-22);
    } else {
    }
    {
    tmp = t4_alloc_mem(128UL);
    card_fw = (struct fw_hdr *)tmp;
    ret = request_firmware(& fw, (char const *)fw_info->fw_mod_name, adap->pdev_dev);
    }
    if (ret < 0) {
      {
      dev_err((struct device const *)adap->pdev_dev, "unable to load firmware image %s, error %d\n",
              fw_info->fw_mod_name, ret);
      }
    } else {
      fw_data = fw->data;
      fw_size = (unsigned int )fw->size;
    }
    {
    ret = t4_prep_fw(adap, fw_info, fw_data, fw_size, card_fw, state, & reset);
    }
    if ((unsigned long )fw != (unsigned long )((struct firmware const *)0)) {
      {
      release_firmware(fw);
      }
    } else {
    }
    {
    t4_free_mem((void *)card_fw);
    }
    if (ret < 0) {
      goto bye;
    } else {
    }
  } else {
  }
  {
  ret = get_vpd_params(adap, & adap->params.vpd);
  }
  if (ret < 0) {
    goto bye;
  } else {
  }
  {
  v = 16842752U;
  ret = t4_query_params(adap, adap->mbox, adap->fn, 0U, 1U, (u32 const *)(& v),
                        & port_vec);
  }
  if (ret < 0) {
    goto bye;
  } else {
  }
  {
  tmp___0 = __arch_hweight32(port_vec);
  adap->params.nports = (unsigned char )tmp___0;
  adap->params.portvec = (unsigned char )port_vec;
  }
  if ((unsigned int )state == 1U) {
    {
    _dev_info((struct device const *)adap->pdev_dev, "Coming up as %s: Adapter already initialized\n",
              (adap->flags & 128U) != 0U ? (char *)"MASTER" : (char *)"SLAVE");
    adap->flags = adap->flags | 64U;
    }
  } else {
    {
    _dev_info((struct device const *)adap->pdev_dev, "Coming up as MASTER: Initializing adapter\n");
    }
    if (ret < 0) {
      {
      dev_warn((struct device const *)adap->pdev_dev, "Firmware doesn\'t support configuration file.\n");
      }
    } else {
    }
    if (force_old_init != 0U) {
      {
      ret = adap_init0_no_config(adap, reset);
      }
    } else {
      {
      params[0] = 17629184U;
      ret = t4_query_params(adap, adap->mbox, adap->fn, 0U, 1U, (u32 const *)(& params),
                            (u32 *)(& val));
      }
      if (ret < 0) {
        {
        ret = adap_init0_no_config(adap, reset);
        }
      } else {
        {
        ret = adap_init0_config(adap, reset);
        }
        if (ret == -2) {
          {
          _dev_info((struct device const *)adap->pdev_dev, "No Configuration File present on adapter. Using hard-wired configuration parameters.\n");
          ret = adap_init0_no_config(adap, reset);
          }
        } else {
        }
      }
    }
    if (ret < 0) {
      {
      dev_err((struct device const *)adap->pdev_dev, "could not initialize adapter, error %d\n",
              - ret);
      }
      goto bye;
    } else {
    }
  }
  if ((adap->flags & 64U) != 0U) {
    {
    ret = t4_sge_init(adap);
    }
    if (ret < 0) {
      goto bye;
    } else {
    }
  } else {
  }
  {
  tmp___1 = is_bypass_device((int )(adap->pdev)->device);
  }
  if (tmp___1 != 0) {
    adap->params.bypass = 1U;
  } else {
  }
  {
  params[0] = 36372480U;
  params[1] = 34799616U;
  params[2] = 34865152U;
  params[3] = 33882112U;
  params[4] = 33947648U;
  params[5] = 36241408U;
  ret = t4_query_params(adap, adap->mbox, adap->fn, 0U, 6U, (u32 const *)(& params),
                        (u32 *)(& val));
  }
  if (ret < 0) {
    goto bye;
  } else {
  }
  {
  adap->sge.egr_start = val[0];
  adap->l2t_start = val[1];
  adap->l2t_end = val[2];
  adap->tids.ftid_base = val[3];
  adap->tids.nftids = (val[4] - val[3]) + 1U;
  adap->sge.ingr_start = val[5];
  params[0] = 36503552U;
  params[1] = 36569088U;
  ret = t4_query_params(adap, adap->mbox, adap->fn, 0U, 2U, (u32 const *)(& params),
                        (u32 *)(& val));
  }
  if (val[0] != val[1] && ret >= 0) {
    adap->flags = adap->flags | 512U;
    adap->tids.aftid_base = val[0];
    adap->tids.aftid_end = val[1];
  } else {
  }
  {
  params[0] = 36765696U;
  val[0] = 1U;
  t4_set_params(adap, adap->mbox, adap->fn, 0U, 1U, (u32 const *)(& params), (u32 const *)(& val));
  memset((void *)(& caps_cmd), 0, 48UL);
  caps_cmd.op_to_write = 49159U;
  caps_cmd.cfvalid_to_len16 = 50331648U;
  ret = t4_wr_mbox(adap, (int )adap->mbox, (void const *)(& caps_cmd), 48, (void *)(& caps_cmd));
  }
  if (ret < 0) {
    goto bye;
  } else {
  }
  if ((unsigned int )caps_cmd.ofldcaps != 0U) {
    {
    params[0] = 16908288U;
    params[1] = 34013184U;
    params[2] = 34078720U;
    params[3] = 34144256U;
    params[4] = 34209792U;
    params[5] = 16973824U;
    ret = t4_query_params(adap, adap->mbox, adap->fn, 0U, 6U, (u32 const *)(& params),
                          (u32 *)(& val));
    }
    if (ret < 0) {
      goto bye;
    } else {
    }
    adap->tids.ntids = val[0];
    _min1 = adap->tids.ntids / 2U;
    _min2 = 8192U;
    adap->tids.natids = _min1 < _min2 ? _min1 : _min2;
    adap->tids.stid_base = val[1];
    adap->tids.nstids = (val[2] - val[1]) + 1U;
    if ((adap->flags & 512U) != 0U) {
      {
      tmp___2 = is_bypass(adap);
      }
      if (tmp___2 == 0) {
        adap->tids.sftid_base = adap->tids.ftid_base + (adap->tids.nftids + 2U) / 3U;
        adap->tids.nsftids = adap->tids.nftids - (adap->tids.nftids + 2U) / 3U;
        adap->tids.nftids = adap->tids.sftid_base - adap->tids.ftid_base;
      } else {
      }
    } else {
    }
    adap->vres.ddp.start = val[3];
    adap->vres.ddp.size = (val[4] - val[3]) + 1U;
    adap->params.ofldq_wr_cred = val[5];
    adap->params.offload = 1U;
  } else {
  }
  if ((unsigned int )caps_cmd.rdmacaps != 0U) {
    {
    params[0] = 34406400U;
    params[1] = 34471936U;
    params[2] = 35586048U;
    params[3] = 34603008U;
    params[4] = 34668544U;
    params[5] = 34734080U;
    ret = t4_query_params(adap, adap->mbox, adap->fn, 0U, 6U, (u32 const *)(& params),
                          (u32 *)(& val));
    }
    if (ret < 0) {
      goto bye;
    } else {
    }
    {
    adap->vres.stag.start = val[0];
    adap->vres.stag.size = (val[1] - val[0]) + 1U;
    adap->vres.rq.start = val[2];
    adap->vres.rq.size = (val[3] - val[2]) + 1U;
    adap->vres.pbl.start = val[4];
    adap->vres.pbl.size = (val[5] - val[4]) + 1U;
    params[0] = 34930688U;
    params[1] = 34996224U;
    params[2] = 35061760U;
    params[3] = 35127296U;
    params[4] = 36044800U;
    params[5] = 36110336U;
    ret = t4_query_params(adap, 0U, 0U, 0U, 6U, (u32 const *)(& params), (u32 *)(& val));
    }
    if (ret < 0) {
      goto bye;
    } else {
    }
    adap->vres.qp.start = val[0];
    adap->vres.qp.size = (val[1] - val[0]) + 1U;
    adap->vres.cq.start = val[2];
    adap->vres.cq.size = (val[3] - val[2]) + 1U;
    adap->vres.ocq.start = val[4];
    adap->vres.ocq.size = (val[5] - val[4]) + 1U;
  } else {
  }
  if ((unsigned int )caps_cmd.iscsicaps != 0U) {
    {
    params[0] = 34275328U;
    params[1] = 34340864U;
    ret = t4_query_params(adap, adap->mbox, adap->fn, 0U, 2U, (u32 const *)(& params),
                          (u32 *)(& val));
    }
    if (ret < 0) {
      goto bye;
    } else {
    }
    adap->vres.iscsi.start = val[0];
    adap->vres.iscsi.size = (val[1] - val[0]) + 1U;
  } else {
  }
  {
  t4_read_mtu_tbl(adap, (u16 *)(& adap->params.mtus), (u8 *)0U);
  t4_load_mtus(adap, (unsigned short const *)(& adap->params.mtus), (unsigned short const *)(& adap->params.a_wnd),
               (unsigned short const *)(& adap->params.b_wnd));
  t4_init_tp_params(adap);
  adap->flags = adap->flags | 16U;
  }
  return (0);
  bye: ;
  if (ret != -110 && ret != -5) {
    {
    t4_fw_bye(adap, adap->mbox);
    }
  } else {
  }
  return (ret);
}
}
static pci_ers_result_t eeh_err_detected(struct pci_dev *pdev , pci_channel_state_t state )
{
  int i ;
  struct adapter *adap ;
  void *tmp ;
  struct net_device *dev ;
  {
  {
  tmp = pci_get_drvdata(pdev);
  adap = (struct adapter *)tmp;
  }
  if ((unsigned long )adap == (unsigned long )((struct adapter *)0)) {
    goto out;
  } else {
  }
  {
  rtnl_lock();
  adap->flags = adap->flags & 4294967279U;
  notify_ulds(adap, 1);
  spin_lock(& adap->stats_lock);
  i = 0;
  }
  goto ldv_55692;
  ldv_55691:
  {
  dev = adap->port[i];
  netif_device_detach(dev);
  netif_carrier_off(dev);
  i = i + 1;
  }
  ldv_55692: ;
  if (i < (int )adap->params.nports) {
    goto ldv_55691;
  } else {
  }
  {
  spin_unlock(& adap->stats_lock);
  }
  if ((int )adap->flags & 1) {
    {
    cxgb_down(adap);
    }
  } else {
  }
  {
  rtnl_unlock();
  }
  if ((adap->flags & 2U) != 0U) {
    {
    pci_disable_device(pdev);
    adap->flags = adap->flags & 4294967293U;
    }
  } else {
  }
  out: ;
  return (state == 3U ? 4U : 3U);
}
}
static pci_ers_result_t eeh_slot_reset(struct pci_dev *pdev )
{
  int i ;
  int ret ;
  struct fw_caps_config_cmd c ;
  struct adapter *adap ;
  void *tmp ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  struct port_info *p ;
  struct port_info *tmp___4 ;
  int tmp___5 ;
  {
  {
  tmp = pci_get_drvdata(pdev);
  adap = (struct adapter *)tmp;
  }
  if ((unsigned long )adap == (unsigned long )((struct adapter *)0)) {
    {
    pci_restore_state(pdev);
    pci_save_state(pdev);
    }
    return (5U);
  } else {
  }
  if ((adap->flags & 2U) == 0U) {
    {
    tmp___0 = pci_enable_device(pdev);
    }
    if (tmp___0 != 0) {
      {
      dev_err((struct device const *)(& pdev->dev), "Cannot reenable PCI device after reset\n");
      }
      return (4U);
    } else {
    }
    adap->flags = adap->flags | 2U;
  } else {
  }
  {
  pci_set_master(pdev);
  pci_restore_state(pdev);
  pci_save_state(pdev);
  pci_cleanup_aer_uncorrect_error_status(pdev);
  tmp___1 = t4_wait_dev_ready(adap);
  }
  if (tmp___1 < 0) {
    return (4U);
  } else {
  }
  {
  tmp___2 = t4_fw_hello(adap, adap->fn, adap->fn, 2, (enum dev_state *)0);
  }
  if (tmp___2 < 0) {
    return (4U);
  } else {
  }
  {
  adap->flags = adap->flags | 16U;
  tmp___3 = adap_init1(adap, & c);
  }
  if (tmp___3 != 0) {
    return (4U);
  } else {
  }
  i = 0;
  goto ldv_55703;
  ldv_55702:
  {
  tmp___4 = adap2pinfo(adap, i);
  p = tmp___4;
  ret = t4_alloc_vi(adap, adap->fn, (unsigned int )p->tx_chan, adap->fn, 0U, 1U, (u8 *)0U,
                    (unsigned int *)0U);
  }
  if (ret < 0) {
    return (4U);
  } else {
  }
  p->viid = (u16 )ret;
  p->xact_addr_filt = -1;
  i = i + 1;
  ldv_55703: ;
  if (i < (int )adap->params.nports) {
    goto ldv_55702;
  } else {
  }
  {
  t4_load_mtus(adap, (unsigned short const *)(& adap->params.mtus), (unsigned short const *)(& adap->params.a_wnd),
               (unsigned short const *)(& adap->params.b_wnd));
  setup_memwin(adap);
  tmp___5 = cxgb_up(adap);
  }
  if (tmp___5 != 0) {
    return (4U);
  } else {
  }
  return (5U);
}
}
static void eeh_resume(struct pci_dev *pdev )
{
  int i ;
  struct adapter *adap ;
  void *tmp ;
  struct net_device *dev ;
  bool tmp___0 ;
  {
  {
  tmp = pci_get_drvdata(pdev);
  adap = (struct adapter *)tmp;
  }
  if ((unsigned long )adap == (unsigned long )((struct adapter *)0)) {
    return;
  } else {
  }
  {
  rtnl_lock();
  i = 0;
  }
  goto ldv_55712;
  ldv_55711:
  {
  dev = adap->port[i];
  tmp___0 = netif_running((struct net_device const *)dev);
  }
  if ((int )tmp___0) {
    {
    link_start(dev);
    cxgb_set_rxmode(dev);
    }
  } else {
  }
  {
  netif_device_attach(dev);
  i = i + 1;
  }
  ldv_55712: ;
  if (i < (int )adap->params.nports) {
    goto ldv_55711;
  } else {
  }
  {
  rtnl_unlock();
  }
  return;
}
}
static struct pci_error_handlers const cxgb4_eeh = {(pci_ers_result_t (*)(struct pci_dev * , enum pci_channel_state ))(& eeh_err_detected),
    0, 0, & eeh_slot_reset, & eeh_resume};
__inline static bool is_10g_port(struct link_config const *lc )
{
  {
  return (((int )lc->supported & 8) != 0);
}
}
__inline static void init_rspq(struct sge_rspq *q , u8 timer_idx , u8 pkt_cnt_idx ,
                               unsigned int size , unsigned int iqe_size )
{
  {
  q->intr_params = (u8 )((int )((signed char )((int )timer_idx << 1)) | ((unsigned int )pkt_cnt_idx <= 3U));
  q->pktcnt_idx = (unsigned int )pkt_cnt_idx <= 3U ? pkt_cnt_idx : 0U;
  q->iqe_len = iqe_size;
  q->size = size;
  return;
}
}
static void cfg_queues(struct adapter *adap )
{
  struct sge *s ;
  int i ;
  int q10g ;
  int n10g ;
  int qidx ;
  struct port_info *tmp ;
  bool tmp___0 ;
  int tmp___1 ;
  struct port_info *pi ;
  struct port_info *tmp___2 ;
  bool tmp___3 ;
  int __min1 ;
  int __min2 ;
  unsigned int tmp___4 ;
  unsigned char __y ;
  int tmp___5 ;
  struct sge_eth_rxq *r ;
  struct sge_ofld_rxq *r___0 ;
  struct sge_ofld_rxq *r___1 ;
  {
  s = & adap->sge;
  q10g = 0;
  n10g = 0;
  qidx = 0;
  i = 0;
  goto ldv_55734;
  ldv_55733:
  {
  tmp = adap2pinfo(adap, i);
  tmp___0 = is_10g_port((struct link_config const *)(& tmp->link_cfg));
  n10g = n10g + (int )tmp___0;
  i = i + 1;
  }
  ldv_55734: ;
  if (i < (int )adap->params.nports) {
    goto ldv_55733;
  } else {
  }
  if (n10g != 0) {
    q10g = ((n10g - (int )adap->params.nports) + 32) / n10g;
  } else {
  }
  {
  tmp___1 = netif_get_num_default_rss_queues();
  }
  if (q10g > tmp___1) {
    {
    q10g = netif_get_num_default_rss_queues();
    }
  } else {
  }
  i = 0;
  goto ldv_55738;
  ldv_55737:
  {
  tmp___2 = adap2pinfo(adap, i);
  pi = tmp___2;
  pi->first_qset = (u8 )qidx;
  tmp___3 = is_10g_port((struct link_config const *)(& pi->link_cfg));
  pi->nqsets = (int )tmp___3 ? (u8 )q10g : 1U;
  qidx = qidx + (int )pi->nqsets;
  i = i + 1;
  }
  ldv_55738: ;
  if (i < (int )adap->params.nports) {
    goto ldv_55737;
  } else {
  }
  {
  s->ethqsets = (u16 )qidx;
  s->max_ethqsets = (u16 )qidx;
  tmp___5 = is_offload((struct adapter const *)adap);
  }
  if (tmp___5 != 0) {
    if (n10g != 0) {
      {
      __min1 = 16;
      tmp___4 = cpumask_weight(cpu_online_mask);
      __min2 = (int )tmp___4;
      i = __min1 < __min2 ? __min1 : __min2;
      __y = adap->params.nports;
      s->ofldqsets = (u16 )(((i + ((int )__y + -1)) / (int )__y) * (int )__y);
      }
    } else {
      s->ofldqsets = (u16 )adap->params.nports;
    }
    s->rdmaqs = (u16 )adap->params.nports;
  } else {
  }
  i = 0;
  goto ldv_55751;
  ldv_55750:
  {
  r = (struct sge_eth_rxq *)(& s->ethrxq) + (unsigned long )i;
  init_rspq(& r->rspq, 0, 0, 1024U, 64U);
  r->fl.size = 72U;
  i = i + 1;
  }
  ldv_55751: ;
  if ((unsigned int )i <= 31U) {
    goto ldv_55750;
  } else {
  }
  i = 0;
  goto ldv_55756;
  ldv_55755:
  s->ethtxq[i].q.size = 1024U;
  i = i + 1;
  ldv_55756: ;
  if ((unsigned int )i <= 31U) {
    goto ldv_55755;
  } else {
  }
  i = 0;
  goto ldv_55761;
  ldv_55760:
  s->ctrlq[i].q.size = 512U;
  i = i + 1;
  ldv_55761: ;
  if ((unsigned int )i <= 3U) {
    goto ldv_55760;
  } else {
  }
  i = 0;
  goto ldv_55766;
  ldv_55765:
  s->ofldtxq[i].q.size = 1024U;
  i = i + 1;
  ldv_55766: ;
  if ((unsigned int )i <= 15U) {
    goto ldv_55765;
  } else {
  }
  i = 0;
  goto ldv_55772;
  ldv_55771:
  {
  r___0 = (struct sge_ofld_rxq *)(& s->ofldrxq) + (unsigned long )i;
  init_rspq(& r___0->rspq, 0, 0, 1024U, 64U);
  r___0->rspq.uld = 1U;
  r___0->fl.size = 72U;
  i = i + 1;
  }
  ldv_55772: ;
  if ((unsigned int )i <= 15U) {
    goto ldv_55771;
  } else {
  }
  i = 0;
  goto ldv_55778;
  ldv_55777:
  {
  r___1 = (struct sge_ofld_rxq *)(& s->rdmarxq) + (unsigned long )i;
  init_rspq(& r___1->rspq, 0, 0, 511U, 64U);
  r___1->rspq.uld = 0U;
  r___1->fl.size = 72U;
  i = i + 1;
  }
  ldv_55778: ;
  if ((unsigned int )i <= 3U) {
    goto ldv_55777;
  } else {
  }
  {
  init_rspq(& s->fw_evtq, 6, 0, 512U, 64U);
  init_rspq(& s->intrq, 6, 0, 128U, 64U);
  }
  return;
}
}
static void reduce_ethqs(struct adapter *adap , int n )
{
  int i ;
  struct port_info *pi ;
  {
  goto ldv_55790;
  ldv_55789:
  i = 0;
  goto ldv_55788;
  ldv_55787:
  {
  pi = adap2pinfo(adap, i);
  }
  if ((unsigned int )pi->nqsets > 1U) {
    pi->nqsets = (u8 )((int )pi->nqsets - 1);
    adap->sge.ethqsets = (u16 )((int )adap->sge.ethqsets - 1);
    if ((int )adap->sge.ethqsets <= n) {
      goto ldv_55786;
    } else {
    }
  } else {
  }
  i = i + 1;
  ldv_55788: ;
  if (i < (int )adap->params.nports) {
    goto ldv_55787;
  } else {
  }
  ldv_55786: ;
  ldv_55790: ;
  if (n < (int )adap->sge.ethqsets) {
    goto ldv_55789;
  } else {
  }
  n = 0;
  i = 0;
  goto ldv_55793;
  ldv_55792:
  {
  pi = adap2pinfo(adap, i);
  pi->first_qset = (u8 )n;
  n = n + (int )pi->nqsets;
  i = i + 1;
  }
  ldv_55793: ;
  if (i < (int )adap->params.nports) {
    goto ldv_55792;
  } else {
  }
  return;
}
}
static int enable_msix(struct adapter *adap )
{
  int ofld_need ;
  int i ;
  int err ;
  int want ;
  int need ;
  struct sge *s ;
  unsigned int nchan ;
  struct msix_entry entries[65U] ;
  int tmp ;
  int tmp___0 ;
  {
  ofld_need = 0;
  s = & adap->sge;
  nchan = (unsigned int )adap->params.nports;
  i = 0;
  goto ldv_55809;
  ldv_55808:
  entries[i].entry = (u16 )i;
  i = i + 1;
  ldv_55809: ;
  if ((unsigned int )i <= 64U) {
    goto ldv_55808;
  } else {
  }
  {
  want = (int )s->max_ethqsets + 2;
  tmp = is_offload((struct adapter const *)adap);
  }
  if (tmp != 0) {
    want = want + ((int )s->rdmaqs + (int )s->ofldqsets);
    ofld_need = (int )(nchan * 2U);
  } else {
  }
  need = ((int )adap->params.nports + 2) + ofld_need;
  goto ldv_55812;
  ldv_55811:
  want = err;
  ldv_55812:
  {
  err = pci_enable_msix(adap->pdev, (struct msix_entry *)(& entries), want);
  }
  if (err >= need) {
    goto ldv_55811;
  } else {
  }
  if (err == 0) {
    i = (want + -2) - ofld_need;
    if (i < (int )s->max_ethqsets) {
      s->max_ethqsets = (u16 )i;
      if (i < (int )s->ethqsets) {
        {
        reduce_ethqs(adap, i);
        }
      } else {
      }
    } else {
    }
    {
    tmp___0 = is_offload((struct adapter const *)adap);
    }
    if (tmp___0 != 0) {
      i = (want + -2) - (int )s->max_ethqsets;
      i = (int )((unsigned int )i + (nchan - (unsigned int )ofld_need));
      s->ofldqsets = (int )((u16 )((unsigned int )i / nchan)) * (int )((u16 )nchan);
    } else {
    }
    i = 0;
    goto ldv_55815;
    ldv_55814:
    adap->msix_info[i].vec = (unsigned short )entries[i].vector;
    i = i + 1;
    ldv_55815: ;
    if (i < want) {
      goto ldv_55814;
    } else {
    }
  } else
  if (err > 0) {
    {
    _dev_info((struct device const *)adap->pdev_dev, "only %d MSI-X vectors left, not using MSI-X\n",
              err);
    }
  } else {
  }
  return (err);
}
}
static int init_rss(struct adapter *adap )
{
  unsigned int i ;
  unsigned int j ;
  struct port_info *pi ;
  struct port_info *tmp ;
  void *tmp___0 ;
  u32 tmp___1 ;
  {
  i = 0U;
  goto ldv_55827;
  ldv_55826:
  {
  tmp = adap2pinfo(adap, (int )i);
  pi = tmp;
  tmp___0 = kcalloc((size_t )pi->rss_size, 2UL, 208U);
  pi->rss = (u16 *)tmp___0;
  }
  if ((unsigned long )pi->rss == (unsigned long )((u16 *)0U)) {
    return (-12);
  } else {
  }
  j = 0U;
  goto ldv_55824;
  ldv_55823:
  {
  tmp___1 = ethtool_rxfh_indir_default(j, (u32 )pi->nqsets);
  *(pi->rss + (unsigned long )j) = (u16 )tmp___1;
  j = j + 1U;
  }
  ldv_55824: ;
  if (j < (unsigned int )pi->rss_size) {
    goto ldv_55823;
  } else {
  }
  i = i + 1U;
  ldv_55827: ;
  if (i < (unsigned int )adap->params.nports) {
    goto ldv_55826;
  } else {
  }
  return (0);
}
}
static void print_port_info(struct net_device const *dev )
{
  char const *base[12U] ;
  char buf[80U] ;
  char *bufp ;
  char const *spd ;
  struct port_info const *pi ;
  void *tmp ;
  struct adapter const *adap ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  {
  {
  base[0] = "R XFI";
  base[1] = "R XAUI";
  base[2] = "T SGMII";
  base[3] = "T XFI";
  base[4] = "T XAUI";
  base[5] = "KX4";
  base[6] = "CX4";
  base[7] = "KX";
  base[8] = "KR";
  base[9] = "R SFP+";
  base[10] = "KR/KX";
  base[11] = "KR/KX/KX4";
  bufp = (char *)(& buf);
  spd = "";
  tmp = netdev_priv(dev);
  pi = (struct port_info const *)tmp;
  adap = (struct adapter const *)pi->adapter;
  }
  if ((unsigned int )((unsigned char )adap->params.pci.speed) == 1U) {
    spd = " 2.5 GT/s";
  } else
  if ((unsigned int )((unsigned char )adap->params.pci.speed) == 2U) {
    spd = " 5 GT/s";
  } else {
  }
  if ((int )pi->link_cfg.supported & 1) {
    {
    tmp___0 = sprintf(bufp, "100/");
    bufp = bufp + (unsigned long )tmp___0;
    }
  } else {
  }
  if (((int )pi->link_cfg.supported & 2) != 0) {
    {
    tmp___1 = sprintf(bufp, "1000/");
    bufp = bufp + (unsigned long )tmp___1;
    }
  } else {
  }
  if (((int )pi->link_cfg.supported & 8) != 0) {
    {
    tmp___2 = sprintf(bufp, "10G/");
    bufp = bufp + (unsigned long )tmp___2;
    }
  } else {
  }
  if ((unsigned long )bufp != (unsigned long )((char *)(& buf))) {
    bufp = bufp - 1;
  } else {
  }
  {
  sprintf(bufp, "BASE-%s", base[(int )pi->port_type]);
  tmp___3 = is_offload(adap);
  netdev_info(dev, "Chelsio %s rev %d %s %sNIC PCIe x%d%s%s\n", (u8 const *)(& adap->params.vpd.id),
              (unsigned int )adap->params.chip & 15U, (char *)(& buf), tmp___3 != 0 ? (char *)"R" : (char *)"",
              (int )adap->params.pci.width, spd, ((unsigned int )adap->flags & 8U) == 0U ? (((unsigned int )adap->flags & 4U) != 0U ? (char *)" MSI" : (char *)"") : (char *)" MSI-X");
  netdev_info(dev, "S/N: %s, E/C: %s\n", (u8 const *)(& adap->params.vpd.sn), (u8 const *)(& adap->params.vpd.ec));
  }
  return;
}
}
static void enable_pcie_relaxed_ordering(struct pci_dev *dev )
{
  {
  {
  pcie_capability_set_word(dev, 8, 16);
  }
  return;
}
}
static void free_some_resources(struct adapter *adapter )
{
  unsigned int i ;
  struct port_info *tmp ;
  {
  {
  t4_free_mem((void *)adapter->l2t);
  t4_free_mem((void *)adapter->tids.tid_tab);
  disable_msi(adapter);
  i = 0U;
  }
  goto ldv_55846;
  ldv_55845: ;
  if ((unsigned long )adapter->port[i] != (unsigned long )((struct net_device *)0)) {
    {
    tmp = adap2pinfo(adapter, (int )i);
    kfree((void const *)tmp->rss);
    ldv_free_netdev_47(adapter->port[i]);
    }
  } else {
  }
  i = i + 1U;
  ldv_55846: ;
  if (i < (unsigned int )adapter->params.nports) {
    goto ldv_55845;
  } else {
  }
  if ((adapter->flags & 16U) != 0U) {
    {
    t4_fw_bye(adapter, adapter->fn);
    }
  } else {
  }
  return;
}
}
static int init_one(struct pci_dev *pdev , struct pci_device_id const *ent )
{
  int func ;
  int i ;
  int err ;
  int s_qpp ;
  int qpp ;
  int num_seg ;
  struct port_info *pi ;
  bool highdma ;
  struct adapter *adapter ;
  bool __print_once ;
  int tmp ;
  void *tmp___0 ;
  struct lock_class_key __key ;
  struct lock_class_key __key___0 ;
  struct lock_class_key __key___1 ;
  atomic_long_t __constr_expr_0 ;
  struct lock_class_key __key___2 ;
  atomic_long_t __constr_expr_1 ;
  struct lock_class_key __key___3 ;
  atomic_long_t __constr_expr_2 ;
  u32 tmp___1 ;
  int tmp___2 ;
  struct net_device *netdev ;
  void *tmp___3 ;
  int tmp___4 ;
  int tmp___5 ;
  int tmp___6 ;
  int tmp___7 ;
  char const *tmp___8 ;
  int tmp___9 ;
  int tmp___10 ;
  int tmp___11 ;
  {
  highdma = 0;
  adapter = (struct adapter *)0;
  if (! __print_once) {
    {
    __print_once = 1;
    printk("\016%s - version %s\n", (char *)"Chelsio T4/T5 Network Driver", (char *)"2.0.0-ko");
    }
  } else {
  }
  {
  err = pci_request_regions(pdev, "cxgb4");
  }
  if (err != 0) {
    {
    _dev_info((struct device const *)(& pdev->dev), "cannot obtain PCI resources\n");
    }
    return (err);
  } else {
  }
  func = (int )pdev->devfn & 7;
  if ((unsigned long )func != (unsigned long )ent->driver_data) {
    {
    pci_save_state(pdev);
    }
    goto sriov;
  } else {
  }
  {
  err = pci_enable_device(pdev);
  }
  if (err != 0) {
    {
    dev_err((struct device const *)(& pdev->dev), "cannot enable PCI device\n");
    }
    goto out_release_regions;
  } else {
  }
  {
  tmp = pci_set_dma_mask(pdev, 0xffffffffffffffffULL);
  }
  if (tmp == 0) {
    {
    highdma = 1;
    err = pci_set_consistent_dma_mask(pdev, 0xffffffffffffffffULL);
    }
    if (err != 0) {
      {
      dev_err((struct device const *)(& pdev->dev), "unable to obtain 64-bit DMA for coherent allocations\n");
      }
      goto out_disable_device;
    } else {
    }
  } else {
    {
    err = pci_set_dma_mask(pdev, 4294967295ULL);
    }
    if (err != 0) {
      {
      dev_err((struct device const *)(& pdev->dev), "no usable DMA configuration\n");
      }
      goto out_disable_device;
    } else {
    }
  }
  {
  pci_enable_pcie_error_reporting(pdev);
  enable_pcie_relaxed_ordering(pdev);
  pci_set_master(pdev);
  pci_save_state(pdev);
  tmp___0 = kzalloc(40384UL, 208U);
  adapter = (struct adapter *)tmp___0;
  }
  if ((unsigned long )adapter == (unsigned long )((struct adapter *)0)) {
    err = -12;
    goto out_disable_device;
  } else {
  }
  {
  adapter->flags = adapter->flags | 2U;
  adapter->regs = pci_ioremap_bar(pdev, 0);
  }
  if ((unsigned long )adapter->regs == (unsigned long )((void *)0)) {
    {
    dev_err((struct device const *)(& pdev->dev), "cannot map device registers\n");
    err = -12;
    }
    goto out_free_adapter;
  } else {
  }
  {
  adapter->pdev = pdev;
  adapter->pdev_dev = & pdev->dev;
  adapter->mbox = (unsigned int )func;
  adapter->fn = (unsigned int )func;
  adapter->msg_enable = dflt_msg_enable;
  memset((void *)(& adapter->chan_map), 255, 4UL);
  spinlock_check(& adapter->stats_lock);
  __raw_spin_lock_init(& adapter->stats_lock.__annonCompField19.rlock, "&(&adapter->stats_lock)->rlock",
                       & __key);
  spinlock_check(& adapter->tid_release_lock);
  __raw_spin_lock_init(& adapter->tid_release_lock.__annonCompField19.rlock, "&(&adapter->tid_release_lock)->rlock",
                       & __key___0);
  __init_work(& adapter->tid_release_task, 0);
  __constr_expr_0.counter = 137438953408L;
  adapter->tid_release_task.data = __constr_expr_0;
  lockdep_init_map(& adapter->tid_release_task.lockdep_map, "(&adapter->tid_release_task)",
                   & __key___1, 0);
  INIT_LIST_HEAD(& adapter->tid_release_task.entry);
  adapter->tid_release_task.func = & process_tid_release_list;
  __init_work(& adapter->db_full_task, 0);
  __constr_expr_1.counter = 137438953408L;
  adapter->db_full_task.data = __constr_expr_1;
  lockdep_init_map(& adapter->db_full_task.lockdep_map, "(&adapter->db_full_task)",
                   & __key___2, 0);
  INIT_LIST_HEAD(& adapter->db_full_task.entry);
  adapter->db_full_task.func = & process_db_full;
  __init_work(& adapter->db_drop_task, 0);
  __constr_expr_2.counter = 137438953408L;
  adapter->db_drop_task.data = __constr_expr_2;
  lockdep_init_map(& adapter->db_drop_task.lockdep_map, "(&adapter->db_drop_task)",
                   & __key___3, 0);
  INIT_LIST_HEAD(& adapter->db_drop_task.entry);
  adapter->db_drop_task.func = & process_db_drop;
  err = t4_prep_adapter(adapter);
  }
  if (err != 0) {
    goto out_unmap_bar0;
  } else {
  }
  {
  tmp___2 = is_t4(adapter->params.chip);
  }
  if (tmp___2 == 0) {
    {
    s_qpp = (int )(adapter->fn * 4U);
    tmp___1 = t4_read_reg(adapter, 4112U);
    qpp = 1 << ((int )(tmp___1 >> s_qpp) & 15);
    num_seg = 32;
    }
    if (qpp > num_seg) {
      {
      dev_err((struct device const *)(& pdev->dev), "Incorrect number of egress queues per page\n");
      err = -22;
      }
      goto out_unmap_bar0;
    } else {
    }
    {
    adapter->bar2 = ioremap_wc(pdev->resource[2].start, pdev->resource[2].start != 0ULL || pdev->resource[2].end != pdev->resource[2].start ? (unsigned long )((pdev->resource[2].end - pdev->resource[2].start) + 1ULL) : 0UL);
    }
    if ((unsigned long )adapter->bar2 == (unsigned long )((void *)0)) {
      {
      dev_err((struct device const *)(& pdev->dev), "cannot map device bar2 region\n");
      err = -12;
      }
      goto out_unmap_bar0;
    } else {
    }
  } else {
  }
  {
  setup_memwin(adapter);
  err = adap_init0(adapter);
  setup_memwin_rdma(adapter);
  }
  if (err != 0) {
    goto out_unmap_bar;
  } else {
  }
  i = 0;
  goto ldv_55879;
  ldv_55878:
  {
  netdev = ldv_alloc_etherdev_mqs_48(48, 32U, 32U);
  }
  if ((unsigned long )netdev == (unsigned long )((struct net_device *)0)) {
    err = -12;
    goto out_free_dev;
  } else {
  }
  {
  netdev->dev.parent = & pdev->dev;
  adapter->port[i] = netdev;
  tmp___3 = netdev_priv((struct net_device const *)netdev);
  pi = (struct port_info *)tmp___3;
  pi->adapter = adapter;
  pi->xact_addr_filt = -1;
  pi->port_id = (u8 )i;
  netdev->irq = (int )pdev->irq;
  netdev->hw_features = 6444089747ULL;
  }
  if ((int )highdma) {
    netdev->hw_features = netdev->hw_features | 32ULL;
  } else {
  }
  netdev->features = netdev->features | netdev->hw_features;
  netdev->vlan_features = netdev->features & 1638451ULL;
  netdev->priv_flags = netdev->priv_flags | 131072U;
  netdev->netdev_ops = & cxgb4_netdev_ops;
  netdev->ethtool_ops = & cxgb_ethtool_ops;
  i = i + 1;
  ldv_55879: ;
  if (i < (int )adapter->params.nports) {
    goto ldv_55878;
  } else {
  }
  {
  pci_set_drvdata(pdev, (void *)adapter);
  }
  if ((adapter->flags & 16U) != 0U) {
    {
    err = t4_port_init(adapter, func, func, 0);
    }
    if (err != 0) {
      goto out_free_dev;
    } else {
    }
  } else {
  }
  {
  cfg_queues(adapter);
  adapter->l2t = t4_init_l2t();
  }
  if ((unsigned long )adapter->l2t == (unsigned long )((struct l2t_data *)0)) {
    {
    dev_warn((struct device const *)(& pdev->dev), "could not allocate L2T, continuing\n");
    adapter->params.offload = 0U;
    }
  } else {
  }
  {
  tmp___4 = is_offload((struct adapter const *)adapter);
  }
  if (tmp___4 != 0) {
    {
    tmp___5 = tid_init(& adapter->tids);
    }
    if (tmp___5 < 0) {
      {
      dev_warn((struct device const *)(& pdev->dev), "could not allocate TID table, continuing\n");
      adapter->params.offload = 0U;
      }
    } else {
    }
  } else {
  }
  if (msi > 1) {
    {
    tmp___7 = enable_msix(adapter);
    }
    if (tmp___7 == 0) {
      adapter->flags = adapter->flags | 8U;
    } else {
      goto _L;
    }
  } else
  _L:
  if (msi > 0) {
    {
    tmp___6 = pci_enable_msi_block(pdev, 1);
    }
    if (tmp___6 == 0) {
      adapter->flags = adapter->flags | 4U;
    } else {
    }
  } else {
  }
  {
  err = init_rss(adapter);
  }
  if (err != 0) {
    goto out_free_dev;
  } else {
  }
  i = 0;
  goto ldv_55883;
  ldv_55882:
  {
  pi = adap2pinfo(adapter, i);
  netif_set_real_num_tx_queues(adapter->port[i], (unsigned int )pi->nqsets);
  netif_set_real_num_rx_queues(adapter->port[i], (unsigned int )pi->nqsets);
  err = ldv_register_netdev_49(adapter->port[i]);
  }
  if (err != 0) {
    goto ldv_55881;
  } else {
  }
  {
  adapter->chan_map[(int )pi->tx_chan] = (u8 )i;
  print_port_info((struct net_device const *)adapter->port[i]);
  i = i + 1;
  }
  ldv_55883: ;
  if (i < (int )adapter->params.nports) {
    goto ldv_55882;
  } else {
  }
  ldv_55881: ;
  if (i == 0) {
    {
    dev_err((struct device const *)(& pdev->dev), "could not register any net devices\n");
    }
    goto out_free_dev;
  } else {
  }
  if (err != 0) {
    {
    dev_warn((struct device const *)(& pdev->dev), "only %d net devices registered\n",
             i);
    err = 0;
    }
  } else {
  }
  if ((unsigned long )cxgb4_debugfs_root != (unsigned long )((struct dentry *)0)) {
    {
    tmp___8 = pci_name((struct pci_dev const *)pdev);
    adapter->debugfs_root = debugfs_create_dir(tmp___8, cxgb4_debugfs_root);
    setup_debugfs(adapter);
    }
  } else {
  }
  {
  pdev->needs_freset = 1U;
  tmp___9 = is_offload((struct adapter const *)adapter);
  }
  if (tmp___9 != 0) {
    {
    attach_ulds(adapter);
    }
  } else {
  }
  sriov: ;
  if ((unsigned int )func <= 3U && num_vf[func] != 0U) {
    {
    tmp___10 = pci_enable_sriov(pdev, (int )num_vf[func]);
    }
    if (tmp___10 == 0) {
      {
      _dev_info((struct device const *)(& pdev->dev), "instantiated %u virtual functions\n",
                num_vf[func]);
      }
    } else {
    }
  } else {
  }
  return (0);
  out_free_dev:
  {
  free_some_resources(adapter);
  }
  out_unmap_bar:
  {
  tmp___11 = is_t4(adapter->params.chip);
  }
  if (tmp___11 == 0) {
    {
    iounmap((void volatile *)adapter->bar2);
    }
  } else {
  }
  out_unmap_bar0:
  {
  iounmap((void volatile *)adapter->regs);
  }
  out_free_adapter:
  {
  kfree((void const *)adapter);
  }
  out_disable_device:
  {
  pci_disable_pcie_error_reporting(pdev);
  pci_disable_device(pdev);
  }
  out_release_regions:
  {
  pci_release_regions(pdev);
  }
  return (err);
}
}
static void remove_one(struct pci_dev *pdev )
{
  struct adapter *adapter ;
  void *tmp ;
  int i ;
  int tmp___0 ;
  struct filter_entry *f ;
  int tmp___1 ;
  {
  {
  tmp = pci_get_drvdata(pdev);
  adapter = (struct adapter *)tmp;
  pci_disable_sriov(pdev);
  }
  if ((unsigned long )adapter != (unsigned long )((struct adapter *)0)) {
    {
    tmp___0 = is_offload((struct adapter const *)adapter);
    }
    if (tmp___0 != 0) {
      {
      detach_ulds(adapter);
      }
    } else {
    }
    i = 0;
    goto ldv_55892;
    ldv_55891: ;
    if ((unsigned int )(adapter->port[i])->reg_state == 1U) {
      {
      ldv_unregister_netdev_50(adapter->port[i]);
      }
    } else {
    }
    i = i + 1;
    ldv_55892: ;
    if (i < (int )adapter->params.nports) {
      goto ldv_55891;
    } else {
    }
    if ((unsigned long )adapter->debugfs_root != (unsigned long )((struct dentry *)0)) {
      {
      debugfs_remove_recursive(adapter->debugfs_root);
      }
    } else {
    }
    if ((unsigned long )adapter->tids.ftid_tab != (unsigned long )((struct filter_entry *)0)) {
      f = adapter->tids.ftid_tab;
      i = 0;
      goto ldv_55896;
      ldv_55895: ;
      if ((unsigned int )*((unsigned char *)f + 0UL) != 0U) {
        {
        clear_filter(adapter, f);
        }
      } else {
      }
      i = i + 1;
      f = f + 1;
      ldv_55896: ;
      if ((unsigned int )i < adapter->tids.nftids + adapter->tids.nsftids) {
        goto ldv_55895;
      } else {
      }
    } else {
    }
    if ((int )adapter->flags & 1) {
      {
      cxgb_down(adapter);
      }
    } else {
    }
    {
    free_some_resources(adapter);
    iounmap((void volatile *)adapter->regs);
    tmp___1 = is_t4(adapter->params.chip);
    }
    if (tmp___1 == 0) {
      {
      iounmap((void volatile *)adapter->bar2);
      }
    } else {
    }
    {
    pci_disable_pcie_error_reporting(pdev);
    }
    if ((adapter->flags & 2U) != 0U) {
      {
      pci_disable_device(pdev);
      adapter->flags = adapter->flags & 4294967293U;
      }
    } else {
    }
    {
    pci_release_regions(pdev);
    kfree((void const *)adapter);
    }
  } else {
    {
    pci_release_regions(pdev);
    }
  }
  return;
}
}
static struct pci_driver cxgb4_driver =
     {{0, 0}, "cxgb4", (struct pci_device_id const *)(& cxgb4_pci_tbl), & init_one,
    & remove_one, 0, 0, 0, 0, & remove_one, 0, & cxgb4_eeh, {0, 0, 0, 0, (_Bool)0,
                                                             0, 0, 0, 0, 0, 0, 0,
                                                             0, 0, 0}, {{{{{{0U}},
                                                                           0U, 0U,
                                                                           0, {0,
                                                                               {0,
                                                                                0},
                                                                               0,
                                                                               0,
                                                                               0UL}}}},
                                                                        {0, 0}}};
static int cxgb4_init_module(void)
{
  int ret ;
  struct lock_class_key __key ;
  char const *__lock_name ;
  struct workqueue_struct *tmp ;
  {
  {
  __lock_name = "\"%s\"(\"cxgb4\")";
  tmp = __alloc_workqueue_key("%s", 10U, 1, & __key, __lock_name, (char *)"cxgb4");
  workq = tmp;
  }
  if ((unsigned long )workq == (unsigned long )((struct workqueue_struct *)0)) {
    return (-12);
  } else {
  }
  {
  cxgb4_debugfs_root = debugfs_create_dir("cxgb4", (struct dentry *)0);
  }
  if ((unsigned long )cxgb4_debugfs_root == (unsigned long )((struct dentry *)0)) {
    {
    printk("\fcxgb4: could not create debugfs entry, continuing\n");
    }
  } else {
  }
  {
  ret = ldv___pci_register_driver_51(& cxgb4_driver, & __this_module, "cxgb4");
  }
  if (ret < 0) {
    {
    debugfs_remove(cxgb4_debugfs_root);
    destroy_workqueue(workq);
    }
  } else {
  }
  {
  ldv_register_inet6addr_notifier_52(& cxgb4_inet6addr_notifier);
  }
  return (ret);
}
}
static void cxgb4_cleanup_module(void)
{
  {
  {
  ldv_unregister_inet6addr_notifier_53(& cxgb4_inet6addr_notifier);
  ldv_pci_unregister_driver_54(& cxgb4_driver);
  debugfs_remove(cxgb4_debugfs_root);
  flush_workqueue(workq);
  destroy_workqueue(workq);
  }
  return;
}
}
void ldv_EMGentry_exit_cxgb4_cleanup_module_26_2(void (*arg0)(void) ) ;
int ldv_EMGentry_init_cxgb4_init_module_26_10(int (*arg0)(void) ) ;
int ldv___pci_register_driver(int arg0 , struct pci_driver *arg1 , struct module *arg2 ,
                              char *arg3 ) ;
struct net_device *ldv_alloc_etherdev_mqs(struct net_device *arg0 , int arg1 , unsigned int arg2 ,
                                          unsigned int arg3 ) ;
void ldv_dispatch_deregister_19_1(struct net_device *arg0 ) ;
void ldv_dispatch_deregister_20_1(struct pci_driver *arg0 ) ;
void ldv_dispatch_deregister_22_1(struct notifier_block *arg0 ) ;
void ldv_dispatch_deregister_file_operations_instance_10_26_4(void) ;
void ldv_dispatch_deregister_seq_instance_16_26_5(void) ;
void ldv_dispatch_irq_deregister_12_1(int arg0 ) ;
void ldv_dispatch_irq_register_16_2(int arg0 , enum irqreturn (*arg1)(int , void * ) ,
                                    enum irqreturn (*arg2)(int , void * ) , void *arg3 ) ;
void ldv_dispatch_irq_register_17_2(int arg0 , enum irqreturn (*arg1)(int , void * ) ,
                                    enum irqreturn (*arg2)(int , void * ) , void *arg3 ) ;
void ldv_dispatch_register_15_4(struct net_device *arg0 ) ;
void ldv_dispatch_register_21_2(struct pci_driver *arg0 ) ;
void ldv_dispatch_register_24_2(struct notifier_block *arg0 ) ;
void ldv_dispatch_register_file_operations_instance_10_26_6(void) ;
void ldv_dummy_resourceless_instance_callback_4_12(int (*arg0)(struct net_device * ) ,
                                                   struct net_device *arg1 ) ;
void ldv_dummy_resourceless_instance_callback_4_13(void (*arg0)(struct net_device * ,
                                                                struct ethtool_stats * ,
                                                                unsigned long long * ) ,
                                                   struct net_device *arg1 , struct ethtool_stats *arg2 ,
                                                   unsigned long long *arg3 ) ;
void ldv_dummy_resourceless_instance_callback_4_16(unsigned int (*arg0)(struct net_device * ) ,
                                                   struct net_device *arg1 ) ;
void ldv_dummy_resourceless_instance_callback_4_17(unsigned int (*arg0)(struct net_device * ) ,
                                                   struct net_device *arg1 ) ;
void ldv_dummy_resourceless_instance_callback_4_18(void (*arg0)(struct net_device * ,
                                                                struct ethtool_pauseparam * ) ,
                                                   struct net_device *arg1 , struct ethtool_pauseparam *arg2 ) ;
void ldv_dummy_resourceless_instance_callback_4_19(void (*arg0)(struct net_device * ,
                                                                struct ethtool_regs * ,
                                                                void * ) , struct net_device *arg1 ,
                                                   struct ethtool_regs *arg2 , void *arg3 ) ;
void ldv_dummy_resourceless_instance_callback_4_20(int (*arg0)(struct net_device * ) ,
                                                   struct net_device *arg1 ) ;
void ldv_dummy_resourceless_instance_callback_4_21(void (*arg0)(struct net_device * ,
                                                                struct ethtool_ringparam * ) ,
                                                   struct net_device *arg1 , struct ethtool_ringparam *arg2 ) ;
void ldv_dummy_resourceless_instance_callback_4_22(int (*arg0)(struct net_device * ,
                                                               unsigned int * ) ,
                                                   struct net_device *arg1 , unsigned int *arg2 ) ;
void ldv_dummy_resourceless_instance_callback_4_25(unsigned int (*arg0)(struct net_device * ) ,
                                                   struct net_device *arg1 ) ;
void ldv_dummy_resourceless_instance_callback_4_26(int (*arg0)(struct net_device * ,
                                                               struct ethtool_rxnfc * ,
                                                               unsigned int * ) ,
                                                   struct net_device *arg1 , struct ethtool_rxnfc *arg2 ,
                                                   unsigned int *arg3 ) ;
void ldv_dummy_resourceless_instance_callback_4_29(int (*arg0)(struct net_device * ,
                                                               struct ethtool_cmd * ) ,
                                                   struct net_device *arg1 , struct ethtool_cmd *arg2 ) ;
void ldv_dummy_resourceless_instance_callback_4_3(int (*arg0)(struct net_device * ,
                                                              struct ethtool_flash * ) ,
                                                  struct net_device *arg1 , struct ethtool_flash *arg2 ) ;
void ldv_dummy_resourceless_instance_callback_4_30(int (*arg0)(struct net_device * ,
                                                               int ) , struct net_device *arg1 ,
                                                   int arg2 ) ;
void ldv_dummy_resourceless_instance_callback_4_33(void (*arg0)(struct net_device * ,
                                                                unsigned int , unsigned char * ) ,
                                                   struct net_device *arg1 , unsigned int arg2 ,
                                                   unsigned char *arg3 ) ;
void ldv_dummy_resourceless_instance_callback_4_36(void (*arg0)(struct net_device * ,
                                                                struct ethtool_wolinfo * ) ,
                                                   struct net_device *arg1 , struct ethtool_wolinfo *arg2 ) ;
void ldv_dummy_resourceless_instance_callback_4_37(int (*arg0)(struct net_device * ,
                                                               int ) , struct net_device *arg1 ,
                                                   int arg2 ) ;
void ldv_dummy_resourceless_instance_callback_4_40(int (*arg0)(struct net_device * ,
                                                               struct ifreq * , int ) ,
                                                   struct net_device *arg1 , struct ifreq *arg2 ,
                                                   int arg3 ) ;
void ldv_dummy_resourceless_instance_callback_4_43(struct rtnl_link_stats64 *(*arg0)(struct net_device * ,
                                                                                     struct rtnl_link_stats64 * ) ,
                                                   struct net_device *arg1 , struct rtnl_link_stats64 *arg2 ) ;
void ldv_dummy_resourceless_instance_callback_4_44(void (*arg0)(struct net_device * ) ,
                                                   struct net_device *arg1 ) ;
void ldv_dummy_resourceless_instance_callback_4_45(int (*arg0)(struct net_device * ,
                                                               unsigned long long ) ,
                                                   struct net_device *arg1 , unsigned long long arg2 ) ;
void ldv_dummy_resourceless_instance_callback_4_48(int (*arg0)(struct net_device * ,
                                                               void * ) , struct net_device *arg1 ,
                                                   void *arg2 ) ;
void ldv_dummy_resourceless_instance_callback_4_49(void (*arg0)(struct net_device * ) ,
                                                   struct net_device *arg1 ) ;
void ldv_dummy_resourceless_instance_callback_4_50(enum netdev_tx (*arg0)(struct sk_buff * ,
                                                                          struct net_device * ) ,
                                                   struct sk_buff *arg1 , struct net_device *arg2 ) ;
void ldv_dummy_resourceless_instance_callback_4_51(int (*arg0)(struct net_device * ) ,
                                                   struct net_device *arg1 ) ;
void ldv_dummy_resourceless_instance_callback_4_52(int (*arg0)(struct net_device * ) ,
                                                   struct net_device *arg1 ) ;
void ldv_dummy_resourceless_instance_callback_4_53(int (*arg0)(struct net_device * ,
                                                               struct ethtool_coalesce * ) ,
                                                   struct net_device *arg1 , struct ethtool_coalesce *arg2 ) ;
void ldv_dummy_resourceless_instance_callback_4_54(int (*arg0)(struct net_device * ,
                                                               struct ethtool_eeprom * ,
                                                               unsigned char * ) ,
                                                   struct net_device *arg1 , struct ethtool_eeprom *arg2 ,
                                                   unsigned char *arg3 ) ;
void ldv_dummy_resourceless_instance_callback_4_57(void (*arg0)(struct net_device * ,
                                                                unsigned int ) ,
                                                   struct net_device *arg1 , unsigned int arg2 ) ;
void ldv_dummy_resourceless_instance_callback_4_60(int (*arg0)(struct net_device * ,
                                                               struct ethtool_pauseparam * ) ,
                                                   struct net_device *arg1 , struct ethtool_pauseparam *arg2 ) ;
void ldv_dummy_resourceless_instance_callback_4_61(int (*arg0)(struct net_device * ,
                                                               enum ethtool_phys_id_state ) ,
                                                   struct net_device *arg1 , enum ethtool_phys_id_state arg2 ) ;
void ldv_dummy_resourceless_instance_callback_4_62(int (*arg0)(struct net_device * ,
                                                               struct ethtool_ringparam * ) ,
                                                   struct net_device *arg1 , struct ethtool_ringparam *arg2 ) ;
void ldv_dummy_resourceless_instance_callback_4_63(int (*arg0)(struct net_device * ,
                                                               unsigned int * ) ,
                                                   struct net_device *arg1 , unsigned int *arg2 ) ;
void ldv_dummy_resourceless_instance_callback_4_66(int (*arg0)(struct net_device * ,
                                                               struct ethtool_cmd * ) ,
                                                   struct net_device *arg1 , struct ethtool_cmd *arg2 ) ;
void ldv_dummy_resourceless_instance_callback_4_67(int (*arg0)(struct net_device * ,
                                                               struct ethtool_wolinfo * ) ,
                                                   struct net_device *arg1 , struct ethtool_wolinfo *arg2 ) ;
void ldv_dummy_resourceless_instance_callback_4_7(int (*arg0)(struct net_device * ,
                                                              struct ethtool_coalesce * ) ,
                                                  struct net_device *arg1 , struct ethtool_coalesce *arg2 ) ;
void ldv_dummy_resourceless_instance_callback_4_8(void (*arg0)(struct net_device * ,
                                                               struct ethtool_drvinfo * ) ,
                                                  struct net_device *arg1 , struct ethtool_drvinfo *arg2 ) ;
void ldv_dummy_resourceless_instance_callback_4_9(int (*arg0)(struct net_device * ,
                                                              struct ethtool_eeprom * ,
                                                              unsigned char * ) ,
                                                  struct net_device *arg1 , struct ethtool_eeprom *arg2 ,
                                                  unsigned char *arg3 ) ;
void ldv_dummy_resourceless_instance_callback_7_3(int (*arg0)(struct notifier_block * ,
                                                              unsigned long , void * ) ,
                                                  struct notifier_block *arg1 , unsigned long arg2 ,
                                                  void *arg3 ) ;
void ldv_dummy_resourceless_instance_callback_8_3(int (*arg0)(struct notifier_block * ,
                                                              unsigned long , void * ) ,
                                                  struct notifier_block *arg1 , unsigned long arg2 ,
                                                  void *arg3 ) ;
void ldv_entry_EMGentry_26(void *arg0 ) ;
int main(void) ;
void ldv_file_operations_file_operations_instance_0(void *arg0 ) ;
void ldv_file_operations_file_operations_instance_1(void *arg0 ) ;
void ldv_file_operations_instance_callback_0_22(long (*arg0)(struct file * , char * ,
                                                             unsigned long , long long * ) ,
                                                struct file *arg1 , char *arg2 , unsigned long arg3 ,
                                                long long *arg4 ) ;
void ldv_file_operations_instance_callback_0_5(long long (*arg0)(struct file * , long long ,
                                                                 int ) , struct file *arg1 ,
                                               long long arg2 , int arg3 ) ;
int ldv_file_operations_instance_probe_0_12(int (*arg0)(struct inode * , struct file * ) ,
                                            struct inode *arg1 , struct file *arg2 ) ;
void ldv_file_operations_instance_release_0_2(int (*arg0)(struct inode * , struct file * ) ,
                                              struct inode *arg1 , struct file *arg2 ) ;
void ldv_file_operations_instance_write_0_4(long (*arg0)(struct file * , char * ,
                                                         unsigned long , long long * ) ,
                                            struct file *arg1 , char *arg2 , unsigned long arg3 ,
                                            long long *arg4 ) ;
void ldv_file_operations_instance_write_1_4(long (*arg0)(struct file * , char * ,
                                                         unsigned long , long long * ) ,
                                            struct file *arg1 , char *arg2 , unsigned long arg3 ,
                                            long long *arg4 ) ;
void ldv_free_irq(void *arg0 , int arg1 , void *arg2 ) ;
void ldv_free_netdev(void *arg0 , struct net_device *arg1 ) ;
enum irqreturn ldv_interrupt_instance_handler_2_5(enum irqreturn (*arg0)(int , void * ) ,
                                                  int arg1 , void *arg2 ) ;
enum irqreturn ldv_interrupt_instance_handler_3_5(enum irqreturn (*arg0)(int , void * ) ,
                                                  int arg1 , void *arg2 ) ;
void ldv_interrupt_instance_thread_2_3(enum irqreturn (*arg0)(int , void * ) , int arg1 ,
                                       void *arg2 ) ;
void ldv_interrupt_instance_thread_3_3(enum irqreturn (*arg0)(int , void * ) , int arg1 ,
                                       void *arg2 ) ;
void ldv_interrupt_interrupt_instance_2(void *arg0 ) ;
void ldv_interrupt_interrupt_instance_3(void *arg0 ) ;
void ldv_net_dummy_resourceless_instance_4(void *arg0 ) ;
void ldv_pci_instance_callback_5_10(unsigned int (*arg0)(struct pci_dev * , enum pci_channel_state ) ,
                                    struct pci_dev *arg1 , enum pci_channel_state arg2 ) ;
void ldv_pci_instance_callback_5_23(void (*arg0)(struct pci_dev * ) , struct pci_dev *arg1 ) ;
void ldv_pci_instance_callback_5_24(unsigned int (*arg0)(struct pci_dev * ) , struct pci_dev *arg1 ) ;
int ldv_pci_instance_probe_5_17(int (*arg0)(struct pci_dev * , struct pci_device_id * ) ,
                                struct pci_dev *arg1 , struct pci_device_id *arg2 ) ;
void ldv_pci_instance_release_5_2(void (*arg0)(struct pci_dev * ) , struct pci_dev *arg1 ) ;
void ldv_pci_instance_resume_5_5(int (*arg0)(struct pci_dev * ) , struct pci_dev *arg1 ) ;
void ldv_pci_instance_resume_early_5_6(int (*arg0)(struct pci_dev * ) , struct pci_dev *arg1 ) ;
void ldv_pci_instance_shutdown_5_3(void (*arg0)(struct pci_dev * ) , struct pci_dev *arg1 ) ;
int ldv_pci_instance_suspend_5_8(int (*arg0)(struct pci_dev * , struct pm_message ) ,
                                 struct pci_dev *arg1 , struct pm_message arg2 ) ;
int ldv_pci_instance_suspend_late_5_7(int (*arg0)(struct pci_dev * , struct pm_message ) ,
                                      struct pci_dev *arg1 , struct pm_message arg2 ) ;
void ldv_pci_pci_instance_5(void *arg0 ) ;
void ldv_pci_unregister_driver(void *arg0 , struct pci_driver *arg1 ) ;
int ldv_register_inet6addr_notifier(int arg0 , struct notifier_block *arg1 ) ;
int ldv_register_netdev(int arg0 , struct net_device *arg1 ) ;
int ldv_register_netdev_open_15_6(int (*arg0)(struct net_device * ) , struct net_device *arg1 ) ;
int ldv_register_netevent_notifier(int arg0 , struct notifier_block *arg1 ) ;
int ldv_request_irq(int arg0 , unsigned int arg1 , enum irqreturn (*arg2)(int , void * ) ,
                    unsigned long arg3 , char *arg4 , void *arg5 ) ;
void ldv_struct_notifier_block_dummy_resourceless_instance_7(void *arg0 ) ;
void ldv_struct_notifier_block_dummy_resourceless_instance_8(void *arg0 ) ;
void ldv_timer_instance_callback_9_2(void (*arg0)(unsigned long ) , unsigned long arg1 ) ;
void ldv_timer_timer_instance_9(void *arg0 ) ;
int ldv_unregister_inet6addr_notifier(int arg0 , struct notifier_block *arg1 ) ;
void ldv_unregister_netdev(void *arg0 , struct net_device *arg1 ) ;
void ldv_unregister_netdev_stop_19_2(int (*arg0)(struct net_device * ) , struct net_device *arg1 ) ;
int ldv_unregister_netevent_notifier(int arg0 , struct notifier_block *arg1 ) ;
struct ldv_thread ldv_thread_0 ;
struct ldv_thread ldv_thread_2 ;
struct ldv_thread ldv_thread_26 ;
struct ldv_thread ldv_thread_3 ;
struct ldv_thread ldv_thread_4 ;
struct ldv_thread ldv_thread_5 ;
struct ldv_thread ldv_thread_7 ;
struct ldv_thread ldv_thread_8 ;
struct ldv_thread ldv_thread_9 ;
void ldv_EMGentry_exit_cxgb4_cleanup_module_26_2(void (*arg0)(void) )
{
  {
  {
  cxgb4_cleanup_module();
  }
  return;
}
}
int ldv_EMGentry_init_cxgb4_init_module_26_10(int (*arg0)(void) )
{
  int tmp ;
  {
  {
  tmp = cxgb4_init_module();
  }
  return (tmp);
}
}
int ldv___pci_register_driver(int arg0 , struct pci_driver *arg1 , struct module *arg2 ,
                              char *arg3 )
{
  struct pci_driver *ldv_21_pci_driver_pci_driver ;
  int tmp ;
  {
  {
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    {
    ldv_assume(arg0 == 0);
    ldv_21_pci_driver_pci_driver = arg1;
    ldv_dispatch_register_21_2(ldv_21_pci_driver_pci_driver);
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
struct net_device *ldv_alloc_etherdev_mqs(struct net_device *arg0 , int arg1 , unsigned int arg2 ,
                                          unsigned int arg3 )
{
  struct net_device *ldv_10_netdev_net_device ;
  void *tmp ;
  int tmp___0 ;
  {
  {
  tmp___0 = ldv_undef_int();
  }
  if (tmp___0 != 0) {
    {
    tmp = ldv_xmalloc(3200UL);
    ldv_10_netdev_net_device = (struct net_device *)tmp;
    }
    return (ldv_10_netdev_net_device);
    return (arg0);
  } else {
    return ((struct net_device *)0);
    return (arg0);
  }
  return (arg0);
}
}
void ldv_dispatch_deregister_19_1(struct net_device *arg0 )
{
  {
  return;
}
}
void ldv_dispatch_deregister_20_1(struct pci_driver *arg0 )
{
  {
  return;
}
}
void ldv_dispatch_deregister_22_1(struct notifier_block *arg0 )
{
  int tmp ;
  {
  {
  tmp = ldv_undef_int();
  }
  return;
}
}
void ldv_dispatch_deregister_file_operations_instance_10_26_4(void)
{
  {
  return;
}
}
void ldv_dispatch_deregister_seq_instance_16_26_5(void)
{
  {
  return;
}
}
void ldv_dispatch_irq_deregister_12_1(int arg0 )
{
  int tmp ;
  {
  {
  tmp = ldv_undef_int();
  }
  return;
}
}
void ldv_dispatch_irq_register_16_2(int arg0 , enum irqreturn (*arg1)(int , void * ) ,
                                    enum irqreturn (*arg2)(int , void * ) , void *arg3 )
{
  struct ldv_struct_interrupt_instance_2 *cf_arg_2 ;
  struct ldv_struct_interrupt_instance_2 *cf_arg_3 ;
  void *tmp ;
  void *tmp___0 ;
  int tmp___1 ;
  {
  {
  tmp___1 = ldv_undef_int();
  }
  if (tmp___1 != 0) {
    {
    tmp = ldv_xmalloc(40UL);
    cf_arg_2 = (struct ldv_struct_interrupt_instance_2 *)tmp;
    cf_arg_2->arg0 = arg0;
    cf_arg_2->arg1 = arg1;
    cf_arg_2->arg2 = arg2;
    cf_arg_2->arg3 = arg3;
    ldv_interrupt_interrupt_instance_2((void *)cf_arg_2);
    }
  } else {
    {
    tmp___0 = ldv_xmalloc(40UL);
    cf_arg_3 = (struct ldv_struct_interrupt_instance_2 *)tmp___0;
    cf_arg_3->arg0 = arg0;
    cf_arg_3->arg1 = arg1;
    cf_arg_3->arg2 = arg2;
    cf_arg_3->arg3 = arg3;
    ldv_interrupt_interrupt_instance_3((void *)cf_arg_3);
    }
  }
  return;
}
}
void ldv_dispatch_irq_register_17_2(int arg0 , enum irqreturn (*arg1)(int , void * ) ,
                                    enum irqreturn (*arg2)(int , void * ) , void *arg3 )
{
  struct ldv_struct_interrupt_instance_2 *cf_arg_2 ;
  struct ldv_struct_interrupt_instance_2 *cf_arg_3 ;
  void *tmp ;
  void *tmp___0 ;
  int tmp___1 ;
  {
  {
  tmp___1 = ldv_undef_int();
  }
  if (tmp___1 != 0) {
    {
    tmp = ldv_xmalloc(40UL);
    cf_arg_2 = (struct ldv_struct_interrupt_instance_2 *)tmp;
    cf_arg_2->arg0 = arg0;
    cf_arg_2->arg1 = arg1;
    cf_arg_2->arg2 = arg2;
    cf_arg_2->arg3 = arg3;
    ldv_interrupt_interrupt_instance_2((void *)cf_arg_2);
    }
  } else {
    {
    tmp___0 = ldv_xmalloc(40UL);
    cf_arg_3 = (struct ldv_struct_interrupt_instance_2 *)tmp___0;
    cf_arg_3->arg0 = arg0;
    cf_arg_3->arg1 = arg1;
    cf_arg_3->arg2 = arg2;
    cf_arg_3->arg3 = arg3;
    ldv_interrupt_interrupt_instance_3((void *)cf_arg_3);
    }
  }
  return;
}
}
void ldv_dispatch_register_15_4(struct net_device *arg0 )
{
  struct ldv_struct_dummy_resourceless_instance_4 *cf_arg_4 ;
  void *tmp ;
  {
  {
  tmp = ldv_xmalloc(16UL);
  cf_arg_4 = (struct ldv_struct_dummy_resourceless_instance_4 *)tmp;
  cf_arg_4->arg0 = arg0;
  ldv_net_dummy_resourceless_instance_4((void *)cf_arg_4);
  }
  return;
}
}
void ldv_dispatch_register_21_2(struct pci_driver *arg0 )
{
  struct ldv_struct_pci_instance_5 *cf_arg_5 ;
  void *tmp ;
  {
  {
  tmp = ldv_xmalloc(16UL);
  cf_arg_5 = (struct ldv_struct_pci_instance_5 *)tmp;
  cf_arg_5->arg0 = arg0;
  ldv_pci_pci_instance_5((void *)cf_arg_5);
  }
  return;
}
}
void ldv_dispatch_register_24_2(struct notifier_block *arg0 )
{
  struct ldv_struct_dummy_resourceless_instance_7 *cf_arg_8 ;
  struct ldv_struct_dummy_resourceless_instance_7 *cf_arg_7 ;
  void *tmp ;
  void *tmp___0 ;
  int tmp___1 ;
  {
  {
  tmp___1 = ldv_undef_int();
  }
  if (tmp___1 != 0) {
    {
    tmp = ldv_xmalloc(16UL);
    cf_arg_8 = (struct ldv_struct_dummy_resourceless_instance_7 *)tmp;
    cf_arg_8->arg0 = arg0;
    ldv_struct_notifier_block_dummy_resourceless_instance_8((void *)cf_arg_8);
    }
  } else {
    {
    tmp___0 = ldv_xmalloc(16UL);
    cf_arg_7 = (struct ldv_struct_dummy_resourceless_instance_7 *)tmp___0;
    cf_arg_7->arg0 = arg0;
    ldv_struct_notifier_block_dummy_resourceless_instance_7((void *)cf_arg_7);
    }
  }
  return;
}
}
void ldv_dispatch_register_file_operations_instance_10_26_6(void)
{
  struct ldv_struct_EMGentry_26 *cf_arg_0 ;
  struct ldv_struct_EMGentry_26 *cf_arg_1 ;
  void *tmp ;
  void *tmp___0 ;
  {
  {
  tmp = ldv_xmalloc(4UL);
  cf_arg_0 = (struct ldv_struct_EMGentry_26 *)tmp;
  ldv_file_operations_file_operations_instance_0((void *)cf_arg_0);
  tmp___0 = ldv_xmalloc(4UL);
  cf_arg_1 = (struct ldv_struct_EMGentry_26 *)tmp___0;
  ldv_file_operations_file_operations_instance_1((void *)cf_arg_1);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_4_12(int (*arg0)(struct net_device * ) ,
                                                   struct net_device *arg1 )
{
  {
  {
  get_eeprom_len(arg1);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_4_13(void (*arg0)(struct net_device * ,
                                                                struct ethtool_stats * ,
                                                                unsigned long long * ) ,
                                                   struct net_device *arg1 , struct ethtool_stats *arg2 ,
                                                   unsigned long long *arg3 )
{
  {
  {
  get_stats(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_4_16(unsigned int (*arg0)(struct net_device * ) ,
                                                   struct net_device *arg1 )
{
  {
  {
  ethtool_op_get_link(arg1);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_4_17(unsigned int (*arg0)(struct net_device * ) ,
                                                   struct net_device *arg1 )
{
  {
  {
  get_msglevel(arg1);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_4_18(void (*arg0)(struct net_device * ,
                                                                struct ethtool_pauseparam * ) ,
                                                   struct net_device *arg1 , struct ethtool_pauseparam *arg2 )
{
  {
  {
  get_pauseparam(arg1, arg2);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_4_19(void (*arg0)(struct net_device * ,
                                                                struct ethtool_regs * ,
                                                                void * ) , struct net_device *arg1 ,
                                                   struct ethtool_regs *arg2 , void *arg3 )
{
  {
  {
  get_regs(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_4_20(int (*arg0)(struct net_device * ) ,
                                                   struct net_device *arg1 )
{
  {
  {
  get_regs_len(arg1);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_4_21(void (*arg0)(struct net_device * ,
                                                                struct ethtool_ringparam * ) ,
                                                   struct net_device *arg1 , struct ethtool_ringparam *arg2 )
{
  {
  {
  get_sge_param(arg1, arg2);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_4_22(int (*arg0)(struct net_device * ,
                                                               unsigned int * ) ,
                                                   struct net_device *arg1 , unsigned int *arg2 )
{
  {
  {
  get_rss_table(arg1, arg2);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_4_25(unsigned int (*arg0)(struct net_device * ) ,
                                                   struct net_device *arg1 )
{
  {
  {
  get_rss_table_size(arg1);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_4_26(int (*arg0)(struct net_device * ,
                                                               struct ethtool_rxnfc * ,
                                                               unsigned int * ) ,
                                                   struct net_device *arg1 , struct ethtool_rxnfc *arg2 ,
                                                   unsigned int *arg3 )
{
  {
  {
  get_rxnfc(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_4_29(int (*arg0)(struct net_device * ,
                                                               struct ethtool_cmd * ) ,
                                                   struct net_device *arg1 , struct ethtool_cmd *arg2 )
{
  {
  {
  get_settings(arg1, arg2);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_4_3(int (*arg0)(struct net_device * ,
                                                              struct ethtool_flash * ) ,
                                                  struct net_device *arg1 , struct ethtool_flash *arg2 )
{
  {
  {
  set_flash(arg1, arg2);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_4_30(int (*arg0)(struct net_device * ,
                                                               int ) , struct net_device *arg1 ,
                                                   int arg2 )
{
  {
  {
  get_sset_count(arg1, arg2);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_4_33(void (*arg0)(struct net_device * ,
                                                                unsigned int , unsigned char * ) ,
                                                   struct net_device *arg1 , unsigned int arg2 ,
                                                   unsigned char *arg3 )
{
  {
  {
  get_strings(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_4_36(void (*arg0)(struct net_device * ,
                                                                struct ethtool_wolinfo * ) ,
                                                   struct net_device *arg1 , struct ethtool_wolinfo *arg2 )
{
  {
  {
  get_wol(arg1, arg2);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_4_37(int (*arg0)(struct net_device * ,
                                                               int ) , struct net_device *arg1 ,
                                                   int arg2 )
{
  {
  {
  cxgb_change_mtu(arg1, arg2);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_4_40(int (*arg0)(struct net_device * ,
                                                               struct ifreq * , int ) ,
                                                   struct net_device *arg1 , struct ifreq *arg2 ,
                                                   int arg3 )
{
  {
  {
  cxgb_ioctl(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_4_43(struct rtnl_link_stats64 *(*arg0)(struct net_device * ,
                                                                                     struct rtnl_link_stats64 * ) ,
                                                   struct net_device *arg1 , struct rtnl_link_stats64 *arg2 )
{
  {
  {
  cxgb_get_stats(arg1, arg2);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_4_44(void (*arg0)(struct net_device * ) ,
                                                   struct net_device *arg1 )
{
  {
  {
  cxgb_netpoll(arg1);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_4_45(int (*arg0)(struct net_device * ,
                                                               unsigned long long ) ,
                                                   struct net_device *arg1 , unsigned long long arg2 )
{
  {
  {
  cxgb_set_features(arg1, arg2);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_4_48(int (*arg0)(struct net_device * ,
                                                               void * ) , struct net_device *arg1 ,
                                                   void *arg2 )
{
  {
  {
  cxgb_set_mac_addr(arg1, arg2);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_4_49(void (*arg0)(struct net_device * ) ,
                                                   struct net_device *arg1 )
{
  {
  {
  cxgb_set_rxmode(arg1);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_4_50(enum netdev_tx (*arg0)(struct sk_buff * ,
                                                                          struct net_device * ) ,
                                                   struct sk_buff *arg1 , struct net_device *arg2 )
{
  {
  {
  t4_eth_xmit(arg1, arg2);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_4_51(int (*arg0)(struct net_device * ) ,
                                                   struct net_device *arg1 )
{
  {
  {
  eth_validate_addr(arg1);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_4_52(int (*arg0)(struct net_device * ) ,
                                                   struct net_device *arg1 )
{
  {
  {
  restart_autoneg(arg1);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_4_53(int (*arg0)(struct net_device * ,
                                                               struct ethtool_coalesce * ) ,
                                                   struct net_device *arg1 , struct ethtool_coalesce *arg2 )
{
  {
  {
  set_coalesce(arg1, arg2);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_4_54(int (*arg0)(struct net_device * ,
                                                               struct ethtool_eeprom * ,
                                                               unsigned char * ) ,
                                                   struct net_device *arg1 , struct ethtool_eeprom *arg2 ,
                                                   unsigned char *arg3 )
{
  {
  {
  set_eeprom(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_4_57(void (*arg0)(struct net_device * ,
                                                                unsigned int ) ,
                                                   struct net_device *arg1 , unsigned int arg2 )
{
  {
  {
  set_msglevel(arg1, arg2);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_4_60(int (*arg0)(struct net_device * ,
                                                               struct ethtool_pauseparam * ) ,
                                                   struct net_device *arg1 , struct ethtool_pauseparam *arg2 )
{
  {
  {
  set_pauseparam(arg1, arg2);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_4_61(int (*arg0)(struct net_device * ,
                                                               enum ethtool_phys_id_state ) ,
                                                   struct net_device *arg1 , enum ethtool_phys_id_state arg2 )
{
  {
  {
  identify_port(arg1, arg2);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_4_62(int (*arg0)(struct net_device * ,
                                                               struct ethtool_ringparam * ) ,
                                                   struct net_device *arg1 , struct ethtool_ringparam *arg2 )
{
  {
  {
  set_sge_param(arg1, arg2);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_4_63(int (*arg0)(struct net_device * ,
                                                               unsigned int * ) ,
                                                   struct net_device *arg1 , unsigned int *arg2 )
{
  {
  {
  set_rss_table(arg1, (u32 const *)arg2);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_4_66(int (*arg0)(struct net_device * ,
                                                               struct ethtool_cmd * ) ,
                                                   struct net_device *arg1 , struct ethtool_cmd *arg2 )
{
  {
  {
  set_settings(arg1, arg2);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_4_67(int (*arg0)(struct net_device * ,
                                                               struct ethtool_wolinfo * ) ,
                                                   struct net_device *arg1 , struct ethtool_wolinfo *arg2 )
{
  {
  {
  set_wol(arg1, arg2);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_4_7(int (*arg0)(struct net_device * ,
                                                              struct ethtool_coalesce * ) ,
                                                  struct net_device *arg1 , struct ethtool_coalesce *arg2 )
{
  {
  {
  get_coalesce(arg1, arg2);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_4_8(void (*arg0)(struct net_device * ,
                                                               struct ethtool_drvinfo * ) ,
                                                  struct net_device *arg1 , struct ethtool_drvinfo *arg2 )
{
  {
  {
  get_drvinfo(arg1, arg2);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_4_9(int (*arg0)(struct net_device * ,
                                                              struct ethtool_eeprom * ,
                                                              unsigned char * ) ,
                                                  struct net_device *arg1 , struct ethtool_eeprom *arg2 ,
                                                  unsigned char *arg3 )
{
  {
  {
  get_eeprom(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_7_3(int (*arg0)(struct notifier_block * ,
                                                              unsigned long , void * ) ,
                                                  struct notifier_block *arg1 , unsigned long arg2 ,
                                                  void *arg3 )
{
  {
  {
  cxgb4_inet6addr_handler(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_8_3(int (*arg0)(struct notifier_block * ,
                                                              unsigned long , void * ) ,
                                                  struct notifier_block *arg1 , unsigned long arg2 ,
                                                  void *arg3 )
{
  {
  {
  netevent_cb(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_entry_EMGentry_26(void *arg0 )
{
  void (*ldv_26_exit_cxgb4_cleanup_module_default)(void) ;
  int (*ldv_26_init_cxgb4_init_module_default)(void) ;
  int ldv_26_ret_default ;
  int tmp ;
  int tmp___0 ;
  {
  {
  ldv_26_ret_default = ldv_EMGentry_init_cxgb4_init_module_26_10(ldv_26_init_cxgb4_init_module_default);
  ldv_26_ret_default = ldv_post_init(ldv_26_ret_default);
  tmp___0 = ldv_undef_int();
  }
  if (tmp___0 != 0) {
    {
    ldv_assume(ldv_26_ret_default != 0);
    ldv_check_final_state();
    ldv_stop();
    }
    return;
  } else {
    {
    ldv_assume(ldv_26_ret_default == 0);
    tmp = ldv_undef_int();
    }
    if (tmp != 0) {
      {
      ldv_dispatch_register_file_operations_instance_10_26_6();
      ldv_dispatch_deregister_seq_instance_16_26_5();
      ldv_dispatch_deregister_file_operations_instance_10_26_4();
      }
    } else {
    }
    {
    ldv_EMGentry_exit_cxgb4_cleanup_module_26_2(ldv_26_exit_cxgb4_cleanup_module_default);
    ldv_check_final_state();
    ldv_stop();
    }
    return;
  }
  return;
}
}
int main(void)
{
  {
  {
  ldv_initialize();
  ldv_entry_EMGentry_26((void *)0);
  }
return 0;
}
}
void ldv_file_operations_file_operations_instance_0(void *arg0 )
{
  long long (*ldv_0_callback_llseek)(struct file * , long long , int ) ;
  long (*ldv_0_callback_read)(struct file * , char * , unsigned long , long long * ) ;
  struct file_operations *ldv_0_container_file_operations ;
  char *ldv_0_ldv_param_22_1_default ;
  long long *ldv_0_ldv_param_22_3_default ;
  char *ldv_0_ldv_param_4_1_default ;
  long long *ldv_0_ldv_param_4_3_default ;
  long long ldv_0_ldv_param_5_1_default ;
  int ldv_0_ldv_param_5_2_default ;
  struct file *ldv_0_resource_file ;
  struct inode *ldv_0_resource_inode ;
  int ldv_0_ret_default ;
  unsigned long ldv_0_size_cnt_write_size ;
  void *tmp ;
  void *tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  int tmp___4 ;
  void *tmp___5 ;
  void *tmp___6 ;
  void *tmp___7 ;
  void *tmp___8 ;
  int tmp___9 ;
  {
  {
  ldv_0_ret_default = 1;
  tmp = ldv_xmalloc(520UL);
  ldv_0_resource_file = (struct file *)tmp;
  tmp___0 = ldv_xmalloc(1032UL);
  ldv_0_resource_inode = (struct inode *)tmp___0;
  tmp___1 = ldv_undef_int();
  ldv_0_size_cnt_write_size = (unsigned long )tmp___1;
  }
  goto ldv_main_0;
  return;
  ldv_main_0:
  {
  tmp___3 = ldv_undef_int();
  }
  if (tmp___3 != 0) {
    {
    ldv_0_ret_default = ldv_file_operations_instance_probe_0_12(ldv_0_container_file_operations->open,
                                                                ldv_0_resource_inode,
                                                                ldv_0_resource_file);
    ldv_0_ret_default = ldv_filter_err_code(ldv_0_ret_default);
    tmp___2 = ldv_undef_int();
    }
    if (tmp___2 != 0) {
      {
      ldv_assume(ldv_0_ret_default == 0);
      }
      goto ldv_call_0;
    } else {
      {
      ldv_assume(ldv_0_ret_default != 0);
      }
      goto ldv_main_0;
    }
  } else {
    {
    ldv_free((void *)ldv_0_resource_file);
    ldv_free((void *)ldv_0_resource_inode);
    }
    return;
  }
  return;
  ldv_call_0:
  {
  tmp___4 = ldv_undef_int();
  }
  {
  if (tmp___4 == 1) {
    goto case_1;
  } else {
  }
  if (tmp___4 == 2) {
    goto case_2;
  } else {
  }
  if (tmp___4 == 3) {
    goto case_3;
  } else {
  }
  goto switch_default;
  case_1:
  {
  tmp___5 = ldv_xmalloc(1UL);
  ldv_0_ldv_param_4_1_default = (char *)tmp___5;
  tmp___6 = ldv_xmalloc(8UL);
  ldv_0_ldv_param_4_3_default = (long long *)tmp___6;
  ldv_assume(ldv_0_size_cnt_write_size <= 2147479552UL);
  }
  if ((unsigned long )ldv_0_container_file_operations->write != (unsigned long )((ssize_t (*)(struct file * ,
                                                                                              char const * ,
                                                                                              size_t ,
                                                                                              loff_t * ))0)) {
    {
    ldv_file_operations_instance_write_0_4((long (*)(struct file * , char * , unsigned long ,
                                                     long long * ))ldv_0_container_file_operations->write,
                                           ldv_0_resource_file, ldv_0_ldv_param_4_1_default,
                                           ldv_0_size_cnt_write_size, ldv_0_ldv_param_4_3_default);
    }
  } else {
  }
  {
  ldv_free((void *)ldv_0_ldv_param_4_1_default);
  ldv_free((void *)ldv_0_ldv_param_4_3_default);
  }
  goto ldv_call_0;
  case_2: ;
  if ((unsigned long )ldv_0_container_file_operations->release != (unsigned long )((int (*)(struct inode * ,
                                                                                            struct file * ))0)) {
    {
    ldv_file_operations_instance_release_0_2(ldv_0_container_file_operations->release,
                                             ldv_0_resource_inode, ldv_0_resource_file);
    }
  } else {
  }
  goto ldv_main_0;
  case_3:
  {
  tmp___9 = ldv_undef_int();
  }
  if (tmp___9 != 0) {
    {
    tmp___7 = ldv_xmalloc(1UL);
    ldv_0_ldv_param_22_1_default = (char *)tmp___7;
    tmp___8 = ldv_xmalloc(8UL);
    ldv_0_ldv_param_22_3_default = (long long *)tmp___8;
    ldv_file_operations_instance_callback_0_22(ldv_0_callback_read, ldv_0_resource_file,
                                               ldv_0_ldv_param_22_1_default, ldv_0_size_cnt_write_size,
                                               ldv_0_ldv_param_22_3_default);
    ldv_free((void *)ldv_0_ldv_param_22_1_default);
    ldv_free((void *)ldv_0_ldv_param_22_3_default);
    }
  } else {
    {
    ldv_file_operations_instance_callback_0_5(ldv_0_callback_llseek, ldv_0_resource_file,
                                              ldv_0_ldv_param_5_1_default, ldv_0_ldv_param_5_2_default);
    }
  }
  goto ldv_56877;
  switch_default:
  {
  ldv_stop();
  }
  switch_break: ;
  }
  ldv_56877: ;
  goto ldv_call_0;
  goto ldv_call_0;
  return;
}
}
void ldv_file_operations_instance_callback_0_22(long (*arg0)(struct file * , char * ,
                                                             unsigned long , long long * ) ,
                                                struct file *arg1 , char *arg2 , unsigned long arg3 ,
                                                long long *arg4 )
{
  {
  {
  mem_read(arg1, arg2, arg3, arg4);
  }
  return;
}
}
void ldv_file_operations_instance_callback_0_5(long long (*arg0)(struct file * , long long ,
                                                                 int ) , struct file *arg1 ,
                                               long long arg2 , int arg3 )
{
  {
  {
  default_llseek(arg1, arg2, arg3);
  }
  return;
}
}
int ldv_file_operations_instance_probe_0_12(int (*arg0)(struct inode * , struct file * ) ,
                                            struct inode *arg1 , struct file *arg2 )
{
  int tmp ;
  {
  {
  tmp = simple_open(arg1, arg2);
  }
  return (tmp);
}
}
void ldv_file_operations_instance_release_0_2(int (*arg0)(struct inode * , struct file * ) ,
                                              struct inode *arg1 , struct file *arg2 )
{
  {
  {
  (*arg0)(arg1, arg2);
  }
  return;
}
}
void ldv_file_operations_instance_write_0_4(long (*arg0)(struct file * , char * ,
                                                         unsigned long , long long * ) ,
                                            struct file *arg1 , char *arg2 , unsigned long arg3 ,
                                            long long *arg4 )
{
  {
  {
  (*arg0)(arg1, arg2, arg3, arg4);
  }
  return;
}
}
void ldv_file_operations_instance_write_1_4(long (*arg0)(struct file * , char * ,
                                                         unsigned long , long long * ) ,
                                            struct file *arg1 , char *arg2 , unsigned long arg3 ,
                                            long long *arg4 )
{
  {
  {
  (*arg0)(arg1, arg2, arg3, arg4);
  }
  return;
}
}
void ldv_free_irq(void *arg0 , int arg1 , void *arg2 )
{
  int ldv_12_line_line ;
  {
  {
  ldv_12_line_line = arg1;
  ldv_dispatch_irq_deregister_12_1(ldv_12_line_line);
  }
  return;
  return;
}
}
void ldv_free_netdev(void *arg0 , struct net_device *arg1 )
{
  struct net_device *ldv_13_netdev_net_device ;
  {
  {
  ldv_13_netdev_net_device = arg1;
  ldv_free((void *)ldv_13_netdev_net_device);
  }
  return;
  return;
}
}
enum irqreturn ldv_interrupt_instance_handler_2_5(enum irqreturn (*arg0)(int , void * ) ,
                                                  int arg1 , void *arg2 )
{
  irqreturn_t tmp ;
  {
  {
  tmp = t4_nondata_intr(arg1, arg2);
  }
  return (tmp);
}
}
enum irqreturn ldv_interrupt_instance_handler_3_5(enum irqreturn (*arg0)(int , void * ) ,
                                                  int arg1 , void *arg2 )
{
  irqreturn_t tmp ;
  {
  {
  tmp = t4_sge_intr_msix(arg1, arg2);
  }
  return (tmp);
}
}
void ldv_interrupt_instance_thread_2_3(enum irqreturn (*arg0)(int , void * ) , int arg1 ,
                                       void *arg2 )
{
  {
  {
  (*arg0)(arg1, arg2);
  }
  return;
}
}
void ldv_interrupt_instance_thread_3_3(enum irqreturn (*arg0)(int , void * ) , int arg1 ,
                                       void *arg2 )
{
  {
  {
  (*arg0)(arg1, arg2);
  }
  return;
}
}
void ldv_interrupt_interrupt_instance_2(void *arg0 )
{
  enum irqreturn (*ldv_2_callback_handler)(int , void * ) ;
  void *ldv_2_data_data ;
  int ldv_2_line_line ;
  enum irqreturn ldv_2_ret_val_default ;
  enum irqreturn (*ldv_2_thread_thread)(int , void * ) ;
  struct ldv_struct_interrupt_instance_2 *data ;
  int tmp ;
  {
  data = (struct ldv_struct_interrupt_instance_2 *)arg0;
  if ((unsigned long )data != (unsigned long )((struct ldv_struct_interrupt_instance_2 *)0)) {
    {
    ldv_2_line_line = data->arg0;
    ldv_2_callback_handler = data->arg1;
    ldv_2_thread_thread = data->arg2;
    ldv_2_data_data = data->arg3;
    ldv_free((void *)data);
    }
  } else {
  }
  {
  ldv_switch_to_interrupt_context();
  ldv_2_ret_val_default = ldv_interrupt_instance_handler_2_5(ldv_2_callback_handler,
                                                             ldv_2_line_line, ldv_2_data_data);
  ldv_switch_to_process_context();
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    {
    ldv_assume((unsigned int )ldv_2_ret_val_default == 2U);
    }
    if ((unsigned long )ldv_2_thread_thread != (unsigned long )((enum irqreturn (*)(int ,
                                                                                    void * ))0)) {
      {
      ldv_interrupt_instance_thread_2_3(ldv_2_thread_thread, ldv_2_line_line, ldv_2_data_data);
      }
    } else {
    }
  } else {
    {
    ldv_assume((unsigned int )ldv_2_ret_val_default != 2U);
    }
  }
  return;
  return;
}
}
void ldv_interrupt_interrupt_instance_3(void *arg0 )
{
  enum irqreturn (*ldv_3_callback_handler)(int , void * ) ;
  void *ldv_3_data_data ;
  int ldv_3_line_line ;
  enum irqreturn ldv_3_ret_val_default ;
  enum irqreturn (*ldv_3_thread_thread)(int , void * ) ;
  struct ldv_struct_interrupt_instance_2 *data ;
  int tmp ;
  {
  data = (struct ldv_struct_interrupt_instance_2 *)arg0;
  if ((unsigned long )data != (unsigned long )((struct ldv_struct_interrupt_instance_2 *)0)) {
    {
    ldv_3_line_line = data->arg0;
    ldv_3_callback_handler = data->arg1;
    ldv_3_thread_thread = data->arg2;
    ldv_3_data_data = data->arg3;
    ldv_free((void *)data);
    }
  } else {
  }
  {
  ldv_switch_to_interrupt_context();
  ldv_3_ret_val_default = ldv_interrupt_instance_handler_3_5(ldv_3_callback_handler,
                                                             ldv_3_line_line, ldv_3_data_data);
  ldv_switch_to_process_context();
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    {
    ldv_assume((unsigned int )ldv_3_ret_val_default == 2U);
    }
    if ((unsigned long )ldv_3_thread_thread != (unsigned long )((enum irqreturn (*)(int ,
                                                                                    void * ))0)) {
      {
      ldv_interrupt_instance_thread_3_3(ldv_3_thread_thread, ldv_3_line_line, ldv_3_data_data);
      }
    } else {
    }
  } else {
    {
    ldv_assume((unsigned int )ldv_3_ret_val_default != 2U);
    }
  }
  return;
  return;
}
}
void ldv_net_dummy_resourceless_instance_4(void *arg0 )
{
  int (*ldv_4_callback_flash_device)(struct net_device * , struct ethtool_flash * ) ;
  int (*ldv_4_callback_get_coalesce)(struct net_device * , struct ethtool_coalesce * ) ;
  void (*ldv_4_callback_get_drvinfo)(struct net_device * , struct ethtool_drvinfo * ) ;
  int (*ldv_4_callback_get_eeprom)(struct net_device * , struct ethtool_eeprom * ,
                                   unsigned char * ) ;
  int (*ldv_4_callback_get_eeprom_len)(struct net_device * ) ;
  void (*ldv_4_callback_get_ethtool_stats)(struct net_device * , struct ethtool_stats * ,
                                           unsigned long long * ) ;
  unsigned int (*ldv_4_callback_get_link)(struct net_device * ) ;
  unsigned int (*ldv_4_callback_get_msglevel)(struct net_device * ) ;
  void (*ldv_4_callback_get_pauseparam)(struct net_device * , struct ethtool_pauseparam * ) ;
  void (*ldv_4_callback_get_regs)(struct net_device * , struct ethtool_regs * , void * ) ;
  int (*ldv_4_callback_get_regs_len)(struct net_device * ) ;
  void (*ldv_4_callback_get_ringparam)(struct net_device * , struct ethtool_ringparam * ) ;
  int (*ldv_4_callback_get_rxfh_indir)(struct net_device * , unsigned int * ) ;
  unsigned int (*ldv_4_callback_get_rxfh_indir_size)(struct net_device * ) ;
  int (*ldv_4_callback_get_rxnfc)(struct net_device * , struct ethtool_rxnfc * , unsigned int * ) ;
  int (*ldv_4_callback_get_settings)(struct net_device * , struct ethtool_cmd * ) ;
  int (*ldv_4_callback_get_sset_count)(struct net_device * , int ) ;
  void (*ldv_4_callback_get_strings)(struct net_device * , unsigned int , unsigned char * ) ;
  void (*ldv_4_callback_get_wol)(struct net_device * , struct ethtool_wolinfo * ) ;
  int (*ldv_4_callback_ndo_change_mtu)(struct net_device * , int ) ;
  int (*ldv_4_callback_ndo_do_ioctl)(struct net_device * , struct ifreq * , int ) ;
  struct rtnl_link_stats64 *(*ldv_4_callback_ndo_get_stats64)(struct net_device * ,
                                                              struct rtnl_link_stats64 * ) ;
  void (*ldv_4_callback_ndo_poll_controller)(struct net_device * ) ;
  int (*ldv_4_callback_ndo_set_features)(struct net_device * , unsigned long long ) ;
  int (*ldv_4_callback_ndo_set_mac_address)(struct net_device * , void * ) ;
  void (*ldv_4_callback_ndo_set_rx_mode)(struct net_device * ) ;
  enum netdev_tx (*ldv_4_callback_ndo_start_xmit)(struct sk_buff * , struct net_device * ) ;
  int (*ldv_4_callback_ndo_validate_addr)(struct net_device * ) ;
  int (*ldv_4_callback_nway_reset)(struct net_device * ) ;
  int (*ldv_4_callback_set_coalesce)(struct net_device * , struct ethtool_coalesce * ) ;
  int (*ldv_4_callback_set_eeprom)(struct net_device * , struct ethtool_eeprom * ,
                                   unsigned char * ) ;
  void (*ldv_4_callback_set_msglevel)(struct net_device * , unsigned int ) ;
  int (*ldv_4_callback_set_pauseparam)(struct net_device * , struct ethtool_pauseparam * ) ;
  int (*ldv_4_callback_set_phys_id)(struct net_device * , enum ethtool_phys_id_state ) ;
  int (*ldv_4_callback_set_ringparam)(struct net_device * , struct ethtool_ringparam * ) ;
  int (*ldv_4_callback_set_rxfh_indir)(struct net_device * , unsigned int * ) ;
  int (*ldv_4_callback_set_settings)(struct net_device * , struct ethtool_cmd * ) ;
  int (*ldv_4_callback_set_wol)(struct net_device * , struct ethtool_wolinfo * ) ;
  enum ethtool_phys_id_state ldv_4_container_enum_ethtool_phys_id_state ;
  struct net_device *ldv_4_container_net_device ;
  struct ethtool_cmd *ldv_4_container_struct_ethtool_cmd_ptr ;
  struct ethtool_coalesce *ldv_4_container_struct_ethtool_coalesce_ptr ;
  struct ethtool_drvinfo *ldv_4_container_struct_ethtool_drvinfo_ptr ;
  struct ethtool_eeprom *ldv_4_container_struct_ethtool_eeprom_ptr ;
  struct ethtool_flash *ldv_4_container_struct_ethtool_flash_ptr ;
  struct ethtool_pauseparam *ldv_4_container_struct_ethtool_pauseparam_ptr ;
  struct ethtool_regs *ldv_4_container_struct_ethtool_regs_ptr ;
  struct ethtool_ringparam *ldv_4_container_struct_ethtool_ringparam_ptr ;
  struct ethtool_rxnfc *ldv_4_container_struct_ethtool_rxnfc_ptr ;
  struct ethtool_stats *ldv_4_container_struct_ethtool_stats_ptr ;
  struct ethtool_wolinfo *ldv_4_container_struct_ethtool_wolinfo_ptr ;
  struct ifreq *ldv_4_container_struct_ifreq_ptr ;
  struct rtnl_link_stats64 *ldv_4_container_struct_rtnl_link_stats64_ptr ;
  struct sk_buff *ldv_4_container_struct_sk_buff_ptr ;
  unsigned long long *ldv_4_ldv_param_13_2_default ;
  unsigned int *ldv_4_ldv_param_22_1_default ;
  unsigned int *ldv_4_ldv_param_26_2_default ;
  int ldv_4_ldv_param_30_1_default ;
  unsigned int ldv_4_ldv_param_33_1_default ;
  unsigned char *ldv_4_ldv_param_33_2_default ;
  int ldv_4_ldv_param_37_1_default ;
  int ldv_4_ldv_param_40_2_default ;
  unsigned long long ldv_4_ldv_param_45_1_default ;
  unsigned char *ldv_4_ldv_param_54_2_default ;
  unsigned int ldv_4_ldv_param_57_1_default ;
  unsigned int *ldv_4_ldv_param_63_1_default ;
  unsigned char *ldv_4_ldv_param_9_2_default ;
  struct ldv_struct_dummy_resourceless_instance_4 *data ;
  int tmp ;
  void *tmp___0 ;
  void *tmp___1 ;
  void *tmp___2 ;
  void *tmp___3 ;
  void *tmp___4 ;
  void *tmp___5 ;
  void *tmp___6 ;
  {
  data = (struct ldv_struct_dummy_resourceless_instance_4 *)arg0;
  if ((unsigned long )data != (unsigned long )((struct ldv_struct_dummy_resourceless_instance_4 *)0)) {
    {
    ldv_4_container_net_device = data->arg0;
    ldv_free((void *)data);
    }
  } else {
  }
  goto ldv_call_4;
  return;
  ldv_call_4:
  {
  tmp = ldv_undef_int();
  }
  {
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
  if (tmp == 26) {
    goto case_26;
  } else {
  }
  if (tmp == 27) {
    goto case_27;
  } else {
  }
  if (tmp == 28) {
    goto case_28;
  } else {
  }
  if (tmp == 29) {
    goto case_29;
  } else {
  }
  if (tmp == 30) {
    goto case_30;
  } else {
  }
  if (tmp == 31) {
    goto case_31;
  } else {
  }
  if (tmp == 32) {
    goto case_32;
  } else {
  }
  if (tmp == 33) {
    goto case_33;
  } else {
  }
  if (tmp == 34) {
    goto case_34;
  } else {
  }
  if (tmp == 35) {
    goto case_35;
  } else {
  }
  if (tmp == 36) {
    goto case_36;
  } else {
  }
  if (tmp == 37) {
    goto case_37;
  } else {
  }
  if (tmp == 38) {
    goto case_38;
  } else {
  }
  if (tmp == 39) {
    goto case_39;
  } else {
  }
  goto switch_default;
  case_1:
  {
  ldv_dummy_resourceless_instance_callback_4_67(ldv_4_callback_set_wol, ldv_4_container_net_device,
                                                ldv_4_container_struct_ethtool_wolinfo_ptr);
  }
  goto ldv_call_4;
  case_2:
  {
  ldv_dummy_resourceless_instance_callback_4_66(ldv_4_callback_set_settings, ldv_4_container_net_device,
                                                ldv_4_container_struct_ethtool_cmd_ptr);
  }
  goto ldv_call_4;
  goto ldv_call_4;
  case_3:
  {
  tmp___0 = ldv_xmalloc(4UL);
  ldv_4_ldv_param_63_1_default = (unsigned int *)tmp___0;
  ldv_dummy_resourceless_instance_callback_4_63(ldv_4_callback_set_rxfh_indir, ldv_4_container_net_device,
                                                ldv_4_ldv_param_63_1_default);
  ldv_free((void *)ldv_4_ldv_param_63_1_default);
  }
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  case_4:
  {
  ldv_dummy_resourceless_instance_callback_4_62(ldv_4_callback_set_ringparam, ldv_4_container_net_device,
                                                ldv_4_container_struct_ethtool_ringparam_ptr);
  }
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  case_5:
  {
  ldv_dummy_resourceless_instance_callback_4_61(ldv_4_callback_set_phys_id, ldv_4_container_net_device,
                                                ldv_4_container_enum_ethtool_phys_id_state);
  }
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  case_6:
  {
  ldv_dummy_resourceless_instance_callback_4_60(ldv_4_callback_set_pauseparam, ldv_4_container_net_device,
                                                ldv_4_container_struct_ethtool_pauseparam_ptr);
  }
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  case_7:
  {
  ldv_dummy_resourceless_instance_callback_4_57(ldv_4_callback_set_msglevel, ldv_4_container_net_device,
                                                ldv_4_ldv_param_57_1_default);
  }
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  case_8:
  {
  tmp___1 = ldv_xmalloc(1UL);
  ldv_4_ldv_param_54_2_default = (unsigned char *)tmp___1;
  ldv_dummy_resourceless_instance_callback_4_54(ldv_4_callback_set_eeprom, ldv_4_container_net_device,
                                                ldv_4_container_struct_ethtool_eeprom_ptr,
                                                ldv_4_ldv_param_54_2_default);
  ldv_free((void *)ldv_4_ldv_param_54_2_default);
  }
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  case_9:
  {
  ldv_dummy_resourceless_instance_callback_4_53(ldv_4_callback_set_coalesce, ldv_4_container_net_device,
                                                ldv_4_container_struct_ethtool_coalesce_ptr);
  }
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  case_10:
  {
  ldv_dummy_resourceless_instance_callback_4_52(ldv_4_callback_nway_reset, ldv_4_container_net_device);
  }
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  case_11:
  {
  ldv_dummy_resourceless_instance_callback_4_51(ldv_4_callback_ndo_validate_addr,
                                                ldv_4_container_net_device);
  }
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  case_12:
  {
  ldv_dummy_resourceless_instance_callback_4_50(ldv_4_callback_ndo_start_xmit, ldv_4_container_struct_sk_buff_ptr,
                                                ldv_4_container_net_device);
  }
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  case_13:
  {
  ldv_dummy_resourceless_instance_callback_4_49(ldv_4_callback_ndo_set_rx_mode, ldv_4_container_net_device);
  }
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  case_14:
  {
  ldv_dummy_resourceless_instance_callback_4_48(ldv_4_callback_ndo_set_mac_address,
                                                ldv_4_container_net_device, (void *)ldv_4_container_struct_ethtool_cmd_ptr);
  }
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  case_15:
  {
  ldv_dummy_resourceless_instance_callback_4_45(ldv_4_callback_ndo_set_features, ldv_4_container_net_device,
                                                ldv_4_ldv_param_45_1_default);
  }
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  case_16:
  {
  ldv_dummy_resourceless_instance_callback_4_44(ldv_4_callback_ndo_poll_controller,
                                                ldv_4_container_net_device);
  }
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  case_17:
  {
  ldv_dummy_resourceless_instance_callback_4_43(ldv_4_callback_ndo_get_stats64, ldv_4_container_net_device,
                                                ldv_4_container_struct_rtnl_link_stats64_ptr);
  }
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  case_18:
  {
  ldv_dummy_resourceless_instance_callback_4_40(ldv_4_callback_ndo_do_ioctl, ldv_4_container_net_device,
                                                ldv_4_container_struct_ifreq_ptr,
                                                ldv_4_ldv_param_40_2_default);
  }
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  case_19:
  {
  ldv_dummy_resourceless_instance_callback_4_37(ldv_4_callback_ndo_change_mtu, ldv_4_container_net_device,
                                                ldv_4_ldv_param_37_1_default);
  }
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  case_20:
  {
  ldv_dummy_resourceless_instance_callback_4_36(ldv_4_callback_get_wol, ldv_4_container_net_device,
                                                ldv_4_container_struct_ethtool_wolinfo_ptr);
  }
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  case_21:
  {
  tmp___2 = ldv_xmalloc(1UL);
  ldv_4_ldv_param_33_2_default = (unsigned char *)tmp___2;
  ldv_dummy_resourceless_instance_callback_4_33(ldv_4_callback_get_strings, ldv_4_container_net_device,
                                                ldv_4_ldv_param_33_1_default, ldv_4_ldv_param_33_2_default);
  ldv_free((void *)ldv_4_ldv_param_33_2_default);
  }
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  case_22:
  {
  ldv_dummy_resourceless_instance_callback_4_30(ldv_4_callback_get_sset_count, ldv_4_container_net_device,
                                                ldv_4_ldv_param_30_1_default);
  }
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  case_23:
  {
  ldv_dummy_resourceless_instance_callback_4_29(ldv_4_callback_get_settings, ldv_4_container_net_device,
                                                ldv_4_container_struct_ethtool_cmd_ptr);
  }
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  case_24:
  {
  tmp___3 = ldv_xmalloc(4UL);
  ldv_4_ldv_param_26_2_default = (unsigned int *)tmp___3;
  ldv_dummy_resourceless_instance_callback_4_26(ldv_4_callback_get_rxnfc, ldv_4_container_net_device,
                                                ldv_4_container_struct_ethtool_rxnfc_ptr,
                                                ldv_4_ldv_param_26_2_default);
  ldv_free((void *)ldv_4_ldv_param_26_2_default);
  }
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  case_25:
  {
  ldv_dummy_resourceless_instance_callback_4_25(ldv_4_callback_get_rxfh_indir_size,
                                                ldv_4_container_net_device);
  }
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  case_26:
  {
  tmp___4 = ldv_xmalloc(4UL);
  ldv_4_ldv_param_22_1_default = (unsigned int *)tmp___4;
  ldv_dummy_resourceless_instance_callback_4_22(ldv_4_callback_get_rxfh_indir, ldv_4_container_net_device,
                                                ldv_4_ldv_param_22_1_default);
  ldv_free((void *)ldv_4_ldv_param_22_1_default);
  }
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  case_27:
  {
  ldv_dummy_resourceless_instance_callback_4_21(ldv_4_callback_get_ringparam, ldv_4_container_net_device,
                                                ldv_4_container_struct_ethtool_ringparam_ptr);
  }
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  case_28:
  {
  ldv_dummy_resourceless_instance_callback_4_20(ldv_4_callback_get_regs_len, ldv_4_container_net_device);
  }
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  case_29:
  {
  ldv_dummy_resourceless_instance_callback_4_19(ldv_4_callback_get_regs, ldv_4_container_net_device,
                                                ldv_4_container_struct_ethtool_regs_ptr,
                                                (void *)ldv_4_container_struct_ethtool_cmd_ptr);
  }
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  case_30:
  {
  ldv_dummy_resourceless_instance_callback_4_18(ldv_4_callback_get_pauseparam, ldv_4_container_net_device,
                                                ldv_4_container_struct_ethtool_pauseparam_ptr);
  }
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  case_31:
  {
  ldv_dummy_resourceless_instance_callback_4_17(ldv_4_callback_get_msglevel, ldv_4_container_net_device);
  }
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  case_32:
  {
  ldv_dummy_resourceless_instance_callback_4_16(ldv_4_callback_get_link, ldv_4_container_net_device);
  }
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  case_33:
  {
  tmp___5 = ldv_xmalloc(8UL);
  ldv_4_ldv_param_13_2_default = (unsigned long long *)tmp___5;
  ldv_dummy_resourceless_instance_callback_4_13(ldv_4_callback_get_ethtool_stats,
                                                ldv_4_container_net_device, ldv_4_container_struct_ethtool_stats_ptr,
                                                ldv_4_ldv_param_13_2_default);
  ldv_free((void *)ldv_4_ldv_param_13_2_default);
  }
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  case_34:
  {
  ldv_dummy_resourceless_instance_callback_4_12(ldv_4_callback_get_eeprom_len, ldv_4_container_net_device);
  }
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  case_35:
  {
  tmp___6 = ldv_xmalloc(1UL);
  ldv_4_ldv_param_9_2_default = (unsigned char *)tmp___6;
  ldv_dummy_resourceless_instance_callback_4_9(ldv_4_callback_get_eeprom, ldv_4_container_net_device,
                                               ldv_4_container_struct_ethtool_eeprom_ptr,
                                               ldv_4_ldv_param_9_2_default);
  ldv_free((void *)ldv_4_ldv_param_9_2_default);
  }
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  case_36:
  {
  ldv_dummy_resourceless_instance_callback_4_8(ldv_4_callback_get_drvinfo, ldv_4_container_net_device,
                                               ldv_4_container_struct_ethtool_drvinfo_ptr);
  }
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  case_37:
  {
  ldv_dummy_resourceless_instance_callback_4_7(ldv_4_callback_get_coalesce, ldv_4_container_net_device,
                                               ldv_4_container_struct_ethtool_coalesce_ptr);
  }
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  case_38:
  {
  ldv_dummy_resourceless_instance_callback_4_3(ldv_4_callback_flash_device, ldv_4_container_net_device,
                                               ldv_4_container_struct_ethtool_flash_ptr);
  }
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  goto ldv_call_4;
  case_39: ;
  return;
  switch_default:
  {
  ldv_stop();
  }
  switch_break: ;
  }
  return;
}
}
void ldv_pci_instance_callback_5_10(unsigned int (*arg0)(struct pci_dev * , enum pci_channel_state ) ,
                                    struct pci_dev *arg1 , enum pci_channel_state arg2 )
{
  {
  {
  eeh_err_detected(arg1, (pci_channel_state_t )arg2);
  }
  return;
}
}
void ldv_pci_instance_callback_5_23(void (*arg0)(struct pci_dev * ) , struct pci_dev *arg1 )
{
  {
  {
  eeh_resume(arg1);
  }
  return;
}
}
void ldv_pci_instance_callback_5_24(unsigned int (*arg0)(struct pci_dev * ) , struct pci_dev *arg1 )
{
  {
  {
  eeh_slot_reset(arg1);
  }
  return;
}
}
int ldv_pci_instance_probe_5_17(int (*arg0)(struct pci_dev * , struct pci_device_id * ) ,
                                struct pci_dev *arg1 , struct pci_device_id *arg2 )
{
  int tmp ;
  {
  {
  tmp = init_one(arg1, (struct pci_device_id const *)arg2);
  }
  return (tmp);
}
}
void ldv_pci_instance_release_5_2(void (*arg0)(struct pci_dev * ) , struct pci_dev *arg1 )
{
  {
  {
  remove_one(arg1);
  }
  return;
}
}
void ldv_pci_instance_resume_5_5(int (*arg0)(struct pci_dev * ) , struct pci_dev *arg1 )
{
  {
  {
  (*arg0)(arg1);
  }
  return;
}
}
void ldv_pci_instance_resume_early_5_6(int (*arg0)(struct pci_dev * ) , struct pci_dev *arg1 )
{
  {
  {
  (*arg0)(arg1);
  }
  return;
}
}
void ldv_pci_instance_shutdown_5_3(void (*arg0)(struct pci_dev * ) , struct pci_dev *arg1 )
{
  {
  {
  remove_one(arg1);
  }
  return;
}
}
int ldv_pci_instance_suspend_5_8(int (*arg0)(struct pci_dev * , struct pm_message ) ,
                                 struct pci_dev *arg1 , struct pm_message arg2 )
{
  int tmp ;
  {
  {
  tmp = (*arg0)(arg1, arg2);
  }
  return (tmp);
}
}
int ldv_pci_instance_suspend_late_5_7(int (*arg0)(struct pci_dev * , struct pm_message ) ,
                                      struct pci_dev *arg1 , struct pm_message arg2 )
{
  int tmp ;
  {
  {
  tmp = (*arg0)(arg1, arg2);
  }
  return (tmp);
}
}
void ldv_pci_pci_instance_5(void *arg0 )
{
  unsigned int (*ldv_5_callback_error_detected)(struct pci_dev * , enum pci_channel_state ) ;
  void (*ldv_5_callback_func_1_ptr)(struct pci_dev * ) ;
  unsigned int (*ldv_5_callback_slot_reset)(struct pci_dev * ) ;
  struct pci_driver *ldv_5_container_pci_driver ;
  struct pci_dev *ldv_5_resource_dev ;
  enum pci_channel_state ldv_5_resource_enum_pci_channel_state ;
  struct pm_message ldv_5_resource_pm_message ;
  struct pci_device_id *ldv_5_resource_struct_pci_device_id_ptr ;
  int ldv_5_ret_default ;
  struct ldv_struct_pci_instance_5 *data ;
  void *tmp ;
  void *tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  {
  data = (struct ldv_struct_pci_instance_5 *)arg0;
  ldv_5_ret_default = 1;
  if ((unsigned long )data != (unsigned long )((struct ldv_struct_pci_instance_5 *)0)) {
    {
    ldv_5_container_pci_driver = data->arg0;
    ldv_free((void *)data);
    }
  } else {
  }
  {
  tmp = ldv_xmalloc(2936UL);
  ldv_5_resource_dev = (struct pci_dev *)tmp;
  tmp___0 = ldv_xmalloc(32UL);
  ldv_5_resource_struct_pci_device_id_ptr = (struct pci_device_id *)tmp___0;
  }
  goto ldv_main_5;
  return;
  ldv_main_5:
  {
  tmp___2 = ldv_undef_int();
  }
  if (tmp___2 != 0) {
    {
    ldv_pre_probe();
    ldv_5_ret_default = ldv_pci_instance_probe_5_17((int (*)(struct pci_dev * , struct pci_device_id * ))ldv_5_container_pci_driver->probe,
                                                    ldv_5_resource_dev, ldv_5_resource_struct_pci_device_id_ptr);
    ldv_5_ret_default = ldv_post_probe(ldv_5_ret_default);
    tmp___1 = ldv_undef_int();
    }
    if (tmp___1 != 0) {
      {
      ldv_assume(ldv_5_ret_default == 0);
      }
      goto ldv_call_5;
    } else {
      {
      ldv_assume(ldv_5_ret_default != 0);
      }
      goto ldv_main_5;
    }
  } else {
    {
    ldv_free((void *)ldv_5_resource_dev);
    ldv_free((void *)ldv_5_resource_struct_pci_device_id_ptr);
    }
    return;
  }
  return;
  ldv_call_5:
  {
  tmp___3 = ldv_undef_int();
  }
  {
  if (tmp___3 == 1) {
    goto case_1;
  } else {
  }
  if (tmp___3 == 2) {
    goto case_2;
  } else {
  }
  if (tmp___3 == 3) {
    goto case_3;
  } else {
  }
  if (tmp___3 == 4) {
    goto case_4;
  } else {
  }
  if (tmp___3 == 5) {
    goto case_5;
  } else {
  }
  goto switch_default;
  case_1:
  {
  ldv_pci_instance_callback_5_24(ldv_5_callback_slot_reset, ldv_5_resource_dev);
  }
  goto ldv_call_5;
  case_2:
  {
  ldv_pci_instance_callback_5_23(ldv_5_callback_func_1_ptr, ldv_5_resource_dev);
  }
  goto ldv_call_5;
  goto ldv_call_5;
  case_3:
  {
  ldv_pci_instance_callback_5_10(ldv_5_callback_error_detected, ldv_5_resource_dev,
                                 ldv_5_resource_enum_pci_channel_state);
  }
  goto ldv_call_5;
  goto ldv_call_5;
  goto ldv_call_5;
  case_4: ;
  if ((unsigned long )ldv_5_container_pci_driver->suspend != (unsigned long )((int (*)(struct pci_dev * ,
                                                                                       pm_message_t ))0)) {
    {
    ldv_5_ret_default = ldv_pci_instance_suspend_5_8(ldv_5_container_pci_driver->suspend,
                                                     ldv_5_resource_dev, ldv_5_resource_pm_message);
    }
  } else {
  }
  {
  ldv_5_ret_default = ldv_filter_err_code(ldv_5_ret_default);
  }
  if ((unsigned long )ldv_5_container_pci_driver->suspend_late != (unsigned long )((int (*)(struct pci_dev * ,
                                                                                            pm_message_t ))0)) {
    {
    ldv_5_ret_default = ldv_pci_instance_suspend_late_5_7(ldv_5_container_pci_driver->suspend_late,
                                                          ldv_5_resource_dev, ldv_5_resource_pm_message);
    }
  } else {
  }
  {
  ldv_5_ret_default = ldv_filter_err_code(ldv_5_ret_default);
  }
  if ((unsigned long )ldv_5_container_pci_driver->resume_early != (unsigned long )((int (*)(struct pci_dev * ))0)) {
    {
    ldv_pci_instance_resume_early_5_6(ldv_5_container_pci_driver->resume_early, ldv_5_resource_dev);
    }
  } else {
  }
  if ((unsigned long )ldv_5_container_pci_driver->resume != (unsigned long )((int (*)(struct pci_dev * ))0)) {
    {
    ldv_pci_instance_resume_5_5(ldv_5_container_pci_driver->resume, ldv_5_resource_dev);
    }
  } else {
  }
  goto ldv_call_5;
  case_5:
  {
  ldv_pci_instance_shutdown_5_3(ldv_5_container_pci_driver->shutdown, ldv_5_resource_dev);
  ldv_pci_instance_release_5_2(ldv_5_container_pci_driver->remove, ldv_5_resource_dev);
  }
  goto ldv_main_5;
  switch_default:
  {
  ldv_stop();
  }
  switch_break: ;
  }
  return;
}
}
void ldv_pci_unregister_driver(void *arg0 , struct pci_driver *arg1 )
{
  struct pci_driver *ldv_20_pci_driver_pci_driver ;
  {
  {
  ldv_20_pci_driver_pci_driver = arg1;
  ldv_dispatch_deregister_20_1(ldv_20_pci_driver_pci_driver);
  }
  return;
  return;
}
}
int ldv_register_inet6addr_notifier(int arg0 , struct notifier_block *arg1 )
{
  struct notifier_block *ldv_24_struct_notifier_block_struct_notifier_block ;
  int tmp ;
  {
  {
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    {
    ldv_assume(arg0 == 0);
    ldv_24_struct_notifier_block_struct_notifier_block = arg1;
    ldv_dispatch_register_24_2(ldv_24_struct_notifier_block_struct_notifier_block);
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
int ldv_register_netdev(int arg0 , struct net_device *arg1 )
{
  struct net_device *ldv_15_netdev_net_device ;
  int ldv_15_ret_default ;
  int tmp ;
  int tmp___0 ;
  {
  {
  ldv_15_ret_default = 1;
  ldv_15_ret_default = ldv_pre_register_netdev();
  ldv_15_netdev_net_device = arg1;
  tmp___0 = ldv_undef_int();
  }
  if (tmp___0 != 0) {
    {
    ldv_assume(ldv_15_ret_default == 0);
    ldv_15_ret_default = ldv_register_netdev_open_15_6((ldv_15_netdev_net_device->netdev_ops)->ndo_open,
                                                       ldv_15_netdev_net_device);
    tmp = ldv_undef_int();
    }
    if (tmp != 0) {
      {
      ldv_assume(ldv_15_ret_default == 0);
      ldv_dispatch_register_15_4(ldv_15_netdev_net_device);
      }
    } else {
      {
      ldv_assume(ldv_15_ret_default != 0);
      }
    }
  } else {
    {
    ldv_assume(ldv_15_ret_default != 0);
    }
  }
  return (ldv_15_ret_default);
  return (arg0);
  return (arg0);
}
}
int ldv_register_netdev_open_15_6(int (*arg0)(struct net_device * ) , struct net_device *arg1 )
{
  int tmp ;
  {
  {
  tmp = cxgb_open(arg1);
  }
  return (tmp);
}
}
int ldv_register_netevent_notifier(int arg0 , struct notifier_block *arg1 )
{
  struct notifier_block *ldv_25_struct_notifier_block_struct_notifier_block ;
  int tmp ;
  {
  {
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    {
    ldv_assume(arg0 == 0);
    ldv_25_struct_notifier_block_struct_notifier_block = arg1;
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
int ldv_request_irq(int arg0 , unsigned int arg1 , enum irqreturn (*arg2)(int , void * ) ,
                    unsigned long arg3 , char *arg4 , void *arg5 )
{
  enum irqreturn (*ldv_17_callback_handler)(int , void * ) ;
  void *ldv_17_data_data ;
  int ldv_17_line_line ;
  enum irqreturn (*ldv_17_thread_thread)(int , void * ) ;
  int tmp ;
  {
  {
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    {
    ldv_assume(arg0 == 0);
    ldv_17_line_line = (int )arg1;
    ldv_17_callback_handler = arg2;
    ldv_17_thread_thread = (enum irqreturn (*)(int , void * ))0;
    ldv_17_data_data = arg5;
    ldv_dispatch_irq_register_17_2(ldv_17_line_line, ldv_17_callback_handler, ldv_17_thread_thread,
                                   ldv_17_data_data);
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
void ldv_struct_notifier_block_dummy_resourceless_instance_7(void *arg0 )
{
  int (*ldv_7_callback_notifier_call)(struct notifier_block * , unsigned long , void * ) ;
  struct notifier_block *ldv_7_container_struct_notifier_block ;
  unsigned long ldv_7_ldv_param_3_1_default ;
  void *ldv_7_ldv_param_3_2_default ;
  struct ldv_struct_dummy_resourceless_instance_7 *data ;
  int tmp ;
  {
  data = (struct ldv_struct_dummy_resourceless_instance_7 *)arg0;
  if ((unsigned long )data != (unsigned long )((struct ldv_struct_dummy_resourceless_instance_7 *)0)) {
    {
    ldv_7_container_struct_notifier_block = data->arg0;
    ldv_free((void *)data);
    }
  } else {
  }
  goto ldv_call_7;
  return;
  ldv_call_7:
  {
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    {
    ldv_7_ldv_param_3_2_default = ldv_xmalloc(1UL);
    ldv_dummy_resourceless_instance_callback_7_3(ldv_7_callback_notifier_call, ldv_7_container_struct_notifier_block,
                                                 ldv_7_ldv_param_3_1_default, ldv_7_ldv_param_3_2_default);
    ldv_free(ldv_7_ldv_param_3_2_default);
    }
    goto ldv_call_7;
  } else {
    return;
  }
  return;
}
}
void ldv_struct_notifier_block_dummy_resourceless_instance_8(void *arg0 )
{
  int (*ldv_8_callback_notifier_call)(struct notifier_block * , unsigned long , void * ) ;
  struct notifier_block *ldv_8_container_struct_notifier_block ;
  unsigned long ldv_8_ldv_param_3_1_default ;
  void *ldv_8_ldv_param_3_2_default ;
  struct ldv_struct_dummy_resourceless_instance_7 *data ;
  int tmp ;
  {
  data = (struct ldv_struct_dummy_resourceless_instance_7 *)arg0;
  if ((unsigned long )data != (unsigned long )((struct ldv_struct_dummy_resourceless_instance_7 *)0)) {
    {
    ldv_8_container_struct_notifier_block = data->arg0;
    ldv_free((void *)data);
    }
  } else {
  }
  goto ldv_call_8;
  return;
  ldv_call_8:
  {
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    {
    ldv_8_ldv_param_3_2_default = ldv_xmalloc(1UL);
    ldv_dummy_resourceless_instance_callback_8_3(ldv_8_callback_notifier_call, ldv_8_container_struct_notifier_block,
                                                 ldv_8_ldv_param_3_1_default, ldv_8_ldv_param_3_2_default);
    ldv_free(ldv_8_ldv_param_3_2_default);
    }
    goto ldv_call_8;
  } else {
    return;
  }
  return;
}
}
void ldv_timer_instance_callback_9_2(void (*arg0)(unsigned long ) , unsigned long arg1 )
{
  {
  {
  (*arg0)(arg1);
  }
  return;
}
}
void ldv_timer_timer_instance_9(void *arg0 )
{
  struct timer_list *ldv_9_container_timer_list ;
  struct ldv_struct_timer_instance_9 *data ;
  {
  data = (struct ldv_struct_timer_instance_9 *)arg0;
  if ((unsigned long )data != (unsigned long )((struct ldv_struct_timer_instance_9 *)0)) {
    {
    ldv_9_container_timer_list = data->arg0;
    ldv_free((void *)data);
    }
  } else {
  }
  {
  ldv_switch_to_interrupt_context();
  }
  if ((unsigned long )ldv_9_container_timer_list->function != (unsigned long )((void (*)(unsigned long ))0)) {
    {
    ldv_timer_instance_callback_9_2(ldv_9_container_timer_list->function, ldv_9_container_timer_list->data);
    }
  } else {
  }
  {
  ldv_switch_to_process_context();
  }
  return;
  return;
}
}
int ldv_unregister_inet6addr_notifier(int arg0 , struct notifier_block *arg1 )
{
  struct notifier_block *ldv_22_struct_notifier_block_struct_notifier_block ;
  {
  {
  ldv_22_struct_notifier_block_struct_notifier_block = arg1;
  ldv_dispatch_deregister_22_1(ldv_22_struct_notifier_block_struct_notifier_block);
  }
  return (arg0);
  return (arg0);
}
}
void ldv_unregister_netdev(void *arg0 , struct net_device *arg1 )
{
  struct net_device *ldv_19_netdev_net_device ;
  {
  {
  ldv_19_netdev_net_device = arg1;
  ldv_unregister_netdev_stop_19_2((ldv_19_netdev_net_device->netdev_ops)->ndo_stop,
                                  ldv_19_netdev_net_device);
  ldv_dispatch_deregister_19_1(ldv_19_netdev_net_device);
  }
  return;
  return;
}
}
void ldv_unregister_netdev_stop_19_2(int (*arg0)(struct net_device * ) , struct net_device *arg1 )
{
  {
  {
  cxgb_close(arg1);
  }
  return;
}
}
int ldv_unregister_netevent_notifier(int arg0 , struct notifier_block *arg1 )
{
  struct notifier_block *ldv_23_struct_notifier_block_struct_notifier_block ;
  {
  ldv_23_struct_notifier_block_struct_notifier_block = arg1;
  return (arg0);
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
__inline static long IS_ERR_OR_NULL(void const *ptr )
{
  long tmp ;
  {
  {
  tmp = ldv_is_err_or_null(ptr);
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
static void *ldv_dev_get_drvdata_13(struct device const *dev )
{
  void *tmp ;
  {
  {
  tmp = ldv_dev_get_drvdata(dev);
  }
  return (tmp);
}
}
static int ldv_dev_set_drvdata_14(struct device *dev , void *data )
{
  int tmp ;
  {
  {
  tmp = ldv_dev_set_drvdata(dev, data);
  }
  return (tmp);
}
}
__inline static int ldv_request_irq_15(unsigned int irq , irqreturn_t (*handler)(int ,
                                                                                 void * ) ,
                                       unsigned long flags , char const *name ,
                                       void *dev )
{
  ldv_func_ret_type ldv_func_res ;
  int tmp ;
  int tmp___0 ;
  {
  {
  tmp = request_irq(irq, handler, flags, name, dev);
  ldv_func_res = tmp;
  tmp___0 = ldv_request_irq(ldv_func_res, irq, handler, flags, (char *)name, dev);
  }
  return (tmp___0);
  return (ldv_func_res);
}
}
__inline static int ldv_request_irq_16(unsigned int irq , irqreturn_t (*handler)(int ,
                                                                                 void * ) ,
                                       unsigned long flags , char const *name ,
                                       void *dev )
{
  ldv_func_ret_type___0 ldv_func_res ;
  int tmp ;
  int tmp___0 ;
  {
  {
  tmp = request_irq(irq, handler, flags, name, dev);
  ldv_func_res = tmp;
  tmp___0 = ldv_request_irq(ldv_func_res, irq, handler, flags, (char *)name, dev);
  }
  return (tmp___0);
  return (ldv_func_res);
}
}
__inline static int ldv_request_irq_17(unsigned int irq , irqreturn_t (*handler)(int ,
                                                                                 void * ) ,
                                       unsigned long flags , char const *name ,
                                       void *dev )
{
  ldv_func_ret_type___1 ldv_func_res ;
  int tmp ;
  int tmp___0 ;
  {
  {
  tmp = request_irq(irq, handler, flags, name, dev);
  ldv_func_res = tmp;
  tmp___0 = ldv_request_irq(ldv_func_res, irq, handler, flags, (char *)name, dev);
  }
  return (tmp___0);
  return (ldv_func_res);
}
}
__inline static int ldv_request_irq_18(unsigned int irq , irqreturn_t (*handler)(int ,
                                                                                 void * ) ,
                                       unsigned long flags , char const *name ,
                                       void *dev )
{
  ldv_func_ret_type___2 ldv_func_res ;
  int tmp ;
  int tmp___0 ;
  {
  {
  tmp = request_irq(irq, handler, flags, name, dev);
  ldv_func_res = tmp;
  tmp___0 = ldv_request_irq(ldv_func_res, irq, handler, flags, (char *)name, dev);
  }
  return (tmp___0);
  return (ldv_func_res);
}
}
static void ldv_free_irq_19(unsigned int ldv_func_arg1 , void *ldv_func_arg2 )
{
  {
  {
  free_irq(ldv_func_arg1, ldv_func_arg2);
  ldv_free_irq((void *)0, (int )ldv_func_arg1, ldv_func_arg2);
  }
  return;
}
}
static void ldv_free_irq_20(unsigned int ldv_func_arg1 , void *ldv_func_arg2 )
{
  {
  {
  free_irq(ldv_func_arg1, ldv_func_arg2);
  ldv_free_irq((void *)0, (int )ldv_func_arg1, ldv_func_arg2);
  }
  return;
}
}
static void ldv_free_irq_21(unsigned int ldv_func_arg1 , void *ldv_func_arg2 )
{
  {
  {
  free_irq(ldv_func_arg1, ldv_func_arg2);
  ldv_free_irq((void *)0, (int )ldv_func_arg1, ldv_func_arg2);
  }
  return;
}
}
static void ldv_free_irq_22(unsigned int ldv_func_arg1 , void *ldv_func_arg2 )
{
  {
  {
  free_irq(ldv_func_arg1, ldv_func_arg2);
  ldv_free_irq((void *)0, (int )ldv_func_arg1, ldv_func_arg2);
  }
  return;
}
}
static void ldv_free_irq_23(unsigned int ldv_func_arg1 , void *ldv_func_arg2 )
{
  {
  {
  free_irq(ldv_func_arg1, ldv_func_arg2);
  ldv_free_irq((void *)0, (int )ldv_func_arg1, ldv_func_arg2);
  }
  return;
}
}
static void ldv_free_irq_24(unsigned int ldv_func_arg1 , void *ldv_func_arg2 )
{
  {
  {
  free_irq(ldv_func_arg1, ldv_func_arg2);
  ldv_free_irq((void *)0, (int )ldv_func_arg1, ldv_func_arg2);
  }
  return;
}
}
static void ldv_free_irq_25(unsigned int ldv_func_arg1 , void *ldv_func_arg2 )
{
  {
  {
  free_irq(ldv_func_arg1, ldv_func_arg2);
  ldv_free_irq((void *)0, (int )ldv_func_arg1, ldv_func_arg2);
  }
  return;
}
}
static void ldv_free_irq_26(unsigned int ldv_func_arg1 , void *ldv_func_arg2 )
{
  {
  {
  free_irq(ldv_func_arg1, ldv_func_arg2);
  ldv_free_irq((void *)0, (int )ldv_func_arg1, ldv_func_arg2);
  }
  return;
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
static void ldv_mutex_lock_28(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_mutex_lock_uld_mutex(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_unlock_29(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_mutex_unlock_uld_mutex(ldv_func_arg1);
  }
  return;
}
}
static int ldv_register_netevent_notifier_30(struct notifier_block *ldv_func_arg1 )
{
  ldv_func_ret_type___3 ldv_func_res ;
  int tmp ;
  int tmp___0 ;
  {
  {
  tmp = register_netevent_notifier(ldv_func_arg1);
  ldv_func_res = tmp;
  tmp___0 = ldv_register_netevent_notifier(ldv_func_res, ldv_func_arg1);
  }
  return (tmp___0);
  return (ldv_func_res);
}
}
static void ldv_mutex_lock_31(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_mutex_lock_uld_mutex(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_unlock_32(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_mutex_unlock_uld_mutex(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_lock_33(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_mutex_lock_uld_mutex(ldv_func_arg1);
  }
  return;
}
}
static int ldv_unregister_netevent_notifier_34(struct notifier_block *ldv_func_arg1 )
{
  ldv_func_ret_type___4 ldv_func_res ;
  int tmp ;
  int tmp___0 ;
  {
  {
  tmp = unregister_netevent_notifier(ldv_func_arg1);
  ldv_func_res = tmp;
  tmp___0 = ldv_unregister_netevent_notifier(ldv_func_res, ldv_func_arg1);
  }
  return (tmp___0);
  return (ldv_func_res);
}
}
static void ldv_mutex_unlock_35(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_mutex_unlock_uld_mutex(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_lock_36(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_mutex_lock_uld_mutex(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_unlock_37(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_mutex_unlock_uld_mutex(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_lock_38(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_mutex_lock_uld_mutex(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_unlock_39(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_mutex_unlock_uld_mutex(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_lock_40(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_mutex_lock_uld_mutex(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_unlock_41(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_mutex_unlock_uld_mutex(ldv_func_arg1);
  }
  return;
}
}
__inline static int ldv_request_irq_42(unsigned int irq , irqreturn_t (*handler)(int ,
                                                                                 void * ) ,
                                       unsigned long flags , char const *name ,
                                       void *dev )
{
  ldv_func_ret_type___5 ldv_func_res ;
  int tmp ;
  int tmp___0 ;
  {
  {
  tmp = request_irq(irq, handler, flags, name, dev);
  ldv_func_res = tmp;
  tmp___0 = ldv_request_irq(ldv_func_res, irq, handler, flags, (char *)name, dev);
  }
  return (tmp___0);
  return (ldv_func_res);
}
}
static void ldv_free_irq_43(unsigned int ldv_func_arg1 , void *ldv_func_arg2 )
{
  {
  {
  free_irq(ldv_func_arg1, ldv_func_arg2);
  ldv_free_irq((void *)0, (int )ldv_func_arg1, ldv_func_arg2);
  }
  return;
}
}
__inline static int ldv_request_irq_44(unsigned int irq , irqreturn_t (*handler)(int ,
                                                                                 void * ) ,
                                       unsigned long flags , char const *name ,
                                       void *dev )
{
  ldv_func_ret_type___6 ldv_func_res ;
  int tmp ;
  int tmp___0 ;
  {
  {
  tmp = request_irq(irq, handler, flags, name, dev);
  ldv_func_res = tmp;
  tmp___0 = ldv_request_irq(ldv_func_res, irq, handler, flags, (char *)name, dev);
  }
  return (tmp___0);
  return (ldv_func_res);
}
}
static void ldv_free_irq_45(unsigned int ldv_func_arg1 , void *ldv_func_arg2 )
{
  {
  {
  free_irq(ldv_func_arg1, ldv_func_arg2);
  ldv_free_irq((void *)0, (int )ldv_func_arg1, ldv_func_arg2);
  }
  return;
}
}
static void ldv_free_irq_46(unsigned int ldv_func_arg1 , void *ldv_func_arg2 )
{
  {
  {
  free_irq(ldv_func_arg1, ldv_func_arg2);
  ldv_free_irq((void *)0, (int )ldv_func_arg1, ldv_func_arg2);
  }
  return;
}
}
static void ldv_free_netdev_47(struct net_device *ldv_func_arg1 )
{
  {
  {
  free_netdev(ldv_func_arg1);
  ldv_free_netdev((void *)0, ldv_func_arg1);
  }
  return;
}
}
static struct net_device *ldv_alloc_etherdev_mqs_48(int ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                                    unsigned int ldv_func_arg3 )
{
  ldv_func_ret_type___7 ldv_func_res ;
  struct net_device *tmp ;
  struct net_device *tmp___0 ;
  {
  {
  tmp = alloc_etherdev_mqs(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3);
  ldv_func_res = tmp;
  tmp___0 = ldv_alloc_etherdev_mqs(ldv_func_res, ldv_func_arg1, ldv_func_arg2, ldv_func_arg3);
  }
  return (tmp___0);
  return (ldv_func_res);
}
}
static int ldv_register_netdev_49(struct net_device *ldv_func_arg1 )
{
  ldv_func_ret_type___8 ldv_func_res ;
  int tmp ;
  int tmp___0 ;
  {
  {
  tmp = register_netdev(ldv_func_arg1);
  ldv_func_res = tmp;
  tmp___0 = ldv_register_netdev(ldv_func_res, ldv_func_arg1);
  }
  return (tmp___0);
  return (ldv_func_res);
}
}
static void ldv_unregister_netdev_50(struct net_device *ldv_func_arg1 )
{
  {
  {
  unregister_netdev(ldv_func_arg1);
  ldv_unregister_netdev((void *)0, ldv_func_arg1);
  }
  return;
}
}
static int ldv___pci_register_driver_51(struct pci_driver *ldv_func_arg1 , struct module *ldv_func_arg2 ,
                                        char const *ldv_func_arg3 )
{
  ldv_func_ret_type___9 ldv_func_res ;
  int tmp ;
  int tmp___0 ;
  {
  {
  tmp = __pci_register_driver(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3);
  ldv_func_res = tmp;
  tmp___0 = ldv___pci_register_driver(ldv_func_res, ldv_func_arg1, ldv_func_arg2,
                                      (char *)ldv_func_arg3);
  }
  return (tmp___0);
  return (ldv_func_res);
}
}
static int ldv_register_inet6addr_notifier_52(struct notifier_block *ldv_func_arg1 )
{
  ldv_func_ret_type___10 ldv_func_res ;
  int tmp ;
  int tmp___0 ;
  {
  {
  tmp = register_inet6addr_notifier(ldv_func_arg1);
  ldv_func_res = tmp;
  tmp___0 = ldv_register_inet6addr_notifier(ldv_func_res, ldv_func_arg1);
  }
  return (tmp___0);
  return (ldv_func_res);
}
}
static int ldv_unregister_inet6addr_notifier_53(struct notifier_block *ldv_func_arg1 )
{
  ldv_func_ret_type___11 ldv_func_res ;
  int tmp ;
  int tmp___0 ;
  {
  {
  tmp = unregister_inet6addr_notifier(ldv_func_arg1);
  ldv_func_res = tmp;
  tmp___0 = ldv_unregister_inet6addr_notifier(ldv_func_res, ldv_func_arg1);
  }
  return (tmp___0);
  return (ldv_func_res);
}
}
static void ldv_pci_unregister_driver_54(struct pci_driver *ldv_func_arg1 )
{
  {
  {
  pci_unregister_driver(ldv_func_arg1);
  ldv_pci_unregister_driver((void *)0, ldv_func_arg1);
  }
  return;
}
}
__inline static __u32 rol32(__u32 word , unsigned int shift )
{
  {
  return ((word << shift) | (word >> (8UL * sizeof(word) - (unsigned long )shift)));
}
}
extern int memcmp(void const * , void const * , size_t ) ;
extern void __xadd_wrong_size(void) ;
__inline static int atomic_read(atomic_t const *v )
{
  {
  return ((int )*((int volatile *)(& v->counter)));
}
}
__inline static void atomic_inc(atomic_t *v )
{
  {
  __asm__ volatile (".pushsection .smp_locks,\"a\"\n.balign 4\n.long 671f - .\n.popsection\n671:\n\tlock; incl %0": "+m" (v->counter));
  return;
}
}
__inline static int atomic_dec_and_test(atomic_t *v )
{
  {
  __asm__ volatile ("":);
  return (0);
  return (1);
}
}
__inline static int atomic_add_return(int i , atomic_t *v )
{
  int __ret ;
  {
  __ret = i;
  {
  if (4UL == 1UL) {
    goto case_1;
  } else {
  }
  if (4UL == 2UL) {
    goto case_2;
  } else {
  }
  if (4UL == 4UL) {
    goto case_4;
  } else {
  }
  if (4UL == 8UL) {
    goto case_8;
  } else {
  }
  goto switch_default;
  case_1:
  __asm__ volatile (".pushsection .smp_locks,\"a\"\n.balign 4\n.long 671f - .\n.popsection\n671:\n\tlock; xaddb %b0, %1\n": "+q" (__ret),
                       "+m" (v->counter): : "memory", "cc");
  goto ldv_5642;
  case_2:
  __asm__ volatile (".pushsection .smp_locks,\"a\"\n.balign 4\n.long 671f - .\n.popsection\n671:\n\tlock; xaddw %w0, %1\n": "+r" (__ret),
                       "+m" (v->counter): : "memory", "cc");
  goto ldv_5642;
  case_4:
  __asm__ volatile (".pushsection .smp_locks,\"a\"\n.balign 4\n.long 671f - .\n.popsection\n671:\n\tlock; xaddl %0, %1\n": "+r" (__ret),
                       "+m" (v->counter): : "memory", "cc");
  goto ldv_5642;
  case_8:
  __asm__ volatile (".pushsection .smp_locks,\"a\"\n.balign 4\n.long 671f - .\n.popsection\n671:\n\tlock; xaddq %q0, %1\n": "+r" (__ret),
                       "+m" (v->counter): : "memory", "cc");
  goto ldv_5642;
  switch_default:
  {
  __xadd_wrong_size();
  }
  switch_break: ;
  }
  ldv_5642: ;
  return (i + __ret);
}
}
extern void __rwlock_init(rwlock_t * , char const * , struct lock_class_key * ) ;
extern void _raw_write_lock_bh(rwlock_t * ) ;
extern void _raw_write_unlock_bh(rwlock_t * ) ;
extern unsigned long volatile jiffies ;
extern int seq_open(struct file * , struct seq_operations const * ) ;
static int ldv_seq_open_15(struct file *ldv_func_arg1 , struct seq_operations const *ldv_func_arg2 ) ;
extern ssize_t seq_read(struct file * , char * , size_t , loff_t * ) ;
extern loff_t seq_lseek(struct file * , loff_t , int ) ;
extern int seq_release(struct inode * , struct file * ) ;
extern int seq_puts(struct seq_file * , char const * ) ;
extern int seq_printf(struct seq_file * , char const * , ...) ;
extern void kfree_skb(struct sk_buff * ) ;
extern u16 vlan_dev_vlan_id(struct net_device const * ) ;
__inline static u32 jhash_3words(u32 a , u32 b , u32 c , u32 initval )
{
  __u32 tmp ;
  __u32 tmp___0 ;
  __u32 tmp___1 ;
  __u32 tmp___2 ;
  __u32 tmp___3 ;
  __u32 tmp___4 ;
  __u32 tmp___5 ;
  {
  {
  a = a + 3735928559U;
  b = b + 3735928559U;
  c = c + initval;
  c = c ^ b;
  tmp = rol32(b, 14U);
  c = c - tmp;
  a = a ^ c;
  tmp___0 = rol32(c, 11U);
  a = a - tmp___0;
  b = b ^ a;
  tmp___1 = rol32(a, 25U);
  b = b - tmp___1;
  c = c ^ b;
  tmp___2 = rol32(b, 16U);
  c = c - tmp___2;
  a = a ^ c;
  tmp___3 = rol32(c, 4U);
  a = a - tmp___3;
  b = b ^ a;
  tmp___4 = rol32(a, 14U);
  b = b - tmp___4;
  c = c ^ b;
  tmp___5 = rol32(b, 24U);
  c = c - tmp___5;
  }
  return (c);
}
}
__inline static u32 jhash_2words(u32 a , u32 b , u32 initval )
{
  u32 tmp ;
  {
  {
  tmp = jhash_3words(a, b, 0U, initval);
  }
  return (tmp);
}
}
extern void neigh_destroy(struct neighbour * ) ;
extern int __neigh_event_send(struct neighbour * , struct sk_buff * ) ;
__inline static void neigh_release(struct neighbour *neigh )
{
  int tmp ;
  {
  {
  tmp = atomic_dec_and_test(& neigh->refcnt);
  }
  if (tmp != 0) {
    {
    neigh_destroy(neigh);
    }
  } else {
  }
  return;
}
}
__inline static int neigh_event_send(struct neighbour *neigh , struct sk_buff *skb )
{
  unsigned long now ;
  int tmp ;
  {
  now = jiffies;
  if (neigh->used != now) {
    neigh->used = now;
  } else {
  }
  if (((int )neigh->nud_state & 218) == 0) {
    {
    tmp = __neigh_event_send(neigh, skb);
    }
    return (tmp);
  } else {
  }
  return (0);
}
}
int cxgb4_l2t_send(struct net_device *dev , struct sk_buff *skb , struct l2t_entry *e ) ;
struct l2t_entry *cxgb4_l2t_get(struct l2t_data *d , struct neighbour *neigh , struct net_device const *physdev ,
                                unsigned int priority ) ;
u64 cxgb4_select_ntuple(struct net_device *dev , struct l2t_entry const *l2t ) ;
__inline static unsigned int vlan_prio(struct l2t_entry const *e )
{
  {
  return ((unsigned int )((int )((unsigned short )e->vlan) >> 13));
}
}
__inline static void l2t_hold(struct l2t_data *d , struct l2t_entry *e )
{
  int tmp ;
  {
  {
  tmp = atomic_add_return(1, & e->refcnt);
  }
  if (tmp == 1) {
    {
    atomic_dec(& d->nfree);
    }
  } else {
  }
  return;
}
}
__inline static unsigned int arp_hash(u32 const *key , int ifindex )
{
  u32 tmp ;
  {
  {
  tmp = jhash_2words(*key, (u32 )ifindex, 0U);
  }
  return (tmp & 2047U);
}
}
__inline static unsigned int ipv6_hash(u32 const *key , int ifindex )
{
  u32 xor ;
  u32 tmp ;
  {
  {
  xor = (((unsigned int )*key ^ (unsigned int )*(key + 1UL)) ^ (unsigned int )*(key + 2UL)) ^ (unsigned int )*(key + 3UL);
  tmp = jhash_2words(xor, (u32 )ifindex, 0U);
  }
  return ((tmp & 2047U) + 2048U);
}
}
static unsigned int addr_hash(u32 const *addr , int addr_len , int ifindex )
{
  unsigned int tmp ;
  unsigned int tmp___0 ;
  unsigned int tmp___1 ;
  {
  if (addr_len == 4) {
    {
    tmp = arp_hash(addr, ifindex);
    tmp___1 = tmp;
    }
  } else {
    {
    tmp___0 = ipv6_hash(addr, ifindex);
    tmp___1 = tmp___0;
    }
  }
  return (tmp___1);
}
}
static int addreq(struct l2t_entry const *e , u32 const *addr )
{
  {
  if ((unsigned int )((unsigned char )e->v6) != 0U) {
    return ((int )((((e->addr[0] ^ (unsigned int )*addr) | (e->addr[1] ^ (unsigned int )*(addr + 1UL))) | (e->addr[2] ^ (unsigned int )*(addr + 2UL))) | (e->addr[3] ^ (unsigned int )*(addr + 3UL))));
  } else {
  }
  return ((int )(e->addr[0] ^ (unsigned int )*addr));
}
}
static void neigh_replace(struct l2t_entry *e , struct neighbour *n )
{
  {
  {
  atomic_inc(& n->refcnt);
  }
  if ((unsigned long )e->neigh != (unsigned long )((struct neighbour *)0)) {
    {
    neigh_release(e->neigh);
    }
  } else {
  }
  e->neigh = n;
  return;
}
}
static int write_l2e(struct adapter *adap , struct l2t_entry *e , int sync )
{
  struct sk_buff *skb ;
  struct cpl_l2t_write_req *req ;
  unsigned char *tmp ;
  __u32 tmp___0 ;
  __u16 tmp___1 ;
  __u16 tmp___2 ;
  __u16 tmp___3 ;
  {
  {
  skb = alloc_skb(32U, 32U);
  }
  if ((unsigned long )skb == (unsigned long )((struct sk_buff *)0)) {
    return (-12);
  } else {
  }
  {
  tmp = __skb_put(skb, 32U);
  req = (struct cpl_l2t_write_req *)tmp;
  req->wr.wr_hi = 268435461U;
  req->wr.wr_mid = 33554432U;
  req->wr.wr_lo = 0ULL;
  tmp___0 = __fswab32((__u32 )((((int )e->idx | (sync != 0 ? 4096 : 0)) | ((int )adap->sge.fw_evtq.abs_id << 14)) | 301989888));
  req->ot.opcode_tid = tmp___0;
  tmp___1 = __fswab16((int )((__u16 )((int )((short )((int )e->lport << 8)) | (sync == 0 ? -32768 : 0))));
  req->params = tmp___1;
  tmp___2 = __fswab16((int )e->idx);
  req->l2t_idx = tmp___2;
  tmp___3 = __fswab16((int )e->vlan);
  req->vlan = tmp___3;
  }
  if ((unsigned long )e->neigh != (unsigned long )((struct neighbour *)0)) {
    {
    memcpy((void *)(& e->dmac), (void const *)(& (e->neigh)->ha), 6UL);
    }
  } else {
  }
  {
  memcpy((void *)(& req->dst_mac), (void const *)(& e->dmac), 6UL);
  set_wr_txq(skb, 1, 0);
  t4_ofld_send(adap, skb);
  }
  if (sync != 0 && (unsigned int )e->state != 4U) {
    e->state = 3U;
  } else {
  }
  return (0);
}
}
static void send_pending(struct adapter *adap , struct l2t_entry *e )
{
  struct sk_buff *skb ;
  {
  goto ldv_47981;
  ldv_47980:
  {
  skb = e->arpq_head;
  e->arpq_head = skb->next;
  skb->next = (struct sk_buff *)0;
  t4_ofld_send(adap, skb);
  }
  ldv_47981: ;
  if ((unsigned long )e->arpq_head != (unsigned long )((struct sk_buff *)0)) {
    goto ldv_47980;
  } else {
  }
  e->arpq_tail = (struct sk_buff *)0;
  return;
}
}
void do_l2t_write_rpl(struct adapter *adap , struct cpl_l2t_write_rpl const *rpl )
{
  unsigned int tid ;
  __u32 tmp ;
  unsigned int idx ;
  long tmp___0 ;
  struct l2t_entry *e ;
  {
  {
  tmp = __fswab32(rpl->ot.opcode_tid);
  tid = tmp & 16777215U;
  idx = tid & 4095U;
  tmp___0 = ldv__builtin_expect((unsigned int )((unsigned char )rpl->status) != 0U, 0L);
  }
  if (tmp___0 != 0L) {
    {
    dev_err((struct device const *)adap->pdev_dev, "Unexpected L2T_WRITE_RPL status %u for entry %u\n",
            (int )rpl->status, idx);
    }
    return;
  } else {
  }
  if ((tid & 4096U) != 0U) {
    {
    e = (struct l2t_entry *)(& (adap->l2t)->l2tab) + (unsigned long )idx;
    spin_lock(& e->lock);
    }
    if ((unsigned int )e->state != 4U) {
      {
      send_pending(adap, e);
      e->state = ((int )(e->neigh)->nud_state & 4) != 0;
      }
    } else {
    }
    {
    spin_unlock(& e->lock);
    }
  } else {
  }
  return;
}
}
__inline static void arpq_enqueue(struct l2t_entry *e , struct sk_buff *skb )
{
  {
  skb->next = (struct sk_buff *)0;
  if ((unsigned long )e->arpq_head != (unsigned long )((struct sk_buff *)0)) {
    (e->arpq_tail)->next = skb;
  } else {
    e->arpq_head = skb;
  }
  e->arpq_tail = skb;
  return;
}
}
int cxgb4_l2t_send(struct net_device *dev , struct sk_buff *skb , struct l2t_entry *e )
{
  struct adapter *adap ;
  struct adapter *tmp ;
  int tmp___0 ;
  int tmp___1 ;
  {
  {
  tmp = netdev2adap((struct net_device const *)dev);
  adap = tmp;
  }
  again: ;
  {
  if ((int )e->state == 1) {
    goto case_1;
  } else {
  }
  if ((int )e->state == 0) {
    goto case_0;
  } else {
  }
  if ((int )e->state == 2) {
    goto case_2;
  } else {
  }
  if ((int )e->state == 3) {
    goto case_3;
  } else {
  }
  goto switch_break;
  case_1:
  {
  neigh_event_send(e->neigh, (struct sk_buff *)0);
  spin_lock_bh(& e->lock);
  }
  if ((unsigned int )e->state == 1U) {
    e->state = 0U;
  } else {
  }
  {
  spin_unlock_bh(& e->lock);
  }
  case_0:
  {
  tmp___0 = t4_ofld_send(adap, skb);
  }
  return (tmp___0);
  case_2: ;
  case_3:
  {
  spin_lock_bh(& e->lock);
  }
  if ((unsigned int )e->state - 2U > 1U) {
    {
    spin_unlock_bh(& e->lock);
    }
    goto again;
  } else {
  }
  {
  arpq_enqueue(e, skb);
  spin_unlock_bh(& e->lock);
  }
  if ((unsigned int )e->state == 2U) {
    {
    tmp___1 = neigh_event_send(e->neigh, (struct sk_buff *)0);
    }
    if (tmp___1 == 0) {
      {
      spin_lock_bh(& e->lock);
      }
      if ((unsigned int )e->state == 2U && (unsigned long )e->arpq_head != (unsigned long )((struct sk_buff *)0)) {
        {
        write_l2e(adap, e, 1);
        }
      } else {
      }
      {
      spin_unlock_bh(& e->lock);
      }
    } else {
    }
  } else {
  }
  switch_break: ;
  }
  return (0);
}
}
static char const __kstrtab_cxgb4_l2t_send[15U] =
  { 'c', 'x', 'g', 'b',
        '4', '_', 'l', '2',
        't', '_', 's', 'e',
        'n', 'd', '\000'};
struct kernel_symbol const __ksymtab_cxgb4_l2t_send ;
struct kernel_symbol const __ksymtab_cxgb4_l2t_send = {(unsigned long )(& cxgb4_l2t_send), (char const *)(& __kstrtab_cxgb4_l2t_send)};
static struct l2t_entry *alloc_l2e(struct l2t_data *d )
{
  struct l2t_entry *end ;
  struct l2t_entry *e ;
  struct l2t_entry **p ;
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  {
  {
  tmp = atomic_read((atomic_t const *)(& d->nfree));
  }
  if (tmp == 0) {
    return ((struct l2t_entry *)0);
  } else {
  }
  e = d->rover;
  end = (struct l2t_entry *)(& d->l2tab) + 4096UL;
  goto ldv_48022;
  ldv_48021:
  {
  tmp___0 = atomic_read((atomic_t const *)(& e->refcnt));
  }
  if (tmp___0 == 0) {
    goto found;
  } else {
  }
  e = e + 1;
  ldv_48022: ;
  if ((unsigned long )e != (unsigned long )end) {
    goto ldv_48021;
  } else {
  }
  e = (struct l2t_entry *)(& d->l2tab);
  goto ldv_48025;
  ldv_48024:
  e = e + 1;
  ldv_48025:
  {
  tmp___1 = atomic_read((atomic_t const *)(& e->refcnt));
  }
  if (tmp___1 != 0) {
    goto ldv_48024;
  } else {
  }
  found:
  {
  d->rover = e + 1UL;
  atomic_dec(& d->nfree);
  }
  if ((unsigned int )e->state <= 3U) {
    p = & d->l2tab[(int )e->hash].first;
    goto ldv_48029;
    ldv_48028: ;
    if ((unsigned long )*p == (unsigned long )e) {
      *p = e->next;
      e->next = (struct l2t_entry *)0;
      goto ldv_48027;
    } else {
    }
    p = & (*p)->next;
    ldv_48029: ;
    if ((unsigned long )*p != (unsigned long )((struct l2t_entry *)0)) {
      goto ldv_48028;
    } else {
    }
    ldv_48027: ;
  } else {
  }
  e->state = 5U;
  return (e);
}
}
static void t4_l2e_free(struct l2t_entry *e )
{
  struct l2t_data *d ;
  struct sk_buff *skb ;
  int tmp ;
  struct l2t_entry const *__mptr ;
  {
  {
  spin_lock_bh(& e->lock);
  tmp = atomic_read((atomic_t const *)(& e->refcnt));
  }
  if (tmp == 0) {
    if ((unsigned long )e->neigh != (unsigned long )((struct neighbour *)0)) {
      {
      neigh_release(e->neigh);
      e->neigh = (struct neighbour *)0;
      }
    } else {
    }
    goto ldv_48036;
    ldv_48035:
    {
    skb = e->arpq_head;
    e->arpq_head = skb->next;
    kfree_skb(skb);
    }
    ldv_48036: ;
    if ((unsigned long )e->arpq_head != (unsigned long )((struct sk_buff *)0)) {
      goto ldv_48035;
    } else {
    }
    e->arpq_tail = (struct sk_buff *)0;
  } else {
  }
  {
  spin_unlock_bh(& e->lock);
  __mptr = (struct l2t_entry const *)e;
  d = (struct l2t_data *)__mptr + - ((unsigned long )e->idx * 152UL + 88UL);
  atomic_inc(& d->nfree);
  }
  return;
}
}
void cxgb4_l2t_release(struct l2t_entry *e )
{
  int tmp ;
  {
  {
  tmp = atomic_dec_and_test(& e->refcnt);
  }
  if (tmp != 0) {
    {
    t4_l2e_free(e);
    }
  } else {
  }
  return;
}
}
static char const __kstrtab_cxgb4_l2t_release[18U] =
  { 'c', 'x', 'g', 'b',
        '4', '_', 'l', '2',
        't', '_', 'r', 'e',
        'l', 'e', 'a', 's',
        'e', '\000'};
struct kernel_symbol const __ksymtab_cxgb4_l2t_release ;
struct kernel_symbol const __ksymtab_cxgb4_l2t_release = {(unsigned long )(& cxgb4_l2t_release), (char const *)(& __kstrtab_cxgb4_l2t_release)};
static void reuse_entry(struct l2t_entry *e , struct neighbour *neigh )
{
  unsigned int nud_state ;
  int tmp ;
  {
  {
  spin_lock(& e->lock);
  }
  if ((unsigned long )neigh != (unsigned long )e->neigh) {
    {
    neigh_replace(e, neigh);
    }
  } else {
  }
  {
  nud_state = (unsigned int )neigh->nud_state;
  tmp = memcmp((void const *)(& e->dmac), (void const *)(& neigh->ha), 6UL);
  }
  if (tmp != 0 || (nud_state & 222U) == 0U) {
    e->state = 2U;
  } else
  if ((nud_state & 194U) != 0U) {
    e->state = 0U;
  } else {
    e->state = 1U;
  }
  {
  spin_unlock(& e->lock);
  }
  return;
}
}
struct l2t_entry *cxgb4_l2t_get(struct l2t_data *d , struct neighbour *neigh , struct net_device const *physdev ,
                                unsigned int priority )
{
  u8 lport ;
  u16 vlan ;
  struct l2t_entry *e ;
  int addr_len ;
  u32 *addr ;
  int ifidx ;
  int hash ;
  unsigned int tmp ;
  struct port_info *tmp___0 ;
  struct port_info *tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  {
  {
  addr_len = (neigh->tbl)->key_len;
  addr = (u32 *)(& neigh->primary_key);
  ifidx = (neigh->dev)->ifindex;
  tmp = addr_hash((u32 const *)addr, addr_len, ifidx);
  hash = (int )tmp;
  }
  if (((neigh->dev)->flags & 8U) != 0U) {
    {
    tmp___0 = netdev2pinfo(physdev);
    lport = (unsigned int )tmp___0->tx_chan + 4U;
    }
  } else {
    {
    tmp___1 = netdev2pinfo(physdev);
    lport = tmp___1->lport;
    }
  }
  if ((int )(neigh->dev)->priv_flags & 1) {
    {
    vlan = vlan_dev_vlan_id((struct net_device const *)neigh->dev);
    }
  } else {
    vlan = 4095U;
  }
  {
  _raw_write_lock_bh(& d->lock);
  e = d->l2tab[hash].first;
  }
  goto ldv_48070;
  ldv_48069:
  {
  tmp___3 = addreq((struct l2t_entry const *)e, (u32 const *)addr);
  }
  if (((tmp___3 == 0 && e->ifindex == ifidx) && (int )e->vlan == (int )vlan) && (int )e->lport == (int )lport) {
    {
    l2t_hold(d, e);
    tmp___2 = atomic_read((atomic_t const *)(& e->refcnt));
    }
    if (tmp___2 == 1) {
      {
      reuse_entry(e, neigh);
      }
    } else {
    }
    goto done;
  } else {
  }
  e = e->next;
  ldv_48070: ;
  if ((unsigned long )e != (unsigned long )((struct l2t_entry *)0)) {
    goto ldv_48069;
  } else {
  }
  {
  e = alloc_l2e(d);
  }
  if ((unsigned long )e != (unsigned long )((struct l2t_entry *)0)) {
    {
    spin_lock(& e->lock);
    e->state = 2U;
    memcpy((void *)(& e->addr), (void const *)addr, (size_t )addr_len);
    e->ifindex = ifidx;
    e->hash = (u16 )hash;
    e->lport = lport;
    e->v6 = addr_len == 16;
    atomic_set(& e->refcnt, 1);
    neigh_replace(e, neigh);
    e->vlan = vlan;
    e->next = d->l2tab[hash].first;
    d->l2tab[hash].first = e;
    spin_unlock(& e->lock);
    }
  } else {
  }
  done:
  {
  _raw_write_unlock_bh(& d->lock);
  }
  return (e);
}
}
static char const __kstrtab_cxgb4_l2t_get[14U] =
  { 'c', 'x', 'g', 'b',
        '4', '_', 'l', '2',
        't', '_', 'g', 'e',
        't', '\000'};
struct kernel_symbol const __ksymtab_cxgb4_l2t_get ;
struct kernel_symbol const __ksymtab_cxgb4_l2t_get = {(unsigned long )(& cxgb4_l2t_get), (char const *)(& __kstrtab_cxgb4_l2t_get)};
u64 cxgb4_select_ntuple(struct net_device *dev , struct l2t_entry const *l2t )
{
  struct adapter *adap ;
  struct adapter *tmp ;
  struct tp_params *tp ;
  u64 ntuple ;
  u32 viid ;
  unsigned int tmp___0 ;
  u32 vf ;
  u32 pf ;
  u32 vld ;
  {
  {
  tmp = netdev2adap((struct net_device const *)dev);
  adap = tmp;
  tp = & adap->params.tp;
  ntuple = 0ULL;
  }
  if (tp->vlan_shift >= 0 && (unsigned int )((unsigned short )l2t->vlan) != 4095U) {
    ntuple = ntuple | ((unsigned long long )((unsigned int )l2t->vlan | 65536U) << tp->vlan_shift);
  } else {
  }
  if (tp->port_shift >= 0) {
    ntuple = ntuple | ((unsigned long long )l2t->lport << tp->port_shift);
  } else {
  }
  if (tp->protocol_shift >= 0) {
    ntuple = ntuple | (6ULL << tp->protocol_shift);
  } else {
  }
  if (tp->vnic_shift >= 0) {
    {
    tmp___0 = cxgb4_port_viid((struct net_device const *)dev);
    viid = tmp___0;
    vf = viid & 127U;
    pf = (viid >> 8) & 7U;
    vld = (viid >> 7) & 1U;
    ntuple = ntuple | ((unsigned long long )((vf | (pf << 7)) | (vld << 16)) << tp->vnic_shift);
    }
  } else {
  }
  return (ntuple);
}
}
static char const __kstrtab_cxgb4_select_ntuple[20U] =
  { 'c', 'x', 'g', 'b',
        '4', '_', 's', 'e',
        'l', 'e', 'c', 't',
        '_', 'n', 't', 'u',
        'p', 'l', 'e', '\000'};
struct kernel_symbol const __ksymtab_cxgb4_select_ntuple ;
struct kernel_symbol const __ksymtab_cxgb4_select_ntuple = {(unsigned long )(& cxgb4_select_ntuple), (char const *)(& __kstrtab_cxgb4_select_ntuple)};
static void handle_failed_resolution(struct adapter *adap , struct sk_buff *arpq )
{
  struct sk_buff *skb ;
  struct l2t_skb_cb const *cb ;
  {
  goto ldv_48108;
  ldv_48107:
  skb = arpq;
  cb = (struct l2t_skb_cb const *)(& skb->cb);
  arpq = skb->next;
  skb->next = (struct sk_buff *)0;
  if ((unsigned long )cb->arp_err_handler != (unsigned long )((void (*)(void * , struct sk_buff * ))0)) {
    {
    (*(cb->arp_err_handler))(cb->handle, skb);
    }
  } else {
    {
    t4_ofld_send(adap, skb);
    }
  }
  ldv_48108: ;
  if ((unsigned long )arpq != (unsigned long )((struct sk_buff *)0)) {
    goto ldv_48107;
  } else {
  }
  return;
}
}
void t4_l2t_update(struct adapter *adap , struct neighbour *neigh )
{
  struct l2t_entry *e ;
  struct sk_buff *arpq ;
  struct l2t_data *d ;
  int addr_len ;
  u32 *addr ;
  int ifidx ;
  int hash ;
  unsigned int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  struct sk_buff *tmp___2 ;
  int tmp___3 ;
  {
  {
  arpq = (struct sk_buff *)0;
  d = adap->l2t;
  addr_len = (neigh->tbl)->key_len;
  addr = (u32 *)(& neigh->primary_key);
  ifidx = (neigh->dev)->ifindex;
  tmp = addr_hash((u32 const *)addr, addr_len, ifidx);
  hash = (int )tmp;
  _raw_read_lock_bh(& d->lock);
  e = d->l2tab[hash].first;
  }
  goto ldv_48124;
  ldv_48123:
  {
  tmp___1 = addreq((struct l2t_entry const *)e, (u32 const *)addr);
  }
  if (tmp___1 == 0 && e->ifindex == ifidx) {
    {
    spin_lock(& e->lock);
    tmp___0 = atomic_read((atomic_t const *)(& e->refcnt));
    }
    if (tmp___0 != 0) {
      goto found;
    } else {
    }
    {
    spin_unlock(& e->lock);
    }
    goto ldv_48122;
  } else {
  }
  e = e->next;
  ldv_48124: ;
  if ((unsigned long )e != (unsigned long )((struct l2t_entry *)0)) {
    goto ldv_48123;
  } else {
  }
  ldv_48122:
  {
  _raw_read_unlock_bh(& d->lock);
  }
  return;
  found:
  {
  _raw_read_unlock(& d->lock);
  }
  if ((unsigned long )neigh != (unsigned long )e->neigh) {
    {
    neigh_replace(e, neigh);
    }
  } else {
  }
  if ((unsigned int )e->state == 2U) {
    if (((int )neigh->nud_state & 32) != 0) {
      arpq = e->arpq_head;
      tmp___2 = (struct sk_buff *)0;
      e->arpq_tail = tmp___2;
      e->arpq_head = tmp___2;
    } else
    if (((int )neigh->nud_state & 198) != 0 && (unsigned long )e->arpq_head != (unsigned long )((struct sk_buff *)0)) {
      {
      write_l2e(adap, e, 1);
      }
    } else {
    }
  } else {
    {
    e->state = ((int )neigh->nud_state & 194) == 0;
    tmp___3 = memcmp((void const *)(& e->dmac), (void const *)(& neigh->ha), 6UL);
    }
    if (tmp___3 != 0) {
      {
      write_l2e(adap, e, 0);
      }
    } else {
    }
  }
  {
  spin_unlock_bh(& e->lock);
  }
  if ((unsigned long )arpq != (unsigned long )((struct sk_buff *)0)) {
    {
    handle_failed_resolution(adap, arpq);
    }
  } else {
  }
  return;
}
}
struct l2t_entry *t4_l2t_alloc_switching(struct l2t_data *d )
{
  struct l2t_entry *e ;
  {
  {
  _raw_write_lock_bh(& d->lock);
  e = alloc_l2e(d);
  }
  if ((unsigned long )e != (unsigned long )((struct l2t_entry *)0)) {
    {
    spin_lock(& e->lock);
    e->state = 4U;
    atomic_set(& e->refcnt, 1);
    spin_unlock(& e->lock);
    }
  } else {
  }
  {
  _raw_write_unlock_bh(& d->lock);
  }
  return (e);
}
}
int t4_l2t_set_switching(struct adapter *adap , struct l2t_entry *e , u16 vlan , u8 port ,
                         u8 *eth_addr )
{
  int tmp ;
  {
  {
  e->vlan = vlan;
  e->lport = port;
  memcpy((void *)(& e->dmac), (void const *)eth_addr, 6UL);
  tmp = write_l2e(adap, e, 0);
  }
  return (tmp);
}
}
struct l2t_data *t4_init_l2t(void)
{
  int i ;
  struct l2t_data *d ;
  void *tmp ;
  struct lock_class_key __key ;
  struct lock_class_key __key___0 ;
  {
  {
  tmp = t4_alloc_mem(622680UL);
  d = (struct l2t_data *)tmp;
  }
  if ((unsigned long )d == (unsigned long )((struct l2t_data *)0)) {
    return ((struct l2t_data *)0);
  } else {
  }
  {
  d->rover = (struct l2t_entry *)(& d->l2tab);
  atomic_set(& d->nfree, 4096);
  __rwlock_init(& d->lock, "&d->lock", & __key);
  i = 0;
  }
  goto ldv_48144;
  ldv_48143:
  {
  d->l2tab[i].idx = (u16 )i;
  d->l2tab[i].state = 5U;
  spinlock_check(& d->l2tab[i].lock);
  __raw_spin_lock_init(& d->l2tab[i].lock.__annonCompField19.rlock, "&(&d->l2tab[i].lock)->rlock",
                       & __key___0);
  atomic_set(& d->l2tab[i].refcnt, 0);
  i = i + 1;
  }
  ldv_48144: ;
  if (i <= 4095) {
    goto ldv_48143;
  } else {
  }
  return (d);
}
}
__inline static void *l2t_get_idx(struct seq_file *seq , loff_t pos )
{
  struct l2t_entry *l2tab ;
  {
  l2tab = (struct l2t_entry *)seq->private;
  return (pos <= 4095LL ? (void *)l2tab + (unsigned long )pos : (void *)0);
}
}
static void *l2t_seq_start(struct seq_file *seq , loff_t *pos )
{
  void *tmp ;
  void *tmp___0 ;
  {
  if (*pos != 0LL) {
    {
    tmp = l2t_get_idx(seq, *pos + -1LL);
    tmp___0 = tmp;
    }
  } else {
    tmp___0 = (void *)1;
  }
  return (tmp___0);
}
}
static void *l2t_seq_next(struct seq_file *seq , void *v , loff_t *pos )
{
  {
  {
  v = l2t_get_idx(seq, *pos);
  }
  if ((unsigned long )v != (unsigned long )((void *)0)) {
    *pos = *pos + 1LL;
  } else {
  }
  return (v);
}
}
static void l2t_seq_stop(struct seq_file *seq , void *v )
{
  {
  return;
}
}
static char l2e_state(struct l2t_entry const *e )
{
  {
  {
  if ((int )e->state == 0) {
    goto case_0;
  } else {
  }
  if ((int )e->state == 1) {
    goto case_1;
  } else {
  }
  if ((int )e->state == 3) {
    goto case_3;
  } else {
  }
  if ((int )e->state == 2) {
    goto case_2;
  } else {
  }
  if ((int )e->state == 4) {
    goto case_4;
  } else {
  }
  goto switch_default;
  case_0: ;
  return (86);
  case_1: ;
  return (83);
  case_3: ;
  return (87);
  case_2: ;
  return ((unsigned long )e->arpq_head != (unsigned long )((struct sk_buff * )0) ? 65 : 82);
  case_4: ;
  return (88);
  switch_default: ;
  return (85);
  switch_break: ;
  }
}
}
static int l2t_seq_show(struct seq_file *seq , void *v )
{
  char ip[60U] ;
  struct l2t_entry *e ;
  int tmp ;
  char tmp___0 ;
  unsigned int tmp___1 ;
  {
  if ((unsigned long )v == (unsigned long )((void *)1)) {
    {
    seq_puts(seq, " Idx IP address                Ethernet address  VLAN/P LP State Users Port\n");
    }
  } else {
    {
    e = (struct l2t_entry *)v;
    spin_lock_bh(& e->lock);
    }
    if ((unsigned int )e->state == 4U) {
      ip[0] = 0;
    } else {
      {
      sprintf((char *)(& ip), (unsigned int )e->v6 != 0U ? "%pI6c" : "%pI4", (u32 *)(& e->addr));
      }
    }
    {
    tmp = atomic_read((atomic_t const *)(& e->refcnt));
    tmp___0 = l2e_state((struct l2t_entry const *)e);
    tmp___1 = vlan_prio((struct l2t_entry const *)e);
    seq_printf(seq, "%4u %-25s %17pM %4d %u %2u   %c   %5u %s\n", (int )e->idx, (char *)(& ip),
               (u8 *)(& e->dmac), (int )e->vlan & 4095, tmp___1, (int )e->lport, (int )tmp___0,
               tmp, (unsigned long )e->neigh != (unsigned long )((struct neighbour *)0) ? (char *)(& ((e->neigh)->dev)->name) : (char *)"");
    spin_unlock_bh(& e->lock);
    }
  }
  return (0);
}
}
static struct seq_operations const l2t_seq_ops = {& l2t_seq_start, & l2t_seq_stop, & l2t_seq_next, & l2t_seq_show};
static int l2t_seq_open(struct inode *inode , struct file *file )
{
  int rc ;
  int tmp ;
  struct adapter *adap ;
  struct seq_file *seq ;
  {
  {
  tmp = ldv_seq_open_15(file, & l2t_seq_ops);
  rc = tmp;
  }
  if (rc == 0) {
    adap = (struct adapter *)inode->i_private;
    seq = (struct seq_file *)file->private_data;
    seq->private = (void *)(& (adap->l2t)->l2tab);
  } else {
  }
  return (rc);
}
}
struct file_operations const t4_l2t_fops =
     {& __this_module, & seq_lseek, & seq_read, 0, 0, 0, 0, 0, 0, 0, 0, & l2t_seq_open,
    0, & seq_release, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0};
void ldv_dispatch_register_18_1(struct seq_file *arg0 , struct seq_operations *arg1 ) ;
void ldv_file_operations_instance_callback_1_22(long (*arg0)(struct file * , char * ,
                                                             unsigned long , long long * ) ,
                                                struct file *arg1 , char *arg2 , unsigned long arg3 ,
                                                long long *arg4 ) ;
void ldv_file_operations_instance_callback_1_5(long long (*arg0)(struct file * , long long ,
                                                                 int ) , struct file *arg1 ,
                                               long long arg2 , int arg3 ) ;
int ldv_file_operations_instance_probe_1_12(int (*arg0)(struct inode * , struct file * ) ,
                                            struct inode *arg1 , struct file *arg2 ) ;
void ldv_file_operations_instance_release_1_2(int (*arg0)(struct inode * , struct file * ) ,
                                              struct inode *arg1 , struct file *arg2 ) ;
void ldv_seq_instance_next_6_7(void *(*arg0)(struct seq_file * , void * , long long * ) ,
                               struct seq_file *arg1 , void *arg2 , long long *arg3 ) ;
void ldv_seq_instance_show_6_8(int (*arg0)(struct seq_file * , void * ) , struct seq_file *arg1 ,
                               void *arg2 ) ;
void ldv_seq_instance_start_6_4(void *(*arg0)(struct seq_file * , long long * ) ,
                                struct seq_file *arg1 , long long *arg2 ) ;
void ldv_seq_instance_stop_6_10(void (*arg0)(struct seq_file * , void * ) , struct seq_file *arg1 ,
                                void *arg2 ) ;
int ldv_seq_open(int arg0 , struct file *arg1 , struct seq_operations *arg2 ) ;
void ldv_seq_operations_seq_instance_6(void *arg0 ) ;
struct ldv_thread ldv_thread_1 ;
struct ldv_thread ldv_thread_6 ;
void ldv_dispatch_register_18_1(struct seq_file *arg0 , struct seq_operations *arg1 )
{
  struct ldv_struct_seq_instance_6 *cf_arg_6 ;
  void *tmp ;
  {
  {
  tmp = ldv_xmalloc(24UL);
  cf_arg_6 = (struct ldv_struct_seq_instance_6 *)tmp;
  cf_arg_6->arg0 = arg0;
  cf_arg_6->arg1 = arg1;
  ldv_seq_operations_seq_instance_6((void *)cf_arg_6);
  }
  return;
}
}
void ldv_file_operations_file_operations_instance_1(void *arg0 )
{
  long long (*ldv_1_callback_llseek)(struct file * , long long , int ) ;
  long (*ldv_1_callback_read)(struct file * , char * , unsigned long , long long * ) ;
  struct file_operations *ldv_1_container_file_operations ;
  char *ldv_1_ldv_param_22_1_default ;
  long long *ldv_1_ldv_param_22_3_default ;
  char *ldv_1_ldv_param_4_1_default ;
  long long *ldv_1_ldv_param_4_3_default ;
  long long ldv_1_ldv_param_5_1_default ;
  int ldv_1_ldv_param_5_2_default ;
  struct file *ldv_1_resource_file ;
  struct inode *ldv_1_resource_inode ;
  int ldv_1_ret_default ;
  unsigned long ldv_1_size_cnt_write_size ;
  void *tmp ;
  void *tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  int tmp___4 ;
  void *tmp___5 ;
  void *tmp___6 ;
  void *tmp___7 ;
  void *tmp___8 ;
  int tmp___9 ;
  {
  {
  ldv_1_ret_default = 1;
  tmp = ldv_xmalloc(520UL);
  ldv_1_resource_file = (struct file *)tmp;
  tmp___0 = ldv_xmalloc(1032UL);
  ldv_1_resource_inode = (struct inode *)tmp___0;
  tmp___1 = ldv_undef_int();
  ldv_1_size_cnt_write_size = (unsigned long )tmp___1;
  }
  goto ldv_main_1;
  return;
  ldv_main_1:
  {
  tmp___3 = ldv_undef_int();
  }
  if (tmp___3 != 0) {
    {
    ldv_1_ret_default = ldv_file_operations_instance_probe_1_12(ldv_1_container_file_operations->open,
                                                                ldv_1_resource_inode,
                                                                ldv_1_resource_file);
    ldv_1_ret_default = ldv_filter_err_code(ldv_1_ret_default);
    tmp___2 = ldv_undef_int();
    }
    if (tmp___2 != 0) {
      {
      ldv_assume(ldv_1_ret_default == 0);
      }
      goto ldv_call_1;
    } else {
      {
      ldv_assume(ldv_1_ret_default != 0);
      }
      goto ldv_main_1;
    }
  } else {
    {
    ldv_free((void *)ldv_1_resource_file);
    ldv_free((void *)ldv_1_resource_inode);
    }
    return;
  }
  return;
  ldv_call_1:
  {
  tmp___4 = ldv_undef_int();
  }
  {
  if (tmp___4 == 1) {
    goto case_1;
  } else {
  }
  if (tmp___4 == 2) {
    goto case_2;
  } else {
  }
  if (tmp___4 == 3) {
    goto case_3;
  } else {
  }
  goto switch_default;
  case_1:
  {
  tmp___5 = ldv_xmalloc(1UL);
  ldv_1_ldv_param_4_1_default = (char *)tmp___5;
  tmp___6 = ldv_xmalloc(8UL);
  ldv_1_ldv_param_4_3_default = (long long *)tmp___6;
  ldv_assume(ldv_1_size_cnt_write_size <= 2147479552UL);
  }
  if ((unsigned long )ldv_1_container_file_operations->write != (unsigned long )((ssize_t (*)(struct file * ,
                                                                                              char const * ,
                                                                                              size_t ,
                                                                                              loff_t * ))0)) {
    {
    ldv_file_operations_instance_write_1_4((long (*)(struct file * , char * , unsigned long ,
                                                     long long * ))ldv_1_container_file_operations->write,
                                           ldv_1_resource_file, ldv_1_ldv_param_4_1_default,
                                           ldv_1_size_cnt_write_size, ldv_1_ldv_param_4_3_default);
    }
  } else {
  }
  {
  ldv_free((void *)ldv_1_ldv_param_4_1_default);
  ldv_free((void *)ldv_1_ldv_param_4_3_default);
  }
  goto ldv_call_1;
  case_2:
  {
  ldv_file_operations_instance_release_1_2(ldv_1_container_file_operations->release,
                                           ldv_1_resource_inode, ldv_1_resource_file);
  }
  goto ldv_main_1;
  case_3:
  {
  tmp___9 = ldv_undef_int();
  }
  if (tmp___9 != 0) {
    {
    tmp___7 = ldv_xmalloc(1UL);
    ldv_1_ldv_param_22_1_default = (char *)tmp___7;
    tmp___8 = ldv_xmalloc(8UL);
    ldv_1_ldv_param_22_3_default = (long long *)tmp___8;
    ldv_file_operations_instance_callback_1_22(ldv_1_callback_read, ldv_1_resource_file,
                                               ldv_1_ldv_param_22_1_default, ldv_1_size_cnt_write_size,
                                               ldv_1_ldv_param_22_3_default);
    ldv_free((void *)ldv_1_ldv_param_22_1_default);
    ldv_free((void *)ldv_1_ldv_param_22_3_default);
    }
  } else {
    {
    ldv_file_operations_instance_callback_1_5(ldv_1_callback_llseek, ldv_1_resource_file,
                                              ldv_1_ldv_param_5_1_default, ldv_1_ldv_param_5_2_default);
    }
  }
  goto ldv_48332;
  switch_default:
  {
  ldv_stop();
  }
  switch_break: ;
  }
  ldv_48332: ;
  goto ldv_call_1;
  goto ldv_call_1;
  return;
}
}
void ldv_file_operations_instance_callback_1_22(long (*arg0)(struct file * , char * ,
                                                             unsigned long , long long * ) ,
                                                struct file *arg1 , char *arg2 , unsigned long arg3 ,
                                                long long *arg4 )
{
  {
  {
  seq_read(arg1, arg2, arg3, arg4);
  }
  return;
}
}
void ldv_file_operations_instance_callback_1_5(long long (*arg0)(struct file * , long long ,
                                                                 int ) , struct file *arg1 ,
                                               long long arg2 , int arg3 )
{
  {
  {
  seq_lseek(arg1, arg2, arg3);
  }
  return;
}
}
int ldv_file_operations_instance_probe_1_12(int (*arg0)(struct inode * , struct file * ) ,
                                            struct inode *arg1 , struct file *arg2 )
{
  int tmp ;
  {
  {
  tmp = l2t_seq_open(arg1, arg2);
  }
  return (tmp);
}
}
void ldv_file_operations_instance_release_1_2(int (*arg0)(struct inode * , struct file * ) ,
                                              struct inode *arg1 , struct file *arg2 )
{
  {
  {
  seq_release(arg1, arg2);
  }
  return;
}
}
void ldv_seq_instance_next_6_7(void *(*arg0)(struct seq_file * , void * , long long * ) ,
                               struct seq_file *arg1 , void *arg2 , long long *arg3 )
{
  {
  {
  l2t_seq_next(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_seq_instance_show_6_8(int (*arg0)(struct seq_file * , void * ) , struct seq_file *arg1 ,
                               void *arg2 )
{
  {
  {
  l2t_seq_show(arg1, arg2);
  }
  return;
}
}
void ldv_seq_instance_start_6_4(void *(*arg0)(struct seq_file * , long long * ) ,
                                struct seq_file *arg1 , long long *arg2 )
{
  {
  {
  l2t_seq_start(arg1, arg2);
  }
  return;
}
}
void ldv_seq_instance_stop_6_10(void (*arg0)(struct seq_file * , void * ) , struct seq_file *arg1 ,
                                void *arg2 )
{
  {
  {
  l2t_seq_stop(arg1, arg2);
  }
  return;
}
}
int ldv_seq_open(int arg0 , struct file *arg1 , struct seq_operations *arg2 )
{
  struct seq_operations *ldv_18_ops_seq_operations ;
  struct seq_file *ldv_18_seq_file_seq_file ;
  void *tmp ;
  {
  {
  tmp = ldv_xmalloc(264UL);
  ldv_18_seq_file_seq_file = (struct seq_file *)tmp;
  ldv_18_ops_seq_operations = arg2;
  ldv_dispatch_register_18_1(ldv_18_seq_file_seq_file, ldv_18_ops_seq_operations);
  }
  return (arg0);
  return (arg0);
}
}
void ldv_seq_operations_seq_instance_6(void *arg0 )
{
  void *ldv_6_ldv_param_10_1_default ;
  long long *ldv_6_ldv_param_4_1_default ;
  void *ldv_6_ldv_param_7_1_default ;
  long long *ldv_6_ldv_param_7_2_default ;
  void *ldv_6_ldv_param_8_1_default ;
  struct seq_operations *ldv_6_ops_seq_operations ;
  struct seq_file *ldv_6_seq_file_seq_file ;
  int ldv_6_started_default ;
  struct ldv_struct_seq_instance_6 *data ;
  int tmp ;
  void *tmp___0 ;
  void *tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  {
  data = (struct ldv_struct_seq_instance_6 *)arg0;
  ldv_6_started_default = 0;
  if ((unsigned long )data != (unsigned long )((struct ldv_struct_seq_instance_6 *)0)) {
    {
    ldv_6_seq_file_seq_file = data->arg0;
    ldv_6_ops_seq_operations = data->arg1;
    ldv_free((void *)data);
    }
  } else {
  }
  goto ldv_do_6;
  return;
  ldv_do_6:
  {
  tmp___3 = ldv_undef_int();
  }
  if (tmp___3 != 0) {
    {
    ldv_assume(ldv_6_started_default == 1);
    tmp = ldv_undef_int();
    }
    {
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
    case_1:
    {
    ldv_6_ldv_param_10_1_default = ldv_xmalloc(1UL);
    ldv_seq_instance_stop_6_10(ldv_6_ops_seq_operations->stop, ldv_6_seq_file_seq_file,
                               ldv_6_ldv_param_10_1_default);
    ldv_free(ldv_6_ldv_param_10_1_default);
    ldv_6_started_default = 0;
    }
    goto ldv_do_6;
    case_2:
    {
    ldv_6_ldv_param_8_1_default = ldv_xmalloc(1UL);
    ldv_seq_instance_show_6_8(ldv_6_ops_seq_operations->show, ldv_6_seq_file_seq_file,
                              ldv_6_ldv_param_8_1_default);
    ldv_free(ldv_6_ldv_param_8_1_default);
    }
    goto ldv_do_6;
    goto ldv_do_6;
    case_3:
    {
    ldv_6_ldv_param_7_1_default = ldv_xmalloc(1UL);
    tmp___0 = ldv_xmalloc(8UL);
    ldv_6_ldv_param_7_2_default = (long long *)tmp___0;
    ldv_seq_instance_next_6_7(ldv_6_ops_seq_operations->next, ldv_6_seq_file_seq_file,
                              ldv_6_ldv_param_7_1_default, ldv_6_ldv_param_7_2_default);
    ldv_free(ldv_6_ldv_param_7_1_default);
    ldv_free((void *)ldv_6_ldv_param_7_2_default);
    }
    goto ldv_do_6;
    goto ldv_do_6;
    goto ldv_do_6;
    switch_default:
    {
    ldv_stop();
    }
    switch_break: ;
    }
  } else {
    {
    ldv_assume(ldv_6_started_default == 0);
    tmp___2 = ldv_undef_int();
    }
    if (tmp___2 != 0) {
      {
      tmp___1 = ldv_xmalloc(8UL);
      ldv_6_ldv_param_4_1_default = (long long *)tmp___1;
      ldv_seq_instance_start_6_4(ldv_6_ops_seq_operations->start, ldv_6_seq_file_seq_file,
                                 ldv_6_ldv_param_4_1_default);
      ldv_free((void *)ldv_6_ldv_param_4_1_default);
      ldv_6_started_default = 1;
      }
      goto ldv_do_6;
    } else {
      return;
    }
  }
  return;
}
}
static int ldv_seq_open_15(struct file *ldv_func_arg1 , struct seq_operations const *ldv_func_arg2 )
{
  ldv_func_ret_type ldv_func_res ;
  int tmp ;
  int tmp___0 ;
  {
  {
  tmp = seq_open(ldv_func_arg1, ldv_func_arg2);
  ldv_func_res = tmp;
  tmp___0 = ldv_seq_open(ldv_func_res, ldv_func_arg1, (struct seq_operations *)ldv_func_arg2);
  }
  return (tmp___0);
  return (ldv_func_res);
}
}
extern int __printk_ratelimit(char const * ) ;
extern char *strim(char * ) ;
__inline static unsigned long readq(void const volatile *addr )
{
  unsigned long ret ;
  {
  __asm__ volatile ("movq %1,%0": "=r" (ret): "m" (*((unsigned long volatile *)addr)): "memory");
  return (ret);
}
}
__inline static void writeq(unsigned long val , void volatile *addr )
{
  {
  __asm__ volatile ("movq %0,%1": : "r" (val), "m" (*((unsigned long volatile *)addr)): "memory");
  return;
}
}
extern void *vmalloc(unsigned long ) ;
extern void __udelay(unsigned long ) ;
extern void __const_udelay(unsigned long ) ;
extern int pci_bus_read_config_word(struct pci_bus * , unsigned int , int , u16 * ) ;
__inline static int pci_read_config_word(struct pci_dev const *dev , int where ,
                                         u16 *val )
{
  int tmp ;
  {
  {
  tmp = pci_bus_read_config_word(dev->bus, dev->devfn, where, val);
  }
  return (tmp);
}
}
extern int pcie_capability_read_word(struct pci_dev * , int , u16 * ) ;
__inline static int pci_pcie_cap(struct pci_dev *dev )
{
  {
  return ((int )dev->pcie_cap);
}
}
__inline static bool pci_is_pcie(struct pci_dev *dev )
{
  int tmp ;
  {
  {
  tmp = pci_pcie_cap(dev);
  }
  return (tmp != 0);
}
}
__inline static u16 pci_vpd_lrdt_size(u8 const *lrdt )
{
  {
  return ((int )((u16 )*(lrdt + 1UL)) + ((int )((u16 )*(lrdt + 2UL)) << 8U));
}
}
__inline static u8 pci_vpd_info_field_size(u8 const *info_field )
{
  {
  return ((u8 )*(info_field + 2UL));
}
}
extern int pci_vpd_find_tag(u8 const * , unsigned int , unsigned int , u8 ) ;
extern int pci_vpd_find_info_keyword(u8 const * , unsigned int , unsigned int ,
                                     char const * ) ;
__inline static u64 t4_read_reg64(struct adapter *adap , u32 reg_addr )
{
  unsigned long tmp ;
  {
  {
  tmp = readq((void const volatile *)adap->regs + (unsigned long )reg_addr);
  }
  return ((u64 )tmp);
}
}
__inline static void t4_write_reg64(struct adapter *adap , u32 reg_addr , u64 val )
{
  {
  {
  writeq((unsigned long )val, (void volatile *)adap->regs + (unsigned long )reg_addr);
  }
  return;
}
}
void t4_read_indirect(struct adapter *adap , unsigned int addr_reg , unsigned int data_reg ,
                      u32 *vals , unsigned int nregs , unsigned int start_idx ) ;
int t4_filter_field_shift(struct adapter const *adap , int filter_sel ) ;
int t4_iq_free(struct adapter *adap , unsigned int mbox , unsigned int pf , unsigned int vf ,
               unsigned int iqtype , unsigned int iqid , unsigned int fl0id , unsigned int fl1id ) ;
int t4_eth_eq_free(struct adapter *adap , unsigned int mbox , unsigned int pf , unsigned int vf ,
                   unsigned int eqid ) ;
int t4_ctrl_eq_free(struct adapter *adap , unsigned int mbox , unsigned int pf , unsigned int vf ,
                    unsigned int eqid ) ;
int t4_ofld_eq_free(struct adapter *adap , unsigned int mbox , unsigned int pf , unsigned int vf ,
                    unsigned int eqid ) ;
static int t4_fw_upgrade(struct adapter *adap , unsigned int mbox , u8 const *fw_data ,
                         unsigned int size , int force ) ;
static int t4_wait_op_done_val(struct adapter *adapter , int reg , u32 mask , int polarity ,
                               int attempts , int delay , u32 *valp )
{
  u32 val ;
  u32 tmp ;
  {
  ldv_45193:
  {
  tmp = t4_read_reg(adapter, (u32 )reg);
  val = tmp;
  }
  if (((val & mask) != 0U) == polarity) {
    if ((unsigned long )valp != (unsigned long )((u32 *)0U)) {
      *valp = val;
    } else {
    }
    return (0);
  } else {
  }
  attempts = attempts - 1;
  if (attempts == 0) {
    return (-11);
  } else {
  }
  if (delay != 0) {
    {
    __udelay((unsigned long )delay);
    }
  } else {
  }
  goto ldv_45193;
}
}
__inline static int t4_wait_op_done(struct adapter *adapter , int reg , u32 mask ,
                                    int polarity , int attempts , int delay )
{
  int tmp ;
  {
  {
  tmp = t4_wait_op_done_val(adapter, reg, mask, polarity, attempts, delay, (u32 *)0U);
  }
  return (tmp);
}
}
void t4_set_reg_field(struct adapter *adapter , unsigned int addr , u32 mask , u32 val )
{
  u32 v ;
  u32 tmp ;
  {
  {
  tmp = t4_read_reg(adapter, addr);
  v = tmp & ~ mask;
  t4_write_reg(adapter, addr, v | val);
  t4_read_reg(adapter, addr);
  }
  return;
}
}
void t4_read_indirect(struct adapter *adap , unsigned int addr_reg , unsigned int data_reg ,
                      u32 *vals , unsigned int nregs , unsigned int start_idx )
{
  u32 *tmp ;
  unsigned int tmp___0 ;
  {
  goto ldv_45218;
  ldv_45217:
  {
  t4_write_reg(adap, addr_reg, start_idx);
  tmp = vals;
  vals = vals + 1;
  *tmp = t4_read_reg(adap, data_reg);
  start_idx = start_idx + 1U;
  }
  ldv_45218:
  tmp___0 = nregs;
  nregs = nregs - 1U;
  if (tmp___0 != 0U) {
    goto ldv_45217;
  } else {
  }
  return;
}
}
void t4_write_indirect(struct adapter *adap , unsigned int addr_reg , unsigned int data_reg ,
                       u32 const *vals , unsigned int nregs , unsigned int start_idx )
{
  unsigned int tmp ;
  u32 const *tmp___0 ;
  unsigned int tmp___1 ;
  {
  goto ldv_45229;
  ldv_45228:
  {
  tmp = start_idx;
  start_idx = start_idx + 1U;
  t4_write_reg(adap, addr_reg, tmp);
  tmp___0 = vals;
  vals = vals + 1;
  t4_write_reg(adap, data_reg, *tmp___0);
  }
  ldv_45229:
  tmp___1 = nregs;
  nregs = nregs - 1U;
  if (tmp___1 != 0U) {
    goto ldv_45228;
  } else {
  }
  return;
}
}
static void get_mbox_rpl(struct adapter *adap , __be64 *rpl , int nflit , u32 mbox_addr )
{
  __be64 *tmp ;
  u64 tmp___0 ;
  __u64 tmp___1 ;
  {
  goto ldv_45238;
  ldv_45237:
  {
  tmp = rpl;
  rpl = rpl + 1;
  tmp___0 = t4_read_reg64(adap, mbox_addr);
  tmp___1 = __fswab64(tmp___0);
  *tmp = tmp___1;
  nflit = nflit - 1;
  mbox_addr = mbox_addr + 8U;
  }
  ldv_45238: ;
  if (nflit != 0) {
    goto ldv_45237;
  } else {
  }
  return;
}
}
static void fw_asrt(struct adapter *adap , u32 mbox_addr )
{
  struct fw_debug_cmd asrt ;
  __u32 tmp ;
  __u32 tmp___0 ;
  __u32 tmp___1 ;
  {
  {
  get_mbox_rpl(adap, (__be64 *)(& asrt), 6, mbox_addr);
  tmp = __fswab32(asrt.u.assert.y);
  tmp___0 = __fswab32(asrt.u.assert.x);
  tmp___1 = __fswab32(asrt.u.assert.line);
  dev_alert((struct device const *)adap->pdev_dev, "FW assertion at %.16s:%u, val0 %#x, val1 %#x\n",
            (u8 *)(& asrt.u.assert.filename_0_7), tmp___1, tmp___0, tmp);
  }
  return;
}
}
static void dump_mbox(struct adapter *adap , int mbox , u32 data_reg )
{
  u64 tmp ;
  u64 tmp___0 ;
  u64 tmp___1 ;
  u64 tmp___2 ;
  u64 tmp___3 ;
  u64 tmp___4 ;
  u64 tmp___5 ;
  u64 tmp___6 ;
  {
  {
  tmp = t4_read_reg64(adap, data_reg + 56U);
  tmp___0 = t4_read_reg64(adap, data_reg + 48U);
  tmp___1 = t4_read_reg64(adap, data_reg + 40U);
  tmp___2 = t4_read_reg64(adap, data_reg + 32U);
  tmp___3 = t4_read_reg64(adap, data_reg + 24U);
  tmp___4 = t4_read_reg64(adap, data_reg + 16U);
  tmp___5 = t4_read_reg64(adap, data_reg + 8U);
  tmp___6 = t4_read_reg64(adap, data_reg);
  dev_err((struct device const *)adap->pdev_dev, "mbox %d: %llx %llx %llx %llx %llx %llx %llx %llx\n",
          mbox, tmp___6, tmp___5, tmp___4, tmp___3, tmp___2, tmp___1, tmp___0, tmp);
  }
  return;
}
}
int t4_wr_mbox_meat(struct adapter *adap , int mbox , void const *cmd , int size ,
                    void *rpl , bool sleep_ok )
{
  int delay[10U] ;
  u32 v ;
  u64 res ;
  int i ;
  int ms ;
  int delay_idx ;
  __be64 const *p ;
  u32 data_reg ;
  u32 ctl_reg ;
  u32 tmp ;
  u32 tmp___0 ;
  __be64 const *tmp___1 ;
  __u64 tmp___2 ;
  unsigned long __ms ;
  unsigned long tmp___3 ;
  {
  delay[0] = 1;
  delay[1] = 1;
  delay[2] = 3;
  delay[3] = 5;
  delay[4] = 10;
  delay[5] = 10;
  delay[6] = 20;
  delay[7] = 50;
  delay[8] = 100;
  delay[9] = 200;
  p = (__be64 const *)cmd;
  data_reg = (u32 )((mbox + 120) * 1024 + 576);
  ctl_reg = (u32 )((mbox + 120) * 1024 + 640);
  if ((size & 15) != 0 || size > 64) {
    return (-22);
  } else {
  }
  if ((adap->pdev)->error_state != 1U) {
    return (-5);
  } else {
  }
  {
  tmp = t4_read_reg(adap, ctl_reg);
  v = tmp & 3U;
  i = 0;
  }
  goto ldv_45268;
  ldv_45267:
  {
  tmp___0 = t4_read_reg(adap, ctl_reg);
  v = tmp___0 & 3U;
  i = i + 1;
  }
  ldv_45268: ;
  if (v == 0U && i <= 2) {
    goto ldv_45267;
  } else {
  }
  if (v != 2U) {
    return (v != 0U ? -16 : -110);
  } else {
  }
  i = 0;
  goto ldv_45271;
  ldv_45270:
  {
  tmp___1 = p;
  p = p + 1;
  tmp___2 = __fswab64(*tmp___1);
  t4_write_reg64(adap, data_reg + (u32 )i, tmp___2);
  i = i + 8;
  }
  ldv_45271: ;
  if (i < size) {
    goto ldv_45270;
  } else {
  }
  {
  t4_write_reg(adap, ctl_reg, 9U);
  t4_read_reg(adap, ctl_reg);
  delay_idx = 0;
  ms = delay[0];
  i = 0;
  }
  goto ldv_45281;
  ldv_45280: ;
  if ((int )sleep_ok) {
    ms = delay[delay_idx];
    if ((unsigned int )delay_idx <= 8U) {
      delay_idx = delay_idx + 1;
    } else {
    }
    {
    msleep((unsigned int )ms);
    }
  } else {
    __ms = (unsigned long )ms;
    goto ldv_45277;
    ldv_45276:
    {
    __const_udelay(4295000UL);
    }
    ldv_45277:
    tmp___3 = __ms;
    __ms = __ms - 1UL;
    if (tmp___3 != 0UL) {
      goto ldv_45276;
    } else {
    }
  }
  {
  v = t4_read_reg(adap, ctl_reg);
  }
  if ((v & 3U) == 2U) {
    if ((v & 8U) == 0U) {
      {
      t4_write_reg(adap, ctl_reg, 0U);
      }
      goto ldv_45279;
    } else {
    }
    {
    res = t4_read_reg64(adap, data_reg);
    }
    if (res >> 56ULL == 129ULL) {
      {
      fw_asrt(adap, data_reg);
      res = 1280ULL;
      }
    } else
    if ((unsigned long )rpl != (unsigned long )((void *)0)) {
      {
      get_mbox_rpl(adap, (__be64 *)rpl, size / 8, data_reg);
      }
    } else {
    }
    if ((((int )res >> 8) & 255) != 0) {
      {
      dump_mbox(adap, mbox, data_reg);
      }
    } else {
    }
    {
    t4_write_reg(adap, ctl_reg, 0U);
    }
    return (- (((int )res >> 8) & 255));
  } else {
  }
  ldv_45279:
  i = i + ms;
  ldv_45281: ;
  if (i <= 9999) {
    goto ldv_45280;
  } else {
  }
  {
  dump_mbox(adap, mbox, data_reg);
  dev_err((struct device const *)adap->pdev_dev, "command %#x in mailbox %d timed out\n",
          (int )*((u8 const *)cmd), mbox);
  }
  return (-110);
}
}
int t4_mc_read(struct adapter *adap , int idx , u32 addr , __be32 *data , u64 *ecc )
{
  int i ;
  u32 mc_bist_cmd ;
  u32 mc_bist_cmd_addr ;
  u32 mc_bist_cmd_len ;
  u32 mc_bist_status_rdata ;
  u32 mc_bist_data_pattern ;
  int tmp ;
  u32 tmp___0 ;
  __be32 *tmp___1 ;
  u32 tmp___2 ;
  __u32 tmp___3 ;
  {
  {
  tmp = is_t4(adap->params.chip);
  }
  if (tmp != 0) {
    mc_bist_cmd = 30208U;
    mc_bist_cmd_addr = 30212U;
    mc_bist_cmd_len = 30216U;
    mc_bist_status_rdata = 30344U;
    mc_bist_data_pattern = 30220U;
  } else {
    mc_bist_cmd = (u32 )(idx * 32768 + 267264);
    mc_bist_cmd_addr = (u32 )(idx * 32768 + 267268);
    mc_bist_cmd_len = (u32 )(idx * 32768 + 267272);
    mc_bist_status_rdata = (u32 )(idx * 32768 + 267400);
    mc_bist_data_pattern = (u32 )(idx * 32768 + 267276);
  }
  {
  tmp___0 = t4_read_reg(adap, mc_bist_cmd);
  }
  if ((int )tmp___0 < 0) {
    return (-16);
  } else {
  }
  {
  t4_write_reg(adap, mc_bist_cmd_addr, addr & 4294967232U);
  t4_write_reg(adap, mc_bist_cmd_len, 64U);
  t4_write_reg(adap, mc_bist_data_pattern, 12U);
  t4_write_reg(adap, mc_bist_cmd, 2147483905U);
  i = t4_wait_op_done(adap, (int )mc_bist_cmd, 2147483648U, 0, 10, 1);
  }
  if (i != 0) {
    return (i);
  } else {
  }
  i = 15;
  goto ldv_45297;
  ldv_45296:
  {
  tmp___1 = data;
  data = data + 1;
  tmp___2 = t4_read_reg(adap, mc_bist_status_rdata + (u32 )(i * 4));
  tmp___3 = __fswab32(tmp___2);
  *tmp___1 = tmp___3;
  i = i - 1;
  }
  ldv_45297: ;
  if (i >= 0) {
    goto ldv_45296;
  } else {
  }
  if ((unsigned long )ecc != (unsigned long )((u64 *)0ULL)) {
    {
    *ecc = t4_read_reg64(adap, mc_bist_status_rdata + 64U);
    }
  } else {
  }
  return (0);
}
}
int t4_edc_read(struct adapter *adap , int idx , u32 addr , __be32 *data , u64 *ecc )
{
  int i ;
  u32 edc_bist_cmd ;
  u32 edc_bist_cmd_addr ;
  u32 edc_bist_cmd_len ;
  u32 edc_bist_cmd_data_pattern ;
  u32 edc_bist_status_rdata ;
  int tmp ;
  u32 tmp___0 ;
  __be32 *tmp___1 ;
  u32 tmp___2 ;
  __u32 tmp___3 ;
  {
  {
  tmp = is_t4(adap->params.chip);
  }
  if (tmp != 0) {
    edc_bist_cmd = (u32 )(idx * 128 + 30980);
    edc_bist_cmd_addr = (u32 )(idx * 128 + 30984);
    edc_bist_cmd_len = (u32 )(idx * 128 + 30988);
    edc_bist_cmd_data_pattern = (u32 )(idx * 128 + 30992);
    edc_bist_status_rdata = (u32 )(idx * 128 + 31016);
  } else {
    edc_bist_cmd = (u32 )(idx * 2048 + 327684);
    edc_bist_cmd_addr = (u32 )(idx * 2048 + 327688);
    edc_bist_cmd_len = (u32 )(idx * 2048 + 327692);
    edc_bist_cmd_data_pattern = (u32 )(idx * 2048 + 327696);
    edc_bist_status_rdata = (u32 )(idx * 2048 + 327720);
  }
  {
  tmp___0 = t4_read_reg(adap, edc_bist_cmd);
  }
  if ((int )tmp___0 < 0) {
    return (-16);
  } else {
  }
  {
  t4_write_reg(adap, edc_bist_cmd_addr, addr & 4294967232U);
  t4_write_reg(adap, edc_bist_cmd_len, 64U);
  t4_write_reg(adap, edc_bist_cmd_data_pattern, 12U);
  t4_write_reg(adap, edc_bist_cmd, 2147483905U);
  i = t4_wait_op_done(adap, (int )edc_bist_cmd, 2147483648U, 0, 10, 1);
  }
  if (i != 0) {
    return (i);
  } else {
  }
  i = 15;
  goto ldv_45313;
  ldv_45312:
  {
  tmp___1 = data;
  data = data + 1;
  tmp___2 = t4_read_reg(adap, edc_bist_status_rdata + (u32 )(i * 4));
  tmp___3 = __fswab32(tmp___2);
  *tmp___1 = tmp___3;
  i = i - 1;
  }
  ldv_45313: ;
  if (i >= 0) {
    goto ldv_45312;
  } else {
  }
  if ((unsigned long )ecc != (unsigned long )((u64 *)0ULL)) {
    {
    *ecc = t4_read_reg64(adap, edc_bist_status_rdata + 64U);
    }
  } else {
  }
  return (0);
}
}
static int t4_mem_win_rw(struct adapter *adap , u32 addr , __be32 *data , int dir )
{
  int i ;
  u32 win_pf ;
  int tmp ;
  __be32 *tmp___0 ;
  __be32 *tmp___1 ;
  {
  {
  tmp = is_t4(adap->params.chip);
  win_pf = tmp == 0 ? adap->fn : 0U;
  t4_write_reg(adap, 12396U, (addr & 4294965248U) | win_pf);
  t4_read_reg(adap, 12396U);
  i = 0;
  }
  goto ldv_45324;
  ldv_45323: ;
  if (dir != 0) {
    {
    tmp___0 = data;
    data = data + 1;
    *tmp___0 = t4_read_reg(adap, (u32 )(i + 112640));
    }
  } else {
    {
    tmp___1 = data;
    data = data + 1;
    t4_write_reg(adap, (u32 )(i + 112640), *tmp___1);
    }
  }
  i = i + 4;
  ldv_45324: ;
  if (i <= 2047) {
    goto ldv_45323;
  } else {
  }
  return (0);
}
}
static int t4_memory_rw(struct adapter *adap , int mtype , u32 addr , u32 len , __be32 *buf ,
                        int dir )
{
  u32 pos ;
  u32 start ;
  u32 end ;
  u32 offset ;
  u32 memoffset ;
  u32 edc_size ;
  u32 mc_size ;
  int ret ;
  __be32 *data ;
  void *tmp ;
  u32 tmp___0 ;
  u32 tmp___1 ;
  u32 tmp___2 ;
  __be32 *tmp___3 ;
  __be32 *tmp___4 ;
  u32 tmp___5 ;
  {
  ret = 0;
  if ((addr & 3U) != 0U || (len & 3U) != 0U) {
    return (-22);
  } else {
  }
  {
  tmp = vmalloc(2048UL);
  data = (__be32 *)tmp;
  }
  if ((unsigned long )data == (unsigned long )((__be32 *)0U)) {
    return (-12);
  } else {
  }
  {
  tmp___0 = t4_read_reg(adap, 30656U);
  edc_size = tmp___0 & 4095U;
  }
  if (mtype != 3) {
    memoffset = ((u32 )mtype * edc_size) * 1048576U;
  } else {
    {
    tmp___1 = t4_read_reg(adap, 30664U);
    mc_size = tmp___1 & 4095U;
    memoffset = (edc_size * 2U + mc_size) * 1048576U;
    }
  }
  addr = addr + memoffset;
  start = addr & 4294965248U;
  end = ((addr + len) + 2047U) & 4294965248U;
  offset = (addr - start) / 4U;
  pos = start;
  goto ldv_45351;
  ldv_45350: ;
  if (dir == 0) {
    if (offset != 0U || len <= 2047U) {
      {
      ret = t4_mem_win_rw(adap, pos, data, 1);
      }
      if (ret != 0) {
        goto ldv_45343;
      } else {
      }
    } else {
    }
    goto ldv_45345;
    ldv_45344:
    tmp___2 = offset;
    offset = offset + 1U;
    tmp___3 = buf;
    buf = buf + 1;
    *(data + (unsigned long )tmp___2) = *tmp___3;
    len = len - 4U;
    ldv_45345: ;
    if (offset <= 511U && len != 0U) {
      goto ldv_45344;
    } else {
    }
  } else {
  }
  {
  ret = t4_mem_win_rw(adap, pos, data, dir);
  }
  if (ret != 0) {
    goto ldv_45343;
  } else {
  }
  if (dir != 0) {
    goto ldv_45348;
    ldv_45347:
    tmp___4 = buf;
    buf = buf + 1;
    tmp___5 = offset;
    offset = offset + 1U;
    *tmp___4 = *(data + (unsigned long )tmp___5);
    len = len - 4U;
    ldv_45348: ;
    if (offset <= 511U && len != 0U) {
      goto ldv_45347;
    } else {
    }
  } else {
  }
  pos = pos + 2048U;
  offset = 0U;
  ldv_45351: ;
  if (pos < end) {
    goto ldv_45350;
  } else {
  }
  ldv_45343:
  {
  vfree((void const *)data);
  }
  return (ret);
}
}
int t4_memory_write(struct adapter *adap , int mtype , u32 addr , u32 len , __be32 *buf )
{
  int tmp ;
  {
  {
  tmp = t4_memory_rw(adap, mtype, addr, len, buf, 0);
  }
  return (tmp);
}
}
int t4_seeprom_wp(struct adapter *adapter , bool enable )
{
  unsigned int v ;
  int ret ;
  ssize_t tmp ;
  {
  {
  v = (int )enable ? 12U : 0U;
  tmp = pci_write_vpd(adapter->pdev, 31740LL, 4UL, (void const *)(& v));
  ret = (int )tmp;
  }
  return (0 < ret ? 0 : ret);
}
}
int get_vpd_params(struct adapter *adapter , struct vpd_params *p )
{
  u32 cclk_param ;
  u32 cclk_val ;
  int i ;
  int ret ;
  int addr ;
  int ec ;
  int sn ;
  u8 *vpd ;
  u8 csum ;
  unsigned int vpdr_len ;
  unsigned int kw_offset ;
  unsigned int id_len ;
  void *tmp ;
  ssize_t tmp___0 ;
  ssize_t tmp___1 ;
  u16 tmp___2 ;
  u16 tmp___3 ;
  u8 tmp___4 ;
  int _min1 ;
  int _min2 ;
  {
  {
  tmp = vmalloc(1024UL);
  vpd = (u8 *)tmp;
  }
  if ((unsigned long )vpd == (unsigned long )((u8 *)0U)) {
    return (-12);
  } else {
  }
  {
  tmp___0 = pci_read_vpd(adapter->pdev, 1024LL, 4UL, (void *)vpd);
  ret = (int )tmp___0;
  }
  if (ret < 0) {
    goto out;
  } else {
  }
  {
  addr = (unsigned int )*vpd == 130U ? 1024 : 0;
  tmp___1 = pci_read_vpd(adapter->pdev, (loff_t )addr, 1024UL, (void *)vpd);
  ret = (int )tmp___1;
  }
  if (ret < 0) {
    goto out;
  } else {
  }
  if ((unsigned int )*vpd != 130U) {
    {
    dev_err((struct device const *)adapter->pdev_dev, "missing VPD ID string\n");
    ret = -22;
    }
    goto out;
  } else {
  }
  {
  tmp___2 = pci_vpd_lrdt_size((u8 const *)vpd);
  id_len = (unsigned int )tmp___2;
  }
  if (id_len > 16U) {
    id_len = 16U;
  } else {
  }
  {
  i = pci_vpd_find_tag((u8 const *)vpd, 0U, 1024U, 144);
  }
  if (i < 0) {
    {
    dev_err((struct device const *)adapter->pdev_dev, "missing VPD-R section\n");
    ret = -22;
    }
    goto out;
  } else {
  }
  {
  tmp___3 = pci_vpd_lrdt_size((u8 const *)vpd + (unsigned long )i);
  vpdr_len = (unsigned int )tmp___3;
  kw_offset = (unsigned int )(i + 3);
  }
  if (vpdr_len + kw_offset > 1024U) {
    {
    dev_err((struct device const *)adapter->pdev_dev, "bad VPD-R length %u\n", vpdr_len);
    ret = -22;
    }
    goto out;
  } else {
  }
  {
  i = pci_vpd_find_info_keyword((u8 const *)vpd, kw_offset, vpdr_len, "RV");
  }
  if (i < 0) {
    {
    dev_err((struct device const *)adapter->pdev_dev, "missing VPD keyword RV\n");
    ret = -22;
    }
    goto out;
  } else {
  }
  i = i + 3;
  csum = 0U;
  goto ldv_45383;
  ldv_45382:
  csum = (int )csum + (int )*(vpd + (unsigned long )i);
  i = i - 1;
  ldv_45383: ;
  if (i >= 0) {
    goto ldv_45382;
  } else {
  }
  if ((unsigned int )csum != 0U) {
    {
    dev_err((struct device const *)adapter->pdev_dev, "corrupted VPD EEPROM, actual csum %u\n",
            (int )csum);
    ret = -22;
    }
    goto out;
  } else {
  }
  {
  ec = pci_vpd_find_info_keyword((u8 const *)vpd, kw_offset, vpdr_len, "EC");
  }
  if (ec < 0) {
    {
    dev_err((struct device const *)adapter->pdev_dev, "missing VPD keyword EC\n");
    ret = -22;
    }
    goto out;
  } else {
  }
  {
  ec = ec + 3;
  sn = pci_vpd_find_info_keyword((u8 const *)vpd, kw_offset, vpdr_len, "SN");
  }
  if (sn < 0) {
    {
    dev_err((struct device const *)adapter->pdev_dev, "missing VPD keyword SN\n");
    ret = -22;
    }
    goto out;
  } else {
  }
  {
  sn = sn + 3;
  memcpy((void *)(& p->id), (void const *)vpd + 3U, (size_t )id_len);
  strim((char *)(& p->id));
  memcpy((void *)(& p->ec), (void const *)vpd + (unsigned long )ec, 16UL);
  strim((char *)(& p->ec));
  tmp___4 = pci_vpd_info_field_size((u8 const *)(vpd + ((unsigned long )sn + 0xfffffffffffffffdUL)));
  i = (int )tmp___4;
  _min1 = i;
  _min2 = 24;
  memcpy((void *)(& p->sn), (void const *)vpd + (unsigned long )sn, (size_t )(_min1 < _min2 ? _min1 : _min2));
  strim((char *)(& p->sn));
  cclk_param = 16777216U;
  ret = t4_query_params(adapter, adapter->mbox, 0U, 0U, 1U, (u32 const *)(& cclk_param),
                        & cclk_val);
  }
  out:
  {
  vfree((void const *)vpd);
  }
  if (ret != 0) {
    return (ret);
  } else {
  }
  p->cclk = cclk_val;
  return (0);
}
}
static int sf1_read(struct adapter *adapter , unsigned int byte_cnt , int cont , int lock ,
                    u32 *valp )
{
  int ret ;
  u32 tmp ;
  {
  if (byte_cnt - 1U > 3U) {
    return (-22);
  } else {
  }
  {
  tmp = t4_read_reg(adapter, 103420U);
  }
  if ((int )tmp < 0) {
    return (-16);
  } else {
  }
  {
  cont = cont != 0 ? 8 : 0;
  lock = lock != 0 ? 16 : 0;
  t4_write_reg(adapter, 103420U, (unsigned int )(lock | cont) | ((byte_cnt - 1U) << 1));
  ret = t4_wait_op_done(adapter, 103420, 2147483648U, 0, 10, 5);
  }
  if (ret == 0) {
    {
    *valp = t4_read_reg(adapter, 103416U);
    }
  } else {
  }
  return (ret);
}
}
static int sf1_write(struct adapter *adapter , unsigned int byte_cnt , int cont ,
                     int lock , u32 val )
{
  u32 tmp ;
  int tmp___0 ;
  {
  if (byte_cnt - 1U > 3U) {
    return (-22);
  } else {
  }
  {
  tmp = t4_read_reg(adapter, 103420U);
  }
  if ((int )tmp < 0) {
    return (-16);
  } else {
  }
  {
  cont = cont != 0 ? 8 : 0;
  lock = lock != 0 ? 16 : 0;
  t4_write_reg(adapter, 103416U, val);
  t4_write_reg(adapter, 103420U, ((unsigned int )(lock | cont) | ((byte_cnt - 1U) << 1)) | 1U);
  tmp___0 = t4_wait_op_done(adapter, 103420, 2147483648U, 0, 10, 5);
  }
  return (tmp___0);
}
}
static int flash_wait_op(struct adapter *adapter , int attempts , int delay )
{
  int ret ;
  u32 status ;
  {
  ldv_45420:
  {
  ret = sf1_write(adapter, 1U, 1, 1, 5U);
  }
  if (ret != 0) {
    return (ret);
  } else {
    {
    ret = sf1_read(adapter, 1U, 0, 1, & status);
    }
    if (ret != 0) {
      return (ret);
    } else {
    }
  }
  if ((status & 1U) == 0U) {
    return (0);
  } else {
  }
  attempts = attempts - 1;
  if (attempts == 0) {
    return (-11);
  } else {
  }
  if (delay != 0) {
    {
    msleep((unsigned int )delay);
    }
  } else {
  }
  goto ldv_45420;
}
}
static int t4_read_flash(struct adapter *adapter , unsigned int addr , unsigned int nwords ,
                         u32 *data , int byte_oriented )
{
  int ret ;
  __u32 tmp ;
  __u32 tmp___0 ;
  {
  if ((unsigned long )addr + (unsigned long )nwords * 4UL > (unsigned long )adapter->params.sf_size || (addr & 3U) != 0U) {
    return (-22);
  } else {
  }
  {
  tmp = __fswab32(addr);
  addr = tmp | 11U;
  ret = sf1_write(adapter, 4U, 1, 0, addr);
  }
  if (ret != 0) {
    return (ret);
  } else {
    {
    ret = sf1_read(adapter, 1U, 1, 0, data);
    }
    if (ret != 0) {
      return (ret);
    } else {
    }
  }
  goto ldv_45430;
  ldv_45429:
  {
  ret = sf1_read(adapter, 4U, nwords > 1U, nwords == 1U, data);
  }
  if (nwords == 1U) {
    {
    t4_write_reg(adapter, 103420U, 0U);
    }
  } else {
  }
  if (ret != 0) {
    return (ret);
  } else {
  }
  if (byte_oriented != 0) {
    {
    tmp___0 = __fswab32(*data);
    *data = tmp___0;
    }
  } else {
  }
  nwords = nwords - 1U;
  data = data + 1;
  ldv_45430: ;
  if (nwords != 0U) {
    goto ldv_45429;
  } else {
  }
  return (0);
}
}
static int t4_write_flash(struct adapter *adapter , unsigned int addr , unsigned int n ,
                          u8 const *data )
{
  int ret ;
  u32 buf[64U] ;
  unsigned int i ;
  unsigned int c ;
  unsigned int left ;
  unsigned int val ;
  unsigned int offset ;
  __u32 tmp ;
  unsigned int _min1 ;
  unsigned int _min2 ;
  u8 const *tmp___0 ;
  int tmp___1 ;
  {
  offset = addr & 255U;
  if (addr >= adapter->params.sf_size || offset + n > 256U) {
    return (-22);
  } else {
  }
  {
  tmp = __fswab32(addr);
  val = tmp | 2U;
  ret = sf1_write(adapter, 1U, 0, 1, 6U);
  }
  if (ret != 0) {
    goto unlock;
  } else {
    {
    ret = sf1_write(adapter, 4U, 1, 1, val);
    }
    if (ret != 0) {
      goto unlock;
    } else {
    }
  }
  left = n;
  goto ldv_45453;
  ldv_45452:
  _min1 = left;
  _min2 = 4U;
  c = _min1 < _min2 ? _min1 : _min2;
  val = 0U;
  i = 0U;
  goto ldv_45450;
  ldv_45449:
  tmp___0 = data;
  data = data + 1;
  val = (val << 8) + (unsigned int )*tmp___0;
  i = i + 1U;
  ldv_45450: ;
  if (i < c) {
    goto ldv_45449;
  } else {
  }
  {
  ret = sf1_write(adapter, c, c != left, 1, val);
  }
  if (ret != 0) {
    goto unlock;
  } else {
  }
  left = left - c;
  ldv_45453: ;
  if (left != 0U) {
    goto ldv_45452;
  } else {
  }
  {
  ret = flash_wait_op(adapter, 8, 1);
  }
  if (ret != 0) {
    goto unlock;
  } else {
  }
  {
  t4_write_reg(adapter, 103420U, 0U);
  ret = t4_read_flash(adapter, addr & 4294967040U, 64U, (u32 *)(& buf), 1);
  }
  if (ret != 0) {
    return (ret);
  } else {
  }
  {
  tmp___1 = memcmp((void const *)(data + - ((unsigned long )n)), (void const *)(& buf) + (unsigned long )offset,
                   (size_t )n);
  }
  if (tmp___1 != 0) {
    {
    dev_err((struct device const *)adapter->pdev_dev, "failed to correctly write the flash page at %#x\n",
            addr);
    }
    return (-5);
  } else {
  }
  return (0);
  unlock:
  {
  t4_write_reg(adapter, 103420U, 0U);
  }
  return (ret);
}
}
int t4_get_fw_version(struct adapter *adapter , u32 *vers )
{
  int tmp ;
  {
  {
  tmp = t4_read_flash(adapter, 524292U, 1U, vers, 0);
  }
  return (tmp);
}
}
int t4_get_tp_version(struct adapter *adapter , u32 *vers )
{
  int tmp ;
  {
  {
  tmp = t4_read_flash(adapter, 524296U, 1U, vers, 0);
  }
  return (tmp);
}
}
static int fw_compatible(struct fw_hdr const *hdr1 , struct fw_hdr const *hdr2 )
{
  {
  if ((int )((unsigned char )hdr1->chip) == (int )((unsigned char )hdr2->chip) && (unsigned int )hdr1->fw_ver == (unsigned int )hdr2->fw_ver) {
    return (1);
  } else {
  }
  if (((int )((unsigned char )hdr1->chip) == (int )((unsigned char )hdr2->chip) && *((unsigned int *)hdr1 + 3UL) == *((unsigned int *)hdr2 + 3UL)) && *((unsigned int *)hdr1 + 4UL) == *((unsigned int *)hdr2 + 4UL)) {
    return (1);
  } else {
  }
  return (0);
}
}
static int should_install_fs_fw(struct adapter *adap , int card_fw_usable , int k ,
                                int c )
{
  char const *reason ;
  {
  if (card_fw_usable == 0) {
    reason = "incompatible or unusable";
    goto install;
  } else {
  }
  if (k > c) {
    reason = "older than the version supported with this driver";
    goto install;
  } else {
  }
  return (0);
  install:
  {
  dev_err((struct device const *)adap->pdev_dev, "firmware on card (%u.%u.%u.%u) is %s, installing firmware %u.%u.%u.%u on card.\n",
          (int )((unsigned int )c >> 24), (c >> 16) & 255, (c >> 8) & 255, c & 255,
          reason, (int )((unsigned int )k >> 24), (k >> 16) & 255, (k >> 8) & 255,
          k & 255);
  }
  return (1);
}
}
int t4_prep_fw(struct adapter *adap , struct fw_info *fw_info , u8 const *fw_data ,
               unsigned int fw_size , struct fw_hdr *card_fw , enum dev_state state ,
               int *reset )
{
  int ret ;
  int card_fw_usable ;
  int fs_fw_usable ;
  struct fw_hdr const *fs_fw ;
  struct fw_hdr const *drv_fw ;
  int tmp ;
  int tmp___0 ;
  __u32 tmp___1 ;
  __u32 tmp___2 ;
  int tmp___3 ;
  uint32_t d ;
  uint32_t c ;
  uint32_t k ;
  __u32 tmp___4 ;
  __u32 tmp___5 ;
  __u32 tmp___6 ;
  __u32 tmp___7 ;
  __u32 tmp___8 ;
  {
  {
  drv_fw = (struct fw_hdr const *)(& fw_info->fw_hdr);
  tmp = t4_read_flash(adap, 524288U, 32U, (u32 *)card_fw, 1);
  ret = - tmp;
  }
  if (ret == 0) {
    {
    card_fw_usable = fw_compatible(drv_fw, (struct fw_hdr const *)card_fw);
    }
  } else {
    {
    dev_err((struct device const *)adap->pdev_dev, "Unable to read card\'s firmware header: %d\n",
            ret);
    card_fw_usable = 0;
    }
  }
  if ((unsigned long )fw_data != (unsigned long )((u8 const *)0U)) {
    {
    fs_fw = (struct fw_hdr const *)fw_data;
    fs_fw_usable = fw_compatible(drv_fw, fs_fw);
    }
  } else {
    fs_fw = (struct fw_hdr const *)0;
    fs_fw_usable = 0;
  }
  if ((card_fw_usable != 0 && card_fw->fw_ver == (__be32 )drv_fw->fw_ver) && (fs_fw_usable == 0 || (unsigned int )fs_fw->fw_ver == (unsigned int )drv_fw->fw_ver)) {
  } else
  if (fs_fw_usable != 0 && (unsigned int )state == 0U) {
    {
    tmp___1 = __fswab32(card_fw->fw_ver);
    tmp___2 = __fswab32(fs_fw->fw_ver);
    tmp___3 = should_install_fs_fw(adap, card_fw_usable, (int )tmp___2, (int )tmp___1);
    }
    if (tmp___3 != 0) {
      {
      tmp___0 = t4_fw_upgrade(adap, adap->mbox, fw_data, fw_size, 0);
      ret = - tmp___0;
      }
      if (ret != 0) {
        {
        dev_err((struct device const *)adap->pdev_dev, "failed to install firmware: %d\n",
                ret);
        }
        goto bye;
      } else {
      }
      {
      memcpy((void *)card_fw, (void const *)fs_fw, 128UL);
      card_fw_usable = 1;
      *reset = 0;
      }
    } else {
    }
  } else {
  }
  if (card_fw_usable == 0) {
    {
    tmp___4 = __fswab32(drv_fw->fw_ver);
    d = tmp___4;
    tmp___5 = __fswab32(card_fw->fw_ver);
    c = tmp___5;
    }
    if ((unsigned long )fs_fw != (unsigned long )((struct fw_hdr const *)0)) {
      {
      tmp___6 = __fswab32(fs_fw->fw_ver);
      k = tmp___6;
      }
    } else {
      k = 0U;
    }
    {
    dev_err((struct device const *)adap->pdev_dev, "Cannot find a usable firmware: chip state %d, driver compiled with %d.%d.%d.%d, card has %d.%d.%d.%d, filesystem has %d.%d.%d.%d\n",
            (unsigned int )state, d >> 24, (d >> 16) & 255U, (d >> 8) & 255U, d & 255U,
            c >> 24, (c >> 16) & 255U, (c >> 8) & 255U, c & 255U, k >> 24, (k >> 16) & 255U,
            (k >> 8) & 255U, k & 255U);
    ret = 22;
    }
    goto bye;
  } else {
  }
  {
  tmp___7 = __fswab32(card_fw->fw_ver);
  adap->params.fw_vers = tmp___7;
  tmp___8 = __fswab32(card_fw->tp_microcode_ver);
  adap->params.tp_vers = tmp___8;
  }
  bye: ;
  return (ret);
}
}
static int t4_flash_erase_sectors(struct adapter *adapter , int start , int end )
{
  int ret ;
  {
  ret = 0;
  goto ldv_45503;
  ldv_45502:
  {
  ret = sf1_write(adapter, 1U, 0, 1, 6U);
  }
  if (ret != 0) {
    {
    dev_err((struct device const *)adapter->pdev_dev, "erase of flash sector %d failed, error %d\n",
            start, ret);
    }
    goto ldv_45501;
  } else {
    {
    ret = sf1_write(adapter, 4U, 0, 1, (u32 )((start << 8) | 216));
    }
    if (ret != 0) {
      {
      dev_err((struct device const *)adapter->pdev_dev, "erase of flash sector %d failed, error %d\n",
              start, ret);
      }
      goto ldv_45501;
    } else {
      {
      ret = flash_wait_op(adapter, 14, 500);
      }
      if (ret != 0) {
        {
        dev_err((struct device const *)adapter->pdev_dev, "erase of flash sector %d failed, error %d\n",
                start, ret);
        }
        goto ldv_45501;
      } else {
      }
    }
  }
  start = start + 1;
  ldv_45503: ;
  if (start <= end) {
    goto ldv_45502;
  } else {
  }
  ldv_45501:
  {
  t4_write_reg(adapter, 103420U, 0U);
  }
  return (ret);
}
}
unsigned int t4_flash_cfg_addr(struct adapter *adapter )
{
  {
  if (adapter->params.sf_size == 1048576U) {
    return (983040U);
  } else {
    return (2031616U);
  }
}
}
int t4_load_fw(struct adapter *adap , u8 const *fw_data , unsigned int size )
{
  u32 csum ;
  int ret ;
  int addr ;
  unsigned int i ;
  u8 first_page[256U] ;
  __be32 const *p ;
  struct fw_hdr const *hdr ;
  unsigned int sf_sec_size ;
  unsigned int fw_img_start ;
  unsigned int fw_start_sec ;
  __u16 tmp ;
  __u32 tmp___0 ;
  {
  p = (__be32 const *)fw_data;
  hdr = (struct fw_hdr const *)fw_data;
  sf_sec_size = adap->params.sf_size / adap->params.sf_nsec;
  fw_img_start = adap->params.sf_fw_start;
  fw_start_sec = fw_img_start / sf_sec_size;
  if (size == 0U) {
    {
    dev_err((struct device const *)adap->pdev_dev, "FW image has no data\n");
    }
    return (-22);
  } else {
  }
  if ((size & 511U) != 0U) {
    {
    dev_err((struct device const *)adap->pdev_dev, "FW image size not multiple of 512 bytes\n");
    }
    return (-22);
  } else {
  }
  {
  tmp = __fswab16((int )hdr->len512);
  }
  if ((unsigned int )((int )tmp * 512) != size) {
    {
    dev_err((struct device const *)adap->pdev_dev, "FW image size differs from size in FW header\n");
    }
    return (-22);
  } else {
  }
  if (size > 524288U) {
    {
    dev_err((struct device const *)adap->pdev_dev, "FW image too large, max is %u bytes\n",
            524288);
    }
    return (-27);
  } else {
  }
  csum = 0U;
  i = 0U;
  goto ldv_45523;
  ldv_45522:
  {
  tmp___0 = __fswab32(*(p + (unsigned long )i));
  csum = csum + tmp___0;
  i = i + 1U;
  }
  ldv_45523: ;
  if (i < size / 4U) {
    goto ldv_45522;
  } else {
  }
  if (csum != 4294967295U) {
    {
    dev_err((struct device const *)adap->pdev_dev, "corrupted firmware image, checksum %#x\n",
            csum);
    }
    return (-22);
  } else {
  }
  {
  i = ((size + sf_sec_size) - 1U) / sf_sec_size;
  ret = t4_flash_erase_sectors(adap, (int )fw_start_sec, (int )((fw_start_sec + i) - 1U));
  }
  if (ret != 0) {
    goto out;
  } else {
  }
  {
  memcpy((void *)(& first_page), (void const *)fw_data, 256UL);
  ((struct fw_hdr *)(& first_page))->fw_ver = 4294967295U;
  ret = t4_write_flash(adap, fw_img_start, 256U, (u8 const *)(& first_page));
  }
  if (ret != 0) {
    goto out;
  } else {
  }
  addr = (int )fw_img_start;
  size = size - 256U;
  goto ldv_45527;
  ldv_45526:
  {
  addr = addr + 256;
  fw_data = fw_data + 256UL;
  ret = t4_write_flash(adap, (unsigned int )addr, 256U, fw_data);
  }
  if (ret != 0) {
    goto out;
  } else {
  }
  size = size - 256U;
  ldv_45527: ;
  if (size != 0U) {
    goto ldv_45526;
  } else {
  }
  {
  ret = t4_write_flash(adap, fw_img_start + 4U, 4U, (u8 const *)(& hdr->fw_ver));
  }
  out: ;
  if (ret != 0) {
    {
    dev_err((struct device const *)adap->pdev_dev, "firmware download failed, error %d\n",
            ret);
    }
  } else {
  }
  return (ret);
}
}
int t4_link_start(struct adapter *adap , unsigned int mbox , unsigned int port , struct link_config *lc )
{
  struct fw_port_cmd c ;
  unsigned int fc ;
  unsigned int mdi ;
  __u32 tmp ;
  __u32 tmp___0 ;
  __u32 tmp___1 ;
  __u32 tmp___2 ;
  int tmp___3 ;
  {
  fc = 0U;
  mdi = 512U;
  lc->link_ok = 0U;
  if ((int )lc->requested_fc & 1) {
    fc = fc | 64U;
  } else {
  }
  if (((int )lc->requested_fc & 2) != 0) {
    fc = fc | 128U;
  } else {
  }
  {
  memset((void *)(& c), 0, 32UL);
  tmp = __fswab32(port | 462422016U);
  c.op_to_portid = tmp;
  c.action_to_len16 = 33554688U;
  }
  if (((int )lc->supported & 256) == 0) {
    {
    tmp___0 = __fswab32(((unsigned int )lc->supported & 267U) | fc);
    c.u.l1cfg.rcap = tmp___0;
    lc->fc = (unsigned int )lc->requested_fc & 3U;
    }
  } else
  if ((unsigned int )lc->autoneg == 0U) {
    {
    tmp___1 = __fswab32(((unsigned int )lc->requested_speed | fc) | mdi);
    c.u.l1cfg.rcap = tmp___1;
    lc->fc = (unsigned int )lc->requested_fc & 3U;
    }
  } else {
    {
    tmp___2 = __fswab32(((unsigned int )lc->advertising | fc) | mdi);
    c.u.l1cfg.rcap = tmp___2;
    }
  }
  {
  tmp___3 = t4_wr_mbox(adap, (int )mbox, (void const *)(& c), 32, (void *)0);
  }
  return (tmp___3);
}
}
int t4_restart_aneg(struct adapter *adap , unsigned int mbox , unsigned int port )
{
  struct fw_port_cmd c ;
  __u32 tmp ;
  int tmp___0 ;
  {
  {
  memset((void *)(& c), 0, 32UL);
  tmp = __fswab32(port | 462422016U);
  c.op_to_portid = tmp;
  c.action_to_len16 = 33554688U;
  c.u.l1cfg.rcap = 65536U;
  tmp___0 = t4_wr_mbox(adap, (int )mbox, (void const *)(& c), 32, (void *)0);
  }
  return (tmp___0);
}
}
static int t4_handle_intr_status(struct adapter *adapter , unsigned int reg , struct intr_info const *acts )
{
  int fatal ;
  unsigned int mask ;
  unsigned int status ;
  u32 tmp ;
  int tmp___0 ;
  {
  {
  fatal = 0;
  mask = 0U;
  tmp = t4_read_reg(adapter, reg);
  status = tmp;
  }
  goto ldv_45563;
  ldv_45562: ;
  if ((status & (unsigned int )acts->mask) == 0U) {
    goto ldv_45560;
  } else {
  }
  if ((unsigned int )((unsigned short )acts->fatal) != 0U) {
    {
    fatal = fatal + 1;
    dev_alert((struct device const *)adapter->pdev_dev, "%s (0x%x)\n", acts->msg,
              status & (unsigned int )acts->mask);
    }
  } else
  if ((unsigned long )acts->msg != (unsigned long )((char const * )0)) {
    {
    tmp___0 = __printk_ratelimit("t4_handle_intr_status");
    }
    if (tmp___0 != 0) {
      {
      dev_warn((struct device const *)adapter->pdev_dev, "%s (0x%x)\n", acts->msg,
               status & (unsigned int )acts->mask);
      }
    } else {
    }
  } else {
  }
  if ((unsigned long )acts->int_handler != (unsigned long )((void (*)(struct adapter * ))0)) {
    {
    (*(acts->int_handler))(adapter);
    }
  } else {
  }
  mask = mask | (unsigned int )acts->mask;
  ldv_45560:
  acts = acts + 1;
  ldv_45563: ;
  if ((unsigned int )acts->mask != 0U) {
    goto ldv_45562;
  } else {
  }
  status = status & mask;
  if (status != 0U) {
    {
    t4_write_reg(adapter, reg, status);
    }
  } else {
  }
  return (fatal);
}
}
static void pcie_intr_handler(struct adapter *adapter )
{
  struct intr_info sysbus_intr_info[6U] ;
  struct intr_info pcie_port_intr_info[10U] ;
  struct intr_info pcie_intr_info[31U] ;
  struct intr_info t5_pcie_intr_info[31U] ;
  int fat ;
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  {
  {
  sysbus_intr_info[0].mask = 2147483648U;
  sysbus_intr_info[0].msg = "RXNP array parity error";
  sysbus_intr_info[0].stat_idx = -1;
  sysbus_intr_info[0].fatal = 1U;
  sysbus_intr_info[0].int_handler = 0;
  sysbus_intr_info[1].mask = 536870912U;
  sysbus_intr_info[1].msg = "RXPC array parity error";
  sysbus_intr_info[1].stat_idx = -1;
  sysbus_intr_info[1].fatal = 1U;
  sysbus_intr_info[1].int_handler = 0;
  sysbus_intr_info[2].mask = 134217728U;
  sysbus_intr_info[2].msg = "RXCIF array parity error";
  sysbus_intr_info[2].stat_idx = -1;
  sysbus_intr_info[2].fatal = 1U;
  sysbus_intr_info[2].int_handler = 0;
  sysbus_intr_info[3].mask = 67108864U;
  sysbus_intr_info[3].msg = "Rx completions control array parity error";
  sysbus_intr_info[3].stat_idx = -1;
  sysbus_intr_info[3].fatal = 1U;
  sysbus_intr_info[3].int_handler = 0;
  sysbus_intr_info[4].mask = 8388608U;
  sysbus_intr_info[4].msg = "RXFT array parity error";
  sysbus_intr_info[4].stat_idx = -1;
  sysbus_intr_info[4].fatal = 1U;
  sysbus_intr_info[4].int_handler = 0;
  sysbus_intr_info[5].mask = 0U;
  sysbus_intr_info[5].msg = 0;
  sysbus_intr_info[5].stat_idx = (short)0;
  sysbus_intr_info[5].fatal = (unsigned short)0;
  sysbus_intr_info[5].int_handler = 0;
  pcie_port_intr_info[0].mask = 1073741824U;
  pcie_port_intr_info[0].msg = "TXPC array parity error";
  pcie_port_intr_info[0].stat_idx = -1;
  pcie_port_intr_info[0].fatal = 1U;
  pcie_port_intr_info[0].int_handler = 0;
  pcie_port_intr_info[1].mask = 536870912U;
  pcie_port_intr_info[1].msg = "TXNP array parity error";
  pcie_port_intr_info[1].stat_idx = -1;
  pcie_port_intr_info[1].fatal = 1U;
  pcie_port_intr_info[1].int_handler = 0;
  pcie_port_intr_info[2].mask = 268435456U;
  pcie_port_intr_info[2].msg = "TXFT array parity error";
  pcie_port_intr_info[2].stat_idx = -1;
  pcie_port_intr_info[2].fatal = 1U;
  pcie_port_intr_info[2].int_handler = 0;
  pcie_port_intr_info[3].mask = 134217728U;
  pcie_port_intr_info[3].msg = "TXCA array parity error";
  pcie_port_intr_info[3].stat_idx = -1;
  pcie_port_intr_info[3].fatal = 1U;
  pcie_port_intr_info[3].int_handler = 0;
  pcie_port_intr_info[4].mask = 67108864U;
  pcie_port_intr_info[4].msg = "TXCIF array parity error";
  pcie_port_intr_info[4].stat_idx = -1;
  pcie_port_intr_info[4].fatal = 1U;
  pcie_port_intr_info[4].int_handler = 0;
  pcie_port_intr_info[5].mask = 33554432U;
  pcie_port_intr_info[5].msg = "RXCA array parity error";
  pcie_port_intr_info[5].stat_idx = -1;
  pcie_port_intr_info[5].fatal = 1U;
  pcie_port_intr_info[5].int_handler = 0;
  pcie_port_intr_info[6].mask = 2097152U;
  pcie_port_intr_info[6].msg = "outbound request TLP discarded";
  pcie_port_intr_info[6].stat_idx = -1;
  pcie_port_intr_info[6].fatal = 1U;
  pcie_port_intr_info[6].int_handler = 0;
  pcie_port_intr_info[7].mask = 262144U;
  pcie_port_intr_info[7].msg = "Rx data parity error";
  pcie_port_intr_info[7].stat_idx = -1;
  pcie_port_intr_info[7].fatal = 1U;
  pcie_port_intr_info[7].int_handler = 0;
  pcie_port_intr_info[8].mask = 65536U;
  pcie_port_intr_info[8].msg = "Tx uncorrectable data error";
  pcie_port_intr_info[8].stat_idx = -1;
  pcie_port_intr_info[8].fatal = 1U;
  pcie_port_intr_info[8].int_handler = 0;
  pcie_port_intr_info[9].mask = 0U;
  pcie_port_intr_info[9].msg = 0;
  pcie_port_intr_info[9].stat_idx = (short)0;
  pcie_port_intr_info[9].fatal = (unsigned short)0;
  pcie_port_intr_info[9].int_handler = 0;
  pcie_intr_info[0].mask = 1U;
  pcie_intr_info[0].msg = "MSI AddrL parity error";
  pcie_intr_info[0].stat_idx = -1;
  pcie_intr_info[0].fatal = 1U;
  pcie_intr_info[0].int_handler = 0;
  pcie_intr_info[1].mask = 2U;
  pcie_intr_info[1].msg = "MSI AddrH parity error";
  pcie_intr_info[1].stat_idx = -1;
  pcie_intr_info[1].fatal = 1U;
  pcie_intr_info[1].int_handler = 0;
  pcie_intr_info[2].mask = 4U;
  pcie_intr_info[2].msg = "MSI data parity error";
  pcie_intr_info[2].stat_idx = -1;
  pcie_intr_info[2].fatal = 1U;
  pcie_intr_info[2].int_handler = 0;
  pcie_intr_info[3].mask = 8U;
  pcie_intr_info[3].msg = "MSI-X AddrL parity error";
  pcie_intr_info[3].stat_idx = -1;
  pcie_intr_info[3].fatal = 1U;
  pcie_intr_info[3].int_handler = 0;
  pcie_intr_info[4].mask = 16U;
  pcie_intr_info[4].msg = "MSI-X AddrH parity error";
  pcie_intr_info[4].stat_idx = -1;
  pcie_intr_info[4].fatal = 1U;
  pcie_intr_info[4].int_handler = 0;
  pcie_intr_info[5].mask = 32U;
  pcie_intr_info[5].msg = "MSI-X data parity error";
  pcie_intr_info[5].stat_idx = -1;
  pcie_intr_info[5].fatal = 1U;
  pcie_intr_info[5].int_handler = 0;
  pcie_intr_info[6].mask = 64U;
  pcie_intr_info[6].msg = "MSI-X DI parity error";
  pcie_intr_info[6].stat_idx = -1;
  pcie_intr_info[6].fatal = 1U;
  pcie_intr_info[6].int_handler = 0;
  pcie_intr_info[7].mask = 128U;
  pcie_intr_info[7].msg = "PCI PIO completion FIFO parity error";
  pcie_intr_info[7].stat_idx = -1;
  pcie_intr_info[7].fatal = 1U;
  pcie_intr_info[7].int_handler = 0;
  pcie_intr_info[8].mask = 256U;
  pcie_intr_info[8].msg = "PCI PIO request FIFO parity error";
  pcie_intr_info[8].stat_idx = -1;
  pcie_intr_info[8].fatal = 1U;
  pcie_intr_info[8].int_handler = 0;
  pcie_intr_info[9].mask = 512U;
  pcie_intr_info[9].msg = "PCI PCI target tag FIFO parity error";
  pcie_intr_info[9].stat_idx = -1;
  pcie_intr_info[9].fatal = 1U;
  pcie_intr_info[9].int_handler = 0;
  pcie_intr_info[10].mask = 1024U;
  pcie_intr_info[10].msg = "PCI CMD channel count parity error";
  pcie_intr_info[10].stat_idx = -1;
  pcie_intr_info[10].fatal = 1U;
  pcie_intr_info[10].int_handler = 0;
  pcie_intr_info[11].mask = 2048U;
  pcie_intr_info[11].msg = "PCI CMD channel request parity error";
  pcie_intr_info[11].stat_idx = -1;
  pcie_intr_info[11].fatal = 1U;
  pcie_intr_info[11].int_handler = 0;
  pcie_intr_info[12].mask = 4096U;
  pcie_intr_info[12].msg = "PCI CMD channel response parity error";
  pcie_intr_info[12].stat_idx = -1;
  pcie_intr_info[12].fatal = 1U;
  pcie_intr_info[12].int_handler = 0;
  pcie_intr_info[13].mask = 8192U;
  pcie_intr_info[13].msg = "PCI DMA channel count parity error";
  pcie_intr_info[13].stat_idx = -1;
  pcie_intr_info[13].fatal = 1U;
  pcie_intr_info[13].int_handler = 0;
  pcie_intr_info[14].mask = 16384U;
  pcie_intr_info[14].msg = "PCI DMA channel request parity error";
  pcie_intr_info[14].stat_idx = -1;
  pcie_intr_info[14].fatal = 1U;
  pcie_intr_info[14].int_handler = 0;
  pcie_intr_info[15].mask = 32768U;
  pcie_intr_info[15].msg = "PCI DMA channel response parity error";
  pcie_intr_info[15].stat_idx = -1;
  pcie_intr_info[15].fatal = 1U;
  pcie_intr_info[15].int_handler = 0;
  pcie_intr_info[16].mask = 65536U;
  pcie_intr_info[16].msg = "PCI HMA channel count parity error";
  pcie_intr_info[16].stat_idx = -1;
  pcie_intr_info[16].fatal = 1U;
  pcie_intr_info[16].int_handler = 0;
  pcie_intr_info[17].mask = 131072U;
  pcie_intr_info[17].msg = "PCI HMA channel request parity error";
  pcie_intr_info[17].stat_idx = -1;
  pcie_intr_info[17].fatal = 1U;
  pcie_intr_info[17].int_handler = 0;
  pcie_intr_info[18].mask = 262144U;
  pcie_intr_info[18].msg = "PCI HMA channel response parity error";
  pcie_intr_info[18].stat_idx = -1;
  pcie_intr_info[18].fatal = 1U;
  pcie_intr_info[18].int_handler = 0;
  pcie_intr_info[19].mask = 524288U;
  pcie_intr_info[19].msg = "PCI config snoop FIFO parity error";
  pcie_intr_info[19].stat_idx = -1;
  pcie_intr_info[19].fatal = 1U;
  pcie_intr_info[19].int_handler = 0;
  pcie_intr_info[20].mask = 1048576U;
  pcie_intr_info[20].msg = "PCI FID parity error";
  pcie_intr_info[20].stat_idx = -1;
  pcie_intr_info[20].fatal = 1U;
  pcie_intr_info[20].int_handler = 0;
  pcie_intr_info[21].mask = 2097152U;
  pcie_intr_info[21].msg = "PCI INTx clear parity error";
  pcie_intr_info[21].stat_idx = -1;
  pcie_intr_info[21].fatal = 1U;
  pcie_intr_info[21].int_handler = 0;
  pcie_intr_info[22].mask = 4194304U;
  pcie_intr_info[22].msg = "PCI MA tag parity error";
  pcie_intr_info[22].stat_idx = -1;
  pcie_intr_info[22].fatal = 1U;
  pcie_intr_info[22].int_handler = 0;
  pcie_intr_info[23].mask = 8388608U;
  pcie_intr_info[23].msg = "PCI PIO tag parity error";
  pcie_intr_info[23].stat_idx = -1;
  pcie_intr_info[23].fatal = 1U;
  pcie_intr_info[23].int_handler = 0;
  pcie_intr_info[24].mask = 16777216U;
  pcie_intr_info[24].msg = "PCI Rx completion parity error";
  pcie_intr_info[24].stat_idx = -1;
  pcie_intr_info[24].fatal = 1U;
  pcie_intr_info[24].int_handler = 0;
  pcie_intr_info[25].mask = 33554432U;
  pcie_intr_info[25].msg = "PCI Rx write parity error";
  pcie_intr_info[25].stat_idx = -1;
  pcie_intr_info[25].fatal = 1U;
  pcie_intr_info[25].int_handler = 0;
  pcie_intr_info[26].mask = 67108864U;
  pcie_intr_info[26].msg = "PCI replay buffer parity error";
  pcie_intr_info[26].stat_idx = -1;
  pcie_intr_info[26].fatal = 1U;
  pcie_intr_info[26].int_handler = 0;
  pcie_intr_info[27].mask = 134217728U;
  pcie_intr_info[27].msg = "PCI core secondary fault";
  pcie_intr_info[27].stat_idx = -1;
  pcie_intr_info[27].fatal = 1U;
  pcie_intr_info[27].int_handler = 0;
  pcie_intr_info[28].mask = 268435456U;
  pcie_intr_info[28].msg = "PCI core primary fault";
  pcie_intr_info[28].stat_idx = -1;
  pcie_intr_info[28].fatal = 1U;
  pcie_intr_info[28].int_handler = 0;
  pcie_intr_info[29].mask = 536870912U;
  pcie_intr_info[29].msg = "PCI unexpected split completion error";
  pcie_intr_info[29].stat_idx = -1;
  pcie_intr_info[29].fatal = 0U;
  pcie_intr_info[29].int_handler = 0;
  pcie_intr_info[30].mask = 0U;
  pcie_intr_info[30].msg = 0;
  pcie_intr_info[30].stat_idx = (short)0;
  pcie_intr_info[30].fatal = (unsigned short)0;
  pcie_intr_info[30].int_handler = 0;
  t5_pcie_intr_info[0].mask = 1U;
  t5_pcie_intr_info[0].msg = "Master Response Read Queue parity error";
  t5_pcie_intr_info[0].stat_idx = -1;
  t5_pcie_intr_info[0].fatal = 1U;
  t5_pcie_intr_info[0].int_handler = 0;
  t5_pcie_intr_info[1].mask = 2U;
  t5_pcie_intr_info[1].msg = "Master Timeout FIFO parity error";
  t5_pcie_intr_info[1].stat_idx = -1;
  t5_pcie_intr_info[1].fatal = 1U;
  t5_pcie_intr_info[1].int_handler = 0;
  t5_pcie_intr_info[2].mask = 4U;
  t5_pcie_intr_info[2].msg = "MSI-X STI SRAM parity error";
  t5_pcie_intr_info[2].stat_idx = -1;
  t5_pcie_intr_info[2].fatal = 1U;
  t5_pcie_intr_info[2].int_handler = 0;
  t5_pcie_intr_info[3].mask = 8U;
  t5_pcie_intr_info[3].msg = "MSI-X AddrL parity error";
  t5_pcie_intr_info[3].stat_idx = -1;
  t5_pcie_intr_info[3].fatal = 1U;
  t5_pcie_intr_info[3].int_handler = 0;
  t5_pcie_intr_info[4].mask = 16U;
  t5_pcie_intr_info[4].msg = "MSI-X AddrH parity error";
  t5_pcie_intr_info[4].stat_idx = -1;
  t5_pcie_intr_info[4].fatal = 1U;
  t5_pcie_intr_info[4].int_handler = 0;
  t5_pcie_intr_info[5].mask = 32U;
  t5_pcie_intr_info[5].msg = "MSI-X data parity error";
  t5_pcie_intr_info[5].stat_idx = -1;
  t5_pcie_intr_info[5].fatal = 1U;
  t5_pcie_intr_info[5].int_handler = 0;
  t5_pcie_intr_info[6].mask = 64U;
  t5_pcie_intr_info[6].msg = "MSI-X DI parity error";
  t5_pcie_intr_info[6].stat_idx = -1;
  t5_pcie_intr_info[6].fatal = 1U;
  t5_pcie_intr_info[6].int_handler = 0;
  t5_pcie_intr_info[7].mask = 128U;
  t5_pcie_intr_info[7].msg = "PCI PIO completion Group FIFO parity error";
  t5_pcie_intr_info[7].stat_idx = -1;
  t5_pcie_intr_info[7].fatal = 1U;
  t5_pcie_intr_info[7].int_handler = 0;
  t5_pcie_intr_info[8].mask = 256U;
  t5_pcie_intr_info[8].msg = "PCI PIO request Group FIFO parity error";
  t5_pcie_intr_info[8].stat_idx = -1;
  t5_pcie_intr_info[8].fatal = 1U;
  t5_pcie_intr_info[8].int_handler = 0;
  t5_pcie_intr_info[9].mask = 512U;
  t5_pcie_intr_info[9].msg = "PCI PCI target tag FIFO parity error";
  t5_pcie_intr_info[9].stat_idx = -1;
  t5_pcie_intr_info[9].fatal = 1U;
  t5_pcie_intr_info[9].int_handler = 0;
  t5_pcie_intr_info[10].mask = 1024U;
  t5_pcie_intr_info[10].msg = "PCI master tag queue parity error";
  t5_pcie_intr_info[10].stat_idx = -1;
  t5_pcie_intr_info[10].fatal = 1U;
  t5_pcie_intr_info[10].int_handler = 0;
  t5_pcie_intr_info[11].mask = 2048U;
  t5_pcie_intr_info[11].msg = "PCI CMD channel request parity error";
  t5_pcie_intr_info[11].stat_idx = -1;
  t5_pcie_intr_info[11].fatal = 1U;
  t5_pcie_intr_info[11].int_handler = 0;
  t5_pcie_intr_info[12].mask = 4096U;
  t5_pcie_intr_info[12].msg = "PCI CMD channel response parity error";
  t5_pcie_intr_info[12].stat_idx = -1;
  t5_pcie_intr_info[12].fatal = 1U;
  t5_pcie_intr_info[12].int_handler = 0;
  t5_pcie_intr_info[13].mask = 8192U;
  t5_pcie_intr_info[13].msg = "PCI DMA channel write request parity error";
  t5_pcie_intr_info[13].stat_idx = -1;
  t5_pcie_intr_info[13].fatal = 1U;
  t5_pcie_intr_info[13].int_handler = 0;
  t5_pcie_intr_info[14].mask = 16384U;
  t5_pcie_intr_info[14].msg = "PCI DMA channel request parity error";
  t5_pcie_intr_info[14].stat_idx = -1;
  t5_pcie_intr_info[14].fatal = 1U;
  t5_pcie_intr_info[14].int_handler = 0;
  t5_pcie_intr_info[15].mask = 32768U;
  t5_pcie_intr_info[15].msg = "PCI DMA channel response parity error";
  t5_pcie_intr_info[15].stat_idx = -1;
  t5_pcie_intr_info[15].fatal = 1U;
  t5_pcie_intr_info[15].int_handler = 0;
  t5_pcie_intr_info[16].mask = 65536U;
  t5_pcie_intr_info[16].msg = "PCI HMA channel count parity error";
  t5_pcie_intr_info[16].stat_idx = -1;
  t5_pcie_intr_info[16].fatal = 1U;
  t5_pcie_intr_info[16].int_handler = 0;
  t5_pcie_intr_info[17].mask = 131072U;
  t5_pcie_intr_info[17].msg = "PCI HMA channel request parity error";
  t5_pcie_intr_info[17].stat_idx = -1;
  t5_pcie_intr_info[17].fatal = 1U;
  t5_pcie_intr_info[17].int_handler = 0;
  t5_pcie_intr_info[18].mask = 262144U;
  t5_pcie_intr_info[18].msg = "PCI HMA channel response parity error";
  t5_pcie_intr_info[18].stat_idx = -1;
  t5_pcie_intr_info[18].fatal = 1U;
  t5_pcie_intr_info[18].int_handler = 0;
  t5_pcie_intr_info[19].mask = 524288U;
  t5_pcie_intr_info[19].msg = "PCI config snoop FIFO parity error";
  t5_pcie_intr_info[19].stat_idx = -1;
  t5_pcie_intr_info[19].fatal = 1U;
  t5_pcie_intr_info[19].int_handler = 0;
  t5_pcie_intr_info[20].mask = 1048576U;
  t5_pcie_intr_info[20].msg = "PCI FID parity error";
  t5_pcie_intr_info[20].stat_idx = -1;
  t5_pcie_intr_info[20].fatal = 1U;
  t5_pcie_intr_info[20].int_handler = 0;
  t5_pcie_intr_info[21].mask = 2097152U;
  t5_pcie_intr_info[21].msg = "PCI INTx clear parity error";
  t5_pcie_intr_info[21].stat_idx = -1;
  t5_pcie_intr_info[21].fatal = 1U;
  t5_pcie_intr_info[21].int_handler = 0;
  t5_pcie_intr_info[22].mask = 4194304U;
  t5_pcie_intr_info[22].msg = "PCI MA group FIFO parity error";
  t5_pcie_intr_info[22].stat_idx = -1;
  t5_pcie_intr_info[22].fatal = 1U;
  t5_pcie_intr_info[22].int_handler = 0;
  t5_pcie_intr_info[23].mask = 8388608U;
  t5_pcie_intr_info[23].msg = "PCI PIO tag parity error";
  t5_pcie_intr_info[23].stat_idx = -1;
  t5_pcie_intr_info[23].fatal = 1U;
  t5_pcie_intr_info[23].int_handler = 0;
  t5_pcie_intr_info[24].mask = 16777216U;
  t5_pcie_intr_info[24].msg = "PCI IP Rx header group parity error";
  t5_pcie_intr_info[24].stat_idx = -1;
  t5_pcie_intr_info[24].fatal = 1U;
  t5_pcie_intr_info[24].int_handler = 0;
  t5_pcie_intr_info[25].mask = 33554432U;
  t5_pcie_intr_info[25].msg = "PCI IP Rx data group parity error";
  t5_pcie_intr_info[25].stat_idx = -1;
  t5_pcie_intr_info[25].fatal = 1U;
  t5_pcie_intr_info[25].int_handler = 0;
  t5_pcie_intr_info[26].mask = 67108864U;
  t5_pcie_intr_info[26].msg = "PCI IP replay buffer parity error";
  t5_pcie_intr_info[26].stat_idx = -1;
  t5_pcie_intr_info[26].fatal = 1U;
  t5_pcie_intr_info[26].int_handler = 0;
  t5_pcie_intr_info[27].mask = 134217728U;
  t5_pcie_intr_info[27].msg = "PCI IP SOT buffer parity error";
  t5_pcie_intr_info[27].stat_idx = -1;
  t5_pcie_intr_info[27].fatal = 1U;
  t5_pcie_intr_info[27].int_handler = 0;
  t5_pcie_intr_info[28].mask = 268435456U;
  t5_pcie_intr_info[28].msg = "PCI TRGT1 group FIFOs parity error";
  t5_pcie_intr_info[28].stat_idx = -1;
  t5_pcie_intr_info[28].fatal = 1U;
  t5_pcie_intr_info[28].int_handler = 0;
  t5_pcie_intr_info[29].mask = 536870912U;
  t5_pcie_intr_info[29].msg = "Outbound read error";
  t5_pcie_intr_info[29].stat_idx = -1;
  t5_pcie_intr_info[29].fatal = 0U;
  t5_pcie_intr_info[29].int_handler = 0;
  t5_pcie_intr_info[30].mask = 0U;
  t5_pcie_intr_info[30].msg = 0;
  t5_pcie_intr_info[30].stat_idx = (short)0;
  t5_pcie_intr_info[30].fatal = (unsigned short)0;
  t5_pcie_intr_info[30].int_handler = 0;
  tmp = t4_handle_intr_status(adapter, 22792U, (struct intr_info const *)(& sysbus_intr_info));
  tmp___0 = t4_handle_intr_status(adapter, 22948U, (struct intr_info const *)(& pcie_port_intr_info));
  tmp___1 = is_t4(adapter->params.chip);
  tmp___2 = t4_handle_intr_status(adapter, 12292U, tmp___1 != 0 ? (struct intr_info const *)(& pcie_intr_info) : (struct intr_info const *)(& t5_pcie_intr_info));
  fat = (tmp + tmp___0) + tmp___2;
  }
  if (fat != 0) {
    {
    t4_fatal_err(adapter);
    }
  } else {
  }
  return;
}
}
static void tp_intr_handler(struct adapter *adapter )
{
  struct intr_info tp_intr_info[3U] ;
  int tmp ;
  {
  {
  tp_intr_info[0].mask = 1073741823U;
  tp_intr_info[0].msg = "TP parity error";
  tp_intr_info[0].stat_idx = -1;
  tp_intr_info[0].fatal = 1U;
  tp_intr_info[0].int_handler = 0;
  tp_intr_info[1].mask = 1073741824U;
  tp_intr_info[1].msg = "TP out of Tx pages";
  tp_intr_info[1].stat_idx = -1;
  tp_intr_info[1].fatal = 1U;
  tp_intr_info[1].int_handler = 0;
  tp_intr_info[2].mask = 0U;
  tp_intr_info[2].msg = 0;
  tp_intr_info[2].stat_idx = (short)0;
  tp_intr_info[2].fatal = (unsigned short)0;
  tp_intr_info[2].int_handler = 0;
  tmp = t4_handle_intr_status(adapter, 32372U, (struct intr_info const *)(& tp_intr_info));
  }
  if (tmp != 0) {
    {
    t4_fatal_err(adapter);
    }
  } else {
  }
  return;
}
}
static void sge_intr_handler(struct adapter *adapter )
{
  u64 v ;
  struct intr_info sge_intr_info[16U] ;
  u32 tmp ;
  u32 tmp___0 ;
  int tmp___1 ;
  {
  {
  sge_intr_info[0].mask = 4194304U;
  sge_intr_info[0].msg = "SGE received CPL exceeding IQE size";
  sge_intr_info[0].stat_idx = -1;
  sge_intr_info[0].fatal = 1U;
  sge_intr_info[0].int_handler = 0;
  sge_intr_info[1].mask = 2097152U;
  sge_intr_info[1].msg = "SGE GTS CIDX increment too large";
  sge_intr_info[1].stat_idx = -1;
  sge_intr_info[1].fatal = 0U;
  sge_intr_info[1].int_handler = 0;
  sge_intr_info[2].mask = 524288U;
  sge_intr_info[2].msg = "SGE received 0-length CPL";
  sge_intr_info[2].stat_idx = -1;
  sge_intr_info[2].fatal = 0U;
  sge_intr_info[2].int_handler = 0;
  sge_intr_info[3].mask = 128U;
  sge_intr_info[3].msg = (char const *)0;
  sge_intr_info[3].stat_idx = -1;
  sge_intr_info[3].fatal = 0U;
  sge_intr_info[3].int_handler = & t4_db_full;
  sge_intr_info[4].mask = 256U;
  sge_intr_info[4].msg = (char const *)0;
  sge_intr_info[4].stat_idx = -1;
  sge_intr_info[4].fatal = 0U;
  sge_intr_info[4].int_handler = & t4_db_full;
  sge_intr_info[5].mask = 262144U;
  sge_intr_info[5].msg = (char const *)0;
  sge_intr_info[5].stat_idx = -1;
  sge_intr_info[5].fatal = 0U;
  sge_intr_info[5].int_handler = & t4_db_dropped;
  sge_intr_info[6].mask = 196608U;
  sge_intr_info[6].msg = "SGE IQID > 1023 received CPL for FL";
  sge_intr_info[6].stat_idx = -1;
  sge_intr_info[6].fatal = 0U;
  sge_intr_info[6].int_handler = 0;
  sge_intr_info[7].mask = 32768U;
  sge_intr_info[7].msg = "SGE DBP 3 pidx increment too large";
  sge_intr_info[7].stat_idx = -1;
  sge_intr_info[7].fatal = 0U;
  sge_intr_info[7].int_handler = 0;
  sge_intr_info[8].mask = 16384U;
  sge_intr_info[8].msg = "SGE DBP 2 pidx increment too large";
  sge_intr_info[8].stat_idx = -1;
  sge_intr_info[8].fatal = 0U;
  sge_intr_info[8].int_handler = 0;
  sge_intr_info[9].mask = 8192U;
  sge_intr_info[9].msg = "SGE DBP 1 pidx increment too large";
  sge_intr_info[9].stat_idx = -1;
  sge_intr_info[9].fatal = 0U;
  sge_intr_info[9].int_handler = 0;
  sge_intr_info[10].mask = 4096U;
  sge_intr_info[10].msg = "SGE DBP 0 pidx increment too large";
  sge_intr_info[10].stat_idx = -1;
  sge_intr_info[10].fatal = 0U;
  sge_intr_info[10].int_handler = 0;
  sge_intr_info[11].mask = 1024U;
  sge_intr_info[11].msg = "SGE too many priority ingress contexts";
  sge_intr_info[11].stat_idx = -1;
  sge_intr_info[11].fatal = 0U;
  sge_intr_info[11].int_handler = 0;
  sge_intr_info[12].mask = 512U;
  sge_intr_info[12].msg = "SGE too many priority egress contexts";
  sge_intr_info[12].stat_idx = -1;
  sge_intr_info[12].fatal = 0U;
  sge_intr_info[12].int_handler = 0;
  sge_intr_info[13].mask = 32U;
  sge_intr_info[13].msg = "SGE illegal ingress QID";
  sge_intr_info[13].stat_idx = -1;
  sge_intr_info[13].fatal = 0U;
  sge_intr_info[13].int_handler = 0;
  sge_intr_info[14].mask = 16U;
  sge_intr_info[14].msg = "SGE illegal egress QID";
  sge_intr_info[14].stat_idx = -1;
  sge_intr_info[14].fatal = 0U;
  sge_intr_info[14].int_handler = 0;
  sge_intr_info[15].mask = 0U;
  sge_intr_info[15].msg = 0;
  sge_intr_info[15].stat_idx = (short)0;
  sge_intr_info[15].fatal = (unsigned short)0;
  sge_intr_info[15].int_handler = 0;
  tmp = t4_read_reg(adapter, 4132U);
  tmp___0 = t4_read_reg(adapter, 4144U);
  v = (unsigned long long )tmp | ((unsigned long long )tmp___0 << 32);
  }
  if (v != 0ULL) {
    {
    dev_alert((struct device const *)adapter->pdev_dev, "SGE parity error (%#llx)\n",
              v);
    t4_write_reg(adapter, 4132U, (u32 )v);
    t4_write_reg(adapter, 4144U, (u32 )(v >> 32));
    }
  } else {
  }
  {
  tmp___1 = t4_handle_intr_status(adapter, 4156U, (struct intr_info const *)(& sge_intr_info));
  }
  if (tmp___1 != 0 || v != 0ULL) {
    {
    t4_fatal_err(adapter);
    }
  } else {
  }
  return;
}
}
static void cim_intr_handler(struct adapter *adapter )
{
  struct intr_info cim_intr_info[8U] ;
  struct intr_info cim_upintr_info[29U] ;
  int fat ;
  int tmp ;
  int tmp___0 ;
  {
  {
  cim_intr_info[0].mask = 2U;
  cim_intr_info[0].msg = "CIM control register prefetch drop";
  cim_intr_info[0].stat_idx = -1;
  cim_intr_info[0].fatal = 1U;
  cim_intr_info[0].int_handler = 0;
  cim_intr_info[1].mask = 2016U;
  cim_intr_info[1].msg = "CIM OBQ parity error";
  cim_intr_info[1].stat_idx = -1;
  cim_intr_info[1].fatal = 1U;
  cim_intr_info[1].int_handler = 0;
  cim_intr_info[2].mask = 129024U;
  cim_intr_info[2].msg = "CIM IBQ parity error";
  cim_intr_info[2].stat_idx = -1;
  cim_intr_info[2].fatal = 1U;
  cim_intr_info[2].int_handler = 0;
  cim_intr_info[3].mask = 131072U;
  cim_intr_info[3].msg = "CIM mailbox uP parity error";
  cim_intr_info[3].stat_idx = -1;
  cim_intr_info[3].fatal = 1U;
  cim_intr_info[3].int_handler = 0;
  cim_intr_info[4].mask = 262144U;
  cim_intr_info[4].msg = "CIM mailbox host parity error";
  cim_intr_info[4].stat_idx = -1;
  cim_intr_info[4].fatal = 1U;
  cim_intr_info[4].int_handler = 0;
  cim_intr_info[5].mask = 524288U;
  cim_intr_info[5].msg = "CIM TIEQ outgoing parity error";
  cim_intr_info[5].stat_idx = -1;
  cim_intr_info[5].fatal = 1U;
  cim_intr_info[5].int_handler = 0;
  cim_intr_info[6].mask = 1048576U;
  cim_intr_info[6].msg = "CIM TIEQ incoming parity error";
  cim_intr_info[6].stat_idx = -1;
  cim_intr_info[6].fatal = 1U;
  cim_intr_info[6].int_handler = 0;
  cim_intr_info[7].mask = 0U;
  cim_intr_info[7].msg = 0;
  cim_intr_info[7].stat_idx = (short)0;
  cim_intr_info[7].fatal = (unsigned short)0;
  cim_intr_info[7].int_handler = 0;
  cim_upintr_info[0].mask = 1U;
  cim_upintr_info[0].msg = "CIM reserved space access";
  cim_upintr_info[0].stat_idx = -1;
  cim_upintr_info[0].fatal = 1U;
  cim_upintr_info[0].int_handler = 0;
  cim_upintr_info[1].mask = 2U;
  cim_upintr_info[1].msg = "CIM illegal transaction";
  cim_upintr_info[1].stat_idx = -1;
  cim_upintr_info[1].fatal = 1U;
  cim_upintr_info[1].int_handler = 0;
  cim_upintr_info[2].mask = 4U;
  cim_upintr_info[2].msg = "CIM illegal write";
  cim_upintr_info[2].stat_idx = -1;
  cim_upintr_info[2].fatal = 1U;
  cim_upintr_info[2].int_handler = 0;
  cim_upintr_info[3].mask = 8U;
  cim_upintr_info[3].msg = "CIM illegal read";
  cim_upintr_info[3].stat_idx = -1;
  cim_upintr_info[3].fatal = 1U;
  cim_upintr_info[3].int_handler = 0;
  cim_upintr_info[4].mask = 16U;
  cim_upintr_info[4].msg = "CIM illegal read BE";
  cim_upintr_info[4].stat_idx = -1;
  cim_upintr_info[4].fatal = 1U;
  cim_upintr_info[4].int_handler = 0;
  cim_upintr_info[5].mask = 32U;
  cim_upintr_info[5].msg = "CIM illegal write BE";
  cim_upintr_info[5].stat_idx = -1;
  cim_upintr_info[5].fatal = 1U;
  cim_upintr_info[5].int_handler = 0;
  cim_upintr_info[6].mask = 64U;
  cim_upintr_info[6].msg = "CIM single read from boot space";
  cim_upintr_info[6].stat_idx = -1;
  cim_upintr_info[6].fatal = 1U;
  cim_upintr_info[6].int_handler = 0;
  cim_upintr_info[7].mask = 128U;
  cim_upintr_info[7].msg = "CIM single write to boot space";
  cim_upintr_info[7].stat_idx = -1;
  cim_upintr_info[7].fatal = 1U;
  cim_upintr_info[7].int_handler = 0;
  cim_upintr_info[8].mask = 512U;
  cim_upintr_info[8].msg = "CIM block write to boot space";
  cim_upintr_info[8].stat_idx = -1;
  cim_upintr_info[8].fatal = 1U;
  cim_upintr_info[8].int_handler = 0;
  cim_upintr_info[9].mask = 1024U;
  cim_upintr_info[9].msg = "CIM single read from flash space";
  cim_upintr_info[9].stat_idx = -1;
  cim_upintr_info[9].fatal = 1U;
  cim_upintr_info[9].int_handler = 0;
  cim_upintr_info[10].mask = 2048U;
  cim_upintr_info[10].msg = "CIM single write to flash space";
  cim_upintr_info[10].stat_idx = -1;
  cim_upintr_info[10].fatal = 1U;
  cim_upintr_info[10].int_handler = 0;
  cim_upintr_info[11].mask = 8192U;
  cim_upintr_info[11].msg = "CIM block write to flash space";
  cim_upintr_info[11].stat_idx = -1;
  cim_upintr_info[11].fatal = 1U;
  cim_upintr_info[11].int_handler = 0;
  cim_upintr_info[12].mask = 16384U;
  cim_upintr_info[12].msg = "CIM single EEPROM read";
  cim_upintr_info[12].stat_idx = -1;
  cim_upintr_info[12].fatal = 1U;
  cim_upintr_info[12].int_handler = 0;
  cim_upintr_info[13].mask = 32768U;
  cim_upintr_info[13].msg = "CIM single EEPROM write";
  cim_upintr_info[13].stat_idx = -1;
  cim_upintr_info[13].fatal = 1U;
  cim_upintr_info[13].int_handler = 0;
  cim_upintr_info[14].mask = 65536U;
  cim_upintr_info[14].msg = "CIM block EEPROM read";
  cim_upintr_info[14].stat_idx = -1;
  cim_upintr_info[14].fatal = 1U;
  cim_upintr_info[14].int_handler = 0;
  cim_upintr_info[15].mask = 131072U;
  cim_upintr_info[15].msg = "CIM block EEPROM write";
  cim_upintr_info[15].stat_idx = -1;
  cim_upintr_info[15].fatal = 1U;
  cim_upintr_info[15].int_handler = 0;
  cim_upintr_info[16].mask = 262144U;
  cim_upintr_info[16].msg = "CIM single read from CTL space";
  cim_upintr_info[16].stat_idx = -1;
  cim_upintr_info[16].fatal = 1U;
  cim_upintr_info[16].int_handler = 0;
  cim_upintr_info[17].mask = 524288U;
  cim_upintr_info[17].msg = "CIM single write to CTL space";
  cim_upintr_info[17].stat_idx = -1;
  cim_upintr_info[17].fatal = 1U;
  cim_upintr_info[17].int_handler = 0;
  cim_upintr_info[18].mask = 1048576U;
  cim_upintr_info[18].msg = "CIM block read from CTL space";
  cim_upintr_info[18].stat_idx = -1;
  cim_upintr_info[18].fatal = 1U;
  cim_upintr_info[18].int_handler = 0;
  cim_upintr_info[19].mask = 2097152U;
  cim_upintr_info[19].msg = "CIM block write to CTL space";
  cim_upintr_info[19].stat_idx = -1;
  cim_upintr_info[19].fatal = 1U;
  cim_upintr_info[19].int_handler = 0;
  cim_upintr_info[20].mask = 4194304U;
  cim_upintr_info[20].msg = "CIM single read from PL space";
  cim_upintr_info[20].stat_idx = -1;
  cim_upintr_info[20].fatal = 1U;
  cim_upintr_info[20].int_handler = 0;
  cim_upintr_info[21].mask = 8388608U;
  cim_upintr_info[21].msg = "CIM single write to PL space";
  cim_upintr_info[21].stat_idx = -1;
  cim_upintr_info[21].fatal = 1U;
  cim_upintr_info[21].int_handler = 0;
  cim_upintr_info[22].mask = 16777216U;
  cim_upintr_info[22].msg = "CIM block read from PL space";
  cim_upintr_info[22].stat_idx = -1;
  cim_upintr_info[22].fatal = 1U;
  cim_upintr_info[22].int_handler = 0;
  cim_upintr_info[23].mask = 33554432U;
  cim_upintr_info[23].msg = "CIM block write to PL space";
  cim_upintr_info[23].stat_idx = -1;
  cim_upintr_info[23].fatal = 1U;
  cim_upintr_info[23].int_handler = 0;
  cim_upintr_info[24].mask = 67108864U;
  cim_upintr_info[24].msg = "CIM request FIFO overwrite";
  cim_upintr_info[24].stat_idx = -1;
  cim_upintr_info[24].fatal = 1U;
  cim_upintr_info[24].int_handler = 0;
  cim_upintr_info[25].mask = 134217728U;
  cim_upintr_info[25].msg = "CIM response FIFO overwrite";
  cim_upintr_info[25].stat_idx = -1;
  cim_upintr_info[25].fatal = 1U;
  cim_upintr_info[25].int_handler = 0;
  cim_upintr_info[26].mask = 268435456U;
  cim_upintr_info[26].msg = "CIM PIF timeout";
  cim_upintr_info[26].stat_idx = -1;
  cim_upintr_info[26].fatal = 1U;
  cim_upintr_info[26].int_handler = 0;
  cim_upintr_info[27].mask = 536870912U;
  cim_upintr_info[27].msg = "CIM PIF MA timeout";
  cim_upintr_info[27].stat_idx = -1;
  cim_upintr_info[27].fatal = 1U;
  cim_upintr_info[27].int_handler = 0;
  cim_upintr_info[28].mask = 0U;
  cim_upintr_info[28].msg = 0;
  cim_upintr_info[28].stat_idx = (short)0;
  cim_upintr_info[28].fatal = (unsigned short)0;
  cim_upintr_info[28].int_handler = 0;
  tmp = t4_handle_intr_status(adapter, 31532U, (struct intr_info const *)(& cim_intr_info));
  tmp___0 = t4_handle_intr_status(adapter, 31540U, (struct intr_info const *)(& cim_upintr_info));
  fat = tmp + tmp___0;
  }
  if (fat != 0) {
    {
    t4_fatal_err(adapter);
    }
  } else {
  }
  return;
}
}
static void ulprx_intr_handler(struct adapter *adapter )
{
  struct intr_info ulprx_intr_info[3U] ;
  int tmp ;
  {
  {
  ulprx_intr_info[0].mask = 25165824U;
  ulprx_intr_info[0].msg = "ULPRX context error";
  ulprx_intr_info[0].stat_idx = -1;
  ulprx_intr_info[0].fatal = 1U;
  ulprx_intr_info[0].int_handler = 0;
  ulprx_intr_info[1].mask = 8388607U;
  ulprx_intr_info[1].msg = "ULPRX parity error";
  ulprx_intr_info[1].stat_idx = -1;
  ulprx_intr_info[1].fatal = 1U;
  ulprx_intr_info[1].int_handler = 0;
  ulprx_intr_info[2].mask = 0U;
  ulprx_intr_info[2].msg = 0;
  ulprx_intr_info[2].stat_idx = (short)0;
  ulprx_intr_info[2].fatal = (unsigned short)0;
  ulprx_intr_info[2].int_handler = 0;
  tmp = t4_handle_intr_status(adapter, 102744U, (struct intr_info const *)(& ulprx_intr_info));
  }
  if (tmp != 0) {
    {
    t4_fatal_err(adapter);
    }
  } else {
  }
  return;
}
}
static void ulptx_intr_handler(struct adapter *adapter )
{
  struct intr_info ulptx_intr_info[6U] ;
  int tmp ;
  {
  {
  ulptx_intr_info[0].mask = 2147483648U;
  ulptx_intr_info[0].msg = "ULPTX channel 3 PBL out of bounds";
  ulptx_intr_info[0].stat_idx = -1;
  ulptx_intr_info[0].fatal = 0U;
  ulptx_intr_info[0].int_handler = 0;
  ulptx_intr_info[1].mask = 1073741824U;
  ulptx_intr_info[1].msg = "ULPTX channel 2 PBL out of bounds";
  ulptx_intr_info[1].stat_idx = -1;
  ulptx_intr_info[1].fatal = 0U;
  ulptx_intr_info[1].int_handler = 0;
  ulptx_intr_info[2].mask = 536870912U;
  ulptx_intr_info[2].msg = "ULPTX channel 1 PBL out of bounds";
  ulptx_intr_info[2].stat_idx = -1;
  ulptx_intr_info[2].fatal = 0U;
  ulptx_intr_info[2].int_handler = 0;
  ulptx_intr_info[3].mask = 268435456U;
  ulptx_intr_info[3].msg = "ULPTX channel 0 PBL out of bounds";
  ulptx_intr_info[3].stat_idx = -1;
  ulptx_intr_info[3].fatal = 0U;
  ulptx_intr_info[3].int_handler = 0;
  ulptx_intr_info[4].mask = 268435455U;
  ulptx_intr_info[4].msg = "ULPTX parity error";
  ulptx_intr_info[4].stat_idx = -1;
  ulptx_intr_info[4].fatal = 1U;
  ulptx_intr_info[4].int_handler = 0;
  ulptx_intr_info[5].mask = 0U;
  ulptx_intr_info[5].msg = 0;
  ulptx_intr_info[5].stat_idx = (short)0;
  ulptx_intr_info[5].fatal = (unsigned short)0;
  ulptx_intr_info[5].int_handler = 0;
  tmp = t4_handle_intr_status(adapter, 36300U, (struct intr_info const *)(& ulptx_intr_info));
  }
  if (tmp != 0) {
    {
    t4_fatal_err(adapter);
    }
  } else {
  }
  return;
}
}
static void pmtx_intr_handler(struct adapter *adapter )
{
  struct intr_info pmtx_intr_info[10U] ;
  int tmp ;
  {
  {
  pmtx_intr_info[0].mask = 2147483648U;
  pmtx_intr_info[0].msg = "PMTX channel 0 pcmd too large";
  pmtx_intr_info[0].stat_idx = -1;
  pmtx_intr_info[0].fatal = 1U;
  pmtx_intr_info[0].int_handler = 0;
  pmtx_intr_info[1].mask = 1073741824U;
  pmtx_intr_info[1].msg = "PMTX channel 1 pcmd too large";
  pmtx_intr_info[1].stat_idx = -1;
  pmtx_intr_info[1].fatal = 1U;
  pmtx_intr_info[1].int_handler = 0;
  pmtx_intr_info[2].mask = 536870912U;
  pmtx_intr_info[2].msg = "PMTX channel 2 pcmd too large";
  pmtx_intr_info[2].stat_idx = -1;
  pmtx_intr_info[2].fatal = 1U;
  pmtx_intr_info[2].int_handler = 0;
  pmtx_intr_info[3].mask = 268435456U;
  pmtx_intr_info[3].msg = "PMTX 0-length pcmd";
  pmtx_intr_info[3].stat_idx = -1;
  pmtx_intr_info[3].fatal = 1U;
  pmtx_intr_info[3].int_handler = 0;
  pmtx_intr_info[4].mask = 268435440U;
  pmtx_intr_info[4].msg = "PMTX framing error";
  pmtx_intr_info[4].stat_idx = -1;
  pmtx_intr_info[4].fatal = 1U;
  pmtx_intr_info[4].int_handler = 0;
  pmtx_intr_info[5].mask = 8U;
  pmtx_intr_info[5].msg = "PMTX oespi parity error";
  pmtx_intr_info[5].stat_idx = -1;
  pmtx_intr_info[5].fatal = 1U;
  pmtx_intr_info[5].int_handler = 0;
  pmtx_intr_info[6].mask = 4U;
  pmtx_intr_info[6].msg = "PMTX db_options parity error";
  pmtx_intr_info[6].stat_idx = -1;
  pmtx_intr_info[6].fatal = 1U;
  pmtx_intr_info[6].int_handler = 0;
  pmtx_intr_info[7].mask = 2U;
  pmtx_intr_info[7].msg = "PMTX icspi parity error";
  pmtx_intr_info[7].stat_idx = -1;
  pmtx_intr_info[7].fatal = 1U;
  pmtx_intr_info[7].int_handler = 0;
  pmtx_intr_info[8].mask = 1U;
  pmtx_intr_info[8].msg = "PMTX c_pcmd parity error";
  pmtx_intr_info[8].stat_idx = -1;
  pmtx_intr_info[8].fatal = 1U;
  pmtx_intr_info[8].int_handler = 0;
  pmtx_intr_info[9].mask = 0U;
  pmtx_intr_info[9].msg = 0;
  pmtx_intr_info[9].stat_idx = (short)0;
  pmtx_intr_info[9].fatal = (unsigned short)0;
  pmtx_intr_info[9].int_handler = 0;
  tmp = t4_handle_intr_status(adapter, 36860U, (struct intr_info const *)(& pmtx_intr_info));
  }
  if (tmp != 0) {
    {
    t4_fatal_err(adapter);
    }
  } else {
  }
  return;
}
}
static void pmrx_intr_handler(struct adapter *adapter )
{
  struct intr_info pmrx_intr_info[7U] ;
  int tmp ;
  {
  {
  pmrx_intr_info[0].mask = 4194304U;
  pmrx_intr_info[0].msg = "PMRX 0-length pcmd";
  pmrx_intr_info[0].stat_idx = -1;
  pmrx_intr_info[0].fatal = 1U;
  pmrx_intr_info[0].int_handler = 0;
  pmrx_intr_info[1].mask = 4194288U;
  pmrx_intr_info[1].msg = "PMRX framing error";
  pmrx_intr_info[1].stat_idx = -1;
  pmrx_intr_info[1].fatal = 1U;
  pmrx_intr_info[1].int_handler = 0;
  pmrx_intr_info[2].mask = 8U;
  pmrx_intr_info[2].msg = "PMRX ocspi parity error";
  pmrx_intr_info[2].stat_idx = -1;
  pmrx_intr_info[2].fatal = 1U;
  pmrx_intr_info[2].int_handler = 0;
  pmrx_intr_info[3].mask = 4U;
  pmrx_intr_info[3].msg = "PMRX db_options parity error";
  pmrx_intr_info[3].stat_idx = -1;
  pmrx_intr_info[3].fatal = 1U;
  pmrx_intr_info[3].int_handler = 0;
  pmrx_intr_info[4].mask = 2U;
  pmrx_intr_info[4].msg = "PMRX iespi parity error";
  pmrx_intr_info[4].stat_idx = -1;
  pmrx_intr_info[4].fatal = 1U;
  pmrx_intr_info[4].int_handler = 0;
  pmrx_intr_info[5].mask = 1U;
  pmrx_intr_info[5].msg = "PMRX e_pcmd parity error";
  pmrx_intr_info[5].stat_idx = -1;
  pmrx_intr_info[5].fatal = 1U;
  pmrx_intr_info[5].int_handler = 0;
  pmrx_intr_info[6].mask = 0U;
  pmrx_intr_info[6].msg = 0;
  pmrx_intr_info[6].stat_idx = (short)0;
  pmrx_intr_info[6].fatal = (unsigned short)0;
  pmrx_intr_info[6].int_handler = 0;
  tmp = t4_handle_intr_status(adapter, 36828U, (struct intr_info const *)(& pmrx_intr_info));
  }
  if (tmp != 0) {
    {
    t4_fatal_err(adapter);
    }
  } else {
  }
  return;
}
}
static void cplsw_intr_handler(struct adapter *adapter )
{
  struct intr_info cplsw_intr_info[7U] ;
  int tmp ;
  {
  {
  cplsw_intr_info[0].mask = 32U;
  cplsw_intr_info[0].msg = "CPLSW CIM op_map parity error";
  cplsw_intr_info[0].stat_idx = -1;
  cplsw_intr_info[0].fatal = 1U;
  cplsw_intr_info[0].int_handler = 0;
  cplsw_intr_info[1].mask = 16U;
  cplsw_intr_info[1].msg = "CPLSW CIM overflow";
  cplsw_intr_info[1].stat_idx = -1;
  cplsw_intr_info[1].fatal = 1U;
  cplsw_intr_info[1].int_handler = 0;
  cplsw_intr_info[2].mask = 8U;
  cplsw_intr_info[2].msg = "CPLSW TP framing error";
  cplsw_intr_info[2].stat_idx = -1;
  cplsw_intr_info[2].fatal = 1U;
  cplsw_intr_info[2].int_handler = 0;
  cplsw_intr_info[3].mask = 4U;
  cplsw_intr_info[3].msg = "CPLSW SGE framing error";
  cplsw_intr_info[3].stat_idx = -1;
  cplsw_intr_info[3].fatal = 1U;
  cplsw_intr_info[3].int_handler = 0;
  cplsw_intr_info[4].mask = 2U;
  cplsw_intr_info[4].msg = "CPLSW CIM framing error";
  cplsw_intr_info[4].stat_idx = -1;
  cplsw_intr_info[4].fatal = 1U;
  cplsw_intr_info[4].int_handler = 0;
  cplsw_intr_info[5].mask = 1U;
  cplsw_intr_info[5].msg = "CPLSW no-switch error";
  cplsw_intr_info[5].stat_idx = -1;
  cplsw_intr_info[5].fatal = 1U;
  cplsw_intr_info[5].int_handler = 0;
  cplsw_intr_info[6].mask = 0U;
  cplsw_intr_info[6].msg = 0;
  cplsw_intr_info[6].stat_idx = (short)0;
  cplsw_intr_info[6].fatal = (unsigned short)0;
  cplsw_intr_info[6].int_handler = 0;
  tmp = t4_handle_intr_status(adapter, 102484U, (struct intr_info const *)(& cplsw_intr_info));
  }
  if (tmp != 0) {
    {
    t4_fatal_err(adapter);
    }
  } else {
  }
  return;
}
}
static void le_intr_handler(struct adapter *adap )
{
  struct intr_info le_intr_info[6U] ;
  int tmp ;
  {
  {
  le_intr_info[0].mask = 32U;
  le_intr_info[0].msg = "LE LIP miss";
  le_intr_info[0].stat_idx = -1;
  le_intr_info[0].fatal = 0U;
  le_intr_info[0].int_handler = 0;
  le_intr_info[1].mask = 16U;
  le_intr_info[1].msg = "LE 0 LIP error";
  le_intr_info[1].stat_idx = -1;
  le_intr_info[1].fatal = 0U;
  le_intr_info[1].int_handler = 0;
  le_intr_info[2].mask = 64U;
  le_intr_info[2].msg = "LE parity error";
  le_intr_info[2].stat_idx = -1;
  le_intr_info[2].fatal = 1U;
  le_intr_info[2].int_handler = 0;
  le_intr_info[3].mask = 32768U;
  le_intr_info[3].msg = "LE unknown command";
  le_intr_info[3].stat_idx = -1;
  le_intr_info[3].fatal = 1U;
  le_intr_info[3].int_handler = 0;
  le_intr_info[4].mask = 65536U;
  le_intr_info[4].msg = "LE request queue parity error";
  le_intr_info[4].stat_idx = -1;
  le_intr_info[4].fatal = 1U;
  le_intr_info[4].int_handler = 0;
  le_intr_info[5].mask = 0U;
  le_intr_info[5].msg = 0;
  le_intr_info[5].stat_idx = (short)0;
  le_intr_info[5].fatal = (unsigned short)0;
  le_intr_info[5].int_handler = 0;
  tmp = t4_handle_intr_status(adap, 105532U, (struct intr_info const *)(& le_intr_info));
  }
  if (tmp != 0) {
    {
    t4_fatal_err(adap);
    }
  } else {
  }
  return;
}
}
static void mps_intr_handler(struct adapter *adapter )
{
  struct intr_info mps_rx_intr_info[2U] ;
  struct intr_info mps_tx_intr_info[8U] ;
  struct intr_info mps_trc_intr_info[4U] ;
  struct intr_info mps_stat_sram_intr_info[2U] ;
  struct intr_info mps_stat_tx_intr_info[2U] ;
  struct intr_info mps_stat_rx_intr_info[2U] ;
  struct intr_info mps_cls_intr_info[4U] ;
  int fat ;
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  int tmp___4 ;
  int tmp___5 ;
  {
  {
  mps_rx_intr_info[0].mask = 16777215U;
  mps_rx_intr_info[0].msg = "MPS Rx parity error";
  mps_rx_intr_info[0].stat_idx = -1;
  mps_rx_intr_info[0].fatal = 1U;
  mps_rx_intr_info[0].int_handler = 0;
  mps_rx_intr_info[1].mask = 0U;
  mps_rx_intr_info[1].msg = 0;
  mps_rx_intr_info[1].stat_idx = (short)0;
  mps_rx_intr_info[1].fatal = (unsigned short)0;
  mps_rx_intr_info[1].int_handler = 0;
  mps_tx_intr_info[0].mask = 15U;
  mps_tx_intr_info[0].msg = "MPS Tx TP FIFO parity error";
  mps_tx_intr_info[0].stat_idx = -1;
  mps_tx_intr_info[0].fatal = 1U;
  mps_tx_intr_info[0].int_handler = 0;
  mps_tx_intr_info[1].mask = 16U;
  mps_tx_intr_info[1].msg = "MPS Tx NC-SI FIFO parity error";
  mps_tx_intr_info[1].stat_idx = -1;
  mps_tx_intr_info[1].fatal = 1U;
  mps_tx_intr_info[1].int_handler = 0;
  mps_tx_intr_info[2].mask = 480U;
  mps_tx_intr_info[2].msg = "MPS Tx data FIFO parity error";
  mps_tx_intr_info[2].stat_idx = -1;
  mps_tx_intr_info[2].fatal = 1U;
  mps_tx_intr_info[2].int_handler = 0;
  mps_tx_intr_info[3].mask = 7680U;
  mps_tx_intr_info[3].msg = "MPS Tx desc FIFO parity error";
  mps_tx_intr_info[3].stat_idx = -1;
  mps_tx_intr_info[3].fatal = 1U;
  mps_tx_intr_info[3].int_handler = 0;
  mps_tx_intr_info[4].mask = 8192U;
  mps_tx_intr_info[4].msg = "MPS Tx underflow";
  mps_tx_intr_info[4].stat_idx = -1;
  mps_tx_intr_info[4].fatal = 1U;
  mps_tx_intr_info[4].int_handler = 0;
  mps_tx_intr_info[5].mask = 16384U;
  mps_tx_intr_info[5].msg = "MPS Tx SOP/EOP error";
  mps_tx_intr_info[5].stat_idx = -1;
  mps_tx_intr_info[5].fatal = 1U;
  mps_tx_intr_info[5].int_handler = 0;
  mps_tx_intr_info[6].mask = 32768U;
  mps_tx_intr_info[6].msg = "MPS Tx framing error";
  mps_tx_intr_info[6].stat_idx = -1;
  mps_tx_intr_info[6].fatal = 1U;
  mps_tx_intr_info[6].int_handler = 0;
  mps_tx_intr_info[7].mask = 0U;
  mps_tx_intr_info[7].msg = 0;
  mps_tx_intr_info[7].stat_idx = (short)0;
  mps_tx_intr_info[7].fatal = (unsigned short)0;
  mps_tx_intr_info[7].int_handler = 0;
  mps_trc_intr_info[0].mask = 15U;
  mps_trc_intr_info[0].msg = "MPS TRC filter parity error";
  mps_trc_intr_info[0].stat_idx = -1;
  mps_trc_intr_info[0].fatal = 1U;
  mps_trc_intr_info[0].int_handler = 0;
  mps_trc_intr_info[1].mask = 240U;
  mps_trc_intr_info[1].msg = "MPS TRC packet FIFO parity error";
  mps_trc_intr_info[1].stat_idx = -1;
  mps_trc_intr_info[1].fatal = 1U;
  mps_trc_intr_info[1].int_handler = 0;
  mps_trc_intr_info[2].mask = 256U;
  mps_trc_intr_info[2].msg = "MPS TRC misc parity error";
  mps_trc_intr_info[2].stat_idx = -1;
  mps_trc_intr_info[2].fatal = 1U;
  mps_trc_intr_info[2].int_handler = 0;
  mps_trc_intr_info[3].mask = 0U;
  mps_trc_intr_info[3].msg = 0;
  mps_trc_intr_info[3].stat_idx = (short)0;
  mps_trc_intr_info[3].fatal = (unsigned short)0;
  mps_trc_intr_info[3].int_handler = 0;
  mps_stat_sram_intr_info[0].mask = 2097151U;
  mps_stat_sram_intr_info[0].msg = "MPS statistics SRAM parity error";
  mps_stat_sram_intr_info[0].stat_idx = -1;
  mps_stat_sram_intr_info[0].fatal = 1U;
  mps_stat_sram_intr_info[0].int_handler = 0;
  mps_stat_sram_intr_info[1].mask = 0U;
  mps_stat_sram_intr_info[1].msg = 0;
  mps_stat_sram_intr_info[1].stat_idx = (short)0;
  mps_stat_sram_intr_info[1].fatal = (unsigned short)0;
  mps_stat_sram_intr_info[1].int_handler = 0;
  mps_stat_tx_intr_info[0].mask = 1048575U;
  mps_stat_tx_intr_info[0].msg = "MPS statistics Tx FIFO parity error";
  mps_stat_tx_intr_info[0].stat_idx = -1;
  mps_stat_tx_intr_info[0].fatal = 1U;
  mps_stat_tx_intr_info[0].int_handler = 0;
  mps_stat_tx_intr_info[1].mask = 0U;
  mps_stat_tx_intr_info[1].msg = 0;
  mps_stat_tx_intr_info[1].stat_idx = (short)0;
  mps_stat_tx_intr_info[1].fatal = (unsigned short)0;
  mps_stat_tx_intr_info[1].int_handler = 0;
  mps_stat_rx_intr_info[0].mask = 16777215U;
  mps_stat_rx_intr_info[0].msg = "MPS statistics Rx FIFO parity error";
  mps_stat_rx_intr_info[0].stat_idx = -1;
  mps_stat_rx_intr_info[0].fatal = 1U;
  mps_stat_rx_intr_info[0].int_handler = 0;
  mps_stat_rx_intr_info[1].mask = 0U;
  mps_stat_rx_intr_info[1].msg = 0;
  mps_stat_rx_intr_info[1].stat_idx = (short)0;
  mps_stat_rx_intr_info[1].fatal = (unsigned short)0;
  mps_stat_rx_intr_info[1].int_handler = 0;
  mps_cls_intr_info[0].mask = 1U;
  mps_cls_intr_info[0].msg = "MPS match SRAM parity error";
  mps_cls_intr_info[0].stat_idx = -1;
  mps_cls_intr_info[0].fatal = 1U;
  mps_cls_intr_info[0].int_handler = 0;
  mps_cls_intr_info[1].mask = 2U;
  mps_cls_intr_info[1].msg = "MPS match TCAM parity error";
  mps_cls_intr_info[1].stat_idx = -1;
  mps_cls_intr_info[1].fatal = 1U;
  mps_cls_intr_info[1].int_handler = 0;
  mps_cls_intr_info[2].mask = 4U;
  mps_cls_intr_info[2].msg = "MPS hash SRAM parity error";
  mps_cls_intr_info[2].stat_idx = -1;
  mps_cls_intr_info[2].fatal = 1U;
  mps_cls_intr_info[2].int_handler = 0;
  mps_cls_intr_info[3].mask = 0U;
  mps_cls_intr_info[3].msg = 0;
  mps_cls_intr_info[3].stat_idx = (short)0;
  mps_cls_intr_info[3].fatal = (unsigned short)0;
  mps_cls_intr_info[3].int_handler = 0;
  tmp = t4_handle_intr_status(adapter, 69748U, (struct intr_info const *)(& mps_rx_intr_info));
  tmp___0 = t4_handle_intr_status(adapter, 37896U, (struct intr_info const *)(& mps_tx_intr_info));
  tmp___1 = t4_handle_intr_status(adapter, 39004U, (struct intr_info const *)(& mps_trc_intr_info));
  tmp___2 = t4_handle_intr_status(adapter, 38420U, (struct intr_info const *)(& mps_stat_sram_intr_info));
  tmp___3 = t4_handle_intr_status(adapter, 38432U, (struct intr_info const *)(& mps_stat_tx_intr_info));
  tmp___4 = t4_handle_intr_status(adapter, 38444U, (struct intr_info const *)(& mps_stat_rx_intr_info));
  tmp___5 = t4_handle_intr_status(adapter, 53288U, (struct intr_info const *)(& mps_cls_intr_info));
  fat = (((((tmp + tmp___0) + tmp___1) + tmp___2) + tmp___3) + tmp___4) + tmp___5;
  t4_write_reg(adapter, 36872U, 62U);
  t4_read_reg(adapter, 36872U);
  }
  if (fat != 0) {
    {
    t4_fatal_err(adapter);
    }
  } else {
  }
  return;
}
}
static void mem_intr_handler(struct adapter *adapter , int idx )
{
  char name[3U][5U] ;
  unsigned int tmp ;
  unsigned int addr ;
  unsigned int cnt_addr ;
  unsigned int v ;
  u32 tmp___0 ;
  u32 cnt ;
  u32 tmp___1 ;
  int tmp___2 ;
  {
  name[0][0] = 'E';
  name[0][1] = 'D';
  name[0][2] = 'C';
  name[0][3] = '0';
  name[0][4] = '\000';
  name[1][0] = 'E';
  name[1][1] = 'D';
  name[1][2] = 'C';
  name[1][3] = '1';
  name[1][4] = '\000';
  name[2][0] = 'M';
  name[2][1] = 'C';
  name[2][2] = '\000';
  tmp = 3U;
  {
  while (1) {
    while_continue: ;
    if (tmp >= 5U) {
      goto while_break;
    } else {
    }
    name[2][tmp] = (char)0;
    tmp = tmp + 1U;
  }
  while_break: ;
  }
  if (idx <= 1) {
    addr = (unsigned int )(idx * 128 + 31096);
    cnt_addr = (unsigned int )(idx * 128 + 31100);
  } else {
    addr = 29976U;
    cnt_addr = 29980U;
  }
  {
  tmp___0 = t4_read_reg(adapter, addr);
  v = tmp___0 & 7U;
  }
  if ((int )v & 1) {
    {
    dev_alert((struct device const *)adapter->pdev_dev, "%s FIFO parity error\n",
              (char const *)(& name) + (unsigned long )idx);
    }
  } else {
  }
  if ((v & 2U) != 0U) {
    {
    tmp___1 = t4_read_reg(adapter, cnt_addr);
    cnt = tmp___1 >> 16;
    t4_write_reg(adapter, cnt_addr, 4294901760U);
    tmp___2 = __printk_ratelimit("mem_intr_handler");
    }
    if (tmp___2 != 0) {
      {
      dev_warn((struct device const *)adapter->pdev_dev, "%u %s correctable ECC data error%s\n",
               cnt, (char const *)(& name) + (unsigned long )idx, cnt > 1U ? (char *)"s" : (char *)"");
      }
    } else {
    }
  } else {
  }
  if ((v & 4U) != 0U) {
    {
    dev_alert((struct device const *)adapter->pdev_dev, "%s uncorrectable ECC data error\n",
              (char const *)(& name) + (unsigned long )idx);
    }
  } else {
  }
  {
  t4_write_reg(adapter, addr, v);
  }
  if ((v & 5U) != 0U) {
    {
    t4_fatal_err(adapter);
    }
  } else {
  }
  return;
}
}
static void ma_intr_handler(struct adapter *adap )
{
  u32 v ;
  u32 status ;
  u32 tmp ;
  u32 tmp___0 ;
  {
  {
  tmp = t4_read_reg(adap, 30688U);
  status = tmp;
  }
  if ((status & 2U) != 0U) {
    {
    tmp___0 = t4_read_reg(adap, 30708U);
    dev_alert((struct device const *)adap->pdev_dev, "MA parity error, parity status %#x\n",
              tmp___0);
    }
  } else {
  }
  if ((int )status & 1) {
    {
    v = t4_read_reg(adap, 30692U);
    dev_alert((struct device const *)adap->pdev_dev, "MA address wrap-around error by client %u to address %#x\n",
              v & 15U, v & 4294967280U);
    }
  } else {
  }
  {
  t4_write_reg(adap, 30688U, status);
  t4_fatal_err(adap);
  }
  return;
}
}
static void smb_intr_handler(struct adapter *adap )
{
  struct intr_info smb_intr_info[4U] ;
  int tmp ;
  {
  {
  smb_intr_info[0].mask = 2097152U;
  smb_intr_info[0].msg = "SMB master Tx FIFO parity error";
  smb_intr_info[0].stat_idx = -1;
  smb_intr_info[0].fatal = 1U;
  smb_intr_info[0].int_handler = 0;
  smb_intr_info[1].mask = 1048576U;
  smb_intr_info[1].msg = "SMB master Rx FIFO parity error";
  smb_intr_info[1].stat_idx = -1;
  smb_intr_info[1].fatal = 1U;
  smb_intr_info[1].int_handler = 0;
  smb_intr_info[2].mask = 524288U;
  smb_intr_info[2].msg = "SMB slave FIFO parity error";
  smb_intr_info[2].stat_idx = -1;
  smb_intr_info[2].fatal = 1U;
  smb_intr_info[2].int_handler = 0;
  smb_intr_info[3].mask = 0U;
  smb_intr_info[3].msg = 0;
  smb_intr_info[3].stat_idx = (short)0;
  smb_intr_info[3].fatal = (unsigned short)0;
  smb_intr_info[3].int_handler = 0;
  tmp = t4_handle_intr_status(adap, 102544U, (struct intr_info const *)(& smb_intr_info));
  }
  if (tmp != 0) {
    {
    t4_fatal_err(adap);
    }
  } else {
  }
  return;
}
}
static void ncsi_intr_handler(struct adapter *adap )
{
  struct intr_info ncsi_intr_info[5U] ;
  int tmp ;
  {
  {
  ncsi_intr_info[0].mask = 256U;
  ncsi_intr_info[0].msg = "NC-SI CIM parity error";
  ncsi_intr_info[0].stat_idx = -1;
  ncsi_intr_info[0].fatal = 1U;
  ncsi_intr_info[0].int_handler = 0;
  ncsi_intr_info[1].mask = 128U;
  ncsi_intr_info[1].msg = "NC-SI MPS parity error";
  ncsi_intr_info[1].stat_idx = -1;
  ncsi_intr_info[1].fatal = 1U;
  ncsi_intr_info[1].int_handler = 0;
  ncsi_intr_info[2].mask = 2U;
  ncsi_intr_info[2].msg = "NC-SI Tx FIFO parity error";
  ncsi_intr_info[2].stat_idx = -1;
  ncsi_intr_info[2].fatal = 1U;
  ncsi_intr_info[2].int_handler = 0;
  ncsi_intr_info[3].mask = 1U;
  ncsi_intr_info[3].msg = "NC-SI Rx FIFO parity error";
  ncsi_intr_info[3].stat_idx = -1;
  ncsi_intr_info[3].fatal = 1U;
  ncsi_intr_info[3].int_handler = 0;
  ncsi_intr_info[4].mask = 0U;
  ncsi_intr_info[4].msg = 0;
  ncsi_intr_info[4].stat_idx = (short)0;
  ncsi_intr_info[4].fatal = (unsigned short)0;
  ncsi_intr_info[4].int_handler = 0;
  tmp = t4_handle_intr_status(adap, 106712U, (struct intr_info const *)(& ncsi_intr_info));
  }
  if (tmp != 0) {
    {
    t4_fatal_err(adap);
    }
  } else {
  }
  return;
}
}
static void xgmac_intr_handler(struct adapter *adap , int port )
{
  u32 v ;
  u32 int_cause_reg ;
  int tmp ;
  {
  {
  tmp = is_t4(adap->params.chip);
  }
  if (tmp != 0) {
    int_cause_reg = (u32 )((port + 16) * 8192 + 4316);
  } else {
    int_cause_reg = (u32 )((port + 12) * 16384 + 2268);
  }
  {
  v = t4_read_reg(adap, int_cause_reg);
  v = v & 3U;
  }
  if (v == 0U) {
    return;
  } else {
  }
  if ((v & 2U) != 0U) {
    {
    dev_alert((struct device const *)adap->pdev_dev, "XGMAC %d Tx FIFO parity error\n",
              port);
    }
  } else {
  }
  if ((int )v & 1) {
    {
    dev_alert((struct device const *)adap->pdev_dev, "XGMAC %d Rx FIFO parity error\n",
              port);
    }
  } else {
  }
  {
  t4_write_reg(adap, (u32 )((port + 16) * 8192 + 4316), v);
  t4_fatal_err(adap);
  }
  return;
}
}
static void pl_intr_handler(struct adapter *adap )
{
  struct intr_info pl_intr_info[3U] ;
  int tmp ;
  {
  {
  pl_intr_info[0].mask = 16U;
  pl_intr_info[0].msg = "T4 fatal parity error";
  pl_intr_info[0].stat_idx = -1;
  pl_intr_info[0].fatal = 1U;
  pl_intr_info[0].int_handler = 0;
  pl_intr_info[1].mask = 1U;
  pl_intr_info[1].msg = "PL VFID_MAP parity error";
  pl_intr_info[1].stat_idx = -1;
  pl_intr_info[1].fatal = 1U;
  pl_intr_info[1].int_handler = 0;
  pl_intr_info[2].mask = 0U;
  pl_intr_info[2].msg = 0;
  pl_intr_info[2].stat_idx = (short)0;
  pl_intr_info[2].fatal = (unsigned short)0;
  pl_intr_info[2].int_handler = 0;
  tmp = t4_handle_intr_status(adap, 103472U, (struct intr_info const *)(& pl_intr_info));
  }
  if (tmp != 0) {
    {
    t4_fatal_err(adap);
    }
  } else {
  }
  return;
}
}
int t4_slow_intr_handler(struct adapter *adapter )
{
  u32 cause ;
  u32 tmp ;
  {
  {
  tmp = t4_read_reg(adapter, 103436U);
  cause = tmp;
  }
  if ((cause & 234864721U) == 0U) {
    return (0);
  } else {
  }
  if ((int )cause & 1) {
    {
    cim_intr_handler(adapter);
    }
  } else {
  }
  if ((cause & 16U) != 0U) {
    {
    mps_intr_handler(adapter);
    }
  } else {
  }
  if ((cause & 32U) != 0U) {
    {
    ncsi_intr_handler(adapter);
    }
  } else {
  }
  if ((cause & 64U) != 0U) {
    {
    pl_intr_handler(adapter);
    }
  } else {
  }
  if ((cause & 256U) != 0U) {
    {
    smb_intr_handler(adapter);
    }
  } else {
  }
  if ((cause & 512U) != 0U) {
    {
    xgmac_intr_handler(adapter, 0);
    }
  } else {
  }
  if ((cause & 1024U) != 0U) {
    {
    xgmac_intr_handler(adapter, 1);
    }
  } else {
  }
  if ((cause & 2048U) != 0U) {
    {
    xgmac_intr_handler(adapter, 2);
    }
  } else {
  }
  if ((cause & 4096U) != 0U) {
    {
    xgmac_intr_handler(adapter, 3);
    }
  } else {
  }
  if ((cause & 16384U) != 0U) {
    {
    pcie_intr_handler(adapter);
    }
  } else {
  }
  if ((cause & 32768U) != 0U) {
    {
    mem_intr_handler(adapter, 2);
    }
  } else {
  }
  if ((cause & 65536U) != 0U) {
    {
    mem_intr_handler(adapter, 0);
    }
  } else {
  }
  if ((cause & 131072U) != 0U) {
    {
    mem_intr_handler(adapter, 1);
    }
  } else {
  }
  if ((cause & 262144U) != 0U) {
    {
    le_intr_handler(adapter);
    }
  } else {
  }
  if ((cause & 524288U) != 0U) {
    {
    tp_intr_handler(adapter);
    }
  } else {
  }
  if ((cause & 1048576U) != 0U) {
    {
    ma_intr_handler(adapter);
    }
  } else {
  }
  if ((cause & 2097152U) != 0U) {
    {
    pmtx_intr_handler(adapter);
    }
  } else {
  }
  if ((cause & 4194304U) != 0U) {
    {
    pmrx_intr_handler(adapter);
    }
  } else {
  }
  if ((cause & 8388608U) != 0U) {
    {
    ulprx_intr_handler(adapter);
    }
  } else {
  }
  if ((cause & 16777216U) != 0U) {
    {
    cplsw_intr_handler(adapter);
    }
  } else {
  }
  if ((cause & 67108864U) != 0U) {
    {
    sge_intr_handler(adapter);
    }
  } else {
  }
  if ((cause & 134217728U) != 0U) {
    {
    ulptx_intr_handler(adapter);
    }
  } else {
  }
  {
  t4_write_reg(adapter, 103436U, cause & 234864721U);
  t4_read_reg(adapter, 103436U);
  }
  return (1);
}
}
void t4_intr_enable(struct adapter *adapter )
{
  u32 pf ;
  u32 tmp ;
  {
  {
  tmp = t4_read_reg(adapter, 103424U);
  pf = (tmp & 1792U) >> 8;
  t4_write_reg(adapter, 4160U, 7337904U);
  t4_write_reg(adapter, 111556U, 8U);
  t4_set_reg_field(adapter, 103444U, 0U, (u32 )(1 << (int )pf));
  }
  return;
}
}
void t4_intr_disable(struct adapter *adapter )
{
  u32 pf ;
  u32 tmp ;
  {
  {
  tmp = t4_read_reg(adapter, 103424U);
  pf = (tmp & 1792U) >> 8;
  t4_write_reg(adapter, 111556U, 0U);
  t4_set_reg_field(adapter, 103444U, (u32 )(1 << (int )pf), 0U);
  }
  return;
}
}
static int hash_mac_addr(u8 const *addr )
{
  u32 a ;
  u32 b ;
  {
  a = (((unsigned int )*addr << 16) | ((unsigned int )*(addr + 1UL) << 8)) | (unsigned int )*(addr + 2UL);
  b = (((unsigned int )*(addr + 3UL) << 16) | ((unsigned int )*(addr + 4UL) << 8)) | (unsigned int )*(addr + 5UL);
  a = a ^ b;
  a = a ^ (a >> 12);
  a = a ^ (a >> 6);
  return ((int )a & 63);
}
}
int t4_config_rss_range(struct adapter *adapter , int mbox , unsigned int viid , int start ,
                        int n , u16 const *rspq , unsigned int nrspq )
{
  int ret ;
  u16 const *rsp ;
  u16 const *rsp_end ;
  struct fw_rss_ind_tbl_cmd cmd ;
  __u32 tmp ;
  int nq ;
  int _min1 ;
  int _min2 ;
  __be32 *qp ;
  __u16 tmp___0 ;
  __u16 tmp___1 ;
  unsigned int v ;
  __be32 *tmp___2 ;
  __u32 tmp___3 ;
  {
  {
  rsp = rspq;
  rsp_end = rspq + (unsigned long )nrspq;
  memset((void *)(& cmd), 0, 64UL);
  tmp = __fswab32(viid | 547356672U);
  cmd.op_to_viid = tmp;
  cmd.retval_len16 = 67108864U;
  }
  goto ldv_45696;
  ldv_45695:
  {
  _min1 = n;
  _min2 = 32;
  nq = _min1 < _min2 ? _min1 : _min2;
  qp = & cmd.iq0_to_iq2;
  tmp___0 = __fswab16((int )((__u16 )nq));
  cmd.niqid = tmp___0;
  tmp___1 = __fswab16((int )((__u16 )start));
  cmd.startidx = tmp___1;
  start = start + nq;
  n = n - nq;
  }
  goto ldv_45693;
  ldv_45692:
  v = (unsigned int )((int )*rsp << 20);
  rsp = rsp + 1;
  if ((unsigned long )rsp >= (unsigned long )rsp_end) {
    rsp = rspq;
  } else {
  }
  v = v | (unsigned int )((int )*rsp << 10);
  rsp = rsp + 1;
  if ((unsigned long )rsp >= (unsigned long )rsp_end) {
    rsp = rspq;
  } else {
  }
  v = v | (unsigned int )*rsp;
  rsp = rsp + 1;
  if ((unsigned long )rsp >= (unsigned long )rsp_end) {
    rsp = rspq;
  } else {
  }
  {
  tmp___2 = qp;
  qp = qp + 1;
  tmp___3 = __fswab32(v);
  *tmp___2 = tmp___3;
  nq = nq + -3;
  }
  ldv_45693: ;
  if (nq > 0) {
    goto ldv_45692;
  } else {
  }
  {
  ret = t4_wr_mbox(adapter, mbox, (void const *)(& cmd), 64, (void *)0);
  }
  if (ret != 0) {
    return (ret);
  } else {
  }
  ldv_45696: ;
  if (n > 0) {
    goto ldv_45695;
  } else {
  }
  return (0);
}
}
int t4_config_glbl_rss(struct adapter *adapter , int mbox , unsigned int mode , unsigned int flags )
{
  struct fw_rss_glb_config_cmd c ;
  __u32 tmp ;
  __u32 tmp___0 ;
  __u32 tmp___1 ;
  int tmp___2 ;
  {
  {
  memset((void *)(& c), 0, 32UL);
  c.op_to_write = 40994U;
  c.retval_len16 = 33554432U;
  }
  if (mode == 0U) {
    {
    tmp = __fswab32(mode << 28);
    c.u.manual.mode_pkd = tmp;
    }
  } else
  if (mode == 1U) {
    {
    tmp___0 = __fswab32(mode << 28);
    c.u.basicvirtual.mode_pkd = tmp___0;
    tmp___1 = __fswab32(flags);
    c.u.basicvirtual.synmapen_to_hashtoeplitz = tmp___1;
    }
  } else {
    return (-22);
  }
  {
  tmp___2 = t4_wr_mbox(adapter, mbox, (void const *)(& c), 32, (void *)0);
  }
  return (tmp___2);
}
}
void t4_tp_get_tcp_stats(struct adapter *adap , struct tp_tcp_stats *v4 , struct tp_tcp_stats *v6 )
{
  u32 val[10U] ;
  {
  if ((unsigned long )v4 != (unsigned long )((struct tp_tcp_stats *)0)) {
    {
    t4_read_indirect(adap, 32336U, 32340U, (u32 *)(& val), 10U, 12U);
    v4->tcpOutRsts = val[0];
    v4->tcpInSegs = ((unsigned long long )val[4] << 32) | (unsigned long long )val[5];
    v4->tcpOutSegs = ((unsigned long long )val[6] << 32) | (unsigned long long )val[7];
    v4->tcpRetransSegs = ((unsigned long long )val[8] << 32) | (unsigned long long )val[9];
    }
  } else {
  }
  if ((unsigned long )v6 != (unsigned long )((struct tp_tcp_stats *)0)) {
    {
    t4_read_indirect(adap, 32336U, 32340U, (u32 *)(& val), 10U, 44U);
    v6->tcpOutRsts = val[0];
    v6->tcpInSegs = ((unsigned long long )val[4] << 32) | (unsigned long long )val[5];
    v6->tcpOutSegs = ((unsigned long long )val[6] << 32) | (unsigned long long )val[7];
    v6->tcpRetransSegs = ((unsigned long long )val[8] << 32) | (unsigned long long )val[9];
    }
  } else {
  }
  return;
}
}
void t4_read_mtu_tbl(struct adapter *adap , u16 *mtus , u8 *mtu_log )
{
  u32 v ;
  int i ;
  {
  i = 0;
  goto ldv_45723;
  ldv_45722:
  {
  t4_write_reg(adap, 32228U, (u32 )(i | -16777216));
  v = t4_read_reg(adap, 32228U);
  *(mtus + (unsigned long )i) = (unsigned int )((u16 )v) & 16383U;
  }
  if ((unsigned long )mtu_log != (unsigned long )((u8 *)0U)) {
    *(mtu_log + (unsigned long )i) = (u8 )((v & 983040U) >> 16);
  } else {
  }
  i = i + 1;
  ldv_45723: ;
  if (i <= 15) {
    goto ldv_45722;
  } else {
  }
  return;
}
}
void t4_tp_wr_bits_indirect(struct adapter *adap , unsigned int addr , unsigned int mask ,
                            unsigned int val )
{
  u32 tmp ;
  {
  {
  t4_write_reg(adap, 32320U, addr);
  tmp = t4_read_reg(adap, 32324U);
  val = val | (tmp & ~ mask);
  t4_write_reg(adap, 32324U, val);
  }
  return;
}
}
static void init_cong_ctrl(unsigned short *a , unsigned short *b )
{
  unsigned short tmp ;
  unsigned short tmp___0 ;
  unsigned short tmp___1 ;
  unsigned short tmp___2 ;
  unsigned short tmp___3 ;
  unsigned short tmp___4 ;
  unsigned short tmp___5 ;
  unsigned short tmp___6 ;
  unsigned short tmp___7 ;
  unsigned short tmp___8 ;
  unsigned short tmp___9 ;
  unsigned short tmp___10 ;
  unsigned short tmp___11 ;
  unsigned short tmp___12 ;
  unsigned short tmp___13 ;
  unsigned short tmp___14 ;
  unsigned short tmp___15 ;
  unsigned short tmp___16 ;
  unsigned short tmp___17 ;
  unsigned short tmp___18 ;
  unsigned short tmp___19 ;
  unsigned short tmp___20 ;
  unsigned short tmp___21 ;
  unsigned short tmp___22 ;
  unsigned short tmp___23 ;
  unsigned short tmp___24 ;
  unsigned short tmp___25 ;
  unsigned short tmp___26 ;
  unsigned short tmp___27 ;
  unsigned short tmp___28 ;
  unsigned short tmp___29 ;
  unsigned short tmp___30 ;
  {
  tmp___6 = 1U;
  *(a + 8UL) = tmp___6;
  tmp___5 = tmp___6;
  *(a + 7UL) = tmp___5;
  tmp___4 = tmp___5;
  *(a + 6UL) = tmp___4;
  tmp___3 = tmp___4;
  *(a + 5UL) = tmp___3;
  tmp___2 = tmp___3;
  *(a + 4UL) = tmp___2;
  tmp___1 = tmp___2;
  *(a + 3UL) = tmp___1;
  tmp___0 = tmp___1;
  *(a + 2UL) = tmp___0;
  tmp = tmp___0;
  *(a + 1UL) = tmp;
  *a = tmp;
  *(a + 9UL) = 2U;
  *(a + 10UL) = 3U;
  *(a + 11UL) = 4U;
  *(a + 12UL) = 5U;
  *(a + 13UL) = 6U;
  *(a + 14UL) = 7U;
  *(a + 15UL) = 8U;
  *(a + 16UL) = 9U;
  *(a + 17UL) = 10U;
  *(a + 18UL) = 14U;
  *(a + 19UL) = 17U;
  *(a + 20UL) = 21U;
  *(a + 21UL) = 25U;
  *(a + 22UL) = 30U;
  *(a + 23UL) = 35U;
  *(a + 24UL) = 45U;
  *(a + 25UL) = 60U;
  *(a + 26UL) = 80U;
  *(a + 27UL) = 100U;
  *(a + 28UL) = 200U;
  *(a + 29UL) = 300U;
  *(a + 30UL) = 400U;
  *(a + 31UL) = 500U;
  tmp___14 = 0U;
  *(b + 8UL) = tmp___14;
  tmp___13 = tmp___14;
  *(b + 7UL) = tmp___13;
  tmp___12 = tmp___13;
  *(b + 6UL) = tmp___12;
  tmp___11 = tmp___12;
  *(b + 5UL) = tmp___11;
  tmp___10 = tmp___11;
  *(b + 4UL) = tmp___10;
  tmp___9 = tmp___10;
  *(b + 3UL) = tmp___9;
  tmp___8 = tmp___9;
  *(b + 2UL) = tmp___8;
  tmp___7 = tmp___8;
  *(b + 1UL) = tmp___7;
  *b = tmp___7;
  tmp___15 = 1U;
  *(b + 10UL) = tmp___15;
  *(b + 9UL) = tmp___15;
  tmp___16 = 2U;
  *(b + 12UL) = tmp___16;
  *(b + 11UL) = tmp___16;
  tmp___19 = 3U;
  *(b + 16UL) = tmp___19;
  tmp___18 = tmp___19;
  *(b + 15UL) = tmp___18;
  tmp___17 = tmp___18;
  *(b + 14UL) = tmp___17;
  *(b + 13UL) = tmp___17;
  tmp___23 = 4U;
  *(b + 21UL) = tmp___23;
  tmp___22 = tmp___23;
  *(b + 20UL) = tmp___22;
  tmp___21 = tmp___22;
  *(b + 19UL) = tmp___21;
  tmp___20 = tmp___21;
  *(b + 18UL) = tmp___20;
  *(b + 17UL) = tmp___20;
  tmp___28 = 5U;
  *(b + 27UL) = tmp___28;
  tmp___27 = tmp___28;
  *(b + 26UL) = tmp___27;
  tmp___26 = tmp___27;
  *(b + 25UL) = tmp___26;
  tmp___25 = tmp___26;
  *(b + 24UL) = tmp___25;
  tmp___24 = tmp___25;
  *(b + 23UL) = tmp___24;
  *(b + 22UL) = tmp___24;
  tmp___29 = 6U;
  *(b + 29UL) = tmp___29;
  *(b + 28UL) = tmp___29;
  tmp___30 = 7U;
  *(b + 31UL) = tmp___30;
  *(b + 30UL) = tmp___30;
  return;
}
}
void t4_load_mtus(struct adapter *adap , unsigned short const *mtus , unsigned short const *alpha ,
                  unsigned short const *beta )
{
  unsigned int avg_pkts[32U] ;
  unsigned int i ;
  unsigned int w ;
  unsigned int mtu ;
  unsigned int log2 ;
  int tmp ;
  unsigned int inc ;
  unsigned int _max1 ;
  unsigned int _max2 ;
  {
  avg_pkts[0] = 2U;
  avg_pkts[1] = 6U;
  avg_pkts[2] = 10U;
  avg_pkts[3] = 14U;
  avg_pkts[4] = 20U;
  avg_pkts[5] = 28U;
  avg_pkts[6] = 40U;
  avg_pkts[7] = 56U;
  avg_pkts[8] = 80U;
  avg_pkts[9] = 112U;
  avg_pkts[10] = 160U;
  avg_pkts[11] = 224U;
  avg_pkts[12] = 320U;
  avg_pkts[13] = 448U;
  avg_pkts[14] = 640U;
  avg_pkts[15] = 896U;
  avg_pkts[16] = 1281U;
  avg_pkts[17] = 1792U;
  avg_pkts[18] = 2560U;
  avg_pkts[19] = 3584U;
  avg_pkts[20] = 5120U;
  avg_pkts[21] = 7168U;
  avg_pkts[22] = 10240U;
  avg_pkts[23] = 14336U;
  avg_pkts[24] = 20480U;
  avg_pkts[25] = 28672U;
  avg_pkts[26] = 40960U;
  avg_pkts[27] = 57344U;
  avg_pkts[28] = 81920U;
  avg_pkts[29] = 114688U;
  avg_pkts[30] = 163840U;
  avg_pkts[31] = 229376U;
  i = 0U;
  goto ldv_45754;
  ldv_45753:
  {
  mtu = (unsigned int )*(mtus + (unsigned long )i);
  tmp = fls((int )mtu);
  log2 = (unsigned int )tmp;
  }
  if ((mtu & (unsigned int )((1 << (int )log2) >> 2)) == 0U) {
    log2 = log2 - 1U;
  } else {
  }
  {
  t4_write_reg(adap, 32228U, ((i << 24) | (log2 << 16)) | mtu);
  w = 0U;
  }
  goto ldv_45751;
  ldv_45750:
  {
  _max1 = ((mtu - 40U) * (unsigned int )*(alpha + (unsigned long )w)) / avg_pkts[w];
  _max2 = 2U;
  inc = _max1 > _max2 ? _max1 : _max2;
  t4_write_reg(adap, 32220U, (((i << 21) | (w << 16)) | (unsigned int )((int )*(beta + (unsigned long )w) << 13)) | inc);
  w = w + 1U;
  }
  ldv_45751: ;
  if (w <= 31U) {
    goto ldv_45750;
  } else {
  }
  i = i + 1U;
  ldv_45754: ;
  if (i <= 15U) {
    goto ldv_45753;
  } else {
  }
  return;
}
}
static unsigned int get_mps_bg_map(struct adapter *adap , int idx )
{
  u32 n ;
  u32 tmp ;
  {
  {
  tmp = t4_read_reg(adap, 36864U);
  n = tmp & 3U;
  }
  if (n == 0U) {
    return (idx == 0 ? 15U : 0U);
  } else {
  }
  if (n == 1U) {
    return (idx <= 1 ? (unsigned int )(3 << idx * 2) : 0U);
  } else {
  }
  return ((unsigned int )(1 << idx));
}
}
void t4_get_port_stats(struct adapter *adap , int idx , struct port_stats *p )
{
  u32 bgmap ;
  unsigned int tmp ;
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
  u64 tmp___50 ;
  u64 tmp___51 ;
  u64 tmp___52 ;
  u64 tmp___53 ;
  u64 tmp___54 ;
  u64 tmp___55 ;
  u64 tmp___56 ;
  u64 tmp___57 ;
  {
  {
  tmp = get_mps_bg_map(adap, idx);
  bgmap = tmp;
  tmp___0 = is_t4(adap->params.chip);
  p->tx_octets = t4_read_reg64(adap, (u32 )(tmp___0 != 0 ? (idx + 16) * 8192 + 1024 : (idx + 12) * 16384 + 1024));
  tmp___1 = is_t4(adap->params.chip);
  p->tx_frames = t4_read_reg64(adap, (u32 )(tmp___1 != 0 ? (idx + 16) * 8192 + 1032 : (idx + 12) * 16384 + 1032));
  tmp___2 = is_t4(adap->params.chip);
  p->tx_bcast_frames = t4_read_reg64(adap, (u32 )(tmp___2 != 0 ? (idx + 16) * 8192 + 1040 : (idx + 12) * 16384 + 1040));
  tmp___3 = is_t4(adap->params.chip);
  p->tx_mcast_frames = t4_read_reg64(adap, (u32 )(tmp___3 != 0 ? (idx + 16) * 8192 + 1048 : (idx + 12) * 16384 + 1048));
  tmp___4 = is_t4(adap->params.chip);
  p->tx_ucast_frames = t4_read_reg64(adap, (u32 )(tmp___4 != 0 ? (idx + 16) * 8192 + 1056 : (idx + 12) * 16384 + 1056));
  tmp___5 = is_t4(adap->params.chip);
  p->tx_error_frames = t4_read_reg64(adap, (u32 )(tmp___5 != 0 ? (idx + 16) * 8192 + 1064 : (idx + 12) * 16384 + 1064));
  tmp___6 = is_t4(adap->params.chip);
  p->tx_frames_64 = t4_read_reg64(adap, (u32 )(tmp___6 != 0 ? (idx + 16) * 8192 + 1072 : (idx + 12) * 16384 + 1072));
  tmp___7 = is_t4(adap->params.chip);
  p->tx_frames_65_127 = t4_read_reg64(adap, (u32 )(tmp___7 != 0 ? (idx + 16) * 8192 + 1080 : (idx + 12) * 16384 + 1080));
  tmp___8 = is_t4(adap->params.chip);
  p->tx_frames_128_255 = t4_read_reg64(adap, (u32 )(tmp___8 != 0 ? (idx + 16) * 8192 + 1088 : (idx + 12) * 16384 + 1088));
  tmp___9 = is_t4(adap->params.chip);
  p->tx_frames_256_511 = t4_read_reg64(adap, (u32 )(tmp___9 != 0 ? (idx + 16) * 8192 + 1096 : (idx + 12) * 16384 + 1096));
  tmp___10 = is_t4(adap->params.chip);
  p->tx_frames_512_1023 = t4_read_reg64(adap, (u32 )(tmp___10 != 0 ? (idx + 16) * 8192 + 1104 : (idx + 12) * 16384 + 1104));
  tmp___11 = is_t4(adap->params.chip);
  p->tx_frames_1024_1518 = t4_read_reg64(adap, (u32 )(tmp___11 != 0 ? (idx + 16) * 8192 + 1112 : (idx + 12) * 16384 + 1112));
  tmp___12 = is_t4(adap->params.chip);
  p->tx_frames_1519_max = t4_read_reg64(adap, (u32 )(tmp___12 != 0 ? (idx + 16) * 8192 + 1120 : (idx + 12) * 16384 + 1120));
  tmp___13 = is_t4(adap->params.chip);
  p->tx_drop = t4_read_reg64(adap, (u32 )(tmp___13 != 0 ? (idx + 16) * 8192 + 1128 : (idx + 12) * 16384 + 1128));
  tmp___14 = is_t4(adap->params.chip);
  p->tx_pause = t4_read_reg64(adap, (u32 )(tmp___14 != 0 ? (idx + 16) * 8192 + 1136 : (idx + 12) * 16384 + 1136));
  tmp___15 = is_t4(adap->params.chip);
  p->tx_ppp0 = t4_read_reg64(adap, (u32 )(tmp___15 != 0 ? (idx + 16) * 8192 + 1144 : (idx + 12) * 16384 + 1144));
  tmp___16 = is_t4(adap->params.chip);
  p->tx_ppp1 = t4_read_reg64(adap, (u32 )(tmp___16 != 0 ? (idx + 16) * 8192 + 1152 : (idx + 12) * 16384 + 1152));
  tmp___17 = is_t4(adap->params.chip);
  p->tx_ppp2 = t4_read_reg64(adap, (u32 )(tmp___17 != 0 ? (idx + 16) * 8192 + 1160 : (idx + 12) * 16384 + 1160));
  tmp___18 = is_t4(adap->params.chip);
  p->tx_ppp3 = t4_read_reg64(adap, (u32 )(tmp___18 != 0 ? (idx + 16) * 8192 + 1168 : (idx + 12) * 16384 + 1168));
  tmp___19 = is_t4(adap->params.chip);
  p->tx_ppp4 = t4_read_reg64(adap, (u32 )(tmp___19 != 0 ? (idx + 16) * 8192 + 1176 : (idx + 12) * 16384 + 1176));
  tmp___20 = is_t4(adap->params.chip);
  p->tx_ppp5 = t4_read_reg64(adap, (u32 )(tmp___20 != 0 ? (idx + 16) * 8192 + 1184 : (idx + 12) * 16384 + 1184));
  tmp___21 = is_t4(adap->params.chip);
  p->tx_ppp6 = t4_read_reg64(adap, (u32 )(tmp___21 != 0 ? (idx + 16) * 8192 + 1192 : (idx + 12) * 16384 + 1192));
  tmp___22 = is_t4(adap->params.chip);
  p->tx_ppp7 = t4_read_reg64(adap, (u32 )(tmp___22 != 0 ? (idx + 16) * 8192 + 1200 : (idx + 12) * 16384 + 1200));
  tmp___23 = is_t4(adap->params.chip);
  p->rx_octets = t4_read_reg64(adap, (u32 )(tmp___23 != 0 ? (idx + 16) * 8192 + 1344 : (idx + 12) * 16384 + 1344));
  tmp___24 = is_t4(adap->params.chip);
  p->rx_frames = t4_read_reg64(adap, (u32 )(tmp___24 != 0 ? (idx + 16) * 8192 + 1352 : (idx + 12) * 16384 + 1352));
  tmp___25 = is_t4(adap->params.chip);
  p->rx_bcast_frames = t4_read_reg64(adap, (u32 )(tmp___25 != 0 ? (idx + 16) * 8192 + 1360 : (idx + 12) * 16384 + 1360));
  tmp___26 = is_t4(adap->params.chip);
  p->rx_mcast_frames = t4_read_reg64(adap, (u32 )(tmp___26 != 0 ? (idx + 16) * 8192 + 1368 : (idx + 12) * 16384 + 1368));
  tmp___27 = is_t4(adap->params.chip);
  p->rx_ucast_frames = t4_read_reg64(adap, (u32 )(tmp___27 != 0 ? (idx + 16) * 8192 + 1376 : (idx + 12) * 16384 + 1376));
  tmp___28 = is_t4(adap->params.chip);
  p->rx_too_long = t4_read_reg64(adap, (u32 )(tmp___28 != 0 ? (idx + 16) * 8192 + 1384 : (idx + 12) * 16384 + 1384));
  tmp___29 = is_t4(adap->params.chip);
  p->rx_jabber = t4_read_reg64(adap, (u32 )(tmp___29 != 0 ? (idx + 16) * 8192 + 1392 : (idx + 12) * 16384 + 1392));
  tmp___30 = is_t4(adap->params.chip);
  p->rx_fcs_err = t4_read_reg64(adap, (u32 )(tmp___30 != 0 ? (idx + 16) * 8192 + 1400 : (idx + 12) * 16384 + 1400));
  tmp___31 = is_t4(adap->params.chip);
  p->rx_len_err = t4_read_reg64(adap, (u32 )(tmp___31 != 0 ? (idx + 16) * 8192 + 1408 : (idx + 12) * 16384 + 1408));
  tmp___32 = is_t4(adap->params.chip);
  p->rx_symbol_err = t4_read_reg64(adap, (u32 )(tmp___32 != 0 ? (idx + 16) * 8192 + 1416 : (idx + 12) * 16384 + 1416));
  tmp___33 = is_t4(adap->params.chip);
  p->rx_runt = t4_read_reg64(adap, (u32 )(tmp___33 != 0 ? (idx + 16) * 8192 + 1552 : (idx + 12) * 16384 + 1552));
  tmp___34 = is_t4(adap->params.chip);
  p->rx_frames_64 = t4_read_reg64(adap, (u32 )(tmp___34 != 0 ? (idx + 16) * 8192 + 1424 : (idx + 12) * 16384 + 1424));
  tmp___35 = is_t4(adap->params.chip);
  p->rx_frames_65_127 = t4_read_reg64(adap, (u32 )(tmp___35 != 0 ? (idx + 16) * 8192 + 1432 : (idx + 12) * 16384 + 1432));
  tmp___36 = is_t4(adap->params.chip);
  p->rx_frames_128_255 = t4_read_reg64(adap, (u32 )(tmp___36 != 0 ? (idx + 16) * 8192 + 1440 : (idx + 12) * 16384 + 1440));
  tmp___37 = is_t4(adap->params.chip);
  p->rx_frames_256_511 = t4_read_reg64(adap, (u32 )(tmp___37 != 0 ? (idx + 16) * 8192 + 1448 : (idx + 12) * 16384 + 1448));
  tmp___38 = is_t4(adap->params.chip);
  p->rx_frames_512_1023 = t4_read_reg64(adap, (u32 )(tmp___38 != 0 ? (idx + 16) * 8192 + 1456 : (idx + 12) * 16384 + 1456));
  tmp___39 = is_t4(adap->params.chip);
  p->rx_frames_1024_1518 = t4_read_reg64(adap, (u32 )(tmp___39 != 0 ? (idx + 16) * 8192 + 1464 : (idx + 12) * 16384 + 1464));
  tmp___40 = is_t4(adap->params.chip);
  p->rx_frames_1519_max = t4_read_reg64(adap, (u32 )(tmp___40 != 0 ? (idx + 16) * 8192 + 1472 : (idx + 12) * 16384 + 1472));
  tmp___41 = is_t4(adap->params.chip);
  p->rx_pause = t4_read_reg64(adap, (u32 )(tmp___41 != 0 ? (idx + 16) * 8192 + 1480 : (idx + 12) * 16384 + 1480));
  tmp___42 = is_t4(adap->params.chip);
  p->rx_ppp0 = t4_read_reg64(adap, (u32 )(tmp___42 != 0 ? (idx + 16) * 8192 + 1488 : (idx + 12) * 16384 + 1488));
  tmp___43 = is_t4(adap->params.chip);
  p->rx_ppp1 = t4_read_reg64(adap, (u32 )(tmp___43 != 0 ? (idx + 16) * 8192 + 1496 : (idx + 12) * 16384 + 1496));
  tmp___44 = is_t4(adap->params.chip);
  p->rx_ppp2 = t4_read_reg64(adap, (u32 )(tmp___44 != 0 ? (idx + 16) * 8192 + 1504 : (idx + 12) * 16384 + 1504));
  tmp___45 = is_t4(adap->params.chip);
  p->rx_ppp3 = t4_read_reg64(adap, (u32 )(tmp___45 != 0 ? (idx + 16) * 8192 + 1512 : (idx + 12) * 16384 + 1512));
  tmp___46 = is_t4(adap->params.chip);
  p->rx_ppp4 = t4_read_reg64(adap, (u32 )(tmp___46 != 0 ? (idx + 16) * 8192 + 1520 : (idx + 12) * 16384 + 1520));
  tmp___47 = is_t4(adap->params.chip);
  p->rx_ppp5 = t4_read_reg64(adap, (u32 )(tmp___47 != 0 ? (idx + 16) * 8192 + 1528 : (idx + 12) * 16384 + 1528));
  tmp___48 = is_t4(adap->params.chip);
  p->rx_ppp6 = t4_read_reg64(adap, (u32 )(tmp___48 != 0 ? (idx + 16) * 8192 + 1536 : (idx + 12) * 16384 + 1536));
  tmp___49 = is_t4(adap->params.chip);
  p->rx_ppp7 = t4_read_reg64(adap, (u32 )(tmp___49 != 0 ? (idx + 16) * 8192 + 1544 : (idx + 12) * 16384 + 1544));
  }
  if ((int )bgmap & 1) {
    {
    tmp___50 = t4_read_reg64(adap, 38464U);
    p->rx_ovflow0 = tmp___50;
    }
  } else {
    p->rx_ovflow0 = 0ULL;
  }
  if ((bgmap & 2U) != 0U) {
    {
    tmp___51 = t4_read_reg64(adap, 38472U);
    p->rx_ovflow1 = tmp___51;
    }
  } else {
    p->rx_ovflow1 = 0ULL;
  }
  if ((bgmap & 4U) != 0U) {
    {
    tmp___52 = t4_read_reg64(adap, 38480U);
    p->rx_ovflow2 = tmp___52;
    }
  } else {
    p->rx_ovflow2 = 0ULL;
  }
  if ((bgmap & 8U) != 0U) {
    {
    tmp___53 = t4_read_reg64(adap, 38488U);
    p->rx_ovflow3 = tmp___53;
    }
  } else {
    p->rx_ovflow3 = 0ULL;
  }
  if ((int )bgmap & 1) {
    {
    tmp___54 = t4_read_reg64(adap, 38528U);
    p->rx_trunc0 = tmp___54;
    }
  } else {
    p->rx_trunc0 = 0ULL;
  }
  if ((bgmap & 2U) != 0U) {
    {
    tmp___55 = t4_read_reg64(adap, 38536U);
    p->rx_trunc1 = tmp___55;
    }
  } else {
    p->rx_trunc1 = 0ULL;
  }
  if ((bgmap & 4U) != 0U) {
    {
    tmp___56 = t4_read_reg64(adap, 38544U);
    p->rx_trunc2 = tmp___56;
    }
  } else {
    p->rx_trunc2 = 0ULL;
  }
  if ((bgmap & 8U) != 0U) {
    {
    tmp___57 = t4_read_reg64(adap, 38552U);
    p->rx_trunc3 = tmp___57;
    }
  } else {
    p->rx_trunc3 = 0ULL;
  }
  return;
}
}
void t4_wol_magic_enable(struct adapter *adap , unsigned int port , u8 const *addr )
{
  u32 mag_id_reg_l ;
  u32 mag_id_reg_h ;
  u32 port_cfg_reg ;
  int tmp ;
  {
  {
  tmp = is_t4(adap->params.chip);
  }
  if (tmp != 0) {
    mag_id_reg_l = (port + 16U) * 8192U + 4132U;
    mag_id_reg_h = (port + 16U) * 8192U + 4136U;
    port_cfg_reg = (port + 16U) * 8192U + 4120U;
  } else {
    mag_id_reg_l = (port + 12U) * 16384U + 2084U;
    mag_id_reg_h = (port + 12U) * 16384U + 2088U;
    port_cfg_reg = (port + 12U) * 16384U + 2072U;
  }
  if ((unsigned long )addr != (unsigned long )((u8 const *)0U)) {
    {
    t4_write_reg(adap, mag_id_reg_l, (u32 )(((((int )*(addr + 2UL) << 24) | ((int )*(addr + 3UL) << 16)) | ((int )*(addr + 4UL) << 8)) | (int )*(addr + 5UL)));
    t4_write_reg(adap, mag_id_reg_h, (u32 )(((int )*addr << 8) | (int )*(addr + 1UL)));
    }
  } else {
  }
  {
  t4_set_reg_field(adap, port_cfg_reg, 131072U, (unsigned long )addr != (unsigned long )((u8 const *)0U) ? 131072U : 0U);
  }
  return;
}
}
int t4_wol_pat_enable(struct adapter *adap , unsigned int port , unsigned int map ,
                      u64 mask0 , u64 mask1 , unsigned int crc , bool enable )
{
  int i ;
  u32 port_cfg_reg ;
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  int tmp___4 ;
  int tmp___5 ;
  int tmp___6 ;
  u32 tmp___7 ;
  int tmp___8 ;
  int tmp___9 ;
  int tmp___10 ;
  int tmp___11 ;
  u32 tmp___12 ;
  {
  {
  tmp = is_t4(adap->params.chip);
  }
  if (tmp != 0) {
    port_cfg_reg = (port + 16U) * 8192U + 4120U;
  } else {
    port_cfg_reg = (port + 12U) * 16384U + 2072U;
  }
  if (! enable) {
    {
    t4_set_reg_field(adap, port_cfg_reg, 262144U, 0U);
    }
    return (0);
  } else {
  }
  if (map > 255U) {
    return (-22);
  } else {
  }
  {
  tmp___0 = is_t4(adap->params.chip);
  t4_write_reg(adap, tmp___0 != 0 ? (port + 16U) * 8192U + 4292U : (port + 12U) * 16384U + 2244U,
               (u32 )(mask0 >> 32));
  tmp___1 = is_t4(adap->params.chip);
  t4_write_reg(adap, tmp___1 != 0 ? (port + 16U) * 8192U + 4296U : (port + 12U) * 16384U + 2248U,
               (u32 )mask1);
  tmp___2 = is_t4(adap->params.chip);
  t4_write_reg(adap, tmp___2 != 0 ? (port + 16U) * 8192U + 4300U : (port + 12U) * 16384U + 2252U,
               (u32 )(mask1 >> 32));
  i = 0;
  }
  goto ldv_45788;
  ldv_45787: ;
  if ((map & 1U) == 0U) {
    goto ldv_45786;
  } else {
  }
  {
  tmp___3 = is_t4(adap->params.chip);
  t4_write_reg(adap, tmp___3 != 0 ? (port + 16U) * 8192U + 4288U : (port + 12U) * 16384U + 2240U,
               (u32 )mask0);
  tmp___4 = is_t4(adap->params.chip);
  t4_write_reg(adap, tmp___4 != 0 ? (port + 16U) * 8192U + 4304U : (port + 12U) * 16384U + 2256U,
               (unsigned int )i | 256U);
  tmp___5 = is_t4(adap->params.chip);
  t4_read_reg(adap, tmp___5 != 0 ? (port + 16U) * 8192U + 4304U : (port + 12U) * 16384U + 2256U);
  tmp___6 = is_t4(adap->params.chip);
  tmp___7 = t4_read_reg(adap, tmp___6 != 0 ? (port + 16U) * 8192U + 4304U : (port + 12U) * 16384U + 2256U);
  }
  if ((int )tmp___7 < 0) {
    return (-110);
  } else {
  }
  {
  tmp___8 = is_t4(adap->params.chip);
  t4_write_reg(adap, tmp___8 != 0 ? (port + 16U) * 8192U + 4288U : (port + 12U) * 16384U + 2240U,
               crc);
  tmp___9 = is_t4(adap->params.chip);
  t4_write_reg(adap, tmp___9 != 0 ? (port + 16U) * 8192U + 4304U : (port + 12U) * 16384U + 2256U,
               (unsigned int )(i + 32) | 256U);
  tmp___10 = is_t4(adap->params.chip);
  t4_read_reg(adap, tmp___10 != 0 ? (port + 16U) * 8192U + 4304U : (port + 12U) * 16384U + 2256U);
  tmp___11 = is_t4(adap->params.chip);
  tmp___12 = t4_read_reg(adap, tmp___11 != 0 ? (port + 16U) * 8192U + 4304U : (port + 12U) * 16384U + 2256U);
  }
  if ((int )tmp___12 < 0) {
    return (-110);
  } else {
  }
  ldv_45786:
  i = i + 1;
  map = map >> 1;
  ldv_45788: ;
  if (i <= 7) {
    goto ldv_45787;
  } else {
  }
  {
  t4_set_reg_field(adap, (port + 16U) * 8192U + 4120U, 0U, 262144U);
  }
  return (0);
}
}
void t4_mk_filtdelwr(unsigned int ftid , struct fw_filter_wr *wr , int qid )
{
  __u32 tmp ;
  __u16 tmp___0 ;
  {
  {
  memset((void *)wr, 0, 128UL);
  wr->op_pkd = 2U;
  wr->len16_pkd = 134217728U;
  tmp = __fswab32((ftid << 12) | (qid < 0 ? 1024U : 0U));
  wr->tid_to_iq = tmp;
  wr->del_filter_to_l2tix = 128U;
  }
  if (qid >= 0) {
    {
    tmp___0 = __fswab16((int )((__u16 )qid));
    wr->rx_chan_rx_rpl_iq = tmp___0;
    }
  } else {
  }
  return;
}
}
int t4_fwaddrspace_write(struct adapter *adap , unsigned int mbox , u32 addr , u32 val )
{
  struct fw_ldst_cmd c ;
  __u32 tmp ;
  __u32 tmp___0 ;
  int tmp___1 ;
  {
  {
  memset((void *)(& c), 0, 64UL);
  c.op_to_addrspace = 16818177U;
  c.cycles_to_len16 = 67108864U;
  tmp = __fswab32(addr);
  c.u.addrval.addr = tmp;
  tmp___0 = __fswab32(val);
  c.u.addrval.val = tmp___0;
  tmp___1 = t4_wr_mbox(adap, (int )mbox, (void const *)(& c), 64, (void *)0);
  }
  return (tmp___1);
}
}
int t4_mem_win_read_len(struct adapter *adap , u32 addr , __be32 *data , int len )
{
  int i ;
  int off ;
  u32 win_pf ;
  int tmp ;
  __be32 *tmp___0 ;
  {
  {
  tmp = is_t4(adap->params.chip);
  win_pf = tmp == 0 ? adap->fn : 0U;
  off = (int )addr & 2048;
  }
  if ((addr & 3U) != 0U || len + off > 2048) {
    return (-22);
  } else {
  }
  {
  t4_write_reg(adap, 12396U, (addr & 4294965247U) | win_pf);
  t4_read_reg(adap, 12396U);
  i = 0;
  }
  goto ldv_45812;
  ldv_45811:
  {
  tmp___0 = data;
  data = data + 1;
  *tmp___0 = t4_read_reg(adap, (u32 )((off + 112640) + i));
  i = i + 4;
  }
  ldv_45812: ;
  if (i < len) {
    goto ldv_45811;
  } else {
  }
  return (0);
}
}
int t4_mdio_rd(struct adapter *adap , unsigned int mbox , unsigned int phy_addr ,
               unsigned int mmd , unsigned int reg , u16 *valp )
{
  int ret ;
  struct fw_ldst_cmd c ;
  __u16 tmp ;
  __u16 tmp___0 ;
  __u16 tmp___1 ;
  {
  {
  memset((void *)(& c), 0, 64UL);
  c.op_to_addrspace = 402702337U;
  c.cycles_to_len16 = 67108864U;
  tmp = __fswab16(((int )((__u16 )phy_addr) << 8U) | (int )((__u16 )mmd));
  c.u.mdio.paddr_mmd = tmp;
  tmp___0 = __fswab16((int )((__u16 )reg));
  c.u.mdio.raddr = tmp___0;
  ret = t4_wr_mbox(adap, (int )mbox, (void const *)(& c), 64, (void *)(& c));
  }
  if (ret == 0) {
    {
    tmp___1 = __fswab16((int )c.u.mdio.rval);
    *valp = tmp___1;
    }
  } else {
  }
  return (ret);
}
}
int t4_mdio_wr(struct adapter *adap , unsigned int mbox , unsigned int phy_addr ,
               unsigned int mmd , unsigned int reg , u16 val )
{
  struct fw_ldst_cmd c ;
  __u16 tmp ;
  __u16 tmp___0 ;
  __u16 tmp___1 ;
  int tmp___2 ;
  {
  {
  memset((void *)(& c), 0, 64UL);
  c.op_to_addrspace = 402694145U;
  c.cycles_to_len16 = 67108864U;
  tmp = __fswab16(((int )((__u16 )phy_addr) << 8U) | (int )((__u16 )mmd));
  c.u.mdio.paddr_mmd = tmp;
  tmp___0 = __fswab16((int )((__u16 )reg));
  c.u.mdio.raddr = tmp___0;
  tmp___1 = __fswab16((int )val);
  c.u.mdio.rval = tmp___1;
  tmp___2 = t4_wr_mbox(adap, (int )mbox, (void const *)(& c), 64, (void *)0);
  }
  return (tmp___2);
}
}
int t4_fw_hello(struct adapter *adap , unsigned int mbox , unsigned int evt_mbox ,
                enum dev_master master , enum dev_state *state )
{
  int ret ;
  struct fw_hello_cmd c ;
  u32 v ;
  unsigned int master_mbox ;
  int retries ;
  __u32 tmp ;
  int tmp___0 ;
  __u32 tmp___1 ;
  int waiting ;
  u32 pcie_fw ;
  int tmp___2 ;
  {
  retries = 3;
  retry:
  {
  memset((void *)(& c), 0, 16UL);
  c.op_to_write = 40964U;
  c.retval_len16 = 16777216U;
  tmp = __fswab32((((unsigned int )(((unsigned int )master == 0U ? 536870912 : 0) | ((unsigned int )master == 2U ? 268435456 : 0)) | ((unsigned int )master == 2U ? mbox << 24 : 251658240U)) | (evt_mbox << 20)) | 65536U);
  c.err_to_clearinit = tmp;
  ret = t4_wr_mbox(adap, (int )mbox, (void const *)(& c), 16, (void *)(& c));
  }
  if (ret < 0) {
    if (ret == -16 || ret == -110) {
      tmp___0 = retries;
      retries = retries - 1;
      if (tmp___0 > 0) {
        goto retry;
      } else {
      }
    } else {
    }
    return (ret);
  } else {
  }
  {
  tmp___1 = __fswab32(c.err_to_clearinit);
  v = tmp___1;
  master_mbox = (v >> 24) & 15U;
  }
  if ((unsigned long )state != (unsigned long )((enum dev_state *)0)) {
    if ((int )v < 0) {
      *state = 2;
    } else
    if ((v & 1073741824U) != 0U) {
      *state = 1;
    } else {
      *state = 0;
    }
  } else {
  }
  if ((v & 3221225472U) == 0U && master_mbox != mbox) {
    waiting = 30000;
    ldv_45850:
    {
    msleep(50U);
    waiting = waiting + -50;
    pcie_fw = t4_read_reg(adap, 12472U);
    }
    if ((pcie_fw & 3221225472U) == 0U) {
      if (waiting <= 0) {
        tmp___2 = retries;
        retries = retries - 1;
        if (tmp___2 > 0) {
          goto retry;
        } else {
        }
        return (-110);
      } else {
      }
      goto ldv_45848;
    } else {
    }
    if ((unsigned long )state != (unsigned long )((enum dev_state *)0)) {
      if ((int )pcie_fw < 0) {
        *state = 2;
      } else
      if ((pcie_fw & 1073741824U) != 0U) {
        *state = 1;
      } else {
      }
    } else {
    }
    if (master_mbox == 7U && (pcie_fw & 32768U) != 0U) {
      master_mbox = (pcie_fw >> 12) & 7U;
    } else {
    }
    goto ldv_45849;
    ldv_45848: ;
    goto ldv_45850;
    ldv_45849: ;
  } else {
  }
  return ((int )master_mbox);
}
}
int t4_fw_bye(struct adapter *adap , unsigned int mbox )
{
  struct fw_bye_cmd c ;
  int tmp ;
  {
  {
  memset((void *)(& c), 0, 16UL);
  c.op_to_write = 40965U;
  c.retval_len16 = 16777216U;
  tmp = t4_wr_mbox(adap, (int )mbox, (void const *)(& c), 16, (void *)0);
  }
  return (tmp);
}
}
int t4_early_init(struct adapter *adap , unsigned int mbox )
{
  struct fw_initialize_cmd c ;
  int tmp ;
  {
  {
  memset((void *)(& c), 0, 16UL);
  c.op_to_write = 40966U;
  c.retval_len16 = 16777216U;
  tmp = t4_wr_mbox(adap, (int )mbox, (void const *)(& c), 16, (void *)0);
  }
  return (tmp);
}
}
int t4_fw_reset(struct adapter *adap , unsigned int mbox , int reset )
{
  struct fw_reset_cmd c ;
  __u32 tmp ;
  int tmp___0 ;
  {
  {
  memset((void *)(& c), 0, 16UL);
  c.op_to_write = 40963U;
  c.retval_len16 = 16777216U;
  tmp = __fswab32((__u32 )reset);
  c.val = tmp;
  tmp___0 = t4_wr_mbox(adap, (int )mbox, (void const *)(& c), 16, (void *)0);
  }
  return (tmp___0);
}
}
static int t4_fw_halt(struct adapter *adap , unsigned int mbox , int force )
{
  int ret ;
  struct fw_reset_cmd c ;
  {
  ret = 0;
  if (mbox <= 7U) {
    {
    memset((void *)(& c), 0, 16UL);
    c.op_to_write = 40963U;
    c.retval_len16 = 16777216U;
    c.val = 50331648U;
    c.halt_pkd = 128U;
    ret = t4_wr_mbox(adap, (int )mbox, (void const *)(& c), 16, (void *)0);
    }
  } else {
  }
  if (ret == 0 || force != 0) {
    {
    t4_set_reg_field(adap, 31488U, 1U, 1U);
    t4_set_reg_field(adap, 12472U, 536870912U, 536870912U);
    }
  } else {
  }
  return (ret);
}
}
static int t4_fw_restart(struct adapter *adap , unsigned int mbox , int reset )
{
  int tmp ;
  int ms ;
  u32 tmp___0 ;
  {
  if (reset != 0) {
    {
    t4_set_reg_field(adap, 12472U, 536870912U, 0U);
    }
    if (mbox <= 7U) {
      {
      t4_set_reg_field(adap, 31488U, 1U, 0U);
      msleep(100U);
      tmp = t4_fw_reset(adap, mbox, 3);
      }
      if (tmp == 0) {
        return (0);
      } else {
      }
    } else {
    }
    {
    t4_write_reg(adap, 103464U, 3U);
    msleep(2000U);
    }
  } else {
    {
    t4_set_reg_field(adap, 31488U, 1U, 0U);
    ms = 0;
    }
    goto ldv_45881;
    ldv_45880:
    {
    tmp___0 = t4_read_reg(adap, 12472U);
    }
    if ((tmp___0 & 536870912U) == 0U) {
      return (0);
    } else {
    }
    {
    msleep(100U);
    ms = ms + 100;
    }
    ldv_45881: ;
    if (ms <= 9999) {
      goto ldv_45880;
    } else {
    }
    return (-110);
  }
  return (0);
}
}
static int t4_fw_upgrade(struct adapter *adap , unsigned int mbox , u8 const *fw_data ,
                         unsigned int size , int force )
{
  struct fw_hdr const *fw_hdr ;
  int reset ;
  int ret ;
  __u32 tmp ;
  int tmp___0 ;
  {
  {
  fw_hdr = (struct fw_hdr const *)fw_data;
  ret = t4_fw_halt(adap, mbox, force);
  }
  if (ret < 0 && force == 0) {
    return (ret);
  } else {
  }
  {
  ret = t4_load_fw(adap, fw_data, size);
  }
  if (ret < 0) {
    return (ret);
  } else {
  }
  {
  tmp = __fswab32(fw_hdr->flags);
  reset = (tmp & 1U) == 0U;
  tmp___0 = t4_fw_restart(adap, mbox, reset);
  }
  return (tmp___0);
}
}
int t4_fixup_host_params(struct adapter *adap , unsigned int page_size , unsigned int cache_line_size )
{
  unsigned int page_shift ;
  int tmp ;
  unsigned int sge_hps ;
  unsigned int stat_len ;
  unsigned int fl_align ;
  unsigned int fl_align_log ;
  int tmp___0 ;
  u32 tmp___1 ;
  u32 tmp___2 ;
  {
  {
  tmp = fls((int )page_size);
  page_shift = (unsigned int )(tmp + -1);
  sge_hps = page_shift - 10U;
  stat_len = cache_line_size > 64U ? 128U : 64U;
  fl_align = 32U > cache_line_size ? 32U : cache_line_size;
  tmp___0 = fls((int )fl_align);
  fl_align_log = (unsigned int )(tmp___0 + -1);
  t4_write_reg(adap, 4108U, ((((((sge_hps | (sge_hps << 4)) | (sge_hps << 8)) | (sge_hps << 12)) | (sge_hps << 16)) | (sge_hps << 20)) | (sge_hps << 24)) | (sge_hps << 28));
  t4_set_reg_field(adap, 4104U, 131184U, ((fl_align_log - 5U) << 4) | (stat_len != 64U ? 131072U : 0U));
  t4_write_reg(adap, 4164U, page_size);
  tmp___1 = t4_read_reg(adap, 4172U);
  t4_write_reg(adap, 4172U, ((tmp___1 + fl_align) - 1U) & - fl_align);
  tmp___2 = t4_read_reg(adap, 4176U);
  t4_write_reg(adap, 4176U, ((tmp___2 + fl_align) - 1U) & - fl_align);
  t4_write_reg(adap, 102776U, page_shift - 12U);
  }
  return (0);
}
}
int t4_fw_initialize(struct adapter *adap , unsigned int mbox )
{
  struct fw_initialize_cmd c ;
  int tmp ;
  {
  {
  memset((void *)(& c), 0, 16UL);
  c.op_to_write = 40966U;
  c.retval_len16 = 16777216U;
  tmp = t4_wr_mbox(adap, (int )mbox, (void const *)(& c), 16, (void *)0);
  }
  return (tmp);
}
}
int t4_query_params(struct adapter *adap , unsigned int mbox , unsigned int pf , unsigned int vf ,
                    unsigned int nparams , u32 const *params , u32 *val )
{
  int i ;
  int ret ;
  struct fw_params_cmd c ;
  __be32 *p ;
  __u32 tmp ;
  u32 const *tmp___0 ;
  __u32 tmp___1 ;
  u32 *tmp___2 ;
  __u32 tmp___3 ;
  {
  p = & c.param[0].mnem;
  if (nparams > 7U) {
    return (-22);
  } else {
  }
  {
  memset((void *)(& c), 0, 64UL);
  tmp = __fswab32(((pf << 8) | vf) | 146800640U);
  c.op_to_vfn = tmp;
  c.retval_len16 = 67108864U;
  i = 0;
  }
  goto ldv_45922;
  ldv_45921:
  {
  tmp___0 = params;
  params = params + 1;
  tmp___1 = __fswab32(*tmp___0);
  *p = tmp___1;
  i = i + 1;
  p = p + 2UL;
  }
  ldv_45922: ;
  if ((unsigned int )i < nparams) {
    goto ldv_45921;
  } else {
  }
  {
  ret = t4_wr_mbox(adap, (int )mbox, (void const *)(& c), 64, (void *)(& c));
  }
  if (ret == 0) {
    i = 0;
    p = & c.param[0].val;
    goto ldv_45925;
    ldv_45924:
    {
    tmp___2 = val;
    val = val + 1;
    tmp___3 = __fswab32(*p);
    *tmp___2 = tmp___3;
    i = i + 1;
    p = p + 2UL;
    }
    ldv_45925: ;
    if ((unsigned int )i < nparams) {
      goto ldv_45924;
    } else {
    }
  } else {
  }
  return (ret);
}
}
int t4_set_params(struct adapter *adap , unsigned int mbox , unsigned int pf , unsigned int vf ,
                  unsigned int nparams , u32 const *params , u32 const *val )
{
  struct fw_params_cmd c ;
  __be32 *p ;
  __u32 tmp ;
  __be32 *tmp___0 ;
  u32 const *tmp___1 ;
  __u32 tmp___2 ;
  __be32 *tmp___3 ;
  u32 const *tmp___4 ;
  __u32 tmp___5 ;
  unsigned int tmp___6 ;
  int tmp___7 ;
  {
  p = & c.param[0].mnem;
  if (nparams > 7U) {
    return (-22);
  } else {
  }
  {
  memset((void *)(& c), 0, 64UL);
  tmp = __fswab32(((pf << 8) | vf) | 144703488U);
  c.op_to_vfn = tmp;
  c.retval_len16 = 67108864U;
  }
  goto ldv_45939;
  ldv_45938:
  {
  tmp___0 = p;
  p = p + 1;
  tmp___1 = params;
  params = params + 1;
  tmp___2 = __fswab32(*tmp___1);
  *tmp___0 = tmp___2;
  tmp___3 = p;
  p = p + 1;
  tmp___4 = val;
  val = val + 1;
  tmp___5 = __fswab32(*tmp___4);
  *tmp___3 = tmp___5;
  }
  ldv_45939:
  tmp___6 = nparams;
  nparams = nparams - 1U;
  if (tmp___6 != 0U) {
    goto ldv_45938;
  } else {
  }
  {
  tmp___7 = t4_wr_mbox(adap, (int )mbox, (void const *)(& c), 64, (void *)0);
  }
  return (tmp___7);
}
}
int t4_cfg_pfvf(struct adapter *adap , unsigned int mbox , unsigned int pf , unsigned int vf ,
                unsigned int txq , unsigned int txq_eth_ctrl , unsigned int rxqi ,
                unsigned int rxq , unsigned int tc , unsigned int vi , unsigned int cmask ,
                unsigned int pmask , unsigned int nexact , unsigned int rcaps , unsigned int wxcaps )
{
  struct fw_pfvf_cmd c ;
  __u32 tmp ;
  __u32 tmp___0 ;
  __u32 tmp___1 ;
  __u32 tmp___2 ;
  __u32 tmp___3 ;
  int tmp___4 ;
  {
  {
  memset((void *)(& c), 0, 32UL);
  tmp = __fswab32(((pf << 8) | vf) | 161480704U);
  c.op_to_vfn = tmp;
  c.retval_len16 = 33554432U;
  tmp___0 = __fswab32((rxqi << 20) | rxq);
  c.niqflint_niq = tmp___0;
  tmp___1 = __fswab32(((cmask << 24) | (pmask << 20)) | txq);
  c.type_to_neq = tmp___1;
  tmp___2 = __fswab32(((tc << 24) | (vi << 16)) | nexact);
  c.tc_to_nexactf = tmp___2;
  tmp___3 = __fswab32(((rcaps << 24) | (wxcaps << 16)) | txq_eth_ctrl);
  c.r_caps_to_nethctrl = tmp___3;
  tmp___4 = t4_wr_mbox(adap, (int )mbox, (void const *)(& c), 32, (void *)0);
  }
  return (tmp___4);
}
}
int t4_alloc_vi(struct adapter *adap , unsigned int mbox , unsigned int port , unsigned int pf ,
                unsigned int vf , unsigned int nmac , u8 *mac , unsigned int *rss_size )
{
  int ret ;
  struct fw_vi_cmd c ;
  __u32 tmp ;
  __u16 tmp___0 ;
  __u16 tmp___1 ;
  {
  {
  memset((void *)(& c), 0, 64UL);
  tmp = __fswab32(((pf << 8) | vf) | 347078656U);
  c.op_to_vfn = tmp;
  c.alloc_to_len16 = 67108992U;
  c.portid_pkd = (int )((u8 )port) << 4U;
  c.nmac = (unsigned int )((u8 )nmac) - 1U;
  ret = t4_wr_mbox(adap, (int )mbox, (void const *)(& c), 64, (void *)(& c));
  }
  if (ret != 0) {
    return (ret);
  } else {
  }
  if ((unsigned long )mac != (unsigned long )((u8 *)0U)) {
    {
    memcpy((void *)mac, (void const *)(& c.mac), 6UL);
    }
    {
    if (nmac == 5U) {
      goto case_5;
    } else {
    }
    if (nmac == 4U) {
      goto case_4;
    } else {
    }
    if (nmac == 3U) {
      goto case_3;
    } else {
    }
    if (nmac == 2U) {
      goto case_2;
    } else {
    }
    goto switch_break;
    case_5:
    {
    memcpy((void *)mac + 24U, (void const *)(& c.nmac3), 6UL);
    }
    case_4:
    {
    memcpy((void *)mac + 18U, (void const *)(& c.nmac2), 6UL);
    }
    case_3:
    {
    memcpy((void *)mac + 12U, (void const *)(& c.nmac1), 6UL);
    }
    case_2:
    {
    memcpy((void *)mac + 6U, (void const *)(& c.nmac0), 6UL);
    }
    switch_break: ;
    }
  } else {
  }
  if ((unsigned long )rss_size != (unsigned long )((unsigned int *)0U)) {
    {
    tmp___0 = __fswab16((int )c.rsssize_pkd);
    *rss_size = (unsigned int )tmp___0 & 2047U;
    }
  } else {
  }
  {
  tmp___1 = __fswab16((int )c.type_viid);
  }
  return ((int )tmp___1 & 4095);
}
}
int t4_set_rxmode(struct adapter *adap , unsigned int mbox , unsigned int viid , int mtu ,
                  int promisc , int all_multi , int bcast , int vlanex , bool sleep_ok )
{
  struct fw_vi_rxmode_cmd c ;
  __u32 tmp ;
  __u32 tmp___0 ;
  int tmp___1 ;
  {
  if (mtu < 0) {
    mtu = 65535;
  } else {
  }
  if (promisc < 0) {
    promisc = 3;
  } else {
  }
  if (all_multi < 0) {
    all_multi = 3;
  } else {
  }
  if (bcast < 0) {
    bcast = 3;
  } else {
  }
  if (vlanex < 0) {
    vlanex = 3;
  } else {
  }
  {
  memset((void *)(& c), 0, 16UL);
  tmp = __fswab32(viid | 379584512U);
  c.op_to_viid = tmp;
  c.retval_len16 = 16777216U;
  tmp___0 = __fswab32((__u32 )(((((mtu << 16) | (promisc << 14)) | (all_multi << 12)) | (bcast << 10)) | (vlanex << 8)));
  c.mtu_to_vlanexen = tmp___0;
  tmp___1 = t4_wr_mbox_meat(adap, (int )mbox, (void const *)(& c), 16, (void *)0,
                            (int )sleep_ok);
  }
  return (tmp___1);
}
}
int t4_alloc_mac_filt(struct adapter *adap , unsigned int mbox , unsigned int viid ,
                      bool free___0 , unsigned int naddr , u8 const **addr , u16 *idx ,
                      u64 *hash , bool sleep_ok )
{
  int i ;
  int ret ;
  struct fw_vi_mac_cmd c ;
  struct fw_vi_mac_exact *p ;
  unsigned int max_naddr ;
  int tmp ;
  __u32 tmp___0 ;
  __u32 tmp___1 ;
  u16 index ;
  __u16 tmp___2 ;
  int tmp___3 ;
  {
  {
  tmp = is_t4(adap->params.chip);
  max_naddr = tmp != 0 ? 336U : 512U;
  }
  if (naddr > 7U) {
    return (-22);
  } else {
  }
  {
  memset((void *)(& c), 0, 64UL);
  tmp___0 = __fswab32(((int )free___0 ? 363855872U : 362807296U) | viid);
  c.op_to_viid = tmp___0;
  tmp___1 = __fswab32((unsigned int )((int )free___0 << 31) | (naddr + 2U) / 2U);
  c.freemacs_to_len16 = tmp___1;
  i = 0;
  p = (struct fw_vi_mac_exact *)(& c.u.exact);
  }
  goto ldv_46004;
  ldv_46003:
  {
  p->valid_to_idx = 65411U;
  memcpy((void *)(& p->macaddr), (void const *)*(addr + (unsigned long )i), 6UL);
  i = i + 1;
  p = p + 1;
  }
  ldv_46004: ;
  if ((unsigned int )i < naddr) {
    goto ldv_46003;
  } else {
  }
  {
  ret = t4_wr_mbox_meat(adap, (int )mbox, (void const *)(& c), 64, (void *)(& c),
                        (int )sleep_ok);
  }
  if (ret != 0) {
    return (ret);
  } else {
  }
  i = 0;
  p = (struct fw_vi_mac_exact *)(& c.u.exact);
  goto ldv_46008;
  ldv_46007:
  {
  tmp___2 = __fswab16((int )p->valid_to_idx);
  index = (unsigned int )tmp___2 & 1023U;
  }
  if ((unsigned long )idx != (unsigned long )((u16 *)0U)) {
    *(idx + (unsigned long )i) = (unsigned int )index < max_naddr ? index : 65535U;
  } else {
  }
  if ((unsigned int )index < max_naddr) {
    ret = ret + 1;
  } else
  if ((unsigned long )hash != (unsigned long )((u64 *)0ULL)) {
    {
    tmp___3 = hash_mac_addr(*(addr + (unsigned long )i));
    *hash = *hash | (1ULL << tmp___3);
    }
  } else {
  }
  i = i + 1;
  p = p + 1;
  ldv_46008: ;
  if ((unsigned int )i < naddr) {
    goto ldv_46007;
  } else {
  }
  return (ret);
}
}
int t4_change_mac(struct adapter *adap , unsigned int mbox , unsigned int viid , int idx ,
                  u8 const *addr , bool persist , bool add_smt )
{
  int ret ;
  int mode ;
  struct fw_vi_mac_cmd c ;
  struct fw_vi_mac_exact *p ;
  unsigned int max_mac_addr ;
  int tmp ;
  __u32 tmp___0 ;
  __u16 tmp___1 ;
  __u16 tmp___2 ;
  {
  {
  p = (struct fw_vi_mac_exact *)(& c.u.exact);
  tmp = is_t4(adap->params.chip);
  max_mac_addr = tmp != 0 ? 336U : 512U;
  }
  if (idx < 0) {
    idx = (int )persist ? 1022 : 1023;
  } else {
  }
  {
  mode = (int )add_smt ? 3 : 0;
  memset((void *)(& c), 0, 64UL);
  tmp___0 = __fswab32(viid | 362807296U);
  c.op_to_viid = tmp___0;
  c.freemacs_to_len16 = 16777216U;
  tmp___1 = __fswab16((int )((unsigned int )(((int )((__u16 )mode) << 10U) | (int )((__u16 )idx)) | 32768U));
  p->valid_to_idx = tmp___1;
  memcpy((void *)(& p->macaddr), (void const *)addr, 6UL);
  ret = t4_wr_mbox(adap, (int )mbox, (void const *)(& c), 64, (void *)(& c));
  }
  if (ret == 0) {
    {
    tmp___2 = __fswab16((int )p->valid_to_idx);
    ret = (int )tmp___2 & 1023;
    }
    if ((unsigned int )ret >= max_mac_addr) {
      ret = -12;
    } else {
    }
  } else {
  }
  return (ret);
}
}
int t4_set_addr_hash(struct adapter *adap , unsigned int mbox , unsigned int viid ,
                     bool ucast , u64 vec , bool sleep_ok )
{
  struct fw_vi_mac_cmd c ;
  __u32 tmp ;
  __u32 tmp___0 ;
  __u64 tmp___1 ;
  int tmp___2 ;
  {
  {
  memset((void *)(& c), 0, 64UL);
  tmp = __fswab32(viid | 362807296U);
  c.op_to_viid = tmp;
  tmp___0 = __fswab32((unsigned int )((int )ucast << 22) | 8388609U);
  c.freemacs_to_len16 = tmp___0;
  tmp___1 = __fswab64(vec);
  c.u.hash.hashvec = tmp___1;
  tmp___2 = t4_wr_mbox_meat(adap, (int )mbox, (void const *)(& c), 64, (void *)0,
                            (int )sleep_ok);
  }
  return (tmp___2);
}
}
int t4_enable_vi(struct adapter *adap , unsigned int mbox , unsigned int viid , bool rx_en ,
                 bool tx_en )
{
  struct fw_vi_enable_cmd c ;
  __u32 tmp ;
  __u32 tmp___0 ;
  int tmp___1 ;
  {
  {
  memset((void *)(& c), 0, 16UL);
  tmp = __fswab32(viid | 395313152U);
  c.op_to_viid = tmp;
  tmp___0 = __fswab32((__u32 )((((int )rx_en << 31) | ((int )tx_en << 30)) | 1));
  c.ien_to_len16 = tmp___0;
  tmp___1 = t4_wr_mbox(adap, (int )mbox, (void const *)(& c), 16, (void *)0);
  }
  return (tmp___1);
}
}
int t4_identify_port(struct adapter *adap , unsigned int mbox , unsigned int viid ,
                     unsigned int nblinks )
{
  struct fw_vi_enable_cmd c ;
  __u32 tmp ;
  __u16 tmp___0 ;
  int tmp___1 ;
  {
  {
  memset((void *)(& c), 0, 16UL);
  tmp = __fswab32(viid | 395313152U);
  c.op_to_viid = tmp;
  c.ien_to_len16 = 16777248U;
  tmp___0 = __fswab16((int )((__u16 )nblinks));
  c.blinkdur = tmp___0;
  tmp___1 = t4_wr_mbox(adap, (int )mbox, (void const *)(& c), 16, (void *)0);
  }
  return (tmp___1);
}
}
int t4_iq_free(struct adapter *adap , unsigned int mbox , unsigned int pf , unsigned int vf ,
               unsigned int iqtype , unsigned int iqid , unsigned int fl0id , unsigned int fl1id )
{
  struct fw_iq_cmd c ;
  __u32 tmp ;
  __u32 tmp___0 ;
  __u16 tmp___1 ;
  __u16 tmp___2 ;
  __u16 tmp___3 ;
  int tmp___4 ;
  {
  {
  memset((void *)(& c), 0, 64UL);
  tmp = __fswab32(((pf << 8) | vf) | 277872640U);
  c.op_to_vfn = tmp;
  c.alloc_to_len16 = 67108928U;
  tmp___0 = __fswab32(iqtype << 29);
  c.type_to_iqandstindex = tmp___0;
  tmp___1 = __fswab16((int )((__u16 )iqid));
  c.iqid = tmp___1;
  tmp___2 = __fswab16((int )((__u16 )fl0id));
  c.fl0id = tmp___2;
  tmp___3 = __fswab16((int )((__u16 )fl1id));
  c.fl1id = tmp___3;
  tmp___4 = t4_wr_mbox(adap, (int )mbox, (void const *)(& c), 64, (void *)0);
  }
  return (tmp___4);
}
}
int t4_eth_eq_free(struct adapter *adap , unsigned int mbox , unsigned int pf , unsigned int vf ,
                   unsigned int eqid )
{
  struct fw_eq_eth_cmd c ;
  __u32 tmp ;
  __u32 tmp___0 ;
  int tmp___1 ;
  {
  {
  memset((void *)(& c), 0, 48UL);
  tmp = __fswab32(((pf << 8) | vf) | 311427072U);
  c.op_to_vfn = tmp;
  c.alloc_to_len16 = 50331712U;
  tmp___0 = __fswab32(eqid);
  c.eqid_pkd = tmp___0;
  tmp___1 = t4_wr_mbox(adap, (int )mbox, (void const *)(& c), 48, (void *)0);
  }
  return (tmp___1);
}
}
int t4_ctrl_eq_free(struct adapter *adap , unsigned int mbox , unsigned int pf , unsigned int vf ,
                    unsigned int eqid )
{
  struct fw_eq_ctrl_cmd c ;
  __u32 tmp ;
  __u32 tmp___0 ;
  int tmp___1 ;
  {
  {
  memset((void *)(& c), 0, 32UL);
  tmp = __fswab32(((pf << 8) | vf) | 328204288U);
  c.op_to_vfn = tmp;
  c.alloc_to_len16 = 33554496U;
  tmp___0 = __fswab32(eqid);
  c.cmpliqid_eqid = tmp___0;
  tmp___1 = t4_wr_mbox(adap, (int )mbox, (void const *)(& c), 32, (void *)0);
  }
  return (tmp___1);
}
}
int t4_ofld_eq_free(struct adapter *adap , unsigned int mbox , unsigned int pf , unsigned int vf ,
                    unsigned int eqid )
{
  struct fw_eq_ofld_cmd c ;
  __u32 tmp ;
  __u32 tmp___0 ;
  int tmp___1 ;
  {
  {
  memset((void *)(& c), 0, 32UL);
  tmp = __fswab32(((pf << 8) | vf) | 563085312U);
  c.op_to_vfn = tmp;
  c.alloc_to_len16 = 33554496U;
  tmp___0 = __fswab32(eqid);
  c.eqid_pkd = tmp___0;
  tmp___1 = t4_wr_mbox(adap, (int )mbox, (void const *)(& c), 32, (void *)0);
  }
  return (tmp___1);
}
}
int t4_handle_fw_rpl(struct adapter *adap , __be64 const *rpl )
{
  u8 opcode ;
  int speed ;
  int fc ;
  struct fw_port_cmd const *p ;
  int chan ;
  __u32 tmp ;
  int port ;
  struct port_info *pi ;
  struct port_info *tmp___0 ;
  struct link_config *lc ;
  u32 stat ;
  __u32 tmp___1 ;
  int link_ok ;
  u32 mod ;
  {
  opcode = *((u8 const *)rpl);
  if ((unsigned int )opcode == 27U) {
    {
    speed = 0;
    fc = 0;
    p = (struct fw_port_cmd const *)rpl;
    tmp = __fswab32(p->op_to_portid);
    chan = (int )tmp & 15;
    port = (int )adap->chan_map[chan];
    tmp___0 = adap2pinfo(adap, port);
    pi = tmp___0;
    lc = & pi->link_cfg;
    tmp___1 = __fswab32(p->u.info.lstatus_to_modtype);
    stat = tmp___1;
    link_ok = (int )stat < 0;
    mod = stat & 31U;
    }
    if ((stat & 4194304U) != 0U) {
      fc = fc | 1;
    } else {
    }
    if ((stat & 8388608U) != 0U) {
      fc = fc | 2;
    } else {
    }
    if ((stat & 16777216U) != 0U) {
      speed = 100;
    } else
    if ((stat & 33554432U) != 0U) {
      speed = 1000;
    } else
    if ((stat & 134217728U) != 0U) {
      speed = 10000;
    } else {
    }
    if ((link_ok != (int )lc->link_ok || speed != (int )lc->speed) || fc != (int )lc->fc) {
      {
      lc->link_ok = (unsigned char )link_ok;
      lc->speed = (unsigned short )speed;
      lc->fc = (unsigned char )fc;
      t4_os_link_changed(adap, port, link_ok);
      }
    } else {
    }
    if (mod != (u32 )pi->mod_type) {
      {
      pi->mod_type = (u8 )mod;
      t4_os_portmod_changed((struct adapter const *)adap, port);
      }
    } else {
    }
  } else {
  }
  return (0);
}
}
static void get_pci_mode(struct adapter *adapter , struct pci_params *p )
{
  u16 val ;
  bool tmp ;
  {
  {
  tmp = pci_is_pcie(adapter->pdev);
  }
  if ((int )tmp) {
    {
    pcie_capability_read_word(adapter->pdev, 18, & val);
    p->speed = (unsigned int )((unsigned char )val) & 15U;
    p->width = (unsigned char )(((int )val & 1008) >> 4);
    }
  } else {
  }
  return;
}
}
static void init_link_config(struct link_config *lc , unsigned int caps )
{
  unsigned char tmp ;
  {
  lc->supported = (unsigned short )caps;
  lc->requested_speed = 0U;
  lc->speed = 0U;
  tmp = 3U;
  lc->fc = tmp;
  lc->requested_fc = tmp;
  if (((int )lc->supported & 256) != 0) {
    lc->advertising = (unsigned int )lc->supported & 267U;
    lc->autoneg = 1U;
    lc->requested_fc = (unsigned int )lc->requested_fc | 4U;
  } else {
    lc->advertising = 0U;
    lc->autoneg = 0U;
  }
  return;
}
}
int t4_wait_dev_ready(struct adapter *adap )
{
  u32 tmp ;
  u32 tmp___0 ;
  {
  {
  tmp = t4_read_reg(adap, 103424U);
  }
  if (tmp != 4294967295U) {
    return (0);
  } else {
  }
  {
  msleep(500U);
  tmp___0 = t4_read_reg(adap, 103424U);
  }
  return (tmp___0 != 4294967295U ? 0 : -5);
}
}
static int get_flash_params(struct adapter *adap )
{
  int ret ;
  u32 info ;
  u32 tmp ;
  {
  {
  ret = sf1_write(adap, 1U, 1, 0, 159U);
  }
  if (ret == 0) {
    {
    ret = sf1_read(adap, 3U, 0, 1, & info);
    }
  } else {
  }
  {
  t4_write_reg(adap, 103420U, 0U);
  }
  if (ret != 0) {
    return (ret);
  } else {
  }
  if ((info & 255U) != 32U) {
    return (-22);
  } else {
  }
  info = info >> 16;
  if (info - 20U <= 3U) {
    adap->params.sf_nsec = (unsigned int )(1 << (int )(info - 16U));
  } else
  if (info == 24U) {
    adap->params.sf_nsec = 64U;
  } else {
    return (-22);
  }
  {
  adap->params.sf_size = (unsigned int )(1 << (int )info);
  tmp = t4_read_reg(adap, 31488U);
  adap->params.sf_fw_start = tmp & 4294967040U;
  }
  return (0);
}
}
int t4_prep_adapter(struct adapter *adapter )
{
  int ret ;
  int ver ;
  uint16_t device_id ;
  u32 pl_rev ;
  u32 tmp ;
  {
  {
  ret = t4_wait_dev_ready(adapter);
  }
  if (ret < 0) {
    return (ret);
  } else {
  }
  {
  get_pci_mode(adapter, & adapter->params.pci);
  tmp = t4_read_reg(adapter, 103484U);
  pl_rev = tmp & 15U;
  ret = get_flash_params(adapter);
  }
  if (ret < 0) {
    {
    dev_err((struct device const *)adapter->pdev_dev, "error %d identifying flash\n",
            ret);
    }
    return (ret);
  } else {
  }
  {
  pci_read_config_word((struct pci_dev const *)adapter->pdev, 2, & device_id);
  ver = (int )device_id >> 12;
  adapter->params.chip = 0;
  }
  {
  if (ver == 4) {
    goto case_4;
  } else {
  }
  if (ver == 5) {
    goto case_5;
  } else {
  }
  goto switch_default;
  case_4:
  adapter->params.chip = (enum chip_type )(((unsigned int )adapter->params.chip | pl_rev) | 64U);
  goto ldv_46123;
  case_5:
  adapter->params.chip = (enum chip_type )(((unsigned int )adapter->params.chip | pl_rev) | 80U);
  goto ldv_46123;
  switch_default:
  {
  dev_err((struct device const *)adapter->pdev_dev, "Device %d is not supported\n",
          (int )device_id);
  }
  return (-22);
  switch_break: ;
  }
  ldv_46123:
  {
  init_cong_ctrl((unsigned short *)(& adapter->params.a_wnd), (unsigned short *)(& adapter->params.b_wnd));
  adapter->params.nports = 1U;
  adapter->params.portvec = 1U;
  adapter->params.vpd.cclk = 50000U;
  }
  return (0);
}
}
int t4_init_tp_params(struct adapter *adap )
{
  int chan ;
  u32 v ;
  {
  {
  v = t4_read_reg(adap, 32144U);
  adap->params.tp.tre = (v & 16711680U) >> 16;
  adap->params.tp.dack_re = v & 255U;
  chan = 0;
  }
  goto ldv_46132;
  ldv_46131:
  adap->params.tp.tx_modq[chan] = (unsigned short )chan;
  chan = chan + 1;
  ldv_46132: ;
  if (chan <= 3) {
    goto ldv_46131;
  } else {
  }
  {
  t4_read_indirect(adap, 32320U, 32324U, & adap->params.tp.vlan_pri_map, 1U, 320U);
  t4_read_indirect(adap, 32320U, 32324U, & adap->params.tp.ingress_config, 1U, 321U);
  adap->params.tp.vlan_shift = t4_filter_field_shift((struct adapter const *)adap,
                                                     8);
  adap->params.tp.vnic_shift = t4_filter_field_shift((struct adapter const *)adap,
                                                     4);
  adap->params.tp.port_shift = t4_filter_field_shift((struct adapter const *)adap,
                                                     2);
  adap->params.tp.protocol_shift = t4_filter_field_shift((struct adapter const *)adap,
                                                         32);
  }
  if ((adap->params.tp.ingress_config & 2048U) == 0U) {
    adap->params.tp.vnic_shift = -1;
  } else {
  }
  return (0);
}
}
int t4_filter_field_shift(struct adapter const *adap , int filter_sel )
{
  unsigned int filter_mode ;
  unsigned int sel ;
  int field_shift ;
  {
  filter_mode = adap->params.tp.vlan_pri_map;
  if ((filter_mode & (unsigned int )filter_sel) == 0U) {
    return (-1);
  } else {
  }
  sel = 1U;
  field_shift = 0;
  goto ldv_46153;
  ldv_46152: ;
  {
  if ((filter_mode & sel) == 1U) {
    goto case_1;
  } else {
  }
  if ((filter_mode & sel) == 2U) {
    goto case_2;
  } else {
  }
  if ((filter_mode & sel) == 4U) {
    goto case_4;
  } else {
  }
  if ((filter_mode & sel) == 8U) {
    goto case_8;
  } else {
  }
  if ((filter_mode & sel) == 16U) {
    goto case_16;
  } else {
  }
  if ((filter_mode & sel) == 32U) {
    goto case_32;
  } else {
  }
  if ((filter_mode & sel) == 64U) {
    goto case_64;
  } else {
  }
  if ((filter_mode & sel) == 128U) {
    goto case_128;
  } else {
  }
  if ((filter_mode & sel) == 256U) {
    goto case_256;
  } else {
  }
  if ((filter_mode & sel) == 512U) {
    goto case_512;
  } else {
  }
  goto switch_break;
  case_1:
  field_shift = field_shift + 1;
  goto ldv_46142;
  case_2:
  field_shift = field_shift + 3;
  goto ldv_46142;
  case_4:
  field_shift = field_shift + 17;
  goto ldv_46142;
  case_8:
  field_shift = field_shift + 17;
  goto ldv_46142;
  case_16:
  field_shift = field_shift + 8;
  goto ldv_46142;
  case_32:
  field_shift = field_shift + 8;
  goto ldv_46142;
  case_64:
  field_shift = field_shift + 16;
  goto ldv_46142;
  case_128:
  field_shift = field_shift + 9;
  goto ldv_46142;
  case_256:
  field_shift = field_shift + 3;
  goto ldv_46142;
  case_512:
  field_shift = field_shift + 1;
  goto ldv_46142;
  switch_break: ;
  }
  ldv_46142:
  sel = sel << 1;
  ldv_46153: ;
  if (sel < (unsigned int )filter_sel) {
    goto ldv_46152;
  } else {
  }
  return (field_shift);
}
}
int t4_port_init(struct adapter *adap , int mbox , int pf , int vf )
{
  u8 addr[6U] ;
  int ret ;
  int i ;
  int j ;
  struct fw_port_cmd c ;
  struct fw_rss_vi_config_cmd rvc ;
  unsigned int rss_size ;
  struct port_info *p ;
  struct port_info *tmp ;
  __u32 tmp___0 ;
  __u32 tmp___1 ;
  __u32 tmp___2 ;
  __u32 tmp___3 ;
  __u16 tmp___4 ;
  {
  {
  j = 0;
  memset((void *)(& c), 0, 32UL);
  memset((void *)(& rvc), 0, 32UL);
  i = 0;
  }
  goto ldv_46173;
  ldv_46172:
  {
  tmp = adap2pinfo(adap, i);
  p = tmp;
  }
  goto ldv_46170;
  ldv_46169:
  j = j + 1;
  ldv_46170: ;
  if ((((int )adap->params.portvec >> j) & 1) == 0) {
    goto ldv_46169;
  } else {
  }
  {
  tmp___0 = __fswab32((unsigned int )j | 465567744U);
  c.op_to_portid = tmp___0;
  c.action_to_len16 = 33555200U;
  ret = t4_wr_mbox(adap, mbox, (void const *)(& c), 32, (void *)(& c));
  }
  if (ret != 0) {
    return (ret);
  } else {
  }
  {
  ret = t4_alloc_vi(adap, (unsigned int )mbox, (unsigned int )j, (unsigned int )pf,
                    (unsigned int )vf, 1U, (u8 *)(& addr), & rss_size);
  }
  if (ret < 0) {
    return (ret);
  } else {
  }
  {
  p->viid = (u16 )ret;
  p->tx_chan = (u8 )j;
  p->lport = (u8 )j;
  p->rss_size = (u16 )rss_size;
  memcpy((void *)(adap->port[i])->dev_addr, (void const *)(& addr), 6UL);
  tmp___1 = __fswab32(c.u.info.lstatus_to_modtype);
  ret = (int )tmp___1;
  p->mdio_addr = ((unsigned int )ret & 2097152U) != 0U ? (int )((s8 )(ret >> 16)) & 31 : -1;
  p->port_type = (unsigned int )((u8 )(ret >> 8)) & 31U;
  p->mod_type = 0U;
  tmp___2 = __fswab32((unsigned int )p->viid | 599785472U);
  rvc.op_to_viid = tmp___2;
  rvc.retval_len16 = 33554432U;
  ret = t4_wr_mbox(adap, mbox, (void const *)(& rvc), 32, (void *)(& rvc));
  }
  if (ret != 0) {
    return (ret);
  } else {
  }
  {
  tmp___3 = __fswab32(rvc.u.basicvirtual.defaultq_to_udpen);
  p->rss_mode = (u8 )tmp___3;
  tmp___4 = __fswab16((int )c.u.info.pcap);
  init_link_config(& p->link_cfg, (unsigned int )tmp___4);
  j = j + 1;
  i = i + 1;
  }
  ldv_46173: ;
  if (i < (int )adap->params.nports) {
    goto ldv_46172;
  } else {
  }
  return (0);
}
}
void __builtin_prefetch(void const * , ...) ;
extern struct pv_irq_ops pv_irq_ops ;
__inline static unsigned long __ffs(unsigned long word )
{
  {
  __asm__ ("rep; bsf %1,%0": "=r" (word): "rm" (word));
  return (word);
}
}
extern unsigned long __phys_addr(unsigned long ) ;
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
  {
  __edi = __edi;
  __esi = __esi;
  __edx = __edx;
  __ecx = __ecx;
  __eax = __eax;
  tmp = ldv__builtin_expect((unsigned long )pv_irq_ops.save_fl.func == (unsigned long )((void *)0),
                         0L);
  }
  if (tmp != 0L) {
    {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"/home/debian/klever-work/native-scheduler-work-dir/scheduler/jobs/7cdfae59d3ac602223400f61d8829e28/klever-core-work-dir/46e2119/linux-kernel-locking-mutex/lkbce/arch/x86/include/asm/paravirt.h"),
                         "i" (804), "i" (12UL));
    __builtin_unreachable();
    }
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
__inline static int preempt_count(void)
{
  int pfo_ret__ ;
  {
  {
  if (4UL == 1UL) {
    goto case_1;
  } else {
  }
  if (4UL == 2UL) {
    goto case_2;
  } else {
  }
  if (4UL == 4UL) {
    goto case_4;
  } else {
  }
  if (4UL == 8UL) {
    goto case_8;
  } else {
  }
  goto switch_default;
  case_1:
  __asm__ ("movb %%gs:%P1,%0": "=q" (pfo_ret__): "m" (__preempt_count));
  goto ldv_6306;
  case_2:
  __asm__ ("movw %%gs:%P1,%0": "=r" (pfo_ret__): "m" (__preempt_count));
  goto ldv_6306;
  case_4:
  __asm__ ("movl %%gs:%P1,%0": "=r" (pfo_ret__): "m" (__preempt_count));
  goto ldv_6306;
  case_8:
  __asm__ ("movq %%gs:%P1,%0": "=r" (pfo_ret__): "m" (__preempt_count));
  goto ldv_6306;
  switch_default:
  {
  __bad_percpu_size();
  }
  switch_break: ;
  }
  ldv_6306: ;
  return (pfo_ret__ & 2147483647);
}
}
extern void __local_bh_disable_ip(unsigned long , unsigned int ) ;
__inline static void local_bh_disable(void)
{
  {
  {
  __local_bh_disable_ip((unsigned long )((void *)0), 512U);
  }
  return;
}
}
extern void __local_bh_enable_ip(unsigned long , unsigned int ) ;
__inline static void local_bh_enable(void)
{
  {
  {
  __local_bh_enable_ip((unsigned long )((void *)0), 512U);
  }
  return;
}
}
extern int _raw_spin_trylock(raw_spinlock_t * ) ;
__inline static int spin_trylock(spinlock_t *lock )
{
  int tmp ;
  {
  {
  tmp = _raw_spin_trylock(& lock->__annonCompField19.rlock);
  }
  return (tmp);
}
}
extern void init_timer_key(struct timer_list * , unsigned int , char const * ,
                           struct lock_class_key * ) ;
extern int mod_timer(struct timer_list * , unsigned long ) ;
static int ldv_mod_timer_15(struct timer_list *ldv_func_arg1 , unsigned long ldv_func_arg2 ) ;
static int ldv_mod_timer_16(struct timer_list *ldv_func_arg1 , unsigned long ldv_func_arg2 ) ;
static int ldv_mod_timer_17(struct timer_list *ldv_func_arg1 , unsigned long ldv_func_arg2 ) ;
static int ldv_mod_timer_18(struct timer_list *ldv_func_arg1 , unsigned long ldv_func_arg2 ) ;
extern int del_timer_sync(struct timer_list * ) ;
static int ldv_del_timer_sync_19(struct timer_list *ldv_func_arg1 ) ;
static int ldv_del_timer_sync_20(struct timer_list *ldv_func_arg1 ) ;
extern void dump_page(struct page * , char * ) ;
extern pg_data_t *node_data[] ;
extern int cpu_number ;
extern void __bad_size_call_parameter(void) ;
extern int numa_node ;
__inline static int numa_node_id(void)
{
  int pscr_ret__ ;
  void const *__vpp_verify ;
  int pfo_ret__ ;
  int pfo_ret_____0 ;
  int pfo_ret_____1 ;
  int pfo_ret_____2 ;
  {
  __vpp_verify = (void const *)0;
  {
  if (4UL == 1UL) {
    goto case_1;
  } else {
  }
  if (4UL == 2UL) {
    goto case_2___0;
  } else {
  }
  if (4UL == 4UL) {
    goto case_4___1;
  } else {
  }
  if (4UL == 8UL) {
    goto case_8___2;
  } else {
  }
  goto switch_default___3;
  case_1: ;
  {
  if (4UL == 1UL) {
    goto case_1___0;
  } else {
  }
  if (4UL == 2UL) {
    goto case_2;
  } else {
  }
  if (4UL == 4UL) {
    goto case_4;
  } else {
  }
  if (4UL == 8UL) {
    goto case_8;
  } else {
  }
  goto switch_default;
  case_1___0:
  __asm__ ("movb %%gs:%P1,%0": "=q" (pfo_ret__): "m" (numa_node));
  goto ldv_13996;
  case_2:
  __asm__ ("movw %%gs:%P1,%0": "=r" (pfo_ret__): "m" (numa_node));
  goto ldv_13996;
  case_4:
  __asm__ ("movl %%gs:%P1,%0": "=r" (pfo_ret__): "m" (numa_node));
  goto ldv_13996;
  case_8:
  __asm__ ("movq %%gs:%P1,%0": "=r" (pfo_ret__): "m" (numa_node));
  goto ldv_13996;
  switch_default:
  {
  __bad_percpu_size();
  }
  switch_break___0: ;
  }
  ldv_13996:
  pscr_ret__ = pfo_ret__;
  goto ldv_14002;
  case_2___0: ;
  {
  if (4UL == 1UL) {
    goto case_1___1;
  } else {
  }
  if (4UL == 2UL) {
    goto case_2___1;
  } else {
  }
  if (4UL == 4UL) {
    goto case_4___0;
  } else {
  }
  if (4UL == 8UL) {
    goto case_8___0;
  } else {
  }
  goto switch_default___0;
  case_1___1:
  __asm__ ("movb %%gs:%P1,%0": "=q" (pfo_ret_____0): "m" (numa_node));
  goto ldv_14006;
  case_2___1:
  __asm__ ("movw %%gs:%P1,%0": "=r" (pfo_ret_____0): "m" (numa_node));
  goto ldv_14006;
  case_4___0:
  __asm__ ("movl %%gs:%P1,%0": "=r" (pfo_ret_____0): "m" (numa_node));
  goto ldv_14006;
  case_8___0:
  __asm__ ("movq %%gs:%P1,%0": "=r" (pfo_ret_____0): "m" (numa_node));
  goto ldv_14006;
  switch_default___0:
  {
  __bad_percpu_size();
  }
  switch_break___1: ;
  }
  ldv_14006:
  pscr_ret__ = pfo_ret_____0;
  goto ldv_14002;
  case_4___1: ;
  {
  if (4UL == 1UL) {
    goto case_1___2;
  } else {
  }
  if (4UL == 2UL) {
    goto case_2___2;
  } else {
  }
  if (4UL == 4UL) {
    goto case_4___2;
  } else {
  }
  if (4UL == 8UL) {
    goto case_8___1;
  } else {
  }
  goto switch_default___1;
  case_1___2:
  __asm__ ("movb %%gs:%P1,%0": "=q" (pfo_ret_____1): "m" (numa_node));
  goto ldv_14015;
  case_2___2:
  __asm__ ("movw %%gs:%P1,%0": "=r" (pfo_ret_____1): "m" (numa_node));
  goto ldv_14015;
  case_4___2:
  __asm__ ("movl %%gs:%P1,%0": "=r" (pfo_ret_____1): "m" (numa_node));
  goto ldv_14015;
  case_8___1:
  __asm__ ("movq %%gs:%P1,%0": "=r" (pfo_ret_____1): "m" (numa_node));
  goto ldv_14015;
  switch_default___1:
  {
  __bad_percpu_size();
  }
  switch_break___2: ;
  }
  ldv_14015:
  pscr_ret__ = pfo_ret_____1;
  goto ldv_14002;
  case_8___2: ;
  {
  if (4UL == 1UL) {
    goto case_1___3;
  } else {
  }
  if (4UL == 2UL) {
    goto case_2___3;
  } else {
  }
  if (4UL == 4UL) {
    goto case_4___3;
  } else {
  }
  if (4UL == 8UL) {
    goto case_8___3;
  } else {
  }
  goto switch_default___2;
  case_1___3:
  __asm__ ("movb %%gs:%P1,%0": "=q" (pfo_ret_____2): "m" (numa_node));
  goto ldv_14024;
  case_2___3:
  __asm__ ("movw %%gs:%P1,%0": "=r" (pfo_ret_____2): "m" (numa_node));
  goto ldv_14024;
  case_4___3:
  __asm__ ("movl %%gs:%P1,%0": "=r" (pfo_ret_____2): "m" (numa_node));
  goto ldv_14024;
  case_8___3:
  __asm__ ("movq %%gs:%P1,%0": "=r" (pfo_ret_____2): "m" (numa_node));
  goto ldv_14024;
  switch_default___2:
  {
  __bad_percpu_size();
  }
  switch_break___3: ;
  }
  ldv_14024:
  pscr_ret__ = pfo_ret_____2;
  goto ldv_14002;
  switch_default___3:
  {
  __bad_size_call_parameter();
  }
  goto ldv_14002;
  switch_break: ;
  }
  ldv_14002: ;
  return (pscr_ret__);
}
}
__inline static int gfp_zonelist(gfp_t flags )
{
  long tmp ;
  {
  {
  tmp = ldv__builtin_expect((flags & 262144U) != 0U, 0L);
  }
  if (tmp != 0L) {
    return (1);
  } else {
  }
  return (0);
}
}
__inline static struct zonelist *node_zonelist(int nid , gfp_t flags )
{
  int tmp ;
  {
  {
  tmp = gfp_zonelist(flags);
  }
  return ((struct zonelist *)(& (node_data[nid])->node_zonelists) + (unsigned long )tmp);
}
}
extern struct page *__alloc_pages_nodemask(gfp_t , unsigned int , struct zonelist * ,
                                           nodemask_t * ) ;
__inline static struct page *__alloc_pages(gfp_t gfp_mask , unsigned int order , struct zonelist *zonelist )
{
  struct page *tmp ;
  {
  {
  tmp = __alloc_pages_nodemask(gfp_mask, order, zonelist, (nodemask_t *)0);
  }
  return (tmp);
}
}
__inline static struct page *alloc_pages_node(int nid , gfp_t gfp_mask , unsigned int order )
{
  struct zonelist *tmp ;
  struct page *tmp___0 ;
  {
  if (nid < 0) {
    {
    nid = numa_node_id();
    }
  } else {
  }
  {
  tmp = node_zonelist(nid, gfp_mask);
  tmp___0 = __alloc_pages(gfp_mask, order, tmp);
  }
  return (tmp___0);
}
}
extern struct page *alloc_pages_current(gfp_t , unsigned int ) ;
__inline static struct page *alloc_pages(gfp_t gfp_mask , unsigned int order )
{
  struct page *tmp ;
  {
  {
  tmp = alloc_pages_current(gfp_mask, order);
  }
  return (tmp);
}
}
extern void __free_pages(struct page * , unsigned int ) ;
__inline static int PageTail(struct page const *page )
{
  int tmp ;
  {
  {
  tmp = constant_test_bit(15L, (unsigned long const volatile *)(& page->flags));
  }
  return (tmp);
}
}
__inline static struct page *compound_head(struct page *page )
{
  struct page *head ;
  int tmp ;
  long tmp___0 ;
  int tmp___1 ;
  long tmp___2 ;
  {
  {
  tmp___1 = PageTail((struct page const *)page);
  tmp___2 = ldv__builtin_expect(tmp___1 != 0, 0L);
  }
  if (tmp___2 != 0L) {
    {
    head = page->__annonCompField46.first_page;
    __asm__ volatile ("": : : "memory");
    tmp = PageTail((struct page const *)page);
    tmp___0 = ldv__builtin_expect(tmp != 0, 1L);
    }
    if (tmp___0 != 0L) {
      return (head);
    } else {
    }
  } else {
  }
  return (page);
}
}
extern bool __get_page_tail(struct page * ) ;
__inline static void get_page(struct page *page )
{
  bool tmp ;
  long tmp___0 ;
  int tmp___1 ;
  long tmp___2 ;
  int tmp___3 ;
  long tmp___4 ;
  {
  {
  tmp___1 = PageTail((struct page const *)page);
  tmp___2 = ldv__builtin_expect(tmp___1 != 0, 0L);
  }
  if (tmp___2 != 0L) {
    {
    tmp = __get_page_tail(page);
    tmp___0 = ldv__builtin_expect((long )tmp, 1L);
    }
    if (tmp___0 != 0L) {
      return;
    } else {
    }
  } else {
  }
  {
  tmp___3 = atomic_read((atomic_t const *)(& page->__annonCompField43.__annonCompField42.__annonCompField41._count));
  tmp___4 = ldv__builtin_expect(tmp___3 <= 0, 0L);
  }
  if (tmp___4 != 0L) {
    {
    dump_page(page, (char *)0);
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"include/linux/mm.h"),
                         "i" (488), "i" (12UL));
    __builtin_unreachable();
    }
  } else {
  }
  {
  atomic_inc(& page->__annonCompField43.__annonCompField42.__annonCompField41._count);
  }
  return;
}
}
extern void put_page(struct page * ) ;
__inline static void *lowmem_page_address(struct page const *page )
{
  {
  return ((void *)((unsigned long )((unsigned long long )(((long )page + 24189255811072L) / 64L) << 12) + 0xffff880000000000UL));
}
}
__inline static void kmemcheck_mark_initialized(void *address , unsigned int n )
{
  {
  return;
}
}
extern void *__kmalloc_node(size_t , gfp_t , int ) ;
__inline static void *kmalloc_node(size_t size , gfp_t flags , int node )
{
  void *tmp___1 ;
  {
  {
  tmp___1 = __kmalloc_node(size, flags, node);
  }
  return (tmp___1);
}
}
__inline static void *kzalloc_node(size_t size , gfp_t flags , int node )
{
  void *tmp ;
  {
  {
  tmp = kmalloc_node(size, flags | 32768U, node);
  }
  return (tmp);
}
}
__inline static __wsum csum_unfold(__sum16 n )
{
  {
  return ((__wsum )n);
}
}
__inline static int valid_dma_direction(int dma_direction )
{
  {
  return ((unsigned int )dma_direction <= 2U);
}
}
__inline static int is_device_dma_capable(struct device *dev )
{
  {
  return ((unsigned long )dev->dma_mask != (unsigned long )((u64 *)0ULL) && *(dev->dma_mask) != 0ULL);
}
}
extern void debug_dma_map_page(struct device * , struct page * , size_t , size_t ,
                               int , dma_addr_t , bool ) ;
extern void debug_dma_mapping_error(struct device * , dma_addr_t ) ;
extern void debug_dma_unmap_page(struct device * , dma_addr_t , size_t , int ,
                                 bool ) ;
extern void debug_dma_alloc_coherent(struct device * , size_t , dma_addr_t , void * ) ;
extern void debug_dma_free_coherent(struct device * , size_t , void * , dma_addr_t ) ;
extern void debug_dma_sync_single_for_cpu(struct device * , dma_addr_t , size_t ,
                                          int ) ;
extern struct device x86_dma_fallback_dev ;
extern struct dma_map_ops *dma_ops ;
__inline static struct dma_map_ops *get_dma_ops(struct device *dev )
{
  long tmp ;
  {
  {
  tmp = ldv__builtin_expect((unsigned long )dev == (unsigned long )((struct device *)0),
                         0L);
  }
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
  {
  tmp = get_dma_ops(dev);
  ops = tmp;
  kmemcheck_mark_initialized(ptr, (unsigned int )size);
  tmp___0 = valid_dma_direction((int )dir);
  tmp___1 = ldv__builtin_expect(tmp___0 == 0, 0L);
  }
  if (tmp___1 != 0L) {
    {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"include/asm-generic/dma-mapping-common.h"),
                         "i" (19), "i" (12UL));
    __builtin_unreachable();
    }
  } else {
  }
  {
  tmp___2 = __phys_addr((unsigned long )ptr);
  addr = (*(ops->map_page))(dev, (struct page *)-24189255811072L + (tmp___2 >> 12),
                            (unsigned long )ptr & 4095UL, size, dir, attrs);
  tmp___3 = __phys_addr((unsigned long )ptr);
  debug_dma_map_page(dev, (struct page *)-24189255811072L + (tmp___3 >> 12), (unsigned long )ptr & 4095UL,
                     size, (int )dir, addr, 1);
  }
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
  {
  tmp = get_dma_ops(dev);
  ops = tmp;
  tmp___0 = valid_dma_direction((int )dir);
  tmp___1 = ldv__builtin_expect(tmp___0 == 0, 0L);
  }
  if (tmp___1 != 0L) {
    {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"include/asm-generic/dma-mapping-common.h"),
                         "i" (36), "i" (12UL));
    __builtin_unreachable();
    }
  } else {
  }
  if ((unsigned long )ops->unmap_page != (unsigned long )((void (*)(struct device * ,
                                                                    dma_addr_t ,
                                                                    size_t , enum dma_data_direction ,
                                                                    struct dma_attrs * ))0)) {
    {
    (*(ops->unmap_page))(dev, addr, size, dir, attrs);
    }
  } else {
  }
  {
  debug_dma_unmap_page(dev, addr, size, (int )dir, 1);
  }
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
  {
  tmp = get_dma_ops(dev);
  ops = tmp;
  tmp___0 = lowmem_page_address((struct page const *)page);
  kmemcheck_mark_initialized(tmp___0 + offset, (unsigned int )size);
  tmp___1 = valid_dma_direction((int )dir);
  tmp___2 = ldv__builtin_expect(tmp___1 == 0, 0L);
  }
  if (tmp___2 != 0L) {
    {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"include/asm-generic/dma-mapping-common.h"),
                         "i" (79), "i" (12UL));
    __builtin_unreachable();
    }
  } else {
  }
  {
  addr = (*(ops->map_page))(dev, page, offset, size, dir, (struct dma_attrs *)0);
  debug_dma_map_page(dev, page, offset, size, (int )dir, addr, 0);
  }
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
  {
  tmp = get_dma_ops(dev);
  ops = tmp;
  tmp___0 = valid_dma_direction((int )dir);
  tmp___1 = ldv__builtin_expect(tmp___0 == 0, 0L);
  }
  if (tmp___1 != 0L) {
    {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"include/asm-generic/dma-mapping-common.h"),
                         "i" (91), "i" (12UL));
    __builtin_unreachable();
    }
  } else {
  }
  if ((unsigned long )ops->unmap_page != (unsigned long )((void (*)(struct device * ,
                                                                    dma_addr_t ,
                                                                    size_t , enum dma_data_direction ,
                                                                    struct dma_attrs * ))0)) {
    {
    (*(ops->unmap_page))(dev, addr, size, dir, (struct dma_attrs *)0);
    }
  } else {
  }
  {
  debug_dma_unmap_page(dev, addr, size, (int )dir, 0);
  }
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
  {
  tmp = get_dma_ops(dev);
  ops = tmp;
  tmp___0 = valid_dma_direction((int )dir);
  tmp___1 = ldv__builtin_expect(tmp___0 == 0, 0L);
  }
  if (tmp___1 != 0L) {
    {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"include/asm-generic/dma-mapping-common.h"),
                         "i" (103), "i" (12UL));
    __builtin_unreachable();
    }
  } else {
  }
  if ((unsigned long )ops->sync_single_for_cpu != (unsigned long )((void (*)(struct device * ,
                                                                             dma_addr_t ,
                                                                             size_t ,
                                                                             enum dma_data_direction ))0)) {
    {
    (*(ops->sync_single_for_cpu))(dev, addr, size, dir);
    }
  } else {
  }
  {
  debug_dma_sync_single_for_cpu(dev, addr, size, (int )dir);
  }
  return;
}
}
__inline static int dma_mapping_error(struct device *dev , dma_addr_t dma_addr )
{
  struct dma_map_ops *ops ;
  struct dma_map_ops *tmp ;
  int tmp___0 ;
  {
  {
  tmp = get_dma_ops(dev);
  ops = tmp;
  debug_dma_mapping_error(dev, dma_addr);
  }
  if ((unsigned long )ops->mapping_error != (unsigned long )((int (*)(struct device * ,
                                                                      dma_addr_t ))0)) {
    {
    tmp___0 = (*(ops->mapping_error))(dev, dma_addr);
    }
    return (tmp___0);
  } else {
  }
  return (dma_addr == 0ULL);
}
}
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
  {
  tmp = dma_alloc_coherent_mask(dev, gfp);
  dma_mask = tmp;
  }
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
  {
  tmp = get_dma_ops(dev);
  ops = tmp;
  gfp = gfp & 4294967288U;
  }
  if ((unsigned long )dev == (unsigned long )((struct device *)0)) {
    dev = & x86_dma_fallback_dev;
  } else {
  }
  {
  tmp___0 = is_device_dma_capable(dev);
  }
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
  {
  tmp___1 = dma_alloc_coherent_gfp_flags(dev, gfp);
  memory = (*(ops->alloc))(dev, size, dma_handle, tmp___1, attrs);
  debug_dma_alloc_coherent(dev, size, *dma_handle, memory);
  }
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
  {
  tmp = get_dma_ops(dev);
  ops = tmp;
  _flags = arch_local_save_flags();
  tmp___0 = arch_irqs_disabled_flags(_flags);
  __ret_warn_on = tmp___0 != 0;
  tmp___1 = ldv__builtin_expect(__ret_warn_on != 0, 0L);
  }
  if (tmp___1 != 0L) {
    {
    warn_slowpath_null("/home/debian/klever-work/native-scheduler-work-dir/scheduler/jobs/7cdfae59d3ac602223400f61d8829e28/klever-core-work-dir/46e2119/linux-kernel-locking-mutex/lkbce/arch/x86/include/asm/dma-mapping.h",
                       166);
    }
  } else {
  }
  {
  ldv__builtin_expect(__ret_warn_on != 0, 0L);
  debug_dma_free_coherent(dev, size, vaddr, bus);
  }
  if ((unsigned long )ops->free != (unsigned long )((void (*)(struct device * , size_t ,
                                                              void * , dma_addr_t ,
                                                              struct dma_attrs * ))0)) {
    {
    (*(ops->free))(dev, size, vaddr, bus, attrs);
    }
  } else {
  }
  return;
}
}
__inline static unsigned int skb_frag_size(skb_frag_t const *frag )
{
  {
  return ((unsigned int )frag->size);
}
}
__inline static void skb_frag_size_set(skb_frag_t *frag , unsigned int size )
{
  {
  frag->size = size;
  return;
}
}
extern void consume_skb(struct sk_buff * ) ;
__inline static void skb_set_hash(struct sk_buff *skb , __u32 hash , enum pkt_hash_types type )
{
  {
  skb->l4_rxhash = (unsigned int )type == 3U;
  skb->rxhash = hash;
  return;
}
}
__inline static unsigned char *skb_end_pointer(struct sk_buff const *skb )
{
  {
  return ((unsigned char *)skb->head + (unsigned long )skb->end);
}
}
__inline static struct sk_buff *skb_peek(struct sk_buff_head const *list_ )
{
  struct sk_buff *skb ;
  {
  skb = list_->next;
  if ((unsigned long )skb == (unsigned long )((struct sk_buff *)list_)) {
    skb = (struct sk_buff *)0;
  } else {
  }
  return (skb);
}
}
__inline static void __skb_queue_head_init(struct sk_buff_head *list )
{
  struct sk_buff *tmp ;
  {
  tmp = (struct sk_buff *)list;
  list->next = tmp;
  list->prev = tmp;
  list->qlen = 0U;
  return;
}
}
__inline static void skb_queue_head_init(struct sk_buff_head *list )
{
  struct lock_class_key __key ;
  {
  {
  spinlock_check(& list->lock);
  __raw_spin_lock_init(& list->lock.__annonCompField19.rlock, "&(&list->lock)->rlock",
                       & __key);
  __skb_queue_head_init(list);
  }
  return;
}
}
__inline static void __skb_insert(struct sk_buff *newsk , struct sk_buff *prev , struct sk_buff *next ,
                                  struct sk_buff_head *list )
{
  struct sk_buff *tmp ;
  {
  newsk->next = next;
  newsk->prev = prev;
  tmp = newsk;
  prev->next = tmp;
  next->prev = tmp;
  list->qlen = list->qlen + 1U;
  return;
}
}
__inline static void __skb_queue_before(struct sk_buff_head *list , struct sk_buff *next ,
                                        struct sk_buff *newsk )
{
  {
  {
  __skb_insert(newsk, next->prev, next, list);
  }
  return;
}
}
__inline static void __skb_queue_tail(struct sk_buff_head *list , struct sk_buff *newsk )
{
  {
  {
  __skb_queue_before(list, (struct sk_buff *)list, newsk);
  }
  return;
}
}
__inline static void __skb_unlink(struct sk_buff *skb , struct sk_buff_head *list )
{
  struct sk_buff *next ;
  struct sk_buff *prev ;
  struct sk_buff *tmp ;
  {
  list->qlen = list->qlen - 1U;
  next = skb->next;
  prev = skb->prev;
  tmp = (struct sk_buff *)0;
  skb->prev = tmp;
  skb->next = tmp;
  next->prev = prev;
  prev->next = next;
  return;
}
}
__inline static struct sk_buff *__skb_dequeue(struct sk_buff_head *list )
{
  struct sk_buff *skb ;
  struct sk_buff *tmp ;
  {
  {
  tmp = skb_peek((struct sk_buff_head const *)list);
  skb = tmp;
  }
  if ((unsigned long )skb != (unsigned long )((struct sk_buff *)0)) {
    {
    __skb_unlink(skb, list);
    }
  } else {
  }
  return (skb);
}
}
__inline static unsigned int skb_headlen(struct sk_buff const *skb )
{
  {
  return ((unsigned int )skb->len - (unsigned int )skb->data_len);
}
}
__inline static void __skb_fill_page_desc(struct sk_buff *skb , int i , struct page *page ,
                                          int off , int size )
{
  skb_frag_t *frag ;
  unsigned char *tmp ;
  {
  {
  tmp = skb_end_pointer((struct sk_buff const *)skb);
  frag = (skb_frag_t *)(& ((struct skb_shared_info *)tmp)->frags) + (unsigned long )i;
  frag->page.p = page;
  frag->page_offset = (__u32 )off;
  skb_frag_size_set(frag, (unsigned int )size);
  page = compound_head(page);
  }
  if ((int )page->__annonCompField43.__annonCompField38.pfmemalloc && (unsigned long )page->__annonCompField37.mapping == (unsigned long )((struct address_space *)0)) {
    skb->pfmemalloc = 1U;
  } else {
  }
  return;
}
}
__inline static unsigned char *__skb_pull(struct sk_buff *skb , unsigned int len )
{
  long tmp ;
  unsigned char *tmp___0 ;
  {
  {
  skb->len = skb->len - len;
  tmp = ldv__builtin_expect(skb->len < skb->data_len, 0L);
  }
  if (tmp != 0L) {
    {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"include/linux/skbuff.h"),
                         "i" (1516), "i" (12UL));
    __builtin_unreachable();
    }
  } else {
  }
  tmp___0 = skb->data + (unsigned long )len;
  skb->data = tmp___0;
  return (tmp___0);
}
}
__inline static unsigned char *skb_transport_header(struct sk_buff const *skb )
{
  {
  return ((unsigned char *)skb->head + (unsigned long )skb->transport_header);
}
}
__inline static unsigned char *skb_network_header(struct sk_buff const *skb )
{
  {
  return ((unsigned char *)skb->head + (unsigned long )skb->network_header);
}
}
__inline static void skb_reset_mac_header(struct sk_buff *skb )
{
  {
  skb->mac_header = (int )((__u16 )((long )skb->data)) - (int )((__u16 )((long )skb->head));
  return;
}
}
__inline static int skb_transport_offset(struct sk_buff const *skb )
{
  unsigned char *tmp ;
  {
  {
  tmp = skb_transport_header(skb);
  }
  return ((int )((unsigned int )((long )tmp) - (unsigned int )((long )skb->data)));
}
}
__inline static u32 skb_network_header_len(struct sk_buff const *skb )
{
  {
  return ((u32 )((int )skb->transport_header - (int )skb->network_header));
}
}
__inline static int skb_network_offset(struct sk_buff const *skb )
{
  unsigned char *tmp ;
  {
  {
  tmp = skb_network_header(skb);
  }
  return ((int )((unsigned int )((long )tmp) - (unsigned int )((long )skb->data)));
}
}
__inline static void skb_orphan(struct sk_buff *skb )
{
  long tmp ;
  {
  if ((unsigned long )skb->destructor != (unsigned long )((void (*)(struct sk_buff * ))0)) {
    {
    (*(skb->destructor))(skb);
    skb->destructor = (void (*)(struct sk_buff * ))0;
    skb->sk = (struct sock *)0;
    }
  } else {
    {
    tmp = ldv__builtin_expect((unsigned long )skb->sk != (unsigned long )((struct sock *)0),
                           0L);
    }
    if (tmp != 0L) {
      {
      __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"include/linux/skbuff.h"),
                           "i" (1891), "i" (12UL));
      __builtin_unreachable();
      }
    } else {
    }
  }
  return;
}
}
__inline static void __skb_queue_purge(struct sk_buff_head *list )
{
  struct sk_buff *skb ;
  {
  goto ldv_30123;
  ldv_30122:
  {
  kfree_skb(skb);
  }
  ldv_30123:
  {
  skb = __skb_dequeue(list);
  }
  if ((unsigned long )skb != (unsigned long )((struct sk_buff *)0)) {
    goto ldv_30122;
  } else {
  }
  return;
}
}
extern struct sk_buff *__netdev_alloc_skb(struct net_device * , unsigned int , gfp_t ) ;
__inline static struct sk_buff *netdev_alloc_skb(struct net_device *dev , unsigned int length )
{
  struct sk_buff *tmp ;
  {
  {
  tmp = __netdev_alloc_skb(dev, length, 32U);
  }
  return (tmp);
}
}
__inline static struct sk_buff *dev_alloc_skb(unsigned int length )
{
  struct sk_buff *tmp ;
  {
  {
  tmp = netdev_alloc_skb((struct net_device *)0, length);
  }
  return (tmp);
}
}
__inline static struct page *__skb_alloc_pages(gfp_t gfp_mask , struct sk_buff *skb ,
                                               unsigned int order )
{
  struct page *page ;
  {
  gfp_mask = gfp_mask | 256U;
  if ((gfp_mask & 65536U) == 0U) {
    gfp_mask = gfp_mask | 8192U;
  } else {
  }
  {
  page = alloc_pages_node(-1, gfp_mask, order);
  }
  if (((unsigned long )skb != (unsigned long )((struct sk_buff *)0) && (unsigned long )page != (unsigned long )((struct page *)0)) && (int )page->__annonCompField43.__annonCompField38.pfmemalloc) {
    skb->pfmemalloc = 1U;
  } else {
  }
  return (page);
}
}
__inline static struct page *__skb_alloc_page(gfp_t gfp_mask , struct sk_buff *skb )
{
  struct page *tmp ;
  {
  {
  tmp = __skb_alloc_pages(gfp_mask, skb, 0U);
  }
  return (tmp);
}
}
__inline static struct page *skb_frag_page(skb_frag_t const *frag )
{
  {
  return ((struct page *)frag->page.p);
}
}
__inline static dma_addr_t skb_frag_dma_map(struct device *dev , skb_frag_t const *frag ,
                                            size_t offset , size_t size , enum dma_data_direction dir )
{
  struct page *tmp ;
  dma_addr_t tmp___0 ;
  {
  {
  tmp = skb_frag_page(frag);
  tmp___0 = dma_map_page(dev, tmp, (size_t )frag->page_offset + offset, size, dir);
  }
  return (tmp___0);
}
}
extern int skb_copy_bits(struct sk_buff const * , int , void * , int ) ;
__inline static void skb_copy_from_linear_data(struct sk_buff const *skb , void *to ,
                                               unsigned int const len )
{
  {
  {
  memcpy(to, (void const *)skb->data, (size_t )len);
  }
  return;
}
}
__inline static void skb_copy_to_linear_data(struct sk_buff *skb , void const *from ,
                                             unsigned int const len )
{
  {
  {
  memcpy((void *)skb->data, from, (size_t )len);
  }
  return;
}
}
__inline static u16 skb_get_queue_mapping(struct sk_buff const *skb )
{
  {
  return ((u16 )skb->queue_mapping);
}
}
__inline static void skb_record_rx_queue(struct sk_buff *skb , u16 rx_queue )
{
  {
  skb->queue_mapping = (unsigned int )rx_queue + 1U;
  return;
}
}
__inline static void skb_checksum_none_assert(struct sk_buff const *skb )
{
  {
  return;
}
}
extern void __napi_schedule(struct napi_struct * ) ;
__inline static bool napi_disable_pending(struct napi_struct *n )
{
  int tmp ;
  {
  {
  tmp = constant_test_bit(1L, (unsigned long const volatile *)(& n->state));
  }
  return (tmp != 0);
}
}
__inline static bool napi_schedule_prep(struct napi_struct *n )
{
  bool tmp ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  {
  {
  tmp = napi_disable_pending(n);
  }
  if (tmp) {
    tmp___0 = 0;
  } else {
    tmp___0 = 1;
  }
  if (tmp___0) {
    {
    tmp___1 = test_and_set_bit(0L, (unsigned long volatile *)(& n->state));
    }
    if (tmp___1 == 0) {
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
__inline static void napi_schedule(struct napi_struct *n )
{
  bool tmp ;
  {
  {
  tmp = napi_schedule_prep(n);
  }
  if ((int )tmp) {
    {
    __napi_schedule(n);
    }
  } else {
  }
  return;
}
}
__inline static bool napi_reschedule(struct napi_struct *napi )
{
  bool tmp ;
  {
  {
  tmp = napi_schedule_prep(napi);
  }
  if ((int )tmp) {
    {
    __napi_schedule(napi);
    }
    return (1);
  } else {
  }
  return (0);
}
}
extern void napi_complete(struct napi_struct * ) ;
__inline static int netdev_queue_numa_node_read(struct netdev_queue const *q )
{
  {
  return ((int )q->numa_node);
}
}
extern void netif_napi_add(struct net_device * , struct napi_struct * , int (*)(struct napi_struct * ,
                                                                                int ) ,
                           int ) ;
extern void netif_napi_del(struct napi_struct * ) ;
extern int netif_receive_skb(struct sk_buff * ) ;
extern struct sk_buff *napi_get_frags(struct napi_struct * ) ;
extern gro_result_t napi_gro_frags(struct napi_struct * ) ;
__inline static bool __netif_tx_trylock(struct netdev_queue *txq )
{
  bool ok ;
  int tmp ;
  int pscr_ret__ ;
  void const *__vpp_verify ;
  int pfo_ret__ ;
  int pfo_ret_____0 ;
  int pfo_ret_____1 ;
  int pfo_ret_____2 ;
  long tmp___0 ;
  {
  {
  tmp = spin_trylock(& txq->_xmit_lock);
  ok = tmp != 0;
  tmp___0 = ldv__builtin_expect((long )ok, 1L);
  }
  if (tmp___0 != 0L) {
    __vpp_verify = (void const *)0;
    {
    if (4UL == 1UL) {
      goto case_1;
    } else {
    }
    if (4UL == 2UL) {
      goto case_2___0;
    } else {
    }
    if (4UL == 4UL) {
      goto case_4___1;
    } else {
    }
    if (4UL == 8UL) {
      goto case_8___2;
    } else {
    }
    goto switch_default___3;
    case_1: ;
    {
    if (4UL == 1UL) {
      goto case_1___0;
    } else {
    }
    if (4UL == 2UL) {
      goto case_2;
    } else {
    }
    if (4UL == 4UL) {
      goto case_4;
    } else {
    }
    if (4UL == 8UL) {
      goto case_8;
    } else {
    }
    goto switch_default;
    case_1___0:
    __asm__ ("movb %%gs:%P1,%0": "=q" (pfo_ret__): "m" (cpu_number));
    goto ldv_39089;
    case_2:
    __asm__ ("movw %%gs:%P1,%0": "=r" (pfo_ret__): "m" (cpu_number));
    goto ldv_39089;
    case_4:
    __asm__ ("movl %%gs:%P1,%0": "=r" (pfo_ret__): "m" (cpu_number));
    goto ldv_39089;
    case_8:
    __asm__ ("movq %%gs:%P1,%0": "=r" (pfo_ret__): "m" (cpu_number));
    goto ldv_39089;
    switch_default:
    {
    __bad_percpu_size();
    }
    switch_break___0: ;
    }
    ldv_39089:
    pscr_ret__ = pfo_ret__;
    goto ldv_39095;
    case_2___0: ;
    {
    if (4UL == 1UL) {
      goto case_1___1;
    } else {
    }
    if (4UL == 2UL) {
      goto case_2___1;
    } else {
    }
    if (4UL == 4UL) {
      goto case_4___0;
    } else {
    }
    if (4UL == 8UL) {
      goto case_8___0;
    } else {
    }
    goto switch_default___0;
    case_1___1:
    __asm__ ("movb %%gs:%P1,%0": "=q" (pfo_ret_____0): "m" (cpu_number));
    goto ldv_39099;
    case_2___1:
    __asm__ ("movw %%gs:%P1,%0": "=r" (pfo_ret_____0): "m" (cpu_number));
    goto ldv_39099;
    case_4___0:
    __asm__ ("movl %%gs:%P1,%0": "=r" (pfo_ret_____0): "m" (cpu_number));
    goto ldv_39099;
    case_8___0:
    __asm__ ("movq %%gs:%P1,%0": "=r" (pfo_ret_____0): "m" (cpu_number));
    goto ldv_39099;
    switch_default___0:
    {
    __bad_percpu_size();
    }
    switch_break___1: ;
    }
    ldv_39099:
    pscr_ret__ = pfo_ret_____0;
    goto ldv_39095;
    case_4___1: ;
    {
    if (4UL == 1UL) {
      goto case_1___2;
    } else {
    }
    if (4UL == 2UL) {
      goto case_2___2;
    } else {
    }
    if (4UL == 4UL) {
      goto case_4___2;
    } else {
    }
    if (4UL == 8UL) {
      goto case_8___1;
    } else {
    }
    goto switch_default___1;
    case_1___2:
    __asm__ ("movb %%gs:%P1,%0": "=q" (pfo_ret_____1): "m" (cpu_number));
    goto ldv_39108;
    case_2___2:
    __asm__ ("movw %%gs:%P1,%0": "=r" (pfo_ret_____1): "m" (cpu_number));
    goto ldv_39108;
    case_4___2:
    __asm__ ("movl %%gs:%P1,%0": "=r" (pfo_ret_____1): "m" (cpu_number));
    goto ldv_39108;
    case_8___1:
    __asm__ ("movq %%gs:%P1,%0": "=r" (pfo_ret_____1): "m" (cpu_number));
    goto ldv_39108;
    switch_default___1:
    {
    __bad_percpu_size();
    }
    switch_break___2: ;
    }
    ldv_39108:
    pscr_ret__ = pfo_ret_____1;
    goto ldv_39095;
    case_8___2: ;
    {
    if (4UL == 1UL) {
      goto case_1___3;
    } else {
    }
    if (4UL == 2UL) {
      goto case_2___3;
    } else {
    }
    if (4UL == 4UL) {
      goto case_4___3;
    } else {
    }
    if (4UL == 8UL) {
      goto case_8___3;
    } else {
    }
    goto switch_default___2;
    case_1___3:
    __asm__ ("movb %%gs:%P1,%0": "=q" (pfo_ret_____2): "m" (cpu_number));
    goto ldv_39117;
    case_2___3:
    __asm__ ("movw %%gs:%P1,%0": "=r" (pfo_ret_____2): "m" (cpu_number));
    goto ldv_39117;
    case_4___3:
    __asm__ ("movl %%gs:%P1,%0": "=r" (pfo_ret_____2): "m" (cpu_number));
    goto ldv_39117;
    case_8___3:
    __asm__ ("movq %%gs:%P1,%0": "=r" (pfo_ret_____2): "m" (cpu_number));
    goto ldv_39117;
    switch_default___2:
    {
    __bad_percpu_size();
    }
    switch_break___3: ;
    }
    ldv_39117:
    pscr_ret__ = pfo_ret_____2;
    goto ldv_39095;
    switch_default___3:
    {
    __bad_size_call_parameter();
    }
    goto ldv_39095;
    switch_break: ;
    }
    ldv_39095:
    txq->xmit_lock_owner = pscr_ret__;
  } else {
  }
  return (ok);
}
}
__inline static void __netif_tx_unlock(struct netdev_queue *txq )
{
  {
  {
  txq->xmit_lock_owner = -1;
  spin_unlock(& txq->_xmit_lock);
  }
  return;
}
}
extern __be16 eth_type_trans(struct sk_buff * , struct net_device * ) ;
__inline static struct sk_buff *__vlan_hwaccel_put_tag(struct sk_buff *skb , __be16 vlan_proto ,
                                                       u16 vlan_tci )
{
  {
  skb->vlan_proto = vlan_proto;
  skb->vlan_tci = (__u16 )((unsigned int )vlan_tci | 4096U);
  return (skb);
}
}
__inline static struct iphdr *ip_hdr(struct sk_buff const *skb )
{
  unsigned char *tmp ;
  {
  {
  tmp = skb_network_header(skb);
  }
  return ((struct iphdr *)tmp);
}
}
__inline static struct tcphdr *tcp_hdr(struct sk_buff const *skb )
{
  unsigned char *tmp ;
  {
  {
  tmp = skb_transport_header(skb);
  }
  return ((struct tcphdr *)tmp);
}
}
extern void tasklet_kill(struct tasklet_struct * ) ;
extern void tasklet_init(struct tasklet_struct * , void (*)(unsigned long ) , unsigned long ) ;
int cxgb4_ofld_send(struct net_device *dev , struct sk_buff *skb ) ;
struct sk_buff *cxgb4_pktgl_to_skb(struct pkt_gl const *gl , unsigned int skb_len ,
                                   unsigned int pull_len ) ;
__inline static unsigned int core_ticks_per_usec(struct adapter const *adap )
{
  {
  return ((unsigned int )adap->params.vpd.cclk / 1000U);
}
}
__inline static unsigned int us_to_core_ticks(struct adapter const *adap , unsigned int us )
{
  {
  return ((us * (unsigned int )adap->params.vpd.cclk) / 1000U);
}
}
__inline static unsigned int core_ticks_to_us(struct adapter const *adapter , unsigned int ticks )
{
  {
  return ((ticks * 1000U + (unsigned int )adapter->params.vpd.cclk / 2U) / (unsigned int )adapter->params.vpd.cclk);
}
}
__inline static unsigned int fl_mtu_bufsize(struct adapter *adapter , unsigned int mtu )
{
  struct sge *s ;
  {
  s = & adapter->sge;
  return ((((s->pktshift + mtu) + s->fl_align) + 17U) & - s->fl_align);
}
}
__inline static dma_addr_t get_buf_addr(struct rx_sw_desc const *d )
{
  {
  return ((dma_addr_t )d->dma_addr & 0xffffffffffffffe0ULL);
}
}
__inline static bool is_buf_mapped(struct rx_sw_desc const *d )
{
  {
  return (((unsigned long long )d->dma_addr & 16ULL) == 0ULL);
}
}
__inline static unsigned int txq_avail(struct sge_txq const *q )
{
  {
  return (((unsigned int )q->size - (unsigned int )q->in_use) - 1U);
}
}
__inline static unsigned int fl_cap(struct sge_fl const *fl )
{
  {
  return ((unsigned int )fl->size - 8U);
}
}
__inline static bool fl_starving(struct sge_fl const *fl )
{
  {
  return ((unsigned int )fl->avail - (unsigned int )fl->pend_cred <= 4U);
}
}
static int map_skb(struct device *dev , struct sk_buff const *skb , dma_addr_t *addr )
{
  skb_frag_t const *fp ;
  skb_frag_t const *end ;
  struct skb_shared_info const *si ;
  unsigned int tmp ;
  int tmp___0 ;
  unsigned char *tmp___1 ;
  unsigned int tmp___2 ;
  int tmp___3 ;
  unsigned int tmp___4 ;
  skb_frag_t const *tmp___5 ;
  unsigned int tmp___6 ;
  {
  {
  tmp = skb_headlen(skb);
  *addr = dma_map_single_attrs(dev, (void *)skb->data, (size_t )tmp, 1, (struct dma_attrs *)0);
  tmp___0 = dma_mapping_error(dev, *addr);
  }
  if (tmp___0 != 0) {
    goto out_err;
  } else {
  }
  {
  tmp___1 = skb_end_pointer(skb);
  si = (struct skb_shared_info const *)tmp___1;
  end = (skb_frag_t const *)(& si->frags) + (unsigned long )si->nr_frags;
  fp = (skb_frag_t const *)(& si->frags);
  }
  goto ldv_54242;
  ldv_54241:
  {
  addr = addr + 1;
  tmp___2 = skb_frag_size(fp);
  *addr = skb_frag_dma_map(dev, fp, 0UL, (size_t )tmp___2, 1);
  tmp___3 = dma_mapping_error(dev, *addr);
  }
  if (tmp___3 != 0) {
    goto unwind;
  } else {
  }
  fp = fp + 1;
  ldv_54242: ;
  if ((unsigned long )fp < (unsigned long )end) {
    goto ldv_54241;
  } else {
  }
  return (0);
  unwind: ;
  goto ldv_54245;
  ldv_54244:
  {
  tmp___4 = skb_frag_size(fp);
  addr = addr - 1;
  dma_unmap_page(dev, *addr, (size_t )tmp___4, 1);
  }
  ldv_54245:
  tmp___5 = fp;
  fp = fp - 1;
  if ((unsigned long )tmp___5 > (unsigned long )((skb_frag_t const *)(& si->frags))) {
    goto ldv_54244;
  } else {
  }
  {
  tmp___6 = skb_headlen(skb);
  dma_unmap_single_attrs(dev, *(addr + 0xffffffffffffffffUL), (size_t )tmp___6, 1,
                         (struct dma_attrs *)0);
  }
  out_err: ;
  return (-12);
}
}
static void unmap_skb(struct device *dev , struct sk_buff const *skb , dma_addr_t const *addr )
{
  skb_frag_t const *fp ;
  skb_frag_t const *end ;
  struct skb_shared_info const *si ;
  unsigned int tmp ;
  dma_addr_t const *tmp___0 ;
  unsigned char *tmp___1 ;
  unsigned int tmp___2 ;
  dma_addr_t const *tmp___3 ;
  {
  {
  tmp = skb_headlen(skb);
  tmp___0 = addr;
  addr = addr + 1;
  dma_unmap_single_attrs(dev, *tmp___0, (size_t )tmp, 1, (struct dma_attrs *)0);
  tmp___1 = skb_end_pointer(skb);
  si = (struct skb_shared_info const *)tmp___1;
  end = (skb_frag_t const *)(& si->frags) + (unsigned long )si->nr_frags;
  fp = (skb_frag_t const *)(& si->frags);
  }
  goto ldv_54256;
  ldv_54255:
  {
  tmp___2 = skb_frag_size(fp);
  tmp___3 = addr;
  addr = addr + 1;
  dma_unmap_page(dev, *tmp___3, (size_t )tmp___2, 1);
  fp = fp + 1;
  }
  ldv_54256: ;
  if ((unsigned long )fp < (unsigned long )end) {
    goto ldv_54255;
  } else {
  }
  return;
}
}
static void deferred_unmap_destructor(struct sk_buff *skb )
{
  {
  {
  unmap_skb((skb->dev)->dev.parent, (struct sk_buff const *)skb, (dma_addr_t const *)skb->head);
  }
  return;
}
}
static void unmap_sgl(struct device *dev , struct sk_buff const *skb , struct ulptx_sgl const *sgl ,
                      struct sge_txq const *q )
{
  struct ulptx_sge_pair const *p ;
  unsigned int nfrags ;
  unsigned char *tmp ;
  __u32 tmp___0 ;
  __u64 tmp___1 ;
  __u32 tmp___2 ;
  __u64 tmp___3 ;
  unsigned int tmp___4 ;
  long tmp___5 ;
  __u32 tmp___6 ;
  __u64 tmp___7 ;
  __u32 tmp___8 ;
  __u64 tmp___9 ;
  __be64 const *addr ;
  __u32 tmp___10 ;
  __u64 tmp___11 ;
  __u32 tmp___12 ;
  __u64 tmp___13 ;
  __be64 const *addr___0 ;
  __u32 tmp___14 ;
  __u64 tmp___15 ;
  __u32 tmp___16 ;
  __u64 tmp___17 ;
  long tmp___18 ;
  __be64 addr___1 ;
  __u32 tmp___19 ;
  __u64 tmp___20 ;
  {
  {
  tmp = skb_end_pointer(skb);
  nfrags = (unsigned int )((struct skb_shared_info *)tmp)->nr_frags;
  tmp___4 = skb_headlen(skb);
  tmp___5 = ldv__builtin_expect(tmp___4 != 0U, 1L);
  }
  if (tmp___5 != 0L) {
    {
    tmp___0 = __fswab32(sgl->len0);
    tmp___1 = __fswab64(sgl->addr0);
    dma_unmap_single_attrs(dev, tmp___1, (size_t )tmp___0, 1, (struct dma_attrs *)0);
    }
  } else {
    {
    tmp___2 = __fswab32(sgl->len0);
    tmp___3 = __fswab64(sgl->addr0);
    dma_unmap_page(dev, tmp___3, (size_t )tmp___2, 1);
    nfrags = nfrags - 1U;
    }
  }
  p = (struct ulptx_sge_pair const *)(& sgl->sge);
  goto ldv_54273;
  ldv_54272:
  {
  tmp___18 = ldv__builtin_expect((unsigned long )((u8 *)p + 1U) <= (unsigned long )((u8 *)q->stat),
                              1L);
  }
  if (tmp___18 != 0L) {
    unmap:
    {
    tmp___6 = __fswab32(p->len[0]);
    tmp___7 = __fswab64(p->addr[0]);
    dma_unmap_page(dev, tmp___7, (size_t )tmp___6, 1);
    tmp___8 = __fswab32(p->len[1]);
    tmp___9 = __fswab64(p->addr[1]);
    dma_unmap_page(dev, tmp___9, (size_t )tmp___8, 1);
    p = p + 1;
    }
  } else
  if ((unsigned long )((u8 *)p) == (unsigned long )((u8 *)q->stat)) {
    p = (struct ulptx_sge_pair const *)q->desc;
    goto unmap;
  } else
  if ((unsigned long )((u8 *)p + 8UL) == (unsigned long )((u8 *)q->stat)) {
    {
    addr = (__be64 const *)q->desc;
    tmp___10 = __fswab32(p->len[0]);
    tmp___11 = __fswab64(*addr);
    dma_unmap_page(dev, tmp___11, (size_t )tmp___10, 1);
    tmp___12 = __fswab32(p->len[1]);
    tmp___13 = __fswab64(*(addr + 1UL));
    dma_unmap_page(dev, tmp___13, (size_t )tmp___12, 1);
    p = (struct ulptx_sge_pair const *)addr + 2U;
    }
  } else {
    {
    addr___0 = (__be64 const *)q->desc;
    tmp___14 = __fswab32(p->len[0]);
    tmp___15 = __fswab64(p->addr[0]);
    dma_unmap_page(dev, tmp___15, (size_t )tmp___14, 1);
    tmp___16 = __fswab32(p->len[1]);
    tmp___17 = __fswab64(*addr___0);
    dma_unmap_page(dev, tmp___17, (size_t )tmp___16, 1);
    p = (struct ulptx_sge_pair const *)addr___0 + 1U;
    }
  }
  nfrags = nfrags - 2U;
  ldv_54273: ;
  if (nfrags > 1U) {
    goto ldv_54272;
  } else {
  }
  if (nfrags != 0U) {
    if ((unsigned long )((u8 *)p) == (unsigned long )((u8 *)q->stat)) {
      p = (struct ulptx_sge_pair const *)q->desc;
    } else {
    }
    {
    addr___1 = (unsigned long )((u8 *)p + 16UL) <= (unsigned long )((u8 *)q->stat) ? p->addr[0] : *((__be64 const *)q->desc);
    tmp___19 = __fswab32(p->len[0]);
    tmp___20 = __fswab64(addr___1);
    dma_unmap_page(dev, tmp___20, (size_t )tmp___19, 1);
    }
  } else {
  }
  return;
}
}
static void free_tx_desc(struct adapter *adap , struct sge_txq *q , unsigned int n ,
                         bool unmap )
{
  struct tx_sw_desc *d ;
  unsigned int cidx ;
  struct device *dev ;
  unsigned int tmp ;
  {
  cidx = q->cidx;
  dev = adap->pdev_dev;
  d = q->sdesc + (unsigned long )cidx;
  goto ldv_54286;
  ldv_54285: ;
  if ((unsigned long )d->skb != (unsigned long )((struct sk_buff *)0)) {
    if ((int )unmap) {
      {
      unmap_sgl(dev, (struct sk_buff const *)d->skb, (struct ulptx_sgl const *)d->sgl,
                (struct sge_txq const *)q);
      }
    } else {
    }
    {
    kfree_skb(d->skb);
    d->skb = (struct sk_buff *)0;
    }
  } else {
  }
  d = d + 1;
  cidx = cidx + 1U;
  if (cidx == q->size) {
    cidx = 0U;
    d = q->sdesc;
  } else {
  }
  ldv_54286:
  tmp = n;
  n = n - 1U;
  if (tmp != 0U) {
    goto ldv_54285;
  } else {
  }
  q->cidx = cidx;
  return;
}
}
__inline static int reclaimable(struct sge_txq const *q )
{
  int hw_cidx ;
  __u16 tmp ;
  {
  {
  tmp = __fswab16((int )(q->stat)->cidx);
  hw_cidx = (int )tmp;
  hw_cidx = (int )((unsigned int )hw_cidx - (unsigned int )q->cidx);
  }
  return (hw_cidx < 0 ? (int )((unsigned int )hw_cidx + (unsigned int )q->size) : hw_cidx);
}
}
__inline static void reclaim_completed_tx(struct adapter *adap , struct sge_txq *q ,
                                          bool unmap )
{
  int avail ;
  int tmp ;
  {
  {
  tmp = reclaimable((struct sge_txq const *)q);
  avail = tmp;
  }
  if (avail != 0) {
    if (avail > 16) {
      avail = 16;
    } else {
    }
    {
    free_tx_desc(adap, q, (unsigned int )avail, (int )unmap);
    q->in_use = q->in_use - (unsigned int )avail;
    }
  } else {
  }
  return;
}
}
__inline static int get_buf_size(struct adapter *adapter , struct rx_sw_desc const *d )
{
  struct sge *s ;
  unsigned int rx_buf_size_idx ;
  int buf_size ;
  unsigned int tmp ;
  unsigned int tmp___0 ;
  {
  s = & adapter->sge;
  rx_buf_size_idx = (unsigned int )d->dma_addr & 15U;
  {
  if (rx_buf_size_idx == 0U) {
    goto case_0;
  } else {
  }
  if (rx_buf_size_idx == 1U) {
    goto case_1;
  } else {
  }
  if (rx_buf_size_idx == 2U) {
    goto case_2;
  } else {
  }
  if (rx_buf_size_idx == 3U) {
    goto case_3;
  } else {
  }
  goto switch_default;
  case_0:
  buf_size = 4096;
  goto ldv_54306;
  case_1:
  buf_size = (int )(4096UL << (int )s->fl_pg_order);
  goto ldv_54306;
  case_2:
  {
  tmp = fl_mtu_bufsize(adapter, 1500U);
  buf_size = (int )tmp;
  }
  goto ldv_54306;
  case_3:
  {
  tmp___0 = fl_mtu_bufsize(adapter, 9000U);
  buf_size = (int )tmp___0;
  }
  goto ldv_54306;
  switch_default:
  {
  __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"drivers/net/ethernet/chelsio/cxgb4/sge.c"),
                       "i" (451), "i" (12UL));
  __builtin_unreachable();
  }
  switch_break: ;
  }
  ldv_54306: ;
  return (buf_size);
}
}
static void free_rx_bufs(struct adapter *adap , struct sge_fl *q , int n )
{
  struct rx_sw_desc *d ;
  int tmp ;
  dma_addr_t tmp___0 ;
  bool tmp___1 ;
  int tmp___2 ;
  {
  goto ldv_54318;
  ldv_54317:
  {
  d = q->sdesc + (unsigned long )q->cidx;
  tmp___1 = is_buf_mapped((struct rx_sw_desc const *)d);
  }
  if ((int )tmp___1) {
    {
    tmp = get_buf_size(adap, (struct rx_sw_desc const *)d);
    tmp___0 = get_buf_addr((struct rx_sw_desc const *)d);
    dma_unmap_page(adap->pdev_dev, tmp___0, (size_t )tmp, 2);
    }
  } else {
  }
  {
  put_page(d->page);
  d->page = (struct page *)0;
  q->cidx = q->cidx + 1U;
  }
  if (q->cidx == q->size) {
    q->cidx = 0U;
  } else {
  }
  q->avail = q->avail - 1U;
  ldv_54318:
  tmp___2 = n;
  n = n - 1;
  if (tmp___2 != 0) {
    goto ldv_54317;
  } else {
  }
  return;
}
}
static void unmap_rx_buf(struct adapter *adap , struct sge_fl *q )
{
  struct rx_sw_desc *d ;
  int tmp ;
  dma_addr_t tmp___0 ;
  bool tmp___1 ;
  {
  {
  d = q->sdesc + (unsigned long )q->cidx;
  tmp___1 = is_buf_mapped((struct rx_sw_desc const *)d);
  }
  if ((int )tmp___1) {
    {
    tmp = get_buf_size(adap, (struct rx_sw_desc const *)d);
    tmp___0 = get_buf_addr((struct rx_sw_desc const *)d);
    dma_unmap_page(adap->pdev_dev, tmp___0, (size_t )tmp, 2);
    }
  } else {
  }
  d->page = (struct page *)0;
  q->cidx = q->cidx + 1U;
  if (q->cidx == q->size) {
    q->cidx = 0U;
  } else {
  }
  q->avail = q->avail - 1U;
  return;
}
}
__inline static void ring_fl_db(struct adapter *adap , struct sge_fl *q )
{
  u32 val ;
  int tmp ;
  {
  if (q->pend_cred > 7U) {
    {
    val = q->pend_cred / 8U;
    tmp = is_t4(adap->params.chip);
    }
    if (tmp == 0) {
      val = val | 8192U;
    } else {
    }
    {
    __asm__ volatile ("sfence": : : "memory");
    t4_write_reg(adap, 110592U, ((q->cntxt_id << 15) | val) | 16384U);
    q->pend_cred = q->pend_cred & 7U;
    }
  } else {
  }
  return;
}
}
__inline static void set_rx_sw_desc(struct rx_sw_desc *sd , struct page *pg , dma_addr_t mapping )
{
  {
  sd->page = pg;
  sd->dma_addr = mapping;
  return;
}
}
static unsigned int refill_fl(struct adapter *adap , struct sge_fl *q , int n , gfp_t gfp )
{
  struct sge *s ;
  struct page *pg ;
  dma_addr_t mapping ;
  unsigned int cred ;
  __be64 *d ;
  struct rx_sw_desc *sd ;
  long tmp ;
  int tmp___0 ;
  long tmp___1 ;
  __be64 *tmp___2 ;
  __u64 tmp___3 ;
  long tmp___4 ;
  int tmp___5 ;
  long tmp___6 ;
  __be64 *tmp___7 ;
  __u64 tmp___8 ;
  int tmp___9 ;
  bool tmp___10 ;
  long tmp___11 ;
  {
  s = & adap->sge;
  cred = q->avail;
  d = q->desc + (unsigned long )q->pidx;
  sd = q->sdesc + (unsigned long )q->pidx;
  gfp = gfp | 768U;
  if (s->fl_pg_order == 0U) {
    goto alloc_small_pages;
  } else {
  }
  goto ldv_54351;
  ldv_54350:
  {
  pg = alloc_pages(gfp | 16384U, s->fl_pg_order);
  tmp = ldv__builtin_expect((unsigned long )pg == (unsigned long )((struct page *)0),
                         0L);
  }
  if (tmp != 0L) {
    q->large_alloc_failed = q->large_alloc_failed + 1UL;
    goto ldv_54348;
  } else {
  }
  {
  mapping = dma_map_page(adap->pdev_dev, pg, 0UL, 4096UL << (int )s->fl_pg_order,
                         2);
  tmp___0 = dma_mapping_error(adap->pdev_dev, mapping);
  tmp___1 = ldv__builtin_expect(tmp___0 != 0, 0L);
  }
  if (tmp___1 != 0L) {
    {
    __free_pages(pg, s->fl_pg_order);
    }
    goto out;
  } else {
  }
  {
  mapping = mapping | 1ULL;
  tmp___2 = d;
  d = d + 1;
  tmp___3 = __fswab64(mapping);
  *tmp___2 = tmp___3;
  set_rx_sw_desc(sd, pg, mapping);
  sd = sd + 1;
  q->avail = q->avail + 1U;
  q->pidx = q->pidx + 1U;
  }
  if (q->pidx == q->size) {
    q->pidx = 0U;
    sd = q->sdesc;
    d = q->desc;
  } else {
  }
  n = n - 1;
  ldv_54351: ;
  if (n != 0) {
    goto ldv_54350;
  } else {
  }
  ldv_54348: ;
  alloc_small_pages: ;
  goto ldv_54354;
  ldv_54353:
  {
  pg = __skb_alloc_page(gfp, (struct sk_buff *)0);
  tmp___4 = ldv__builtin_expect((unsigned long )pg == (unsigned long )((struct page *)0),
                             0L);
  }
  if (tmp___4 != 0L) {
    q->alloc_failed = q->alloc_failed + 1UL;
    goto ldv_54352;
  } else {
  }
  {
  mapping = dma_map_page(adap->pdev_dev, pg, 0UL, 4096UL, 2);
  tmp___5 = dma_mapping_error(adap->pdev_dev, mapping);
  tmp___6 = ldv__builtin_expect(tmp___5 != 0, 0L);
  }
  if (tmp___6 != 0L) {
    {
    put_page(pg);
    }
    goto out;
  } else {
  }
  {
  tmp___7 = d;
  d = d + 1;
  tmp___8 = __fswab64(mapping);
  *tmp___7 = tmp___8;
  set_rx_sw_desc(sd, pg, mapping);
  sd = sd + 1;
  q->avail = q->avail + 1U;
  q->pidx = q->pidx + 1U;
  }
  if (q->pidx == q->size) {
    q->pidx = 0U;
    sd = q->sdesc;
    d = q->desc;
  } else {
  }
  ldv_54354:
  tmp___9 = n;
  n = n - 1;
  if (tmp___9 != 0) {
    goto ldv_54353;
  } else {
  }
  ldv_54352: ;
  out:
  {
  cred = q->avail - cred;
  q->pend_cred = q->pend_cred + cred;
  ring_fl_db(adap, q);
  tmp___10 = fl_starving((struct sge_fl const *)q);
  tmp___11 = ldv__builtin_expect((long )tmp___10, 0L);
  }
  if (tmp___11 != 0L) {
    {
    __asm__ volatile ("": : : "memory");
    set_bit((long )(q->cntxt_id - adap->sge.egr_start), (unsigned long volatile *)(& adap->sge.starving_fl));
    }
  } else {
  }
  return (cred);
}
}
__inline static void __refill_fl(struct adapter *adap , struct sge_fl *fl )
{
  unsigned int _min1 ;
  unsigned int _min2 ;
  unsigned int tmp ;
  {
  {
  _min1 = 16U;
  tmp = fl_cap((struct sge_fl const *)fl);
  _min2 = tmp - fl->avail;
  refill_fl(adap, fl, (int )(_min1 < _min2 ? _min1 : _min2), 32U);
  }
  return;
}
}
static void *alloc_ring(struct device *dev , size_t nelem , size_t elem_size , size_t sw_size ,
                        dma_addr_t *phys , void *metadata , size_t stat_size , int node )
{
  size_t len ;
  void *s ;
  void *p ;
  void *tmp ;
  {
  {
  len = nelem * elem_size + stat_size;
  s = (void *)0;
  tmp = dma_alloc_attrs(dev, len, phys, 208U, (struct dma_attrs *)0);
  p = tmp;
  }
  if ((unsigned long )p == (unsigned long )((void *)0)) {
    return ((void *)0);
  } else {
  }
  if (sw_size != 0UL) {
    {
    s = kzalloc_node(nelem * sw_size, 208U, node);
    }
    if ((unsigned long )s == (unsigned long )((void *)0)) {
      {
      dma_free_attrs(dev, len, p, *phys, (struct dma_attrs *)0);
      }
      return ((void *)0);
    } else {
    }
  } else {
  }
  if ((unsigned long )metadata != (unsigned long )((void *)0)) {
    *((void **)metadata) = s;
  } else {
  }
  {
  memset(p, 0, len);
  }
  return (p);
}
}
__inline static unsigned int sgl_len(unsigned int n )
{
  {
  n = n - 1U;
  return (((n * 3U) / 2U + (n & 1U)) + 2U);
}
}
__inline static unsigned int flits_to_desc(unsigned int n )
{
  long tmp ;
  {
  {
  tmp = ldv__builtin_expect(n > 64U, 0L);
  }
  if (tmp != 0L) {
    {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"drivers/net/ethernet/chelsio/cxgb4/sge.c"),
                         "i" (700), "i" (12UL));
    __builtin_unreachable();
    }
  } else {
  }
  return ((n + 7U) / 8U);
}
}
__inline static int is_eth_imm(struct sk_buff const *skb )
{
  {
  return ((unsigned int )skb->len <= 96U);
}
}
__inline static unsigned int calc_tx_flits(struct sk_buff const *skb )
{
  unsigned int flits ;
  int tmp ;
  unsigned char *tmp___0 ;
  unsigned int tmp___1 ;
  unsigned char *tmp___2 ;
  {
  {
  tmp = is_eth_imm(skb);
  }
  if (tmp != 0) {
    return ((unsigned int )(((unsigned long )skb->len + 39UL) / 8UL));
  } else {
  }
  {
  tmp___0 = skb_end_pointer(skb);
  tmp___1 = sgl_len((unsigned int )((int )((struct skb_shared_info *)tmp___0)->nr_frags + 1));
  flits = tmp___1 + 4U;
  tmp___2 = skb_end_pointer(skb);
  }
  if ((unsigned int )((struct skb_shared_info *)tmp___2)->gso_size != 0U) {
    flits = flits + 2U;
  } else {
  }
  return (flits);
}
}
static void write_sgl(struct sk_buff const *skb , struct sge_txq *q , struct ulptx_sgl *sgl ,
                      u64 *end , unsigned int start , dma_addr_t const *addr )
{
  unsigned int i ;
  unsigned int len ;
  struct ulptx_sge_pair *to ;
  struct skb_shared_info const *si ;
  unsigned char *tmp ;
  unsigned int nfrags ;
  struct ulptx_sge_pair buf[9U] ;
  unsigned int tmp___0 ;
  __u32 tmp___1 ;
  __u64 tmp___2 ;
  unsigned int tmp___3 ;
  __u32 tmp___4 ;
  __u64 tmp___5 ;
  long tmp___6 ;
  __u32 tmp___7 ;
  long tmp___8 ;
  unsigned int tmp___9 ;
  __u32 tmp___10 ;
  unsigned int tmp___11 ;
  __u32 tmp___12 ;
  __u64 tmp___13 ;
  __u64 tmp___14 ;
  unsigned int tmp___15 ;
  __u32 tmp___16 ;
  __u64 tmp___17 ;
  unsigned int part0 ;
  unsigned int part1 ;
  long tmp___18 ;
  long tmp___19 ;
  {
  {
  tmp = skb_end_pointer(skb);
  si = (struct skb_shared_info const *)tmp;
  nfrags = (unsigned int )si->nr_frags;
  tmp___0 = skb_headlen(skb);
  len = tmp___0 - start;
  tmp___6 = ldv__builtin_expect(len != 0U, 1L);
  }
  if (tmp___6 != 0L) {
    {
    tmp___1 = __fswab32(len);
    sgl->len0 = tmp___1;
    tmp___2 = __fswab64((unsigned long long )*addr + (unsigned long long )start);
    sgl->addr0 = tmp___2;
    nfrags = nfrags + 1U;
    }
  } else {
    {
    tmp___3 = skb_frag_size((skb_frag_t const *)(& si->frags));
    tmp___4 = __fswab32(tmp___3);
    sgl->len0 = tmp___4;
    tmp___5 = __fswab64(*(addr + 1UL));
    sgl->addr0 = tmp___5;
    }
  }
  {
  tmp___7 = __fswab32(nfrags | 2181038080U);
  sgl->cmd_nsge = tmp___7;
  nfrags = nfrags - 1U;
  tmp___8 = ldv__builtin_expect(nfrags == 0U, 1L);
  }
  if (tmp___8 != 0L) {
    return;
  } else {
  }
  to = (unsigned long )((u8 *)end) > (unsigned long )((u8 *)q->stat) ? (struct ulptx_sge_pair *)(& buf) : (struct ulptx_sge_pair *)(& sgl->sge);
  i = nfrags != (unsigned int )si->nr_frags;
  goto ldv_54406;
  ldv_54405:
  {
  tmp___9 = skb_frag_size((skb_frag_t const *)(& si->frags) + (unsigned long )i);
  tmp___10 = __fswab32(tmp___9);
  to->len[0] = tmp___10;
  i = i + 1U;
  tmp___11 = skb_frag_size((skb_frag_t const *)(& si->frags) + (unsigned long )i);
  tmp___12 = __fswab32(tmp___11);
  to->len[1] = tmp___12;
  tmp___13 = __fswab64(*(addr + (unsigned long )i));
  to->addr[0] = tmp___13;
  i = i + 1U;
  tmp___14 = __fswab64(*(addr + (unsigned long )i));
  to->addr[1] = tmp___14;
  nfrags = nfrags - 2U;
  to = to + 1;
  }
  ldv_54406: ;
  if (nfrags > 1U) {
    goto ldv_54405;
  } else {
  }
  if (nfrags != 0U) {
    {
    tmp___15 = skb_frag_size((skb_frag_t const *)(& si->frags) + (unsigned long )i);
    tmp___16 = __fswab32(tmp___15);
    to->len[0] = tmp___16;
    to->len[1] = 0U;
    tmp___17 = __fswab64(*(addr + (unsigned long )(i + 1U)));
    to->addr[0] = tmp___17;
    }
  } else {
  }
  {
  tmp___19 = ldv__builtin_expect((unsigned long )((u8 *)end) > (unsigned long )((u8 *)q->stat),
                              0L);
  }
  if (tmp___19 != 0L) {
    {
    part0 = (unsigned int )((long )q->stat) - (unsigned int )((long )(& sgl->sge));
    tmp___18 = ldv__builtin_expect(part0 != 0U, 1L);
    }
    if (tmp___18 != 0L) {
      {
      memcpy((void *)(& sgl->sge), (void const *)(& buf), (size_t )part0);
      }
    } else {
    }
    {
    part1 = (unsigned int )((long )end) - (unsigned int )((long )q->stat);
    memcpy((void *)q->desc, (void const *)(& buf) + (unsigned long )part0, (size_t )part1);
    end = (u64 *)q->desc + (unsigned long )part1;
    }
  } else {
  }
  if (((unsigned long )end & 8UL) != 0UL) {
    *end = 0ULL;
  } else {
  }
  return;
}
}
static void cxgb_pio_copy(u64 *dst , u64 *src )
{
  int count ;
  {
  count = 8;
  goto ldv_54416;
  ldv_54415:
  {
  writeq((unsigned long )*src, (void volatile *)dst);
  src = src + 1;
  dst = dst + 1;
  count = count - 1;
  }
  ldv_54416: ;
  if (count != 0) {
    goto ldv_54415;
  } else {
  }
  return;
}
}
__inline static void ring_tx_db(struct adapter *adap , struct sge_txq *q , int n )
{
  unsigned int *wr ;
  unsigned int index ;
  int tmp ;
  {
  {
  __asm__ volatile ("sfence": : : "memory");
  spin_lock(& q->db_lock);
  }
  if (q->db_disabled == 0) {
    {
    tmp = is_t4(adap->params.chip);
    }
    if (tmp != 0) {
      {
      t4_write_reg(adap, 110592U, (q->cntxt_id << 15) | (unsigned int )n);
      }
    } else {
      if (n == 1) {
        {
        index = q->pidx != 0U ? q->pidx - 1U : q->size - 1U;
        wr = (unsigned int *)q->desc + (unsigned long )index;
        cxgb_pio_copy((u64 *)(adap->bar2 + ((unsigned long )q->udb + 64UL)), (u64 *)wr);
        }
      } else {
        {
        writel((unsigned int )n, (void volatile *)(adap->bar2 + ((unsigned long )q->udb + 8UL)));
        }
      }
      __asm__ volatile ("sfence": : : "memory");
    }
  } else {
  }
  {
  q->db_pidx = (unsigned short )q->pidx;
  spin_unlock(& q->db_lock);
  }
  return;
}
}
static void inline_tx_skb(struct sk_buff const *skb , struct sge_txq const *q ,
                          void *pos )
{
  u64 *p ;
  int left ;
  long tmp ;
  long tmp___0 ;
  {
  {
  left = (int )((unsigned int )((long )q->stat) - (unsigned int )((long )pos));
  tmp___0 = ldv__builtin_expect((unsigned int )skb->len <= (unsigned int )left, 1L);
  }
  if (tmp___0 != 0L) {
    {
    tmp = ldv__builtin_expect((unsigned int )skb->data_len == 0U, 1L);
    }
    if (tmp != 0L) {
      {
      skb_copy_from_linear_data(skb, pos, skb->len);
      }
    } else {
      {
      skb_copy_bits(skb, 0, pos, (int )skb->len);
      }
    }
    pos = pos + (unsigned long )skb->len;
  } else {
    {
    skb_copy_bits(skb, 0, pos, left);
    skb_copy_bits(skb, left, (void *)q->desc, (int )((unsigned int )skb->len - (unsigned int )left));
    pos = (void *)q->desc + (unsigned long )((unsigned int )skb->len - (unsigned int )left);
    }
  }
  p = (u64 *)(((unsigned long )pos + 7UL) & 0xfffffffffffffff8UL);
  if (((unsigned long )p & 8UL) != 0UL) {
    *p = 0ULL;
  } else {
  }
  return;
}
}
static u64 hwcsum(struct sk_buff const *skb )
{
  int csum_type ;
  struct iphdr const *iph ;
  struct iphdr *tmp ;
  struct ipv6hdr const *ip6h ;
  u32 tmp___0 ;
  int tmp___1 ;
  int start ;
  int tmp___2 ;
  long tmp___3 ;
  {
  {
  tmp = ip_hdr(skb);
  iph = (struct iphdr const *)tmp;
  }
  if ((unsigned int )*((unsigned char *)iph + 0UL) == 64U) {
    if ((unsigned int )((unsigned char )iph->protocol) == 6U) {
      csum_type = 8;
    } else
    if ((unsigned int )((unsigned char )iph->protocol) == 17U) {
      csum_type = 9;
    } else {
      nocsum: ;
      return (0x8000000000000000ULL);
    }
  } else {
    ip6h = (struct ipv6hdr const *)iph;
    if ((unsigned int )((unsigned char )ip6h->nexthdr) == 6U) {
      csum_type = 10;
    } else
    if ((unsigned int )((unsigned char )ip6h->nexthdr) == 17U) {
      csum_type = 11;
    } else {
      goto nocsum;
    }
  }
  {
  tmp___3 = ldv__builtin_expect(csum_type > 7, 1L);
  }
  if (tmp___3 != 0L) {
    {
    tmp___0 = skb_network_header_len(skb);
    tmp___1 = skb_network_offset(skb);
    }
    return ((((unsigned long long )csum_type << 40) | ((unsigned long long )tmp___0 << 20)) | ((unsigned long long )(tmp___1 + -14) << 34));
  } else {
    {
    tmp___2 = skb_transport_offset(skb);
    start = tmp___2;
    }
    return ((((unsigned long long )csum_type << 40) | (unsigned long long )(start << 20)) | ((unsigned long long )(start + (int )skb->__annonCompField68.__annonCompField67.csum_offset) << 30));
  }
}
}
static void eth_txq_stop(struct sge_eth_txq *q )
{
  {
  {
  netif_tx_stop_queue(q->txq);
  q->q.stops = q->q.stops + 1UL;
  }
  return;
}
}
__inline static void txq_advance(struct sge_txq *q , unsigned int n )
{
  {
  q->in_use = q->in_use + n;
  q->pidx = q->pidx + n;
  if (q->pidx >= q->size) {
    q->pidx = q->pidx - q->size;
  } else {
  }
  return;
}
}
netdev_tx_t t4_eth_xmit(struct sk_buff *skb , struct net_device *dev )
{
  u32 wr_mid ;
  u64 cntrl ;
  u64 *end ;
  int qidx ;
  int credits ;
  unsigned int flits ;
  unsigned int ndesc ;
  struct adapter *adap ;
  struct sge_eth_txq *q ;
  struct port_info const *pi ;
  struct fw_eth_tx_pkt_wr *wr ;
  struct cpl_tx_pkt_core *cpl ;
  struct skb_shared_info const *ssi ;
  dma_addr_t addr[18U] ;
  long tmp ;
  void *tmp___0 ;
  u16 tmp___1 ;
  unsigned int tmp___2 ;
  long tmp___3 ;
  int tmp___4 ;
  int tmp___5 ;
  long tmp___6 ;
  long tmp___7 ;
  __u32 tmp___8 ;
  unsigned char *tmp___9 ;
  struct cpl_tx_pkt_lso *lso ;
  bool v6 ;
  int l3hdr_len ;
  u32 tmp___10 ;
  int eth_xtra_len ;
  int tmp___11 ;
  struct tcphdr *tmp___12 ;
  __u32 tmp___13 ;
  __u16 tmp___14 ;
  __u32 tmp___15 ;
  int len ;
  int tmp___16 ;
  __u32 tmp___17 ;
  u64 tmp___18 ;
  __u32 tmp___19 ;
  __u16 tmp___20 ;
  __u64 tmp___21 ;
  int last_desc ;
  int tmp___22 ;
  {
  {
  tmp = ldv__builtin_expect(skb->len <= 13U, 0L);
  }
  if (tmp != 0L) {
    out_free:
    {
    consume_skb(skb);
    }
    return (0);
  } else {
  }
  {
  tmp___0 = netdev_priv((struct net_device const *)dev);
  pi = (struct port_info const *)tmp___0;
  adap = pi->adapter;
  tmp___1 = skb_get_queue_mapping((struct sk_buff const *)skb);
  qidx = (int )tmp___1;
  q = (struct sge_eth_txq *)(& adap->sge.ethtxq) + (unsigned long )(qidx + (int )pi->first_qset);
  reclaim_completed_tx(adap, & q->q, 1);
  flits = calc_tx_flits((struct sk_buff const *)skb);
  ndesc = flits_to_desc(flits);
  tmp___2 = txq_avail((struct sge_txq const *)(& q->q));
  credits = (int )(tmp___2 - ndesc);
  tmp___3 = ldv__builtin_expect(credits < 0, 0L);
  }
  if (tmp___3 != 0L) {
    {
    eth_txq_stop(q);
    dev_err((struct device const *)adap->pdev_dev, "%s: Tx ring %u full while queue awake!\n",
            (char *)(& dev->name), qidx);
    }
    return (16);
  } else {
  }
  {
  tmp___4 = is_eth_imm((struct sk_buff const *)skb);
  }
  if (tmp___4 == 0) {
    {
    tmp___5 = map_skb(adap->pdev_dev, (struct sk_buff const *)skb, (dma_addr_t *)(& addr));
    tmp___6 = ldv__builtin_expect(tmp___5 < 0, 0L);
    }
    if (tmp___6 != 0L) {
      q->mapping_err = q->mapping_err + 1UL;
      goto out_free;
    } else {
    }
  } else {
  }
  {
  wr_mid = (flits + 1U) / 2U;
  tmp___7 = ldv__builtin_expect((unsigned int )credits <= 4U, 0L);
  }
  if (tmp___7 != 0L) {
    {
    eth_txq_stop(q);
    wr_mid = wr_mid | 3221225472U;
    }
  } else {
  }
  {
  wr = (struct fw_eth_tx_pkt_wr *)q->q.desc + (unsigned long )q->q.pidx;
  tmp___8 = __fswab32(wr_mid);
  wr->equiq_to_len16 = tmp___8;
  wr->r3 = 0ULL;
  end = (u64 *)wr + (unsigned long )flits;
  tmp___9 = skb_end_pointer((struct sk_buff const *)skb);
  ssi = (struct skb_shared_info const *)tmp___9;
  }
  if ((unsigned int )((unsigned short )ssi->gso_size) != 0U) {
    {
    lso = (struct cpl_tx_pkt_lso *)wr;
    v6 = ((int )ssi->gso_type & 16) != 0;
    tmp___10 = skb_network_header_len((struct sk_buff const *)skb);
    l3hdr_len = (int )tmp___10;
    tmp___11 = skb_network_offset((struct sk_buff const *)skb);
    eth_xtra_len = tmp___11 + -14;
    wr->op_immdlen = 536870920U;
    tmp___12 = tcp_hdr((struct sk_buff const *)skb);
    tmp___13 = __fswab32((__u32 )((((((int )v6 << 20) | -306184192) | (eth_xtra_len / 4 << 16)) | (l3hdr_len / 4 << 4)) | (int )tmp___12->doff));
    lso->c.lso_ctrl = tmp___13;
    lso->c.ipid_ofst = 0U;
    tmp___14 = __fswab16((int )ssi->gso_size);
    lso->c.mss = tmp___14;
    lso->c.seqno_offset = 0U;
    tmp___15 = __fswab32(skb->len);
    lso->c.len = tmp___15;
    cpl = (struct cpl_tx_pkt_core *)lso + 1U;
    cntrl = (((int )v6 ? 10995116277760ULL : 8796093022208ULL) | ((unsigned long long )l3hdr_len << 20)) | ((unsigned long long )eth_xtra_len << 34);
    q->tso = q->tso + 1UL;
    q->tx_cso = q->tx_cso + (unsigned long )ssi->gso_segs;
    }
  } else {
    {
    tmp___16 = is_eth_imm((struct sk_buff const *)skb);
    len = tmp___16 != 0 ? (int )(skb->len + 16U) : 16;
    tmp___17 = __fswab32((__u32 )(len | 134217728));
    wr->op_immdlen = tmp___17;
    cpl = (struct cpl_tx_pkt_core *)wr + 1U;
    }
    if ((unsigned int )*((unsigned char *)skb + 124UL) == 12U) {
      {
      tmp___18 = hwcsum((struct sk_buff const *)skb);
      cntrl = tmp___18 | 4611686018427387904ULL;
      q->tx_cso = q->tx_cso + 1UL;
      }
    } else {
      cntrl = 0xc000000000000000ULL;
    }
  }
  if (((int )skb->vlan_tci & 4096) != 0) {
    q->vlan_ins = q->vlan_ins + 1UL;
    cntrl = (cntrl | ((unsigned long long )((int )skb->vlan_tci & -4097) << 44)) | 1152921504606846976ULL;
  } else {
  }
  {
  tmp___19 = __fswab32(((unsigned int )((int )pi->tx_chan << 16) | (adap->fn << 8)) | 3992977408U);
  cpl->ctrl0 = tmp___19;
  cpl->pack = 0U;
  tmp___20 = __fswab16((int )((__u16 )skb->len));
  cpl->len = tmp___20;
  tmp___21 = __fswab64(cntrl);
  cpl->ctrl1 = tmp___21;
  tmp___22 = is_eth_imm((struct sk_buff const *)skb);
  }
  if (tmp___22 != 0) {
    {
    inline_tx_skb((struct sk_buff const *)skb, (struct sge_txq const *)(& q->q),
                  (void *)cpl + 1U);
    consume_skb(skb);
    }
  } else {
    {
    write_sgl((struct sk_buff const *)skb, & q->q, (struct ulptx_sgl *)cpl + 1U,
              end, 0U, (dma_addr_t const *)(& addr));
    skb_orphan(skb);
    last_desc = (int )((q->q.pidx + ndesc) - 1U);
    }
    if ((unsigned int )last_desc >= q->q.size) {
      last_desc = (int )((unsigned int )last_desc - q->q.size);
    } else {
    }
    (q->q.sdesc + (unsigned long )last_desc)->skb = skb;
    (q->q.sdesc + (unsigned long )last_desc)->sgl = (struct ulptx_sgl *)cpl + 1U;
  }
  {
  txq_advance(& q->q, ndesc);
  ring_tx_db(adap, & q->q, (int )ndesc);
  }
  return (0);
}
}
__inline static void reclaim_completed_tx_imm(struct sge_txq *q )
{
  int hw_cidx ;
  __u16 tmp ;
  int reclaim ;
  {
  {
  tmp = __fswab16((int )(q->stat)->cidx);
  hw_cidx = (int )tmp;
  reclaim = (int )((unsigned int )hw_cidx - q->cidx);
  }
  if (reclaim < 0) {
    reclaim = (int )((unsigned int )reclaim + q->size);
  } else {
  }
  q->in_use = q->in_use - (unsigned int )reclaim;
  q->cidx = (unsigned int )hw_cidx;
  return;
}
}
__inline static int is_imm(struct sk_buff const *skb )
{
  {
  return ((unsigned int )skb->len <= 512U);
}
}
static void ctrlq_check_stop(struct sge_ctrl_txq *q , struct fw_wr_hdr *wr )
{
  unsigned int tmp ;
  long tmp___0 ;
  {
  {
  reclaim_completed_tx_imm(& q->q);
  tmp = txq_avail((struct sge_txq const *)(& q->q));
  tmp___0 = ldv__builtin_expect(tmp <= 7U, 0L);
  }
  if (tmp___0 != 0L) {
    wr->lo = wr->lo | 192U;
    q->q.stops = q->q.stops + 1UL;
    q->full = 1U;
  } else {
  }
  return;
}
}
static int ctrl_xmit(struct sge_ctrl_txq *q , struct sk_buff *skb )
{
  unsigned int ndesc ;
  struct fw_wr_hdr *wr ;
  int __ret_warn_on ;
  long tmp ;
  int tmp___0 ;
  long tmp___1 ;
  long tmp___2 ;
  unsigned int tmp___3 ;
  long tmp___4 ;
  {
  {
  tmp___0 = is_imm((struct sk_buff const *)skb);
  tmp___1 = ldv__builtin_expect(tmp___0 == 0, 0L);
  }
  if (tmp___1 != 0L) {
    {
    __ret_warn_on = 1;
    tmp = ldv__builtin_expect(__ret_warn_on != 0, 0L);
    }
    if (tmp != 0L) {
      {
      warn_slowpath_null("drivers/net/ethernet/chelsio/cxgb4/sge.c", 1169);
      }
    } else {
    }
    {
    ldv__builtin_expect(__ret_warn_on != 0, 0L);
    consume_skb(skb);
    }
    return (1);
  } else {
  }
  {
  ndesc = (unsigned int )(((unsigned long )skb->len + 63UL) / 64UL);
  spin_lock(& q->sendq.lock);
  tmp___2 = ldv__builtin_expect((unsigned int )q->full != 0U, 0L);
  }
  if (tmp___2 != 0L) {
    {
    skb->priority = ndesc;
    __skb_queue_tail(& q->sendq, skb);
    spin_unlock(& q->sendq.lock);
    }
    return (2);
  } else {
  }
  {
  wr = (struct fw_wr_hdr *)q->q.desc + (unsigned long )q->q.pidx;
  inline_tx_skb((struct sk_buff const *)skb, (struct sge_txq const *)(& q->q),
                (void *)wr);
  txq_advance(& q->q, ndesc);
  tmp___3 = txq_avail((struct sge_txq const *)(& q->q));
  tmp___4 = ldv__builtin_expect(tmp___3 <= 7U, 0L);
  }
  if (tmp___4 != 0L) {
    {
    ctrlq_check_stop(q, wr);
    }
  } else {
  }
  {
  ring_tx_db(q->adap, & q->q, (int )ndesc);
  spin_unlock(& q->sendq.lock);
  kfree_skb(skb);
  }
  return (0);
}
}
static void restart_ctrlq(unsigned long data )
{
  struct sk_buff *skb ;
  unsigned int written ;
  struct sge_ctrl_txq *q ;
  unsigned int tmp ;
  long tmp___0 ;
  struct fw_wr_hdr *wr ;
  unsigned int ndesc ;
  unsigned long old ;
  unsigned int tmp___1 ;
  long tmp___2 ;
  {
  {
  written = 0U;
  q = (struct sge_ctrl_txq *)data;
  spin_lock(& q->sendq.lock);
  reclaim_completed_tx_imm(& q->q);
  tmp = txq_avail((struct sge_txq const *)(& q->q));
  tmp___0 = ldv__builtin_expect(tmp <= 7U, 0L);
  }
  if (tmp___0 != 0L) {
    {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"drivers/net/ethernet/chelsio/cxgb4/sge.c"),
                         "i" (1212), "i" (12UL));
    __builtin_unreachable();
    }
  } else {
  }
  goto ldv_54503;
  ldv_54502:
  {
  ndesc = skb->priority;
  spin_unlock(& q->sendq.lock);
  wr = (struct fw_wr_hdr *)q->q.desc + (unsigned long )q->q.pidx;
  inline_tx_skb((struct sk_buff const *)skb, (struct sge_txq const *)(& q->q),
                (void *)wr);
  kfree_skb(skb);
  written = written + ndesc;
  txq_advance(& q->q, ndesc);
  tmp___1 = txq_avail((struct sge_txq const *)(& q->q));
  tmp___2 = ldv__builtin_expect(tmp___1 <= 7U, 0L);
  }
  if (tmp___2 != 0L) {
    {
    old = q->q.stops;
    ctrlq_check_stop(q, wr);
    }
    if (q->q.stops != old) {
      {
      spin_lock(& q->sendq.lock);
      }
      goto ringdb;
    } else {
    }
  } else {
  }
  if (written > 16U) {
    {
    ring_tx_db(q->adap, & q->q, (int )written);
    written = 0U;
    }
  } else {
  }
  {
  spin_lock(& q->sendq.lock);
  }
  ldv_54503:
  {
  skb = __skb_dequeue(& q->sendq);
  }
  if ((unsigned long )skb != (unsigned long )((struct sk_buff *)0)) {
    goto ldv_54502;
  } else {
  }
  q->full = 0U;
  ringdb: ;
  if (written != 0U) {
    {
    ring_tx_db(q->adap, & q->q, (int )written);
    }
  } else {
  }
  {
  spin_unlock(& q->sendq.lock);
  }
  return;
}
}
int t4_mgmt_tx(struct adapter *adap , struct sk_buff *skb )
{
  int ret ;
  {
  {
  local_bh_disable();
  ret = ctrl_xmit((struct sge_ctrl_txq *)(& adap->sge.ctrlq), skb);
  local_bh_enable();
  }
  return (ret);
}
}
__inline static int is_ofld_imm(struct sk_buff const *skb )
{
  {
  return ((unsigned int )skb->len <= 128U);
}
}
__inline static unsigned int calc_tx_flits_ofld(struct sk_buff const *skb )
{
  unsigned int flits ;
  unsigned int cnt ;
  int tmp ;
  int tmp___0 ;
  unsigned char *tmp___1 ;
  unsigned char *tmp___2 ;
  unsigned char *tmp___3 ;
  unsigned int tmp___4 ;
  {
  {
  tmp = is_ofld_imm(skb);
  }
  if (tmp != 0) {
    return (((unsigned int )skb->len + 7U) / 8U);
  } else {
  }
  {
  tmp___0 = skb_transport_offset(skb);
  flits = (unsigned int )tmp___0 / 8U;
  tmp___1 = skb_end_pointer(skb);
  cnt = (unsigned int )((struct skb_shared_info *)tmp___1)->nr_frags;
  tmp___2 = skb_tail_pointer(skb);
  tmp___3 = skb_transport_header(skb);
  }
  if ((unsigned long )tmp___2 != (unsigned long )tmp___3) {
    cnt = cnt + 1U;
  } else {
  }
  {
  tmp___4 = sgl_len(cnt);
  }
  return (flits + tmp___4);
}
}
static void txq_stop_maperr(struct sge_ofld_txq *q )
{
  {
  {
  q->mapping_err = q->mapping_err + 1UL;
  q->q.stops = q->q.stops + 1UL;
  set_bit((long )(q->q.cntxt_id - (q->adap)->sge.egr_start), (unsigned long volatile *)(& (q->adap)->sge.txq_maperr));
  }
  return;
}
}
static void ofldtxq_stop(struct sge_ofld_txq *q , struct sk_buff *skb )
{
  struct fw_wr_hdr *wr ;
  {
  wr = (struct fw_wr_hdr *)skb->data;
  wr->lo = wr->lo | 192U;
  q->q.stops = q->q.stops + 1UL;
  q->full = 1U;
  return;
}
}
static void service_ofldq(struct sge_ofld_txq *q )
{
  u64 *pos ;
  int credits ;
  struct sk_buff *skb ;
  unsigned int written ;
  unsigned int flits ;
  unsigned int ndesc ;
  unsigned int tmp ;
  long tmp___0 ;
  long tmp___1 ;
  int last_desc ;
  int hdr_len ;
  int tmp___2 ;
  int tmp___3 ;
  int tmp___4 ;
  long tmp___5 ;
  int tmp___6 ;
  long tmp___7 ;
  {
  written = 0U;
  goto ldv_54539;
  ldv_54538:
  {
  spin_unlock(& q->sendq.lock);
  reclaim_completed_tx(q->adap, & q->q, 0);
  flits = skb->priority;
  ndesc = flits_to_desc(flits);
  tmp = txq_avail((struct sge_txq const *)(& q->q));
  credits = (int )(tmp - ndesc);
  tmp___0 = ldv__builtin_expect(credits < 0, 0L);
  }
  if (tmp___0 != 0L) {
    {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"drivers/net/ethernet/chelsio/cxgb4/sge.c"),
                         "i" (1363), "i" (12UL));
    __builtin_unreachable();
    }
  } else {
  }
  {
  tmp___1 = ldv__builtin_expect((unsigned int )credits <= 7U, 0L);
  }
  if (tmp___1 != 0L) {
    {
    ofldtxq_stop(q, skb);
    }
  } else {
  }
  {
  pos = (u64 *)q->q.desc + (unsigned long )q->q.pidx;
  tmp___4 = is_ofld_imm((struct sk_buff const *)skb);
  }
  if (tmp___4 != 0) {
    {
    inline_tx_skb((struct sk_buff const *)skb, (struct sge_txq const *)(& q->q),
                  (void *)pos);
    }
  } else {
    {
    tmp___3 = map_skb((q->adap)->pdev_dev, (struct sk_buff const *)skb, (dma_addr_t *)skb->head);
    }
    if (tmp___3 != 0) {
      {
      txq_stop_maperr(q);
      spin_lock(& q->sendq.lock);
      }
      goto ldv_54535;
    } else {
      {
      tmp___2 = skb_transport_offset((struct sk_buff const *)skb);
      hdr_len = tmp___2;
      memcpy((void *)pos, (void const *)skb->data, (size_t )hdr_len);
      write_sgl((struct sk_buff const *)skb, & q->q, (struct ulptx_sgl *)pos + (unsigned long )hdr_len,
                pos + (unsigned long )flits, (unsigned int )hdr_len, (dma_addr_t const *)skb->head);
      skb->dev = (q->adap)->port[0];
      skb->destructor = & deferred_unmap_destructor;
      last_desc = (int )((q->q.pidx + ndesc) - 1U);
      }
      if ((unsigned int )last_desc >= q->q.size) {
        last_desc = (int )((unsigned int )last_desc - q->q.size);
      } else {
      }
      (q->q.sdesc + (unsigned long )last_desc)->skb = skb;
    }
  }
  {
  txq_advance(& q->q, ndesc);
  written = written + ndesc;
  tmp___5 = ldv__builtin_expect(written > 32U, 0L);
  }
  if (tmp___5 != 0L) {
    {
    ring_tx_db(q->adap, & q->q, (int )written);
    written = 0U;
    }
  } else {
  }
  {
  spin_lock(& q->sendq.lock);
  __skb_unlink(skb, & q->sendq);
  tmp___6 = is_ofld_imm((struct sk_buff const *)skb);
  }
  if (tmp___6 != 0) {
    {
    kfree_skb(skb);
    }
  } else {
  }
  ldv_54539:
  {
  skb = skb_peek((struct sk_buff_head const *)(& q->sendq));
  }
  if ((unsigned long )skb != (unsigned long )((struct sk_buff *)0) && (unsigned int )q->full == 0U) {
    goto ldv_54538;
  } else {
  }
  ldv_54535:
  {
  tmp___7 = ldv__builtin_expect(written != 0U, 1L);
  }
  if (tmp___7 != 0L) {
    {
    ring_tx_db(q->adap, & q->q, (int )written);
    }
  } else {
  }
  return;
}
}
static int ofld_xmit(struct sge_ofld_txq *q , struct sk_buff *skb )
{
  {
  {
  skb->priority = calc_tx_flits_ofld((struct sk_buff const *)skb);
  spin_lock(& q->sendq.lock);
  __skb_queue_tail(& q->sendq, skb);
  }
  if (q->sendq.qlen == 1U) {
    {
    service_ofldq(q);
    }
  } else {
  }
  {
  spin_unlock(& q->sendq.lock);
  }
  return (0);
}
}
static void restart_ofldq(unsigned long data )
{
  struct sge_ofld_txq *q ;
  {
  {
  q = (struct sge_ofld_txq *)data;
  spin_lock(& q->sendq.lock);
  q->full = 0U;
  service_ofldq(q);
  spin_unlock(& q->sendq.lock);
  }
  return;
}
}
__inline static unsigned int skb_txq(struct sk_buff const *skb )
{
  {
  return ((unsigned int )((int )((unsigned short )skb->queue_mapping) >> 1));
}
}
__inline static unsigned int is_ctrl_pkt(struct sk_buff const *skb )
{
  {
  return ((unsigned int )skb->queue_mapping & 1U);
}
}
__inline static int ofld_send(struct adapter *adap , struct sk_buff *skb )
{
  unsigned int idx ;
  unsigned int tmp ;
  int tmp___0 ;
  unsigned int tmp___1 ;
  long tmp___2 ;
  int tmp___3 ;
  {
  {
  tmp = skb_txq((struct sk_buff const *)skb);
  idx = tmp;
  tmp___1 = is_ctrl_pkt((struct sk_buff const *)skb);
  tmp___2 = ldv__builtin_expect(tmp___1 != 0U, 0L);
  }
  if (tmp___2 != 0L) {
    {
    tmp___0 = ctrl_xmit((struct sge_ctrl_txq *)(& adap->sge.ctrlq) + (unsigned long )idx,
                        skb);
    }
    return (tmp___0);
  } else {
  }
  {
  tmp___3 = ofld_xmit((struct sge_ofld_txq *)(& adap->sge.ofldtxq) + (unsigned long )idx,
                      skb);
  }
  return (tmp___3);
}
}
int t4_ofld_send(struct adapter *adap , struct sk_buff *skb )
{
  int ret ;
  {
  {
  local_bh_disable();
  ret = ofld_send(adap, skb);
  local_bh_enable();
  }
  return (ret);
}
}
int cxgb4_ofld_send(struct net_device *dev , struct sk_buff *skb )
{
  struct adapter *tmp ;
  int tmp___0 ;
  {
  {
  tmp = netdev2adap((struct net_device const *)dev);
  tmp___0 = t4_ofld_send(tmp, skb);
  }
  return (tmp___0);
}
}
static char const __kstrtab_cxgb4_ofld_send[16U] =
  { 'c', 'x', 'g', 'b',
        '4', '_', 'o', 'f',
        'l', 'd', '_', 's',
        'e', 'n', 'd', '\000'};
struct kernel_symbol const __ksymtab_cxgb4_ofld_send ;
struct kernel_symbol const __ksymtab_cxgb4_ofld_send = {(unsigned long )(& cxgb4_ofld_send), (char const *)(& __kstrtab_cxgb4_ofld_send)};
__inline static void copy_frags(struct sk_buff *skb , struct pkt_gl const *gl ,
                                unsigned int offset )
{
  int i ;
  unsigned char *tmp ;
  {
  {
  __skb_fill_page_desc(skb, 0, gl->frags[0].page, (int )((unsigned int )gl->frags[0].offset + offset),
                       (int )((unsigned int )gl->frags[0].size - offset));
  tmp = skb_end_pointer((struct sk_buff const *)skb);
  ((struct skb_shared_info *)tmp)->nr_frags = (unsigned char )gl->nfrags;
  i = 1;
  }
  goto ldv_54583;
  ldv_54582:
  {
  __skb_fill_page_desc(skb, i, gl->frags[i].page, (int )gl->frags[i].offset, (int )gl->frags[i].size);
  i = i + 1;
  }
  ldv_54583: ;
  if ((unsigned int )i < (unsigned int )gl->nfrags) {
    goto ldv_54582;
  } else {
  }
  {
  get_page(gl->frags[(unsigned int )gl->nfrags - 1U].page);
  }
  return;
}
}
struct sk_buff *cxgb4_pktgl_to_skb(struct pkt_gl const *gl , unsigned int skb_len ,
                                   unsigned int pull_len )
{
  struct sk_buff *skb ;
  long tmp ;
  long tmp___0 ;
  {
  if ((unsigned int )gl->tot_len <= 256U) {
    {
    skb = dev_alloc_skb(gl->tot_len);
    tmp = ldv__builtin_expect((unsigned long )skb == (unsigned long )((struct sk_buff *)0),
                           0L);
    }
    if (tmp != 0L) {
      goto out;
    } else {
    }
    {
    __skb_put(skb, gl->tot_len);
    skb_copy_to_linear_data(skb, (void const *)gl->va, gl->tot_len);
    }
  } else {
    {
    skb = dev_alloc_skb(skb_len);
    tmp___0 = ldv__builtin_expect((unsigned long )skb == (unsigned long )((struct sk_buff *)0),
                               0L);
    }
    if (tmp___0 != 0L) {
      goto out;
    } else {
    }
    {
    __skb_put(skb, pull_len);
    skb_copy_to_linear_data(skb, (void const *)gl->va, pull_len);
    copy_frags(skb, gl, pull_len);
    skb->len = gl->tot_len;
    skb->data_len = skb->len - pull_len;
    skb->truesize = skb->truesize + skb->data_len;
    }
  }
  out: ;
  return (skb);
}
}
static char const __kstrtab_cxgb4_pktgl_to_skb[19U] =
  { 'c', 'x', 'g', 'b',
        '4', '_', 'p', 'k',
        't', 'g', 'l', '_',
        't', 'o', '_', 's',
        'k', 'b', '\000'};
struct kernel_symbol const __ksymtab_cxgb4_pktgl_to_skb ;
struct kernel_symbol const __ksymtab_cxgb4_pktgl_to_skb = {(unsigned long )(& cxgb4_pktgl_to_skb), (char const *)(& __kstrtab_cxgb4_pktgl_to_skb)};
static void t4_pktgl_free(struct pkt_gl const *gl )
{
  int n ;
  struct page_frag const *p ;
  int tmp ;
  {
  p = (struct page_frag const *)(& gl->frags);
  n = (int )((unsigned int )gl->nfrags - 1U);
  goto ldv_54607;
  ldv_54606:
  {
  put_page(p->page);
  p = p + 1;
  }
  ldv_54607:
  tmp = n;
  n = n - 1;
  if (tmp != 0) {
    goto ldv_54606;
  } else {
  }
  return;
}
}
static int handle_trace_pkt(struct adapter *adap , struct pkt_gl const *gl )
{
  struct sk_buff *skb ;
  long tmp ;
  int tmp___0 ;
  {
  {
  skb = cxgb4_pktgl_to_skb(gl, 128U, 128U);
  tmp = ldv__builtin_expect((unsigned long )skb == (unsigned long )((struct sk_buff *)0),
                         0L);
  }
  if (tmp != 0L) {
    {
    t4_pktgl_free(gl);
    }
    return (0);
  } else {
  }
  {
  tmp___0 = is_t4(adap->params.chip);
  }
  if (tmp___0 != 0) {
    {
    __skb_pull(skb, 16U);
    }
  } else {
    {
    __skb_pull(skb, 24U);
    }
  }
  {
  skb_reset_mac_header(skb);
  skb->protocol = 65535U;
  skb->dev = adap->port[0];
  netif_receive_skb(skb);
  }
  return (0);
}
}
static void do_gro(struct sge_eth_rxq *rxq , struct pkt_gl const *gl , struct cpl_rx_pkt const *pkt )
{
  struct adapter *adapter ;
  struct sge *s ;
  int ret ;
  struct sk_buff *skb ;
  long tmp ;
  __u16 tmp___0 ;
  long tmp___1 ;
  gro_result_t tmp___2 ;
  {
  {
  adapter = rxq->rspq.adap;
  s = & adapter->sge;
  skb = napi_get_frags(& rxq->rspq.napi);
  tmp = ldv__builtin_expect((unsigned long )skb == (unsigned long )((struct sk_buff *)0),
                         0L);
  }
  if (tmp != 0L) {
    {
    t4_pktgl_free(gl);
    rxq->stats.rx_drops = rxq->stats.rx_drops + 1UL;
    }
    return;
  } else {
  }
  {
  copy_frags(skb, gl, s->pktshift);
  skb->len = (unsigned int )gl->tot_len - s->pktshift;
  skb->data_len = skb->len;
  skb->truesize = skb->truesize + skb->data_len;
  skb->ip_summed = 1U;
  skb_record_rx_queue(skb, (int )rxq->rspq.idx);
  }
  if (((rxq->rspq.netdev)->features & 2147483648ULL) != 0ULL) {
    {
    skb_set_hash(skb, pkt->rsshdr.hash_val, 2);
    }
  } else {
  }
  {
  tmp___1 = ldv__builtin_expect((unsigned int )*((unsigned char *)pkt + 9UL) != 0U, 0L);
  }
  if (tmp___1 != 0L) {
    {
    tmp___0 = __fswab16((int )pkt->vlan);
    __vlan_hwaccel_put_tag(skb, 129, (int )tmp___0);
    rxq->stats.vlan_ex = rxq->stats.vlan_ex + 1UL;
    }
  } else {
  }
  {
  tmp___2 = napi_gro_frags(& rxq->rspq.napi);
  ret = (int )tmp___2;
  }
  if (ret == 2) {
    rxq->stats.lro_pkts = rxq->stats.lro_pkts + 1UL;
  } else
  if ((unsigned int )ret <= 1U) {
    rxq->stats.lro_merged = rxq->stats.lro_merged + 1UL;
  } else {
  }
  rxq->stats.pkts = rxq->stats.pkts + 1UL;
  rxq->stats.rx_cso = rxq->stats.rx_cso + 1UL;
  return;
}
}
int t4_ethrx_handler(struct sge_rspq *q , __be64 const *rsp , struct pkt_gl const *si )
{
  bool csum_ok ;
  struct sk_buff *skb ;
  struct cpl_rx_pkt const *pkt ;
  struct sge_eth_rxq *rxq ;
  struct sge_rspq const *__mptr ;
  struct sge *s ;
  int cpl_trace_pkt ;
  int tmp ;
  int tmp___0 ;
  long tmp___1 ;
  long tmp___2 ;
  __sum16 c ;
  __u16 tmp___3 ;
  long tmp___4 ;
  {
  {
  __mptr = (struct sge_rspq const *)q;
  rxq = (struct sge_eth_rxq *)__mptr;
  s = & (q->adap)->sge;
  tmp = is_t4((q->adap)->params.chip);
  cpl_trace_pkt = tmp != 0 ? 176 : 72;
  tmp___1 = ldv__builtin_expect((int )*((u8 *)rsp) == cpl_trace_pkt, 0L);
  }
  if (tmp___1 != 0L) {
    {
    tmp___0 = handle_trace_pkt(q->adap, si);
    }
    return (tmp___0);
  } else {
  }
  pkt = (struct cpl_rx_pkt const *)rsp;
  csum_ok = (bool )((unsigned int )*((unsigned char *)pkt + 9UL) != 0U && (unsigned int )((unsigned short )pkt->err_vec) == 0U);
  if (((((unsigned int )pkt->l2info & 32768U) != 0U && ((q->netdev)->features & 16384ULL) != 0ULL) && (int )csum_ok) && (unsigned int )*((unsigned char *)pkt + 9UL) == 0U) {
    {
    do_gro(rxq, si, pkt);
    }
    return (0);
  } else {
  }
  {
  skb = cxgb4_pktgl_to_skb(si, 512U, 128U);
  tmp___2 = ldv__builtin_expect((unsigned long )skb == (unsigned long )((struct sk_buff *)0),
                             0L);
  }
  if (tmp___2 != 0L) {
    {
    t4_pktgl_free(si);
    rxq->stats.rx_drops = rxq->stats.rx_drops + 1UL;
    }
    return (0);
  } else {
  }
  {
  __skb_pull(skb, s->pktshift);
  skb->protocol = eth_type_trans(skb, q->netdev);
  skb_record_rx_queue(skb, (int )q->idx);
  }
  if (((skb->dev)->features & 2147483648ULL) != 0ULL) {
    {
    skb_set_hash(skb, pkt->rsshdr.hash_val, 2);
    }
  } else {
  }
  rxq->stats.pkts = rxq->stats.pkts + 1UL;
  if (((int )csum_ok && ((q->netdev)->features & 4294967296ULL) != 0ULL) && ((unsigned int )pkt->l2info & 49152U) != 0U) {
    if ((unsigned int )*((unsigned char *)pkt + 9UL) == 0U) {
      skb->ip_summed = 1U;
      rxq->stats.rx_cso = rxq->stats.rx_cso + 1UL;
    } else
    if ((int )pkt->l2info & 1) {
      {
      c = pkt->csum;
      skb->__annonCompField68.csum = csum_unfold((int )c);
      skb->ip_summed = 2U;
      rxq->stats.rx_cso = rxq->stats.rx_cso + 1UL;
      }
    } else {
    }
  } else {
    {
    skb_checksum_none_assert((struct sk_buff const *)skb);
    }
  }
  {
  tmp___4 = ldv__builtin_expect((unsigned int )*((unsigned char *)pkt + 9UL) != 0U, 0L);
  }
  if (tmp___4 != 0L) {
    {
    tmp___3 = __fswab16((int )pkt->vlan);
    __vlan_hwaccel_put_tag(skb, 129, (int )tmp___3);
    rxq->stats.vlan_ex = rxq->stats.vlan_ex + 1UL;
    }
  } else {
  }
  {
  netif_receive_skb(skb);
  }
  return (0);
}
}
static void restore_rx_bufs(struct pkt_gl const *si , struct sge_fl *q , int frags )
{
  struct rx_sw_desc *d ;
  int tmp ;
  {
  goto ldv_54644;
  ldv_54643: ;
  if (q->cidx == 0U) {
    q->cidx = q->size - 1U;
  } else {
    q->cidx = q->cidx - 1U;
  }
  d = q->sdesc + (unsigned long )q->cidx;
  d->page = si->frags[frags].page;
  d->dma_addr = d->dma_addr | 16ULL;
  q->avail = q->avail + 1U;
  ldv_54644:
  tmp = frags;
  frags = frags - 1;
  if (tmp != 0) {
    goto ldv_54643;
  } else {
  }
  return;
}
}
__inline static bool is_new_response(struct rsp_ctrl const *r , struct sge_rspq const *q )
{
  {
  return ((int )((unsigned char )r->__annonCompField90.type_gen) >> 7 == (int )((unsigned char )q->gen));
}
}
__inline static void rspq_next(struct sge_rspq *q )
{
  long tmp ;
  {
  {
  q->cur_desc = q->cur_desc + (unsigned long )q->iqe_len;
  q->cidx = q->cidx + 1U;
  tmp = ldv__builtin_expect(q->cidx == q->size, 0L);
  }
  if (tmp != 0L) {
    q->cidx = 0U;
    q->gen = (u8 )((unsigned int )q->gen ^ 1U);
    q->cur_desc = (__be64 const *)q->desc;
  } else {
  }
  return;
}
}
static int process_responses(struct sge_rspq *q , int budget )
{
  int ret ;
  int rsp_type ;
  int budget_left ;
  struct rsp_ctrl const *rc ;
  struct sge_eth_rxq *rxq ;
  struct sge_rspq const *__mptr ;
  struct adapter *adapter ;
  struct sge *s ;
  bool tmp ;
  int tmp___0 ;
  struct page_frag *fp ;
  struct pkt_gl si ;
  struct rx_sw_desc const *rsd ;
  u32 len ;
  __u32 tmp___1 ;
  u32 bufsz ;
  u32 frags ;
  long tmp___2 ;
  int tmp___3 ;
  u32 _min1 ;
  u32 _min2 ;
  dma_addr_t tmp___4 ;
  void *tmp___5 ;
  long tmp___6 ;
  long tmp___7 ;
  long tmp___8 ;
  long tmp___9 ;
  long tmp___10 ;
  {
  budget_left = budget;
  __mptr = (struct sge_rspq const *)q;
  rxq = (struct sge_eth_rxq *)__mptr;
  adapter = q->adap;
  s = & adapter->sge;
  goto ldv_54679;
  ldv_54678:
  {
  rc = (struct rsp_ctrl const *)q->cur_desc + ((unsigned long )q->iqe_len + 0xfffffffffffffff0UL);
  tmp = is_new_response(rc, (struct sge_rspq const *)q);
  }
  if (tmp) {
    tmp___0 = 0;
  } else {
    tmp___0 = 1;
  }
  if (tmp___0) {
    goto ldv_54666;
  } else {
  }
  {
  __asm__ volatile ("lfence": : : "memory");
  rsp_type = ((int )((unsigned char )rc->__annonCompField90.type_gen) >> 4) & 3;
  tmp___8 = ldv__builtin_expect(rsp_type == 0, 1L);
  }
  if (tmp___8 != 0L) {
    {
    tmp___1 = __fswab32(rc->pldbuflen_qid);
    len = tmp___1;
    }
    if ((int )len < 0) {
      {
      tmp___2 = ldv__builtin_expect(q->offset > 0, 1L);
      }
      if (tmp___2 != 0L) {
        {
        free_rx_bufs(q->adap, & rxq->fl, 1);
        q->offset = 0;
        }
      } else {
      }
      len = len & 2147483647U;
    } else {
    }
    si.tot_len = len;
    frags = 0U;
    fp = (struct page_frag *)(& si.frags);
    ldv_54677:
    {
    rsd = (struct rx_sw_desc const *)rxq->fl.sdesc + (unsigned long )rxq->fl.cidx;
    tmp___3 = get_buf_size(adapter, rsd);
    bufsz = (u32 )tmp___3;
    fp->page = rsd->page;
    fp->offset = (__u32 )q->offset;
    _min1 = bufsz;
    _min2 = len;
    fp->size = _min1 < _min2 ? _min1 : _min2;
    len = len - fp->size;
    }
    if (len == 0U) {
      goto ldv_54676;
    } else {
    }
    {
    unmap_rx_buf(q->adap, & rxq->fl);
    frags = frags + 1U;
    fp = fp + 1;
    }
    goto ldv_54677;
    ldv_54676:
    {
    tmp___4 = get_buf_addr(rsd);
    dma_sync_single_for_cpu((q->adap)->pdev_dev, tmp___4, (size_t )fp->size, 2);
    tmp___5 = lowmem_page_address((struct page const *)si.frags[0].page);
    si.va = tmp___5 + (unsigned long )si.frags[0].offset;
    __builtin_prefetch((void const *)si.va);
    si.nfrags = frags + 1U;
    ret = (*(q->handler))(q, q->cur_desc, (struct pkt_gl const *)(& si));
    tmp___6 = ldv__builtin_expect(ret == 0, 1L);
    }
    if (tmp___6 != 0L) {
      q->offset = (int )((__u32 )q->offset + (((fp->size + s->fl_align) - 1U) & - s->fl_align));
    } else {
      {
      restore_rx_bufs((struct pkt_gl const *)(& si), & rxq->fl, (int )frags);
      }
    }
  } else {
    {
    tmp___7 = ldv__builtin_expect(rsp_type == 1, 1L);
    }
    if (tmp___7 != 0L) {
      {
      ret = (*(q->handler))(q, q->cur_desc, (struct pkt_gl const *)0);
      }
    } else {
      {
      ret = (*(q->handler))(q, (__be64 const *)rc, (struct pkt_gl const *)1);
      }
    }
  }
  {
  tmp___9 = ldv__builtin_expect(ret != 0, 0L);
  }
  if (tmp___9 != 0L) {
    q->next_intr_params = 10U;
    goto ldv_54666;
  } else {
  }
  {
  rspq_next(q);
  budget_left = budget_left - 1;
  }
  ldv_54679:
  {
  tmp___10 = ldv__builtin_expect(budget_left != 0, 1L);
  }
  if (tmp___10 != 0L) {
    goto ldv_54678;
  } else {
  }
  ldv_54666: ;
  if (q->offset >= 0 && rxq->fl.size - rxq->fl.avail > 15U) {
    {
    __refill_fl(q->adap, & rxq->fl);
    }
  } else {
  }
  return (budget - budget_left);
}
}
static int napi_rx_handler(struct napi_struct *napi , int budget )
{
  unsigned int params ;
  struct sge_rspq *q ;
  struct napi_struct const *__mptr ;
  int work_done ;
  int tmp ;
  long tmp___0 ;
  {
  {
  __mptr = (struct napi_struct const *)napi;
  q = (struct sge_rspq *)__mptr;
  tmp = process_responses(q, budget);
  work_done = tmp;
  tmp___0 = ldv__builtin_expect(work_done < budget, 1L);
  }
  if (tmp___0 != 0L) {
    {
    napi_complete(napi);
    params = (unsigned int )q->next_intr_params;
    q->next_intr_params = q->intr_params;
    }
  } else {
    params = 14U;
  }
  {
  t4_write_reg(q->adap, 110596U, ((unsigned int )work_done | ((unsigned int )q->cntxt_id << 16)) | (params << 12));
  }
  return (work_done);
}
}
irqreturn_t t4_sge_intr_msix(int irq , void *cookie )
{
  struct sge_rspq *q ;
  {
  {
  q = (struct sge_rspq *)cookie;
  napi_schedule(& q->napi);
  }
  return (1);
}
}
static unsigned int process_intrq(struct adapter *adap )
{
  unsigned int credits ;
  struct rsp_ctrl const *rc ;
  struct sge_rspq *q ;
  bool tmp ;
  int tmp___0 ;
  unsigned int qid ;
  __u32 tmp___1 ;
  {
  {
  q = & adap->sge.intrq;
  spin_lock(& adap->sge.intrq_lock);
  credits = 0U;
  }
  ldv_54702:
  {
  rc = (struct rsp_ctrl const *)q->cur_desc + ((unsigned long )q->iqe_len + 0xfffffffffffffff0UL);
  tmp = is_new_response(rc, (struct sge_rspq const *)q);
  }
  if (tmp) {
    tmp___0 = 0;
  } else {
    tmp___0 = 1;
  }
  if (tmp___0) {
    goto ldv_54700;
  } else {
  }
  __asm__ volatile ("lfence": : : "memory");
  if ((((int )((unsigned char )rc->__annonCompField90.type_gen) >> 4) & 3) == 2) {
    {
    tmp___1 = __fswab32(rc->pldbuflen_qid);
    qid = tmp___1;
    qid = qid - adap->sge.ingr_start;
    napi_schedule(& (adap->sge.ingr_map[qid])->napi);
    }
  } else {
  }
  {
  rspq_next(q);
  credits = credits + 1U;
  }
  goto ldv_54702;
  ldv_54700:
  {
  t4_write_reg(adap, 110596U, (credits | (unsigned int )((int )q->cntxt_id << 16)) | (unsigned int )((int )q->intr_params << 12));
  spin_unlock(& adap->sge.intrq_lock);
  }
  return (credits);
}
}
static irqreturn_t t4_intr_msi(int irq , void *cookie )
{
  struct adapter *adap ;
  {
  {
  adap = (struct adapter *)cookie;
  t4_slow_intr_handler(adap);
  process_intrq(adap);
  }
  return (1);
}
}
static irqreturn_t t4_intr_intx(int irq , void *cookie )
{
  struct adapter *adap ;
  int tmp ;
  unsigned int tmp___0 ;
  {
  {
  adap = (struct adapter *)cookie;
  t4_write_reg(adap, 110660U, 0U);
  tmp = t4_slow_intr_handler(adap);
  tmp___0 = process_intrq(adap);
  }
  if (((unsigned int )tmp | tmp___0) != 0U) {
    return (1);
  } else {
  }
  return (0);
}
}
irq_handler_t t4_intr_handler(struct adapter *adap )
{
  {
  if ((adap->flags & 8U) != 0U) {
    return (& t4_sge_intr_msix);
  } else {
  }
  if ((adap->flags & 4U) != 0U) {
    return (& t4_intr_msi);
  } else {
  }
  return (& t4_intr_intx);
}
}
static void sge_rx_timer_cb(unsigned long data )
{
  unsigned long m ;
  unsigned int i ;
  unsigned int cnt[2U] ;
  struct adapter *adap ;
  struct sge *s ;
  struct sge_eth_rxq *rxq ;
  unsigned int id ;
  unsigned long tmp ;
  struct sge_fl *fl ;
  struct sge_fl const *__mptr ;
  bool tmp___0 ;
  bool tmp___1 ;
  u32 tmp___2 ;
  {
  adap = (struct adapter *)data;
  s = & adap->sge;
  i = 0U;
  goto ldv_54735;
  ldv_54734:
  m = s->starving_fl[i];
  goto ldv_54732;
  ldv_54731:
  {
  tmp = __ffs(m);
  id = (unsigned int )tmp + i * 64U;
  fl = (struct sge_fl *)s->egr_map[id];
  clear_bit((long )id, (unsigned long volatile *)(& s->starving_fl));
  __asm__ volatile ("": : : "memory");
  tmp___1 = fl_starving((struct sge_fl const *)fl);
  }
  if ((int )tmp___1) {
    {
    __mptr = (struct sge_fl const *)fl;
    rxq = (struct sge_eth_rxq *)__mptr + 0xfffffffffffffef8UL;
    tmp___0 = napi_reschedule(& rxq->rspq.napi);
    }
    if ((int )tmp___0) {
      fl->starving = fl->starving + 1UL;
    } else {
      {
      set_bit((long )id, (unsigned long volatile *)(& s->starving_fl));
      }
    }
  } else {
  }
  m = m & (m - 1UL);
  ldv_54732: ;
  if (m != 0UL) {
    goto ldv_54731;
  } else {
  }
  i = i + 1U;
  ldv_54735: ;
  if (i <= 1U) {
    goto ldv_54734;
  } else {
  }
  {
  t4_write_reg(adap, 4300U, 13U);
  cnt[0] = t4_read_reg(adap, 4304U);
  cnt[1] = t4_read_reg(adap, 4308U);
  i = 0U;
  }
  goto ldv_54739;
  ldv_54738: ;
  if (cnt[i] >= s->starve_thres) {
    if ((unsigned int )s->idma_state[i] != 0U || cnt[i] == 4294967295U) {
      goto ldv_54737;
    } else {
    }
    {
    s->idma_state[i] = 1U;
    t4_write_reg(adap, 4300U, 11U);
    tmp___2 = t4_read_reg(adap, 4308U);
    m = (unsigned long )(tmp___2 >> (int )(i * 16U));
    dev_warn((struct device const *)adap->pdev_dev, "SGE idma%u starvation detected for queue %lu\n",
             i, m & 65535UL);
    }
  } else
  if ((unsigned int )s->idma_state[i] != 0U) {
    s->idma_state[i] = 0U;
  } else {
  }
  ldv_54737:
  i = i + 1U;
  ldv_54739: ;
  if (i <= 1U) {
    goto ldv_54738;
  } else {
  }
  {
  ldv_mod_timer_15(& s->rx_timer, (unsigned long )jiffies + 125UL);
  }
  return;
}
}
static void sge_tx_timer_cb(unsigned long data )
{
  unsigned long m ;
  unsigned int i ;
  unsigned int budget ;
  struct adapter *adap ;
  struct sge *s ;
  unsigned long id ;
  unsigned long tmp ;
  struct sge_ofld_txq *txq ;
  struct sge_eth_txq *q ;
  int avail ;
  int tmp___0 ;
  bool tmp___1 ;
  {
  adap = (struct adapter *)data;
  s = & adap->sge;
  i = 0U;
  goto ldv_54757;
  ldv_54756:
  m = s->txq_maperr[i];
  goto ldv_54754;
  ldv_54753:
  {
  tmp = __ffs(m);
  id = tmp + (unsigned long )(i * 64U);
  txq = (struct sge_ofld_txq *)s->egr_map[id];
  clear_bit((long )id, (unsigned long volatile *)(& s->txq_maperr));
  tasklet_schedule(& txq->qresume_tsk);
  m = m & (m - 1UL);
  }
  ldv_54754: ;
  if (m != 0UL) {
    goto ldv_54753;
  } else {
  }
  i = i + 1U;
  ldv_54757: ;
  if (i <= 1U) {
    goto ldv_54756;
  } else {
  }
  budget = 100U;
  i = (unsigned int )s->ethtxq_rover;
  ldv_54767:
  q = (struct sge_eth_txq *)(& s->ethtxq) + (unsigned long )i;
  if (q->q.in_use != 0U && (long )(((unsigned long )jiffies - (q->txq)->trans_start) - 2UL) >= 0L) {
    {
    tmp___1 = __netif_tx_trylock(q->txq);
    }
    if ((int )tmp___1) {
      {
      tmp___0 = reclaimable((struct sge_txq const *)(& q->q));
      avail = tmp___0;
      }
      if (avail != 0) {
        if ((unsigned int )avail > budget) {
          avail = (int )budget;
        } else {
        }
        {
        free_tx_desc(adap, & q->q, (unsigned int )avail, 1);
        q->q.in_use = q->q.in_use - (unsigned int )avail;
        budget = budget - (unsigned int )avail;
        }
      } else {
      }
      {
      __netif_tx_unlock(q->txq);
      }
    } else {
    }
  } else {
  }
  i = i + 1U;
  if (i >= (unsigned int )s->ethqsets) {
    i = 0U;
  } else {
  }
  if (budget != 0U && i != (unsigned int )s->ethtxq_rover) {
    goto ldv_54767;
  } else {
  }
  {
  s->ethtxq_rover = (u16 )i;
  ldv_mod_timer_16(& s->tx_timer, (unsigned long )jiffies + (budget != 0U ? 125UL : 2UL));
  }
  return;
}
}
int t4_sge_alloc_rxq(struct adapter *adap , struct sge_rspq *iq , bool fwevtq , struct net_device *dev ,
                     int intr_idx , struct sge_fl *fl , int (*hnd)(struct sge_rspq * ,
                                                                   __be64 const * ,
                                                                   struct pkt_gl const * ) )
{
  int ret ;
  int flsz ;
  struct fw_iq_cmd c ;
  struct sge *s ;
  struct port_info *pi ;
  void *tmp ;
  int __y ;
  void *tmp___0 ;
  __u32 tmp___1 ;
  __u32 tmp___2 ;
  int tmp___69 ;
  __u16 tmp___70 ;
  __u16 tmp___71 ;
  __u64 tmp___72 ;
  int __y___0 ;
  void *tmp___73 ;
  __u16 tmp___74 ;
  __u64 tmp___75 ;
  __u16 tmp___76 ;
  __u16 tmp___77 ;
  __u16 tmp___78 ;
  unsigned int tmp___79 ;
  unsigned int tmp___80 ;
  unsigned long tmp___81 ;
  unsigned long tmp___82 ;
  unsigned int tmp___83 ;
  {
  {
  flsz = 0;
  s = & adap->sge;
  tmp = netdev_priv((struct net_device const *)dev);
  pi = (struct port_info *)tmp;
  __y = 16;
  iq->size = ((iq->size + 15U) / 16U) * 16U;
  tmp___0 = alloc_ring(adap->pdev_dev, (size_t )iq->size, (size_t )iq->iqe_len, 0UL,
                       & iq->phys_addr, (void *)0, 0UL, -1);
  iq->desc = (__be64 *)tmp___0;
  }
  if ((unsigned long )iq->desc == (unsigned long )((__be64 *)0ULL)) {
    return (-12);
  } else {
  }
  {
  memset((void *)(& c), 0, 64UL);
  tmp___1 = __fswab32((adap->fn << 8) | 279969792U);
  c.op_to_vfn = tmp___1;
  c.alloc_to_len16 = 67109008U;
  tmp___2 = __fswab32((__u32 )((((((int )fwevtq << 28) | ((int )pi->viid << 16)) | (intr_idx < 0 ? 32768 : 0)) | 4096) | (intr_idx >= 0 ? intr_idx : ~ intr_idx)));
  c.type_to_iqandstindex = tmp___2;
  tmp___69 = __ilog2_u32(iq->iqe_len);
  tmp___70 = __fswab16((int )(((unsigned int )(((int )((__u16 )pi->tx_chan) << 12U) | ((int )((__u16 )iq->pktcnt_idx) << 4U)) | ((unsigned int )((__u16 )tmp___69) + 65532U)) | 16384U));
  c.iqdroprss_to_iqesize = tmp___70;
  tmp___71 = __fswab16((int )((__u16 )iq->size));
  c.iqsize = tmp___71;
  tmp___72 = __fswab64(iq->phys_addr);
  c.iqaddr = tmp___72;
  }
  if ((unsigned long )fl != (unsigned long )((struct sge_fl *)0)) {
    {
    __y___0 = 8;
    fl->size = ((fl->size + 7U) / 8U) * 8U;
    tmp___73 = alloc_ring(adap->pdev_dev, (size_t )fl->size, 8UL, 16UL, & fl->addr,
                          (void *)(& fl->sdesc), (size_t )s->stat_len, -1);
    fl->desc = (__be64 *)tmp___73;
    }
    if ((unsigned long )fl->desc == (unsigned long )((__be64 *)0ULL)) {
      goto fl_nomem;
    } else {
    }
    {
    flsz = (int )(fl->size / 8U + s->stat_len / 64U);
    c.iqns_to_fl0congen = 1175453696U;
    c.fl0dcaen_to_fl0cidxfthresh = 12289U;
    tmp___74 = __fswab16((int )((__u16 )flsz));
    c.fl0size = tmp___74;
    tmp___75 = __fswab64(fl->addr);
    c.fl0addr = tmp___75;
    }
  } else {
  }
  {
  ret = t4_wr_mbox(adap, (int )adap->fn, (void const *)(& c), 64, (void *)(& c));
  }
  if (ret != 0) {
    goto err;
  } else {
  }
  {
  netif_napi_add(dev, & iq->napi, & napi_rx_handler, 64);
  iq->cur_desc = (__be64 const *)iq->desc;
  iq->cidx = 0U;
  iq->gen = 1U;
  iq->next_intr_params = iq->intr_params;
  tmp___76 = __fswab16((int )c.iqid);
  iq->cntxt_id = tmp___76;
  tmp___77 = __fswab16((int )c.physiqid);
  iq->abs_id = tmp___77;
  iq->size = iq->size - 1U;
  iq->adap = adap;
  iq->netdev = dev;
  iq->handler = hnd;
  iq->offset = (unsigned long )fl != (unsigned long )((struct sge_fl *)0) ? 0 : -1;
  adap->sge.ingr_map[(unsigned int )iq->cntxt_id - adap->sge.ingr_start] = iq;
  }
  if ((unsigned long )fl != (unsigned long )((struct sge_fl *)0)) {
    {
    tmp___78 = __fswab16((int )c.fl0id);
    fl->cntxt_id = (unsigned int )tmp___78;
    tmp___79 = 0U;
    fl->pend_cred = tmp___79;
    fl->avail = tmp___79;
    tmp___80 = 0U;
    fl->cidx = tmp___80;
    fl->pidx = tmp___80;
    tmp___82 = 0UL;
    fl->starving = tmp___82;
    tmp___81 = tmp___82;
    fl->large_alloc_failed = tmp___81;
    fl->alloc_failed = tmp___81;
    adap->sge.egr_map[fl->cntxt_id - adap->sge.egr_start] = (void *)fl;
    tmp___83 = fl_cap((struct sge_fl const *)fl);
    refill_fl(adap, fl, (int )tmp___83, 208U);
    }
  } else {
  }
  return (0);
  fl_nomem:
  ret = -12;
  err: ;
  if ((unsigned long )iq->desc != (unsigned long )((__be64 *)0ULL)) {
    {
    dma_free_attrs(adap->pdev_dev, (size_t )(iq->size * iq->iqe_len), (void *)iq->desc,
                   iq->phys_addr, (struct dma_attrs *)0);
    iq->desc = (__be64 *)0ULL;
    }
  } else {
  }
  if ((unsigned long )fl != (unsigned long )((struct sge_fl *)0) && (unsigned long )fl->desc != (unsigned long )((__be64 *)0ULL)) {
    {
    kfree((void const *)fl->sdesc);
    fl->sdesc = (struct rx_sw_desc *)0;
    dma_free_attrs(adap->pdev_dev, (unsigned long )flsz * 64UL, (void *)fl->desc,
                   fl->addr, (struct dma_attrs *)0);
    fl->desc = (__be64 *)0ULL;
    }
  } else {
  }
  return (ret);
}
}
static void init_txq(struct adapter *adap , struct sge_txq *q , unsigned int id )
{
  unsigned int s_qpp ;
  unsigned short udb_density ;
  unsigned long qpshift ;
  int page ;
  u32 tmp ;
  int tmp___66 ;
  int tmp___67 ;
  unsigned int tmp___68 ;
  unsigned long tmp___69 ;
  struct lock_class_key __key ;
  {
  {
  q->cntxt_id = id;
  tmp___67 = is_t4(adap->params.chip);
  }
  if (tmp___67 == 0) {
    {
    s_qpp = adap->fn * 4U;
    tmp = t4_read_reg(adap, 4112U);
    udb_density = (unsigned short )(1 << ((int )(tmp >> (int )s_qpp) & 15));
    tmp___66 = __ilog2_u32((u32 )udb_density);
    qpshift = (unsigned long )(12 - tmp___66);
    q->udb = (u64 )(q->cntxt_id << (int )qpshift);
    q->udb = q->udb & 0xfffffffffffff000ULL;
    page = (int )(q->udb / 4096ULL);
    q->udb = q->udb + (u64 )((q->cntxt_id - (unsigned int )(page * (int )udb_density)) * 128U);
    }
  } else {
  }
  {
  q->in_use = 0U;
  tmp___68 = 0U;
  q->pidx = tmp___68;
  q->cidx = tmp___68;
  tmp___69 = 0UL;
  q->restarts = tmp___69;
  q->stops = tmp___69;
  q->stat = (struct sge_qstat *)q->desc + (unsigned long )q->size;
  spinlock_check(& q->db_lock);
  __raw_spin_lock_init(& q->db_lock.__annonCompField19.rlock, "&(&q->db_lock)->rlock",
                       & __key);
  adap->sge.egr_map[id - adap->sge.egr_start] = (void *)q;
  }
  return;
}
}
int t4_sge_alloc_eth_txq(struct adapter *adap , struct sge_eth_txq *txq , struct net_device *dev ,
                         struct netdev_queue *netdevq , unsigned int iqid )
{
  int ret ;
  int nentries ;
  struct fw_eq_eth_cmd c ;
  struct sge *s ;
  struct port_info *pi ;
  void *tmp ;
  int tmp___0 ;
  void *tmp___1 ;
  __u32 tmp___2 ;
  __u32 tmp___3 ;
  __u32 tmp___4 ;
  __u32 tmp___5 ;
  __u64 tmp___6 ;
  __u32 tmp___7 ;
  unsigned long tmp___8 ;
  unsigned long tmp___9 ;
  {
  {
  s = & adap->sge;
  tmp = netdev_priv((struct net_device const *)dev);
  pi = (struct port_info *)tmp;
  nentries = (int )(txq->q.size + s->stat_len / 64U);
  tmp___0 = netdev_queue_numa_node_read((struct netdev_queue const *)netdevq);
  tmp___1 = alloc_ring(adap->pdev_dev, (size_t )txq->q.size, 64UL, 16UL, & txq->q.phys_addr,
                       (void *)(& txq->q.sdesc), (size_t )s->stat_len, tmp___0);
  txq->q.desc = (struct tx_desc *)tmp___1;
  }
  if ((unsigned long )txq->q.desc == (unsigned long )((struct tx_desc *)0)) {
    return (-12);
  } else {
  }
  {
  memset((void *)(& c), 0, 48UL);
  tmp___2 = __fswab32((adap->fn << 8) | 313524224U);
  c.op_to_vfn = tmp___2;
  c.alloc_to_len16 = 50331792U;
  tmp___3 = __fswab32((__u32 )((int )pi->viid << 16));
  c.viid_pkd = tmp___3;
  tmp___4 = __fswab32(((unsigned int )((int )pi->tx_chan << 16) | iqid) | 6291456U);
  c.fetchszm_to_iqid = tmp___4;
  tmp___5 = __fswab32((__u32 )(nentries | 20250624));
  c.dcaen_to_eqsize = tmp___5;
  tmp___6 = __fswab64(txq->q.phys_addr);
  c.eqaddr = tmp___6;
  ret = t4_wr_mbox(adap, (int )adap->fn, (void const *)(& c), 48, (void *)(& c));
  }
  if (ret != 0) {
    {
    kfree((void const *)txq->q.sdesc);
    txq->q.sdesc = (struct tx_sw_desc *)0;
    dma_free_attrs(adap->pdev_dev, (unsigned long )nentries * 64UL, (void *)txq->q.desc,
                   txq->q.phys_addr, (struct dma_attrs *)0);
    txq->q.desc = (struct tx_desc *)0;
    }
    return (ret);
  } else {
  }
  {
  tmp___7 = __fswab32(c.eqid_pkd);
  init_txq(adap, & txq->q, tmp___7 & 1048575U);
  txq->txq = netdevq;
  tmp___9 = 0UL;
  txq->vlan_ins = tmp___9;
  tmp___8 = tmp___9;
  txq->tx_cso = tmp___8;
  txq->tso = tmp___8;
  txq->mapping_err = 0UL;
  }
  return (0);
}
}
int t4_sge_alloc_ctrl_txq(struct adapter *adap , struct sge_ctrl_txq *txq , struct net_device *dev ,
                          unsigned int iqid , unsigned int cmplqid )
{
  int ret ;
  int nentries ;
  struct fw_eq_ctrl_cmd c ;
  struct sge *s ;
  struct port_info *pi ;
  void *tmp ;
  void *tmp___0 ;
  __u32 tmp___1 ;
  __u32 tmp___2 ;
  __u32 tmp___3 ;
  __u32 tmp___4 ;
  __u64 tmp___5 ;
  __u32 tmp___6 ;
  {
  {
  s = & adap->sge;
  tmp = netdev_priv((struct net_device const *)dev);
  pi = (struct port_info *)tmp;
  nentries = (int )(txq->q.size + s->stat_len / 64U);
  tmp___0 = alloc_ring(adap->pdev_dev, (size_t )nentries, 64UL, 0UL, & txq->q.phys_addr,
                       (void *)0, 0UL, -1);
  txq->q.desc = (struct tx_desc *)tmp___0;
  }
  if ((unsigned long )txq->q.desc == (unsigned long )((struct tx_desc *)0)) {
    return (-12);
  } else {
  }
  {
  tmp___1 = __fswab32((adap->fn << 8) | 330301440U);
  c.op_to_vfn = tmp___1;
  c.alloc_to_len16 = 33554576U;
  tmp___2 = __fswab32(cmplqid << 20);
  c.cmpliqid_eqid = tmp___2;
  c.physeqid_pkd = 0U;
  tmp___3 = __fswab32(((unsigned int )((int )pi->tx_chan << 16) | iqid) | 6291456U);
  c.fetchszm_to_iqid = tmp___3;
  tmp___4 = __fswab32((__u32 )(nentries | 20250624));
  c.dcaen_to_eqsize = tmp___4;
  tmp___5 = __fswab64(txq->q.phys_addr);
  c.eqaddr = tmp___5;
  ret = t4_wr_mbox(adap, (int )adap->fn, (void const *)(& c), 32, (void *)(& c));
  }
  if (ret != 0) {
    {
    dma_free_attrs(adap->pdev_dev, (unsigned long )nentries * 64UL, (void *)txq->q.desc,
                   txq->q.phys_addr, (struct dma_attrs *)0);
    txq->q.desc = (struct tx_desc *)0;
    }
    return (ret);
  } else {
  }
  {
  tmp___6 = __fswab32(c.cmpliqid_eqid);
  init_txq(adap, & txq->q, tmp___6 & 1048575U);
  txq->adap = adap;
  skb_queue_head_init(& txq->sendq);
  tasklet_init(& txq->qresume_tsk, & restart_ctrlq, (unsigned long )txq);
  txq->full = 0U;
  }
  return (0);
}
}
int t4_sge_alloc_ofld_txq(struct adapter *adap , struct sge_ofld_txq *txq , struct net_device *dev ,
                          unsigned int iqid )
{
  int ret ;
  int nentries ;
  struct fw_eq_ofld_cmd c ;
  struct sge *s ;
  struct port_info *pi ;
  void *tmp ;
  void *tmp___0 ;
  __u32 tmp___1 ;
  __u32 tmp___2 ;
  __u32 tmp___3 ;
  __u64 tmp___4 ;
  __u32 tmp___5 ;
  {
  {
  s = & adap->sge;
  tmp = netdev_priv((struct net_device const *)dev);
  pi = (struct port_info *)tmp;
  nentries = (int )(txq->q.size + s->stat_len / 64U);
  tmp___0 = alloc_ring(adap->pdev_dev, (size_t )txq->q.size, 64UL, 16UL, & txq->q.phys_addr,
                       (void *)(& txq->q.sdesc), (size_t )s->stat_len, -1);
  txq->q.desc = (struct tx_desc *)tmp___0;
  }
  if ((unsigned long )txq->q.desc == (unsigned long )((struct tx_desc *)0)) {
    return (-12);
  } else {
  }
  {
  memset((void *)(& c), 0, 32UL);
  tmp___1 = __fswab32((adap->fn << 8) | 565182464U);
  c.op_to_vfn = tmp___1;
  c.alloc_to_len16 = 33554576U;
  tmp___2 = __fswab32(((unsigned int )((int )pi->tx_chan << 16) | iqid) | 6291456U);
  c.fetchszm_to_iqid = tmp___2;
  tmp___3 = __fswab32((__u32 )(nentries | 20250624));
  c.dcaen_to_eqsize = tmp___3;
  tmp___4 = __fswab64(txq->q.phys_addr);
  c.eqaddr = tmp___4;
  ret = t4_wr_mbox(adap, (int )adap->fn, (void const *)(& c), 32, (void *)(& c));
  }
  if (ret != 0) {
    {
    kfree((void const *)txq->q.sdesc);
    txq->q.sdesc = (struct tx_sw_desc *)0;
    dma_free_attrs(adap->pdev_dev, (unsigned long )nentries * 64UL, (void *)txq->q.desc,
                   txq->q.phys_addr, (struct dma_attrs *)0);
    txq->q.desc = (struct tx_desc *)0;
    }
    return (ret);
  } else {
  }
  {
  tmp___5 = __fswab32(c.eqid_pkd);
  init_txq(adap, & txq->q, tmp___5 & 1048575U);
  txq->adap = adap;
  skb_queue_head_init(& txq->sendq);
  tasklet_init(& txq->qresume_tsk, & restart_ofldq, (unsigned long )txq);
  txq->full = 0U;
  txq->mapping_err = 0UL;
  }
  return (0);
}
}
static void free_txq(struct adapter *adap , struct sge_txq *q )
{
  struct sge *s ;
  {
  {
  s = & adap->sge;
  dma_free_attrs(adap->pdev_dev, (unsigned long )q->size * 64UL + (unsigned long )s->stat_len,
                 (void *)q->desc, q->phys_addr, (struct dma_attrs *)0);
  q->cntxt_id = 0U;
  q->sdesc = (struct tx_sw_desc *)0;
  q->desc = (struct tx_desc *)0;
  }
  return;
}
}
static void free_rspq_fl(struct adapter *adap , struct sge_rspq *rq , struct sge_fl *fl )
{
  struct sge *s ;
  unsigned int fl_id ;
  u16 tmp ;
  {
  {
  s = & adap->sge;
  fl_id = (unsigned long )fl != (unsigned long )((struct sge_fl *)0) ? fl->cntxt_id : 65535U;
  adap->sge.ingr_map[(unsigned int )rq->cntxt_id - adap->sge.ingr_start] = (struct sge_rspq *)0;
  t4_iq_free(adap, adap->fn, adap->fn, 0U, 0U, (unsigned int )rq->cntxt_id, fl_id,
             65535U);
  dma_free_attrs(adap->pdev_dev, (size_t )((rq->size + 1U) * rq->iqe_len), (void *)rq->desc,
                 rq->phys_addr, (struct dma_attrs *)0);
  netif_napi_del(& rq->napi);
  rq->netdev = (struct net_device *)0;
  tmp = 0U;
  rq->abs_id = tmp;
  rq->cntxt_id = tmp;
  rq->desc = (__be64 *)0ULL;
  }
  if ((unsigned long )fl != (unsigned long )((struct sge_fl *)0)) {
    {
    free_rx_bufs(adap, fl, (int )fl->avail);
    dma_free_attrs(adap->pdev_dev, (size_t )(fl->size * 8U + s->stat_len), (void *)fl->desc,
                   fl->addr, (struct dma_attrs *)0);
    kfree((void const *)fl->sdesc);
    fl->sdesc = (struct rx_sw_desc *)0;
    fl->cntxt_id = 0U;
    fl->desc = (__be64 *)0ULL;
    }
  } else {
  }
  return;
}
}
void t4_free_sge_resources(struct adapter *adap )
{
  int i ;
  struct sge_eth_rxq *eq ;
  struct sge_eth_txq *etq ;
  struct sge_ofld_rxq *oq ;
  struct sge_ofld_txq *q ;
  struct sge_ctrl_txq *cq ;
  {
  eq = (struct sge_eth_rxq *)(& adap->sge.ethrxq);
  etq = (struct sge_eth_txq *)(& adap->sge.ethtxq);
  oq = (struct sge_ofld_rxq *)(& adap->sge.ofldrxq);
  i = 0;
  goto ldv_54854;
  ldv_54853: ;
  if ((unsigned long )eq->rspq.desc != (unsigned long )((__be64 *)0ULL)) {
    {
    free_rspq_fl(adap, & eq->rspq, & eq->fl);
    }
  } else {
  }
  if ((unsigned long )etq->q.desc != (unsigned long )((struct tx_desc *)0)) {
    {
    t4_eth_eq_free(adap, adap->fn, adap->fn, 0U, etq->q.cntxt_id);
    free_tx_desc(adap, & etq->q, etq->q.in_use, 1);
    kfree((void const *)etq->q.sdesc);
    free_txq(adap, & etq->q);
    }
  } else {
  }
  i = i + 1;
  eq = eq + 1;
  etq = etq + 1;
  ldv_54854: ;
  if (i < (int )adap->sge.ethqsets) {
    goto ldv_54853;
  } else {
  }
  i = 0;
  goto ldv_54857;
  ldv_54856: ;
  if ((unsigned long )oq->rspq.desc != (unsigned long )((__be64 *)0ULL)) {
    {
    free_rspq_fl(adap, & oq->rspq, & oq->fl);
    }
  } else {
  }
  i = i + 1;
  oq = oq + 1;
  ldv_54857: ;
  if (i < (int )adap->sge.ofldqsets) {
    goto ldv_54856;
  } else {
  }
  i = 0;
  oq = (struct sge_ofld_rxq *)(& adap->sge.rdmarxq);
  goto ldv_54860;
  ldv_54859: ;
  if ((unsigned long )oq->rspq.desc != (unsigned long )((__be64 *)0ULL)) {
    {
    free_rspq_fl(adap, & oq->rspq, & oq->fl);
    }
  } else {
  }
  i = i + 1;
  oq = oq + 1;
  ldv_54860: ;
  if (i < (int )adap->sge.rdmaqs) {
    goto ldv_54859;
  } else {
  }
  i = 0;
  goto ldv_54866;
  ldv_54865:
  q = (struct sge_ofld_txq *)(& adap->sge.ofldtxq) + (unsigned long )i;
  if ((unsigned long )q->q.desc != (unsigned long )((struct tx_desc *)0)) {
    {
    tasklet_kill(& q->qresume_tsk);
    t4_ofld_eq_free(adap, adap->fn, adap->fn, 0U, q->q.cntxt_id);
    free_tx_desc(adap, & q->q, q->q.in_use, 0);
    kfree((void const *)q->q.sdesc);
    __skb_queue_purge(& q->sendq);
    free_txq(adap, & q->q);
    }
  } else {
  }
  i = i + 1;
  ldv_54866: ;
  if ((unsigned int )i <= 15U) {
    goto ldv_54865;
  } else {
  }
  i = 0;
  goto ldv_54872;
  ldv_54871:
  cq = (struct sge_ctrl_txq *)(& adap->sge.ctrlq) + (unsigned long )i;
  if ((unsigned long )cq->q.desc != (unsigned long )((struct tx_desc *)0)) {
    {
    tasklet_kill(& cq->qresume_tsk);
    t4_ctrl_eq_free(adap, adap->fn, adap->fn, 0U, cq->q.cntxt_id);
    __skb_queue_purge(& cq->sendq);
    free_txq(adap, & cq->q);
    }
  } else {
  }
  i = i + 1;
  ldv_54872: ;
  if ((unsigned int )i <= 3U) {
    goto ldv_54871;
  } else {
  }
  if ((unsigned long )adap->sge.fw_evtq.desc != (unsigned long )((__be64 *)0ULL)) {
    {
    free_rspq_fl(adap, & adap->sge.fw_evtq, (struct sge_fl *)0);
    }
  } else {
  }
  if ((unsigned long )adap->sge.intrq.desc != (unsigned long )((__be64 *)0ULL)) {
    {
    free_rspq_fl(adap, & adap->sge.intrq, (struct sge_fl *)0);
    }
  } else {
  }
  {
  memset((void *)(& adap->sge.egr_map), 0, 1024UL);
  }
  return;
}
}
void t4_sge_start(struct adapter *adap )
{
  {
  {
  adap->sge.ethtxq_rover = 0U;
  ldv_mod_timer_17(& adap->sge.rx_timer, (unsigned long )jiffies + 125UL);
  ldv_mod_timer_18(& adap->sge.tx_timer, (unsigned long )jiffies + 125UL);
  }
  return;
}
}
void t4_sge_stop(struct adapter *adap )
{
  int i ;
  struct sge *s ;
  int tmp ;
  struct sge_ofld_txq *q ;
  struct sge_ctrl_txq *cq ;
  {
  {
  s = & adap->sge;
  tmp = preempt_count();
  }
  if (((unsigned long )tmp & 2096896UL) != 0UL) {
    return;
  } else {
  }
  if ((unsigned long )s->rx_timer.function != (unsigned long )((void (*)(unsigned long ))0)) {
    {
    ldv_del_timer_sync_19(& s->rx_timer);
    }
  } else {
  }
  if ((unsigned long )s->tx_timer.function != (unsigned long )((void (*)(unsigned long ))0)) {
    {
    ldv_del_timer_sync_20(& s->tx_timer);
    }
  } else {
  }
  i = 0;
  goto ldv_54886;
  ldv_54885:
  q = (struct sge_ofld_txq *)(& s->ofldtxq) + (unsigned long )i;
  if ((unsigned long )q->q.desc != (unsigned long )((struct tx_desc *)0)) {
    {
    tasklet_kill(& q->qresume_tsk);
    }
  } else {
  }
  i = i + 1;
  ldv_54886: ;
  if ((unsigned int )i <= 15U) {
    goto ldv_54885;
  } else {
  }
  i = 0;
  goto ldv_54892;
  ldv_54891:
  cq = (struct sge_ctrl_txq *)(& s->ctrlq) + (unsigned long )i;
  if ((unsigned long )cq->q.desc != (unsigned long )((struct tx_desc *)0)) {
    {
    tasklet_kill(& cq->qresume_tsk);
    }
  } else {
  }
  i = i + 1;
  ldv_54892: ;
  if ((unsigned int )i <= 3U) {
    goto ldv_54891;
  } else {
  }
  return;
}
}
static int t4_sge_init_soft(struct adapter *adap )
{
  struct sge *s ;
  u32 fl_small_pg ;
  u32 fl_large_pg ;
  u32 fl_small_mtu ;
  u32 fl_large_mtu ;
  u32 timer_value_0_and_1 ;
  u32 timer_value_2_and_3 ;
  u32 timer_value_4_and_5 ;
  u32 ingress_rx_threshold ;
  u32 tmp ;
  int tmp___66 ;
  unsigned int tmp___67 ;
  unsigned int tmp___68 ;
  unsigned int tmp___69 ;
  unsigned int tmp___70 ;
  unsigned int tmp___71 ;
  unsigned int tmp___72 ;
  unsigned int tmp___73 ;
  unsigned int tmp___74 ;
  {
  {
  s = & adap->sge;
  tmp = t4_read_reg(adap, 4104U);
  }
  if ((tmp & 262144U) == 0U) {
    {
    dev_err((struct device const *)adap->pdev_dev, "bad SGE CPL MODE\n");
    }
    return (-22);
  } else {
  }
  {
  fl_small_pg = t4_read_reg(adap, 4164U);
  fl_large_pg = t4_read_reg(adap, 4168U);
  fl_small_mtu = t4_read_reg(adap, 4172U);
  fl_large_mtu = t4_read_reg(adap, 4176U);
  }
  if (fl_small_pg != 4096U || (fl_large_pg != 0U && (fl_large_pg < fl_small_pg || (fl_large_pg & (fl_large_pg - 1U)) != 0U))) {
    {
    dev_err((struct device const *)adap->pdev_dev, "bad SGE FL page buffer sizes [%d, %d]\n",
            fl_small_pg, fl_large_pg);
    }
    return (-22);
  } else {
  }
  if (fl_large_pg != 0U) {
    {
    tmp___66 = __ilog2_u32(fl_large_pg);
    s->fl_pg_order = (u32 )(tmp___66 + -12);
    }
  } else {
  }
  {
  tmp___67 = fl_mtu_bufsize(adap, 1500U);
  }
  if (fl_small_mtu < tmp___67) {
    {
    dev_err((struct device const *)adap->pdev_dev, "bad SGE FL MTU sizes [%d, %d]\n",
            fl_small_mtu, fl_large_mtu);
    }
    return (-22);
  } else {
    {
    tmp___68 = fl_mtu_bufsize(adap, 9000U);
    }
    if (fl_large_mtu < tmp___68) {
      {
      dev_err((struct device const *)adap->pdev_dev, "bad SGE FL MTU sizes [%d, %d]\n",
              fl_small_mtu, fl_large_mtu);
      }
      return (-22);
    } else {
    }
  }
  {
  timer_value_0_and_1 = t4_read_reg(adap, 4280U);
  timer_value_2_and_3 = t4_read_reg(adap, 4284U);
  timer_value_4_and_5 = t4_read_reg(adap, 4288U);
  tmp___69 = core_ticks_to_us((struct adapter const *)adap, timer_value_0_and_1 >> 16);
  s->timer_val[0] = (u16 )tmp___69;
  tmp___70 = core_ticks_to_us((struct adapter const *)adap, timer_value_0_and_1 & 65535U);
  s->timer_val[1] = (u16 )tmp___70;
  tmp___71 = core_ticks_to_us((struct adapter const *)adap, timer_value_2_and_3 >> 16);
  s->timer_val[2] = (u16 )tmp___71;
  tmp___72 = core_ticks_to_us((struct adapter const *)adap, timer_value_2_and_3 & 65535U);
  s->timer_val[3] = (u16 )tmp___72;
  tmp___73 = core_ticks_to_us((struct adapter const *)adap, timer_value_4_and_5 >> 16);
  s->timer_val[4] = (u16 )tmp___73;
  tmp___74 = core_ticks_to_us((struct adapter const *)adap, timer_value_4_and_5 & 65535U);
  s->timer_val[5] = (u16 )tmp___74;
  ingress_rx_threshold = t4_read_reg(adap, 4256U);
  s->counter_val[0] = (u8 )((ingress_rx_threshold & 1056964608U) >> 24);
  s->counter_val[1] = (u8 )((ingress_rx_threshold & 4128768U) >> 16);
  s->counter_val[2] = (u8 )((ingress_rx_threshold & 16128U) >> 8);
  s->counter_val[3] = (unsigned int )((u8 )ingress_rx_threshold) & 63U;
  }
  return (0);
}
}
static int t4_sge_init_hard(struct adapter *adap )
{
  struct sge *s ;
  int tmp ;
  unsigned int tmp___0 ;
  unsigned int tmp___1 ;
  unsigned int tmp___2 ;
  unsigned int tmp___3 ;
  unsigned int tmp___4 ;
  unsigned int tmp___5 ;
  unsigned int tmp___6 ;
  unsigned int tmp___7 ;
  {
  {
  s = & adap->sge;
  t4_set_reg_field(adap, 4104U, 262144U, 262144U);
  tmp = is_t4(adap->params.chip);
  }
  if (tmp != 0) {
    {
    t4_set_reg_field(adap, 4260U, 4026593280U, (u32 )((dbfifo_int_thresh << 28) | (dbfifo_int_thresh << 12)));
    }
  } else {
    {
    t4_set_reg_field(adap, 4260U, 1073479680U, (u32 )(dbfifo_int_thresh << 18));
    t4_set_reg_field(adap, 4376U, 15360U, (u32 )(dbfifo_int_thresh << 10));
    }
  }
  {
  t4_set_reg_field(adap, 4264U, 8192U, 8192U);
  s->fl_pg_order = 4U;
  }
  if (s->fl_pg_order != 0U) {
    {
    t4_write_reg(adap, 4168U, 65536U);
    }
  } else {
  }
  {
  tmp___0 = fl_mtu_bufsize(adap, 1500U);
  t4_write_reg(adap, 4172U, tmp___0);
  tmp___1 = fl_mtu_bufsize(adap, 9000U);
  t4_write_reg(adap, 4176U, tmp___1);
  t4_write_reg(adap, 4256U, (u32 )(((((int )s->counter_val[0] << 24) | ((int )s->counter_val[1] << 16)) | ((int )s->counter_val[2] << 8)) | (int )s->counter_val[3]));
  tmp___2 = us_to_core_ticks((struct adapter const *)adap, (unsigned int )s->timer_val[0]);
  tmp___3 = us_to_core_ticks((struct adapter const *)adap, (unsigned int )s->timer_val[1]);
  t4_write_reg(adap, 4280U, (tmp___2 << 16) | tmp___3);
  tmp___4 = us_to_core_ticks((struct adapter const *)adap, (unsigned int )s->timer_val[2]);
  tmp___5 = us_to_core_ticks((struct adapter const *)adap, (unsigned int )s->timer_val[3]);
  t4_write_reg(adap, 4284U, (tmp___4 << 16) | tmp___5);
  tmp___6 = us_to_core_ticks((struct adapter const *)adap, (unsigned int )s->timer_val[4]);
  tmp___7 = us_to_core_ticks((struct adapter const *)adap, (unsigned int )s->timer_val[5]);
  t4_write_reg(adap, 4288U, (tmp___6 << 16) | tmp___7);
  }
  return (0);
}
}
int t4_sge_init(struct adapter *adap )
{
  struct sge *s ;
  u32 sge_control ;
  int ret ;
  u32 tmp ;
  struct lock_class_key __key ;
  struct lock_class_key __key___0 ;
  unsigned int tmp___0 ;
  u8 tmp___1 ;
  struct lock_class_key __key___1 ;
  {
  {
  s = & adap->sge;
  sge_control = t4_read_reg(adap, 4104U);
  s->pktshift = (sge_control & 7168U) >> 10;
  s->stat_len = (sge_control & 131072U) != 0U ? 128U : 64U;
  s->fl_align = (u32 )(1 << (int )(((sge_control & 112U) >> 4) + 5U));
  }
  if ((adap->flags & 64U) != 0U) {
    {
    ret = t4_sge_init_soft(adap);
    }
  } else {
    {
    ret = t4_sge_init_hard(adap);
    }
  }
  if (ret < 0) {
    return (ret);
  } else {
  }
  {
  tmp = t4_read_reg(adap, 4244U);
  s->fl_starve_thres = ((tmp & 16128U) >> 8) * 2U + 1U;
  init_timer_key(& s->rx_timer, 0U, "((&s->rx_timer))", & __key);
  s->rx_timer.function = & sge_rx_timer_cb;
  s->rx_timer.data = (unsigned long )adap;
  init_timer_key(& s->tx_timer, 0U, "((&s->tx_timer))", & __key___0);
  s->tx_timer.function = & sge_tx_timer_cb;
  s->tx_timer.data = (unsigned long )adap;
  tmp___0 = core_ticks_per_usec((struct adapter const *)adap);
  s->starve_thres = tmp___0 * 1000000U;
  tmp___1 = 0U;
  s->idma_state[1] = tmp___1;
  s->idma_state[0] = tmp___1;
  spinlock_check(& s->intrq_lock);
  __raw_spin_lock_init(& s->intrq_lock.__annonCompField19.rlock, "&(&s->intrq_lock)->rlock",
                       & __key___1);
  }
  return (0);
}
}
extern int ldv_del_timer_sync(int , struct timer_list * ) ;
extern int ldv_mod_timer(int , struct timer_list * , unsigned long ) ;
static int ldv_mod_timer_15(struct timer_list *ldv_func_arg1 , unsigned long ldv_func_arg2 )
{
  ldv_func_ret_type ldv_func_res ;
  int tmp ;
  int tmp___0 ;
  {
  {
  tmp = mod_timer(ldv_func_arg1, ldv_func_arg2);
  ldv_func_res = tmp;
  tmp___0 = ldv_mod_timer(ldv_func_res, ldv_func_arg1, ldv_func_arg2);
  }
  return (tmp___0);
  return (ldv_func_res);
}
}
static int ldv_mod_timer_16(struct timer_list *ldv_func_arg1 , unsigned long ldv_func_arg2 )
{
  ldv_func_ret_type___0 ldv_func_res ;
  int tmp ;
  int tmp___0 ;
  {
  {
  tmp = mod_timer(ldv_func_arg1, ldv_func_arg2);
  ldv_func_res = tmp;
  tmp___0 = ldv_mod_timer(ldv_func_res, ldv_func_arg1, ldv_func_arg2);
  }
  return (tmp___0);
  return (ldv_func_res);
}
}
static int ldv_mod_timer_17(struct timer_list *ldv_func_arg1 , unsigned long ldv_func_arg2 )
{
  ldv_func_ret_type___1 ldv_func_res ;
  int tmp ;
  int tmp___0 ;
  {
  {
  tmp = mod_timer(ldv_func_arg1, ldv_func_arg2);
  ldv_func_res = tmp;
  tmp___0 = ldv_mod_timer(ldv_func_res, ldv_func_arg1, ldv_func_arg2);
  }
  return (tmp___0);
  return (ldv_func_res);
}
}
static int ldv_mod_timer_18(struct timer_list *ldv_func_arg1 , unsigned long ldv_func_arg2 )
{
  ldv_func_ret_type___2 ldv_func_res ;
  int tmp ;
  int tmp___0 ;
  {
  {
  tmp = mod_timer(ldv_func_arg1, ldv_func_arg2);
  ldv_func_res = tmp;
  tmp___0 = ldv_mod_timer(ldv_func_res, ldv_func_arg1, ldv_func_arg2);
  }
  return (tmp___0);
  return (ldv_func_res);
}
}
static int ldv_del_timer_sync_19(struct timer_list *ldv_func_arg1 )
{
  ldv_func_ret_type___3 ldv_func_res ;
  int tmp ;
  int tmp___0 ;
  {
  {
  tmp = del_timer_sync(ldv_func_arg1);
  ldv_func_res = tmp;
  tmp___0 = ldv_del_timer_sync(ldv_func_res, ldv_func_arg1);
  }
  return (tmp___0);
  return (ldv_func_res);
}
}
static int ldv_del_timer_sync_20(struct timer_list *ldv_func_arg1 )
{
  ldv_func_ret_type___4 ldv_func_res ;
  int tmp ;
  int tmp___0 ;
  {
  {
  tmp = del_timer_sync(ldv_func_arg1);
  ldv_func_res = tmp;
  tmp___0 = ldv_del_timer_sync(ldv_func_res, ldv_func_arg1);
  }
  return (tmp___0);
  return (ldv_func_res);
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
extern void *external_allocated_data(void) ;
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
ldv_set LDV_MUTEXES_uld_mutex ;
void ldv_mutex_lock_uld_mutex(struct mutex *lock )
{
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_lock(! LDV_MUTEXES_uld_mutex);
  LDV_MUTEXES_uld_mutex = 1;
  }
  return;
}
}
int ldv_mutex_lock_interruptible_or_killable_uld_mutex(struct mutex *lock )
{
  int tmp ;
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_lock(! LDV_MUTEXES_uld_mutex);
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    LDV_MUTEXES_uld_mutex = 1;
    return (0);
  } else {
    return (-4);
  }
}
}
int ldv_mutex_is_locked_uld_mutex(struct mutex *lock )
{
  int tmp ;
  {
  if ((int )LDV_MUTEXES_uld_mutex) {
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
int ldv_mutex_trylock_uld_mutex(struct mutex *lock )
{
  int tmp ;
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_lock_try(! LDV_MUTEXES_uld_mutex);
  tmp = ldv_mutex_is_locked_uld_mutex(lock);
  }
  if (tmp != 0) {
    return (0);
  } else {
    LDV_MUTEXES_uld_mutex = 1;
    return (1);
  }
}
}
int ldv_atomic_dec_and_mutex_lock_uld_mutex(atomic_t *cnt , struct mutex *lock )
{
  {
  cnt->counter = cnt->counter - 1;
  if (cnt->counter != 0) {
    return (0);
  } else {
    {
    ldv_mutex_lock_uld_mutex(lock);
    }
    return (1);
  }
}
}
void ldv_mutex_unlock_uld_mutex(struct mutex *lock )
{
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_unlock((int )LDV_MUTEXES_uld_mutex);
  LDV_MUTEXES_uld_mutex = 0;
  }
  return;
}
}
void ldv_initialize(void)
{
  {
  LDV_MUTEXES_i_mutex_of_inode = 0;
  LDV_MUTEXES_lock = 0;
  LDV_MUTEXES_mutex_of_device = 0;
  LDV_MUTEXES_uld_mutex = 0;
  return;
}
}
void ldv_check_final_state(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_locked_at_exit(! LDV_MUTEXES_i_mutex_of_inode);
  ldv_assert_linux_kernel_locking_mutex__one_thread_locked_at_exit(! LDV_MUTEXES_lock);
  ldv_assert_linux_kernel_locking_mutex__one_thread_locked_at_exit(! LDV_MUTEXES_mutex_of_device);
  ldv_assert_linux_kernel_locking_mutex__one_thread_locked_at_exit(! LDV_MUTEXES_uld_mutex);
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
struct page *__alloc_pages_nodemask(gfp_t arg0, unsigned int arg1, struct zonelist *arg2, nodemask_t *arg3) {
  return (struct page *)external_alloc();
}
void *external_alloc(void);
struct sk_buff *__alloc_skb(unsigned int arg0, gfp_t arg1, int arg2, int arg3) {
  return (struct sk_buff *)external_alloc();
}
void *external_alloc(void);
struct workqueue_struct *__alloc_workqueue_key(const char *arg0, unsigned int arg1, int arg2, struct lock_class_key *arg3, const char *arg4, ...) {
  return (struct workqueue_struct *)external_alloc();
}
int __VERIFIER_nondet_int(void);
int __bitmap_weight(const unsigned long *arg0, int arg1) {
  return __VERIFIER_nondet_int();
}
void __const_udelay(unsigned long arg0) {
  return;
}
void __copy_to_user_overflow() {
  return;
}
void __free_pages(struct page *arg0, unsigned int arg1) {
  return;
}
bool __VERIFIER_nondet_bool(void);
bool __get_page_tail(struct page *arg0) {
  return __VERIFIER_nondet_bool();
}
void __init_work(struct work_struct *arg0, int arg1) {
  return;
}
void *external_alloc(void);
void *__kmalloc_node(size_t arg0, gfp_t arg1, int arg2) {
  return (void *)external_alloc();
}
void __list_add(struct list_head *arg0, struct list_head *arg1, struct list_head *arg2) {
  return;
}
void __list_add_rcu(struct list_head *arg0, struct list_head *arg1, struct list_head *arg2) {
  return;
}
void __list_del_entry(struct list_head *arg0) {
  return;
}
void __local_bh_disable_ip(unsigned long arg0, unsigned int arg1) {
  return;
}
void __local_bh_enable_ip(unsigned long arg0, unsigned int arg1) {
  return;
}
void __might_sleep(const char *arg0, int arg1, int arg2) {
  return;
}
void __napi_schedule(struct napi_struct *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int __neigh_event_send(struct neighbour *arg0, struct sk_buff *arg1) {
  return __VERIFIER_nondet_int();
}
void *external_alloc(void);
struct sk_buff *__netdev_alloc_skb(struct net_device *arg0, unsigned int arg1, gfp_t arg2) {
  return (struct sk_buff *)external_alloc();
}
void __netif_schedule(struct Qdisc *arg0) {
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
int __VERIFIER_nondet_int(void);
int __printk_ratelimit(const char *arg0) {
  return __VERIFIER_nondet_int();
}
void __raw_spin_lock_init(raw_spinlock_t *arg0, const char *arg1, struct lock_class_key *arg2) {
  return;
}
void __rwlock_init(rwlock_t *arg0, const char *arg1, struct lock_class_key *arg2) {
  return;
}
void __tasklet_schedule(struct tasklet_struct *arg0) {
  return;
}
void __udelay(unsigned long arg0) {
  return;
}
void *external_alloc(void);
struct net_device *__vlan_find_dev_deep(struct net_device *arg0, __be16 arg1, u16 arg2) {
  return (struct net_device *)external_alloc();
}
unsigned long __VERIFIER_nondet_ulong(void);
unsigned long int _copy_to_user(void *arg0, const void *arg1, unsigned int arg2) {
  return __VERIFIER_nondet_ulong();
}
int __VERIFIER_nondet_int(void);
int _dev_info(const struct device *arg0, const char *arg1, ...) {
  return __VERIFIER_nondet_int();
}
void _raw_read_lock(rwlock_t *arg0) {
  return;
}
void _raw_read_lock_bh(rwlock_t *arg0) {
  return;
}
void _raw_read_unlock(rwlock_t *arg0) {
  return;
}
void _raw_read_unlock_bh(rwlock_t *arg0) {
  return;
}
void _raw_spin_lock(raw_spinlock_t *arg0) {
  return;
}
void _raw_spin_lock_bh(raw_spinlock_t *arg0) {
  return;
}
void _raw_spin_lock_irq(raw_spinlock_t *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int _raw_spin_trylock(raw_spinlock_t *arg0) {
  return __VERIFIER_nondet_int();
}
void _raw_spin_unlock(raw_spinlock_t *arg0) {
  return;
}
void _raw_spin_unlock_bh(raw_spinlock_t *arg0) {
  return;
}
void _raw_spin_unlock_irq(raw_spinlock_t *arg0) {
  return;
}
void _raw_write_lock_bh(rwlock_t *arg0) {
  return;
}
void _raw_write_unlock_bh(rwlock_t *arg0) {
  return;
}
void *external_alloc(void);
struct net_device *alloc_etherdev_mqs(int arg0, unsigned int arg1, unsigned int arg2) {
  return (struct net_device *)external_alloc();
}
void *external_alloc(void);
struct page *alloc_pages_current(gfp_t arg0, unsigned int arg1) {
  return (struct page *)external_alloc();
}
int __VERIFIER_nondet_int(void);
int bitmap_find_free_region(unsigned long *arg0, int arg1, int arg2) {
  return __VERIFIER_nondet_int();
}
void bitmap_release_region(unsigned long *arg0, int arg1, int arg2) {
  return;
}
bool __VERIFIER_nondet_bool(void);
bool cancel_work_sync(struct work_struct *arg0) {
  return __VERIFIER_nondet_bool();
}
void consume_skb(struct sk_buff *arg0) {
  return;
}
void debug_dma_alloc_coherent(struct device *arg0, size_t arg1, dma_addr_t arg2, void *arg3) {
  return;
}
void debug_dma_free_coherent(struct device *arg0, size_t arg1, void *arg2, dma_addr_t arg3) {
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
void debug_dma_unmap_page(struct device *arg0, dma_addr_t arg1, size_t arg2, int arg3, bool arg4) {
  return;
}
int __VERIFIER_nondet_int(void);
int debug_lockdep_rcu_enabled() {
  return __VERIFIER_nondet_int();
}
void *external_alloc(void);
struct dentry *debugfs_create_dir(const char *arg0, struct dentry *arg1) {
  return (struct dentry *)external_alloc();
}
void *external_alloc(void);
struct dentry *debugfs_create_file(const char *arg0, umode_t arg1, struct dentry *arg2, void *arg3, const struct file_operations *arg4) {
  return (struct dentry *)external_alloc();
}
void debugfs_remove(struct dentry *arg0) {
  return;
}
void debugfs_remove_recursive(struct dentry *arg0) {
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
int __VERIFIER_nondet_int(void);
int dev_alert(const struct device *arg0, const char *arg1, ...) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int dev_err(const struct device *arg0, const char *arg1, ...) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int dev_warn(const struct device *arg0, const char *arg1, ...) {
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
void dump_page(struct page *arg0, char *arg1) {
  return;
}
unsigned short __VERIFIER_nondet_ushort(void);
__be16 eth_type_trans(struct sk_buff *arg0, struct net_device *arg1) {
  return __VERIFIER_nondet_ushort();
}
int __VERIFIER_nondet_int(void);
int eth_validate_addr(struct net_device *arg0) {
  return __VERIFIER_nondet_int();
}
unsigned int __VERIFIER_nondet_uint(void);
u32 ethtool_op_get_link(struct net_device *arg0) {
  return __VERIFIER_nondet_uint();
}
void *external_alloc(void);
void *external_allocated_data() {
  return (void *)external_alloc();
}
unsigned long __VERIFIER_nondet_ulong(void);
unsigned long int find_first_zero_bit(const unsigned long *arg0, unsigned long arg1) {
  return __VERIFIER_nondet_ulong();
}
unsigned long __VERIFIER_nondet_ulong(void);
unsigned long int find_next_zero_bit(const unsigned long *arg0, unsigned long arg1, unsigned long arg2) {
  return __VERIFIER_nondet_ulong();
}
void flush_workqueue(struct workqueue_struct *arg0) {
  return;
}
void free_irq(unsigned int arg0, void *arg1) {
  return;
}
void free_netdev(struct net_device *arg0) {
  return;
}
void init_timer_key(struct timer_list *arg0, unsigned int arg1, const char *arg2, struct lock_class_key *arg3) {
  return;
}
void *external_alloc(void);
void *ioremap_wc(resource_size_t arg0, unsigned long arg1) {
  return (void *)external_alloc();
}
void iounmap(volatile void *arg0) {
  return;
}
void kfree_skb(struct sk_buff *arg0) {
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
int __VERIFIER_nondet_int(void);
int ldv_del_timer_sync(int arg0, struct timer_list *arg1) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int ldv_mod_timer(int arg0, struct timer_list *arg1, unsigned long arg2) {
  return __VERIFIER_nondet_int();
}
void ldv_pre_probe() {
  return;
}
int __VERIFIER_nondet_int(void);
int ldv_pre_register_netdev() {
  return __VERIFIER_nondet_int();
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
int lockdep_rtnl_is_held() {
  return __VERIFIER_nondet_int();
}
void might_fault() {
  return;
}
int __VERIFIER_nondet_int(void);
int mod_timer(struct timer_list *arg0, unsigned long arg1) {
  return __VERIFIER_nondet_int();
}
void msleep(unsigned int arg0) {
  return;
}
void napi_complete(struct napi_struct *arg0) {
  return;
}
void *external_alloc(void);
struct sk_buff *napi_get_frags(struct napi_struct *arg0) {
  return (struct sk_buff *)external_alloc();
}
int __VERIFIER_nondet_int(void);
gro_result_t napi_gro_frags(struct napi_struct *arg0) {
  return __VERIFIER_nondet_int();
}
void neigh_destroy(struct neighbour *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int netdev_info(const struct net_device *arg0, const char *arg1, ...) {
  return __VERIFIER_nondet_int();
}
void *external_alloc(void);
void *netdev_lower_get_next_private(struct net_device *arg0, struct list_head **arg1) {
  return (void *)external_alloc();
}
void netif_carrier_off(struct net_device *arg0) {
  return;
}
void netif_carrier_on(struct net_device *arg0) {
  return;
}
void netif_device_attach(struct net_device *arg0) {
  return;
}
void netif_device_detach(struct net_device *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int netif_get_num_default_rss_queues() {
  return __VERIFIER_nondet_int();
}
void netif_napi_add(struct net_device *arg0, struct napi_struct *arg1, int (*arg2)(struct napi_struct *, int), int arg3) {
  return;
}
void netif_napi_del(struct napi_struct *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int netif_receive_skb(struct sk_buff *arg0) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int netif_set_real_num_rx_queues(struct net_device *arg0, unsigned int arg1) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int netif_set_real_num_tx_queues(struct net_device *arg0, unsigned int arg1) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int netpoll_trap() {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int pci_bus_read_config_word(struct pci_bus *arg0, unsigned int arg1, int arg2, u16 *arg3) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int pci_cleanup_aer_uncorrect_error_status(struct pci_dev *arg0) {
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
void pci_disable_sriov(struct pci_dev *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int pci_enable_device(struct pci_dev *arg0) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int pci_enable_msi_block(struct pci_dev *arg0, int arg1) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int pci_enable_msix(struct pci_dev *arg0, struct msix_entry *arg1, int arg2) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int pci_enable_pcie_error_reporting(struct pci_dev *arg0) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int pci_enable_sriov(struct pci_dev *arg0, int arg1) {
  return __VERIFIER_nondet_int();
}
void *external_alloc(void);
void *pci_ioremap_bar(struct pci_dev *arg0, int arg1) {
  return (void *)external_alloc();
}
long __VERIFIER_nondet_long(void);
ssize_t pci_read_vpd(struct pci_dev *arg0, loff_t arg1, size_t arg2, void *arg3) {
  return __VERIFIER_nondet_long();
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
void pci_unregister_driver(struct pci_driver *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int pci_vpd_find_info_keyword(const u8 *arg0, unsigned int arg1, unsigned int arg2, const char *arg3) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int pci_vpd_find_tag(const u8 *arg0, unsigned int arg1, unsigned int arg2, u8 arg3) {
  return __VERIFIER_nondet_int();
}
long __VERIFIER_nondet_long(void);
ssize_t pci_write_vpd(struct pci_dev *arg0, loff_t arg1, size_t arg2, const void *arg3) {
  return __VERIFIER_nondet_long();
}
int __VERIFIER_nondet_int(void);
int pcie_capability_clear_and_set_word(struct pci_dev *arg0, int arg1, u16 arg2, u16 arg3) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int pcie_capability_read_word(struct pci_dev *arg0, int arg1, u16 *arg2) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int printk(const char *arg0, ...) {
  return __VERIFIER_nondet_int();
}
void put_page(struct page *arg0) {
  return;
}
bool __VERIFIER_nondet_bool(void);
bool queue_work_on(int arg0, struct workqueue_struct *arg1, struct work_struct *arg2) {
  return __VERIFIER_nondet_bool();
}
bool __VERIFIER_nondet_bool(void);
bool rcu_is_watching() {
  return __VERIFIER_nondet_bool();
}
bool __VERIFIER_nondet_bool(void);
bool rcu_lockdep_current_cpu_online() {
  return __VERIFIER_nondet_bool();
}
int __VERIFIER_nondet_int(void);
int register_inet6addr_notifier(struct notifier_block *arg0) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int register_netdev(struct net_device *arg0) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int register_netevent_notifier(struct notifier_block *arg0) {
  return __VERIFIER_nondet_int();
}
void release_firmware(const struct firmware *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int request_firmware(const struct firmware **arg0, const char *arg1, struct device *arg2) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int request_threaded_irq(unsigned int arg0, irqreturn_t (*arg1)(int, void *), irqreturn_t (*arg2)(int, void *), unsigned long arg3, const char *arg4, void *arg5) {
  return __VERIFIER_nondet_int();
}
void rtnl_lock() {
  return;
}
void rtnl_unlock() {
  return;
}
long __VERIFIER_nondet_long(void);
long int schedule_timeout(long arg0) {
  return __VERIFIER_nondet_long();
}
long __VERIFIER_nondet_long(void);
long int schedule_timeout_uninterruptible(long arg0) {
  return __VERIFIER_nondet_long();
}
long __VERIFIER_nondet_long(void);
loff_t seq_lseek(struct file *arg0, loff_t arg1, int arg2) {
  return __VERIFIER_nondet_long();
}
int __VERIFIER_nondet_int(void);
int seq_open(struct file *arg0, const struct seq_operations *arg1) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int seq_printf(struct seq_file *arg0, const char *arg1, ...) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int seq_puts(struct seq_file *arg0, const char *arg1) {
  return __VERIFIER_nondet_int();
}
long __VERIFIER_nondet_long(void);
ssize_t seq_read(struct file *arg0, char *arg1, size_t arg2, loff_t *arg3) {
  return __VERIFIER_nondet_long();
}
int __VERIFIER_nondet_int(void);
int seq_release(struct inode *arg0, struct file *arg1) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int simple_open(struct inode *arg0, struct file *arg1) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int skb_copy_bits(const struct sk_buff *arg0, int arg1, void *arg2, int arg3) {
  return __VERIFIER_nondet_int();
}
void *external_alloc(void);
char *strim(char *arg0) {
  return (char *)external_alloc();
}
unsigned long __VERIFIER_nondet_ulong(void);
size_t strlcpy(char *arg0, const char *arg1, size_t arg2) {
  return __VERIFIER_nondet_ulong();
}
void tasklet_init(struct tasklet_struct *arg0, void (*arg1)(unsigned long), unsigned long arg2) {
  return;
}
void tasklet_kill(struct tasklet_struct *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int unregister_inet6addr_notifier(struct notifier_block *arg0) {
  return __VERIFIER_nondet_int();
}
void unregister_netdev(struct net_device *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int unregister_netevent_notifier(struct notifier_block *arg0) {
  return __VERIFIER_nondet_int();
}
unsigned long __VERIFIER_nondet_ulong(void);
unsigned long int usecs_to_jiffies(const unsigned int arg0) {
  return __VERIFIER_nondet_ulong();
}
void vfree(const void *arg0) {
  return;
}
void *external_alloc(void);
struct net_device *vlan_dev_real_dev(const struct net_device *arg0) {
  return (struct net_device *)external_alloc();
}
unsigned short __VERIFIER_nondet_ushort(void);
u16 vlan_dev_vlan_id(const struct net_device *arg0) {
  return __VERIFIER_nondet_ushort();
}
void *external_alloc(void);
void *vmalloc(unsigned long arg0) {
  return (void *)external_alloc();
}
void *external_alloc(void);
void *vzalloc(unsigned long arg0) {
  return (void *)external_alloc();
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
