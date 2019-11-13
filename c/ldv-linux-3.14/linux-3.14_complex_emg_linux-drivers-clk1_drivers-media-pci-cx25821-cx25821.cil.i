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
typedef __u32 __le32;
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
struct hlist_bl_node;
struct hlist_bl_head {
   struct hlist_bl_node *first ;
};
struct hlist_bl_node {
   struct hlist_bl_node *next ;
   struct hlist_bl_node **pprev ;
};
struct __anonstruct____missing_field_name_41 {
   spinlock_t lock ;
   unsigned int count ;
};
union __anonunion____missing_field_name_40 {
   struct __anonstruct____missing_field_name_41 __annonCompField22 ;
};
struct lockref {
   union __anonunion____missing_field_name_40 __annonCompField23 ;
};
struct nameidata;
struct path;
struct vfsmount;
struct __anonstruct____missing_field_name_43 {
   u32 hash ;
   u32 len ;
};
union __anonunion____missing_field_name_42 {
   struct __anonstruct____missing_field_name_43 __annonCompField24 ;
   u64 hash_len ;
};
struct qstr {
   union __anonunion____missing_field_name_42 __annonCompField25 ;
   unsigned char const *name ;
};
struct dentry_operations;
union __anonunion_d_u_44 {
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
   union __anonunion_d_u_44 d_u ;
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
struct __anonstruct_nodemask_t_45 {
   unsigned long bits[16U] ;
};
typedef struct __anonstruct_nodemask_t_45 nodemask_t;
struct list_lru_node {
   spinlock_t lock ;
   struct list_head list ;
   long nr_items ;
};
struct list_lru {
   struct list_lru_node *node ;
   nodemask_t active_nodes ;
};
struct llist_node;
struct llist_node {
   struct llist_node *next ;
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
struct rw_semaphore;
struct rw_semaphore {
   long count ;
   raw_spinlock_t wait_lock ;
   struct list_head wait_list ;
   struct lockdep_map dep_map ;
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
struct pci_bus;
struct __anonstruct_mm_context_t_112 {
   void *ldt ;
   int size ;
   unsigned short ia32_compat ;
   struct mutex lock ;
   void *vdso ;
};
typedef struct __anonstruct_mm_context_t_112 mm_context_t;
struct device_node;
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
struct __anonstruct_kprojid_t_139 {
   projid_t val ;
};
typedef struct __anonstruct_kprojid_t_139 kprojid_t;
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
union __anonunion____missing_field_name_140 {
   kuid_t uid ;
   kgid_t gid ;
   kprojid_t projid ;
};
struct kqid {
   union __anonunion____missing_field_name_140 __annonCompField37 ;
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
union __anonunion_arg_142 {
   char *buf ;
   void *data ;
};
struct __anonstruct_read_descriptor_t_141 {
   size_t written ;
   size_t count ;
   union __anonunion_arg_142 arg ;
   int error ;
};
typedef struct __anonstruct_read_descriptor_t_141 read_descriptor_t;
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
union __anonunion____missing_field_name_143 {
   unsigned int const i_nlink ;
   unsigned int __i_nlink ;
};
union __anonunion____missing_field_name_144 {
   struct hlist_head i_dentry ;
   struct callback_head i_rcu ;
};
struct file_lock;
union __anonunion____missing_field_name_145 {
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
   union __anonunion____missing_field_name_143 __annonCompField38 ;
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
   union __anonunion____missing_field_name_144 __annonCompField39 ;
   u64 i_version ;
   atomic_t i_count ;
   atomic_t i_dio_count ;
   atomic_t i_writecount ;
   struct file_operations const *i_fop ;
   struct file_lock *i_flock ;
   struct address_space i_data ;
   struct dquot *i_dquot[2U] ;
   struct list_head i_devices ;
   union __anonunion____missing_field_name_145 __annonCompField40 ;
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
union __anonunion_f_u_146 {
   struct llist_node fu_llist ;
   struct callback_head fu_rcuhead ;
};
struct file {
   union __anonunion_f_u_146 f_u ;
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
struct __anonstruct_afs_148 {
   struct list_head link ;
   int state ;
};
union __anonunion_fl_u_147 {
   struct nfs_lock_info nfs_fl ;
   struct nfs4_lock_info nfs4_fl ;
   struct __anonstruct_afs_148 afs ;
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
   union __anonunion_fl_u_147 fl_u ;
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
enum irqreturn {
    IRQ_NONE = 0,
    IRQ_HANDLED = 1,
    IRQ_WAKE_THREAD = 2
} ;
typedef enum irqreturn irqreturn_t;
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
union __anonunion____missing_field_name_152 {
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
   union __anonunion____missing_field_name_152 __annonCompField41 ;
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
struct scatterlist {
   unsigned long sg_magic ;
   unsigned long page_link ;
   unsigned int offset ;
   unsigned int length ;
   dma_addr_t dma_address ;
   unsigned int dma_length ;
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
struct __anonstruct____missing_field_name_155 {
   struct arch_uprobe_task autask ;
   unsigned long vaddr ;
};
struct __anonstruct____missing_field_name_156 {
   struct callback_head dup_xol_work ;
   unsigned long dup_xol_addr ;
};
union __anonunion____missing_field_name_154 {
   struct __anonstruct____missing_field_name_155 __annonCompField43 ;
   struct __anonstruct____missing_field_name_156 __annonCompField44 ;
};
struct uprobe;
struct return_instance;
struct uprobe_task {
   enum uprobe_task_state state ;
   union __anonunion____missing_field_name_154 __annonCompField45 ;
   struct uprobe *active_uprobe ;
   unsigned long xol_vaddr ;
   struct return_instance *return_instances ;
   unsigned int depth ;
};
struct xol_area;
struct uprobes_state {
   struct xol_area *xol_area ;
};
union __anonunion____missing_field_name_157 {
   struct address_space *mapping ;
   void *s_mem ;
};
union __anonunion____missing_field_name_159 {
   unsigned long index ;
   void *freelist ;
   bool pfmemalloc ;
};
struct __anonstruct____missing_field_name_163 {
   unsigned int inuse : 16 ;
   unsigned int objects : 15 ;
   unsigned int frozen : 1 ;
};
union __anonunion____missing_field_name_162 {
   atomic_t _mapcount ;
   struct __anonstruct____missing_field_name_163 __annonCompField48 ;
   int units ;
};
struct __anonstruct____missing_field_name_161 {
   union __anonunion____missing_field_name_162 __annonCompField49 ;
   atomic_t _count ;
};
union __anonunion____missing_field_name_160 {
   unsigned long counters ;
   struct __anonstruct____missing_field_name_161 __annonCompField50 ;
   unsigned int active ;
};
struct __anonstruct____missing_field_name_158 {
   union __anonunion____missing_field_name_159 __annonCompField47 ;
   union __anonunion____missing_field_name_160 __annonCompField51 ;
};
struct __anonstruct____missing_field_name_165 {
   struct page *next ;
   int pages ;
   int pobjects ;
};
struct slab;
union __anonunion____missing_field_name_164 {
   struct list_head lru ;
   struct __anonstruct____missing_field_name_165 __annonCompField53 ;
   struct list_head list ;
   struct slab *slab_page ;
   struct callback_head callback_head ;
   pgtable_t pmd_huge_pte ;
};
union __anonunion____missing_field_name_166 {
   unsigned long private ;
   spinlock_t *ptl ;
   struct kmem_cache *slab_cache ;
   struct page *first_page ;
};
struct page {
   unsigned long flags ;
   union __anonunion____missing_field_name_157 __annonCompField46 ;
   struct __anonstruct____missing_field_name_158 __annonCompField52 ;
   union __anonunion____missing_field_name_164 __annonCompField54 ;
   union __anonunion____missing_field_name_166 __annonCompField55 ;
   unsigned long debug_flags ;
};
struct page_frag {
   struct page *page ;
   __u32 offset ;
   __u32 size ;
};
struct __anonstruct_linear_168 {
   struct rb_node rb ;
   unsigned long rb_subtree_last ;
};
union __anonunion_shared_167 {
   struct __anonstruct_linear_168 linear ;
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
   union __anonunion_shared_167 shared ;
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
struct user_struct;
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
struct __anonstruct____missing_field_name_170 {
   struct callback_head callback_head ;
   struct kmem_cache *memcg_caches[0U] ;
};
struct __anonstruct____missing_field_name_171 {
   struct mem_cgroup *memcg ;
   struct list_head list ;
   struct kmem_cache *root_cache ;
   bool dead ;
   atomic_t nr_pages ;
   struct work_struct destroy ;
};
union __anonunion____missing_field_name_169 {
   struct __anonstruct____missing_field_name_170 __annonCompField56 ;
   struct __anonstruct____missing_field_name_171 __annonCompField57 ;
};
struct memcg_cache_params {
   bool is_root_cache ;
   union __anonunion____missing_field_name_169 __annonCompField58 ;
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
struct exception_table_entry {
   int insn ;
   int fixup ;
};
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
struct __anonstruct_sigset_t_174 {
   unsigned long sig[1U] ;
};
typedef struct __anonstruct_sigset_t_174 sigset_t;
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
struct __anonstruct__kill_176 {
   __kernel_pid_t _pid ;
   __kernel_uid32_t _uid ;
};
struct __anonstruct__timer_177 {
   __kernel_timer_t _tid ;
   int _overrun ;
   char _pad[0U] ;
   sigval_t _sigval ;
   int _sys_private ;
};
struct __anonstruct__rt_178 {
   __kernel_pid_t _pid ;
   __kernel_uid32_t _uid ;
   sigval_t _sigval ;
};
struct __anonstruct__sigchld_179 {
   __kernel_pid_t _pid ;
   __kernel_uid32_t _uid ;
   int _status ;
   __kernel_clock_t _utime ;
   __kernel_clock_t _stime ;
};
struct __anonstruct__sigfault_180 {
   void *_addr ;
   short _addr_lsb ;
};
struct __anonstruct__sigpoll_181 {
   long _band ;
   int _fd ;
};
struct __anonstruct__sigsys_182 {
   void *_call_addr ;
   int _syscall ;
   unsigned int _arch ;
};
union __anonunion__sifields_175 {
   int _pad[28U] ;
   struct __anonstruct__kill_176 _kill ;
   struct __anonstruct__timer_177 _timer ;
   struct __anonstruct__rt_178 _rt ;
   struct __anonstruct__sigchld_179 _sigchld ;
   struct __anonstruct__sigfault_180 _sigfault ;
   struct __anonstruct__sigpoll_181 _sigpoll ;
   struct __anonstruct__sigsys_182 _sigsys ;
};
struct siginfo {
   int si_signo ;
   int si_errno ;
   int si_code ;
   union __anonunion__sifields_175 _sifields ;
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
struct rt_mutex {
   raw_spinlock_t wait_lock ;
   struct rb_root waiters ;
   struct rb_node *waiters_leftmost ;
   struct task_struct *owner ;
   int save_state ;
   char const *name ;
   char const *file ;
   int line ;
   void *magic ;
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
union __anonunion____missing_field_name_187 {
   struct list_head graveyard_link ;
   struct rb_node serial_node ;
};
struct key_user;
union __anonunion____missing_field_name_188 {
   time_t expiry ;
   time_t revoked_at ;
};
struct __anonstruct____missing_field_name_190 {
   struct key_type *type ;
   char *description ;
};
union __anonunion____missing_field_name_189 {
   struct keyring_index_key index_key ;
   struct __anonstruct____missing_field_name_190 __annonCompField64 ;
};
union __anonunion_type_data_191 {
   struct list_head link ;
   unsigned long x[2U] ;
   void *p[2U] ;
   int reject_error ;
};
union __anonunion_payload_193 {
   unsigned long value ;
   void *rcudata ;
   void *data ;
   void *data2[2U] ;
};
union __anonunion____missing_field_name_192 {
   union __anonunion_payload_193 payload ;
   struct assoc_array keys ;
};
struct key {
   atomic_t usage ;
   key_serial_t serial ;
   union __anonunion____missing_field_name_187 __annonCompField62 ;
   struct rw_semaphore sem ;
   struct key_user *user ;
   void *security ;
   union __anonunion____missing_field_name_188 __annonCompField63 ;
   time_t last_used_at ;
   kuid_t uid ;
   kgid_t gid ;
   key_perm_t perm ;
   unsigned short quotalen ;
   unsigned short datalen ;
   unsigned long flags ;
   union __anonunion____missing_field_name_189 __annonCompField65 ;
   union __anonunion_type_data_191 type_data ;
   union __anonunion____missing_field_name_192 __annonCompField66 ;
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
typedef u32 phandle;
struct property {
   char *name ;
   int length ;
   void *value ;
   struct property *next ;
   unsigned long _flags ;
   unsigned int unique_id ;
};
struct device_node {
   char const *name ;
   char const *type ;
   phandle phandle ;
   char const *full_name ;
   struct property *properties ;
   struct property *deadprops ;
   struct device_node *parent ;
   struct device_node *child ;
   struct device_node *sibling ;
   struct device_node *next ;
   struct device_node *allnext ;
   struct proc_dir_entry *pde ;
   struct kref kref ;
   unsigned long _flags ;
   void *data ;
};
struct i2c_msg {
   __u16 addr ;
   __u16 flags ;
   __u16 len ;
   __u8 *buf ;
};
union i2c_smbus_data {
   __u8 byte ;
   __u16 word ;
   __u8 block[34U] ;
};
struct i2c_algorithm;
struct i2c_adapter;
struct i2c_client;
struct i2c_client {
   unsigned short flags ;
   unsigned short addr ;
   char name[20U] ;
   struct i2c_adapter *adapter ;
   struct device dev ;
   int irq ;
   struct list_head detected ;
};
struct i2c_algorithm {
   int (*master_xfer)(struct i2c_adapter * , struct i2c_msg * , int ) ;
   int (*smbus_xfer)(struct i2c_adapter * , u16 , unsigned short , char , u8 ,
                     int , union i2c_smbus_data * ) ;
   u32 (*functionality)(struct i2c_adapter * ) ;
};
struct i2c_bus_recovery_info {
   int (*recover_bus)(struct i2c_adapter * ) ;
   int (*get_scl)(struct i2c_adapter * ) ;
   void (*set_scl)(struct i2c_adapter * , int ) ;
   int (*get_sda)(struct i2c_adapter * ) ;
   void (*prepare_recovery)(struct i2c_bus_recovery_info * ) ;
   void (*unprepare_recovery)(struct i2c_bus_recovery_info * ) ;
   int scl_gpio ;
   int sda_gpio ;
};
struct i2c_adapter {
   struct module *owner ;
   unsigned int class ;
   struct i2c_algorithm const *algo ;
   void *algo_data ;
   struct rt_mutex bus_lock ;
   int timeout ;
   int retries ;
   struct device dev ;
   int nr ;
   char name[48U] ;
   struct completion dev_released ;
   struct mutex userspace_clients_lock ;
   struct list_head userspace_clients ;
   struct i2c_bus_recovery_info *bus_recovery_info ;
};
struct poll_table_struct {
   void (*_qproc)(struct file * , wait_queue_head_t * , struct poll_table_struct * ) ;
   unsigned long _key ;
};
enum v4l2_field {
    V4L2_FIELD_ANY = 0,
    V4L2_FIELD_NONE = 1,
    V4L2_FIELD_TOP = 2,
    V4L2_FIELD_BOTTOM = 3,
    V4L2_FIELD_INTERLACED = 4,
    V4L2_FIELD_SEQ_TB = 5,
    V4L2_FIELD_SEQ_BT = 6,
    V4L2_FIELD_ALTERNATE = 7,
    V4L2_FIELD_INTERLACED_TB = 8,
    V4L2_FIELD_INTERLACED_BT = 9
} ;
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
struct v4l2_fmtdesc {
   __u32 index ;
   __u32 type ;
   __u32 flags ;
   __u8 description[32U] ;
   __u32 pixelformat ;
   __u32 reserved[4U] ;
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
union __anonunion____missing_field_name_196 {
   struct v4l2_frmsize_discrete discrete ;
   struct v4l2_frmsize_stepwise stepwise ;
};
struct v4l2_frmsizeenum {
   __u32 index ;
   __u32 pixel_format ;
   __u32 type ;
   union __anonunion____missing_field_name_196 __annonCompField68 ;
   __u32 reserved[2U] ;
};
struct v4l2_frmival_stepwise {
   struct v4l2_fract min ;
   struct v4l2_fract max ;
   struct v4l2_fract step ;
};
union __anonunion____missing_field_name_197 {
   struct v4l2_fract discrete ;
   struct v4l2_frmival_stepwise stepwise ;
};
struct v4l2_frmivalenum {
   __u32 index ;
   __u32 pixel_format ;
   __u32 width ;
   __u32 height ;
   __u32 type ;
   union __anonunion____missing_field_name_197 __annonCompField69 ;
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
struct v4l2_jpegcompression {
   int quality ;
   int APPn ;
   int APP_len ;
   char APP_data[60U] ;
   int COM_len ;
   char COM_data[60U] ;
   __u32 jpeg_markers ;
};
struct v4l2_requestbuffers {
   __u32 count ;
   __u32 type ;
   __u32 memory ;
   __u32 reserved[2U] ;
};
union __anonunion_m_198 {
   __u32 mem_offset ;
   unsigned long userptr ;
   __s32 fd ;
};
struct v4l2_plane {
   __u32 bytesused ;
   __u32 length ;
   union __anonunion_m_198 m ;
   __u32 data_offset ;
   __u32 reserved[11U] ;
};
union __anonunion_m_199 {
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
   union __anonunion_m_199 m ;
   __u32 length ;
   __u32 reserved2 ;
   __u32 reserved ;
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
struct v4l2_selection {
   __u32 type ;
   __u32 target ;
   __u32 flags ;
   struct v4l2_rect r ;
   __u32 reserved[9U] ;
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
union __anonunion____missing_field_name_200 {
   struct v4l2_bt_timings bt ;
   __u32 reserved[32U] ;
};
struct v4l2_dv_timings {
   __u32 type ;
   union __anonunion____missing_field_name_200 __annonCompField70 ;
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
union __anonunion____missing_field_name_201 {
   struct v4l2_bt_timings_cap bt ;
   __u32 raw_data[32U] ;
};
struct v4l2_dv_timings_cap {
   __u32 type ;
   __u32 reserved[3U] ;
   union __anonunion____missing_field_name_201 __annonCompField71 ;
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
struct v4l2_control {
   __u32 id ;
   __s32 value ;
};
union __anonunion____missing_field_name_202 {
   __s32 value ;
   __s64 value64 ;
   char *string ;
};
struct v4l2_ext_control {
   __u32 id ;
   __u32 size ;
   __u32 reserved2[1U] ;
   union __anonunion____missing_field_name_202 __annonCompField72 ;
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
union __anonunion____missing_field_name_203 {
   __u8 name[32U] ;
   __s64 value ;
};
struct v4l2_querymenu {
   __u32 id ;
   __u32 index ;
   union __anonunion____missing_field_name_203 __annonCompField73 ;
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
struct __anonstruct_raw_205 {
   __u32 data[8U] ;
};
union __anonunion____missing_field_name_204 {
   struct __anonstruct_raw_205 raw ;
};
struct v4l2_encoder_cmd {
   __u32 cmd ;
   __u32 flags ;
   union __anonunion____missing_field_name_204 __annonCompField74 ;
};
struct __anonstruct_stop_207 {
   __u64 pts ;
};
struct __anonstruct_start_208 {
   __s32 speed ;
   __u32 format ;
};
struct __anonstruct_raw_209 {
   __u32 data[16U] ;
};
union __anonunion____missing_field_name_206 {
   struct __anonstruct_stop_207 stop ;
   struct __anonstruct_start_208 start ;
   struct __anonstruct_raw_209 raw ;
};
struct v4l2_decoder_cmd {
   __u32 cmd ;
   __u32 flags ;
   union __anonunion____missing_field_name_206 __annonCompField75 ;
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
union __anonunion_fmt_211 {
   struct v4l2_pix_format pix ;
   struct v4l2_pix_format_mplane pix_mp ;
   struct v4l2_window win ;
   struct v4l2_vbi_format vbi ;
   struct v4l2_sliced_vbi_format sliced ;
   __u8 raw_data[200U] ;
};
struct v4l2_format {
   __u32 type ;
   union __anonunion_fmt_211 fmt ;
};
union __anonunion_parm_212 {
   struct v4l2_captureparm capture ;
   struct v4l2_outputparm output ;
   __u8 raw_data[200U] ;
};
struct v4l2_streamparm {
   __u32 type ;
   union __anonunion_parm_212 parm ;
};
struct v4l2_event_subscription {
   __u32 type ;
   __u32 id ;
   __u32 flags ;
   __u32 reserved[5U] ;
};
union __anonunion____missing_field_name_215 {
   __u32 addr ;
   char name[32U] ;
};
struct v4l2_dbg_match {
   __u32 type ;
   union __anonunion____missing_field_name_215 __annonCompField78 ;
};
struct v4l2_dbg_register {
   struct v4l2_dbg_match match ;
   __u32 size ;
   __u64 reg ;
   __u64 val ;
};
struct v4l2_dbg_chip_info {
   struct v4l2_dbg_match match ;
   char name[32U] ;
   __u32 flags ;
   __u32 reserved[32U] ;
};
struct v4l2_create_buffers {
   __u32 index ;
   __u32 count ;
   __u32 memory ;
   struct v4l2_format format ;
   __u32 reserved[8U] ;
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
struct __anonstruct_v4l_221 {
   u32 major ;
   u32 minor ;
};
struct __anonstruct_fb_222 {
   u32 major ;
   u32 minor ;
};
struct __anonstruct_alsa_223 {
   u32 card ;
   u32 device ;
   u32 subdevice ;
};
union __anonunion_info_220 {
   struct __anonstruct_v4l_221 v4l ;
   struct __anonstruct_fb_222 fb ;
   struct __anonstruct_alsa_223 alsa ;
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
   union __anonunion_info_220 info ;
};
struct video_device;
struct v4l2_device;
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
struct v4l2_subdev;
struct v4l2_subdev_ops;
struct v4l2_priv_tun_config {
   int tuner ;
   void *priv ;
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
struct v4l2_async_notifier;
enum v4l2_async_match_type {
    V4L2_ASYNC_MATCH_CUSTOM = 0,
    V4L2_ASYNC_MATCH_DEVNAME = 1,
    V4L2_ASYNC_MATCH_I2C = 2,
    V4L2_ASYNC_MATCH_OF = 3
} ;
struct __anonstruct_of_226 {
   struct device_node const *node ;
};
struct __anonstruct_device_name_227 {
   char const *name ;
};
struct __anonstruct_i2c_228 {
   int adapter_id ;
   unsigned short address ;
};
struct __anonstruct_custom_229 {
   bool (*match)(struct device * , struct v4l2_async_subdev * ) ;
   void *priv ;
};
union __anonunion_match_225 {
   struct __anonstruct_of_226 of ;
   struct __anonstruct_device_name_227 device_name ;
   struct __anonstruct_i2c_228 i2c ;
   struct __anonstruct_custom_229 custom ;
};
struct v4l2_async_subdev {
   enum v4l2_async_match_type match_type ;
   union __anonunion_match_225 match ;
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
struct __anonstruct_pad_230 {
   struct v4l2_mbus_framefmt try_fmt ;
   struct v4l2_rect try_crop ;
   struct v4l2_rect try_compose ;
};
struct v4l2_subdev_fh {
   struct v4l2_fh vfh ;
   struct __anonstruct_pad_230 *pad ;
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
struct v4l2_ctrl_helper;
struct v4l2_ctrl;
struct v4l2_ctrl_ops {
   int (*g_volatile_ctrl)(struct v4l2_ctrl * ) ;
   int (*try_ctrl)(struct v4l2_ctrl * ) ;
   int (*s_ctrl)(struct v4l2_ctrl * ) ;
};
union __anonunion____missing_field_name_231 {
   u32 step ;
   u32 menu_skip_mask ;
};
union __anonunion____missing_field_name_232 {
   char const * const *qmenu ;
   s64 const *qmenu_int ;
};
union __anonunion_cur_233 {
   s32 val ;
   s64 val64 ;
   char *string ;
};
union __anonunion____missing_field_name_234 {
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
   union __anonunion____missing_field_name_231 __annonCompField80 ;
   union __anonunion____missing_field_name_232 __annonCompField81 ;
   unsigned long flags ;
   union __anonunion_cur_233 cur ;
   union __anonunion____missing_field_name_234 __annonCompField82 ;
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
struct videobuf_buffer;
struct videobuf_queue;
struct videobuf_mapping {
   unsigned int count ;
   struct videobuf_queue *q ;
};
enum videobuf_state {
    VIDEOBUF_NEEDS_INIT = 0,
    VIDEOBUF_PREPARED = 1,
    VIDEOBUF_QUEUED = 2,
    VIDEOBUF_ACTIVE = 3,
    VIDEOBUF_DONE = 4,
    VIDEOBUF_ERROR = 5,
    VIDEOBUF_IDLE = 6
} ;
struct videobuf_buffer {
   unsigned int i ;
   u32 magic ;
   unsigned int width ;
   unsigned int height ;
   unsigned int bytesperline ;
   unsigned long size ;
   enum v4l2_field field ;
   enum videobuf_state state ;
   struct list_head stream ;
   struct list_head queue ;
   wait_queue_head_t done ;
   unsigned int field_count ;
   struct timeval ts ;
   enum v4l2_memory memory ;
   size_t bsize ;
   size_t boff ;
   unsigned long baddr ;
   struct videobuf_mapping *map ;
   int privsize ;
   void *priv ;
};
struct videobuf_queue_ops {
   int (*buf_setup)(struct videobuf_queue * , unsigned int * , unsigned int * ) ;
   int (*buf_prepare)(struct videobuf_queue * , struct videobuf_buffer * , enum v4l2_field ) ;
   void (*buf_queue)(struct videobuf_queue * , struct videobuf_buffer * ) ;
   void (*buf_release)(struct videobuf_queue * , struct videobuf_buffer * ) ;
};
struct videobuf_qtype_ops {
   u32 magic ;
   struct videobuf_buffer *(*alloc_vb)(size_t ) ;
   void *(*vaddr)(struct videobuf_buffer * ) ;
   int (*iolock)(struct videobuf_queue * , struct videobuf_buffer * , struct v4l2_framebuffer * ) ;
   int (*sync)(struct videobuf_queue * , struct videobuf_buffer * ) ;
   int (*mmap_mapper)(struct videobuf_queue * , struct videobuf_buffer * , struct vm_area_struct * ) ;
};
struct videobuf_queue {
   struct mutex vb_lock ;
   struct mutex *ext_lock ;
   spinlock_t *irqlock ;
   struct device *dev ;
   wait_queue_head_t wait ;
   enum v4l2_buf_type type ;
   unsigned int msize ;
   enum v4l2_field field ;
   enum v4l2_field last ;
   struct videobuf_buffer *bufs[32U] ;
   struct videobuf_queue_ops const *ops ;
   struct videobuf_qtype_ops *int_ops ;
   unsigned int streaming : 1 ;
   unsigned int reading : 1 ;
   struct list_head stream ;
   unsigned int read_off ;
   struct videobuf_buffer *read_buf ;
   void *priv_data ;
};
struct videobuf_dmabuf {
   u32 magic ;
   int offset ;
   size_t size ;
   struct page **pages ;
   void *vaddr ;
   dma_addr_t bus_addr ;
   struct scatterlist *sglist ;
   int sglen ;
   int nr_pages ;
   int direction ;
};
struct btcx_riscmem {
   unsigned int size ;
   __le32 *cpu ;
   __le32 *jmp ;
   dma_addr_t dma ;
};
struct cx25821_fmt {
   char *name ;
   u32 fourcc ;
   int depth ;
   int flags ;
   u32 cxformat ;
};
struct cx25821_buffer {
   struct videobuf_buffer vb ;
   unsigned int bpl ;
   struct btcx_riscmem risc ;
   struct cx25821_fmt const *fmt ;
   u32 count ;
};
enum port {
    CX25821_UNDEFINED = 0,
    CX25821_RAW = 1,
    CX25821_264 = 2
} ;
struct cx25821_board {
   char const *name ;
   enum port porta ;
   enum port portb ;
   enum port portc ;
   u32 clk_freq ;
};
struct cx25821_dev;
struct cx25821_i2c {
   struct cx25821_dev *dev ;
   int nr ;
   struct i2c_adapter i2c_adap ;
   struct i2c_client i2c_client ;
   u32 i2c_rc ;
   u32 i2c_period ;
   u32 reg_ctrl ;
   u32 reg_stat ;
   u32 reg_addr ;
   u32 reg_rdata ;
   u32 reg_wdata ;
};
struct cx25821_dmaqueue {
   struct list_head active ;
   struct list_head queued ;
   struct timer_list timeout ;
   struct btcx_riscmem stopper ;
   u32 count ;
};
struct sram_channel;
struct cx25821_data {
   struct cx25821_dev *dev ;
   struct sram_channel const *channel ;
};
struct cx25821_channel;
struct cx25821_video_out_data {
   struct cx25821_channel *chan ;
   int _line_size ;
   int _prog_cnt ;
   int _pixel_format ;
   int _is_first_frame ;
   int _is_running ;
   int _file_status ;
   int _lines_count ;
   int _frame_count ;
   unsigned int _risc_size ;
   __le32 *_dma_virt_start_addr ;
   __le32 *_dma_virt_addr ;
   dma_addr_t _dma_phys_addr ;
   dma_addr_t _dma_phys_start_addr ;
   unsigned int _data_buf_size ;
   __le32 *_data_buf_virt_addr ;
   dma_addr_t _data_buf_phys_addr ;
   u32 upstream_riscbuf_size ;
   u32 upstream_databuf_size ;
   int is_60hz ;
   int _frame_index ;
   int cur_frame_index ;
   int curpos ;
   wait_queue_head_t waitq ;
};
struct cx25821_channel {
   unsigned int id ;
   struct cx25821_dev *dev ;
   struct v4l2_fh *streaming_fh ;
   struct v4l2_ctrl_handler hdl ;
   struct cx25821_data timeout_data ;
   struct video_device vdev ;
   struct cx25821_dmaqueue dma_vidq ;
   struct videobuf_queue vidq ;
   struct sram_channel const *sram_channels ;
   struct cx25821_fmt const *fmt ;
   unsigned int width ;
   unsigned int height ;
   int pixel_formats ;
   int use_cif_resolution ;
   int cif_width ;
   struct cx25821_video_out_data *out ;
};
struct snd_card;
struct cx25821_dev {
   struct v4l2_device v4l2_dev ;
   struct pci_dev *pci ;
   unsigned char pci_rev ;
   unsigned char pci_lat ;
   int pci_bus ;
   int pci_slot ;
   u32 base_io_addr ;
   u32 *lmmio ;
   u8 *bmmio ;
   int pci_irqmask ;
   int hwrevision ;
   struct snd_card *card ;
   u32 clk_freq ;
   struct cx25821_i2c i2c_bus[3U] ;
   int nr ;
   struct mutex lock ;
   struct cx25821_channel channels[12U] ;
   unsigned int board ;
   char name[32U] ;
   unsigned int input ;
   v4l2_std_id tvnorm ;
   unsigned short _max_num_decoders ;
   int _audio_is_running ;
   int _audiopixel_format ;
   int _is_first_audio_frame ;
   int _audiofile_status ;
   int _audio_lines_count ;
   int _audioframe_count ;
   int _audio_upstream_channel ;
   int _last_index_irq ;
   __le32 *_risc_audio_jmp_addr ;
   __le32 *_risc_virt_start_addr ;
   __le32 *_risc_virt_addr ;
   dma_addr_t _risc_phys_addr ;
   dma_addr_t _risc_phys_start_addr ;
   unsigned int _audiorisc_size ;
   unsigned int _audiodata_buf_size ;
   __le32 *_audiodata_buf_virt_addr ;
   dma_addr_t _audiodata_buf_phys_addr ;
   char *_audiofilename ;
   u32 audio_upstream_riscbuf_size ;
   u32 audio_upstream_databuf_size ;
   int _audioframe_index ;
   struct workqueue_struct *_irq_audio_queues ;
   struct work_struct _audio_work_entry ;
   char *input_audiofilename ;
   spinlock_t slock ;
   struct cx25821_video_out_data vid_out_data[2U] ;
};
struct sram_channel {
   char *name ;
   u32 i ;
   u32 cmds_start ;
   u32 ctrl_start ;
   u32 cdt ;
   u32 fifo_start ;
   u32 fifo_size ;
   u32 ptr1_reg ;
   u32 ptr2_reg ;
   u32 cnt1_reg ;
   u32 cnt2_reg ;
   u32 int_msk ;
   u32 int_stat ;
   u32 int_mstat ;
   u32 dma_ctl ;
   u32 gpcnt_ctl ;
   u32 gpcnt ;
   u32 aud_length ;
   u32 aud_cfg ;
   u32 fld_aud_fifo_en ;
   u32 fld_aud_risc_en ;
   u32 vid_fmt_ctl ;
   u32 vid_active_ctl1 ;
   u32 vid_active_ctl2 ;
   u32 vid_cdt_size ;
   u32 vip_ctl ;
   u32 pix_frmt ;
   u32 jumponly ;
   u32 irq_bit ;
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
union __anonunion____missing_field_name_239 {
   void *arg ;
   struct kparam_string const *str ;
   struct kparam_array const *arr ;
};
struct kernel_param {
   char const *name ;
   struct kernel_param_ops const *ops ;
   u16 perm ;
   s16 level ;
   union __anonunion____missing_field_name_239 __annonCompField83 ;
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
typedef int ldv_func_ret_type___0;
typedef int ldv_func_ret_type___1;
enum hrtimer_restart;
enum hrtimer_restart;
enum hrtimer_restart;
enum hrtimer_restart;
typedef struct poll_table_struct poll_table;
typedef int ldv_func_ret_type___2;
typedef int ldv_func_ret_type___3;
typedef int ldv_func_ret_type___4;
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
struct __wait_queue;
typedef struct __wait_queue wait_queue_t;
struct __wait_queue {
   unsigned int flags ;
   void *private ;
   int (*func)(wait_queue_t * , unsigned int , int , void * ) ;
   struct list_head task_list ;
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
struct clk;
long ldv__builtin_expect(long exp , long c ) ;
void *ldv_dev_get_drvdata(struct device const *dev ) ;
void *ldv_kzalloc(size_t size , gfp_t flags ) ;
extern void ldv_initialize(void) ;
int ldv_post_init(int init_ret_val ) ;
extern void ldv_pre_probe(void) ;
int ldv_post_probe(int probe_ret_val ) ;
int ldv_filter_err_code(int ret_val ) ;
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
extern int printk(char const * , ...) ;
extern int sprintf(char * , char const * , ...) ;
extern void __bad_percpu_size(void) ;
extern void __mutex_init(struct mutex * , char const * , struct lock_class_key * ) ;
extern int __preempt_count ;
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
  goto ldv_6210;
  case_2:
  __asm__ ("movw %%gs:%P1,%0": "=r" (pfo_ret__): "m" (__preempt_count));
  goto ldv_6210;
  case_4:
  __asm__ ("movl %%gs:%P1,%0": "=r" (pfo_ret__): "m" (__preempt_count));
  goto ldv_6210;
  case_8:
  __asm__ ("movq %%gs:%P1,%0": "=r" (pfo_ret__): "m" (__preempt_count));
  goto ldv_6210;
  switch_default:
  {
  __bad_percpu_size();
  }
  switch_break: ;
  }
  ldv_6210: ;
  return (pfo_ret__ & 2147483647);
}
}
__inline static char const *kobject_name(struct kobject const *kobj )
{
  {
  return ((char const *)kobj->name);
}
}
extern struct resource iomem_resource ;
extern struct resource *__request_region(struct resource * , resource_size_t , resource_size_t ,
                                         char const * , int ) ;
extern void __release_region(struct resource * , resource_size_t , resource_size_t ) ;
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
extern void *ioremap_nocache(resource_size_t , unsigned long ) ;
__inline static void *ioremap(resource_size_t offset , unsigned long size )
{
  void *tmp ;
  {
  {
  tmp = ioremap_nocache(offset, size);
  }
  return (tmp);
}
}
extern void iounmap(void volatile * ) ;
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
static void *ldv_dev_get_drvdata_7(struct device const *dev ) ;
extern int pci_bus_read_config_byte(struct pci_bus * , unsigned int , int , u8 * ) ;
__inline static int pci_read_config_byte(struct pci_dev const *dev , int where ,
                                         u8 *val )
{
  int tmp ;
  {
  {
  tmp = pci_bus_read_config_byte(dev->bus, dev->devfn, where, val);
  }
  return (tmp);
}
}
extern int pci_enable_device(struct pci_dev * ) ;
extern void pci_disable_device(struct pci_dev * ) ;
extern void pci_set_master(struct pci_dev * ) ;
extern int __pci_register_driver(struct pci_driver * , struct module * , char const * ) ;
static int ldv___pci_register_driver_21(struct pci_driver *ldv_func_arg1 , struct module *ldv_func_arg2 ,
                                        char const *ldv_func_arg3 ) ;
extern void pci_unregister_driver(struct pci_driver * ) ;
static void ldv_pci_unregister_driver_22(struct pci_driver *ldv_func_arg1 ) ;
extern void kfree(void const * ) ;
__inline static void *kzalloc(size_t size , gfp_t flags ) ;
extern int dma_supported(struct device * , u64 ) ;
__inline static int pci_dma_supported(struct pci_dev *hwdev , u64 mask )
{
  int tmp ;
  {
  {
  tmp = dma_supported((unsigned long )hwdev != (unsigned long )((struct pci_dev *)0) ? & hwdev->dev : (struct device *)0,
                      mask);
  }
  return (tmp);
}
}
__inline static void *pci_get_drvdata(struct pci_dev *pdev )
{
  void *tmp ;
  {
  {
  tmp = ldv_dev_get_drvdata_7((struct device const *)(& pdev->dev));
  }
  return (tmp);
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
__inline static int ldv_request_irq_19(unsigned int irq , irqreturn_t (*handler)(int ,
                                                                                 void * ) ,
                                       unsigned long flags , char const *name ,
                                       void *dev ) ;
extern void free_irq(unsigned int , void * ) ;
static void ldv_free_irq_20(unsigned int ldv_func_arg1 , void *ldv_func_arg2 ) ;
extern void __const_udelay(unsigned long ) ;
extern int v4l2_device_register(struct device * , struct v4l2_device * ) ;
extern void v4l2_device_unregister(struct v4l2_device * ) ;
extern int videobuf_waiton(struct videobuf_queue * , struct videobuf_buffer * , int ,
                           int ) ;
extern int videobuf_dma_free(struct videobuf_dmabuf * ) ;
extern int videobuf_dma_unmap(struct device * , struct videobuf_dmabuf * ) ;
extern struct videobuf_dmabuf *videobuf_to_dma(struct videobuf_buffer * ) ;
extern int btcx_riscmem_alloc(struct pci_dev * , struct btcx_riscmem * , unsigned int ) ;
extern void btcx_riscmem_free(struct pci_dev * , struct btcx_riscmem * ) ;
__inline static struct cx25821_dev *get_cx25821(struct v4l2_device *v4l2_dev )
{
  struct v4l2_device const *__mptr ;
  {
  __mptr = (struct v4l2_device const *)v4l2_dev;
  return ((struct cx25821_dev *)__mptr);
}
}
struct cx25821_board cx25821_boards[2U] ;
struct sram_channel const cx25821_sram_channels[12U] ;
int cx25821_i2c_register(struct cx25821_i2c *bus ) ;
int cx25821_i2c_read(struct cx25821_i2c *bus , u16 reg_addr , int *value ) ;
int cx25821_i2c_unregister(struct cx25821_i2c *bus ) ;
void cx25821_gpio_init(struct cx25821_dev *dev ) ;
int medusa_video_init(struct cx25821_dev *dev ) ;
int cx25821_sram_channel_setup(struct cx25821_dev *dev , struct sram_channel const *ch ,
                               unsigned int bpl , u32 risc ) ;
int cx25821_risc_buffer(struct pci_dev *pci , struct btcx_riscmem *risc , struct scatterlist *sglist ,
                        unsigned int top_offset , unsigned int bottom_offset , unsigned int bpl ,
                        unsigned int padding , unsigned int lines ) ;
int cx25821_risc_databuffer_audio(struct pci_dev *pci , struct btcx_riscmem *risc ,
                                  struct scatterlist *sglist , unsigned int bpl ,
                                  unsigned int lines , unsigned int lpi ) ;
void cx25821_free_buffer(struct videobuf_queue *q , struct cx25821_buffer *buf ) ;
int cx25821_risc_stopper(struct pci_dev *pci , struct btcx_riscmem *risc , u32 reg ,
                         u32 mask , u32 value ) ;
void cx25821_sram_channel_dump(struct cx25821_dev *dev , struct sram_channel const *ch ) ;
void cx25821_sram_channel_dump_audio(struct cx25821_dev *dev , struct sram_channel const *ch ) ;
struct cx25821_dev *cx25821_dev_get(struct pci_dev *pci ) ;
void cx25821_print_irqbits(char *name , char *tag , char **strings , int len , u32 bits ,
                           u32 mask ) ;
void cx25821_dev_unregister(struct cx25821_dev *dev ) ;
int cx25821_sram_channel_setup_audio(struct cx25821_dev *dev , struct sram_channel const *ch ,
                                     unsigned int bpl , u32 risc ) ;
void cx25821_free_mem_upstream(struct cx25821_channel *chan ) ;
void cx25821_set_pixel_format(struct cx25821_dev *dev , int channel_select , u32 format ) ;
int cx25821_video_irq(struct cx25821_dev *dev , int chan_num , u32 status ) ;
void cx25821_video_unregister(struct cx25821_dev *dev , int chan_num ) ;
int cx25821_video_register(struct cx25821_dev *dev ) ;
static unsigned int card[2U] = { 4294967295U, 4294967295U};
struct sram_channel const cx25821_sram_channels[12U] =
  { {(char *)"VID A", 0U, 65536U, 69632U, 68608U, 64U, 5760U, 1048576U, 1048704U,
      1048832U, 1048960U, 262176U, 262180U, 262184U, 1245248U, 1245232U, 1245216U,
      0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 1245312U, 1245316U, 0U, 0U},
        {(char *)"VID B", 1U, 65616U, 69696U, 68672U, 5824U, 5760U, 1048580U, 1048708U,
      1048836U, 1048964U, 262192U, 262196U, 262200U, 1245504U, 1245488U, 1245472U,
      0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 1245568U, 1245572U, 0U, 0U},
        {(char *)"VID C", 2U, 65696U, 69760U, 68736U, 11584U, 5760U, 1048584U, 1048712U,
      1048840U, 1048968U, 262208U, 262212U, 262216U, 1245760U, 1245744U, 1245728U,
      0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 1245824U, 1245828U, 0U, 0U},
        {(char *)"VID D", 3U, 65776U, 69824U, 68800U, 17344U, 5760U, 1048588U, 1048716U,
      1048844U, 1048972U, 262224U, 262228U, 262232U, 1246016U, 1246000U, 1245984U,
      0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 1246080U, 1246084U, 0U, 0U},
        {(char *)"VID E", 4U, 65856U, 69888U, 68864U, 23104U, 5760U, 1048592U, 1048720U,
      1048848U, 1048976U, 262240U, 262244U, 262248U, 1246272U, 1246256U, 1246240U,
      0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 1246336U, 1246340U, 0U, 0U},
        {(char *)"VID F", 5U, 65936U, 69952U, 68928U, 28864U, 5760U, 1048596U, 1048724U,
      1048852U, 1048980U, 262256U, 262260U, 262264U, 1246528U, 1246512U, 1246496U,
      0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 1246592U, 1246596U, 0U, 0U},
        {(char *)"VID G", 6U, 66016U, 70016U, 68992U, 34624U, 5760U, 1048600U, 1048728U,
      1048856U, 1048984U, 262272U, 262276U, 262280U, 1246784U, 1246768U, 1246752U,
      0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 1246848U, 1246852U, 0U, 0U},
        {(char *)"VID H", 7U, 66096U, 70080U, 69056U, 40384U, 5760U, 1048604U, 1048732U,
      1048860U, 1048988U, 262288U, 262292U, 262296U, 1247040U, 1247024U, 1247008U,
      0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 1247104U, 1247108U, 0U, 0U},
        {(char *)"audio from", 0U, 66816U, 70272U, 69248U, 46336U, 384U, 1048640U, 1048768U,
      1048896U, 1049024U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U,
      0U, 0U, 0U, 0U},
        {(char *)"VID Upstream I", 9U, 66656U, 70144U, 69120U, 105216U, 5760U, 1048632U,
      1048760U, 1048888U, 1049016U, 262304U, 262308U, 262312U, 1248780U, 1248772U,
      1248776U, 0U, 0U, 0U, 0U, 1248784U, 1248788U, 1248792U, 1248796U, 0U, 0U, 0U,
      8U},
        {(char *)"VID Upstream J", 10U, 66736U, 70208U, 69184U, 110976U, 5760U, 1048636U,
      1048764U, 1048892U, 1049020U, 262320U, 262324U, 262328U, 1249036U, 1249028U,
      1249032U, 0U, 0U, 0U, 0U, 1249040U, 1249044U, 1249048U, 1249052U, 0U, 0U, 0U,
      9U},
        {(char *)"Audio Upstream Channel B", 11U, 67216U, 70336U, 69296U, 117120U, 384U,
      1048660U, 1048788U, 1048916U, 1049044U, 262352U, 262356U, 262360U, 1312000U,
      1310996U, 1310992U, 1311000U, 1311004U, 32U, 8192U, 0U, 0U, 0U, 0U, 0U, 0U,
      0U, 11U}};
static char const __kstrtab_cx25821_sram_channels[22U] =
  { 'c', 'x', '2', '5',
        '8', '2', '1', '_',
        's', 'r', 'a', 'm',
        '_', 'c', 'h', 'a',
        'n', 'n', 'e', 'l',
        's', '\000'};
struct kernel_symbol const __ksymtab_cx25821_sram_channels ;
struct kernel_symbol const __ksymtab_cx25821_sram_channels = {(unsigned long )(& cx25821_sram_channels), (char const *)(& __kstrtab_cx25821_sram_channels)};
static int cx25821_risc_decode(u32 risc )
{
  char const *instr[16U] ;
  unsigned int tmp ;
  int incr[16U] ;
  unsigned int tmp___0 ;
  char const *bits[16U] ;
  int i ;
  {
  instr[0] = 0;
  instr[1] = "write";
  instr[2] = "skip";
  instr[3] = 0;
  instr[4] = 0;
  instr[5] = "writec";
  instr[6] = 0;
  instr[7] = "jump";
  instr[8] = "sync";
  instr[9] = "read";
  instr[10] = "readc";
  instr[11] = "writerm";
  instr[12] = "writecm";
  instr[13] = "writecr";
  tmp = 14U;
  {
  while (1) {
    while_continue: ;
    if (tmp >= 16U) {
      goto while_break;
    } else {
    }
    instr[tmp] = 0;
    tmp = tmp + 1U;
  }
  while_break: ;
  }
  incr[0] = 0;
  incr[1] = 3;
  incr[2] = 1;
  incr[3] = 0;
  incr[4] = 0;
  incr[5] = 0;
  incr[6] = 0;
  incr[7] = 3;
  incr[8] = 1;
  incr[9] = 0;
  incr[10] = 0;
  incr[11] = 3;
  incr[12] = 3;
  incr[13] = 4;
  tmp___0 = 14U;
  {
  while (1) {
    while_continue___0: ;
    if (tmp___0 >= 16U) {
      goto while_break___0;
    } else {
    }
    incr[tmp___0] = 0;
    tmp___0 = tmp___0 + 1U;
  }
  while_break___0: ;
  }
  {
  bits[0] = "12";
  bits[1] = "13";
  bits[2] = "14";
  bits[3] = "resync";
  bits[4] = "cnt0";
  bits[5] = "cnt1";
  bits[6] = "18";
  bits[7] = "19";
  bits[8] = "20";
  bits[9] = "21";
  bits[10] = "22";
  bits[11] = "23";
  bits[12] = "irq1";
  bits[13] = "irq2";
  bits[14] = "eol";
  bits[15] = "sol";
  printk("0x%08x [ %s", risc, (unsigned long )instr[risc >> 28] != (unsigned long )((char const * )0) ? instr[risc >> 28] : (char const * )"INVALID");
  i = 15;
  }
  goto ldv_35781;
  ldv_35780: ;
  if ((risc & (u32 )(1 << (i + 12))) != 0U) {
    {
    printk(" %s", bits[i]);
    }
  } else {
  }
  i = i - 1;
  ldv_35781: ;
  if (i >= 0) {
    goto ldv_35780;
  } else {
  }
  {
  printk(" count=%d ]\n", risc & 4095U);
  }
  return (incr[risc >> 28] != 0 ? incr[risc >> 28] : 1);
}
}
static void cx25821_registers_init(struct cx25821_dev *dev )
{
  u32 tmp ;
  unsigned long __ms ;
  unsigned long tmp___0 ;
  {
  {
  writel(32U, (void volatile *)dev->lmmio + 65536U);
  writel(537001983U, (void volatile *)dev->lmmio + 65540U);
  tmp = readl((void const volatile *)dev->lmmio + 82118U);
  tmp = tmp & 4294967279U;
  writel(tmp, (void volatile *)dev->lmmio + 82118U);
  writel(2550637963U, (void volatile *)dev->lmmio + 278562U);
  writel(2147484060U, (void volatile *)dev->lmmio + 278563U);
  tmp = readl((void const volatile *)dev->lmmio + 278562U);
  writel(tmp & 2147483647U, (void volatile *)dev->lmmio + 278562U);
  writel(2558765167U, (void volatile *)dev->lmmio + 278564U);
  writel(2147484045U, (void volatile *)dev->lmmio + 278565U);
  tmp = readl((void const volatile *)dev->lmmio + 278564U);
  writel(tmp & 2147483647U, (void volatile *)dev->lmmio + 278564U);
  writel(2527128127U, (void volatile *)dev->lmmio + 278566U);
  writel(2147483907U, (void volatile *)dev->lmmio + 278567U);
  tmp = readl((void const volatile *)dev->lmmio + 278566U);
  writel(tmp & 2147483647U, (void volatile *)dev->lmmio + 278566U);
  writel(2557837147U, (void volatile *)dev->lmmio + 278568U);
  writel(2147483923U, (void volatile *)dev->lmmio + 278569U);
  tmp = readl((void const volatile *)dev->lmmio + 278568U);
  writel(tmp & 2147483647U, (void volatile *)dev->lmmio + 278568U);
  tmp = readl((void const volatile *)dev->lmmio + 278559U);
  writel((tmp & 16777215U) | 603979776U, (void volatile *)dev->lmmio + 278559U);
  tmp = readl((void const volatile *)dev->lmmio + 278558U);
  writel(tmp & 4294966784U, (void volatile *)dev->lmmio + 278558U);
  tmp = readl((void const volatile *)dev->lmmio + 278539U);
  tmp = tmp | 16384U;
  writel(tmp & 4294955007U, (void volatile *)dev->lmmio + 278539U);
  __ms = 100UL;
  }
  goto ldv_35794;
  ldv_35793:
  {
  __const_udelay(4295000UL);
  }
  ldv_35794:
  tmp___0 = __ms;
  __ms = __ms - 1UL;
  if (tmp___0 != 0UL) {
    goto ldv_35793;
  } else {
  }
  return;
}
}
int cx25821_sram_channel_setup(struct cx25821_dev *dev , struct sram_channel const *ch ,
                               unsigned int bpl , u32 risc )
{
  unsigned int i ;
  unsigned int lines ;
  u32 cdt ;
  long tmp ;
  {
  if ((unsigned int )ch->cmds_start == 0U) {
    {
    writel(0U, (void volatile *)dev->lmmio + (unsigned long )(ch->ptr1_reg >> 2));
    writel(0U, (void volatile *)dev->lmmio + (unsigned long )(ch->ptr2_reg >> 2));
    writel(0U, (void volatile *)dev->lmmio + (unsigned long )(ch->cnt2_reg >> 2));
    writel(0U, (void volatile *)dev->lmmio + (unsigned long )(ch->cnt1_reg >> 2));
    }
    return (0);
  } else {
  }
  bpl = (bpl + 7U) & 4294967288U;
  cdt = ch->cdt;
  lines = (unsigned int )ch->fifo_size / bpl;
  if (lines > 4U) {
    lines = 4U;
  } else {
  }
  {
  tmp = ldv__builtin_expect(lines <= 1U, 0L);
  }
  if (tmp != 0L) {
    {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"drivers/media/pci/cx25821/cx25821-core.c"),
                         "i" (460), "i" (12UL));
    __builtin_unreachable();
    }
  } else {
  }
  {
  writel(1895890944U, (void volatile *)dev->lmmio + 2U);
  writel(8U, (void volatile *)dev->lmmio + 3U);
  writel(0U, (void volatile *)dev->lmmio + 4U);
  i = 0U;
  }
  goto ldv_35806;
  ldv_35805:
  {
  writel((unsigned int )ch->fifo_start + bpl * i, (void volatile *)dev->lmmio + (unsigned long )((cdt + i * 16U) >> 2));
  writel(0U, (void volatile *)dev->lmmio + (unsigned long )(((cdt + i * 16U) + 4U) >> 2));
  writel(0U, (void volatile *)dev->lmmio + (unsigned long )(((cdt + i * 16U) + 8U) >> 2));
  writel(0U, (void volatile *)dev->lmmio + (unsigned long )(((cdt + i * 16U) + 12U) >> 2));
  i = i + 1U;
  }
  ldv_35806: ;
  if (i < lines) {
    goto ldv_35805;
  } else {
  }
  i = 0U;
  goto ldv_35809;
  ldv_35808:
  {
  writel(i, (void volatile *)dev->lmmio + (unsigned long )(((unsigned int )ch->fifo_start + i * 4U) >> 2));
  i = i + 1U;
  }
  ldv_35809: ;
  if (i <= 127U) {
    goto ldv_35808;
  } else {
  }
  if ((unsigned int )ch->jumponly != 0U) {
    {
    writel(8U, (void volatile *)dev->lmmio + (unsigned long )((unsigned int )ch->cmds_start >> 2));
    }
  } else {
    {
    writel(risc, (void volatile *)dev->lmmio + (unsigned long )((unsigned int )ch->cmds_start >> 2));
    }
  }
  {
  writel(0U, (void volatile *)dev->lmmio + (unsigned long )(((unsigned int )ch->cmds_start + 4U) >> 2));
  writel(cdt, (void volatile *)dev->lmmio + (unsigned long )(((unsigned int )ch->cmds_start + 8U) >> 2));
  writel(lines * 16U >> 3, (void volatile *)dev->lmmio + (unsigned long )(((unsigned int )ch->cmds_start + 12U) >> 2));
  writel(ch->ctrl_start, (void volatile *)dev->lmmio + (unsigned long )(((unsigned int )ch->cmds_start + 16U) >> 2));
  }
  if ((unsigned int )ch->jumponly != 0U) {
    {
    writel(2147483664U, (void volatile *)dev->lmmio + (unsigned long )(((unsigned int )ch->cmds_start + 20U) >> 2));
    }
  } else {
    {
    writel(16U, (void volatile *)dev->lmmio + (unsigned long )(((unsigned int )ch->cmds_start + 20U) >> 2));
    }
  }
  i = 24U;
  goto ldv_35812;
  ldv_35811:
  {
  writel(0U, (void volatile *)dev->lmmio + (unsigned long )(((unsigned int )ch->cmds_start + i) >> 2));
  i = i + 4U;
  }
  ldv_35812: ;
  if (i <= 79U) {
    goto ldv_35811;
  } else {
  }
  {
  writel(ch->fifo_start, (void volatile *)dev->lmmio + (unsigned long )(ch->ptr1_reg >> 2));
  writel(cdt, (void volatile *)dev->lmmio + (unsigned long )(ch->ptr2_reg >> 2));
  writel(lines * 16U >> 3, (void volatile *)dev->lmmio + (unsigned long )(ch->cnt2_reg >> 2));
  writel((bpl >> 3) - 1U, (void volatile *)dev->lmmio + (unsigned long )(ch->cnt1_reg >> 2));
  }
  return (0);
}
}
int cx25821_sram_channel_setup_audio(struct cx25821_dev *dev , struct sram_channel const *ch ,
                                     unsigned int bpl , u32 risc )
{
  unsigned int i ;
  unsigned int lines ;
  u32 cdt ;
  long tmp ;
  {
  if ((unsigned int )ch->cmds_start == 0U) {
    {
    writel(0U, (void volatile *)dev->lmmio + (unsigned long )(ch->ptr1_reg >> 2));
    writel(0U, (void volatile *)dev->lmmio + (unsigned long )(ch->ptr2_reg >> 2));
    writel(0U, (void volatile *)dev->lmmio + (unsigned long )(ch->cnt2_reg >> 2));
    writel(0U, (void volatile *)dev->lmmio + (unsigned long )(ch->cnt1_reg >> 2));
    }
    return (0);
  } else {
  }
  bpl = (bpl + 7U) & 4294967288U;
  cdt = ch->cdt;
  lines = (unsigned int )ch->fifo_size / bpl;
  if (lines > 3U) {
    lines = 3U;
  } else {
  }
  {
  tmp = ldv__builtin_expect(lines <= 1U, 0L);
  }
  if (tmp != 0L) {
    {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"drivers/media/pci/cx25821/cx25821-core.c"),
                         "i" (528), "i" (12UL));
    __builtin_unreachable();
    }
  } else {
  }
  {
  writel(1895890944U, (void volatile *)dev->lmmio + 2U);
  writel(8U, (void volatile *)dev->lmmio + 3U);
  writel(0U, (void volatile *)dev->lmmio + 4U);
  i = 0U;
  }
  goto ldv_35824;
  ldv_35823:
  {
  writel((unsigned int )ch->fifo_start + bpl * i, (void volatile *)dev->lmmio + (unsigned long )((cdt + i * 16U) >> 2));
  writel(0U, (void volatile *)dev->lmmio + (unsigned long )(((cdt + i * 16U) + 4U) >> 2));
  writel(0U, (void volatile *)dev->lmmio + (unsigned long )(((cdt + i * 16U) + 8U) >> 2));
  writel(0U, (void volatile *)dev->lmmio + (unsigned long )(((cdt + i * 16U) + 12U) >> 2));
  i = i + 1U;
  }
  ldv_35824: ;
  if (i < lines) {
    goto ldv_35823;
  } else {
  }
  if ((unsigned int )ch->jumponly != 0U) {
    {
    writel(8U, (void volatile *)dev->lmmio + (unsigned long )((unsigned int )ch->cmds_start >> 2));
    }
  } else {
    {
    writel(risc, (void volatile *)dev->lmmio + (unsigned long )((unsigned int )ch->cmds_start >> 2));
    }
  }
  {
  writel(0U, (void volatile *)dev->lmmio + (unsigned long )(((unsigned int )ch->cmds_start + 4U) >> 2));
  writel(cdt, (void volatile *)dev->lmmio + (unsigned long )(((unsigned int )ch->cmds_start + 8U) >> 2));
  writel(lines * 16U >> 3, (void volatile *)dev->lmmio + (unsigned long )(((unsigned int )ch->cmds_start + 12U) >> 2));
  writel(ch->ctrl_start, (void volatile *)dev->lmmio + (unsigned long )(((unsigned int )ch->cmds_start + 16U) >> 2));
  }
  if ((unsigned int )ch->jumponly != 0U) {
    {
    writel(2147483664U, (void volatile *)dev->lmmio + (unsigned long )(((unsigned int )ch->cmds_start + 20U) >> 2));
    }
  } else {
    {
    writel(16U, (void volatile *)dev->lmmio + (unsigned long )(((unsigned int )ch->cmds_start + 20U) >> 2));
    }
  }
  i = 24U;
  goto ldv_35827;
  ldv_35826:
  {
  writel(0U, (void volatile *)dev->lmmio + (unsigned long )(((unsigned int )ch->cmds_start + i) >> 2));
  i = i + 4U;
  }
  ldv_35827: ;
  if (i <= 79U) {
    goto ldv_35826;
  } else {
  }
  {
  writel(ch->fifo_start, (void volatile *)dev->lmmio + (unsigned long )(ch->ptr1_reg >> 2));
  writel(cdt, (void volatile *)dev->lmmio + (unsigned long )(ch->ptr2_reg >> 2));
  writel(lines * 16U >> 3, (void volatile *)dev->lmmio + (unsigned long )(ch->cnt2_reg >> 2));
  writel((bpl >> 3) - 1U, (void volatile *)dev->lmmio + (unsigned long )(ch->cnt1_reg >> 2));
  }
  return (0);
}
}
static char const __kstrtab_cx25821_sram_channel_setup_audio[33U] =
  { 'c', 'x', '2', '5',
        '8', '2', '1', '_',
        's', 'r', 'a', 'm',
        '_', 'c', 'h', 'a',
        'n', 'n', 'e', 'l',
        '_', 's', 'e', 't',
        'u', 'p', '_', 'a',
        'u', 'd', 'i', 'o',
        '\000'};
struct kernel_symbol const __ksymtab_cx25821_sram_channel_setup_audio ;
struct kernel_symbol const __ksymtab_cx25821_sram_channel_setup_audio = {(unsigned long )(& cx25821_sram_channel_setup_audio), (char const *)(& __kstrtab_cx25821_sram_channel_setup_audio)};
void cx25821_sram_channel_dump(struct cx25821_dev *dev , struct sram_channel const *ch )
{
  char *name[14U] ;
  u32 risc ;
  unsigned int i ;
  unsigned int j ;
  unsigned int n ;
  unsigned int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  unsigned int tmp___2 ;
  unsigned int tmp___3 ;
  unsigned int tmp___4 ;
  unsigned int tmp___5 ;
  {
  {
  name[0] = (char *)"init risc lo";
  name[1] = (char *)"init risc hi";
  name[2] = (char *)"cdt base";
  name[3] = (char *)"cdt size";
  name[4] = (char *)"iq base";
  name[5] = (char *)"iq size";
  name[6] = (char *)"risc pc lo";
  name[7] = (char *)"risc pc hi";
  name[8] = (char *)"iq wr ptr";
  name[9] = (char *)"iq rd ptr";
  name[10] = (char *)"cdt current";
  name[11] = (char *)"pci target lo";
  name[12] = (char *)"pci target hi";
  name[13] = (char *)"line / byte";
  printk("\fcx25821: %s: %s - dma channel status dump\n", (char *)(& dev->name), ch->name);
  i = 0U;
  }
  goto ldv_35851;
  ldv_35850:
  {
  tmp = readl((void const volatile *)dev->lmmio + (unsigned long )(((unsigned int )ch->cmds_start + i * 4U) >> 2));
  printk("\fcx25821: cmds + 0x%2x:   %-15s: 0x%08x\n", i * 4U, name[i], tmp);
  i = i + 1U;
  }
  ldv_35851: ;
  if (i <= 13U) {
    goto ldv_35850;
  } else {
  }
  j = i * 4U;
  i = 0U;
  goto ldv_35854;
  ldv_35853:
  {
  risc = readl((void const volatile *)dev->lmmio + (unsigned long )(((unsigned int )ch->cmds_start + (i + 14U) * 4U) >> 2));
  printk("\fcx25821: cmds + 0x%2x:   risc%d: ", j + i * 4U, i);
  tmp___0 = cx25821_risc_decode(risc);
  i = i + (unsigned int )tmp___0;
  }
  ldv_35854: ;
  if (i <= 3U) {
    goto ldv_35853;
  } else {
  }
  i = 0U;
  goto ldv_35860;
  ldv_35859:
  {
  risc = readl((void const volatile *)dev->lmmio + (unsigned long )(((unsigned int )ch->ctrl_start + i * 4U) >> 2));
  printk("\fcx25821: ctrl + 0x%2x (0x%08x): iq %x: ", i * 4U, (unsigned int )ch->ctrl_start + i * 4U,
         i);
  tmp___1 = cx25821_risc_decode(risc);
  n = (unsigned int )tmp___1;
  j = 1U;
  }
  goto ldv_35857;
  ldv_35856:
  {
  risc = readl((void const volatile *)dev->lmmio + (unsigned long )(((unsigned int )ch->ctrl_start + (i + j) * 4U) >> 2));
  printk("\fcx25821: ctrl + 0x%2x :   iq %x: 0x%08x [ arg #%d ]\n", (i + j) * 4U,
         i + j, risc, j);
  j = j + 1U;
  }
  ldv_35857: ;
  if (j < n) {
    goto ldv_35856;
  } else {
  }
  i = i + n;
  ldv_35860: ;
  if (i <= 15U) {
    goto ldv_35859;
  } else {
  }
  {
  printk("\fcx25821:         :   fifo: 0x%08x -> 0x%x\n", ch->fifo_start, (unsigned int )ch->fifo_start + (unsigned int )ch->fifo_size);
  printk("\fcx25821:         :   ctrl: 0x%08x -> 0x%x\n", ch->ctrl_start, (unsigned int )ch->ctrl_start + 96U);
  tmp___2 = readl((void const volatile *)dev->lmmio + (unsigned long )(ch->ptr1_reg >> 2));
  printk("\fcx25821:         :   ptr1_reg: 0x%08x\n", tmp___2);
  tmp___3 = readl((void const volatile *)dev->lmmio + (unsigned long )(ch->ptr2_reg >> 2));
  printk("\fcx25821:         :   ptr2_reg: 0x%08x\n", tmp___3);
  tmp___4 = readl((void const volatile *)dev->lmmio + (unsigned long )(ch->cnt1_reg >> 2));
  printk("\fcx25821:         :   cnt1_reg: 0x%08x\n", tmp___4);
  tmp___5 = readl((void const volatile *)dev->lmmio + (unsigned long )(ch->cnt2_reg >> 2));
  printk("\fcx25821:         :   cnt2_reg: 0x%08x\n", tmp___5);
  }
  return;
}
}
void cx25821_sram_channel_dump_audio(struct cx25821_dev *dev , struct sram_channel const *ch )
{
  char const *name[14U] ;
  u32 risc ;
  u32 value ;
  u32 tmp ;
  unsigned int i ;
  unsigned int j ;
  unsigned int n ;
  unsigned int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  unsigned int tmp___3 ;
  unsigned int tmp___4 ;
  unsigned int tmp___5 ;
  unsigned int tmp___6 ;
  int tmp___7 ;
  {
  {
  name[0] = "init risc lo";
  name[1] = "init risc hi";
  name[2] = "cdt base";
  name[3] = "cdt size";
  name[4] = "iq base";
  name[5] = "iq size";
  name[6] = "risc pc lo";
  name[7] = "risc pc hi";
  name[8] = "iq wr ptr";
  name[9] = "iq rd ptr";
  name[10] = "cdt current";
  name[11] = "pci target lo";
  name[12] = "pci target hi";
  name[13] = "line / byte";
  printk("\016cx25821: \n%s: %s - dma Audio channel status dump\n", (char *)(& dev->name),
         ch->name);
  i = 0U;
  }
  goto ldv_35876;
  ldv_35875:
  {
  tmp___0 = readl((void const volatile *)dev->lmmio + (unsigned long )(((unsigned int )ch->cmds_start + i * 4U) >> 2));
  printk("\016cx25821: %s: cmds + 0x%2x:   %-15s: 0x%08x\n", (char *)(& dev->name),
         i * 4U, name[i], tmp___0);
  i = i + 1U;
  }
  ldv_35876: ;
  if (i <= 13U) {
    goto ldv_35875;
  } else {
  }
  j = i * 4U;
  i = 0U;
  goto ldv_35879;
  ldv_35878:
  {
  risc = readl((void const volatile *)dev->lmmio + (unsigned long )(((unsigned int )ch->cmds_start + (i + 14U) * 4U) >> 2));
  printk("\fcx25821: cmds + 0x%2x:   risc%d: ", j + i * 4U, i);
  tmp___1 = cx25821_risc_decode(risc);
  i = i + (unsigned int )tmp___1;
  }
  ldv_35879: ;
  if (i <= 3U) {
    goto ldv_35878;
  } else {
  }
  i = 0U;
  goto ldv_35885;
  ldv_35884:
  {
  risc = readl((void const volatile *)dev->lmmio + (unsigned long )(((unsigned int )ch->ctrl_start + i * 4U) >> 2));
  printk("\fcx25821: ctrl + 0x%2x (0x%08x): iq %x: ", i * 4U, (unsigned int )ch->ctrl_start + i * 4U,
         i);
  tmp___2 = cx25821_risc_decode(risc);
  n = (unsigned int )tmp___2;
  j = 1U;
  }
  goto ldv_35882;
  ldv_35881:
  {
  risc = readl((void const volatile *)dev->lmmio + (unsigned long )(((unsigned int )ch->ctrl_start + (i + j) * 4U) >> 2));
  printk("\fcx25821: ctrl + 0x%2x :   iq %x: 0x%08x [ arg #%d ]\n", (i + j) * 4U,
         i + j, risc, j);
  j = j + 1U;
  }
  ldv_35882: ;
  if (j < n) {
    goto ldv_35881;
  } else {
  }
  i = i + n;
  ldv_35885: ;
  if (i <= 15U) {
    goto ldv_35884;
  } else {
  }
  {
  printk("\fcx25821:         :   fifo: 0x%08x -> 0x%x\n", ch->fifo_start, (unsigned int )ch->fifo_start + (unsigned int )ch->fifo_size);
  printk("\fcx25821:         :   ctrl: 0x%08x -> 0x%x\n", ch->ctrl_start, (unsigned int )ch->ctrl_start + 96U);
  tmp___3 = readl((void const volatile *)dev->lmmio + (unsigned long )(ch->ptr1_reg >> 2));
  printk("\fcx25821:         :   ptr1_reg: 0x%08x\n", tmp___3);
  tmp___4 = readl((void const volatile *)dev->lmmio + (unsigned long )(ch->ptr2_reg >> 2));
  printk("\fcx25821:         :   ptr2_reg: 0x%08x\n", tmp___4);
  tmp___5 = readl((void const volatile *)dev->lmmio + (unsigned long )(ch->cnt1_reg >> 2));
  printk("\fcx25821:         :   cnt1_reg: 0x%08x\n", tmp___5);
  tmp___6 = readl((void const volatile *)dev->lmmio + (unsigned long )(ch->cnt2_reg >> 2));
  printk("\fcx25821:         :   cnt2_reg: 0x%08x\n", tmp___6);
  i = 0U;
  }
  goto ldv_35888;
  ldv_35887:
  {
  risc = readl((void const volatile *)dev->lmmio + (unsigned long )((((unsigned int )ch->cmds_start + i * 4U) + 56U) >> 2));
  printk("\fcx25821: instruction %d = 0x%x\n", i, risc);
  i = i + 1U;
  }
  ldv_35888: ;
  if (i <= 3U) {
    goto ldv_35887;
  } else {
  }
  {
  risc = readl((void const volatile *)dev->lmmio + 17312U);
  printk("\fcx25821: \nread cdt loc=0x%x\n", risc);
  i = 0U;
  }
  goto ldv_35891;
  ldv_35890:
  {
  n = readl((void const volatile *)dev->lmmio + (unsigned long )((risc + i * 4U) >> 2));
  printk("0x%x ", n);
  i = i + 1U;
  }
  ldv_35891: ;
  if (i <= 7U) {
    goto ldv_35890;
  } else {
  }
  {
  printk("\n\n");
  value = readl((void const volatile *)dev->lmmio + 278539U);
  printk("\016cx25821: (%d):  CLK_RST = 0x%x\n\n", dev->board, value);
  value = readl((void const volatile *)dev->lmmio + 278563U);
  printk("\016cx25821: (%d):  PLL_A_POST_STAT_BIST = 0x%x\n\n", dev->board, value);
  value = readl((void const volatile *)dev->lmmio + 278562U);
  printk("\016cx25821: (%d):  PLL_A_INT_FRAC = 0x%x\n\n", dev->board, value);
  value = readl((void const volatile *)dev->lmmio + 278565U);
  printk("\016cx25821: (%d):  PLL_B_POST_STAT_BIST = 0x%x\n\n", dev->board, value);
  value = readl((void const volatile *)dev->lmmio + 278564U);
  printk("\016cx25821: (%d):  PLL_B_INT_FRAC = 0x%x\n\n", dev->board, value);
  value = readl((void const volatile *)dev->lmmio + 278567U);
  printk("\016cx25821: (%d):  PLL_C_POST_STAT_BIST = 0x%x\n\n", dev->board, value);
  value = readl((void const volatile *)dev->lmmio + 278566U);
  printk("\016cx25821: (%d):  PLL_C_INT_FRAC = 0x%x\n\n", dev->board, value);
  value = readl((void const volatile *)dev->lmmio + 278569U);
  printk("\016cx25821: (%d):  PLL_D_POST_STAT_BIST = 0x%x\n\n", dev->board, value);
  value = readl((void const volatile *)dev->lmmio + 278568U);
  printk("\016cx25821: (%d):  PLL_D_INT_FRAC = 0x%x\n\n", dev->board, value);
  tmp___7 = cx25821_i2c_read((struct cx25821_i2c *)(& dev->i2c_bus), 356, (int *)(& tmp));
  value = (u32 )tmp___7;
  printk("\016cx25821: (%d):  AFE_AB_DIAG_CTRL (0x10900090) = 0x%x\n\n", dev->board,
         value);
  }
  return;
}
}
static char const __kstrtab_cx25821_sram_channel_dump_audio[32U] =
  { 'c', 'x', '2', '5',
        '8', '2', '1', '_',
        's', 'r', 'a', 'm',
        '_', 'c', 'h', 'a',
        'n', 'n', 'e', 'l',
        '_', 'd', 'u', 'm',
        'p', '_', 'a', 'u',
        'd', 'i', 'o', '\000'};
struct kernel_symbol const __ksymtab_cx25821_sram_channel_dump_audio ;
struct kernel_symbol const __ksymtab_cx25821_sram_channel_dump_audio = {(unsigned long )(& cx25821_sram_channel_dump_audio), (char const *)(& __kstrtab_cx25821_sram_channel_dump_audio)};
static void cx25821_shutdown(struct cx25821_dev *dev )
{
  int i ;
  {
  {
  writel(0U, (void volatile *)dev->lmmio + 65536U);
  i = 0;
  }
  goto ldv_35906;
  ldv_35905:
  {
  writel(0U, (void volatile *)dev->lmmio + (unsigned long )((dev->channels[i].sram_channels)->dma_ctl >> 2));
  writel(0U, (void volatile *)dev->lmmio + (unsigned long )((dev->channels[i].sram_channels)->int_msk >> 2));
  i = i + 1;
  }
  ldv_35906: ;
  if (i <= 7) {
    goto ldv_35905;
  } else {
  }
  i = 9;
  goto ldv_35909;
  ldv_35908:
  {
  writel(0U, (void volatile *)dev->lmmio + (unsigned long )((dev->channels[i].sram_channels)->dma_ctl >> 2));
  writel(0U, (void volatile *)dev->lmmio + (unsigned long )((dev->channels[i].sram_channels)->int_msk >> 2));
  i = i + 1;
  }
  ldv_35909: ;
  if (i <= 10) {
    goto ldv_35908;
  } else {
  }
  {
  writel(0U, (void volatile *)dev->lmmio + 328000U);
  writel(0U, (void volatile *)dev->lmmio + 442368U);
  writel(0U, (void volatile *)dev->lmmio + 65540U);
  writel(0U, (void volatile *)dev->lmmio + 65584U);
  }
  return;
}
}
void cx25821_set_pixel_format(struct cx25821_dev *dev , int channel_select , u32 format )
{
  {
  if ((unsigned int )channel_select <= 7U) {
    {
    writel(format, (void volatile *)dev->lmmio + (unsigned long )((dev->channels[channel_select].sram_channels)->pix_frmt >> 2));
    }
  } else {
  }
  dev->channels[channel_select].pixel_formats = (int )format;
  return;
}
}
static void cx25821_set_vip_mode(struct cx25821_dev *dev , struct sram_channel const *ch )
{
  {
  {
  writel(4U, (void volatile *)dev->lmmio + (unsigned long )(ch->pix_frmt >> 2));
  writel(0U, (void volatile *)dev->lmmio + (unsigned long )(ch->vip_ctl >> 2));
  }
  return;
}
}
static void cx25821_initialize(struct cx25821_dev *dev )
{
  int i ;
  unsigned int tmp ;
  unsigned long __ms ;
  unsigned long tmp___0 ;
  {
  {
  cx25821_shutdown(dev);
  writel(4294967295U, (void volatile *)dev->lmmio + 65541U);
  i = 0;
  }
  goto ldv_35926;
  ldv_35925:
  {
  writel(4294967295U, (void volatile *)dev->lmmio + (unsigned long )((dev->channels[i].sram_channels)->int_stat >> 2));
  i = i + 1;
  }
  ldv_35926: ;
  if (i <= 7) {
    goto ldv_35925;
  } else {
  }
  {
  writel(4294967295U, (void volatile *)dev->lmmio + 65585U);
  writel(4294967295U, (void volatile *)dev->lmmio + 65589U);
  writel(4294967295U, (void volatile *)dev->lmmio + 65593U);
  writel(4294967295U, (void volatile *)dev->lmmio + 65597U);
  writel(4294967295U, (void volatile *)dev->lmmio + 65601U);
  tmp = readl((void const volatile *)dev->lmmio + 278546U);
  writel(tmp & 2147483648U, (void volatile *)dev->lmmio + 278546U);
  writel(18U, (void volatile *)dev->lmmio + 278554U);
  cx25821_registers_init(dev);
  __ms = 100UL;
  }
  goto ldv_35930;
  ldv_35929:
  {
  __const_udelay(4295000UL);
  }
  ldv_35930:
  tmp___0 = __ms;
  __ms = __ms - 1UL;
  if (tmp___0 != 0UL) {
    goto ldv_35929;
  } else {
  }
  i = 0;
  goto ldv_35933;
  ldv_35932:
  {
  cx25821_set_vip_mode(dev, dev->channels[i].sram_channels);
  cx25821_sram_channel_setup(dev, dev->channels[i].sram_channels, 1440U, 0U);
  dev->channels[i].pixel_formats = 4;
  dev->channels[i].use_cif_resolution = 0;
  i = i + 1;
  }
  ldv_35933: ;
  if (i <= 7) {
    goto ldv_35932;
  } else {
  }
  i = 9;
  goto ldv_35936;
  ldv_35935:
  {
  dev->channels[i].pixel_formats = 4;
  cx25821_set_vip_mode(dev, dev->channels[i].sram_channels);
  i = i + 1;
  }
  ldv_35936: ;
  if (i <= 10) {
    goto ldv_35935;
  } else {
  }
  {
  cx25821_sram_channel_setup_audio(dev, dev->channels[8].sram_channels, 128U, 0U);
  cx25821_gpio_init(dev);
  }
  return;
}
}
static int cx25821_get_resources(struct cx25821_dev *dev )
{
  struct resource *tmp ;
  {
  {
  tmp = __request_region(& iomem_resource, (dev->pci)->resource[0].start, (dev->pci)->resource[0].start != 0ULL || (dev->pci)->resource[0].end != (dev->pci)->resource[0].start ? ((dev->pci)->resource[0].end - (dev->pci)->resource[0].start) + 1ULL : 0ULL,
                         (char const *)(& dev->name), 0);
  }
  if ((unsigned long )tmp != (unsigned long )((struct resource *)0)) {
    return (0);
  } else {
  }
  {
  printk("\vcx25821: %s: can\'t get MMIO memory @ 0x%llx\n", (char *)(& dev->name),
         (dev->pci)->resource[0].start);
  }
  return (-16);
}
}
static void cx25821_dev_checkrevision(struct cx25821_dev *dev )
{
  unsigned int tmp ;
  {
  {
  tmp = readl((void const volatile *)dev->lmmio + 81922U);
  dev->hwrevision = (int )tmp & 255;
  printk("\016cx25821: Hardware revision = 0x%02x\n", dev->hwrevision);
  }
  return;
}
}
static void cx25821_iounmap(struct cx25821_dev *dev )
{
  {
  if ((unsigned long )dev == (unsigned long )((struct cx25821_dev *)0)) {
    return;
  } else {
  }
  if ((unsigned long )dev->lmmio != (unsigned long )((u32 *)0U)) {
    {
    iounmap((void volatile *)dev->lmmio);
    dev->lmmio = (u32 *)0U;
    }
  } else {
  }
  return;
}
}
static int cx25821_dev_setup(struct cx25821_dev *dev )
{
  unsigned int cx25821_devcount ;
  int i ;
  struct lock_class_key __key ;
  int tmp ;
  void *tmp___0 ;
  int tmp___1 ;
  {
  {
  __mutex_init(& dev->lock, "&dev->lock", & __key);
  cx25821_devcount = cx25821_devcount + 1U;
  dev->nr = (int )cx25821_devcount;
  sprintf((char *)(& dev->name), "cx25821[%d]", dev->nr);
  }
  if ((unsigned int )(dev->pci)->device != 33296U) {
    {
    printk("\016cx25821: %s(): Exiting. Incorrect Hardware device = 0x%02x\n", "cx25821_dev_setup",
           (int )(dev->pci)->device);
    }
    return (-1);
  } else {
    {
    printk("\016cx25821: Athena Hardware device = 0x%02x\n", (int )(dev->pci)->device);
    }
  }
  dev->clk_freq = 28000000U;
  i = 0;
  goto ldv_35955;
  ldv_35954:
  dev->channels[i].dev = dev;
  dev->channels[i].id = (unsigned int )i;
  dev->channels[i].sram_channels = (struct sram_channel const *)(& cx25821_sram_channels) + (unsigned long )i;
  i = i + 1;
  ldv_35955: ;
  if (i <= 11) {
    goto ldv_35954;
  } else {
  }
  if (dev->nr > 1) {
    {
    printk("\016cx25821: (%d): dev->nr > 1!", dev->board);
    }
  } else {
  }
  {
  dev->board = 1U;
  dev->_max_num_decoders = 8U;
  dev->pci_bus = (int )((dev->pci)->bus)->number;
  dev->pci_slot = (int )((dev->pci)->devfn >> 3) & 31;
  dev->pci_irqmask = 7936;
  dev->i2c_bus[0].nr = 0;
  dev->i2c_bus[0].dev = dev;
  dev->i2c_bus[0].reg_stat = 1572880U;
  dev->i2c_bus[0].reg_ctrl = 1572872U;
  dev->i2c_bus[0].reg_addr = 1572864U;
  dev->i2c_bus[0].reg_rdata = 1572876U;
  dev->i2c_bus[0].reg_wdata = 1572868U;
  dev->i2c_bus[0].i2c_period = 117440512U;
  tmp = cx25821_get_resources(dev);
  }
  if (tmp < 0) {
    {
    printk("\vcx25821: %s: No more PCIe resources for subsystem: %04x:%04x\n", (char *)(& dev->name),
           (int )(dev->pci)->subsystem_vendor, (int )(dev->pci)->subsystem_device);
    cx25821_devcount = cx25821_devcount - 1U;
    }
    return (-16);
  } else {
  }
  dev->base_io_addr = (u32 )(dev->pci)->resource[0].start;
  if (dev->base_io_addr == 0U) {
    {
    printk("\vcx25821: (%d): No PCI Memory resources, exiting!\n", dev->board);
    }
    return (-19);
  } else {
  }
  {
  tmp___0 = ioremap((resource_size_t )dev->base_io_addr, (dev->pci)->resource[0].start != 0ULL || (dev->pci)->resource[0].end != (dev->pci)->resource[0].start ? (unsigned long )(((dev->pci)->resource[0].end - (dev->pci)->resource[0].start) + 1ULL) : 0UL);
  dev->lmmio = (u32 *)tmp___0;
  }
  if ((unsigned long )dev->lmmio == (unsigned long )((u32 *)0U)) {
    {
    printk("\vcx25821: (%d): ioremap failed, maybe increasing __VMALLOC_RESERVE in page.h\n",
           dev->board);
    cx25821_iounmap(dev);
    }
    return (-12);
  } else {
  }
  {
  dev->bmmio = (u8 *)dev->lmmio;
  printk("\016cx25821: %s: subsystem: %04x:%04x, board: %s [card=%d,%s]\n", (char *)(& dev->name),
         (int )(dev->pci)->subsystem_vendor, (int )(dev->pci)->subsystem_device, cx25821_boards[dev->board].name,
         dev->board, card[dev->nr] == dev->board ? (char *)"insmod option" : (char *)"autodetected");
  cx25821_initialize(dev);
  cx25821_i2c_register((struct cx25821_i2c *)(& dev->i2c_bus));
  tmp___1 = medusa_video_init(dev);
  }
  if (tmp___1 < 0) {
    {
    printk("\vcx25821: (%d): %s(): Failed to initialize medusa!\n", dev->board, "cx25821_dev_setup");
    }
  } else {
  }
  {
  cx25821_video_register(dev);
  cx25821_dev_checkrevision(dev);
  }
  return (0);
}
}
void cx25821_dev_unregister(struct cx25821_dev *dev )
{
  int i ;
  {
  if (dev->base_io_addr == 0U) {
    return;
  } else {
  }
  {
  __release_region(& iomem_resource, (resource_size_t )dev->base_io_addr, (dev->pci)->resource[0].start != 0ULL || (dev->pci)->resource[0].end != (dev->pci)->resource[0].start ? ((dev->pci)->resource[0].end - (dev->pci)->resource[0].start) + 1ULL : 0ULL);
  i = 0;
  }
  goto ldv_35963;
  ldv_35962: ;
  if (i == 8) {
    goto ldv_35961;
  } else {
  }
  if ((unsigned int )i - 9U <= 1U) {
    {
    cx25821_free_mem_upstream((struct cx25821_channel *)(& dev->channels) + (unsigned long )i);
    }
  } else {
  }
  {
  cx25821_video_unregister(dev, i);
  }
  ldv_35961:
  i = i + 1;
  ldv_35963: ;
  if (i <= 10) {
    goto ldv_35962;
  } else {
  }
  {
  cx25821_i2c_unregister((struct cx25821_i2c *)(& dev->i2c_bus));
  cx25821_iounmap(dev);
  }
  return;
}
}
static char const __kstrtab_cx25821_dev_unregister[23U] =
  { 'c', 'x', '2', '5',
        '8', '2', '1', '_',
        'd', 'e', 'v', '_',
        'u', 'n', 'r', 'e',
        'g', 'i', 's', 't',
        'e', 'r', '\000'};
struct kernel_symbol const __ksymtab_cx25821_dev_unregister ;
struct kernel_symbol const __ksymtab_cx25821_dev_unregister = {(unsigned long )(& cx25821_dev_unregister), (char const *)(& __kstrtab_cx25821_dev_unregister)};
static __le32 *cx25821_risc_field(__le32 *rp , struct scatterlist *sglist , unsigned int offset ,
                                  u32 sync_line , unsigned int bpl , unsigned int padding ,
                                  unsigned int lines )
{
  struct scatterlist *sg ;
  unsigned int line ;
  unsigned int todo ;
  __le32 *tmp ;
  __le32 *tmp___0 ;
  __le32 *tmp___1 ;
  __le32 *tmp___2 ;
  __le32 *tmp___3 ;
  __le32 *tmp___4 ;
  __le32 *tmp___5 ;
  __le32 *tmp___6 ;
  __le32 *tmp___7 ;
  __le32 *tmp___8 ;
  __le32 *tmp___9 ;
  __le32 *tmp___10 ;
  __le32 *tmp___11 ;
  {
  if (sync_line != 4294967295U) {
    tmp = rp;
    rp = rp + 1;
    *tmp = sync_line | 2147516416U;
  } else {
  }
  sg = sglist;
  line = 0U;
  goto ldv_35991;
  ldv_35990: ;
  goto ldv_35985;
  ldv_35984:
  offset = offset - sg->dma_length;
  sg = sg + 1;
  ldv_35985: ;
  if (offset != 0U && offset >= sg->dma_length) {
    goto ldv_35984;
  } else {
  }
  if (bpl <= sg->dma_length - offset) {
    tmp___0 = rp;
    rp = rp + 1;
    *tmp___0 = bpl | 469762048U;
    tmp___1 = rp;
    rp = rp + 1;
    *tmp___1 = (unsigned int )sg->dma_address + offset;
    tmp___2 = rp;
    rp = rp + 1;
    *tmp___2 = 0U;
    offset = offset + bpl;
  } else {
    todo = bpl;
    tmp___3 = rp;
    rp = rp + 1;
    *tmp___3 = (sg->dma_length - offset) | 402653184U;
    tmp___4 = rp;
    rp = rp + 1;
    *tmp___4 = (unsigned int )sg->dma_address + offset;
    tmp___5 = rp;
    rp = rp + 1;
    *tmp___5 = 0U;
    todo = todo + (offset - sg->dma_length);
    offset = 0U;
    sg = sg + 1;
    goto ldv_35988;
    ldv_35987:
    tmp___6 = rp;
    rp = rp + 1;
    *tmp___6 = sg->dma_length | 268435456U;
    tmp___7 = rp;
    rp = rp + 1;
    *tmp___7 = (unsigned int )sg->dma_address;
    tmp___8 = rp;
    rp = rp + 1;
    *tmp___8 = 0U;
    todo = todo - sg->dma_length;
    sg = sg + 1;
    ldv_35988: ;
    if (todo > sg->dma_length) {
      goto ldv_35987;
    } else {
    }
    tmp___9 = rp;
    rp = rp + 1;
    *tmp___9 = todo | 335544320U;
    tmp___10 = rp;
    rp = rp + 1;
    *tmp___10 = (unsigned int )sg->dma_address;
    tmp___11 = rp;
    rp = rp + 1;
    *tmp___11 = 0U;
    offset = offset + todo;
  }
  offset = offset + padding;
  line = line + 1U;
  ldv_35991: ;
  if (line < lines) {
    goto ldv_35990;
  } else {
  }
  return (rp);
}
}
int cx25821_risc_buffer(struct pci_dev *pci , struct btcx_riscmem *risc , struct scatterlist *sglist ,
                        unsigned int top_offset , unsigned int bottom_offset , unsigned int bpl ,
                        unsigned int padding , unsigned int lines )
{
  u32 instructions ;
  u32 fields ;
  __le32 *rp ;
  int rc ;
  long tmp ;
  {
  fields = 0U;
  if (top_offset != 4294967295U) {
    fields = fields + 1U;
  } else {
  }
  if (bottom_offset != 4294967295U) {
    fields = fields + 1U;
  } else {
  }
  {
  instructions = fields * (u32 )(((unsigned long )(((bpl + padding) * lines) / 4096U) + (unsigned long )lines) + 1UL);
  instructions = instructions + 2U;
  rc = btcx_riscmem_alloc(pci, risc, instructions * 12U);
  }
  if (rc < 0) {
    return (rc);
  } else {
  }
  rp = risc->cpu;
  if (top_offset != 4294967295U) {
    {
    rp = cx25821_risc_field(rp, sglist, top_offset, 0U, bpl, padding, lines);
    }
  } else {
  }
  if (bottom_offset != 4294967295U) {
    {
    rp = cx25821_risc_field(rp, sglist, bottom_offset, 512U, bpl, padding, lines);
    }
  } else {
  }
  {
  risc->jmp = rp;
  tmp = ldv__builtin_expect((unsigned long )((((long )risc->jmp - (long )risc->cpu) / 4L + 2L) * 4L) > (unsigned long )risc->size,
                         0L);
  }
  if (tmp != 0L) {
    {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"drivers/media/pci/cx25821/cx25821-core.c"),
                         "i" (1082), "i" (12UL));
    __builtin_unreachable();
    }
  } else {
  }
  return (0);
}
}
static __le32 *cx25821_risc_field_audio(__le32 *rp , struct scatterlist *sglist ,
                                        unsigned int offset , u32 sync_line , unsigned int bpl ,
                                        unsigned int padding , unsigned int lines ,
                                        unsigned int lpi )
{
  struct scatterlist *sg ;
  unsigned int line ;
  unsigned int todo ;
  unsigned int sol ;
  __le32 *tmp ;
  __le32 *tmp___0 ;
  __le32 *tmp___1 ;
  __le32 *tmp___2 ;
  __le32 *tmp___3 ;
  __le32 *tmp___4 ;
  __le32 *tmp___5 ;
  __le32 *tmp___6 ;
  __le32 *tmp___7 ;
  __le32 *tmp___8 ;
  __le32 *tmp___9 ;
  __le32 *tmp___10 ;
  __le32 *tmp___11 ;
  {
  if (sync_line != 4294967295U) {
    tmp = rp;
    rp = rp + 1;
    *tmp = sync_line | 2147516416U;
  } else {
  }
  sg = sglist;
  line = 0U;
  goto ldv_36028;
  ldv_36027: ;
  goto ldv_36022;
  ldv_36021:
  offset = offset - sg->dma_length;
  sg = sg + 1;
  ldv_36022: ;
  if (offset != 0U && offset >= sg->dma_length) {
    goto ldv_36021;
  } else {
  }
  if ((lpi != 0U && line != 0U) && line % lpi == 0U) {
    sol = 151060480U;
  } else {
    sol = 134217728U;
  }
  if (bpl <= sg->dma_length - offset) {
    tmp___0 = rp;
    rp = rp + 1;
    *tmp___0 = (sol | bpl) | 335544320U;
    tmp___1 = rp;
    rp = rp + 1;
    *tmp___1 = (unsigned int )sg->dma_address + offset;
    tmp___2 = rp;
    rp = rp + 1;
    *tmp___2 = 0U;
    offset = offset + bpl;
  } else {
    todo = bpl;
    tmp___3 = rp;
    rp = rp + 1;
    *tmp___3 = (sol | (sg->dma_length - offset)) | 268435456U;
    tmp___4 = rp;
    rp = rp + 1;
    *tmp___4 = (unsigned int )sg->dma_address + offset;
    tmp___5 = rp;
    rp = rp + 1;
    *tmp___5 = 0U;
    todo = todo + (offset - sg->dma_length);
    offset = 0U;
    sg = sg + 1;
    goto ldv_36025;
    ldv_36024:
    tmp___6 = rp;
    rp = rp + 1;
    *tmp___6 = sg->dma_length | 268435456U;
    tmp___7 = rp;
    rp = rp + 1;
    *tmp___7 = (unsigned int )sg->dma_address;
    tmp___8 = rp;
    rp = rp + 1;
    *tmp___8 = 0U;
    todo = todo - sg->dma_length;
    sg = sg + 1;
    ldv_36025: ;
    if (todo > sg->dma_length) {
      goto ldv_36024;
    } else {
    }
    tmp___9 = rp;
    rp = rp + 1;
    *tmp___9 = todo | 335544320U;
    tmp___10 = rp;
    rp = rp + 1;
    *tmp___10 = (unsigned int )sg->dma_address;
    tmp___11 = rp;
    rp = rp + 1;
    *tmp___11 = 0U;
    offset = offset + todo;
  }
  offset = offset + padding;
  line = line + 1U;
  ldv_36028: ;
  if (line < lines) {
    goto ldv_36027;
  } else {
  }
  return (rp);
}
}
int cx25821_risc_databuffer_audio(struct pci_dev *pci , struct btcx_riscmem *risc ,
                                  struct scatterlist *sglist , unsigned int bpl ,
                                  unsigned int lines , unsigned int lpi )
{
  u32 instructions ;
  __le32 *rp ;
  int rc ;
  long tmp ;
  {
  {
  instructions = ((bpl * lines) / 4096U + lines) + 1U;
  instructions = instructions + 1U;
  rc = btcx_riscmem_alloc(pci, risc, instructions * 12U);
  }
  if (rc < 0) {
    return (rc);
  } else {
  }
  {
  rp = risc->cpu;
  rp = cx25821_risc_field_audio(rp, sglist, 0U, 4294967295U, bpl, 0U, lines, lpi);
  risc->jmp = rp;
  tmp = ldv__builtin_expect((unsigned long )((((long )risc->jmp - (long )risc->cpu) / 4L + 2L) * 4L) > (unsigned long )risc->size,
                         0L);
  }
  if (tmp != 0L) {
    {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"drivers/media/pci/cx25821/cx25821-core.c"),
                         "i" (1177), "i" (12UL));
    __builtin_unreachable();
    }
  } else {
  }
  return (0);
}
}
static char const __kstrtab_cx25821_risc_databuffer_audio[30U] =
  { 'c', 'x', '2', '5',
        '8', '2', '1', '_',
        'r', 'i', 's', 'c',
        '_', 'd', 'a', 't',
        'a', 'b', 'u', 'f',
        'f', 'e', 'r', '_',
        'a', 'u', 'd', 'i',
        'o', '\000'};
struct kernel_symbol const __ksymtab_cx25821_risc_databuffer_audio ;
struct kernel_symbol const __ksymtab_cx25821_risc_databuffer_audio = {(unsigned long )(& cx25821_risc_databuffer_audio), (char const *)(& __kstrtab_cx25821_risc_databuffer_audio)};
int cx25821_risc_stopper(struct pci_dev *pci , struct btcx_riscmem *risc , u32 reg ,
                         u32 mask , u32 value )
{
  __le32 *rp ;
  int rc ;
  __le32 *tmp ;
  __le32 *tmp___0 ;
  __le32 *tmp___1 ;
  __le32 *tmp___2 ;
  __le32 *tmp___3 ;
  __le32 *tmp___4 ;
  __le32 *tmp___5 ;
  {
  {
  rc = btcx_riscmem_alloc(pci, risc, 64U);
  }
  if (rc < 0) {
    return (rc);
  } else {
  }
  rp = risc->cpu;
  tmp = rp;
  rp = rp + 1;
  *tmp = 3506438144U;
  tmp___0 = rp;
  rp = rp + 1;
  *tmp___0 = reg;
  tmp___1 = rp;
  rp = rp + 1;
  *tmp___1 = value;
  tmp___2 = rp;
  rp = rp + 1;
  *tmp___2 = mask;
  tmp___3 = rp;
  rp = rp + 1;
  *tmp___3 = 1879048192U;
  tmp___4 = rp;
  rp = rp + 1;
  *tmp___4 = (unsigned int )risc->dma;
  tmp___5 = rp;
  rp = rp + 1;
  *tmp___5 = 0U;
  return (0);
}
}
void cx25821_free_buffer(struct videobuf_queue *q , struct cx25821_buffer *buf )
{
  struct videobuf_dmabuf *dma ;
  struct videobuf_dmabuf *tmp ;
  int tmp___0 ;
  long tmp___1 ;
  struct device const *__mptr ;
  {
  {
  tmp = videobuf_to_dma(& buf->vb);
  dma = tmp;
  tmp___0 = preempt_count();
  tmp___1 = ldv__builtin_expect(((unsigned long )tmp___0 & 2096896UL) != 0UL, 0L);
  }
  if (tmp___1 != 0L) {
    {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"drivers/media/pci/cx25821/cx25821-core.c"),
                         "i" (1210), "i" (12UL));
    __builtin_unreachable();
    }
  } else {
  }
  {
  videobuf_waiton(q, & buf->vb, 0, 0);
  videobuf_dma_unmap(q->dev, dma);
  videobuf_dma_free(dma);
  __mptr = (struct device const *)q->dev;
  btcx_riscmem_free((struct pci_dev *)__mptr + 0xffffffffffffff68UL, & buf->risc);
  buf->vb.state = 0;
  }
  return;
}
}
static irqreturn_t cx25821_irq(int irq , void *dev_id )
{
  struct cx25821_dev *dev ;
  u32 pci_status ;
  u32 vid_status ;
  int i ;
  int handled ;
  u32 mask[8U] ;
  int tmp ;
  {
  {
  dev = (struct cx25821_dev *)dev_id;
  handled = 0;
  mask[0] = 1U;
  mask[1] = 2U;
  mask[2] = 4U;
  mask[3] = 8U;
  mask[4] = 16U;
  mask[5] = 32U;
  mask[6] = 64U;
  mask[7] = 128U;
  pci_status = readl((void const volatile *)dev->lmmio + 65541U);
  }
  if (pci_status == 0U) {
    goto out;
  } else {
  }
  i = 0;
  goto ldv_36081;
  ldv_36080: ;
  if ((pci_status & mask[i]) != 0U) {
    {
    vid_status = readl((void const volatile *)dev->lmmio + (unsigned long )((dev->channels[i].sram_channels)->int_stat >> 2));
    }
    if (vid_status != 0U) {
      {
      tmp = cx25821_video_irq(dev, i, vid_status);
      handled = handled + tmp;
      }
    } else {
    }
    {
    writel(mask[i], (void volatile *)dev->lmmio + 65541U);
    }
  } else {
  }
  i = i + 1;
  ldv_36081: ;
  if (i <= 7) {
    goto ldv_36080;
  } else {
  }
  out: ;
  return (handled != 0);
}
}
void cx25821_print_irqbits(char *name , char *tag , char **strings , int len , u32 bits ,
                           u32 mask )
{
  unsigned int i ;
  {
  {
  printk("\017cx25821: %s: %s [0x%x]", name, tag, bits);
  i = 0U;
  }
  goto ldv_36094;
  ldv_36093: ;
  if ((bits & (u32 )(1 << (int )i)) == 0U) {
    goto ldv_36092;
  } else {
  }
  if ((unsigned long )*(strings + (unsigned long )i) != (unsigned long )((char *)0)) {
    {
    printk(" %s", *(strings + (unsigned long )i));
    }
  } else {
    {
    printk(" %d", i);
    }
  }
  if ((mask & (u32 )(1 << (int )i)) == 0U) {
    goto ldv_36092;
  } else {
  }
  {
  printk("*");
  }
  ldv_36092:
  i = i + 1U;
  ldv_36094: ;
  if (i < (unsigned int )len) {
    goto ldv_36093;
  } else {
  }
  {
  printk("\n");
  }
  return;
}
}
static char const __kstrtab_cx25821_print_irqbits[22U] =
  { 'c', 'x', '2', '5',
        '8', '2', '1', '_',
        'p', 'r', 'i', 'n',
        't', '_', 'i', 'r',
        'q', 'b', 'i', 't',
        's', '\000'};
struct kernel_symbol const __ksymtab_cx25821_print_irqbits ;
struct kernel_symbol const __ksymtab_cx25821_print_irqbits = {(unsigned long )(& cx25821_print_irqbits), (char const *)(& __kstrtab_cx25821_print_irqbits)};
struct cx25821_dev *cx25821_dev_get(struct pci_dev *pci )
{
  struct cx25821_dev *dev ;
  void *tmp ;
  {
  {
  tmp = pci_get_drvdata(pci);
  dev = (struct cx25821_dev *)tmp;
  }
  return (dev);
}
}
static char const __kstrtab_cx25821_dev_get[16U] =
  { 'c', 'x', '2', '5',
        '8', '2', '1', '_',
        'd', 'e', 'v', '_',
        'g', 'e', 't', '\000'};
struct kernel_symbol const __ksymtab_cx25821_dev_get ;
struct kernel_symbol const __ksymtab_cx25821_dev_get = {(unsigned long )(& cx25821_dev_get), (char const *)(& __kstrtab_cx25821_dev_get)};
static int cx25821_initdev(struct pci_dev *pci_dev , struct pci_device_id const *pci_id )
{
  struct cx25821_dev *dev ;
  int err ;
  void *tmp ;
  int tmp___0 ;
  char const *tmp___1 ;
  int tmp___2 ;
  {
  {
  err = 0;
  tmp = kzalloc(47072UL, 208U);
  dev = (struct cx25821_dev *)tmp;
  }
  if ((unsigned long )dev == (unsigned long )((struct cx25821_dev *)0)) {
    return (-12);
  } else {
  }
  {
  err = v4l2_device_register(& pci_dev->dev, & dev->v4l2_dev);
  }
  if (err < 0) {
    goto fail_free;
  } else {
  }
  {
  dev->pci = pci_dev;
  tmp___0 = pci_enable_device(pci_dev);
  }
  if (tmp___0 != 0) {
    {
    err = -5;
    printk("\016cx25821: pci enable failed!\n");
    }
    goto fail_unregister_device;
  } else {
  }
  {
  err = cx25821_dev_setup(dev);
  }
  if (err != 0) {
    if (err == -16) {
      goto fail_unregister_device;
    } else {
      goto fail_unregister_pci;
    }
  } else {
  }
  {
  pci_read_config_byte((struct pci_dev const *)pci_dev, 8, & dev->pci_rev);
  pci_read_config_byte((struct pci_dev const *)pci_dev, 13, & dev->pci_lat);
  tmp___1 = pci_name((struct pci_dev const *)pci_dev);
  printk("\016cx25821: %s/0: found at %s, rev: %d, irq: %d, latency: %d, mmio: 0x%llx\n",
         (char *)(& dev->name), tmp___1, (int )dev->pci_rev, pci_dev->irq, (int )dev->pci_lat,
         (unsigned long long )dev->base_io_addr);
  pci_set_master(pci_dev);
  tmp___2 = pci_dma_supported(pci_dev, 4294967295ULL);
  }
  if (tmp___2 == 0) {
    {
    printk("\vcx25821: %s/0: Oops: no 32bit PCI DMA ???\n", (char *)(& dev->name));
    err = -5;
    }
    goto fail_irq;
  } else {
  }
  {
  err = ldv_request_irq_19(pci_dev->irq, & cx25821_irq, 128UL, (char const *)(& dev->name),
                           (void *)dev);
  }
  if (err < 0) {
    {
    printk("\vcx25821: %s: can\'t get IRQ %d\n", (char *)(& dev->name), pci_dev->irq);
    }
    goto fail_irq;
  } else {
  }
  return (0);
  fail_irq:
  {
  printk("\016cx25821: cx25821_initdev() can\'t get IRQ !\n");
  cx25821_dev_unregister(dev);
  }
  fail_unregister_pci:
  {
  pci_disable_device(pci_dev);
  }
  fail_unregister_device:
  {
  v4l2_device_unregister(& dev->v4l2_dev);
  }
  fail_free:
  {
  kfree((void const *)dev);
  }
  return (err);
}
}
static void cx25821_finidev(struct pci_dev *pci_dev )
{
  struct v4l2_device *v4l2_dev ;
  void *tmp ;
  struct cx25821_dev *dev ;
  struct cx25821_dev *tmp___0 ;
  {
  {
  tmp = pci_get_drvdata(pci_dev);
  v4l2_dev = (struct v4l2_device *)tmp;
  tmp___0 = get_cx25821(v4l2_dev);
  dev = tmp___0;
  cx25821_shutdown(dev);
  pci_disable_device(pci_dev);
  }
  if (pci_dev->irq != 0U) {
    {
    ldv_free_irq_20(pci_dev->irq, (void *)dev);
    }
  } else {
  }
  {
  cx25821_dev_unregister(dev);
  v4l2_device_unregister(v4l2_dev);
  kfree((void const *)dev);
  }
  return;
}
}
static struct pci_device_id const cx25821_pci_tbl[3U] = { {5361U, 33296U, 5361U, 2336U, 0U, 0U, 0UL},
        {5361U, 33296U, 0U, 0U, 0U, 0U, 0UL}};
struct pci_device_id const __mod_pci_device_table ;
static struct pci_driver cx25821_pci_driver =
     {{0, 0}, "cx25821", (struct pci_device_id const *)(& cx25821_pci_tbl), & cx25821_initdev,
    & cx25821_finidev, (int (*)(struct pci_dev * , pm_message_t ))0, 0, 0, (int (*)(struct pci_dev * ))0,
    0, 0, 0, {0, 0, 0, 0, (_Bool)0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, {{{{{{0U}}, 0U,
                                                                       0U, 0, {0,
                                                                               {0,
                                                                                0},
                                                                               0,
                                                                               0,
                                                                               0UL}}}},
                                                                    {0, 0}}};
static int cx25821_init(void)
{
  int tmp ;
  {
  {
  printk("\016cx25821: driver version %d.%d.%d loaded\n", 0, 0, 106);
  tmp = ldv___pci_register_driver_21(& cx25821_pci_driver, & __this_module, "cx25821");
  }
  return (tmp);
}
}
static void cx25821_fini(void)
{
  {
  {
  ldv_pci_unregister_driver_22(& cx25821_pci_driver);
  }
  return;
}
}
void ldv_EMGentry_exit_cx25821_fini_16_2(void (*arg0)(void) ) ;
int ldv_EMGentry_init_cx25821_init_16_15(int (*arg0)(void) ) ;
int ldv___pci_register_driver(int arg0 , struct pci_driver *arg1 , struct module *arg2 ,
                              char *arg3 ) ;
void ldv_allocate_external_0(void) ;
void ldv_dispatch_deregister_14_1(struct pci_driver *arg0 ) ;
void ldv_dispatch_deregister_dummy_resourceless_instance_10_16_4(void) ;
void ldv_dispatch_deregister_dummy_resourceless_instance_11_16_5(void) ;
void ldv_dispatch_deregister_file_operations_instance_5_16_6(void) ;
void ldv_dispatch_deregister_io_instance_13_16_7(void) ;
void ldv_dispatch_irq_deregister_10_1(int arg0 ) ;
void ldv_dispatch_irq_register_12_2(int arg0 , enum irqreturn (*arg1)(int , void * ) ,
                                    enum irqreturn (*arg2)(int , void * ) , void *arg3 ) ;
void ldv_dispatch_register_15_2(struct pci_driver *arg0 ) ;
void ldv_dispatch_register_dummy_resourceless_instance_10_16_8(void) ;
void ldv_dispatch_register_dummy_resourceless_instance_11_16_9(void) ;
void ldv_dispatch_register_file_operations_instance_5_16_10(void) ;
void ldv_dispatch_register_io_instance_13_16_11(void) ;
void ldv_dummy_resourceless_instance_callback_4_3(int (*arg0)(struct v4l2_ctrl * ) ,
                                                  struct v4l2_ctrl *arg1 ) ;
void ldv_dummy_resourceless_instance_callback_5_3(int (*arg0)(struct videobuf_queue * ,
                                                              struct videobuf_buffer * ,
                                                              enum v4l2_field ) ,
                                                  struct videobuf_queue *arg1 , struct videobuf_buffer *arg2 ,
                                                  enum v4l2_field arg3 ) ;
void ldv_dummy_resourceless_instance_callback_5_7(void (*arg0)(struct videobuf_queue * ,
                                                               struct videobuf_buffer * ) ,
                                                  struct videobuf_queue *arg1 , struct videobuf_buffer *arg2 ) ;
void ldv_dummy_resourceless_instance_callback_5_8(void (*arg0)(struct videobuf_queue * ,
                                                               struct videobuf_buffer * ) ,
                                                  struct videobuf_queue *arg1 , struct videobuf_buffer *arg2 ) ;
void ldv_dummy_resourceless_instance_callback_5_9(int (*arg0)(struct videobuf_queue * ,
                                                              unsigned int * , unsigned int * ) ,
                                                  struct videobuf_queue *arg1 , unsigned int *arg2 ,
                                                  unsigned int *arg3 ) ;
void ldv_entry_EMGentry_16(void *arg0 ) ;
int main(void) ;
void ldv_file_operations_file_operations_instance_0(void *arg0 ) ;
int ldv_file_operations_instance_probe_0_12(int (*arg0)(struct inode * , struct file * ) ,
                                            struct inode *arg1 , struct file *arg2 ) ;
void ldv_file_operations_instance_write_0_4(long (*arg0)(struct file * , char * ,
                                                         unsigned long , long long * ) ,
                                            struct file *arg1 , char *arg2 , unsigned long arg3 ,
                                            long long *arg4 ) ;
void ldv_free_irq(void *arg0 , int arg1 , void *arg2 ) ;
void ldv_initialize_external_data(void) ;
enum irqreturn ldv_interrupt_instance_handler_1_5(enum irqreturn (*arg0)(int , void * ) ,
                                                  int arg1 , void *arg2 ) ;
void ldv_interrupt_instance_thread_1_3(enum irqreturn (*arg0)(int , void * ) , int arg1 ,
                                       void *arg2 ) ;
void ldv_interrupt_instance_thread_2_3(enum irqreturn (*arg0)(int , void * ) , int arg1 ,
                                       void *arg2 ) ;
void ldv_interrupt_interrupt_instance_1(void *arg0 ) ;
void ldv_interrupt_interrupt_instance_2(void *arg0 ) ;
void ldv_io_instance_callback_7_67(long (*arg0)(struct file * , char * , unsigned long ,
                                                long long * ) , struct file *arg1 ,
                                   char *arg2 , unsigned long arg3 , long long *arg4 ) ;
void ldv_io_instance_callback_8_21(int (*arg0)(struct file * , struct vm_area_struct * ) ,
                                   struct file *arg1 , struct vm_area_struct *arg2 ) ;
void ldv_io_instance_callback_8_22(unsigned int (*arg0)(struct file * , struct poll_table_struct * ) ,
                                   struct file *arg1 , struct poll_table_struct *arg2 ) ;
void ldv_io_instance_callback_8_23(long (*arg0)(struct file * , char * , unsigned long ,
                                                long long * ) , struct file *arg1 ,
                                   char *arg2 , unsigned long arg3 , long long *arg4 ) ;
int ldv_pci_instance_probe_3_17(int (*arg0)(struct pci_dev * , struct pci_device_id * ) ,
                                struct pci_dev *arg1 , struct pci_device_id *arg2 ) ;
void ldv_pci_instance_release_3_2(void (*arg0)(struct pci_dev * ) , struct pci_dev *arg1 ) ;
void ldv_pci_instance_resume_3_5(int (*arg0)(struct pci_dev * ) , struct pci_dev *arg1 ) ;
void ldv_pci_instance_resume_early_3_6(int (*arg0)(struct pci_dev * ) , struct pci_dev *arg1 ) ;
void ldv_pci_instance_shutdown_3_3(void (*arg0)(struct pci_dev * ) , struct pci_dev *arg1 ) ;
int ldv_pci_instance_suspend_3_8(int (*arg0)(struct pci_dev * , struct pm_message ) ,
                                 struct pci_dev *arg1 , struct pm_message arg2 ) ;
int ldv_pci_instance_suspend_late_3_7(int (*arg0)(struct pci_dev * , struct pm_message ) ,
                                      struct pci_dev *arg1 , struct pm_message arg2 ) ;
void ldv_pci_pci_instance_3(void *arg0 ) ;
void ldv_pci_unregister_driver(void *arg0 , struct pci_driver *arg1 ) ;
int ldv_request_irq(int arg0 , unsigned int arg1 , enum irqreturn (*arg2)(int , void * ) ,
                    unsigned long arg3 , char *arg4 , void *arg5 ) ;
void ldv_struct_v4l2_ctrl_ops_dummy_resourceless_instance_4(void *arg0 ) ;
void ldv_struct_videobuf_queue_ops_dummy_resourceless_instance_5(void *arg0 ) ;
int ldv_switch_0(void) ;
int ldv_switch_1(void) ;
int ldv_switch_2(void) ;
int ldv_switch_3(void) ;
void ldv_switch_automaton_state_0_15(void) ;
void ldv_switch_automaton_state_0_6(void) ;
void ldv_switch_automaton_state_1_1(void) ;
void ldv_switch_automaton_state_1_6(void) ;
void ldv_switch_automaton_state_2_1(void) ;
void ldv_switch_automaton_state_2_6(void) ;
void ldv_switch_automaton_state_3_11(void) ;
void ldv_switch_automaton_state_3_20(void) ;
void ldv_switch_automaton_state_4_1(void) ;
void ldv_switch_automaton_state_4_5(void) ;
void ldv_switch_automaton_state_5_1(void) ;
void ldv_switch_automaton_state_5_5(void) ;
void ldv_switch_automaton_state_6_1(void) ;
void ldv_switch_automaton_state_6_3(void) ;
void ldv_switch_automaton_state_7_14(void) ;
void ldv_switch_automaton_state_7_5(void) ;
void ldv_switch_automaton_state_8_14(void) ;
void ldv_switch_automaton_state_8_5(void) ;
void ldv_timer_instance_callback_6_2(void (*arg0)(unsigned long ) , unsigned long arg1 ) ;
void ldv_timer_timer_instance_6(void *arg0 ) ;
void ldv_v4l2_file_operations_io_instance_7(void *arg0 ) ;
void ldv_v4l2_file_operations_io_instance_8(void *arg0 ) ;
struct file_operations *ldv_0_container_file_operations ;
char *ldv_0_ldv_param_4_1_default ;
long long *ldv_0_ldv_param_4_3_default ;
struct file *ldv_0_resource_file ;
struct inode *ldv_0_resource_inode ;
int ldv_0_ret_default ;
unsigned long ldv_0_size_cnt_write_size ;
void (*ldv_16_exit_cx25821_fini_default)(void) ;
int (*ldv_16_init_cx25821_init_default)(void) ;
int ldv_16_ret_default ;
enum irqreturn (*ldv_1_callback_handler)(int , void * ) ;
void *ldv_1_data_data ;
int ldv_1_line_line ;
enum irqreturn ldv_1_ret_val_default ;
enum irqreturn (*ldv_1_thread_thread)(int , void * ) ;
enum irqreturn (*ldv_2_callback_handler)(int , void * ) ;
void *ldv_2_data_data ;
int ldv_2_line_line ;
enum irqreturn ldv_2_ret_val_default ;
enum irqreturn (*ldv_2_thread_thread)(int , void * ) ;
struct pci_driver *ldv_3_container_pci_driver ;
struct pci_dev *ldv_3_resource_dev ;
struct pm_message ldv_3_resource_pm_message ;
struct pci_device_id *ldv_3_resource_struct_pci_device_id_ptr ;
int ldv_3_ret_default ;
int (*ldv_4_callback_s_ctrl)(struct v4l2_ctrl * ) ;
struct v4l2_ctrl *ldv_4_container_struct_v4l2_ctrl_ptr ;
int (*ldv_5_callback_buf_prepare)(struct videobuf_queue * , struct videobuf_buffer * ,
                                  enum v4l2_field ) ;
void (*ldv_5_callback_buf_queue)(struct videobuf_queue * , struct videobuf_buffer * ) ;
void (*ldv_5_callback_buf_release)(struct videobuf_queue * , struct videobuf_buffer * ) ;
int (*ldv_5_callback_buf_setup)(struct videobuf_queue * , unsigned int * , unsigned int * ) ;
enum v4l2_field ldv_5_container_enum_v4l2_field ;
struct videobuf_buffer *ldv_5_container_struct_videobuf_buffer_ptr ;
struct videobuf_queue *ldv_5_container_struct_videobuf_queue_ptr ;
unsigned int *ldv_5_ldv_param_9_1_default ;
unsigned int *ldv_5_ldv_param_9_2_default ;
struct timer_list *ldv_6_container_timer_list ;
long (*ldv_7_callback_write)(struct file * , char * , unsigned long , long long * ) ;
int ldv_7_ldv_param_18_2_default ;
char *ldv_7_ldv_param_23_1_default ;
unsigned long ldv_7_ldv_param_23_2_default ;
long long *ldv_7_ldv_param_23_3_default ;
unsigned int ldv_7_ldv_param_26_1_default ;
unsigned long ldv_7_ldv_param_26_2_default ;
unsigned int *ldv_7_ldv_param_36_2_default ;
unsigned int *ldv_7_ldv_param_39_2_default ;
unsigned long long *ldv_7_ldv_param_42_2_default ;
unsigned int ldv_7_ldv_param_52_2_default ;
unsigned int ldv_7_ldv_param_55_2_default ;
unsigned long long ldv_7_ldv_param_58_2_default ;
char *ldv_7_ldv_param_67_1_default ;
unsigned long ldv_7_ldv_param_67_2_default ;
long long *ldv_7_ldv_param_67_3_default ;
enum v4l2_buf_type ldv_7_resource_enum_v4l2_buf_type ;
struct file *ldv_7_resource_file ;
struct i2c_msg *ldv_7_resource_struct_i2c_msg_ptr ;
struct poll_table_struct *ldv_7_resource_struct_poll_table_struct_ptr ;
struct v4l2_buffer *ldv_7_resource_struct_v4l2_buffer_ptr ;
struct v4l2_capability *ldv_7_resource_struct_v4l2_capability_ptr ;
struct v4l2_event_subscription *ldv_7_resource_struct_v4l2_event_subscription_ptr ;
struct v4l2_fh *ldv_7_resource_struct_v4l2_fh_ptr ;
struct v4l2_fmtdesc *ldv_7_resource_struct_v4l2_fmtdesc_ptr ;
struct v4l2_format *ldv_7_resource_struct_v4l2_format_ptr ;
struct v4l2_input *ldv_7_resource_struct_v4l2_input_ptr ;
struct v4l2_output *ldv_7_resource_struct_v4l2_output_ptr ;
struct v4l2_requestbuffers *ldv_7_resource_struct_v4l2_requestbuffers_ptr ;
struct vm_area_struct *ldv_7_resource_struct_vm_area_struct_ptr ;
int ldv_7_ret_default ;
int (*ldv_8_callback_mmap)(struct file * , struct vm_area_struct * ) ;
unsigned int (*ldv_8_callback_poll)(struct file * , struct poll_table_struct * ) ;
long (*ldv_8_callback_read)(struct file * , char * , unsigned long , long long * ) ;
int ldv_8_ldv_param_18_2_default ;
char *ldv_8_ldv_param_23_1_default ;
unsigned long ldv_8_ldv_param_23_2_default ;
long long *ldv_8_ldv_param_23_3_default ;
unsigned int ldv_8_ldv_param_26_1_default ;
unsigned long ldv_8_ldv_param_26_2_default ;
unsigned int *ldv_8_ldv_param_36_2_default ;
unsigned int *ldv_8_ldv_param_39_2_default ;
unsigned long long *ldv_8_ldv_param_42_2_default ;
unsigned int ldv_8_ldv_param_52_2_default ;
unsigned int ldv_8_ldv_param_55_2_default ;
unsigned long long ldv_8_ldv_param_58_2_default ;
char *ldv_8_ldv_param_67_1_default ;
unsigned long ldv_8_ldv_param_67_2_default ;
long long *ldv_8_ldv_param_67_3_default ;
enum v4l2_buf_type ldv_8_resource_enum_v4l2_buf_type ;
struct file *ldv_8_resource_file ;
struct i2c_msg *ldv_8_resource_struct_i2c_msg_ptr ;
struct poll_table_struct *ldv_8_resource_struct_poll_table_struct_ptr ;
struct v4l2_buffer *ldv_8_resource_struct_v4l2_buffer_ptr ;
struct v4l2_capability *ldv_8_resource_struct_v4l2_capability_ptr ;
struct v4l2_event_subscription *ldv_8_resource_struct_v4l2_event_subscription_ptr ;
struct v4l2_fh *ldv_8_resource_struct_v4l2_fh_ptr ;
struct v4l2_fmtdesc *ldv_8_resource_struct_v4l2_fmtdesc_ptr ;
struct v4l2_format *ldv_8_resource_struct_v4l2_format_ptr ;
struct v4l2_input *ldv_8_resource_struct_v4l2_input_ptr ;
struct v4l2_output *ldv_8_resource_struct_v4l2_output_ptr ;
struct v4l2_requestbuffers *ldv_8_resource_struct_v4l2_requestbuffers_ptr ;
struct vm_area_struct *ldv_8_resource_struct_vm_area_struct_ptr ;
int ldv_8_ret_default ;
int ldv_statevar_0 ;
int ldv_statevar_1 ;
int ldv_statevar_16 ;
int ldv_statevar_2 ;
int ldv_statevar_3 ;
int ldv_statevar_4 ;
int ldv_statevar_5 ;
int ldv_statevar_6 ;
int ldv_statevar_7 ;
int ldv_statevar_8 ;
void (*ldv_16_exit_cx25821_fini_default)(void) = & cx25821_fini;
int (*ldv_16_init_cx25821_init_default)(void) = & cx25821_init;
enum irqreturn (*ldv_1_callback_handler)(int , void * ) = & cx25821_irq;
void ldv_EMGentry_exit_cx25821_fini_16_2(void (*arg0)(void) )
{
  {
  {
  cx25821_fini();
  }
  return;
}
}
int ldv_EMGentry_init_cx25821_init_16_15(int (*arg0)(void) )
{
  int tmp ;
  {
  {
  tmp = cx25821_init();
  }
  return (tmp);
}
}
int ldv___pci_register_driver(int arg0 , struct pci_driver *arg1 , struct module *arg2 ,
                              char *arg3 )
{
  struct pci_driver *ldv_15_pci_driver_pci_driver ;
  int tmp ;
  {
  {
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    {
    ldv_assume(arg0 == 0);
    ldv_15_pci_driver_pci_driver = arg1;
    ldv_assume(ldv_statevar_3 == 20);
    ldv_dispatch_register_15_2(ldv_15_pci_driver_pci_driver);
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
  {
  {
  tmp = external_allocated_data();
  ldv_0_container_file_operations = (struct file_operations *)tmp;
  tmp___0 = external_allocated_data();
  ldv_0_ldv_param_4_1_default = (char *)tmp___0;
  tmp___1 = external_allocated_data();
  ldv_0_ldv_param_4_3_default = (long long *)tmp___1;
  tmp___2 = external_allocated_data();
  ldv_0_resource_file = (struct file *)tmp___2;
  tmp___3 = external_allocated_data();
  ldv_0_resource_inode = (struct inode *)tmp___3;
  ldv_1_data_data = external_allocated_data();
  tmp___4 = external_allocated_data();
  ldv_1_thread_thread = (enum irqreturn (*)(int , void * ))tmp___4;
  ldv_2_data_data = external_allocated_data();
  tmp___5 = external_allocated_data();
  ldv_2_thread_thread = (enum irqreturn (*)(int , void * ))tmp___5;
  tmp___6 = external_allocated_data();
  ldv_3_resource_dev = (struct pci_dev *)tmp___6;
  tmp___7 = external_allocated_data();
  ldv_4_container_struct_v4l2_ctrl_ptr = (struct v4l2_ctrl *)tmp___7;
  tmp___8 = external_allocated_data();
  ldv_5_container_struct_videobuf_buffer_ptr = (struct videobuf_buffer *)tmp___8;
  tmp___9 = external_allocated_data();
  ldv_5_container_struct_videobuf_queue_ptr = (struct videobuf_queue *)tmp___9;
  tmp___10 = external_allocated_data();
  ldv_5_ldv_param_9_1_default = (unsigned int *)tmp___10;
  tmp___11 = external_allocated_data();
  ldv_5_ldv_param_9_2_default = (unsigned int *)tmp___11;
  tmp___12 = external_allocated_data();
  ldv_6_container_timer_list = (struct timer_list *)tmp___12;
  tmp___13 = external_allocated_data();
  ldv_7_callback_write = (long (*)(struct file * , char * , unsigned long , long long * ))tmp___13;
  tmp___14 = external_allocated_data();
  ldv_7_ldv_param_23_1_default = (char *)tmp___14;
  tmp___15 = external_allocated_data();
  ldv_7_ldv_param_23_3_default = (long long *)tmp___15;
  tmp___16 = external_allocated_data();
  ldv_7_ldv_param_36_2_default = (unsigned int *)tmp___16;
  tmp___17 = external_allocated_data();
  ldv_7_ldv_param_39_2_default = (unsigned int *)tmp___17;
  tmp___18 = external_allocated_data();
  ldv_7_ldv_param_42_2_default = (unsigned long long *)tmp___18;
  tmp___19 = external_allocated_data();
  ldv_7_ldv_param_67_1_default = (char *)tmp___19;
  tmp___20 = external_allocated_data();
  ldv_7_ldv_param_67_3_default = (long long *)tmp___20;
  tmp___21 = external_allocated_data();
  ldv_7_resource_file = (struct file *)tmp___21;
  tmp___22 = external_allocated_data();
  ldv_7_resource_struct_i2c_msg_ptr = (struct i2c_msg *)tmp___22;
  tmp___23 = external_allocated_data();
  ldv_7_resource_struct_poll_table_struct_ptr = (struct poll_table_struct *)tmp___23;
  tmp___24 = external_allocated_data();
  ldv_7_resource_struct_v4l2_buffer_ptr = (struct v4l2_buffer *)tmp___24;
  tmp___25 = external_allocated_data();
  ldv_7_resource_struct_v4l2_capability_ptr = (struct v4l2_capability *)tmp___25;
  tmp___26 = external_allocated_data();
  ldv_7_resource_struct_v4l2_event_subscription_ptr = (struct v4l2_event_subscription *)tmp___26;
  tmp___27 = external_allocated_data();
  ldv_7_resource_struct_v4l2_fh_ptr = (struct v4l2_fh *)tmp___27;
  tmp___28 = external_allocated_data();
  ldv_7_resource_struct_v4l2_fmtdesc_ptr = (struct v4l2_fmtdesc *)tmp___28;
  tmp___29 = external_allocated_data();
  ldv_7_resource_struct_v4l2_format_ptr = (struct v4l2_format *)tmp___29;
  tmp___30 = external_allocated_data();
  ldv_7_resource_struct_v4l2_input_ptr = (struct v4l2_input *)tmp___30;
  tmp___31 = external_allocated_data();
  ldv_7_resource_struct_v4l2_output_ptr = (struct v4l2_output *)tmp___31;
  tmp___32 = external_allocated_data();
  ldv_7_resource_struct_v4l2_requestbuffers_ptr = (struct v4l2_requestbuffers *)tmp___32;
  tmp___33 = external_allocated_data();
  ldv_7_resource_struct_vm_area_struct_ptr = (struct vm_area_struct *)tmp___33;
  tmp___34 = external_allocated_data();
  ldv_8_callback_mmap = (int (*)(struct file * , struct vm_area_struct * ))tmp___34;
  tmp___35 = external_allocated_data();
  ldv_8_callback_poll = (unsigned int (*)(struct file * , struct poll_table_struct * ))tmp___35;
  tmp___36 = external_allocated_data();
  ldv_8_callback_read = (long (*)(struct file * , char * , unsigned long , long long * ))tmp___36;
  tmp___37 = external_allocated_data();
  ldv_8_ldv_param_23_1_default = (char *)tmp___37;
  tmp___38 = external_allocated_data();
  ldv_8_ldv_param_23_3_default = (long long *)tmp___38;
  tmp___39 = external_allocated_data();
  ldv_8_ldv_param_36_2_default = (unsigned int *)tmp___39;
  tmp___40 = external_allocated_data();
  ldv_8_ldv_param_39_2_default = (unsigned int *)tmp___40;
  tmp___41 = external_allocated_data();
  ldv_8_ldv_param_42_2_default = (unsigned long long *)tmp___41;
  tmp___42 = external_allocated_data();
  ldv_8_ldv_param_67_1_default = (char *)tmp___42;
  tmp___43 = external_allocated_data();
  ldv_8_ldv_param_67_3_default = (long long *)tmp___43;
  tmp___44 = external_allocated_data();
  ldv_8_resource_file = (struct file *)tmp___44;
  tmp___45 = external_allocated_data();
  ldv_8_resource_struct_i2c_msg_ptr = (struct i2c_msg *)tmp___45;
  tmp___46 = external_allocated_data();
  ldv_8_resource_struct_poll_table_struct_ptr = (struct poll_table_struct *)tmp___46;
  tmp___47 = external_allocated_data();
  ldv_8_resource_struct_v4l2_buffer_ptr = (struct v4l2_buffer *)tmp___47;
  tmp___48 = external_allocated_data();
  ldv_8_resource_struct_v4l2_capability_ptr = (struct v4l2_capability *)tmp___48;
  tmp___49 = external_allocated_data();
  ldv_8_resource_struct_v4l2_event_subscription_ptr = (struct v4l2_event_subscription *)tmp___49;
  tmp___50 = external_allocated_data();
  ldv_8_resource_struct_v4l2_fh_ptr = (struct v4l2_fh *)tmp___50;
  tmp___51 = external_allocated_data();
  ldv_8_resource_struct_v4l2_fmtdesc_ptr = (struct v4l2_fmtdesc *)tmp___51;
  tmp___52 = external_allocated_data();
  ldv_8_resource_struct_v4l2_format_ptr = (struct v4l2_format *)tmp___52;
  tmp___53 = external_allocated_data();
  ldv_8_resource_struct_v4l2_input_ptr = (struct v4l2_input *)tmp___53;
  tmp___54 = external_allocated_data();
  ldv_8_resource_struct_v4l2_output_ptr = (struct v4l2_output *)tmp___54;
  tmp___55 = external_allocated_data();
  ldv_8_resource_struct_v4l2_requestbuffers_ptr = (struct v4l2_requestbuffers *)tmp___55;
  tmp___56 = external_allocated_data();
  ldv_8_resource_struct_vm_area_struct_ptr = (struct vm_area_struct *)tmp___56;
  }
  return;
}
}
void ldv_dispatch_deregister_14_1(struct pci_driver *arg0 )
{
  {
  {
  ldv_3_container_pci_driver = arg0;
  ldv_switch_automaton_state_3_11();
  }
  return;
}
}
void ldv_dispatch_deregister_dummy_resourceless_instance_10_16_4(void)
{
  {
  {
  ldv_switch_automaton_state_4_1();
  }
  return;
}
}
void ldv_dispatch_deregister_dummy_resourceless_instance_11_16_5(void)
{
  {
  {
  ldv_switch_automaton_state_5_1();
  }
  return;
}
}
void ldv_dispatch_deregister_file_operations_instance_5_16_6(void)
{
  {
  {
  ldv_switch_automaton_state_0_6();
  }
  return;
}
}
void ldv_dispatch_deregister_io_instance_13_16_7(void)
{
  {
  {
  ldv_switch_automaton_state_8_5();
  ldv_switch_automaton_state_7_5();
  }
  return;
}
}
void ldv_dispatch_irq_deregister_10_1(int arg0 )
{
  int tmp ;
  {
  {
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    {
    ldv_1_line_line = arg0;
    ldv_switch_automaton_state_1_1();
    }
  } else {
    {
    ldv_2_line_line = arg0;
    ldv_switch_automaton_state_2_1();
    }
  }
  return;
}
}
void ldv_dispatch_irq_register_12_2(int arg0 , enum irqreturn (*arg1)(int , void * ) ,
                                    enum irqreturn (*arg2)(int , void * ) , void *arg3 )
{
  int tmp ;
  {
  {
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    {
    ldv_1_line_line = arg0;
    ldv_1_callback_handler = arg1;
    ldv_1_thread_thread = arg2;
    ldv_1_data_data = arg3;
    ldv_switch_automaton_state_1_6();
    }
  } else {
    {
    ldv_2_line_line = arg0;
    ldv_2_callback_handler = arg1;
    ldv_2_thread_thread = arg2;
    ldv_2_data_data = arg3;
    ldv_switch_automaton_state_2_6();
    }
  }
  return;
}
}
void ldv_dispatch_register_15_2(struct pci_driver *arg0 )
{
  {
  {
  ldv_3_container_pci_driver = arg0;
  ldv_switch_automaton_state_3_20();
  }
  return;
}
}
void ldv_dispatch_register_dummy_resourceless_instance_10_16_8(void)
{
  {
  {
  ldv_switch_automaton_state_4_5();
  }
  return;
}
}
void ldv_dispatch_register_dummy_resourceless_instance_11_16_9(void)
{
  {
  {
  ldv_switch_automaton_state_5_5();
  }
  return;
}
}
void ldv_dispatch_register_file_operations_instance_5_16_10(void)
{
  {
  {
  ldv_switch_automaton_state_0_15();
  }
  return;
}
}
void ldv_dispatch_register_io_instance_13_16_11(void)
{
  {
  {
  ldv_switch_automaton_state_8_14();
  ldv_switch_automaton_state_7_14();
  }
  return;
}
}
void ldv_entry_EMGentry_16(void *arg0 )
{
  int tmp ;
  int tmp___0 ;
  {
  {
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
  if (ldv_statevar_16 == 6) {
    goto case_6;
  } else {
  }
  if (ldv_statevar_16 == 7) {
    goto case_7;
  } else {
  }
  if (ldv_statevar_16 == 8) {
    goto case_8;
  } else {
  }
  if (ldv_statevar_16 == 9) {
    goto case_9;
  } else {
  }
  if (ldv_statevar_16 == 10) {
    goto case_10;
  } else {
  }
  if (ldv_statevar_16 == 11) {
    goto case_11;
  } else {
  }
  if (ldv_statevar_16 == 12) {
    goto case_12;
  } else {
  }
  if (ldv_statevar_16 == 14) {
    goto case_14;
  } else {
  }
  if (ldv_statevar_16 == 15) {
    goto case_15;
  } else {
  }
  goto switch_default;
  case_2:
  {
  ldv_assume(ldv_statevar_3 == 12);
  ldv_EMGentry_exit_cx25821_fini_16_2(ldv_16_exit_cx25821_fini_default);
  ldv_check_final_state();
  ldv_stop();
  ldv_statevar_16 = 15;
  }
  goto ldv_36902;
  case_3:
  {
  ldv_assume(ldv_statevar_3 == 12);
  ldv_EMGentry_exit_cx25821_fini_16_2(ldv_16_exit_cx25821_fini_default);
  ldv_check_final_state();
  ldv_stop();
  ldv_statevar_16 = 15;
  }
  goto ldv_36902;
  case_4:
  {
  ldv_assume(ldv_statevar_4 == 1);
  ldv_dispatch_deregister_dummy_resourceless_instance_10_16_4();
  ldv_statevar_16 = 2;
  }
  goto ldv_36902;
  case_5:
  {
  ldv_assume(ldv_statevar_5 == 1);
  ldv_dispatch_deregister_dummy_resourceless_instance_11_16_5();
  ldv_statevar_16 = 4;
  }
  goto ldv_36902;
  case_6:
  {
  ldv_assume(ldv_statevar_0 == 7);
  ldv_dispatch_deregister_file_operations_instance_5_16_6();
  ldv_statevar_16 = 5;
  }
  goto ldv_36902;
  case_7:
  {
  ldv_assume(ldv_statevar_7 == 6 || ldv_statevar_8 == 6);
  ldv_dispatch_deregister_io_instance_13_16_7();
  ldv_statevar_16 = 6;
  }
  goto ldv_36902;
  case_8:
  {
  ldv_assume(ldv_statevar_4 == 5);
  ldv_dispatch_register_dummy_resourceless_instance_10_16_8();
  ldv_statevar_16 = 7;
  }
  goto ldv_36902;
  case_9:
  {
  ldv_assume(ldv_statevar_5 == 5);
  ldv_dispatch_register_dummy_resourceless_instance_11_16_9();
  ldv_statevar_16 = 8;
  }
  goto ldv_36902;
  case_10:
  {
  ldv_assume(ldv_statevar_0 == 15);
  ldv_dispatch_register_file_operations_instance_5_16_10();
  ldv_statevar_16 = 9;
  }
  goto ldv_36902;
  case_11:
  {
  ldv_assume(ldv_statevar_7 == 14 || ldv_statevar_8 == 14);
  ldv_dispatch_register_io_instance_13_16_11();
  ldv_statevar_16 = 10;
  }
  goto ldv_36902;
  case_12:
  {
  ldv_assume(ldv_16_ret_default == 0);
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    ldv_statevar_16 = 3;
  } else {
    ldv_statevar_16 = 11;
  }
  goto ldv_36902;
  case_14:
  {
  ldv_assume(ldv_16_ret_default != 0);
  ldv_check_final_state();
  ldv_stop();
  ldv_statevar_16 = 15;
  }
  goto ldv_36902;
  case_15:
  {
  ldv_assume(ldv_statevar_3 == 20);
  ldv_16_ret_default = ldv_EMGentry_init_cx25821_init_16_15(ldv_16_init_cx25821_init_default);
  ldv_16_ret_default = ldv_post_init(ldv_16_ret_default);
  tmp___0 = ldv_undef_int();
  }
  if (tmp___0 != 0) {
    ldv_statevar_16 = 12;
  } else {
    ldv_statevar_16 = 14;
  }
  goto ldv_36902;
  switch_default: ;
  switch_break: ;
  }
  ldv_36902: ;
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
  ldv_statevar_16 = 15;
  ldv_0_ret_default = 1;
  ldv_statevar_0 = 15;
  ldv_statevar_1 = 6;
  ldv_statevar_2 = 6;
  ldv_3_ret_default = 1;
  ldv_statevar_3 = 20;
  ldv_statevar_4 = 5;
  ldv_statevar_5 = 5;
  ldv_statevar_6 = 3;
  ldv_7_ret_default = 1;
  ldv_statevar_7 = 14;
  ldv_8_ret_default = 1;
  ldv_statevar_8 = 14;
  }
  ldv_36930:
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
  ldv_entry_EMGentry_16((void *)0);
  }
  goto ldv_36919;
  case_1:
  {
  ldv_file_operations_file_operations_instance_0((void *)0);
  }
  goto ldv_36919;
  case_2:
  {
  ldv_interrupt_interrupt_instance_1((void *)0);
  }
  goto ldv_36919;
  case_3:
  {
  ldv_interrupt_interrupt_instance_2((void *)0);
  }
  goto ldv_36919;
  case_4:
  {
  ldv_pci_pci_instance_3((void *)0);
  }
  goto ldv_36919;
  case_5:
  {
  ldv_struct_v4l2_ctrl_ops_dummy_resourceless_instance_4((void *)0);
  }
  goto ldv_36919;
  case_6:
  {
  ldv_struct_videobuf_queue_ops_dummy_resourceless_instance_5((void *)0);
  }
  goto ldv_36919;
  case_7:
  {
  ldv_timer_timer_instance_6((void *)0);
  }
  goto ldv_36919;
  case_8:
  {
  ldv_v4l2_file_operations_io_instance_7((void *)0);
  }
  goto ldv_36919;
  case_9:
  {
  ldv_v4l2_file_operations_io_instance_8((void *)0);
  }
  goto ldv_36919;
  switch_default:
  {
  ldv_stop();
  }
  switch_break: ;
  }
  ldv_36919: ;
  goto ldv_36930;
}
}
void ldv_file_operations_file_operations_instance_0(void *arg0 )
{
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  void *tmp___2 ;
  void *tmp___3 ;
  int tmp___4 ;
  int tmp___5 ;
  void *tmp___6 ;
  void *tmp___7 ;
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
  if (ldv_statevar_0 == 5) {
    goto case_5;
  } else {
  }
  if (ldv_statevar_0 == 7) {
    goto case_7;
  } else {
  }
  if (ldv_statevar_0 == 9) {
    goto case_9;
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
  if (ldv_statevar_0 == 14) {
    goto case_14;
  } else {
  }
  if (ldv_statevar_0 == 15) {
    goto case_15;
  } else {
  }
  if (ldv_statevar_0 == 18) {
    goto case_18;
  } else {
  }
  goto switch_default;
  case_1:
  {
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    ldv_statevar_0 = 7;
  } else {
    ldv_statevar_0 = 12;
  }
  goto ldv_36935;
  case_2:
  ldv_statevar_0 = 1;
  goto ldv_36935;
  case_3:
  {
  ldv_statevar_0 = ldv_switch_0();
  }
  goto ldv_36935;
  case_5:
  ldv_statevar_0 = 3;
  goto ldv_36935;
  case_7:
  {
  ldv_free((void *)ldv_0_resource_file);
  ldv_free((void *)ldv_0_resource_inode);
  ldv_0_ret_default = 1;
  ldv_statevar_0 = 15;
  }
  goto ldv_36935;
  case_9:
  {
  ldv_assume(ldv_0_ret_default != 0);
  tmp___0 = ldv_undef_int();
  }
  if (tmp___0 != 0) {
    ldv_statevar_0 = 7;
  } else {
    ldv_statevar_0 = 12;
  }
  goto ldv_36935;
  case_11:
  {
  ldv_assume(ldv_0_ret_default == 0);
  ldv_statevar_0 = ldv_switch_0();
  }
  goto ldv_36935;
  case_12: ;
  if ((unsigned long )ldv_0_container_file_operations->open != (unsigned long )((int (*)(struct inode * ,
                                                                                         struct file * ))0)) {
    {
    ldv_0_ret_default = ldv_file_operations_instance_probe_0_12(ldv_0_container_file_operations->open,
                                                                ldv_0_resource_inode,
                                                                ldv_0_resource_file);
    }
  } else {
  }
  {
  ldv_0_ret_default = ldv_filter_err_code(ldv_0_ret_default);
  tmp___1 = ldv_undef_int();
  }
  if (tmp___1 != 0) {
    ldv_statevar_0 = 9;
  } else {
    ldv_statevar_0 = 11;
  }
  goto ldv_36935;
  case_14:
  {
  tmp___2 = ldv_xmalloc(520UL);
  ldv_0_resource_file = (struct file *)tmp___2;
  tmp___3 = ldv_xmalloc(1032UL);
  ldv_0_resource_inode = (struct inode *)tmp___3;
  tmp___4 = ldv_undef_int();
  ldv_0_size_cnt_write_size = (unsigned long )tmp___4;
  tmp___5 = ldv_undef_int();
  }
  if (tmp___5 != 0) {
    ldv_statevar_0 = 7;
  } else {
    ldv_statevar_0 = 12;
  }
  goto ldv_36935;
  case_15: ;
  goto ldv_36935;
  case_18:
  {
  tmp___6 = ldv_xmalloc(1UL);
  ldv_0_ldv_param_4_1_default = (char *)tmp___6;
  tmp___7 = ldv_xmalloc(8UL);
  ldv_0_ldv_param_4_3_default = (long long *)tmp___7;
  ldv_assume(ldv_statevar_1 == 6 || ldv_statevar_2 == 6);
  ldv_assume(ldv_0_size_cnt_write_size <= 2147479552UL);
  ldv_file_operations_instance_write_0_4((long (*)(struct file * , char * , unsigned long ,
                                                   long long * ))ldv_0_container_file_operations->write,
                                         ldv_0_resource_file, ldv_0_ldv_param_4_1_default,
                                         ldv_0_size_cnt_write_size, ldv_0_ldv_param_4_3_default);
  ldv_free((void *)ldv_0_ldv_param_4_1_default);
  ldv_free((void *)ldv_0_ldv_param_4_3_default);
  ldv_statevar_0 = 3;
  }
  goto ldv_36935;
  switch_default: ;
  switch_break: ;
  }
  ldv_36935: ;
  return;
}
}
int ldv_file_operations_instance_probe_0_12(int (*arg0)(struct inode * , struct file * ) ,
                                            struct inode *arg1 , struct file *arg2 )
{
  int tmp ;
  {
  {
  tmp = (*arg0)(arg1, arg2);
  }
  return (tmp);
}
}
void ldv_free_irq(void *arg0 , int arg1 , void *arg2 )
{
  int ldv_10_line_line ;
  {
  {
  ldv_10_line_line = arg1;
  ldv_assume(ldv_statevar_1 == 2 || ldv_statevar_2 == 2);
  ldv_dispatch_irq_deregister_10_1(ldv_10_line_line);
  }
  return;
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
  tmp = cx25821_irq(arg1, arg2);
  }
  return (tmp);
}
}
void ldv_interrupt_instance_thread_1_3(enum irqreturn (*arg0)(int , void * ) , int arg1 ,
                                       void *arg2 )
{
  {
  {
  (*arg0)(arg1, arg2);
  }
  return;
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
  goto ldv_36987;
  case_4:
  {
  ldv_assume((unsigned int )ldv_1_ret_val_default == 2U);
  }
  if ((unsigned long )ldv_1_thread_thread != (unsigned long )((enum irqreturn (*)(int ,
                                                                                  void * ))0)) {
    {
    ldv_interrupt_instance_thread_1_3(ldv_1_thread_thread, ldv_1_line_line, ldv_1_data_data);
    }
  } else {
  }
  ldv_statevar_1 = 6;
  goto ldv_36987;
  case_5:
  {
  ldv_assume((unsigned int )ldv_statevar_6 - 2U <= 1U);
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
  goto ldv_36987;
  case_6: ;
  goto ldv_36987;
  switch_default: ;
  switch_break: ;
  }
  ldv_36987: ;
  return;
}
}
void ldv_io_instance_callback_7_67(long (*arg0)(struct file * , char * , unsigned long ,
                                                long long * ) , struct file *arg1 ,
                                   char *arg2 , unsigned long arg3 , long long *arg4 )
{
  {
  {
  (*arg0)(arg1, arg2, arg3, arg4);
  }
  return;
}
}
void ldv_io_instance_callback_8_21(int (*arg0)(struct file * , struct vm_area_struct * ) ,
                                   struct file *arg1 , struct vm_area_struct *arg2 )
{
  {
  {
  (*arg0)(arg1, arg2);
  }
  return;
}
}
void ldv_io_instance_callback_8_22(unsigned int (*arg0)(struct file * , struct poll_table_struct * ) ,
                                   struct file *arg1 , struct poll_table_struct *arg2 )
{
  {
  {
  (*arg0)(arg1, arg2);
  }
  return;
}
}
void ldv_io_instance_callback_8_23(long (*arg0)(struct file * , char * , unsigned long ,
                                                long long * ) , struct file *arg1 ,
                                   char *arg2 , unsigned long arg3 , long long *arg4 )
{
  {
  {
  (*arg0)(arg1, arg2, arg3, arg4);
  }
  return;
}
}
int ldv_pci_instance_probe_3_17(int (*arg0)(struct pci_dev * , struct pci_device_id * ) ,
                                struct pci_dev *arg1 , struct pci_device_id *arg2 )
{
  int tmp ;
  {
  {
  tmp = cx25821_initdev(arg1, (struct pci_device_id const *)arg2);
  }
  return (tmp);
}
}
void ldv_pci_instance_release_3_2(void (*arg0)(struct pci_dev * ) , struct pci_dev *arg1 )
{
  {
  {
  cx25821_finidev(arg1);
  }
  return;
}
}
void ldv_pci_instance_resume_3_5(int (*arg0)(struct pci_dev * ) , struct pci_dev *arg1 )
{
  {
  {
  (*arg0)(arg1);
  }
  return;
}
}
void ldv_pci_instance_resume_early_3_6(int (*arg0)(struct pci_dev * ) , struct pci_dev *arg1 )
{
  {
  {
  (*arg0)(arg1);
  }
  return;
}
}
void ldv_pci_instance_shutdown_3_3(void (*arg0)(struct pci_dev * ) , struct pci_dev *arg1 )
{
  {
  {
  (*arg0)(arg1);
  }
  return;
}
}
int ldv_pci_instance_suspend_3_8(int (*arg0)(struct pci_dev * , struct pm_message ) ,
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
int ldv_pci_instance_suspend_late_3_7(int (*arg0)(struct pci_dev * , struct pm_message ) ,
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
void ldv_pci_pci_instance_3(void *arg0 )
{
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  void *tmp___2 ;
  void *tmp___3 ;
  int tmp___4 ;
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
  if (ldv_statevar_3 == 12) {
    goto case_12;
  } else {
  }
  if (ldv_statevar_3 == 14) {
    goto case_14;
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
  if (ldv_statevar_3 == 19) {
    goto case_19;
  } else {
  }
  if (ldv_statevar_3 == 20) {
    goto case_20;
  } else {
  }
  goto switch_default;
  case_1:
  {
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    ldv_statevar_3 = 12;
  } else {
    ldv_statevar_3 = 17;
  }
  goto ldv_37073;
  case_2:
  {
  ldv_assume(ldv_statevar_1 == 2 || ldv_statevar_2 == 2);
  ldv_pci_instance_release_3_2(ldv_3_container_pci_driver->remove, ldv_3_resource_dev);
  ldv_statevar_3 = 1;
  }
  goto ldv_37073;
  case_3: ;
  if ((unsigned long )ldv_3_container_pci_driver->shutdown != (unsigned long )((void (*)(struct pci_dev * ))0)) {
    {
    ldv_pci_instance_shutdown_3_3(ldv_3_container_pci_driver->shutdown, ldv_3_resource_dev);
    }
  } else {
  }
  ldv_statevar_3 = 2;
  goto ldv_37073;
  case_4:
  {
  ldv_statevar_3 = ldv_switch_1();
  }
  goto ldv_37073;
  case_5: ;
  if ((unsigned long )ldv_3_container_pci_driver->resume != (unsigned long )((int (*)(struct pci_dev * ))0)) {
    {
    ldv_pci_instance_resume_3_5(ldv_3_container_pci_driver->resume, ldv_3_resource_dev);
    }
  } else {
  }
  ldv_statevar_3 = 4;
  goto ldv_37073;
  case_6: ;
  if ((unsigned long )ldv_3_container_pci_driver->resume_early != (unsigned long )((int (*)(struct pci_dev * ))0)) {
    {
    ldv_pci_instance_resume_early_3_6(ldv_3_container_pci_driver->resume_early, ldv_3_resource_dev);
    }
  } else {
  }
  ldv_statevar_3 = 5;
  goto ldv_37073;
  case_7: ;
  if ((unsigned long )ldv_3_container_pci_driver->suspend_late != (unsigned long )((int (*)(struct pci_dev * ,
                                                                                            pm_message_t ))0)) {
    {
    ldv_3_ret_default = ldv_pci_instance_suspend_late_3_7(ldv_3_container_pci_driver->suspend_late,
                                                          ldv_3_resource_dev, ldv_3_resource_pm_message);
    }
  } else {
  }
  {
  ldv_3_ret_default = ldv_filter_err_code(ldv_3_ret_default);
  ldv_statevar_3 = 6;
  }
  goto ldv_37073;
  case_8: ;
  if ((unsigned long )ldv_3_container_pci_driver->suspend != (unsigned long )((int (*)(struct pci_dev * ,
                                                                                       pm_message_t ))0)) {
    {
    ldv_3_ret_default = ldv_pci_instance_suspend_3_8(ldv_3_container_pci_driver->suspend,
                                                     ldv_3_resource_dev, ldv_3_resource_pm_message);
    }
  } else {
  }
  {
  ldv_3_ret_default = ldv_filter_err_code(ldv_3_ret_default);
  ldv_statevar_3 = 7;
  }
  goto ldv_37073;
  case_9:
  {
  ldv_statevar_3 = ldv_switch_1();
  }
  goto ldv_37073;
  case_10:
  ldv_statevar_3 = 9;
  goto ldv_37073;
  case_12:
  {
  ldv_free((void *)ldv_3_resource_dev);
  ldv_free((void *)ldv_3_resource_struct_pci_device_id_ptr);
  ldv_3_ret_default = 1;
  ldv_statevar_3 = 20;
  }
  goto ldv_37073;
  case_14:
  {
  ldv_assume(ldv_3_ret_default != 0);
  tmp___0 = ldv_undef_int();
  }
  if (tmp___0 != 0) {
    ldv_statevar_3 = 12;
  } else {
    ldv_statevar_3 = 17;
  }
  goto ldv_37073;
  case_16:
  {
  ldv_assume(ldv_3_ret_default == 0);
  ldv_statevar_3 = ldv_switch_1();
  }
  goto ldv_37073;
  case_17:
  {
  ldv_assume(ldv_statevar_1 == 6 || ldv_statevar_2 == 6);
  ldv_pre_probe();
  ldv_3_ret_default = ldv_pci_instance_probe_3_17((int (*)(struct pci_dev * , struct pci_device_id * ))ldv_3_container_pci_driver->probe,
                                                  ldv_3_resource_dev, ldv_3_resource_struct_pci_device_id_ptr);
  ldv_3_ret_default = ldv_post_probe(ldv_3_ret_default);
  tmp___1 = ldv_undef_int();
  }
  if (tmp___1 != 0) {
    ldv_statevar_3 = 14;
  } else {
    ldv_statevar_3 = 16;
  }
  goto ldv_37073;
  case_19:
  {
  tmp___2 = ldv_xmalloc(2936UL);
  ldv_3_resource_dev = (struct pci_dev *)tmp___2;
  tmp___3 = ldv_xmalloc(32UL);
  ldv_3_resource_struct_pci_device_id_ptr = (struct pci_device_id *)tmp___3;
  tmp___4 = ldv_undef_int();
  }
  if (tmp___4 != 0) {
    ldv_statevar_3 = 12;
  } else {
    ldv_statevar_3 = 17;
  }
  goto ldv_37073;
  case_20: ;
  goto ldv_37073;
  switch_default: ;
  switch_break: ;
  }
  ldv_37073: ;
  return;
}
}
void ldv_pci_unregister_driver(void *arg0 , struct pci_driver *arg1 )
{
  struct pci_driver *ldv_14_pci_driver_pci_driver ;
  {
  {
  ldv_14_pci_driver_pci_driver = arg1;
  ldv_assume(ldv_statevar_3 == 12);
  ldv_dispatch_deregister_14_1(ldv_14_pci_driver_pci_driver);
  }
  return;
  return;
}
}
int ldv_request_irq(int arg0 , unsigned int arg1 , enum irqreturn (*arg2)(int , void * ) ,
                    unsigned long arg3 , char *arg4 , void *arg5 )
{
  enum irqreturn (*ldv_12_callback_handler)(int , void * ) ;
  void *ldv_12_data_data ;
  int ldv_12_line_line ;
  enum irqreturn (*ldv_12_thread_thread)(int , void * ) ;
  int tmp ;
  {
  {
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    {
    ldv_assume(arg0 == 0);
    ldv_12_line_line = (int )arg1;
    ldv_12_callback_handler = arg2;
    ldv_12_thread_thread = (enum irqreturn (*)(int , void * ))0;
    ldv_12_data_data = arg5;
    ldv_assume(ldv_statevar_1 == 6 || ldv_statevar_2 == 6);
    ldv_dispatch_irq_register_12_2(ldv_12_line_line, ldv_12_callback_handler, ldv_12_thread_thread,
                                   ldv_12_data_data);
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
void ldv_struct_v4l2_ctrl_ops_dummy_resourceless_instance_4(void *arg0 )
{
  int tmp ;
  int tmp___0 ;
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
  goto switch_default;
  case_1: ;
  goto ldv_37117;
  case_2:
  {
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    ldv_statevar_4 = 1;
  } else {
    ldv_statevar_4 = 3;
  }
  goto ldv_37117;
  case_3:
  {
  ldv_dummy_resourceless_instance_callback_4_3(ldv_4_callback_s_ctrl, ldv_4_container_struct_v4l2_ctrl_ptr);
  ldv_statevar_4 = 2;
  }
  goto ldv_37117;
  case_4:
  {
  tmp___0 = ldv_undef_int();
  }
  if (tmp___0 != 0) {
    ldv_statevar_4 = 1;
  } else {
    ldv_statevar_4 = 3;
  }
  goto ldv_37117;
  case_5: ;
  goto ldv_37117;
  switch_default: ;
  switch_break: ;
  }
  ldv_37117: ;
  return;
}
}
void ldv_struct_videobuf_queue_ops_dummy_resourceless_instance_5(void *arg0 )
{
  void *tmp ;
  void *tmp___0 ;
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
  if (ldv_statevar_5 == 8) {
    goto case_8;
  } else {
  }
  if (ldv_statevar_5 == 10) {
    goto case_10;
  } else {
  }
  goto switch_default;
  case_1: ;
  goto ldv_37127;
  case_2:
  {
  ldv_statevar_5 = ldv_switch_2();
  }
  goto ldv_37127;
  case_3:
  {
  ldv_dummy_resourceless_instance_callback_5_3(ldv_5_callback_buf_prepare, ldv_5_container_struct_videobuf_queue_ptr,
                                               ldv_5_container_struct_videobuf_buffer_ptr,
                                               ldv_5_container_enum_v4l2_field);
  ldv_statevar_5 = 2;
  }
  goto ldv_37127;
  case_4:
  {
  ldv_statevar_5 = ldv_switch_2();
  }
  goto ldv_37127;
  case_5: ;
  goto ldv_37127;
  case_7:
  {
  ldv_assume(ldv_statevar_6 == 3);
  ldv_dummy_resourceless_instance_callback_5_7(ldv_5_callback_buf_queue, ldv_5_container_struct_videobuf_queue_ptr,
                                               ldv_5_container_struct_videobuf_buffer_ptr);
  ldv_statevar_5 = 2;
  }
  goto ldv_37127;
  case_8:
  {
  ldv_dummy_resourceless_instance_callback_5_8(ldv_5_callback_buf_release, ldv_5_container_struct_videobuf_queue_ptr,
                                               ldv_5_container_struct_videobuf_buffer_ptr);
  ldv_statevar_5 = 2;
  }
  goto ldv_37127;
  case_10:
  {
  tmp = ldv_xmalloc(4UL);
  ldv_5_ldv_param_9_1_default = (unsigned int *)tmp;
  tmp___0 = ldv_xmalloc(4UL);
  ldv_5_ldv_param_9_2_default = (unsigned int *)tmp___0;
  ldv_dummy_resourceless_instance_callback_5_9(ldv_5_callback_buf_setup, ldv_5_container_struct_videobuf_queue_ptr,
                                               ldv_5_ldv_param_9_1_default, ldv_5_ldv_param_9_2_default);
  ldv_free((void *)ldv_5_ldv_param_9_1_default);
  ldv_free((void *)ldv_5_ldv_param_9_2_default);
  ldv_statevar_5 = 2;
  }
  goto ldv_37127;
  switch_default: ;
  switch_break: ;
  }
  ldv_37127: ;
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
  return (2);
  case_1: ;
  return (5);
  case_2: ;
  return (18);
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
  goto switch_default;
  case_0: ;
  return (3);
  case_1: ;
  return (8);
  case_2: ;
  return (10);
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
  return (10);
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
  goto switch_default;
  case_0: ;
  return (2);
  case_1: ;
  return (4);
  case_2: ;
  return (17);
  case_3: ;
  return (19);
  case_4: ;
  return (21);
  case_5: ;
  return (22);
  case_6: ;
  return (24);
  case_7: ;
  return (27);
  case_8: ;
  return (29);
  case_9: ;
  return (30);
  case_10: ;
  return (31);
  case_11: ;
  return (32);
  case_12: ;
  return (33);
  case_13: ;
  return (34);
  case_14: ;
  return (35);
  case_15: ;
  return (37);
  case_16: ;
  return (40);
  case_17: ;
  return (43);
  case_18: ;
  return (45);
  case_19: ;
  return (46);
  case_20: ;
  return (47);
  case_21: ;
  return (48);
  case_22: ;
  return (49);
  case_23: ;
  return (50);
  case_24: ;
  return (51);
  case_25: ;
  return (53);
  case_26: ;
  return (56);
  case_27: ;
  return (59);
  case_28: ;
  return (61);
  case_29: ;
  return (62);
  case_30: ;
  return (63);
  case_31: ;
  return (64);
  case_32: ;
  return (65);
  case_33: ;
  return (66);
  case_34: ;
  return (68);
  switch_default:
  {
  ldv_stop();
  }
  switch_break: ;
  }
  return (0);
}
}
void ldv_switch_automaton_state_0_15(void)
{
  {
  ldv_statevar_0 = 14;
  return;
}
}
void ldv_switch_automaton_state_0_6(void)
{
  {
  ldv_0_ret_default = 1;
  ldv_statevar_0 = 15;
  return;
}
}
void ldv_switch_automaton_state_1_1(void)
{
  {
  ldv_statevar_1 = 6;
  return;
}
}
void ldv_switch_automaton_state_1_6(void)
{
  {
  ldv_statevar_1 = 5;
  return;
}
}
void ldv_switch_automaton_state_3_11(void)
{
  {
  ldv_3_ret_default = 1;
  ldv_statevar_3 = 20;
  return;
}
}
void ldv_switch_automaton_state_3_20(void)
{
  {
  ldv_statevar_3 = 19;
  return;
}
}
void ldv_switch_automaton_state_4_1(void)
{
  {
  ldv_statevar_4 = 5;
  return;
}
}
void ldv_switch_automaton_state_4_5(void)
{
  {
  ldv_statevar_4 = 4;
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
  ldv_statevar_6 = 3;
  return;
}
}
void ldv_switch_automaton_state_6_3(void)
{
  {
  ldv_statevar_6 = 2;
  return;
}
}
void ldv_timer_instance_callback_6_2(void (*arg0)(unsigned long ) , unsigned long arg1 )
{
  {
  {
  (*arg0)(arg1);
  }
  return;
}
}
void ldv_timer_timer_instance_6(void *arg0 )
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
  goto switch_default;
  case_2:
  {
  ldv_switch_to_interrupt_context();
  }
  if ((unsigned long )ldv_6_container_timer_list->function != (unsigned long )((void (*)(unsigned long ))0)) {
    {
    ldv_timer_instance_callback_6_2(ldv_6_container_timer_list->function, ldv_6_container_timer_list->data);
    }
  } else {
  }
  {
  ldv_switch_to_process_context();
  ldv_statevar_6 = 3;
  }
  goto ldv_37227;
  case_3: ;
  goto ldv_37227;
  switch_default: ;
  switch_break: ;
  }
  ldv_37227: ;
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
static void *ldv_dev_get_drvdata_7(struct device const *dev )
{
  void *tmp ;
  {
  {
  tmp = ldv_dev_get_drvdata(dev);
  }
  return (tmp);
}
}
__inline static int ldv_request_irq_19(unsigned int irq , irqreturn_t (*handler)(int ,
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
static int ldv___pci_register_driver_21(struct pci_driver *ldv_func_arg1 , struct module *ldv_func_arg2 ,
                                        char const *ldv_func_arg3 )
{
  ldv_func_ret_type___1 ldv_func_res ;
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
static void ldv_pci_unregister_driver_22(struct pci_driver *ldv_func_arg1 )
{
  {
  {
  pci_unregister_driver(ldv_func_arg1);
  ldv_pci_unregister_driver((void *)0, ldv_func_arg1);
  }
  return;
}
}
struct cx25821_board cx25821_boards[2U] = { {"UNKNOWN/GENERIC", 0, 0, 0, 0U},
        {"CX25821", 0, 1, 2, 0U}};
int ldv_del_timer(int arg0 , struct timer_list *arg1 ) ;
void ldv_dispatch_instance_deregister_9_1(struct timer_list *arg0 ) ;
int ldv_del_timer(int arg0 , struct timer_list *arg1 )
{
  struct timer_list *ldv_9_timer_list_timer_list ;
  {
  {
  ldv_9_timer_list_timer_list = arg1;
  ldv_assume(ldv_statevar_6 == 2);
  ldv_dispatch_instance_deregister_9_1(ldv_9_timer_list_timer_list);
  }
  return (arg0);
  return (arg0);
}
}
void ldv_dispatch_instance_deregister_9_1(struct timer_list *arg0 )
{
  {
  {
  ldv_6_container_timer_list = arg0;
  ldv_switch_automaton_state_6_1();
  }
  return;
}
}
int ldv_dev_set_drvdata(struct device *dev , void *data ) ;
extern size_t strlcpy(char * , char const * , size_t ) ;
static int ldv_dev_set_drvdata_12(struct device *dev , void *data ) ;
__inline static void i2c_set_adapdata(struct i2c_adapter *dev , void *data )
{
  {
  {
  ldv_dev_set_drvdata_12(& dev->dev, data);
  }
  return;
}
}
extern int i2c_add_adapter(struct i2c_adapter * ) ;
extern void i2c_del_adapter(struct i2c_adapter * ) ;
int cx25821_i2c_write(struct cx25821_i2c *bus , u16 reg_addr , int value ) ;
static unsigned int i2c_debug ;
__inline static int i2c_slave_did_ack(struct i2c_adapter *i2c_adap )
{
  struct cx25821_i2c *bus ;
  struct cx25821_dev *dev ;
  unsigned int tmp ;
  {
  {
  bus = (struct cx25821_i2c *)i2c_adap->algo_data;
  dev = bus->dev;
  tmp = readl((void const volatile *)dev->lmmio + (unsigned long )(bus->reg_stat >> 2));
  }
  return ((int )tmp & 1);
}
}
__inline static int i2c_is_busy(struct i2c_adapter *i2c_adap )
{
  struct cx25821_i2c *bus ;
  struct cx25821_dev *dev ;
  unsigned int tmp ;
  {
  {
  bus = (struct cx25821_i2c *)i2c_adap->algo_data;
  dev = bus->dev;
  tmp = readl((void const volatile *)dev->lmmio + (unsigned long )(bus->reg_stat >> 2));
  }
  return ((tmp & 2U) != 0U);
}
}
static int i2c_wait_done(struct i2c_adapter *i2c_adap )
{
  int count ;
  int tmp ;
  {
  count = 0;
  goto ldv_35196;
  ldv_35195:
  {
  tmp = i2c_is_busy(i2c_adap);
  }
  if (tmp == 0) {
    goto ldv_35194;
  } else {
  }
  {
  __const_udelay(137440UL);
  count = count + 1;
  }
  ldv_35196: ;
  if (count <= 63) {
    goto ldv_35195;
  } else {
  }
  ldv_35194: ;
  if (count == 64) {
    return (0);
  } else {
  }
  return (1);
}
}
static int i2c_sendbytes(struct i2c_adapter *i2c_adap , struct i2c_msg const *msg ,
                         int joined_rlen )
{
  struct cx25821_i2c *bus ;
  struct cx25821_dev *dev ;
  u32 wdata ;
  u32 addr ;
  u32 ctrl ;
  int retval ;
  int cnt ;
  int tmp ;
  int tmp___0 ;
  {
  bus = (struct cx25821_i2c *)i2c_adap->algo_data;
  dev = bus->dev;
  if (joined_rlen != 0) {
    if (i2c_debug != 0U) {
      {
      printk("\017%s/0: %s(msg->wlen=%d, nextmsg->rlen=%d)\n", (char *)(& dev->name),
             "i2c_sendbytes", (int )msg->len, joined_rlen);
      }
    } else {
    }
  } else
  if (i2c_debug != 0U) {
    {
    printk("\017%s/0: %s(msg->len=%d)\n", (char *)(& dev->name), "i2c_sendbytes",
           (int )msg->len);
    }
  } else {
  }
  if ((unsigned int )((unsigned short )msg->len) == 0U) {
    {
    writel((unsigned int )((int )msg->addr << 25), (void volatile *)dev->lmmio + (unsigned long )(bus->reg_addr >> 2));
    writel(bus->i2c_period | 4U, (void volatile *)dev->lmmio + (unsigned long )(bus->reg_ctrl >> 2));
    tmp = i2c_wait_done(i2c_adap);
    }
    if (tmp == 0) {
      return (-5);
    } else {
    }
    {
    tmp___0 = i2c_slave_did_ack(i2c_adap);
    }
    if (tmp___0 == 0) {
      return (-5);
    } else {
    }
    if (i2c_debug != 0U) {
      {
      printk("\017%s/0: %s(): returns 0\n", (char *)(& dev->name), "i2c_sendbytes");
      }
    } else {
    }
    return (0);
  } else {
  }
  addr = (u32 )(((int )msg->addr << 25) | (int )*(msg->buf));
  wdata = (u32 )*(msg->buf);
  ctrl = bus->i2c_period | 4100U;
  if ((unsigned int )((unsigned short )msg->len) > 1U) {
    ctrl = ctrl | 24U;
  } else
  if (joined_rlen != 0) {
    ctrl = ctrl | 16U;
  } else {
  }
  {
  writel(addr, (void volatile *)dev->lmmio + (unsigned long )(bus->reg_addr >> 2));
  writel(wdata, (void volatile *)dev->lmmio + (unsigned long )(bus->reg_wdata >> 2));
  writel(ctrl, (void volatile *)dev->lmmio + (unsigned long )(bus->reg_ctrl >> 2));
  retval = i2c_wait_done(i2c_adap);
  }
  if (retval < 0) {
    goto err;
  } else {
  }
  if (retval == 0) {
    goto eio;
  } else {
  }
  if (i2c_debug != 0U) {
    if ((ctrl & 16U) == 0U) {
      {
      printk(" >\n");
      }
    } else {
    }
  } else {
  }
  cnt = 1;
  goto ldv_35213;
  ldv_35212:
  wdata = (u32 )*(msg->buf + (unsigned long )cnt);
  ctrl = bus->i2c_period | 4100U;
  if (cnt < (int )msg->len + -1) {
    ctrl = ctrl | 24U;
  } else
  if (joined_rlen != 0) {
    ctrl = ctrl | 16U;
  } else {
  }
  {
  writel(addr, (void volatile *)dev->lmmio + (unsigned long )(bus->reg_addr >> 2));
  writel(wdata, (void volatile *)dev->lmmio + (unsigned long )(bus->reg_wdata >> 2));
  writel(ctrl, (void volatile *)dev->lmmio + (unsigned long )(bus->reg_ctrl >> 2));
  retval = i2c_wait_done(i2c_adap);
  }
  if (retval < 0) {
    goto err;
  } else {
  }
  if (retval == 0) {
    goto eio;
  } else {
  }
  if (i2c_debug != 0U) {
    if (i2c_debug != 0U) {
      {
      printk("\017%s/0:  %02x", (char *)(& dev->name), (int )*(msg->buf + (unsigned long )cnt));
      }
    } else {
    }
    if ((ctrl & 16U) == 0U) {
      if (i2c_debug != 0U) {
        {
        printk("\017%s/0:  >\n", (char *)(& dev->name));
        }
      } else {
      }
    } else {
    }
  } else {
  }
  cnt = cnt + 1;
  ldv_35213: ;
  if (cnt < (int )msg->len) {
    goto ldv_35212;
  } else {
  }
  return ((int )msg->len);
  eio:
  retval = -5;
  err: ;
  if (i2c_debug != 0U) {
    {
    printk("\vcx25821:  ERR: %d\n", retval);
    }
  } else {
  }
  return (retval);
}
}
static int i2c_readbytes(struct i2c_adapter *i2c_adap , struct i2c_msg const *msg ,
                         int joined )
{
  struct cx25821_i2c *bus ;
  struct cx25821_dev *dev ;
  u32 ctrl ;
  u32 cnt ;
  int retval ;
  int tmp ;
  int tmp___0 ;
  unsigned int tmp___1 ;
  {
  bus = (struct cx25821_i2c *)i2c_adap->algo_data;
  dev = bus->dev;
  if (i2c_debug != 0U && joined == 0) {
    if (i2c_debug != 0U) {
      {
      printk("\017%s/0: 6-%s(msg->len=%d)\n", (char *)(& dev->name), "i2c_readbytes",
             (int )msg->len);
      }
    } else {
    }
  } else {
  }
  if ((unsigned int )((unsigned short )msg->len) == 0U) {
    {
    writel((unsigned int )((int )msg->addr << 25), (void volatile *)dev->lmmio + (unsigned long )(bus->reg_addr >> 2));
    writel(bus->i2c_period | 5U, (void volatile *)dev->lmmio + (unsigned long )(bus->reg_ctrl >> 2));
    tmp = i2c_wait_done(i2c_adap);
    }
    if (tmp == 0) {
      return (-5);
    } else {
    }
    {
    tmp___0 = i2c_slave_did_ack(i2c_adap);
    }
    if (tmp___0 == 0) {
      return (-5);
    } else {
    }
    if (i2c_debug != 0U) {
      {
      printk("\017%s/0: %s(): returns 0\n", (char *)(& dev->name), "i2c_readbytes");
      }
    } else {
    }
    return (0);
  } else {
  }
  if (i2c_debug != 0U) {
    if (joined != 0) {
      if (i2c_debug != 0U) {
        {
        printk("\017%s/0:  R", (char *)(& dev->name));
        }
      } else {
      }
    } else
    if (i2c_debug != 0U) {
      {
      printk("\017%s/0:  <R %02x", (char *)(& dev->name), ((int )msg->addr << 1) + 1);
      }
    } else {
    }
  } else {
  }
  cnt = 0U;
  goto ldv_35229;
  ldv_35228:
  ctrl = bus->i2c_period | 4101U;
  if (cnt < (u32 )((int )msg->len + -1)) {
    ctrl = ctrl | 24U;
  } else {
  }
  {
  writel((unsigned int )((int )msg->addr << 25), (void volatile *)dev->lmmio + (unsigned long )(bus->reg_addr >> 2));
  writel(ctrl, (void volatile *)dev->lmmio + (unsigned long )(bus->reg_ctrl >> 2));
  retval = i2c_wait_done(i2c_adap);
  }
  if (retval < 0) {
    goto err;
  } else {
  }
  if (retval == 0) {
    goto eio;
  } else {
  }
  {
  tmp___1 = readl((void const volatile *)dev->lmmio + (unsigned long )(bus->reg_rdata >> 2));
  *(msg->buf + (unsigned long )cnt) = (__u8 )tmp___1;
  }
  if (i2c_debug != 0U) {
    if (i2c_debug != 0U) {
      {
      printk("\017%s/0:  %02x", (char *)(& dev->name), (int )*(msg->buf + (unsigned long )cnt));
      }
    } else {
    }
    if ((ctrl & 16U) == 0U) {
      if (i2c_debug != 0U) {
        {
        printk("\017%s/0:  >\n", (char *)(& dev->name));
        }
      } else {
      }
    } else {
    }
  } else {
  }
  cnt = cnt + 1U;
  ldv_35229: ;
  if (cnt < (u32 )msg->len) {
    goto ldv_35228;
  } else {
  }
  return ((int )msg->len);
  eio:
  retval = -5;
  err: ;
  if (i2c_debug != 0U) {
    {
    printk("\vcx25821:  ERR: %d\n", retval);
    }
  } else {
  }
  return (retval);
}
}
static int i2c_xfer(struct i2c_adapter *i2c_adap , struct i2c_msg *msgs , int num )
{
  struct cx25821_i2c *bus ;
  struct cx25821_dev *dev ;
  int i ;
  int retval ;
  {
  bus = (struct cx25821_i2c *)i2c_adap->algo_data;
  dev = bus->dev;
  retval = 0;
  if (i2c_debug != 0U) {
    {
    printk("\017%s/0: %s(num = %d)\n", (char *)(& dev->name), "i2c_xfer", num);
    }
  } else {
  }
  i = 0;
  goto ldv_35243;
  ldv_35242: ;
  if (i2c_debug != 0U) {
    {
    printk("\017%s/0: %s(num = %d) addr = 0x%02x  len = 0x%x\n", (char *)(& dev->name),
           "i2c_xfer", num, (int )(msgs + (unsigned long )i)->addr, (int )(msgs + (unsigned long )i)->len);
    }
  } else {
  }
  if ((int )(msgs + (unsigned long )i)->flags & 1) {
    {
    retval = i2c_readbytes(i2c_adap, (struct i2c_msg const *)msgs + (unsigned long )i,
                           0);
    }
  } else
  if ((i + 1 < num && (int )(msgs + ((unsigned long )i + 1UL))->flags & 1) && (int )(msgs + (unsigned long )i)->addr == (int )(msgs + ((unsigned long )i + 1UL))->addr) {
    {
    retval = i2c_sendbytes(i2c_adap, (struct i2c_msg const *)msgs + (unsigned long )i,
                           (int )(msgs + ((unsigned long )i + 1UL))->len);
    }
    if (retval < 0) {
      goto err;
    } else {
    }
    {
    i = i + 1;
    retval = i2c_readbytes(i2c_adap, (struct i2c_msg const *)msgs + (unsigned long )i,
                           1);
    }
  } else {
    {
    retval = i2c_sendbytes(i2c_adap, (struct i2c_msg const *)msgs + (unsigned long )i,
                           0);
    }
  }
  if (retval < 0) {
    goto err;
  } else {
  }
  i = i + 1;
  ldv_35243: ;
  if (i < num) {
    goto ldv_35242;
  } else {
  }
  return (num);
  err: ;
  return (retval);
}
}
static u32 cx25821_functionality(struct i2c_adapter *adap )
{
  {
  return (251592713U);
}
}
static struct i2c_algorithm cx25821_i2c_algo_template = {& i2c_xfer, 0, & cx25821_functionality};
static struct i2c_adapter cx25821_i2c_adap_template =
     {& __this_module, 0U, (struct i2c_algorithm const *)(& cx25821_i2c_algo_template),
    0, {{{{0U}}, 0U, 0U, 0, {0, {0, 0}, 0, 0, 0UL}}, {0}, 0, 0, 0, 0, 0, 0, 0}, 0,
    0, {0, 0, {0, {0, 0}, 0, 0, 0, 0, {{0}}, {{{0L}, {0, 0}, 0, {0, {0, 0}, 0, 0,
                                                                 0UL}}, {{0, 0}, 0UL,
                                                                         0, 0, 0UL,
                                                                         0, 0, 0,
                                                                         {(char)0,
                                                                          (char)0,
                                                                          (char)0,
                                                                          (char)0,
                                                                          (char)0,
                                                                          (char)0,
                                                                          (char)0,
                                                                          (char)0,
                                                                          (char)0,
                                                                          (char)0,
                                                                          (char)0,
                                                                          (char)0,
                                                                          (char)0,
                                                                          (char)0,
                                                                          (char)0,
                                                                          (char)0},
                                                                         {0, {0, 0},
                                                                          0, 0, 0UL}},
                                              0, 0}, 0U, 0U, 0U, 0U, 0U}, 0, 0, {{0},
                                                                                 {{{{{0U}},
                                                                                    0U,
                                                                                    0U,
                                                                                    0,
                                                                                    {0,
                                                                                     {0,
                                                                                      0},
                                                                                     0,
                                                                                     0,
                                                                                     0UL}}}},
                                                                                 {0,
                                                                                  0},
                                                                                 0,
                                                                                 0,
                                                                                 0,
                                                                                 {0,
                                                                                  {0,
                                                                                   0},
                                                                                  0,
                                                                                  0,
                                                                                  0UL}},
        0, 0, 0, {{0}, 0U, 0U, (_Bool)0, (_Bool)0, (_Bool)0, (_Bool)0, {{{{{0U}},
                                                                          0U, 0U,
                                                                          0, {0, {0,
                                                                                  0},
                                                                              0, 0,
                                                                              0UL}}}},
                  {0, 0}, {0U, {{{{{{0U}}, 0U, 0U, 0, {0, {0, 0}, 0, 0, 0UL}}}}, {0,
                                                                                  0}}},
                  0, (_Bool)0, (_Bool)0, {{0, 0}, 0UL, 0, 0, 0UL, 0, 0, 0, {(char)0,
                                                                            (char)0,
                                                                            (char)0,
                                                                            (char)0,
                                                                            (char)0,
                                                                            (char)0,
                                                                            (char)0,
                                                                            (char)0,
                                                                            (char)0,
                                                                            (char)0,
                                                                            (char)0,
                                                                            (char)0,
                                                                            (char)0,
                                                                            (char)0,
                                                                            (char)0,
                                                                            (char)0},
                                          {0, {0, 0}, 0, 0, 0UL}}, 0UL, {{0L}, {0,
                                                                                0},
                                                                         0, {0, {0,
                                                                                 0},
                                                                             0, 0,
                                                                             0UL}},
                  {{{{{{0U}}, 0U, 0U, 0, {0, {0, 0}, 0, 0, 0UL}}}}, {0, 0}}, {0},
                  {0}, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0, 0, 0, 0, 0UL,
                  0UL, 0UL, 0UL, 0, 0}, 0, 0, 0, 0, 0ULL, 0, {0, 0}, 0, {0, 0}, 0,
        {0}, 0U, 0U, {{{{{0U}}, 0U, 0U, 0, {0, {0, 0}, 0, 0, 0UL}}}}, {0, 0}, {0,
                                                                               {0,
                                                                                0},
                                                                               {{0}}},
        0, 0, 0, 0, (_Bool)0, (_Bool)0}, 0, {'c', 'x', '2', '5', '8', '2', '1', '\000'},
    {0U, {{{{{{0U}}, 0U, 0U, 0, {0, {0, 0}, 0, 0, 0UL}}}}, {0, 0}}}, {{0}, {{{{{0U}},
                                                                              0U,
                                                                              0U,
                                                                              0, {0,
                                                                                  {0,
                                                                                   0},
                                                                                  0,
                                                                                  0,
                                                                                  0UL}}}},
                                                                      {0, 0}, 0, 0,
                                                                      0, {0, {0, 0},
                                                                          0, 0, 0UL}},
    {0, 0}, 0};
static struct i2c_client cx25821_i2c_client_template = {(unsigned short)0, (unsigned short)0, {'c', 'x', '2', '5', '8', '2', '1', ' ',
                                           'i', 'n', 't', 'e', 'r', 'n', 'a', 'l',
                                           '\000'}, 0, {0, 0, {0, {0, 0}, 0, 0, 0,
                                                               0, {{0}}, {{{0L}, {0,
                                                                                  0},
                                                                           0, {0,
                                                                               {0,
                                                                                0},
                                                                               0,
                                                                               0,
                                                                               0UL}},
                                                                          {{0, 0},
                                                                           0UL, 0,
                                                                           0, 0UL,
                                                                           0, 0, 0,
                                                                           {(char)0,
                                                                            (char)0,
                                                                            (char)0,
                                                                            (char)0,
                                                                            (char)0,
                                                                            (char)0,
                                                                            (char)0,
                                                                            (char)0,
                                                                            (char)0,
                                                                            (char)0,
                                                                            (char)0,
                                                                            (char)0,
                                                                            (char)0,
                                                                            (char)0,
                                                                            (char)0,
                                                                            (char)0},
                                                                           {0, {0,
                                                                                0},
                                                                            0, 0,
                                                                            0UL}},
                                                                          0, 0}, 0U,
                                                               0U, 0U, 0U, 0U}, 0,
                                                        0, {{0}, {{{{{0U}}, 0U, 0U,
                                                                    0, {0, {0, 0},
                                                                        0, 0, 0UL}}}},
                                                            {0, 0}, 0, 0, 0, {0, {0,
                                                                                  0},
                                                                              0, 0,
                                                                              0UL}},
                                                        0, 0, 0, {{0}, 0U, 0U, (_Bool)0,
                                                                  (_Bool)0, (_Bool)0,
                                                                  (_Bool)0, {{{{{0U}},
                                                                               0U,
                                                                               0U,
                                                                               0,
                                                                               {0,
                                                                                {0,
                                                                                 0},
                                                                                0,
                                                                                0,
                                                                                0UL}}}},
                                                                  {0, 0}, {0U, {{{{{{0U}},
                                                                                   0U,
                                                                                   0U,
                                                                                   0,
                                                                                   {0,
                                                                                    {0,
                                                                                     0},
                                                                                    0,
                                                                                    0,
                                                                                    0UL}}}},
                                                                                {0,
                                                                                 0}}},
                                                                  0, (_Bool)0, (_Bool)0,
                                                                  {{0, 0}, 0UL, 0,
                                                                   0, 0UL, 0, 0, 0,
                                                                   {(char)0, (char)0,
                                                                    (char)0, (char)0,
                                                                    (char)0, (char)0,
                                                                    (char)0, (char)0,
                                                                    (char)0, (char)0,
                                                                    (char)0, (char)0,
                                                                    (char)0, (char)0,
                                                                    (char)0, (char)0},
                                                                   {0, {0, 0}, 0,
                                                                    0, 0UL}}, 0UL,
                                                                  {{0L}, {0, 0}, 0,
                                                                   {0, {0, 0}, 0,
                                                                    0, 0UL}}, {{{{{{0U}},
                                                                                  0U,
                                                                                  0U,
                                                                                  0,
                                                                                  {0,
                                                                                   {0,
                                                                                    0},
                                                                                   0,
                                                                                   0,
                                                                                   0UL}}}},
                                                                               {0,
                                                                                0}},
                                                                  {0}, {0}, 0U, 0U,
                                                                  0U, 0U, 0U, 0U,
                                                                  0U, 0U, 0U, 0U,
                                                                  0U, 0, 0, 0, 0,
                                                                  0UL, 0UL, 0UL, 0UL,
                                                                  0, 0}, 0, 0, 0,
                                                        0, 0ULL, 0, {0, 0}, 0, {0,
                                                                                0},
                                                        0, {0}, 0U, 0U, {{{{{0U}},
                                                                           0U, 0U,
                                                                           0, {0,
                                                                               {0,
                                                                                0},
                                                                               0,
                                                                               0,
                                                                               0UL}}}},
                                                        {0, 0}, {0, {0, 0}, {{0}}},
                                                        0, 0, 0, 0, (_Bool)0, (_Bool)0},
    0, {0, 0}};
int cx25821_i2c_register(struct cx25821_i2c *bus )
{
  struct cx25821_dev *dev ;
  {
  dev = bus->dev;
  if (i2c_debug != 0U) {
    {
    printk("\017%s/0: %s(bus = %d)\n", (char *)(& dev->name), "cx25821_i2c_register",
           bus->nr);
    }
  } else {
  }
  {
  bus->i2c_adap = cx25821_i2c_adap_template;
  bus->i2c_client = cx25821_i2c_client_template;
  bus->i2c_adap.dev.parent = & (dev->pci)->dev;
  strlcpy((char *)(& bus->i2c_adap.name), (char const *)(& (bus->dev)->name), 48UL);
  bus->i2c_adap.algo_data = (void *)bus;
  i2c_set_adapdata(& bus->i2c_adap, (void *)(& dev->v4l2_dev));
  i2c_add_adapter(& bus->i2c_adap);
  bus->i2c_client.adapter = & bus->i2c_adap;
  bus->i2c_client.addr = 68U;
  }
  return ((int )bus->i2c_rc);
}
}
int cx25821_i2c_unregister(struct cx25821_i2c *bus )
{
  {
  {
  i2c_del_adapter(& bus->i2c_adap);
  }
  return (0);
}
}
int cx25821_i2c_read(struct cx25821_i2c *bus , u16 reg_addr , int *value )
{
  struct i2c_client *client ;
  int v ;
  u8 addr[2U] ;
  u8 buf[4U] ;
  struct i2c_msg msgs[2U] ;
  {
  {
  client = & bus->i2c_client;
  v = 0;
  addr[0] = 0U;
  addr[1] = 0U;
  buf[0] = 0U;
  buf[1] = 0U;
  buf[2] = 0U;
  buf[3] = 0U;
  msgs[0].addr = client->addr;
  msgs[0].flags = 0U;
  msgs[0].len = 2U;
  msgs[0].buf = (__u8 *)(& addr);
  msgs[1].addr = client->addr;
  msgs[1].flags = 1U;
  msgs[1].len = 4U;
  msgs[1].buf = (__u8 *)(& buf);
  addr[0] = (u8 )((int )reg_addr >> 8);
  addr[1] = (u8 )reg_addr;
  msgs[0].addr = 68U;
  msgs[1].addr = 68U;
  i2c_xfer(client->adapter, (struct i2c_msg *)(& msgs), 2);
  v = ((((int )buf[3] << 24) | ((int )buf[2] << 16)) | ((int )buf[1] << 8)) | (int )buf[0];
  *value = v;
  }
  return (v);
}
}
int cx25821_i2c_write(struct cx25821_i2c *bus , u16 reg_addr , int value )
{
  struct i2c_client *client ;
  int retval ;
  u8 buf[6U] ;
  struct i2c_msg msgs[1U] ;
  {
  {
  client = & bus->i2c_client;
  retval = 0;
  buf[0] = 0U;
  buf[1] = 0U;
  buf[2] = 0U;
  buf[3] = 0U;
  buf[4] = 0U;
  buf[5] = 0U;
  msgs[0].addr = client->addr;
  msgs[0].flags = 0U;
  msgs[0].len = 6U;
  msgs[0].buf = (__u8 *)(& buf);
  buf[0] = (u8 )((int )reg_addr >> 8);
  buf[1] = (u8 )reg_addr;
  buf[5] = (u8 )((unsigned int )value >> 24);
  buf[4] = (u8 )(value >> 16);
  buf[3] = (u8 )(value >> 8);
  buf[2] = (u8 )value;
  client->flags = 0U;
  msgs[0].addr = 68U;
  retval = i2c_xfer(client->adapter, (struct i2c_msg *)(& msgs), 1);
  }
  return (retval);
}
}
void ldv_io_instance_callback_7_17(unsigned int (*arg0)(struct i2c_adapter * ) , struct i2c_adapter *arg1 ) ;
void ldv_io_instance_callback_7_18(int (*arg0)(struct i2c_adapter * , struct i2c_msg * ,
                                               int ) , struct i2c_adapter *arg1 ,
                                   struct i2c_msg *arg2 , int arg3 ) ;
void ldv_io_instance_callback_7_21(int (*arg0)(struct file * , struct vm_area_struct * ) ,
                                   struct file *arg1 , struct vm_area_struct *arg2 ) ;
void ldv_io_instance_callback_7_22(unsigned int (*arg0)(struct file * , struct poll_table_struct * ) ,
                                   struct file *arg1 , struct poll_table_struct *arg2 ) ;
void ldv_io_instance_callback_7_23(long (*arg0)(struct file * , char * , unsigned long ,
                                                long long * ) , struct file *arg1 ,
                                   char *arg2 , unsigned long arg3 , long long *arg4 ) ;
void ldv_io_instance_callback_7_26(long (*arg0)(struct file * , unsigned int , unsigned long ) ,
                                   struct file *arg1 , unsigned int arg2 , unsigned long arg3 ) ;
void ldv_io_instance_callback_7_29(int (*arg0)(struct file * , void * , struct v4l2_buffer * ) ,
                                   struct file *arg1 , void *arg2 , struct v4l2_buffer *arg3 ) ;
void ldv_io_instance_callback_7_30(int (*arg0)(struct file * , void * , struct v4l2_fmtdesc * ) ,
                                   struct file *arg1 , void *arg2 , struct v4l2_fmtdesc *arg3 ) ;
void ldv_io_instance_callback_7_31(int (*arg0)(struct file * , void * , struct v4l2_fmtdesc * ) ,
                                   struct file *arg1 , void *arg2 , struct v4l2_fmtdesc *arg3 ) ;
void ldv_io_instance_callback_7_32(int (*arg0)(struct file * , void * , struct v4l2_input * ) ,
                                   struct file *arg1 , void *arg2 , struct v4l2_input *arg3 ) ;
void ldv_io_instance_callback_7_33(int (*arg0)(struct file * , void * , struct v4l2_output * ) ,
                                   struct file *arg1 , void *arg2 , struct v4l2_output *arg3 ) ;
void ldv_io_instance_callback_7_34(int (*arg0)(struct file * , void * , struct v4l2_format * ) ,
                                   struct file *arg1 , void *arg2 , struct v4l2_format *arg3 ) ;
void ldv_io_instance_callback_7_35(int (*arg0)(struct file * , void * , struct v4l2_format * ) ,
                                   struct file *arg1 , void *arg2 , struct v4l2_format *arg3 ) ;
void ldv_io_instance_callback_7_36(int (*arg0)(struct file * , void * , unsigned int * ) ,
                                   struct file *arg1 , void *arg2 , unsigned int *arg3 ) ;
void ldv_io_instance_callback_7_39(int (*arg0)(struct file * , void * , unsigned int * ) ,
                                   struct file *arg1 , void *arg2 , unsigned int *arg3 ) ;
void ldv_io_instance_callback_7_4(void (*arg0)(struct video_device * ) , struct video_device *arg1 ) ;
void ldv_io_instance_callback_7_42(int (*arg0)(struct file * , void * , unsigned long long * ) ,
                                   struct file *arg1 , void *arg2 , unsigned long long *arg3 ) ;
void ldv_io_instance_callback_7_45(int (*arg0)(struct file * , void * ) , struct file *arg1 ,
                                   void *arg2 ) ;
void ldv_io_instance_callback_7_46(int (*arg0)(struct file * , void * , struct v4l2_buffer * ) ,
                                   struct file *arg1 , void *arg2 , struct v4l2_buffer *arg3 ) ;
void ldv_io_instance_callback_7_47(int (*arg0)(struct file * , void * , struct v4l2_buffer * ) ,
                                   struct file *arg1 , void *arg2 , struct v4l2_buffer *arg3 ) ;
void ldv_io_instance_callback_7_48(int (*arg0)(struct file * , void * , struct v4l2_capability * ) ,
                                   struct file *arg1 , void *arg2 , struct v4l2_capability *arg3 ) ;
void ldv_io_instance_callback_7_49(int (*arg0)(struct file * , void * , struct v4l2_requestbuffers * ) ,
                                   struct file *arg1 , void *arg2 , struct v4l2_requestbuffers *arg3 ) ;
void ldv_io_instance_callback_7_50(int (*arg0)(struct file * , void * , struct v4l2_format * ) ,
                                   struct file *arg1 , void *arg2 , struct v4l2_format *arg3 ) ;
void ldv_io_instance_callback_7_51(int (*arg0)(struct file * , void * , struct v4l2_format * ) ,
                                   struct file *arg1 , void *arg2 , struct v4l2_format *arg3 ) ;
void ldv_io_instance_callback_7_52(int (*arg0)(struct file * , void * , unsigned int ) ,
                                   struct file *arg1 , void *arg2 , unsigned int arg3 ) ;
void ldv_io_instance_callback_7_55(int (*arg0)(struct file * , void * , unsigned int ) ,
                                   struct file *arg1 , void *arg2 , unsigned int arg3 ) ;
void ldv_io_instance_callback_7_58(int (*arg0)(struct file * , void * , unsigned long long ) ,
                                   struct file *arg1 , void *arg2 , unsigned long long arg3 ) ;
void ldv_io_instance_callback_7_61(int (*arg0)(struct file * , void * , enum v4l2_buf_type ) ,
                                   struct file *arg1 , void *arg2 , enum v4l2_buf_type arg3 ) ;
void ldv_io_instance_callback_7_62(int (*arg0)(struct file * , void * , enum v4l2_buf_type ) ,
                                   struct file *arg1 , void *arg2 , enum v4l2_buf_type arg3 ) ;
void ldv_io_instance_callback_7_63(int (*arg0)(struct v4l2_fh * , struct v4l2_event_subscription * ) ,
                                   struct v4l2_fh *arg1 , struct v4l2_event_subscription *arg2 ) ;
void ldv_io_instance_callback_7_64(int (*arg0)(struct file * , void * , struct v4l2_format * ) ,
                                   struct file *arg1 , void *arg2 , struct v4l2_format *arg3 ) ;
void ldv_io_instance_callback_7_65(int (*arg0)(struct file * , void * , struct v4l2_format * ) ,
                                   struct file *arg1 , void *arg2 , struct v4l2_format *arg3 ) ;
void ldv_io_instance_callback_7_66(int (*arg0)(struct v4l2_fh * , struct v4l2_event_subscription * ) ,
                                   struct v4l2_fh *arg1 , struct v4l2_event_subscription *arg2 ) ;
void ldv_io_instance_callback_8_17(unsigned int (*arg0)(struct i2c_adapter * ) , struct i2c_adapter *arg1 ) ;
void ldv_io_instance_callback_8_18(int (*arg0)(struct i2c_adapter * , struct i2c_msg * ,
                                               int ) , struct i2c_adapter *arg1 ,
                                   struct i2c_msg *arg2 , int arg3 ) ;
void ldv_io_instance_callback_8_26(long (*arg0)(struct file * , unsigned int , unsigned long ) ,
                                   struct file *arg1 , unsigned int arg2 , unsigned long arg3 ) ;
void ldv_io_instance_callback_8_29(int (*arg0)(struct file * , void * , struct v4l2_buffer * ) ,
                                   struct file *arg1 , void *arg2 , struct v4l2_buffer *arg3 ) ;
void ldv_io_instance_callback_8_30(int (*arg0)(struct file * , void * , struct v4l2_fmtdesc * ) ,
                                   struct file *arg1 , void *arg2 , struct v4l2_fmtdesc *arg3 ) ;
void ldv_io_instance_callback_8_31(int (*arg0)(struct file * , void * , struct v4l2_fmtdesc * ) ,
                                   struct file *arg1 , void *arg2 , struct v4l2_fmtdesc *arg3 ) ;
void ldv_io_instance_callback_8_32(int (*arg0)(struct file * , void * , struct v4l2_input * ) ,
                                   struct file *arg1 , void *arg2 , struct v4l2_input *arg3 ) ;
void ldv_io_instance_callback_8_33(int (*arg0)(struct file * , void * , struct v4l2_output * ) ,
                                   struct file *arg1 , void *arg2 , struct v4l2_output *arg3 ) ;
void ldv_io_instance_callback_8_34(int (*arg0)(struct file * , void * , struct v4l2_format * ) ,
                                   struct file *arg1 , void *arg2 , struct v4l2_format *arg3 ) ;
void ldv_io_instance_callback_8_35(int (*arg0)(struct file * , void * , struct v4l2_format * ) ,
                                   struct file *arg1 , void *arg2 , struct v4l2_format *arg3 ) ;
void ldv_io_instance_callback_8_36(int (*arg0)(struct file * , void * , unsigned int * ) ,
                                   struct file *arg1 , void *arg2 , unsigned int *arg3 ) ;
void ldv_io_instance_callback_8_39(int (*arg0)(struct file * , void * , unsigned int * ) ,
                                   struct file *arg1 , void *arg2 , unsigned int *arg3 ) ;
void ldv_io_instance_callback_8_4(void (*arg0)(struct video_device * ) , struct video_device *arg1 ) ;
void ldv_io_instance_callback_8_42(int (*arg0)(struct file * , void * , unsigned long long * ) ,
                                   struct file *arg1 , void *arg2 , unsigned long long *arg3 ) ;
void ldv_io_instance_callback_8_45(int (*arg0)(struct file * , void * ) , struct file *arg1 ,
                                   void *arg2 ) ;
void ldv_io_instance_callback_8_46(int (*arg0)(struct file * , void * , struct v4l2_buffer * ) ,
                                   struct file *arg1 , void *arg2 , struct v4l2_buffer *arg3 ) ;
void ldv_io_instance_callback_8_47(int (*arg0)(struct file * , void * , struct v4l2_buffer * ) ,
                                   struct file *arg1 , void *arg2 , struct v4l2_buffer *arg3 ) ;
void ldv_io_instance_callback_8_48(int (*arg0)(struct file * , void * , struct v4l2_capability * ) ,
                                   struct file *arg1 , void *arg2 , struct v4l2_capability *arg3 ) ;
void ldv_io_instance_callback_8_49(int (*arg0)(struct file * , void * , struct v4l2_requestbuffers * ) ,
                                   struct file *arg1 , void *arg2 , struct v4l2_requestbuffers *arg3 ) ;
void ldv_io_instance_callback_8_50(int (*arg0)(struct file * , void * , struct v4l2_format * ) ,
                                   struct file *arg1 , void *arg2 , struct v4l2_format *arg3 ) ;
void ldv_io_instance_callback_8_51(int (*arg0)(struct file * , void * , struct v4l2_format * ) ,
                                   struct file *arg1 , void *arg2 , struct v4l2_format *arg3 ) ;
void ldv_io_instance_callback_8_52(int (*arg0)(struct file * , void * , unsigned int ) ,
                                   struct file *arg1 , void *arg2 , unsigned int arg3 ) ;
void ldv_io_instance_callback_8_55(int (*arg0)(struct file * , void * , unsigned int ) ,
                                   struct file *arg1 , void *arg2 , unsigned int arg3 ) ;
void ldv_io_instance_callback_8_58(int (*arg0)(struct file * , void * , unsigned long long ) ,
                                   struct file *arg1 , void *arg2 , unsigned long long arg3 ) ;
void ldv_io_instance_callback_8_61(int (*arg0)(struct file * , void * , enum v4l2_buf_type ) ,
                                   struct file *arg1 , void *arg2 , enum v4l2_buf_type arg3 ) ;
void ldv_io_instance_callback_8_62(int (*arg0)(struct file * , void * , enum v4l2_buf_type ) ,
                                   struct file *arg1 , void *arg2 , enum v4l2_buf_type arg3 ) ;
void ldv_io_instance_callback_8_63(int (*arg0)(struct v4l2_fh * , struct v4l2_event_subscription * ) ,
                                   struct v4l2_fh *arg1 , struct v4l2_event_subscription *arg2 ) ;
void ldv_io_instance_callback_8_64(int (*arg0)(struct file * , void * , struct v4l2_format * ) ,
                                   struct file *arg1 , void *arg2 , struct v4l2_format *arg3 ) ;
void ldv_io_instance_callback_8_65(int (*arg0)(struct file * , void * , struct v4l2_format * ) ,
                                   struct file *arg1 , void *arg2 , struct v4l2_format *arg3 ) ;
void ldv_io_instance_callback_8_66(int (*arg0)(struct v4l2_fh * , struct v4l2_event_subscription * ) ,
                                   struct v4l2_fh *arg1 , struct v4l2_event_subscription *arg2 ) ;
void ldv_io_instance_callback_8_67(long (*arg0)(struct file * , char * , unsigned long ,
                                                long long * ) , struct file *arg1 ,
                                   char *arg2 , unsigned long arg3 , long long *arg4 ) ;
int ldv_io_instance_probe_7_11(int (*arg0)(struct file * ) , struct file *arg1 ) ;
int ldv_io_instance_probe_8_11(int (*arg0)(struct file * ) , struct file *arg1 ) ;
void ldv_io_instance_release_7_2(int (*arg0)(struct file * ) , struct file *arg1 ) ;
void ldv_io_instance_release_8_2(int (*arg0)(struct file * ) , struct file *arg1 ) ;
void (*ldv_7_callback_func_1_ptr)(struct video_device * ) ;
unsigned int (*ldv_7_callback_functionality)(struct i2c_adapter * ) ;
int (*ldv_7_callback_master_xfer)(struct i2c_adapter * , struct i2c_msg * , int ) ;
int (*ldv_7_callback_mmap)(struct file * , struct vm_area_struct * ) ;
unsigned int (*ldv_7_callback_poll)(struct file * , struct poll_table_struct * ) ;
long (*ldv_7_callback_read)(struct file * , char * , unsigned long , long long * ) ;
long (*ldv_7_callback_unlocked_ioctl)(struct file * , unsigned int , unsigned long ) ;
int (*ldv_7_callback_vidioc_dqbuf)(struct file * , void * , struct v4l2_buffer * ) ;
int (*ldv_7_callback_vidioc_enum_fmt_vid_cap)(struct file * , void * , struct v4l2_fmtdesc * ) ;
int (*ldv_7_callback_vidioc_enum_fmt_vid_out)(struct file * , void * , struct v4l2_fmtdesc * ) ;
int (*ldv_7_callback_vidioc_enum_input)(struct file * , void * , struct v4l2_input * ) ;
int (*ldv_7_callback_vidioc_enum_output)(struct file * , void * , struct v4l2_output * ) ;
int (*ldv_7_callback_vidioc_g_fmt_vid_cap)(struct file * , void * , struct v4l2_format * ) ;
int (*ldv_7_callback_vidioc_g_fmt_vid_out)(struct file * , void * , struct v4l2_format * ) ;
int (*ldv_7_callback_vidioc_g_input)(struct file * , void * , unsigned int * ) ;
int (*ldv_7_callback_vidioc_g_output)(struct file * , void * , unsigned int * ) ;
int (*ldv_7_callback_vidioc_g_std)(struct file * , void * , unsigned long long * ) ;
int (*ldv_7_callback_vidioc_log_status)(struct file * , void * ) ;
int (*ldv_7_callback_vidioc_qbuf)(struct file * , void * , struct v4l2_buffer * ) ;
int (*ldv_7_callback_vidioc_querybuf)(struct file * , void * , struct v4l2_buffer * ) ;
int (*ldv_7_callback_vidioc_querycap)(struct file * , void * , struct v4l2_capability * ) ;
int (*ldv_7_callback_vidioc_reqbufs)(struct file * , void * , struct v4l2_requestbuffers * ) ;
int (*ldv_7_callback_vidioc_s_fmt_vid_cap)(struct file * , void * , struct v4l2_format * ) ;
int (*ldv_7_callback_vidioc_s_fmt_vid_out)(struct file * , void * , struct v4l2_format * ) ;
int (*ldv_7_callback_vidioc_s_input)(struct file * , void * , unsigned int ) ;
int (*ldv_7_callback_vidioc_s_output)(struct file * , void * , unsigned int ) ;
int (*ldv_7_callback_vidioc_s_std)(struct file * , void * , unsigned long long ) ;
int (*ldv_7_callback_vidioc_streamoff)(struct file * , void * , enum v4l2_buf_type ) ;
int (*ldv_7_callback_vidioc_streamon)(struct file * , void * , enum v4l2_buf_type ) ;
int (*ldv_7_callback_vidioc_subscribe_event)(struct v4l2_fh * , struct v4l2_event_subscription * ) ;
int (*ldv_7_callback_vidioc_try_fmt_vid_cap)(struct file * , void * , struct v4l2_format * ) ;
int (*ldv_7_callback_vidioc_try_fmt_vid_out)(struct file * , void * , struct v4l2_format * ) ;
int (*ldv_7_callback_vidioc_unsubscribe_event)(struct v4l2_fh * , struct v4l2_event_subscription * ) ;
struct v4l2_file_operations *ldv_7_container_v4l2_file_operations ;
struct i2c_adapter *ldv_7_resource_struct_i2c_adapter ;
struct video_device *ldv_7_resource_struct_video_device ;
void (*ldv_8_callback_func_1_ptr)(struct video_device * ) ;
unsigned int (*ldv_8_callback_functionality)(struct i2c_adapter * ) ;
int (*ldv_8_callback_master_xfer)(struct i2c_adapter * , struct i2c_msg * , int ) ;
long (*ldv_8_callback_unlocked_ioctl)(struct file * , unsigned int , unsigned long ) ;
int (*ldv_8_callback_vidioc_dqbuf)(struct file * , void * , struct v4l2_buffer * ) ;
int (*ldv_8_callback_vidioc_enum_fmt_vid_cap)(struct file * , void * , struct v4l2_fmtdesc * ) ;
int (*ldv_8_callback_vidioc_enum_fmt_vid_out)(struct file * , void * , struct v4l2_fmtdesc * ) ;
int (*ldv_8_callback_vidioc_enum_input)(struct file * , void * , struct v4l2_input * ) ;
int (*ldv_8_callback_vidioc_enum_output)(struct file * , void * , struct v4l2_output * ) ;
int (*ldv_8_callback_vidioc_g_fmt_vid_cap)(struct file * , void * , struct v4l2_format * ) ;
int (*ldv_8_callback_vidioc_g_fmt_vid_out)(struct file * , void * , struct v4l2_format * ) ;
int (*ldv_8_callback_vidioc_g_input)(struct file * , void * , unsigned int * ) ;
int (*ldv_8_callback_vidioc_g_output)(struct file * , void * , unsigned int * ) ;
int (*ldv_8_callback_vidioc_g_std)(struct file * , void * , unsigned long long * ) ;
int (*ldv_8_callback_vidioc_log_status)(struct file * , void * ) ;
int (*ldv_8_callback_vidioc_qbuf)(struct file * , void * , struct v4l2_buffer * ) ;
int (*ldv_8_callback_vidioc_querybuf)(struct file * , void * , struct v4l2_buffer * ) ;
int (*ldv_8_callback_vidioc_querycap)(struct file * , void * , struct v4l2_capability * ) ;
int (*ldv_8_callback_vidioc_reqbufs)(struct file * , void * , struct v4l2_requestbuffers * ) ;
int (*ldv_8_callback_vidioc_s_fmt_vid_cap)(struct file * , void * , struct v4l2_format * ) ;
int (*ldv_8_callback_vidioc_s_fmt_vid_out)(struct file * , void * , struct v4l2_format * ) ;
int (*ldv_8_callback_vidioc_s_input)(struct file * , void * , unsigned int ) ;
int (*ldv_8_callback_vidioc_s_output)(struct file * , void * , unsigned int ) ;
int (*ldv_8_callback_vidioc_s_std)(struct file * , void * , unsigned long long ) ;
int (*ldv_8_callback_vidioc_streamoff)(struct file * , void * , enum v4l2_buf_type ) ;
int (*ldv_8_callback_vidioc_streamon)(struct file * , void * , enum v4l2_buf_type ) ;
int (*ldv_8_callback_vidioc_subscribe_event)(struct v4l2_fh * , struct v4l2_event_subscription * ) ;
int (*ldv_8_callback_vidioc_try_fmt_vid_cap)(struct file * , void * , struct v4l2_format * ) ;
int (*ldv_8_callback_vidioc_try_fmt_vid_out)(struct file * , void * , struct v4l2_format * ) ;
int (*ldv_8_callback_vidioc_unsubscribe_event)(struct v4l2_fh * , struct v4l2_event_subscription * ) ;
long (*ldv_8_callback_write)(struct file * , char * , unsigned long , long long * ) ;
struct v4l2_file_operations *ldv_8_container_v4l2_file_operations ;
struct i2c_adapter *ldv_8_resource_struct_i2c_adapter ;
struct video_device *ldv_8_resource_struct_video_device ;
int ldv_statevar_7 ;
int ldv_statevar_8 ;
unsigned int (*ldv_7_callback_functionality)(struct i2c_adapter * ) = & cx25821_functionality;
int (*ldv_7_callback_master_xfer)(struct i2c_adapter * , struct i2c_msg * , int ) = & i2c_xfer;
unsigned int (*ldv_8_callback_functionality)(struct i2c_adapter * ) = & cx25821_functionality;
int (*ldv_8_callback_master_xfer)(struct i2c_adapter * , struct i2c_msg * , int ) = & i2c_xfer;
void ldv_io_instance_callback_7_17(unsigned int (*arg0)(struct i2c_adapter * ) , struct i2c_adapter *arg1 )
{
  {
  {
  cx25821_functionality(arg1);
  }
  return;
}
}
void ldv_io_instance_callback_7_18(int (*arg0)(struct i2c_adapter * , struct i2c_msg * ,
                                               int ) , struct i2c_adapter *arg1 ,
                                   struct i2c_msg *arg2 , int arg3 )
{
  {
  {
  i2c_xfer(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_io_instance_callback_8_17(unsigned int (*arg0)(struct i2c_adapter * ) , struct i2c_adapter *arg1 )
{
  {
  {
  cx25821_functionality(arg1);
  }
  return;
}
}
void ldv_io_instance_callback_8_18(int (*arg0)(struct i2c_adapter * , struct i2c_msg * ,
                                               int ) , struct i2c_adapter *arg1 ,
                                   struct i2c_msg *arg2 , int arg3 )
{
  {
  {
  i2c_xfer(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_switch_automaton_state_7_14(void)
{
  {
  ldv_statevar_7 = 13;
  return;
}
}
void ldv_switch_automaton_state_7_5(void)
{
  {
  ldv_7_ret_default = 1;
  ldv_statevar_7 = 14;
  return;
}
}
void ldv_switch_automaton_state_8_14(void)
{
  {
  ldv_statevar_8 = 13;
  return;
}
}
void ldv_switch_automaton_state_8_5(void)
{
  {
  ldv_8_ret_default = 1;
  ldv_statevar_8 = 14;
  return;
}
}
void ldv_v4l2_file_operations_io_instance_7(void *arg0 )
{
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
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
  int tmp___17 ;
  void *tmp___18 ;
  void *tmp___19 ;
  void *tmp___20 ;
  void *tmp___21 ;
  void *tmp___22 ;
  void *tmp___23 ;
  void *tmp___24 ;
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
  if (ldv_statevar_7 == 6) {
    goto case_6;
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
  if (ldv_statevar_7 == 14) {
    goto case_14;
  } else {
  }
  if (ldv_statevar_7 == 17) {
    goto case_17;
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
  if (ldv_statevar_7 == 24) {
    goto case_24;
  } else {
  }
  if (ldv_statevar_7 == 27) {
    goto case_27;
  } else {
  }
  if (ldv_statevar_7 == 29) {
    goto case_29;
  } else {
  }
  if (ldv_statevar_7 == 30) {
    goto case_30;
  } else {
  }
  if (ldv_statevar_7 == 31) {
    goto case_31;
  } else {
  }
  if (ldv_statevar_7 == 32) {
    goto case_32;
  } else {
  }
  if (ldv_statevar_7 == 33) {
    goto case_33;
  } else {
  }
  if (ldv_statevar_7 == 34) {
    goto case_34;
  } else {
  }
  if (ldv_statevar_7 == 35) {
    goto case_35;
  } else {
  }
  if (ldv_statevar_7 == 37) {
    goto case_37;
  } else {
  }
  if (ldv_statevar_7 == 40) {
    goto case_40;
  } else {
  }
  if (ldv_statevar_7 == 43) {
    goto case_43;
  } else {
  }
  if (ldv_statevar_7 == 45) {
    goto case_45;
  } else {
  }
  if (ldv_statevar_7 == 46) {
    goto case_46;
  } else {
  }
  if (ldv_statevar_7 == 47) {
    goto case_47;
  } else {
  }
  if (ldv_statevar_7 == 48) {
    goto case_48;
  } else {
  }
  if (ldv_statevar_7 == 49) {
    goto case_49;
  } else {
  }
  if (ldv_statevar_7 == 50) {
    goto case_50;
  } else {
  }
  if (ldv_statevar_7 == 51) {
    goto case_51;
  } else {
  }
  if (ldv_statevar_7 == 53) {
    goto case_53;
  } else {
  }
  if (ldv_statevar_7 == 56) {
    goto case_56;
  } else {
  }
  if (ldv_statevar_7 == 59) {
    goto case_59;
  } else {
  }
  if (ldv_statevar_7 == 61) {
    goto case_61;
  } else {
  }
  if (ldv_statevar_7 == 62) {
    goto case_62;
  } else {
  }
  if (ldv_statevar_7 == 63) {
    goto case_63;
  } else {
  }
  if (ldv_statevar_7 == 64) {
    goto case_64;
  } else {
  }
  if (ldv_statevar_7 == 65) {
    goto case_65;
  } else {
  }
  if (ldv_statevar_7 == 66) {
    goto case_66;
  } else {
  }
  if (ldv_statevar_7 == 68) {
    goto case_68;
  } else {
  }
  goto switch_default;
  case_1:
  {
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    ldv_statevar_7 = 6;
  } else {
    ldv_statevar_7 = 11;
  }
  goto ldv_36215;
  case_2:
  {
  ldv_io_instance_release_7_2(ldv_7_container_v4l2_file_operations->release, ldv_7_resource_file);
  ldv_statevar_7 = 1;
  }
  goto ldv_36215;
  case_3:
  {
  ldv_statevar_7 = ldv_switch_3();
  }
  goto ldv_36215;
  case_4:
  {
  ldv_io_instance_callback_7_4(ldv_7_callback_func_1_ptr, ldv_7_resource_struct_video_device);
  ldv_statevar_7 = 3;
  }
  goto ldv_36215;
  case_6:
  {
  ldv_free((void *)ldv_7_resource_file);
  ldv_free((void *)ldv_7_resource_struct_i2c_adapter);
  ldv_free((void *)ldv_7_resource_struct_i2c_msg_ptr);
  ldv_free((void *)ldv_7_resource_struct_poll_table_struct_ptr);
  ldv_free((void *)ldv_7_resource_struct_v4l2_buffer_ptr);
  ldv_free((void *)ldv_7_resource_struct_v4l2_capability_ptr);
  ldv_free((void *)ldv_7_resource_struct_v4l2_event_subscription_ptr);
  ldv_free((void *)ldv_7_resource_struct_v4l2_fh_ptr);
  ldv_free((void *)ldv_7_resource_struct_v4l2_fmtdesc_ptr);
  ldv_free((void *)ldv_7_resource_struct_v4l2_format_ptr);
  ldv_free((void *)ldv_7_resource_struct_v4l2_input_ptr);
  ldv_free((void *)ldv_7_resource_struct_v4l2_output_ptr);
  ldv_free((void *)ldv_7_resource_struct_v4l2_requestbuffers_ptr);
  ldv_free((void *)ldv_7_resource_struct_video_device);
  ldv_free((void *)ldv_7_resource_struct_vm_area_struct_ptr);
  ldv_7_ret_default = 1;
  ldv_statevar_7 = 14;
  }
  goto ldv_36215;
  case_8:
  {
  ldv_assume(ldv_7_ret_default != 0);
  tmp___0 = ldv_undef_int();
  }
  if (tmp___0 != 0) {
    ldv_statevar_7 = 6;
  } else {
    ldv_statevar_7 = 11;
  }
  goto ldv_36215;
  case_10:
  {
  ldv_assume(ldv_7_ret_default == 0);
  ldv_statevar_7 = ldv_switch_3();
  }
  goto ldv_36215;
  case_11:
  {
  ldv_7_ret_default = ldv_io_instance_probe_7_11(ldv_7_container_v4l2_file_operations->open,
                                                 ldv_7_resource_file);
  ldv_7_ret_default = ldv_filter_err_code(ldv_7_ret_default);
  tmp___1 = ldv_undef_int();
  }
  if (tmp___1 != 0) {
    ldv_statevar_7 = 8;
  } else {
    ldv_statevar_7 = 10;
  }
  goto ldv_36215;
  case_13:
  {
  tmp___2 = ldv_xmalloc(520UL);
  ldv_7_resource_file = (struct file *)tmp___2;
  tmp___3 = ldv_xmalloc(1904UL);
  ldv_7_resource_struct_i2c_adapter = (struct i2c_adapter *)tmp___3;
  tmp___4 = ldv_xmalloc(16UL);
  ldv_7_resource_struct_i2c_msg_ptr = (struct i2c_msg *)tmp___4;
  tmp___5 = ldv_xmalloc(16UL);
  ldv_7_resource_struct_poll_table_struct_ptr = (struct poll_table_struct *)tmp___5;
  tmp___6 = ldv_xmalloc(88UL);
  ldv_7_resource_struct_v4l2_buffer_ptr = (struct v4l2_buffer *)tmp___6;
  tmp___7 = ldv_xmalloc(104UL);
  ldv_7_resource_struct_v4l2_capability_ptr = (struct v4l2_capability *)tmp___7;
  tmp___8 = ldv_xmalloc(32UL);
  ldv_7_resource_struct_v4l2_event_subscription_ptr = (struct v4l2_event_subscription *)tmp___8;
  tmp___9 = ldv_xmalloc(176UL);
  ldv_7_resource_struct_v4l2_fh_ptr = (struct v4l2_fh *)tmp___9;
  tmp___10 = ldv_xmalloc(64UL);
  ldv_7_resource_struct_v4l2_fmtdesc_ptr = (struct v4l2_fmtdesc *)tmp___10;
  tmp___11 = ldv_xmalloc(208UL);
  ldv_7_resource_struct_v4l2_format_ptr = (struct v4l2_format *)tmp___11;
  tmp___12 = ldv_xmalloc(80UL);
  ldv_7_resource_struct_v4l2_input_ptr = (struct v4l2_input *)tmp___12;
  tmp___13 = ldv_xmalloc(72UL);
  ldv_7_resource_struct_v4l2_output_ptr = (struct v4l2_output *)tmp___13;
  tmp___14 = ldv_xmalloc(20UL);
  ldv_7_resource_struct_v4l2_requestbuffers_ptr = (struct v4l2_requestbuffers *)tmp___14;
  tmp___15 = ldv_xmalloc(1808UL);
  ldv_7_resource_struct_video_device = (struct video_device *)tmp___15;
  tmp___16 = ldv_xmalloc(184UL);
  ldv_7_resource_struct_vm_area_struct_ptr = (struct vm_area_struct *)tmp___16;
  tmp___17 = ldv_undef_int();
  }
  if (tmp___17 != 0) {
    ldv_statevar_7 = 6;
  } else {
    ldv_statevar_7 = 11;
  }
  goto ldv_36215;
  case_14: ;
  goto ldv_36215;
  case_17:
  {
  ldv_io_instance_callback_7_17(ldv_7_callback_functionality, ldv_7_resource_struct_i2c_adapter);
  ldv_statevar_7 = 3;
  }
  goto ldv_36215;
  case_19:
  {
  ldv_io_instance_callback_7_18(ldv_7_callback_master_xfer, ldv_7_resource_struct_i2c_adapter,
                                ldv_7_resource_struct_i2c_msg_ptr, ldv_7_ldv_param_18_2_default);
  ldv_statevar_7 = 3;
  }
  goto ldv_36215;
  case_21:
  {
  ldv_io_instance_callback_7_21(ldv_7_callback_mmap, ldv_7_resource_file, ldv_7_resource_struct_vm_area_struct_ptr);
  ldv_statevar_7 = 3;
  }
  goto ldv_36215;
  case_22:
  {
  ldv_io_instance_callback_7_22(ldv_7_callback_poll, ldv_7_resource_file, ldv_7_resource_struct_poll_table_struct_ptr);
  ldv_statevar_7 = 3;
  }
  goto ldv_36215;
  case_24:
  {
  tmp___18 = ldv_xmalloc(1UL);
  ldv_7_ldv_param_23_1_default = (char *)tmp___18;
  tmp___19 = ldv_xmalloc(8UL);
  ldv_7_ldv_param_23_3_default = (long long *)tmp___19;
  ldv_io_instance_callback_7_23(ldv_7_callback_read, ldv_7_resource_file, ldv_7_ldv_param_23_1_default,
                                ldv_7_ldv_param_23_2_default, ldv_7_ldv_param_23_3_default);
  ldv_free((void *)ldv_7_ldv_param_23_1_default);
  ldv_free((void *)ldv_7_ldv_param_23_3_default);
  ldv_statevar_7 = 3;
  }
  goto ldv_36215;
  case_27:
  {
  ldv_io_instance_callback_7_26(ldv_7_callback_unlocked_ioctl, ldv_7_resource_file,
                                ldv_7_ldv_param_26_1_default, ldv_7_ldv_param_26_2_default);
  ldv_statevar_7 = 3;
  }
  goto ldv_36215;
  case_29:
  {
  ldv_io_instance_callback_7_29(ldv_7_callback_vidioc_dqbuf, ldv_7_resource_file,
                                (void *)ldv_7_resource_struct_i2c_msg_ptr, ldv_7_resource_struct_v4l2_buffer_ptr);
  ldv_statevar_7 = 3;
  }
  goto ldv_36215;
  case_30:
  {
  ldv_io_instance_callback_7_30(ldv_7_callback_vidioc_enum_fmt_vid_cap, ldv_7_resource_file,
                                (void *)ldv_7_resource_struct_i2c_msg_ptr, ldv_7_resource_struct_v4l2_fmtdesc_ptr);
  ldv_statevar_7 = 3;
  }
  goto ldv_36215;
  case_31:
  {
  ldv_io_instance_callback_7_31(ldv_7_callback_vidioc_enum_fmt_vid_out, ldv_7_resource_file,
                                (void *)ldv_7_resource_struct_i2c_msg_ptr, ldv_7_resource_struct_v4l2_fmtdesc_ptr);
  ldv_statevar_7 = 3;
  }
  goto ldv_36215;
  case_32:
  {
  ldv_io_instance_callback_7_32(ldv_7_callback_vidioc_enum_input, ldv_7_resource_file,
                                (void *)ldv_7_resource_struct_i2c_msg_ptr, ldv_7_resource_struct_v4l2_input_ptr);
  ldv_statevar_7 = 3;
  }
  goto ldv_36215;
  case_33:
  {
  ldv_io_instance_callback_7_33(ldv_7_callback_vidioc_enum_output, ldv_7_resource_file,
                                (void *)ldv_7_resource_struct_i2c_msg_ptr, ldv_7_resource_struct_v4l2_output_ptr);
  ldv_statevar_7 = 3;
  }
  goto ldv_36215;
  case_34:
  {
  ldv_io_instance_callback_7_34(ldv_7_callback_vidioc_g_fmt_vid_cap, ldv_7_resource_file,
                                (void *)ldv_7_resource_struct_i2c_msg_ptr, ldv_7_resource_struct_v4l2_format_ptr);
  ldv_statevar_7 = 3;
  }
  goto ldv_36215;
  case_35:
  {
  ldv_io_instance_callback_7_35(ldv_7_callback_vidioc_g_fmt_vid_out, ldv_7_resource_file,
                                (void *)ldv_7_resource_struct_i2c_msg_ptr, ldv_7_resource_struct_v4l2_format_ptr);
  ldv_statevar_7 = 3;
  }
  goto ldv_36215;
  case_37:
  {
  tmp___20 = ldv_xmalloc(4UL);
  ldv_7_ldv_param_36_2_default = (unsigned int *)tmp___20;
  ldv_io_instance_callback_7_36(ldv_7_callback_vidioc_g_input, ldv_7_resource_file,
                                (void *)ldv_7_resource_struct_i2c_msg_ptr, ldv_7_ldv_param_36_2_default);
  ldv_free((void *)ldv_7_ldv_param_36_2_default);
  ldv_statevar_7 = 3;
  }
  goto ldv_36215;
  case_40:
  {
  tmp___21 = ldv_xmalloc(4UL);
  ldv_7_ldv_param_39_2_default = (unsigned int *)tmp___21;
  ldv_io_instance_callback_7_39(ldv_7_callback_vidioc_g_output, ldv_7_resource_file,
                                (void *)ldv_7_resource_struct_i2c_msg_ptr, ldv_7_ldv_param_39_2_default);
  ldv_free((void *)ldv_7_ldv_param_39_2_default);
  ldv_statevar_7 = 3;
  }
  goto ldv_36215;
  case_43:
  {
  tmp___22 = ldv_xmalloc(8UL);
  ldv_7_ldv_param_42_2_default = (unsigned long long *)tmp___22;
  ldv_io_instance_callback_7_42(ldv_7_callback_vidioc_g_std, ldv_7_resource_file,
                                (void *)ldv_7_resource_struct_i2c_msg_ptr, ldv_7_ldv_param_42_2_default);
  ldv_free((void *)ldv_7_ldv_param_42_2_default);
  ldv_statevar_7 = 3;
  }
  goto ldv_36215;
  case_45:
  {
  ldv_io_instance_callback_7_45(ldv_7_callback_vidioc_log_status, ldv_7_resource_file,
                                (void *)ldv_7_resource_struct_i2c_msg_ptr);
  ldv_statevar_7 = 3;
  }
  goto ldv_36215;
  case_46:
  {
  ldv_io_instance_callback_7_46(ldv_7_callback_vidioc_qbuf, ldv_7_resource_file, (void *)ldv_7_resource_struct_i2c_msg_ptr,
                                ldv_7_resource_struct_v4l2_buffer_ptr);
  ldv_statevar_7 = 3;
  }
  goto ldv_36215;
  case_47:
  {
  ldv_io_instance_callback_7_47(ldv_7_callback_vidioc_querybuf, ldv_7_resource_file,
                                (void *)ldv_7_resource_struct_i2c_msg_ptr, ldv_7_resource_struct_v4l2_buffer_ptr);
  ldv_statevar_7 = 3;
  }
  goto ldv_36215;
  case_48:
  {
  ldv_io_instance_callback_7_48(ldv_7_callback_vidioc_querycap, ldv_7_resource_file,
                                (void *)ldv_7_resource_struct_i2c_msg_ptr, ldv_7_resource_struct_v4l2_capability_ptr);
  ldv_statevar_7 = 3;
  }
  goto ldv_36215;
  case_49:
  {
  ldv_io_instance_callback_7_49(ldv_7_callback_vidioc_reqbufs, ldv_7_resource_file,
                                (void *)ldv_7_resource_struct_i2c_msg_ptr, ldv_7_resource_struct_v4l2_requestbuffers_ptr);
  ldv_statevar_7 = 3;
  }
  goto ldv_36215;
  case_50:
  {
  ldv_io_instance_callback_7_50(ldv_7_callback_vidioc_s_fmt_vid_cap, ldv_7_resource_file,
                                (void *)ldv_7_resource_struct_i2c_msg_ptr, ldv_7_resource_struct_v4l2_format_ptr);
  ldv_statevar_7 = 3;
  }
  goto ldv_36215;
  case_51:
  {
  ldv_io_instance_callback_7_51(ldv_7_callback_vidioc_s_fmt_vid_out, ldv_7_resource_file,
                                (void *)ldv_7_resource_struct_i2c_msg_ptr, ldv_7_resource_struct_v4l2_format_ptr);
  ldv_statevar_7 = 3;
  }
  goto ldv_36215;
  case_53:
  {
  ldv_io_instance_callback_7_52(ldv_7_callback_vidioc_s_input, ldv_7_resource_file,
                                (void *)ldv_7_resource_struct_i2c_msg_ptr, ldv_7_ldv_param_52_2_default);
  ldv_statevar_7 = 3;
  }
  goto ldv_36215;
  case_56:
  {
  ldv_io_instance_callback_7_55(ldv_7_callback_vidioc_s_output, ldv_7_resource_file,
                                (void *)ldv_7_resource_struct_i2c_msg_ptr, ldv_7_ldv_param_55_2_default);
  ldv_statevar_7 = 3;
  }
  goto ldv_36215;
  case_59:
  {
  ldv_io_instance_callback_7_58(ldv_7_callback_vidioc_s_std, ldv_7_resource_file,
                                (void *)ldv_7_resource_struct_i2c_msg_ptr, ldv_7_ldv_param_58_2_default);
  ldv_statevar_7 = 3;
  }
  goto ldv_36215;
  case_61:
  {
  ldv_io_instance_callback_7_61(ldv_7_callback_vidioc_streamoff, ldv_7_resource_file,
                                (void *)ldv_7_resource_struct_i2c_msg_ptr, ldv_7_resource_enum_v4l2_buf_type);
  ldv_statevar_7 = 3;
  }
  goto ldv_36215;
  case_62:
  {
  ldv_io_instance_callback_7_62(ldv_7_callback_vidioc_streamon, ldv_7_resource_file,
                                (void *)ldv_7_resource_struct_i2c_msg_ptr, ldv_7_resource_enum_v4l2_buf_type);
  ldv_statevar_7 = 3;
  }
  goto ldv_36215;
  case_63:
  {
  ldv_io_instance_callback_7_63(ldv_7_callback_vidioc_subscribe_event, ldv_7_resource_struct_v4l2_fh_ptr,
                                ldv_7_resource_struct_v4l2_event_subscription_ptr);
  ldv_statevar_7 = 3;
  }
  goto ldv_36215;
  case_64:
  {
  ldv_io_instance_callback_7_64(ldv_7_callback_vidioc_try_fmt_vid_cap, ldv_7_resource_file,
                                (void *)ldv_7_resource_struct_i2c_msg_ptr, ldv_7_resource_struct_v4l2_format_ptr);
  ldv_statevar_7 = 3;
  }
  goto ldv_36215;
  case_65:
  {
  ldv_io_instance_callback_7_65(ldv_7_callback_vidioc_try_fmt_vid_out, ldv_7_resource_file,
                                (void *)ldv_7_resource_struct_i2c_msg_ptr, ldv_7_resource_struct_v4l2_format_ptr);
  ldv_statevar_7 = 3;
  }
  goto ldv_36215;
  case_66:
  {
  ldv_io_instance_callback_7_66(ldv_7_callback_vidioc_unsubscribe_event, ldv_7_resource_struct_v4l2_fh_ptr,
                                ldv_7_resource_struct_v4l2_event_subscription_ptr);
  ldv_statevar_7 = 3;
  }
  goto ldv_36215;
  case_68:
  {
  tmp___23 = ldv_xmalloc(1UL);
  ldv_7_ldv_param_67_1_default = (char *)tmp___23;
  tmp___24 = ldv_xmalloc(8UL);
  ldv_7_ldv_param_67_3_default = (long long *)tmp___24;
  }
  if ((unsigned long )ldv_7_callback_write != (unsigned long )((long (*)(struct file * ,
                                                                         char * ,
                                                                         unsigned long ,
                                                                         long long * ))0)) {
    {
    ldv_io_instance_callback_7_67(ldv_7_callback_write, ldv_7_resource_file, ldv_7_ldv_param_67_1_default,
                                  ldv_7_ldv_param_67_2_default, ldv_7_ldv_param_67_3_default);
    }
  } else {
  }
  {
  ldv_free((void *)ldv_7_ldv_param_67_1_default);
  ldv_free((void *)ldv_7_ldv_param_67_3_default);
  ldv_statevar_7 = 3;
  }
  goto ldv_36215;
  switch_default: ;
  switch_break: ;
  }
  ldv_36215: ;
  return;
}
}
void ldv_v4l2_file_operations_io_instance_8(void *arg0 )
{
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
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
  int tmp___17 ;
  void *tmp___18 ;
  void *tmp___19 ;
  void *tmp___20 ;
  void *tmp___21 ;
  void *tmp___22 ;
  void *tmp___23 ;
  void *tmp___24 ;
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
  if (ldv_statevar_8 == 6) {
    goto case_6;
  } else {
  }
  if (ldv_statevar_8 == 8) {
    goto case_8;
  } else {
  }
  if (ldv_statevar_8 == 10) {
    goto case_10;
  } else {
  }
  if (ldv_statevar_8 == 11) {
    goto case_11;
  } else {
  }
  if (ldv_statevar_8 == 13) {
    goto case_13;
  } else {
  }
  if (ldv_statevar_8 == 14) {
    goto case_14;
  } else {
  }
  if (ldv_statevar_8 == 17) {
    goto case_17;
  } else {
  }
  if (ldv_statevar_8 == 19) {
    goto case_19;
  } else {
  }
  if (ldv_statevar_8 == 21) {
    goto case_21;
  } else {
  }
  if (ldv_statevar_8 == 22) {
    goto case_22;
  } else {
  }
  if (ldv_statevar_8 == 24) {
    goto case_24;
  } else {
  }
  if (ldv_statevar_8 == 27) {
    goto case_27;
  } else {
  }
  if (ldv_statevar_8 == 29) {
    goto case_29;
  } else {
  }
  if (ldv_statevar_8 == 30) {
    goto case_30;
  } else {
  }
  if (ldv_statevar_8 == 31) {
    goto case_31;
  } else {
  }
  if (ldv_statevar_8 == 32) {
    goto case_32;
  } else {
  }
  if (ldv_statevar_8 == 33) {
    goto case_33;
  } else {
  }
  if (ldv_statevar_8 == 34) {
    goto case_34;
  } else {
  }
  if (ldv_statevar_8 == 35) {
    goto case_35;
  } else {
  }
  if (ldv_statevar_8 == 37) {
    goto case_37;
  } else {
  }
  if (ldv_statevar_8 == 40) {
    goto case_40;
  } else {
  }
  if (ldv_statevar_8 == 43) {
    goto case_43;
  } else {
  }
  if (ldv_statevar_8 == 45) {
    goto case_45;
  } else {
  }
  if (ldv_statevar_8 == 46) {
    goto case_46;
  } else {
  }
  if (ldv_statevar_8 == 47) {
    goto case_47;
  } else {
  }
  if (ldv_statevar_8 == 48) {
    goto case_48;
  } else {
  }
  if (ldv_statevar_8 == 49) {
    goto case_49;
  } else {
  }
  if (ldv_statevar_8 == 50) {
    goto case_50;
  } else {
  }
  if (ldv_statevar_8 == 51) {
    goto case_51;
  } else {
  }
  if (ldv_statevar_8 == 53) {
    goto case_53;
  } else {
  }
  if (ldv_statevar_8 == 56) {
    goto case_56;
  } else {
  }
  if (ldv_statevar_8 == 59) {
    goto case_59;
  } else {
  }
  if (ldv_statevar_8 == 61) {
    goto case_61;
  } else {
  }
  if (ldv_statevar_8 == 62) {
    goto case_62;
  } else {
  }
  if (ldv_statevar_8 == 63) {
    goto case_63;
  } else {
  }
  if (ldv_statevar_8 == 64) {
    goto case_64;
  } else {
  }
  if (ldv_statevar_8 == 65) {
    goto case_65;
  } else {
  }
  if (ldv_statevar_8 == 66) {
    goto case_66;
  } else {
  }
  if (ldv_statevar_8 == 68) {
    goto case_68;
  } else {
  }
  goto switch_default;
  case_1:
  {
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    ldv_statevar_8 = 6;
  } else {
    ldv_statevar_8 = 11;
  }
  goto ldv_36263;
  case_2:
  {
  ldv_assume(ldv_statevar_1 == 2 || ldv_statevar_2 == 2);
  ldv_io_instance_release_8_2(ldv_8_container_v4l2_file_operations->release, ldv_8_resource_file);
  ldv_statevar_8 = 1;
  }
  goto ldv_36263;
  case_3:
  {
  ldv_statevar_8 = ldv_switch_3();
  }
  goto ldv_36263;
  case_4:
  {
  ldv_io_instance_callback_8_4(ldv_8_callback_func_1_ptr, ldv_8_resource_struct_video_device);
  ldv_statevar_8 = 3;
  }
  goto ldv_36263;
  case_6:
  {
  ldv_free((void *)ldv_8_resource_file);
  ldv_free((void *)ldv_8_resource_struct_i2c_adapter);
  ldv_free((void *)ldv_8_resource_struct_i2c_msg_ptr);
  ldv_free((void *)ldv_8_resource_struct_poll_table_struct_ptr);
  ldv_free((void *)ldv_8_resource_struct_v4l2_buffer_ptr);
  ldv_free((void *)ldv_8_resource_struct_v4l2_capability_ptr);
  ldv_free((void *)ldv_8_resource_struct_v4l2_event_subscription_ptr);
  ldv_free((void *)ldv_8_resource_struct_v4l2_fh_ptr);
  ldv_free((void *)ldv_8_resource_struct_v4l2_fmtdesc_ptr);
  ldv_free((void *)ldv_8_resource_struct_v4l2_format_ptr);
  ldv_free((void *)ldv_8_resource_struct_v4l2_input_ptr);
  ldv_free((void *)ldv_8_resource_struct_v4l2_output_ptr);
  ldv_free((void *)ldv_8_resource_struct_v4l2_requestbuffers_ptr);
  ldv_free((void *)ldv_8_resource_struct_video_device);
  ldv_free((void *)ldv_8_resource_struct_vm_area_struct_ptr);
  ldv_8_ret_default = 1;
  ldv_statevar_8 = 14;
  }
  goto ldv_36263;
  case_8:
  {
  ldv_assume(ldv_8_ret_default != 0);
  tmp___0 = ldv_undef_int();
  }
  if (tmp___0 != 0) {
    ldv_statevar_8 = 6;
  } else {
    ldv_statevar_8 = 11;
  }
  goto ldv_36263;
  case_10:
  {
  ldv_assume(ldv_8_ret_default == 0);
  ldv_statevar_8 = ldv_switch_3();
  }
  goto ldv_36263;
  case_11:
  {
  ldv_8_ret_default = ldv_io_instance_probe_8_11(ldv_8_container_v4l2_file_operations->open,
                                                 ldv_8_resource_file);
  ldv_8_ret_default = ldv_filter_err_code(ldv_8_ret_default);
  tmp___1 = ldv_undef_int();
  }
  if (tmp___1 != 0) {
    ldv_statevar_8 = 8;
  } else {
    ldv_statevar_8 = 10;
  }
  goto ldv_36263;
  case_13:
  {
  tmp___2 = ldv_xmalloc(520UL);
  ldv_8_resource_file = (struct file *)tmp___2;
  tmp___3 = ldv_xmalloc(1904UL);
  ldv_8_resource_struct_i2c_adapter = (struct i2c_adapter *)tmp___3;
  tmp___4 = ldv_xmalloc(16UL);
  ldv_8_resource_struct_i2c_msg_ptr = (struct i2c_msg *)tmp___4;
  tmp___5 = ldv_xmalloc(16UL);
  ldv_8_resource_struct_poll_table_struct_ptr = (struct poll_table_struct *)tmp___5;
  tmp___6 = ldv_xmalloc(88UL);
  ldv_8_resource_struct_v4l2_buffer_ptr = (struct v4l2_buffer *)tmp___6;
  tmp___7 = ldv_xmalloc(104UL);
  ldv_8_resource_struct_v4l2_capability_ptr = (struct v4l2_capability *)tmp___7;
  tmp___8 = ldv_xmalloc(32UL);
  ldv_8_resource_struct_v4l2_event_subscription_ptr = (struct v4l2_event_subscription *)tmp___8;
  tmp___9 = ldv_xmalloc(176UL);
  ldv_8_resource_struct_v4l2_fh_ptr = (struct v4l2_fh *)tmp___9;
  tmp___10 = ldv_xmalloc(64UL);
  ldv_8_resource_struct_v4l2_fmtdesc_ptr = (struct v4l2_fmtdesc *)tmp___10;
  tmp___11 = ldv_xmalloc(208UL);
  ldv_8_resource_struct_v4l2_format_ptr = (struct v4l2_format *)tmp___11;
  tmp___12 = ldv_xmalloc(80UL);
  ldv_8_resource_struct_v4l2_input_ptr = (struct v4l2_input *)tmp___12;
  tmp___13 = ldv_xmalloc(72UL);
  ldv_8_resource_struct_v4l2_output_ptr = (struct v4l2_output *)tmp___13;
  tmp___14 = ldv_xmalloc(20UL);
  ldv_8_resource_struct_v4l2_requestbuffers_ptr = (struct v4l2_requestbuffers *)tmp___14;
  tmp___15 = ldv_xmalloc(1808UL);
  ldv_8_resource_struct_video_device = (struct video_device *)tmp___15;
  tmp___16 = ldv_xmalloc(184UL);
  ldv_8_resource_struct_vm_area_struct_ptr = (struct vm_area_struct *)tmp___16;
  tmp___17 = ldv_undef_int();
  }
  if (tmp___17 != 0) {
    ldv_statevar_8 = 6;
  } else {
    ldv_statevar_8 = 11;
  }
  goto ldv_36263;
  case_14: ;
  goto ldv_36263;
  case_17:
  {
  ldv_io_instance_callback_8_17(ldv_8_callback_functionality, ldv_8_resource_struct_i2c_adapter);
  ldv_statevar_8 = 3;
  }
  goto ldv_36263;
  case_19:
  {
  ldv_io_instance_callback_8_18(ldv_8_callback_master_xfer, ldv_8_resource_struct_i2c_adapter,
                                ldv_8_resource_struct_i2c_msg_ptr, ldv_8_ldv_param_18_2_default);
  ldv_statevar_8 = 3;
  }
  goto ldv_36263;
  case_21: ;
  if ((unsigned long )ldv_8_callback_mmap != (unsigned long )((int (*)(struct file * ,
                                                                       struct vm_area_struct * ))0)) {
    {
    ldv_io_instance_callback_8_21(ldv_8_callback_mmap, ldv_8_resource_file, ldv_8_resource_struct_vm_area_struct_ptr);
    }
  } else {
  }
  ldv_statevar_8 = 3;
  goto ldv_36263;
  case_22: ;
  if ((unsigned long )ldv_8_callback_poll != (unsigned long )((unsigned int (*)(struct file * ,
                                                                                struct poll_table_struct * ))0)) {
    {
    ldv_io_instance_callback_8_22(ldv_8_callback_poll, ldv_8_resource_file, ldv_8_resource_struct_poll_table_struct_ptr);
    }
  } else {
  }
  ldv_statevar_8 = 3;
  goto ldv_36263;
  case_24:
  {
  tmp___18 = ldv_xmalloc(1UL);
  ldv_8_ldv_param_23_1_default = (char *)tmp___18;
  tmp___19 = ldv_xmalloc(8UL);
  ldv_8_ldv_param_23_3_default = (long long *)tmp___19;
  }
  if ((unsigned long )ldv_8_callback_read != (unsigned long )((long (*)(struct file * ,
                                                                        char * , unsigned long ,
                                                                        long long * ))0)) {
    {
    ldv_io_instance_callback_8_23(ldv_8_callback_read, ldv_8_resource_file, ldv_8_ldv_param_23_1_default,
                                  ldv_8_ldv_param_23_2_default, ldv_8_ldv_param_23_3_default);
    }
  } else {
  }
  {
  ldv_free((void *)ldv_8_ldv_param_23_1_default);
  ldv_free((void *)ldv_8_ldv_param_23_3_default);
  ldv_statevar_8 = 3;
  }
  goto ldv_36263;
  case_27:
  {
  ldv_io_instance_callback_8_26(ldv_8_callback_unlocked_ioctl, ldv_8_resource_file,
                                ldv_8_ldv_param_26_1_default, ldv_8_ldv_param_26_2_default);
  ldv_statevar_8 = 3;
  }
  goto ldv_36263;
  case_29:
  {
  ldv_io_instance_callback_8_29(ldv_8_callback_vidioc_dqbuf, ldv_8_resource_file,
                                (void *)ldv_8_resource_struct_i2c_msg_ptr, ldv_8_resource_struct_v4l2_buffer_ptr);
  ldv_statevar_8 = 3;
  }
  goto ldv_36263;
  case_30:
  {
  ldv_io_instance_callback_8_30(ldv_8_callback_vidioc_enum_fmt_vid_cap, ldv_8_resource_file,
                                (void *)ldv_8_resource_struct_i2c_msg_ptr, ldv_8_resource_struct_v4l2_fmtdesc_ptr);
  ldv_statevar_8 = 3;
  }
  goto ldv_36263;
  case_31:
  {
  ldv_io_instance_callback_8_31(ldv_8_callback_vidioc_enum_fmt_vid_out, ldv_8_resource_file,
                                (void *)ldv_8_resource_struct_i2c_msg_ptr, ldv_8_resource_struct_v4l2_fmtdesc_ptr);
  ldv_statevar_8 = 3;
  }
  goto ldv_36263;
  case_32:
  {
  ldv_io_instance_callback_8_32(ldv_8_callback_vidioc_enum_input, ldv_8_resource_file,
                                (void *)ldv_8_resource_struct_i2c_msg_ptr, ldv_8_resource_struct_v4l2_input_ptr);
  ldv_statevar_8 = 3;
  }
  goto ldv_36263;
  case_33:
  {
  ldv_io_instance_callback_8_33(ldv_8_callback_vidioc_enum_output, ldv_8_resource_file,
                                (void *)ldv_8_resource_struct_i2c_msg_ptr, ldv_8_resource_struct_v4l2_output_ptr);
  ldv_statevar_8 = 3;
  }
  goto ldv_36263;
  case_34:
  {
  ldv_io_instance_callback_8_34(ldv_8_callback_vidioc_g_fmt_vid_cap, ldv_8_resource_file,
                                (void *)ldv_8_resource_struct_i2c_msg_ptr, ldv_8_resource_struct_v4l2_format_ptr);
  ldv_statevar_8 = 3;
  }
  goto ldv_36263;
  case_35:
  {
  ldv_io_instance_callback_8_35(ldv_8_callback_vidioc_g_fmt_vid_out, ldv_8_resource_file,
                                (void *)ldv_8_resource_struct_i2c_msg_ptr, ldv_8_resource_struct_v4l2_format_ptr);
  ldv_statevar_8 = 3;
  }
  goto ldv_36263;
  case_37:
  {
  tmp___20 = ldv_xmalloc(4UL);
  ldv_8_ldv_param_36_2_default = (unsigned int *)tmp___20;
  ldv_io_instance_callback_8_36(ldv_8_callback_vidioc_g_input, ldv_8_resource_file,
                                (void *)ldv_8_resource_struct_i2c_msg_ptr, ldv_8_ldv_param_36_2_default);
  ldv_free((void *)ldv_8_ldv_param_36_2_default);
  ldv_statevar_8 = 3;
  }
  goto ldv_36263;
  case_40:
  {
  tmp___21 = ldv_xmalloc(4UL);
  ldv_8_ldv_param_39_2_default = (unsigned int *)tmp___21;
  ldv_io_instance_callback_8_39(ldv_8_callback_vidioc_g_output, ldv_8_resource_file,
                                (void *)ldv_8_resource_struct_i2c_msg_ptr, ldv_8_ldv_param_39_2_default);
  ldv_free((void *)ldv_8_ldv_param_39_2_default);
  ldv_statevar_8 = 3;
  }
  goto ldv_36263;
  case_43:
  {
  tmp___22 = ldv_xmalloc(8UL);
  ldv_8_ldv_param_42_2_default = (unsigned long long *)tmp___22;
  ldv_io_instance_callback_8_42(ldv_8_callback_vidioc_g_std, ldv_8_resource_file,
                                (void *)ldv_8_resource_struct_i2c_msg_ptr, ldv_8_ldv_param_42_2_default);
  ldv_free((void *)ldv_8_ldv_param_42_2_default);
  ldv_statevar_8 = 3;
  }
  goto ldv_36263;
  case_45:
  {
  ldv_io_instance_callback_8_45(ldv_8_callback_vidioc_log_status, ldv_8_resource_file,
                                (void *)ldv_8_resource_struct_i2c_msg_ptr);
  ldv_statevar_8 = 3;
  }
  goto ldv_36263;
  case_46:
  {
  ldv_io_instance_callback_8_46(ldv_8_callback_vidioc_qbuf, ldv_8_resource_file, (void *)ldv_8_resource_struct_i2c_msg_ptr,
                                ldv_8_resource_struct_v4l2_buffer_ptr);
  ldv_statevar_8 = 3;
  }
  goto ldv_36263;
  case_47:
  {
  ldv_io_instance_callback_8_47(ldv_8_callback_vidioc_querybuf, ldv_8_resource_file,
                                (void *)ldv_8_resource_struct_i2c_msg_ptr, ldv_8_resource_struct_v4l2_buffer_ptr);
  ldv_statevar_8 = 3;
  }
  goto ldv_36263;
  case_48:
  {
  ldv_io_instance_callback_8_48(ldv_8_callback_vidioc_querycap, ldv_8_resource_file,
                                (void *)ldv_8_resource_struct_i2c_msg_ptr, ldv_8_resource_struct_v4l2_capability_ptr);
  ldv_statevar_8 = 3;
  }
  goto ldv_36263;
  case_49:
  {
  ldv_io_instance_callback_8_49(ldv_8_callback_vidioc_reqbufs, ldv_8_resource_file,
                                (void *)ldv_8_resource_struct_i2c_msg_ptr, ldv_8_resource_struct_v4l2_requestbuffers_ptr);
  ldv_statevar_8 = 3;
  }
  goto ldv_36263;
  case_50:
  {
  ldv_io_instance_callback_8_50(ldv_8_callback_vidioc_s_fmt_vid_cap, ldv_8_resource_file,
                                (void *)ldv_8_resource_struct_i2c_msg_ptr, ldv_8_resource_struct_v4l2_format_ptr);
  ldv_statevar_8 = 3;
  }
  goto ldv_36263;
  case_51:
  {
  ldv_io_instance_callback_8_51(ldv_8_callback_vidioc_s_fmt_vid_out, ldv_8_resource_file,
                                (void *)ldv_8_resource_struct_i2c_msg_ptr, ldv_8_resource_struct_v4l2_format_ptr);
  ldv_statevar_8 = 3;
  }
  goto ldv_36263;
  case_53:
  {
  ldv_io_instance_callback_8_52(ldv_8_callback_vidioc_s_input, ldv_8_resource_file,
                                (void *)ldv_8_resource_struct_i2c_msg_ptr, ldv_8_ldv_param_52_2_default);
  ldv_statevar_8 = 3;
  }
  goto ldv_36263;
  case_56:
  {
  ldv_io_instance_callback_8_55(ldv_8_callback_vidioc_s_output, ldv_8_resource_file,
                                (void *)ldv_8_resource_struct_i2c_msg_ptr, ldv_8_ldv_param_55_2_default);
  ldv_statevar_8 = 3;
  }
  goto ldv_36263;
  case_59:
  {
  ldv_io_instance_callback_8_58(ldv_8_callback_vidioc_s_std, ldv_8_resource_file,
                                (void *)ldv_8_resource_struct_i2c_msg_ptr, ldv_8_ldv_param_58_2_default);
  ldv_statevar_8 = 3;
  }
  goto ldv_36263;
  case_61:
  {
  ldv_io_instance_callback_8_61(ldv_8_callback_vidioc_streamoff, ldv_8_resource_file,
                                (void *)ldv_8_resource_struct_i2c_msg_ptr, ldv_8_resource_enum_v4l2_buf_type);
  ldv_statevar_8 = 3;
  }
  goto ldv_36263;
  case_62:
  {
  ldv_io_instance_callback_8_62(ldv_8_callback_vidioc_streamon, ldv_8_resource_file,
                                (void *)ldv_8_resource_struct_i2c_msg_ptr, ldv_8_resource_enum_v4l2_buf_type);
  ldv_statevar_8 = 3;
  }
  goto ldv_36263;
  case_63:
  {
  ldv_io_instance_callback_8_63(ldv_8_callback_vidioc_subscribe_event, ldv_8_resource_struct_v4l2_fh_ptr,
                                ldv_8_resource_struct_v4l2_event_subscription_ptr);
  ldv_statevar_8 = 3;
  }
  goto ldv_36263;
  case_64:
  {
  ldv_io_instance_callback_8_64(ldv_8_callback_vidioc_try_fmt_vid_cap, ldv_8_resource_file,
                                (void *)ldv_8_resource_struct_i2c_msg_ptr, ldv_8_resource_struct_v4l2_format_ptr);
  ldv_statevar_8 = 3;
  }
  goto ldv_36263;
  case_65:
  {
  ldv_io_instance_callback_8_65(ldv_8_callback_vidioc_try_fmt_vid_out, ldv_8_resource_file,
                                (void *)ldv_8_resource_struct_i2c_msg_ptr, ldv_8_resource_struct_v4l2_format_ptr);
  ldv_statevar_8 = 3;
  }
  goto ldv_36263;
  case_66:
  {
  ldv_io_instance_callback_8_66(ldv_8_callback_vidioc_unsubscribe_event, ldv_8_resource_struct_v4l2_fh_ptr,
                                ldv_8_resource_struct_v4l2_event_subscription_ptr);
  ldv_statevar_8 = 3;
  }
  goto ldv_36263;
  case_68:
  {
  tmp___23 = ldv_xmalloc(1UL);
  ldv_8_ldv_param_67_1_default = (char *)tmp___23;
  tmp___24 = ldv_xmalloc(8UL);
  ldv_8_ldv_param_67_3_default = (long long *)tmp___24;
  ldv_assume(ldv_statevar_1 == 6 || ldv_statevar_2 == 6);
  ldv_io_instance_callback_8_67(ldv_8_callback_write, ldv_8_resource_file, ldv_8_ldv_param_67_1_default,
                                ldv_8_ldv_param_67_2_default, ldv_8_ldv_param_67_3_default);
  ldv_free((void *)ldv_8_ldv_param_67_1_default);
  ldv_free((void *)ldv_8_ldv_param_67_3_default);
  ldv_statevar_8 = 3;
  }
  goto ldv_36263;
  switch_default: ;
  switch_break: ;
  }
  ldv_36263: ;
  return;
}
}
static int ldv_dev_set_drvdata_12(struct device *dev , void *data )
{
  int tmp ;
  {
  {
  tmp = ldv_dev_set_drvdata(dev, data);
  }
  return (tmp);
}
}
void cx25821_set_gpiopin_direction(struct cx25821_dev *dev , int pin_number , int pin_logic_value ) ;
void cx25821_set_gpiopin_direction(struct cx25821_dev *dev , int pin_number , int pin_logic_value )
{
  int bit ;
  u32 gpio_oe_reg ;
  u32 gpio_register ;
  u32 value ;
  {
  bit = pin_number;
  gpio_oe_reg = 1114136U;
  gpio_register = 0U;
  value = 0U;
  if (pin_number > 46) {
    return;
  } else {
  }
  if (pin_number > 31) {
    bit = pin_number + -31;
    gpio_oe_reg = 1114140U;
  } else {
  }
  {
  gpio_register = readl((void const volatile *)dev->lmmio + (unsigned long )(gpio_oe_reg >> 2));
  }
  if (pin_logic_value == 1) {
    value = gpio_register | (u32 )(1 << bit);
  } else {
    value = gpio_register & (u32 )(~ (1 << bit));
  }
  {
  writel(value, (void volatile *)dev->lmmio + (unsigned long )(gpio_oe_reg >> 2));
  }
  return;
}
}
static char const __kstrtab_cx25821_set_gpiopin_direction[30U] =
  { 'c', 'x', '2', '5',
        '8', '2', '1', '_',
        's', 'e', 't', '_',
        'g', 'p', 'i', 'o',
        'p', 'i', 'n', '_',
        'd', 'i', 'r', 'e',
        'c', 't', 'i', 'o',
        'n', '\000'};
struct kernel_symbol const __ksymtab_cx25821_set_gpiopin_direction ;
struct kernel_symbol const __ksymtab_cx25821_set_gpiopin_direction = {(unsigned long )(& cx25821_set_gpiopin_direction), (char const *)(& __kstrtab_cx25821_set_gpiopin_direction)};
static void cx25821_set_gpiopin_logicvalue(struct cx25821_dev *dev , int pin_number ,
                                           int pin_logic_value )
{
  int bit ;
  u32 gpio_reg ;
  u32 value ;
  {
  bit = pin_number;
  gpio_reg = 1114128U;
  value = 0U;
  if (pin_number > 46) {
    return;
  } else {
  }
  {
  cx25821_set_gpiopin_direction(dev, pin_number, 0);
  }
  if (pin_number > 31) {
    bit = pin_number + -31;
    gpio_reg = 1114132U;
  } else {
  }
  {
  value = readl((void const volatile *)dev->lmmio + (unsigned long )(gpio_reg >> 2));
  }
  if (pin_logic_value == 0) {
    value = value & (u32 )(~ (1 << bit));
  } else {
    value = value | (u32 )(1 << bit);
  }
  {
  writel(value, (void volatile *)dev->lmmio + (unsigned long )(gpio_reg >> 2));
  }
  return;
}
}
void cx25821_gpio_init(struct cx25821_dev *dev )
{
  unsigned long __ms ;
  unsigned long tmp ;
  {
  if ((unsigned long )dev == (unsigned long )((struct cx25821_dev *)0)) {
    return;
  } else {
  }
  {
  if (dev->board == 1U) {
    goto case_1;
  } else {
  }
  goto switch_default;
  case_1: ;
  switch_default:
  {
  cx25821_set_gpiopin_logicvalue(dev, 5, 1);
  __ms = 20UL;
  }
  goto ldv_35187;
  ldv_35186:
  {
  __const_udelay(4295000UL);
  }
  ldv_35187:
  tmp = __ms;
  __ms = __ms - 1UL;
  if (tmp != 0UL) {
    goto ldv_35186;
  } else {
  }
  goto ldv_35189;
  switch_break: ;
  }
  ldv_35189: ;
  return;
}
}
int medusa_set_videostandard(struct cx25821_dev *dev ) ;
void medusa_set_resolution(struct cx25821_dev *dev , int width , int decoder_select ) ;
int medusa_set_brightness(struct cx25821_dev *dev , int brightness , int decoder ) ;
int medusa_set_contrast(struct cx25821_dev *dev , int contrast , int decoder ) ;
int medusa_set_hue(struct cx25821_dev *dev , int hue , int decoder ) ;
int medusa_set_saturation(struct cx25821_dev *dev , int saturation , int decoder ) ;
__inline static u32 clearBitAtPos(u32 value , u8 bit )
{
  {
  return (value & (u32 )(~ (1 << (int )bit)));
}
}
__inline static u32 setBitAtPos(u32 sample , u8 bit )
{
  {
  sample = sample | (u32 )(1 << (int )bit);
  return (sample);
}
}
static void medusa_enable_bluefield_output(struct cx25821_dev *dev , int channel ,
                                           int enable )
{
  u32 value ;
  u32 tmp ;
  int out_ctrl ;
  int out_ctrl_ns ;
  int tmp___0 ;
  int tmp___1 ;
  {
  value = 0U;
  tmp = 0U;
  out_ctrl = 4100;
  out_ctrl_ns = 4104;
  {
  if (channel == 0) {
    goto case_0;
  } else {
  }
  if (channel == 1) {
    goto case_1;
  } else {
  }
  if (channel == 2) {
    goto case_2;
  } else {
  }
  if (channel == 3) {
    goto case_3;
  } else {
  }
  if (channel == 4) {
    goto case_4;
  } else {
  }
  if (channel == 5) {
    goto case_5;
  } else {
  }
  if (channel == 6) {
    goto case_6;
  } else {
  }
  if (channel == 7) {
    goto case_7;
  } else {
  }
  goto switch_default;
  switch_default: ;
  case_0: ;
  goto ldv_34377;
  case_1:
  out_ctrl = 4612;
  out_ctrl_ns = 4616;
  goto ldv_34377;
  case_2:
  out_ctrl = 5124;
  out_ctrl_ns = 5128;
  goto ldv_34377;
  case_3:
  out_ctrl = 5636;
  out_ctrl_ns = 5640;
  goto ldv_34377;
  case_4:
  out_ctrl = 6148;
  out_ctrl_ns = 6152;
  return;
  case_5:
  out_ctrl = 6660;
  out_ctrl_ns = 6664;
  return;
  case_6:
  out_ctrl = 7172;
  out_ctrl_ns = 7176;
  return;
  case_7:
  out_ctrl = 7684;
  out_ctrl_ns = 7688;
  return;
  switch_break: ;
  }
  ldv_34377:
  {
  tmp___0 = cx25821_i2c_read((struct cx25821_i2c *)(& dev->i2c_bus), (int )((u16 )out_ctrl),
                             (int *)(& tmp));
  value = (u32 )tmp___0;
  value = value & 4294967167U;
  }
  if (enable != 0) {
    value = value | 128U;
  } else {
  }
  {
  cx25821_i2c_write((struct cx25821_i2c *)(& dev->i2c_bus), (int )((u16 )out_ctrl),
                    (int )value);
  tmp___1 = cx25821_i2c_read((struct cx25821_i2c *)(& dev->i2c_bus), (int )((u16 )out_ctrl_ns),
                             (int *)(& tmp));
  value = (u32 )tmp___1;
  value = value & 4294967167U;
  }
  if (enable != 0) {
    value = value | 128U;
  } else {
  }
  {
  cx25821_i2c_write((struct cx25821_i2c *)(& dev->i2c_bus), (int )((u16 )out_ctrl_ns),
                    (int )value);
  }
  return;
}
}
static int medusa_initialize_ntsc(struct cx25821_dev *dev )
{
  int ret_val ;
  int i ;
  u32 value ;
  u32 tmp ;
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
  {
  ret_val = 0;
  i = 0;
  value = 0U;
  tmp = 0U;
  i = 0;
  goto ldv_34393;
  ldv_34392:
  {
  tmp___0 = cx25821_i2c_read((struct cx25821_i2c *)(& dev->i2c_bus), (int )((unsigned int )((u16 )(i + 8)) * 512U),
                             (int *)(& tmp));
  value = (u32 )tmp___0;
  value = value & 4294967280U;
  value = value | 65537U;
  ret_val = cx25821_i2c_write((struct cx25821_i2c *)(& dev->i2c_bus), (int )((unsigned int )((u16 )(i + 8)) * 512U),
                              (int )value);
  tmp___1 = cx25821_i2c_read((struct cx25821_i2c *)(& dev->i2c_bus), (int )((unsigned int )((u16 )i) * 512U + 4128U),
                             (int *)(& tmp));
  value = (u32 )tmp___1;
  value = value & 12585984U;
  value = value | 1630339188U;
  ret_val = cx25821_i2c_write((struct cx25821_i2c *)(& dev->i2c_bus), (int )((unsigned int )((u16 )i) * 512U + 4128U),
                              (int )value);
  tmp___2 = cx25821_i2c_read((struct cx25821_i2c *)(& dev->i2c_bus), (int )((unsigned int )((u16 )i) * 512U + 4132U),
                             (int *)(& tmp));
  value = (u32 )tmp___2;
  value = value & 12585984U;
  value = value | 471728154U;
  ret_val = cx25821_i2c_write((struct cx25821_i2c *)(& dev->i2c_bus), (int )((unsigned int )((u16 )i) * 512U + 4132U),
                              (int )value);
  ret_val = cx25821_i2c_write((struct cx25821_i2c *)(& dev->i2c_bus), (int )((unsigned int )((u16 )i) * 512U + 4188U),
                              1138753536);
  tmp___3 = cx25821_i2c_read((struct cx25821_i2c *)(& dev->i2c_bus), (int )((unsigned int )((u16 )i) * 512U + 4104U),
                             (int *)(& tmp));
  value = (u32 )tmp___3;
  value = value & 4294705151U;
  value = value | 262144U;
  ret_val = cx25821_i2c_write((struct cx25821_i2c *)(& dev->i2c_bus), (int )((unsigned int )((u16 )i) * 512U + 4104U),
                              (int )value);
  tmp___4 = cx25821_i2c_read((struct cx25821_i2c *)(& dev->i2c_bus), (int )((unsigned int )((u16 )i) * 512U + 4100U),
                             (int *)(& tmp));
  value = (u32 )tmp___4;
  value = value & 4294705151U;
  value = value | 262144U;
  ret_val = cx25821_i2c_write((struct cx25821_i2c *)(& dev->i2c_bus), (int )((unsigned int )((u16 )i) * 512U + 4100U),
                              (int )value);
  tmp___5 = cx25821_i2c_read((struct cx25821_i2c *)(& dev->i2c_bus), (int )((unsigned int )((u16 )i) * 512U + 4136U),
                             (int *)(& tmp));
  value = (u32 )tmp___5;
  value = setBitAtPos(value, 14);
  value = clearBitAtPos(value, 15);
  ret_val = cx25821_i2c_write((struct cx25821_i2c *)(& dev->i2c_bus), (int )((unsigned int )((u16 )i) * 512U + 4136U),
                              (int )value);
  tmp___6 = cx25821_i2c_read((struct cx25821_i2c *)(& dev->i2c_bus), (int )((unsigned int )((u16 )i) * 512U + 4160U),
                             (int *)(& tmp));
  value = (u32 )tmp___6;
  value = clearBitAtPos(value, 29);
  ret_val = cx25821_i2c_write((struct cx25821_i2c *)(& dev->i2c_bus), (int )((unsigned int )((u16 )i) * 512U + 4160U),
                              (int )value);
  medusa_enable_bluefield_output(dev, i, 1);
  i = i + 1;
  }
  ldv_34393: ;
  if (i <= 7) {
    goto ldv_34392;
  } else {
  }
  i = 0;
  goto ldv_34396;
  ldv_34395:
  {
  tmp___7 = cx25821_i2c_read((struct cx25821_i2c *)(& dev->i2c_bus), (int )((unsigned int )((u16 )(i + 2)) * 256U),
                             (int *)(& tmp));
  value = (u32 )tmp___7;
  value = value & 4026596352U;
  value = value | 112460496U;
  ret_val = cx25821_i2c_write((struct cx25821_i2c *)(& dev->i2c_bus), (int )((unsigned int )((u16 )(i + 2)) * 256U),
                              (int )value);
  tmp___8 = cx25821_i2c_read((struct cx25821_i2c *)(& dev->i2c_bus), (int )((unsigned int )((u16 )i) * 256U + 516U),
                             (int *)(& tmp));
  value = (u32 )tmp___8;
  value = value & 4278190080U;
  value = value | 8294484U;
  ret_val = cx25821_i2c_write((struct cx25821_i2c *)(& dev->i2c_bus), (int )((unsigned int )((u16 )i) * 256U + 516U),
                              (int )value);
  tmp___9 = cx25821_i2c_read((struct cx25821_i2c *)(& dev->i2c_bus), (int )((unsigned int )((u16 )i) * 256U + 520U),
                             (int *)(& tmp));
  value = (u32 )tmp___9;
  value = value & 4227923456U;
  value = value | 15466736U;
  ret_val = cx25821_i2c_write((struct cx25821_i2c *)(& dev->i2c_bus), (int )((unsigned int )((u16 )i) * 256U + 520U),
                              (int )value);
  tmp___10 = cx25821_i2c_read((struct cx25821_i2c *)(& dev->i2c_bus), (int )((unsigned int )((u16 )i) * 256U + 524U),
                              (int *)(& tmp));
  value = (u32 )tmp___10;
  value = value & 16580607U;
  value = value | 318898176U;
  ret_val = cx25821_i2c_write((struct cx25821_i2c *)(& dev->i2c_bus), (int )((unsigned int )((u16 )i) * 256U + 524U),
                              (int )value);
  tmp___11 = cx25821_i2c_read((struct cx25821_i2c *)(& dev->i2c_bus), (int )((unsigned int )((u16 )i) * 256U + 528U),
                              (int *)(& tmp));
  value = (u32 )tmp___11;
  value = value & 4294901760U;
  value = value | 58741U;
  ret_val = cx25821_i2c_write((struct cx25821_i2c *)(& dev->i2c_bus), (int )((unsigned int )((u16 )i) * 256U + 528U),
                              (int )value);
  ret_val = cx25821_i2c_write((struct cx25821_i2c *)(& dev->i2c_bus), (int )((unsigned int )((u16 )i) * 256U + 532U),
                              10127809);
  ret_val = cx25821_i2c_write((struct cx25821_i2c *)(& dev->i2c_bus), (int )((unsigned int )((u16 )i) * 256U + 536U),
                              569408543);
  i = i + 1;
  }
  ldv_34396: ;
  if (i <= 1) {
    goto ldv_34395;
  } else {
  }
  {
  ret_val = cx25821_i2c_write((struct cx25821_i2c *)(& dev->i2c_bus), 4144, 0);
  ret_val = cx25821_i2c_write((struct cx25821_i2c *)(& dev->i2c_bus), 4148, 0);
  tmp___12 = cx25821_i2c_read((struct cx25821_i2c *)(& dev->i2c_bus), 280, (int *)(& tmp));
  value = (u32 )tmp___12;
  value = value | 524800U;
  ret_val = cx25821_i2c_write((struct cx25821_i2c *)(& dev->i2c_bus), 280, (int )value);
  }
  return (ret_val);
}
}
static int medusa_PALCombInit(struct cx25821_dev *dev , int dec )
{
  int ret_val ;
  u32 value ;
  u32 tmp ;
  int tmp___0 ;
  {
  {
  ret_val = -1;
  value = 0U;
  tmp = 0U;
  ret_val = cx25821_i2c_write((struct cx25821_i2c *)(& dev->i2c_bus), (int )((unsigned int )((u16 )dec) * 512U + 4200U),
                              536881249);
  ret_val = cx25821_i2c_write((struct cx25821_i2c *)(& dev->i2c_bus), (int )((unsigned int )((u16 )dec) * 512U + 4204U),
                              536881249);
  ret_val = cx25821_i2c_write((struct cx25821_i2c *)(& dev->i2c_bus), (int )((unsigned int )((u16 )dec) * 512U + 4208U),
                              537530403);
  tmp___0 = cx25821_i2c_read((struct cx25821_i2c *)(& dev->i2c_bus), (int )((unsigned int )((u16 )dec) * 512U + 4220U),
                             (int *)(& tmp));
  value = (u32 )tmp___0;
  value = value & 102957056U;
  ret_val = cx25821_i2c_write((struct cx25821_i2c *)(& dev->i2c_bus), (int )((unsigned int )((u16 )dec) * 512U + 4220U),
                              (int )value);
  ret_val = cx25821_i2c_write((struct cx25821_i2c *)(& dev->i2c_bus), (int )((unsigned int )((u16 )dec) * 512U + 4212U),
                              554635023);
  ret_val = cx25821_i2c_write((struct cx25821_i2c *)(& dev->i2c_bus), (int )((unsigned int )((u16 )dec) * 512U + 4216U),
                              1091701375);
  }
  return (ret_val);
}
}
static int medusa_initialize_pal(struct cx25821_dev *dev )
{
  int ret_val ;
  int i ;
  u32 value ;
  u32 tmp ;
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
  {
  ret_val = 0;
  i = 0;
  value = 0U;
  tmp = 0U;
  i = 0;
  goto ldv_34413;
  ldv_34412:
  {
  tmp___0 = cx25821_i2c_read((struct cx25821_i2c *)(& dev->i2c_bus), (int )((unsigned int )((u16 )(i + 8)) * 512U),
                             (int *)(& tmp));
  value = (u32 )tmp___0;
  value = value & 4294967280U;
  value = value | 65540U;
  ret_val = cx25821_i2c_write((struct cx25821_i2c *)(& dev->i2c_bus), (int )((unsigned int )((u16 )(i + 8)) * 512U),
                              (int )value);
  tmp___1 = cx25821_i2c_read((struct cx25821_i2c *)(& dev->i2c_bus), (int )((unsigned int )((u16 )i) * 512U + 4128U),
                             (int *)(& tmp));
  value = (u32 )tmp___1;
  value = value & 12585984U;
  value = value | 1663893629U;
  ret_val = cx25821_i2c_write((struct cx25821_i2c *)(& dev->i2c_bus), (int )((unsigned int )((u16 )i) * 512U + 4128U),
                              (int )value);
  tmp___2 = cx25821_i2c_read((struct cx25821_i2c *)(& dev->i2c_bus), (int )((unsigned int )((u16 )i) * 512U + 4132U),
                             (int *)(& tmp));
  value = (u32 )tmp___2;
  value = value & 12585984U;
  value = value | 673447974U;
  ret_val = cx25821_i2c_write((struct cx25821_i2c *)(& dev->i2c_bus), (int )((unsigned int )((u16 )i) * 512U + 4132U),
                              (int )value);
  ret_val = cx25821_i2c_write((struct cx25821_i2c *)(& dev->i2c_bus), (int )((unsigned int )((u16 )i) * 512U + 4188U),
                              1410458320);
  tmp___3 = cx25821_i2c_read((struct cx25821_i2c *)(& dev->i2c_bus), (int )((unsigned int )((u16 )i) * 512U + 4104U),
                             (int *)(& tmp));
  value = (u32 )tmp___3;
  value = value & 4294705151U;
  value = value | 262144U;
  ret_val = cx25821_i2c_write((struct cx25821_i2c *)(& dev->i2c_bus), (int )((unsigned int )((u16 )i) * 512U + 4104U),
                              (int )value);
  tmp___4 = cx25821_i2c_read((struct cx25821_i2c *)(& dev->i2c_bus), (int )((unsigned int )((u16 )i) * 512U + 4100U),
                             (int *)(& tmp));
  value = (u32 )tmp___4;
  value = value & 4294705151U;
  value = value | 262144U;
  ret_val = cx25821_i2c_write((struct cx25821_i2c *)(& dev->i2c_bus), (int )((unsigned int )((u16 )i) * 512U + 4100U),
                              (int )value);
  tmp___5 = cx25821_i2c_read((struct cx25821_i2c *)(& dev->i2c_bus), (int )((unsigned int )((u16 )i) * 512U + 4136U),
                             (int *)(& tmp));
  value = (u32 )tmp___5;
  value = setBitAtPos(value, 14);
  value = clearBitAtPos(value, 15);
  ret_val = cx25821_i2c_write((struct cx25821_i2c *)(& dev->i2c_bus), (int )((unsigned int )((u16 )i) * 512U + 4136U),
                              (int )value);
  tmp___6 = cx25821_i2c_read((struct cx25821_i2c *)(& dev->i2c_bus), (int )((unsigned int )((u16 )i) * 512U + 4160U),
                             (int *)(& tmp));
  value = (u32 )tmp___6;
  value = clearBitAtPos(value, 29);
  ret_val = cx25821_i2c_write((struct cx25821_i2c *)(& dev->i2c_bus), (int )((unsigned int )((u16 )i) * 512U + 4160U),
                              (int )value);
  medusa_PALCombInit(dev, i);
  medusa_enable_bluefield_output(dev, i, 1);
  i = i + 1;
  }
  ldv_34413: ;
  if (i <= 7) {
    goto ldv_34412;
  } else {
  }
  i = 0;
  goto ldv_34416;
  ldv_34415:
  {
  tmp___7 = cx25821_i2c_read((struct cx25821_i2c *)(& dev->i2c_bus), (int )((unsigned int )((u16 )(i + 2)) * 256U),
                             (int *)(& tmp));
  value = (u32 )tmp___7;
  value = value & 4026596352U;
  value = value | 113246928U;
  ret_val = cx25821_i2c_write((struct cx25821_i2c *)(& dev->i2c_bus), (int )((unsigned int )((u16 )(i + 2)) * 256U),
                              (int )value);
  tmp___8 = cx25821_i2c_read((struct cx25821_i2c *)(& dev->i2c_bus), (int )((unsigned int )((u16 )i) * 256U + 516U),
                             (int *)(& tmp));
  value = (u32 )tmp___8;
  value = value & 4278190080U;
  value = value | 8296276U;
  ret_val = cx25821_i2c_write((struct cx25821_i2c *)(& dev->i2c_bus), (int )((unsigned int )((u16 )i) * 256U + 516U),
                              (int )value);
  tmp___9 = cx25821_i2c_read((struct cx25821_i2c *)(& dev->i2c_bus), (int )((unsigned int )((u16 )i) * 256U + 520U),
                             (int *)(& tmp));
  value = (u32 )tmp___9;
  value = value & 4227923456U;
  value = value | 16515360U;
  ret_val = cx25821_i2c_write((struct cx25821_i2c *)(& dev->i2c_bus), (int )((unsigned int )((u16 )i) * 256U + 520U),
                              (int )value);
  tmp___10 = cx25821_i2c_read((struct cx25821_i2c *)(& dev->i2c_bus), (int )((unsigned int )((u16 )i) * 256U + 524U),
                              (int *)(& tmp));
  value = (u32 )tmp___10;
  value = value & 16580607U;
  value = value | 335609856U;
  ret_val = cx25821_i2c_write((struct cx25821_i2c *)(& dev->i2c_bus), (int )((unsigned int )((u16 )i) * 256U + 524U),
                              (int )value);
  tmp___11 = cx25821_i2c_read((struct cx25821_i2c *)(& dev->i2c_bus), (int )((unsigned int )((u16 )i) * 256U + 528U),
                              (int *)(& tmp));
  value = (u32 )tmp___11;
  value = value & 4294901760U;
  value = value | 61560U;
  ret_val = cx25821_i2c_write((struct cx25821_i2c *)(& dev->i2c_bus), (int )((unsigned int )((u16 )i) * 256U + 528U),
                              (int )value);
  ret_val = cx25821_i2c_write((struct cx25821_i2c *)(& dev->i2c_bus), (int )((unsigned int )((u16 )i) * 256U + 532U),
                              10785743);
  ret_val = cx25821_i2c_write((struct cx25821_i2c *)(& dev->i2c_bus), (int )((unsigned int )((u16 )i) * 256U + 536U),
                              705268427);
  i = i + 1;
  }
  ldv_34416: ;
  if (i <= 1) {
    goto ldv_34415;
  } else {
  }
  {
  ret_val = cx25821_i2c_write((struct cx25821_i2c *)(& dev->i2c_bus), 4144, 0);
  ret_val = cx25821_i2c_write((struct cx25821_i2c *)(& dev->i2c_bus), 4148, 0);
  tmp___12 = cx25821_i2c_read((struct cx25821_i2c *)(& dev->i2c_bus), 280, (int *)(& tmp));
  value = (u32 )tmp___12;
  value = value & 4294442495U;
  ret_val = cx25821_i2c_write((struct cx25821_i2c *)(& dev->i2c_bus), 280, (int )value);
  }
  return (ret_val);
}
}
int medusa_set_videostandard(struct cx25821_dev *dev )
{
  int status ;
  u32 value ;
  u32 tmp ;
  int tmp___0 ;
  int tmp___1 ;
  {
  status = 0;
  value = 0U;
  tmp = 0U;
  if (*((unsigned long *)dev + 5792UL) != 0UL) {
    {
    status = medusa_initialize_pal(dev);
    }
  } else {
    {
    status = medusa_initialize_ntsc(dev);
    }
  }
  {
  tmp___0 = cx25821_i2c_read((struct cx25821_i2c *)(& dev->i2c_bus), 524, (int *)(& tmp));
  value = (u32 )tmp___0;
  value = setBitAtPos(value, 4);
  status = cx25821_i2c_write((struct cx25821_i2c *)(& dev->i2c_bus), 524, (int )value);
  tmp___1 = cx25821_i2c_read((struct cx25821_i2c *)(& dev->i2c_bus), 780, (int *)(& tmp));
  value = (u32 )tmp___1;
  value = setBitAtPos(value, 4);
  status = cx25821_i2c_write((struct cx25821_i2c *)(& dev->i2c_bus), 780, (int )value);
  }
  return (status);
}
}
void medusa_set_resolution(struct cx25821_dev *dev , int width , int decoder_select )
{
  int decoder ;
  int decoder_count ;
  u32 hscale ;
  u32 vscale ;
  int MAX_WIDTH ;
  {
  decoder = 0;
  decoder_count = 0;
  hscale = 0U;
  vscale = 0U;
  MAX_WIDTH = 720;
  if (width > 720) {
    {
    printk("\016cx25821: %s(): width %d > MAX_WIDTH %d ! resetting to MAX_WIDTH\n",
           "medusa_set_resolution", width, MAX_WIDTH);
    width = 720;
    }
  } else {
  }
  if ((unsigned int )decoder_select <= 7U) {
    decoder = decoder_select;
    decoder_count = decoder_select + 1;
  } else {
    decoder = 0;
    decoder_count = (int )dev->_max_num_decoders;
  }
  {
  if (width == 320) {
    goto case_320;
  } else {
  }
  if (width == 352) {
    goto case_352;
  } else {
  }
  if (width == 176) {
    goto case_176;
  } else {
  }
  if (width == 160) {
    goto case_160;
  } else {
  }
  goto switch_default;
  case_320:
  hscale = 1303371U;
  vscale = 0U;
  goto ldv_34436;
  case_352:
  hscale = 1090163U;
  vscale = 0U;
  goto ldv_34436;
  case_176:
  hscale = 3216818U;
  vscale = 7680U;
  goto ldv_34436;
  case_160:
  hscale = 3640708U;
  vscale = 7680U;
  goto ldv_34436;
  switch_default:
  hscale = 0U;
  vscale = 0U;
  goto ldv_34436;
  switch_break: ;
  }
  ldv_34436: ;
  goto ldv_34442;
  ldv_34441:
  {
  cx25821_i2c_write((struct cx25821_i2c *)(& dev->i2c_bus), (int )((unsigned int )((u16 )decoder) * 512U + 4144U),
                    (int )hscale);
  cx25821_i2c_write((struct cx25821_i2c *)(& dev->i2c_bus), (int )((unsigned int )((u16 )decoder) * 512U + 4148U),
                    (int )vscale);
  decoder = decoder + 1;
  }
  ldv_34442: ;
  if (decoder < decoder_count) {
    goto ldv_34441;
  } else {
  }
  return;
}
}
static void medusa_set_decoderduration(struct cx25821_dev *dev , int decoder , int duration )
{
  u32 fld_cnt ;
  u32 tmp ;
  u32 disp_cnt_reg ;
  int tmp___0 ;
  {
  fld_cnt = 0U;
  tmp = 0U;
  disp_cnt_reg = 296U;
  if ((unsigned int )decoder > 7U) {
    return;
  } else {
  }
  {
  if (decoder == 2) {
    goto case_2;
  } else {
  }
  if (decoder == 3) {
    goto case_3;
  } else {
  }
  if (decoder == 4) {
    goto case_4;
  } else {
  }
  if (decoder == 5) {
    goto case_5;
  } else {
  }
  if (decoder == 6) {
    goto case_6;
  } else {
  }
  if (decoder == 7) {
    goto case_7;
  } else {
  }
  goto switch_default;
  switch_default: ;
  goto ldv_34453;
  case_2: ;
  case_3:
  disp_cnt_reg = 300U;
  goto ldv_34453;
  case_4: ;
  case_5:
  disp_cnt_reg = 304U;
  goto ldv_34453;
  case_6: ;
  case_7:
  disp_cnt_reg = 308U;
  goto ldv_34453;
  switch_break: ;
  }
  ldv_34453:
  {
  tmp___0 = cx25821_i2c_read((struct cx25821_i2c *)(& dev->i2c_bus), (int )((u16 )disp_cnt_reg),
                             (int *)(& tmp));
  fld_cnt = (u32 )tmp___0;
  }
  if (((unsigned int )decoder & 1U) == 0U) {
    fld_cnt = fld_cnt & 4294901760U;
    fld_cnt = fld_cnt | (u32 )duration;
  } else {
    fld_cnt = fld_cnt & 65535U;
    fld_cnt = fld_cnt | ((unsigned int )duration << 16);
  }
  {
  cx25821_i2c_write((struct cx25821_i2c *)(& dev->i2c_bus), (int )((u16 )disp_cnt_reg),
                    (int )fld_cnt);
  }
  return;
}
}
static int mapM(int srcMin , int srcMax , int srcVal , int dstMin , int dstMax , int *dstVal )
{
  int numerator ;
  int denominator ;
  int quotient ;
  {
  if ((srcMin == srcMax || srcVal < srcMin) || srcVal > srcMax) {
    return (-1);
  } else {
  }
  numerator = (srcVal - srcMin) * (dstMax - dstMin);
  denominator = srcMax - srcMin;
  quotient = numerator / denominator;
  if ((numerator % denominator) * 2 >= denominator) {
    quotient = quotient + 1;
  } else {
  }
  *dstVal = quotient + dstMin;
  return (0);
}
}
static unsigned long convert_to_twos(long numeric , unsigned long bits_len )
{
  unsigned char temp ;
  long ret ;
  long __x ;
  {
  if (numeric >= 0L) {
    return ((unsigned long )numeric);
  } else {
    __x = numeric;
    ret = __x < 0L ? - __x : __x;
    temp = ~ ((int )((unsigned char )ret));
    temp = (unsigned int )temp + 1U;
    return ((unsigned long )temp);
  }
}
}
int medusa_set_brightness(struct cx25821_dev *dev , int brightness , int decoder )
{
  int ret_val ;
  int value ;
  u32 val ;
  u32 tmp ;
  unsigned long tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  {
  ret_val = 0;
  value = 0;
  val = 0U;
  tmp = 0U;
  if ((unsigned int )brightness > 10000U) {
    return (-1);
  } else {
  }
  {
  ret_val = mapM(0, 10000, brightness, -128, 127, & value);
  tmp___0 = convert_to_twos((long )value, 8UL);
  value = (int )tmp___0;
  tmp___1 = cx25821_i2c_read((struct cx25821_i2c *)(& dev->i2c_bus), (int )((unsigned int )((u16 )decoder) * 512U + 4116U),
                             (int *)(& tmp));
  val = (u32 )tmp___1;
  val = val & 4294967040U;
  tmp___2 = cx25821_i2c_write((struct cx25821_i2c *)(& dev->i2c_bus), (int )((unsigned int )((u16 )decoder) * 512U + 4116U),
                              (int )(val | (u32 )value));
  ret_val = ret_val | tmp___2;
  }
  return (ret_val);
}
}
int medusa_set_contrast(struct cx25821_dev *dev , int contrast , int decoder )
{
  int ret_val ;
  int value ;
  u32 val ;
  u32 tmp ;
  int tmp___0 ;
  int tmp___1 ;
  {
  ret_val = 0;
  value = 0;
  val = 0U;
  tmp = 0U;
  if ((unsigned int )contrast > 10000U) {
    return (-1);
  } else {
  }
  {
  ret_val = mapM(0, 10000, contrast, 0, 255, & value);
  tmp___0 = cx25821_i2c_read((struct cx25821_i2c *)(& dev->i2c_bus), (int )((unsigned int )((u16 )decoder) * 512U + 4117U),
                             (int *)(& tmp));
  val = (u32 )tmp___0;
  val = val & 4294967040U;
  tmp___1 = cx25821_i2c_write((struct cx25821_i2c *)(& dev->i2c_bus), (int )((unsigned int )((u16 )decoder) * 512U + 4117U),
                              (int )(val | (u32 )value));
  ret_val = ret_val | tmp___1;
  }
  return (ret_val);
}
}
int medusa_set_hue(struct cx25821_dev *dev , int hue , int decoder )
{
  int ret_val ;
  int value ;
  u32 val ;
  u32 tmp ;
  unsigned long tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  {
  ret_val = 0;
  value = 0;
  val = 0U;
  tmp = 0U;
  if ((unsigned int )hue > 10000U) {
    return (-1);
  } else {
  }
  {
  ret_val = mapM(0, 10000, hue, -128, 127, & value);
  tmp___0 = convert_to_twos((long )value, 8UL);
  value = (int )tmp___0;
  tmp___1 = cx25821_i2c_read((struct cx25821_i2c *)(& dev->i2c_bus), (int )((unsigned int )((u16 )decoder) * 512U + 4122U),
                             (int *)(& tmp));
  val = (u32 )tmp___1;
  val = val & 4294967040U;
  tmp___2 = cx25821_i2c_write((struct cx25821_i2c *)(& dev->i2c_bus), (int )((unsigned int )((u16 )decoder) * 512U + 4122U),
                              (int )(val | (u32 )value));
  ret_val = ret_val | tmp___2;
  }
  return (ret_val);
}
}
int medusa_set_saturation(struct cx25821_dev *dev , int saturation , int decoder )
{
  int ret_val ;
  int value ;
  u32 val ;
  u32 tmp ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  {
  ret_val = 0;
  value = 0;
  val = 0U;
  tmp = 0U;
  if ((unsigned int )saturation > 10000U) {
    return (-1);
  } else {
  }
  {
  ret_val = mapM(0, 10000, saturation, 0, 255, & value);
  tmp___0 = cx25821_i2c_read((struct cx25821_i2c *)(& dev->i2c_bus), (int )((unsigned int )((u16 )decoder) * 512U + 4120U),
                             (int *)(& tmp));
  val = (u32 )tmp___0;
  val = val & 4294967040U;
  tmp___1 = cx25821_i2c_write((struct cx25821_i2c *)(& dev->i2c_bus), (int )((unsigned int )((u16 )decoder) * 512U + 4120U),
                              (int )(val | (u32 )value));
  ret_val = ret_val | tmp___1;
  tmp___2 = cx25821_i2c_read((struct cx25821_i2c *)(& dev->i2c_bus), (int )((unsigned int )((u16 )decoder) * 512U + 4121U),
                             (int *)(& tmp));
  val = (u32 )tmp___2;
  val = val & 4294967040U;
  tmp___3 = cx25821_i2c_write((struct cx25821_i2c *)(& dev->i2c_bus), (int )((unsigned int )((u16 )decoder) * 512U + 4121U),
                              (int )(val | (u32 )value));
  ret_val = ret_val | tmp___3;
  }
  return (ret_val);
}
}
int medusa_video_init(struct cx25821_dev *dev )
{
  u32 value ;
  u32 tmp ;
  int ret_val ;
  int i ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  int tmp___4 ;
  int tmp___5 ;
  {
  {
  value = 0U;
  tmp = 0U;
  ret_val = 0;
  i = 0;
  tmp___0 = cx25821_i2c_read((struct cx25821_i2c *)(& dev->i2c_bus), 284, (int *)(& tmp));
  value = (u32 )tmp___0;
  value = value & 4294963455U;
  ret_val = cx25821_i2c_write((struct cx25821_i2c *)(& dev->i2c_bus), 284, (int )value);
  }
  if (ret_val < 0) {
    goto error;
  } else {
  }
  {
  tmp___1 = cx25821_i2c_read((struct cx25821_i2c *)(& dev->i2c_bus), 284, (int *)(& tmp));
  value = (u32 )tmp___1;
  value = value & 4294967263U;
  ret_val = cx25821_i2c_write((struct cx25821_i2c *)(& dev->i2c_bus), 284, (int )value);
  }
  if (ret_val < 0) {
    goto error;
  } else {
  }
  i = 0;
  goto ldv_34525;
  ldv_34524:
  {
  medusa_set_decoderduration(dev, i, 0);
  i = i + 1;
  }
  ldv_34525: ;
  if (i < (int )dev->_max_num_decoders) {
    goto ldv_34524;
  } else {
  }
  {
  tmp___2 = cx25821_i2c_read((struct cx25821_i2c *)(& dev->i2c_bus), 276, (int *)(& tmp));
  value = (u32 )tmp___2;
  value = value & 4285595504U;
  value = value | 589832U;
  ret_val = cx25821_i2c_write((struct cx25821_i2c *)(& dev->i2c_bus), 276, (int )value);
  }
  if (ret_val < 0) {
    goto error;
  } else {
  }
  {
  tmp___3 = cx25821_i2c_read((struct cx25821_i2c *)(& dev->i2c_bus), 280, (int *)(& tmp));
  value = (u32 )tmp___3;
  value = value | 262400U;
  ret_val = cx25821_i2c_write((struct cx25821_i2c *)(& dev->i2c_bus), 280, (int )value);
  }
  if (ret_val < 0) {
    goto error;
  } else {
  }
  {
  tmp___4 = cx25821_i2c_read((struct cx25821_i2c *)(& dev->i2c_bus), 356, (int *)(& tmp));
  value = (u32 )tmp___4;
  value = value & 2214592511U;
  ret_val = cx25821_i2c_write((struct cx25821_i2c *)(& dev->i2c_bus), 356, (int )(value | 268435456U));
  }
  if (ret_val < 0) {
    goto error;
  } else {
  }
  {
  tmp___5 = cx25821_i2c_read((struct cx25821_i2c *)(& dev->i2c_bus), 316, (int *)(& tmp));
  value = (u32 )tmp___5;
  value = value & 4277206528U;
  }
  if ((unsigned int )dev->_max_num_decoders == 8U) {
    value = value | 16777720U;
  } else {
    value = value | 17760520U;
  }
  {
  value = value | 7U;
  ret_val = cx25821_i2c_write((struct cx25821_i2c *)(& dev->i2c_bus), 316, (int )value);
  }
  if (ret_val < 0) {
    goto error;
  } else {
  }
  {
  ret_val = medusa_set_videostandard(dev);
  }
  error: ;
  return (ret_val);
}
}
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
__inline static void list_move_tail(struct list_head *list , struct list_head *head )
{
  {
  {
  __list_del_entry(list);
  list_add_tail(list, head);
  }
  return;
}
}
__inline static int list_empty(struct list_head const *head )
{
  {
  return ((unsigned long )((struct list_head const *)head->next) == (unsigned long )head);
}
}
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
extern int snprintf(char * , size_t , char const * , ...) ;
extern char *strcpy(char * , char const * ) ;
extern void mutex_lock_nested(struct mutex * , unsigned int ) ;
extern int mutex_lock_interruptible_nested(struct mutex * , unsigned int ) ;
extern void mutex_unlock(struct mutex * ) ;
extern void __raw_spin_lock_init(raw_spinlock_t * , char const * , struct lock_class_key * ) ;
extern void _raw_spin_lock(raw_spinlock_t * ) ;
extern unsigned long _raw_spin_lock_irqsave(raw_spinlock_t * ) ;
extern void _raw_spin_unlock(raw_spinlock_t * ) ;
extern void _raw_spin_unlock_irqrestore(raw_spinlock_t * , unsigned long ) ;
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
__inline static void spin_unlock(spinlock_t *lock )
{
  {
  {
  _raw_spin_unlock(& lock->__annonCompField19.rlock);
  }
  return;
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
extern void __wake_up(wait_queue_head_t * , unsigned int , int , void * ) ;
extern unsigned long volatile jiffies ;
extern void init_timer_key(struct timer_list * , unsigned int , char const * ,
                           struct lock_class_key * ) ;
extern int del_timer(struct timer_list * ) ;
static int ldv_del_timer_19(struct timer_list *ldv_func_arg1 ) ;
extern int mod_timer(struct timer_list * , unsigned long ) ;
static int ldv_mod_timer_20(struct timer_list *ldv_func_arg1 , unsigned long ldv_func_arg2 ) ;
static int ldv_mod_timer_21(struct timer_list *ldv_func_arg1 , unsigned long ldv_func_arg2 ) ;
static int ldv_mod_timer_22(struct timer_list *ldv_func_arg1 , unsigned long ldv_func_arg2 ) ;
static int ldv_mod_timer_23(struct timer_list *ldv_func_arg1 , unsigned long ldv_func_arg2 ) ;
static void *ldv_dev_get_drvdata_13(struct device const *dev ) ;
static int ldv_dev_set_drvdata_14(struct device *dev , void *data ) ;
__inline static unsigned long poll_requested_events(poll_table const *p )
{
  {
  return ((unsigned long )p != (unsigned long )((poll_table const *)0) ? (unsigned long )p->_key : 0xffffffffffffffffUL);
}
}
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
__inline static void *video_get_drvdata(struct video_device *vdev )
{
  void *tmp ;
  {
  {
  tmp = ldv_dev_get_drvdata_13((struct device const *)(& vdev->dev));
  }
  return (tmp);
}
}
__inline static void video_set_drvdata(struct video_device *vdev , void *data )
{
  {
  {
  ldv_dev_set_drvdata_14(& vdev->dev, data);
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
  tmp___0 = video_get_drvdata(tmp);
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
extern void v4l2_get_timestamp(struct timeval * ) ;
extern int v4l2_fh_open(struct file * ) ;
extern int v4l2_fh_release(struct file * ) ;
extern int v4l2_ctrl_handler_init_class(struct v4l2_ctrl_handler * , unsigned int ,
                                        struct lock_class_key * , char const * ) ;
extern void v4l2_ctrl_handler_free(struct v4l2_ctrl_handler * ) ;
extern int v4l2_ctrl_handler_setup(struct v4l2_ctrl_handler * ) ;
extern struct v4l2_ctrl *v4l2_ctrl_new_std(struct v4l2_ctrl_handler * , struct v4l2_ctrl_ops const * ,
                                           u32 , s32 , s32 , u32 , s32 ) ;
extern int v4l2_ctrl_subscribe_event(struct v4l2_fh * , struct v4l2_event_subscription const * ) ;
extern unsigned int v4l2_ctrl_poll(struct file * , struct poll_table_struct * ) ;
extern int videobuf_iolock(struct videobuf_queue * , struct videobuf_buffer * , struct v4l2_framebuffer * ) ;
extern void videobuf_queue_cancel(struct videobuf_queue * ) ;
extern int videobuf_reqbufs(struct videobuf_queue * , struct v4l2_requestbuffers * ) ;
extern int videobuf_querybuf(struct videobuf_queue * , struct v4l2_buffer * ) ;
extern int videobuf_qbuf(struct videobuf_queue * , struct v4l2_buffer * ) ;
extern int videobuf_dqbuf(struct videobuf_queue * , struct v4l2_buffer * , int ) ;
extern int videobuf_streamon(struct videobuf_queue * ) ;
extern int videobuf_streamoff(struct videobuf_queue * ) ;
extern ssize_t videobuf_read_one(struct videobuf_queue * , char * , size_t , loff_t * ,
                                 int ) ;
extern unsigned int videobuf_poll_stream(struct file * , struct videobuf_queue * ,
                                         poll_table * ) ;
extern int videobuf_mmap_free(struct videobuf_queue * ) ;
extern int videobuf_mmap_mapper(struct videobuf_queue * , struct vm_area_struct * ) ;
extern void videobuf_queue_sg_init(struct videobuf_queue * , struct videobuf_queue_ops const * ,
                                   struct device * , spinlock_t * , enum v4l2_buf_type ,
                                   enum v4l2_field , unsigned int , void * , struct mutex * ) ;
int cx25821_vidupstream_init(struct cx25821_channel *chan , int pixel_format ) ;
int cx25821_write_frame(struct cx25821_channel *chan , char const *data , size_t count ) ;
void cx25821_stop_upstream_video(struct cx25821_channel *chan ) ;
extern long video_ioctl2(struct file * , unsigned int , unsigned long ) ;
extern int v4l2_event_unsubscribe(struct v4l2_fh * , struct v4l2_event_subscription const * ) ;
void cx25821_video_wakeup(struct cx25821_dev *dev , struct cx25821_dmaqueue *q , u32 count ) ;
int cx25821_start_video_dma(struct cx25821_dev *dev , struct cx25821_dmaqueue *q ,
                            struct cx25821_buffer *buf , struct sram_channel const *channel ) ;
static unsigned int video_nr[2U] = { 4294967295U, 4294967295U};
static unsigned int vid_limit = 16U;
static struct cx25821_fmt const formats[2U] = { {(char *)"4:1:1, packed, Y41P", 1345401945U, 12, 1, 0U},
        {(char *)"4:2:2, packed, YUYV", 1448695129U, 16, 1, 0U}};
static struct cx25821_fmt const *cx25821_format_by_fourcc(unsigned int fourcc )
{
  unsigned int i ;
  {
  i = 0U;
  goto ldv_35787;
  ldv_35786: ;
  if ((unsigned int )formats[i].fourcc == fourcc) {
    return ((struct cx25821_fmt const *)(& formats) + (unsigned long )i);
  } else {
  }
  i = i + 1U;
  ldv_35787: ;
  if (i <= 1U) {
    goto ldv_35786;
  } else {
  }
  return ((struct cx25821_fmt const *)0);
}
}
void cx25821_video_wakeup(struct cx25821_dev *dev , struct cx25821_dmaqueue *q , u32 count )
{
  struct cx25821_buffer *buf ;
  int bc ;
  int tmp ;
  struct list_head const *__mptr ;
  int tmp___0 ;
  {
  bc = 0;
  ldv_35799:
  {
  tmp = list_empty((struct list_head const *)(& q->active));
  }
  if (tmp != 0) {
    goto ldv_35796;
  } else {
  }
  __mptr = (struct list_head const *)q->active.next;
  buf = (struct cx25821_buffer *)__mptr + 0xffffffffffffffc8UL;
  if ((int )((short )((int )((unsigned short )count) - (int )((unsigned short )buf->count))) < 0) {
    goto ldv_35796;
  } else {
  }
  {
  v4l2_get_timestamp(& buf->vb.ts);
  buf->vb.state = 4;
  list_del(& buf->vb.queue);
  __wake_up(& buf->vb.done, 3U, 1, (void *)0);
  bc = bc + 1;
  }
  goto ldv_35799;
  ldv_35796:
  {
  tmp___0 = list_empty((struct list_head const *)(& q->active));
  }
  if (tmp___0 != 0) {
    {
    ldv_del_timer_19(& q->timeout);
    }
  } else {
    {
    ldv_mod_timer_20(& q->timeout, (unsigned long )jiffies + 250UL);
    }
  }
  if (bc != 1) {
    {
    printk("\vcx25821: %s: %d buffers handled (should be 1)\n", "cx25821_video_wakeup",
           bc);
    }
  } else {
  }
  return;
}
}
int cx25821_start_video_dma(struct cx25821_dev *dev , struct cx25821_dmaqueue *q ,
                            struct cx25821_buffer *buf , struct sram_channel const *channel )
{
  int tmp ;
  unsigned int tmp___0 ;
  unsigned int tmp___1 ;
  unsigned int tmp___2 ;
  unsigned int tmp___3 ;
  unsigned int tmp___4 ;
  unsigned int tmp___5 ;
  {
  {
  tmp = 0;
  cx25821_sram_channel_setup(dev, channel, buf->bpl, (u32 )buf->risc.dma);
  writel(3U, (void volatile *)dev->lmmio + (unsigned long )(channel->gpcnt_ctl >> 2));
  q->count = 1U;
  tmp___0 = readl((void const volatile *)dev->lmmio + 65540U);
  tmp___1 = readl((void const volatile *)dev->lmmio + 65540U);
  tmp___2 = readl((void const volatile *)dev->lmmio + 65540U);
  tmp___3 = readl((void const volatile *)dev->lmmio + 65540U);
  writel((tmp___0 & ~ (tmp___1 | (unsigned int )(1 << (int )channel->i))) | ((unsigned int )(1 << (int )channel->i) | (tmp___2 & tmp___3)),
         (void volatile *)dev->lmmio + 65540U);
  tmp___4 = readl((void const volatile *)dev->lmmio + (unsigned long )(channel->int_msk >> 2));
  writel(tmp___4 | 17U, (void volatile *)dev->lmmio + (unsigned long )(channel->int_msk >> 2));
  writel(17U, (void volatile *)dev->lmmio + (unsigned long )(channel->dma_ctl >> 2));
  tmp___5 = readl((void const volatile *)dev->lmmio + 278558U);
  tmp = (int )tmp___5;
  writel((unsigned int )tmp & 4294966784U, (void volatile *)dev->lmmio + 278558U);
  }
  return (0);
}
}
static int cx25821_restart_video_queue(struct cx25821_dev *dev , struct cx25821_dmaqueue *q ,
                                       struct sram_channel const *channel )
{
  struct cx25821_buffer *buf ;
  struct cx25821_buffer *prev ;
  struct list_head *item ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  u32 tmp ;
  int tmp___0 ;
  int tmp___1 ;
  struct list_head const *__mptr___1 ;
  u32 tmp___2 ;
  u32 tmp___3 ;
  {
  {
  tmp___0 = list_empty((struct list_head const *)(& q->active));
  }
  if (tmp___0 == 0) {
    {
    __mptr = (struct list_head const *)q->active.next;
    buf = (struct cx25821_buffer *)__mptr + 0xffffffffffffffc8UL;
    cx25821_start_video_dma(dev, q, buf, channel);
    item = q->active.next;
    }
    goto ldv_35821;
    ldv_35820:
    __mptr___0 = (struct list_head const *)item;
    buf = (struct cx25821_buffer *)__mptr___0 + 0xffffffffffffffc8UL;
    tmp = q->count;
    q->count = q->count + 1U;
    buf->count = tmp;
    item = item->next;
    ldv_35821: ;
    if ((unsigned long )item != (unsigned long )(& q->active)) {
      goto ldv_35820;
    } else {
    }
    {
    ldv_mod_timer_21(& q->timeout, (unsigned long )jiffies + 250UL);
    }
    return (0);
  } else {
  }
  prev = (struct cx25821_buffer *)0;
  ldv_35825:
  {
  tmp___1 = list_empty((struct list_head const *)(& q->queued));
  }
  if (tmp___1 != 0) {
    return (0);
  } else {
  }
  __mptr___1 = (struct list_head const *)q->queued.next;
  buf = (struct cx25821_buffer *)__mptr___1 + 0xffffffffffffffc8UL;
  if ((unsigned long )prev == (unsigned long )((struct cx25821_buffer *)0)) {
    {
    list_move_tail(& buf->vb.queue, & q->active);
    cx25821_start_video_dma(dev, q, buf, channel);
    buf->vb.state = 3;
    tmp___2 = q->count;
    q->count = q->count + 1U;
    buf->count = tmp___2;
    ldv_mod_timer_22(& q->timeout, (unsigned long )jiffies + 250UL);
    }
  } else
  if (*((unsigned long *)prev + 1UL) == *((unsigned long *)buf + 1UL) && (unsigned long )prev->fmt == (unsigned long )buf->fmt) {
    {
    list_move_tail(& buf->vb.queue, & q->active);
    buf->vb.state = 3;
    tmp___3 = q->count;
    q->count = q->count + 1U;
    buf->count = tmp___3;
    *(prev->risc.jmp + 1UL) = (unsigned int )buf->risc.dma;
    *(prev->risc.jmp + 2UL) = 0U;
    }
  } else {
    return (0);
  }
  prev = buf;
  goto ldv_35825;
}
}
static void cx25821_vid_timeout(unsigned long data )
{
  struct cx25821_data *timeout_data ;
  struct cx25821_dev *dev ;
  struct sram_channel const *channel ;
  struct cx25821_dmaqueue *q ;
  struct cx25821_buffer *buf ;
  unsigned long flags ;
  unsigned int tmp ;
  raw_spinlock_t *tmp___0 ;
  struct list_head const *__mptr ;
  int tmp___1 ;
  {
  {
  timeout_data = (struct cx25821_data *)data;
  dev = timeout_data->dev;
  channel = timeout_data->channel;
  q = & dev->channels[channel->i].dma_vidq;
  tmp = readl((void const volatile *)dev->lmmio + (unsigned long )(channel->dma_ctl >> 2));
  writel(tmp & 4294967278U, (void volatile *)dev->lmmio + (unsigned long )(channel->dma_ctl >> 2));
  tmp___0 = spinlock_check(& dev->slock);
  flags = _raw_spin_lock_irqsave(tmp___0);
  }
  goto ldv_35841;
  ldv_35840:
  {
  __mptr = (struct list_head const *)q->active.next;
  buf = (struct cx25821_buffer *)__mptr + 0xffffffffffffffc8UL;
  list_del(& buf->vb.queue);
  buf->vb.state = 5;
  __wake_up(& buf->vb.done, 3U, 1, (void *)0);
  }
  ldv_35841:
  {
  tmp___1 = list_empty((struct list_head const *)(& q->active));
  }
  if (tmp___1 == 0) {
    goto ldv_35840;
  } else {
  }
  {
  cx25821_restart_video_queue(dev, q, channel);
  spin_unlock_irqrestore(& dev->slock, flags);
  }
  return;
}
}
int cx25821_video_irq(struct cx25821_dev *dev , int chan_num , u32 status )
{
  u32 count ;
  int handled ;
  u32 mask ;
  struct sram_channel const *channel ;
  unsigned int tmp ;
  {
  {
  count = 0U;
  handled = 0;
  channel = dev->channels[chan_num].sram_channels;
  mask = readl((void const volatile *)dev->lmmio + (unsigned long )(channel->int_msk >> 2));
  }
  if ((status & mask) == 0U) {
    return (handled);
  } else {
  }
  {
  writel(status, (void volatile *)dev->lmmio + (unsigned long )(channel->int_stat >> 2));
  }
  if ((status & 65536U) != 0U) {
    {
    printk("\fcx25821: %s, %s: video risc op code error\n", (char *)(& dev->name),
           channel->name);
    tmp = readl((void const volatile *)dev->lmmio + (unsigned long )(channel->dma_ctl >> 2));
    writel(tmp & 4294967278U, (void volatile *)dev->lmmio + (unsigned long )(channel->dma_ctl >> 2));
    cx25821_sram_channel_dump(dev, channel);
    }
  } else {
  }
  if ((int )status & 1) {
    {
    spin_lock(& dev->slock);
    count = readl((void const volatile *)dev->lmmio + (unsigned long )(channel->gpcnt >> 2));
    cx25821_video_wakeup(dev, & dev->channels[channel->i].dma_vidq, count);
    spin_unlock(& dev->slock);
    handled = handled + 1;
    }
  } else {
  }
  if ((status & 16U) != 0U) {
    {
    spin_lock(& dev->slock);
    cx25821_restart_video_queue(dev, & dev->channels[channel->i].dma_vidq, channel);
    spin_unlock(& dev->slock);
    handled = handled + 1;
    }
  } else {
  }
  return (handled);
}
}
static int cx25821_buffer_setup(struct videobuf_queue *q , unsigned int *count , unsigned int *size )
{
  struct cx25821_channel *chan ;
  {
  chan = (struct cx25821_channel *)q->priv_data;
  *size = ((unsigned int )(chan->fmt)->depth * chan->width) * chan->height >> 3;
  if (*count == 0U) {
    *count = 32U;
  } else {
  }
  if (*size * *count > vid_limit * 1048576U) {
    *count = (vid_limit * 1048576U) / *size;
  } else {
  }
  return (0);
}
}
static int cx25821_buffer_prepare(struct videobuf_queue *q , struct videobuf_buffer *vb ,
                                  enum v4l2_field field )
{
  struct cx25821_channel *chan ;
  struct cx25821_dev *dev ;
  struct cx25821_buffer *buf ;
  struct videobuf_buffer const *__mptr ;
  int rc ;
  int init_buffer ;
  u32 line0_offset ;
  struct videobuf_dmabuf *dma ;
  struct videobuf_dmabuf *tmp ;
  int bpl_local ;
  long tmp___0 ;
  {
  {
  chan = (struct cx25821_channel *)q->priv_data;
  dev = chan->dev;
  __mptr = (struct videobuf_buffer const *)vb;
  buf = (struct cx25821_buffer *)__mptr;
  init_buffer = 0;
  tmp = videobuf_to_dma(& buf->vb);
  dma = tmp;
  bpl_local = 1440;
  tmp___0 = ldv__builtin_expect((unsigned long )chan->fmt == (unsigned long )((struct cx25821_fmt const *)0),
                             0L);
  }
  if (tmp___0 != 0L) {
    {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"drivers/media/pci/cx25821/cx25821-video.c"),
                         "i" (290), "i" (12UL));
    __builtin_unreachable();
    }
  } else {
  }
  if ((chan->width - 48U > 672U || chan->height <= 31U) || chan->height > 576U) {
    return (-22);
  } else {
  }
  buf->vb.size = (unsigned long )((chan->width * chan->height) * (unsigned int )(chan->fmt)->depth >> 3);
  if (buf->vb.baddr != 0UL && buf->vb.bsize < buf->vb.size) {
    return (-22);
  } else {
  }
  if (((unsigned long )buf->fmt != (unsigned long )chan->fmt || *((unsigned long *)buf + 1UL) != *((unsigned long *)chan + 366UL)) || (unsigned int )buf->vb.field != (unsigned int )field) {
    buf->fmt = chan->fmt;
    buf->vb.width = chan->width;
    buf->vb.height = chan->height;
    buf->vb.field = field;
    init_buffer = 1;
  } else {
  }
  if ((unsigned int )buf->vb.state == 0U) {
    {
    init_buffer = 1;
    rc = videobuf_iolock(q, & buf->vb, (struct v4l2_framebuffer *)0);
    }
    if (rc != 0) {
      {
      printk("\017cx25821: videobuf_iolock failed!\n");
      }
      goto fail;
    } else {
    }
  } else {
  }
  if (init_buffer != 0) {
    if (chan->pixel_formats == 5) {
      buf->bpl = (unsigned int )(buf->fmt)->depth * buf->vb.width >> 3;
    } else {
      buf->bpl = (unsigned int )((buf->fmt)->depth >> 3) * buf->vb.width;
    }
    if (chan->pixel_formats == 5) {
      bpl_local = (int )buf->bpl;
    } else {
      bpl_local = (int )buf->bpl;
      if (chan->use_cif_resolution != 0) {
        if ((dev->tvnorm & 16713471ULL) != 0ULL) {
          bpl_local = 704;
        } else {
          bpl_local = chan->cif_width << 1;
        }
      } else {
      }
    }
    {
    if ((unsigned int )buf->vb.field == 2U) {
      goto case_2;
    } else {
    }
    if ((unsigned int )buf->vb.field == 3U) {
      goto case_3;
    } else {
    }
    if ((unsigned int )buf->vb.field == 4U) {
      goto case_4;
    } else {
    }
    if ((unsigned int )buf->vb.field == 5U) {
      goto case_5;
    } else {
    }
    if ((unsigned int )buf->vb.field == 6U) {
      goto case_6;
    } else {
    }
    goto switch_default;
    case_2:
    {
    cx25821_risc_buffer(dev->pci, & buf->risc, dma->sglist, 0U, 4294967295U, buf->bpl,
                        0U, buf->vb.height);
    }
    goto ldv_35875;
    case_3:
    {
    cx25821_risc_buffer(dev->pci, & buf->risc, dma->sglist, 4294967295U, 0U, buf->bpl,
                        0U, buf->vb.height);
    }
    goto ldv_35875;
    case_4:
    {
    line0_offset = 0U;
    cx25821_risc_buffer(dev->pci, & buf->risc, dma->sglist, line0_offset, (unsigned int )bpl_local,
                        (unsigned int )bpl_local, (unsigned int )bpl_local, buf->vb.height >> 1);
    }
    goto ldv_35875;
    case_5:
    {
    cx25821_risc_buffer(dev->pci, & buf->risc, dma->sglist, 0U, buf->bpl * (buf->vb.height >> 1),
                        buf->bpl, 0U, buf->vb.height >> 1);
    }
    goto ldv_35875;
    case_6:
    {
    cx25821_risc_buffer(dev->pci, & buf->risc, dma->sglist, buf->bpl * (buf->vb.height >> 1),
                        0U, buf->bpl, 0U, buf->vb.height >> 1);
    }
    goto ldv_35875;
    switch_default:
    {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"drivers/media/pci/cx25821/cx25821-video.c"),
                         "i" (374), "i" (12UL));
    __builtin_unreachable();
    }
    switch_break: ;
    }
    ldv_35875: ;
  } else {
  }
  buf->vb.state = 1;
  return (0);
  fail:
  {
  cx25821_free_buffer(q, buf);
  }
  return (rc);
}
}
static void cx25821_buffer_release(struct videobuf_queue *q , struct videobuf_buffer *vb )
{
  struct cx25821_buffer *buf ;
  struct videobuf_buffer const *__mptr ;
  {
  {
  __mptr = (struct videobuf_buffer const *)vb;
  buf = (struct cx25821_buffer *)__mptr;
  cx25821_free_buffer(q, buf);
  }
  return;
}
}
static int cx25821_video_mmap(struct file *file , struct vm_area_struct *vma )
{
  struct cx25821_channel *chan ;
  void *tmp ;
  int tmp___0 ;
  {
  {
  tmp = video_drvdata(file);
  chan = (struct cx25821_channel *)tmp;
  tmp___0 = videobuf_mmap_mapper(& chan->vidq, vma);
  }
  return (tmp___0);
}
}
static void buffer_queue(struct videobuf_queue *vq , struct videobuf_buffer *vb )
{
  struct cx25821_buffer *buf ;
  struct videobuf_buffer const *__mptr ;
  struct cx25821_buffer *prev ;
  struct cx25821_channel *chan ;
  struct cx25821_dev *dev ;
  struct cx25821_dmaqueue *q ;
  u32 tmp ;
  struct list_head const *__mptr___0 ;
  u32 tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  {
  {
  __mptr = (struct videobuf_buffer const *)vb;
  buf = (struct cx25821_buffer *)__mptr;
  chan = (struct cx25821_channel *)vq->priv_data;
  dev = chan->dev;
  q = & dev->channels[chan->id].dma_vidq;
  *(buf->risc.jmp) = 1895890944U;
  *(buf->risc.jmp + 1UL) = (unsigned int )q->stopper.dma;
  *(buf->risc.jmp + 2UL) = 0U;
  tmp___2 = list_empty((struct list_head const *)(& q->queued));
  }
  if (tmp___2 == 0) {
    {
    list_add_tail(& buf->vb.queue, & q->queued);
    buf->vb.state = 2;
    }
  } else {
    {
    tmp___1 = list_empty((struct list_head const *)(& q->active));
    }
    if (tmp___1 != 0) {
      {
      list_add_tail(& buf->vb.queue, & q->active);
      cx25821_start_video_dma(dev, q, buf, chan->sram_channels);
      buf->vb.state = 3;
      tmp = q->count;
      q->count = q->count + 1U;
      buf->count = tmp;
      ldv_mod_timer_23(& q->timeout, (unsigned long )jiffies + 250UL);
      }
    } else {
      __mptr___0 = (struct list_head const *)q->active.prev;
      prev = (struct cx25821_buffer *)__mptr___0 + 0xffffffffffffffc8UL;
      if (*((unsigned long *)prev + 1UL) == *((unsigned long *)buf + 1UL) && (unsigned long )prev->fmt == (unsigned long )buf->fmt) {
        {
        list_add_tail(& buf->vb.queue, & q->active);
        buf->vb.state = 3;
        tmp___0 = q->count;
        q->count = q->count + 1U;
        buf->count = tmp___0;
        *(prev->risc.jmp + 1UL) = (unsigned int )buf->risc.dma;
        *(prev->risc.jmp + 2UL) = 0U;
        }
      } else {
        {
        list_add_tail(& buf->vb.queue, & q->queued);
        buf->vb.state = 2;
        }
      }
    }
  }
  {
  tmp___3 = list_empty((struct list_head const *)(& q->active));
  }
  return;
}
}
static struct videobuf_queue_ops cx25821_video_qops = {& cx25821_buffer_setup, & cx25821_buffer_prepare, & buffer_queue, & cx25821_buffer_release};
static ssize_t video_read(struct file *file , char *data , size_t count , loff_t *ppos )
{
  struct v4l2_fh *fh ;
  struct cx25821_channel *chan ;
  void *tmp ;
  struct cx25821_dev *dev ;
  int err ;
  int tmp___0 ;
  ssize_t tmp___1 ;
  {
  {
  fh = (struct v4l2_fh *)file->private_data;
  tmp = video_drvdata(file);
  chan = (struct cx25821_channel *)tmp;
  dev = chan->dev;
  err = 0;
  tmp___0 = mutex_lock_interruptible_nested(& dev->lock, 0U);
  }
  if (tmp___0 != 0) {
    return (-512L);
  } else {
  }
  if ((unsigned long )chan->streaming_fh != (unsigned long )((struct v4l2_fh *)0) && (unsigned long )chan->streaming_fh != (unsigned long )fh) {
    err = -16;
    goto unlock;
  } else {
  }
  {
  chan->streaming_fh = fh;
  tmp___1 = videobuf_read_one(& chan->vidq, data, count, ppos, (int )file->f_flags & 2048);
  err = (int )tmp___1;
  }
  unlock:
  {
  mutex_unlock(& dev->lock);
  }
  return ((ssize_t )err);
}
}
static unsigned int video_poll(struct file *file , struct poll_table_struct *wait )
{
  struct cx25821_channel *chan ;
  void *tmp ;
  unsigned long req_events ;
  unsigned long tmp___0 ;
  unsigned int res ;
  unsigned int tmp___1 ;
  unsigned int tmp___2 ;
  {
  {
  tmp = video_drvdata(file);
  chan = (struct cx25821_channel *)tmp;
  tmp___0 = poll_requested_events((poll_table const *)wait);
  req_events = tmp___0;
  tmp___1 = v4l2_ctrl_poll(file, wait);
  res = tmp___1;
  }
  if ((req_events & 65UL) != 0UL) {
    {
    tmp___2 = videobuf_poll_stream(file, & chan->vidq, wait);
    res = res | tmp___2;
    }
  } else {
  }
  return (res);
}
}
static int video_release(struct file *file )
{
  struct cx25821_channel *chan ;
  void *tmp ;
  struct v4l2_fh *fh ;
  struct cx25821_dev *dev ;
  struct sram_channel const *sram_ch ;
  int tmp___0 ;
  {
  {
  tmp = video_drvdata(file);
  chan = (struct cx25821_channel *)tmp;
  fh = (struct v4l2_fh *)file->private_data;
  dev = chan->dev;
  sram_ch = dev->channels[0].sram_channels;
  mutex_lock_nested(& dev->lock, 0U);
  writel(0U, (void volatile *)dev->lmmio + (unsigned long )(sram_ch->dma_ctl >> 2));
  }
  if ((unsigned long )chan->streaming_fh == (unsigned long )fh) {
    {
    videobuf_queue_cancel(& chan->vidq);
    chan->streaming_fh = (struct v4l2_fh *)0;
    }
  } else {
  }
  if ((unsigned long )chan->vidq.read_buf != (unsigned long )((struct videobuf_buffer *)0)) {
    {
    cx25821_buffer_release(& chan->vidq, chan->vidq.read_buf);
    kfree((void const *)chan->vidq.read_buf);
    }
  } else {
  }
  {
  videobuf_mmap_free(& chan->vidq);
  mutex_unlock(& dev->lock);
  tmp___0 = v4l2_fh_release(file);
  }
  return (tmp___0);
}
}
static int cx25821_vidioc_enum_fmt_vid_cap(struct file *file , void *priv , struct v4l2_fmtdesc *f )
{
  long tmp ;
  {
  {
  tmp = ldv__builtin_expect(f->index > 1U, 0L);
  }
  if (tmp != 0L) {
    return (-22);
  } else {
  }
  {
  strlcpy((char *)(& f->description), (char const *)formats[f->index].name, 32UL);
  f->pixelformat = formats[f->index].fourcc;
  }
  return (0);
}
}
static int cx25821_vidioc_g_fmt_vid_cap(struct file *file , void *priv , struct v4l2_format *f )
{
  struct cx25821_channel *chan ;
  void *tmp ;
  {
  {
  tmp = video_drvdata(file);
  chan = (struct cx25821_channel *)tmp;
  f->fmt.pix.width = chan->width;
  f->fmt.pix.height = chan->height;
  f->fmt.pix.field = (__u32 )chan->vidq.field;
  f->fmt.pix.pixelformat = (chan->fmt)->fourcc;
  f->fmt.pix.bytesperline = chan->width * (unsigned int )(chan->fmt)->depth >> 3;
  f->fmt.pix.sizeimage = chan->height * f->fmt.pix.bytesperline;
  f->fmt.pix.colorspace = 1U;
  f->fmt.pix.priv = 0U;
  }
  return (0);
}
}
static int cx25821_vidioc_try_fmt_vid_cap(struct file *file , void *priv , struct v4l2_format *f )
{
  struct cx25821_channel *chan ;
  void *tmp ;
  struct cx25821_dev *dev ;
  struct cx25821_fmt const *fmt ;
  enum v4l2_field field ;
  unsigned int maxh ;
  unsigned int w ;
  {
  {
  tmp = video_drvdata(file);
  chan = (struct cx25821_channel *)tmp;
  dev = chan->dev;
  field = f->fmt.pix.field;
  fmt = cx25821_format_by_fourcc(f->fmt.pix.pixelformat);
  }
  if ((unsigned long )fmt == (unsigned long )((struct cx25821_fmt const *)0)) {
    return (-22);
  } else {
  }
  maxh = (dev->tvnorm & 16713471ULL) != 0ULL ? 576U : 480U;
  w = f->fmt.pix.width;
  if ((unsigned int )field != 3U) {
    field = 2;
  } else {
  }
  if (w <= 351U) {
    w = 176U;
    f->fmt.pix.height = maxh / 4U;
  } else
  if (w <= 719U) {
    w = 352U;
    f->fmt.pix.height = maxh / 2U;
  } else {
    w = 720U;
    f->fmt.pix.height = maxh;
    field = 4;
  }
  f->fmt.pix.field = (__u32 )field;
  f->fmt.pix.width = w;
  f->fmt.pix.bytesperline = f->fmt.pix.width * (__u32 )fmt->depth >> 3;
  f->fmt.pix.sizeimage = f->fmt.pix.height * f->fmt.pix.bytesperline;
  f->fmt.pix.colorspace = 1U;
  f->fmt.pix.priv = 0U;
  return (0);
}
}
static int vidioc_s_fmt_vid_cap(struct file *file , void *priv , struct v4l2_format *f )
{
  struct cx25821_channel *chan ;
  void *tmp ;
  struct cx25821_dev *dev ;
  int pix_format ;
  int err ;
  {
  {
  tmp = video_drvdata(file);
  chan = (struct cx25821_channel *)tmp;
  dev = chan->dev;
  pix_format = 4;
  err = cx25821_vidioc_try_fmt_vid_cap(file, priv, f);
  }
  if (err != 0) {
    return (err);
  } else {
  }
  {
  chan->fmt = cx25821_format_by_fourcc(f->fmt.pix.pixelformat);
  chan->vidq.field = (enum v4l2_field )f->fmt.pix.field;
  chan->width = f->fmt.pix.width;
  chan->height = f->fmt.pix.height;
  }
  if (f->fmt.pix.pixelformat == 1345401945U) {
    pix_format = 5;
  } else {
    pix_format = 4;
  }
  {
  cx25821_set_pixel_format(dev, 0, (u32 )pix_format);
  }
  if (chan->width == 320U || chan->width == 352U) {
    chan->use_cif_resolution = 1;
  } else {
    chan->use_cif_resolution = 0;
  }
  {
  chan->cif_width = (int )chan->width;
  medusa_set_resolution(dev, (int )chan->width, 0);
  }
  return (0);
}
}
static int vidioc_streamon(struct file *file , void *priv , enum v4l2_buf_type i )
{
  struct cx25821_channel *chan ;
  void *tmp ;
  int tmp___0 ;
  {
  {
  tmp = video_drvdata(file);
  chan = (struct cx25821_channel *)tmp;
  }
  if ((unsigned int )i != 1U) {
    return (-22);
  } else {
  }
  if ((unsigned long )chan->streaming_fh != (unsigned long )((struct v4l2_fh *)0) && (unsigned long )((void *)chan->streaming_fh) != (unsigned long )priv) {
    return (-16);
  } else {
  }
  {
  chan->streaming_fh = (struct v4l2_fh *)priv;
  tmp___0 = videobuf_streamon(& chan->vidq);
  }
  return (tmp___0);
}
}
static int vidioc_streamoff(struct file *file , void *priv , enum v4l2_buf_type i )
{
  struct cx25821_channel *chan ;
  void *tmp ;
  int tmp___0 ;
  {
  {
  tmp = video_drvdata(file);
  chan = (struct cx25821_channel *)tmp;
  }
  if ((unsigned int )i != 1U) {
    return (-22);
  } else {
  }
  if ((unsigned long )chan->streaming_fh != (unsigned long )((struct v4l2_fh *)0) && (unsigned long )((void *)chan->streaming_fh) != (unsigned long )priv) {
    return (-16);
  } else {
  }
  if ((unsigned long )chan->streaming_fh == (unsigned long )((struct v4l2_fh *)0)) {
    return (0);
  } else {
  }
  {
  chan->streaming_fh = (struct v4l2_fh *)0;
  tmp___0 = videobuf_streamoff(& chan->vidq);
  }
  return (tmp___0);
}
}
static int vidioc_dqbuf(struct file *file , void *priv , struct v4l2_buffer *p )
{
  int ret_val ;
  struct cx25821_channel *chan ;
  void *tmp ;
  {
  {
  ret_val = 0;
  tmp = video_drvdata(file);
  chan = (struct cx25821_channel *)tmp;
  ret_val = videobuf_dqbuf(& chan->vidq, p, (int )file->f_flags & 2048);
  p->sequence = chan->dma_vidq.count;
  }
  return (ret_val);
}
}
static int vidioc_log_status(struct file *file , void *priv )
{
  struct cx25821_channel *chan ;
  void *tmp ;
  struct cx25821_dev *dev ;
  struct sram_channel const *sram_ch ;
  u32 tmp___0 ;
  {
  {
  tmp = video_drvdata(file);
  chan = (struct cx25821_channel *)tmp;
  dev = chan->dev;
  sram_ch = chan->sram_channels;
  tmp___0 = 0U;
  tmp___0 = readl((void const volatile *)dev->lmmio + (unsigned long )(sram_ch->dma_ctl >> 2));
  printk("\016cx25821: Video input 0 is %s\n", (tmp___0 & 17U) != 0U ? (char *)"streaming" : (char *)"stopped");
  }
  return (0);
}
}
static int cx25821_vidioc_querycap(struct file *file , void *priv , struct v4l2_capability *cap )
{
  struct cx25821_channel *chan ;
  void *tmp ;
  struct cx25821_dev *dev ;
  u32 cap_input ;
  u32 cap_output ;
  char const *tmp___0 ;
  {
  {
  tmp = video_drvdata(file);
  chan = (struct cx25821_channel *)tmp;
  dev = chan->dev;
  cap_input = 83886081U;
  cap_output = 16777218U;
  strcpy((char *)(& cap->driver), "cx25821");
  strlcpy((char *)(& cap->card), cx25821_boards[dev->board].name, 32UL);
  tmp___0 = pci_name((struct pci_dev const *)dev->pci);
  sprintf((char *)(& cap->bus_info), "PCIe:%s", tmp___0);
  }
  if (chan->id > 7U) {
    cap->device_caps = 16777218U;
  } else {
    cap->device_caps = 83886081U;
  }
  cap->capabilities = 2231369731U;
  return (0);
}
}
static int cx25821_vidioc_reqbufs(struct file *file , void *priv , struct v4l2_requestbuffers *p )
{
  struct cx25821_channel *chan ;
  void *tmp ;
  int tmp___0 ;
  {
  {
  tmp = video_drvdata(file);
  chan = (struct cx25821_channel *)tmp;
  tmp___0 = videobuf_reqbufs(& chan->vidq, p);
  }
  return (tmp___0);
}
}
static int cx25821_vidioc_querybuf(struct file *file , void *priv , struct v4l2_buffer *p )
{
  struct cx25821_channel *chan ;
  void *tmp ;
  int tmp___0 ;
  {
  {
  tmp = video_drvdata(file);
  chan = (struct cx25821_channel *)tmp;
  tmp___0 = videobuf_querybuf(& chan->vidq, p);
  }
  return (tmp___0);
}
}
static int cx25821_vidioc_qbuf(struct file *file , void *priv , struct v4l2_buffer *p )
{
  struct cx25821_channel *chan ;
  void *tmp ;
  int tmp___0 ;
  {
  {
  tmp = video_drvdata(file);
  chan = (struct cx25821_channel *)tmp;
  tmp___0 = videobuf_qbuf(& chan->vidq, p);
  }
  return (tmp___0);
}
}
static int cx25821_vidioc_g_std(struct file *file , void *priv , v4l2_std_id *tvnorms )
{
  struct cx25821_channel *chan ;
  void *tmp ;
  {
  {
  tmp = video_drvdata(file);
  chan = (struct cx25821_channel *)tmp;
  *tvnorms = (chan->dev)->tvnorm;
  }
  return (0);
}
}
static int cx25821_vidioc_s_std(struct file *file , void *priv , v4l2_std_id tvnorms )
{
  struct cx25821_channel *chan ;
  void *tmp ;
  struct cx25821_dev *dev ;
  {
  {
  tmp = video_drvdata(file);
  chan = (struct cx25821_channel *)tmp;
  dev = chan->dev;
  }
  if (dev->tvnorm == tvnorms) {
    return (0);
  } else {
  }
  {
  dev->tvnorm = tvnorms;
  chan->width = 720U;
  chan->height = (dev->tvnorm & 16713471ULL) != 0ULL ? 576U : 480U;
  medusa_set_videostandard(dev);
  }
  return (0);
}
}
static int cx25821_vidioc_enum_input(struct file *file , void *priv , struct v4l2_input *i )
{
  {
  if (i->index != 0U) {
    return (-22);
  } else {
  }
  {
  i->type = 2U;
  i->std = 47103ULL;
  strcpy((char *)(& i->name), "Composite");
  }
  return (0);
}
}
static int cx25821_vidioc_g_input(struct file *file , void *priv , unsigned int *i )
{
  {
  *i = 0U;
  return (0);
}
}
static int cx25821_vidioc_s_input(struct file *file , void *priv , unsigned int i )
{
  {
  return (i != 0U ? -22 : 0);
}
}
static int cx25821_s_ctrl(struct v4l2_ctrl *ctrl )
{
  struct cx25821_channel *chan ;
  struct v4l2_ctrl_handler const *__mptr ;
  struct cx25821_dev *dev ;
  {
  __mptr = (struct v4l2_ctrl_handler const *)ctrl->handler;
  chan = (struct cx25821_channel *)__mptr + 0xffffffffffffffe8UL;
  dev = chan->dev;
  {
  if (ctrl->id == 9963776U) {
    goto case_9963776;
  } else {
  }
  if (ctrl->id == 9963779U) {
    goto case_9963779;
  } else {
  }
  if (ctrl->id == 9963777U) {
    goto case_9963777;
  } else {
  }
  if (ctrl->id == 9963778U) {
    goto case_9963778;
  } else {
  }
  goto switch_default;
  case_9963776:
  {
  medusa_set_brightness(dev, ctrl->__annonCompField82.val, (int )chan->id);
  }
  goto ldv_36055;
  case_9963779:
  {
  medusa_set_hue(dev, ctrl->__annonCompField82.val, (int )chan->id);
  }
  goto ldv_36055;
  case_9963777:
  {
  medusa_set_contrast(dev, ctrl->__annonCompField82.val, (int )chan->id);
  }
  goto ldv_36055;
  case_9963778:
  {
  medusa_set_saturation(dev, ctrl->__annonCompField82.val, (int )chan->id);
  }
  goto ldv_36055;
  switch_default: ;
  return (-22);
  switch_break: ;
  }
  ldv_36055: ;
  return (0);
}
}
static int cx25821_vidioc_enum_output(struct file *file , void *priv , struct v4l2_output *o )
{
  {
  if (o->index != 0U) {
    return (-22);
  } else {
  }
  {
  o->type = 2U;
  o->std = 47103ULL;
  strcpy((char *)(& o->name), "Composite");
  }
  return (0);
}
}
static int cx25821_vidioc_g_output(struct file *file , void *priv , unsigned int *o )
{
  {
  *o = 0U;
  return (0);
}
}
static int cx25821_vidioc_s_output(struct file *file , void *priv , unsigned int o )
{
  {
  return (o != 0U ? -22 : 0);
}
}
static int cx25821_vidioc_try_fmt_vid_out(struct file *file , void *priv , struct v4l2_format *f )
{
  struct cx25821_channel *chan ;
  void *tmp ;
  struct cx25821_dev *dev ;
  struct cx25821_fmt const *fmt ;
  {
  {
  tmp = video_drvdata(file);
  chan = (struct cx25821_channel *)tmp;
  dev = chan->dev;
  fmt = cx25821_format_by_fourcc(f->fmt.pix.pixelformat);
  }
  if ((unsigned long )fmt == (unsigned long )((struct cx25821_fmt const *)0)) {
    return (-22);
  } else {
  }
  f->fmt.pix.width = 720U;
  f->fmt.pix.height = (dev->tvnorm & 16713471ULL) != 0ULL ? 576U : 480U;
  f->fmt.pix.field = 4U;
  f->fmt.pix.bytesperline = f->fmt.pix.width * (__u32 )fmt->depth >> 3;
  f->fmt.pix.sizeimage = f->fmt.pix.height * f->fmt.pix.bytesperline;
  f->fmt.pix.colorspace = 1U;
  f->fmt.pix.priv = 0U;
  return (0);
}
}
static int vidioc_s_fmt_vid_out(struct file *file , void *priv , struct v4l2_format *f )
{
  struct cx25821_channel *chan ;
  void *tmp ;
  int err ;
  {
  {
  tmp = video_drvdata(file);
  chan = (struct cx25821_channel *)tmp;
  err = cx25821_vidioc_try_fmt_vid_out(file, priv, f);
  }
  if (err != 0) {
    return (err);
  } else {
  }
  {
  chan->fmt = cx25821_format_by_fourcc(f->fmt.pix.pixelformat);
  chan->vidq.field = (enum v4l2_field )f->fmt.pix.field;
  chan->width = f->fmt.pix.width;
  chan->height = f->fmt.pix.height;
  }
  if (f->fmt.pix.pixelformat == 1345401945U) {
    chan->pixel_formats = 5;
  } else {
    chan->pixel_formats = 4;
  }
  return (0);
}
}
static ssize_t video_write(struct file *file , char const *data , size_t count ,
                           loff_t *ppos )
{
  struct cx25821_channel *chan ;
  void *tmp ;
  struct cx25821_dev *dev ;
  struct v4l2_fh *fh ;
  int err ;
  int tmp___0 ;
  {
  {
  tmp = video_drvdata(file);
  chan = (struct cx25821_channel *)tmp;
  dev = chan->dev;
  fh = (struct v4l2_fh *)file->private_data;
  err = 0;
  tmp___0 = mutex_lock_interruptible_nested(& dev->lock, 0U);
  }
  if (tmp___0 != 0) {
    return (-512L);
  } else {
  }
  if ((unsigned long )chan->streaming_fh != (unsigned long )((struct v4l2_fh *)0) && (unsigned long )chan->streaming_fh != (unsigned long )fh) {
    err = -16;
    goto unlock;
  } else {
  }
  if ((unsigned long )chan->streaming_fh == (unsigned long )((struct v4l2_fh *)0)) {
    {
    err = cx25821_vidupstream_init(chan, chan->pixel_formats);
    }
    if (err != 0) {
      goto unlock;
    } else {
    }
    chan->streaming_fh = fh;
  } else {
  }
  {
  err = cx25821_write_frame(chan, data, count);
  count = count - (size_t )err;
  *ppos = *ppos + (loff_t )err;
  }
  unlock:
  {
  mutex_unlock(& dev->lock);
  }
  return ((ssize_t )err);
}
}
static int video_out_release(struct file *file )
{
  struct cx25821_channel *chan ;
  void *tmp ;
  struct cx25821_dev *dev ;
  struct v4l2_fh *fh ;
  int tmp___0 ;
  {
  {
  tmp = video_drvdata(file);
  chan = (struct cx25821_channel *)tmp;
  dev = chan->dev;
  fh = (struct v4l2_fh *)file->private_data;
  mutex_lock_nested(& dev->lock, 0U);
  }
  if ((unsigned long )chan->streaming_fh == (unsigned long )fh) {
    {
    cx25821_stop_upstream_video(chan);
    chan->streaming_fh = (struct v4l2_fh *)0;
    }
  } else {
  }
  {
  mutex_unlock(& dev->lock);
  tmp___0 = v4l2_fh_release(file);
  }
  return (tmp___0);
}
}
static struct v4l2_ctrl_ops const cx25821_ctrl_ops = {0, 0, & cx25821_s_ctrl};
static struct v4l2_file_operations const video_fops =
     {& __this_module, & video_read, 0, & video_poll, 0, & video_ioctl2, 0, 0, & cx25821_video_mmap,
    & v4l2_fh_open, & video_release};
static struct v4l2_ioctl_ops const video_ioctl_ops =
     {& cx25821_vidioc_querycap, 0, 0, & cx25821_vidioc_enum_fmt_vid_cap, 0, 0, 0, 0,
    & cx25821_vidioc_g_fmt_vid_cap, 0, 0, 0, 0, 0, 0, 0, 0, 0, & vidioc_s_fmt_vid_cap,
    0, 0, 0, 0, 0, 0, 0, 0, 0, & cx25821_vidioc_try_fmt_vid_cap, 0, 0, 0, 0, 0, 0,
    0, 0, 0, & cx25821_vidioc_reqbufs, & cx25821_vidioc_querybuf, & cx25821_vidioc_qbuf,
    0, & vidioc_dqbuf, 0, 0, 0, 0, 0, & vidioc_streamon, & vidioc_streamoff, & cx25821_vidioc_g_std,
    & cx25821_vidioc_s_std, 0, & cx25821_vidioc_enum_input, & cx25821_vidioc_g_input,
    & cx25821_vidioc_s_input, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, & vidioc_log_status,
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, & v4l2_ctrl_subscribe_event, & v4l2_event_unsubscribe,
    0};
static struct video_device const cx25821_video_device =
     {{{0, 0}, 0, 0U, 0, 0U, 0U, 0UL, 0U, (unsigned short)0, (unsigned short)0, (unsigned short)0,
     (unsigned short)0, 0, 0, 0, 0, 0, 0, {.alsa = {0U, 0U, 0U}}}, & video_fops, {0,
                                                                                  0,
                                                                                  {0,
                                                                                   {0,
                                                                                    0},
                                                                                   0,
                                                                                   0,
                                                                                   0,
                                                                                   0,
                                                                                   {{0}},
                                                                                   {{{0L},
                                                                                     {0,
                                                                                      0},
                                                                                     0,
                                                                                     {0,
                                                                                      {0,
                                                                                       0},
                                                                                      0,
                                                                                      0,
                                                                                      0UL}},
                                                                                    {{0,
                                                                                      0},
                                                                                     0UL,
                                                                                     0,
                                                                                     0,
                                                                                     0UL,
                                                                                     0,
                                                                                     0,
                                                                                     0,
                                                                                     {(char)0,
                                                                                      (char)0,
                                                                                      (char)0,
                                                                                      (char)0,
                                                                                      (char)0,
                                                                                      (char)0,
                                                                                      (char)0,
                                                                                      (char)0,
                                                                                      (char)0,
                                                                                      (char)0,
                                                                                      (char)0,
                                                                                      (char)0,
                                                                                      (char)0,
                                                                                      (char)0,
                                                                                      (char)0,
                                                                                      (char)0},
                                                                                     {0,
                                                                                      {0,
                                                                                       0},
                                                                                      0,
                                                                                      0,
                                                                                      0UL}},
                                                                                    0,
                                                                                    0},
                                                                                   0U,
                                                                                   0U,
                                                                                   0U,
                                                                                   0U,
                                                                                   0U},
                                                                                  0,
                                                                                  0,
                                                                                  {{0},
                                                                                   {{{{{0U}},
                                                                                      0U,
                                                                                      0U,
                                                                                      0,
                                                                                      {0,
                                                                                       {0,
                                                                                        0},
                                                                                       0,
                                                                                       0,
                                                                                       0UL}}}},
                                                                                   {0,
                                                                                    0},
                                                                                   0,
                                                                                   0,
                                                                                   0,
                                                                                   {0,
                                                                                    {0,
                                                                                     0},
                                                                                    0,
                                                                                    0,
                                                                                    0UL}},
                                                                                  0,
                                                                                  0,
                                                                                  0,
                                                                                  {{0},
                                                                                   0U,
                                                                                   0U,
                                                                                   (_Bool)0,
                                                                                   (_Bool)0,
                                                                                   (_Bool)0,
                                                                                   (_Bool)0,
                                                                                   {{{{{0U}},
                                                                                      0U,
                                                                                      0U,
                                                                                      0,
                                                                                      {0,
                                                                                       {0,
                                                                                        0},
                                                                                       0,
                                                                                       0,
                                                                                       0UL}}}},
                                                                                   {0,
                                                                                    0},
                                                                                   {0U,
                                                                                    {{{{{{0U}},
                                                                                        0U,
                                                                                        0U,
                                                                                        0,
                                                                                        {0,
                                                                                         {0,
                                                                                          0},
                                                                                         0,
                                                                                         0,
                                                                                         0UL}}}},
                                                                                     {0,
                                                                                      0}}},
                                                                                   0,
                                                                                   (_Bool)0,
                                                                                   (_Bool)0,
                                                                                   {{0,
                                                                                     0},
                                                                                    0UL,
                                                                                    0,
                                                                                    0,
                                                                                    0UL,
                                                                                    0,
                                                                                    0,
                                                                                    0,
                                                                                    {(char)0,
                                                                                     (char)0,
                                                                                     (char)0,
                                                                                     (char)0,
                                                                                     (char)0,
                                                                                     (char)0,
                                                                                     (char)0,
                                                                                     (char)0,
                                                                                     (char)0,
                                                                                     (char)0,
                                                                                     (char)0,
                                                                                     (char)0,
                                                                                     (char)0,
                                                                                     (char)0,
                                                                                     (char)0,
                                                                                     (char)0},
                                                                                    {0,
                                                                                     {0,
                                                                                      0},
                                                                                     0,
                                                                                     0,
                                                                                     0UL}},
                                                                                   0UL,
                                                                                   {{0L},
                                                                                    {0,
                                                                                     0},
                                                                                    0,
                                                                                    {0,
                                                                                     {0,
                                                                                      0},
                                                                                     0,
                                                                                     0,
                                                                                     0UL}},
                                                                                   {{{{{{0U}},
                                                                                       0U,
                                                                                       0U,
                                                                                       0,
                                                                                       {0,
                                                                                        {0,
                                                                                         0},
                                                                                        0,
                                                                                        0,
                                                                                        0UL}}}},
                                                                                    {0,
                                                                                     0}},
                                                                                   {0},
                                                                                   {0},
                                                                                   0U,
                                                                                   0U,
                                                                                   0U,
                                                                                   0U,
                                                                                   0U,
                                                                                   0U,
                                                                                   0U,
                                                                                   0U,
                                                                                   0U,
                                                                                   0U,
                                                                                   0U,
                                                                                   0,
                                                                                   0,
                                                                                   0,
                                                                                   0,
                                                                                   0UL,
                                                                                   0UL,
                                                                                   0UL,
                                                                                   0UL,
                                                                                   0,
                                                                                   0},
                                                                                  0,
                                                                                  0,
                                                                                  0,
                                                                                  0,
                                                                                  0ULL,
                                                                                  0,
                                                                                  {0,
                                                                                   0},
                                                                                  0,
                                                                                  {0,
                                                                                   0},
                                                                                  0,
                                                                                  {0},
                                                                                  0U,
                                                                                  0U,
                                                                                  {{{{{0U}},
                                                                                     0U,
                                                                                     0U,
                                                                                     0,
                                                                                     {0,
                                                                                      {0,
                                                                                       0},
                                                                                      0,
                                                                                      0,
                                                                                      0UL}}}},
                                                                                  {0,
                                                                                   0},
                                                                                  {0,
                                                                                   {0,
                                                                                    0},
                                                                                   {{0}}},
                                                                                  0,
                                                                                  0,
                                                                                  0,
                                                                                  0,
                                                                                  (_Bool)0,
                                                                                  (_Bool)0},
    0, 0, 0, 0, 0, 0, {'c', 'x', '2', '5', '8', '2', '1', '-', 'v', 'i', 'd', 'e',
                       'o', '\000'}, 0, 0, -1, (unsigned short)0, 0UL, 0, {{{{{0U}},
                                                                             0U, 0U,
                                                                             0, {0,
                                                                                 {0,
                                                                                  0},
                                                                                 0,
                                                                                 0,
                                                                                 0UL}}}},
    {0, 0}, 0, 47103ULL, & video_device_release_empty, & video_ioctl_ops, {0UL, 0UL,
                                                                           0UL}, {0UL,
                                                                                  0UL,
                                                                                  0UL},
    0};
static struct v4l2_file_operations const video_out_fops =
     {& __this_module, 0, & video_write, 0, 0, & video_ioctl2, 0, 0, 0, & v4l2_fh_open,
    & video_out_release};
static struct v4l2_ioctl_ops const video_out_ioctl_ops =
     {& cx25821_vidioc_querycap, 0, 0, 0, 0, & cx25821_vidioc_enum_fmt_vid_cap, 0, 0,
    0, 0, & cx25821_vidioc_g_fmt_vid_cap, 0, 0, 0, 0, 0, 0, 0, 0, 0, & vidioc_s_fmt_vid_out,
    0, 0, 0, 0, 0, 0, 0, 0, 0, & cx25821_vidioc_try_fmt_vid_out, 0, 0, 0, 0, 0, 0,
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, & cx25821_vidioc_g_std, & cx25821_vidioc_s_std,
    0, 0, 0, 0, & cx25821_vidioc_enum_output, & cx25821_vidioc_g_output, & cx25821_vidioc_s_output,
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    0, 0, 0, 0, 0, 0, 0, 0, 0, & vidioc_log_status, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    0, 0, 0, 0};
static struct video_device const cx25821_video_out_device =
     {{{0, 0}, 0, 0U, 0, 0U, 0U, 0UL, 0U, (unsigned short)0, (unsigned short)0, (unsigned short)0,
     (unsigned short)0, 0, 0, 0, 0, 0, 0, {.alsa = {0U, 0U, 0U}}}, & video_out_fops,
    {0, 0, {0, {0, 0}, 0, 0, 0, 0, {{0}}, {{{0L}, {0, 0}, 0, {0, {0, 0}, 0, 0, 0UL}},
                                           {{0, 0}, 0UL, 0, 0, 0UL, 0, 0, 0, {(char)0,
                                                                              (char)0,
                                                                              (char)0,
                                                                              (char)0,
                                                                              (char)0,
                                                                              (char)0,
                                                                              (char)0,
                                                                              (char)0,
                                                                              (char)0,
                                                                              (char)0,
                                                                              (char)0,
                                                                              (char)0,
                                                                              (char)0,
                                                                              (char)0,
                                                                              (char)0,
                                                                              (char)0},
                                            {0, {0, 0}, 0, 0, 0UL}}, 0, 0}, 0U, 0U,
            0U, 0U, 0U}, 0, 0, {{0}, {{{{{0U}}, 0U, 0U, 0, {0, {0, 0}, 0, 0, 0UL}}}},
                                {0, 0}, 0, 0, 0, {0, {0, 0}, 0, 0, 0UL}}, 0, 0, 0,
     {{0}, 0U, 0U, (_Bool)0, (_Bool)0, (_Bool)0, (_Bool)0, {{{{{0U}}, 0U, 0U, 0, {0,
                                                                                  {0,
                                                                                   0},
                                                                                  0,
                                                                                  0,
                                                                                  0UL}}}},
      {0, 0}, {0U, {{{{{{0U}}, 0U, 0U, 0, {0, {0, 0}, 0, 0, 0UL}}}}, {0, 0}}}, 0,
      (_Bool)0, (_Bool)0, {{0, 0}, 0UL, 0, 0, 0UL, 0, 0, 0, {(char)0, (char)0, (char)0,
                                                             (char)0, (char)0, (char)0,
                                                             (char)0, (char)0, (char)0,
                                                             (char)0, (char)0, (char)0,
                                                             (char)0, (char)0, (char)0,
                                                             (char)0}, {0, {0, 0},
                                                                        0, 0, 0UL}},
      0UL, {{0L}, {0, 0}, 0, {0, {0, 0}, 0, 0, 0UL}}, {{{{{{0U}}, 0U, 0U, 0, {0, {0,
                                                                                  0},
                                                                              0, 0,
                                                                              0UL}}}},
                                                       {0, 0}}, {0}, {0}, 0U, 0U,
      0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0, 0, 0, 0, 0UL, 0UL, 0UL, 0UL, 0, 0}, 0,
     0, 0, 0, 0ULL, 0, {0, 0}, 0, {0, 0}, 0, {0}, 0U, 0U, {{{{{0U}}, 0U, 0U, 0, {0,
                                                                                 {0,
                                                                                  0},
                                                                                 0,
                                                                                 0,
                                                                                 0UL}}}},
     {0, 0}, {0, {0, 0}, {{0}}}, 0, 0, 0, 0, (_Bool)0, (_Bool)0}, 0, 0, 0, 0, 0, 0,
    {'c', 'x', '2', '5', '8', '2', '1', '-', 'v', 'i', 'd', 'e', 'o', '\000'}, 0,
    0, -1, (unsigned short)0, 0UL, 0, {{{{{0U}}, 0U, 0U, 0, {0, {0, 0}, 0, 0, 0UL}}}},
    {0, 0}, 0, 47103ULL, & video_device_release_empty, & video_out_ioctl_ops, {0UL,
                                                                               0UL,
                                                                               0UL},
    {0UL, 0UL, 0UL}, 0};
void cx25821_video_unregister(struct cx25821_dev *dev , int chan_num )
{
  unsigned int tmp ;
  int tmp___0 ;
  {
  {
  tmp = readl((void const volatile *)dev->lmmio + 65540U);
  writel(tmp & 4294967294U, (void volatile *)dev->lmmio + 65540U);
  tmp___0 = video_is_registered(& dev->channels[chan_num].vdev);
  }
  if (tmp___0 != 0) {
    {
    video_unregister_device(& dev->channels[chan_num].vdev);
    v4l2_ctrl_handler_free(& dev->channels[chan_num].hdl);
    btcx_riscmem_free(dev->pci, & dev->channels[chan_num].dma_vidq.stopper);
    }
  } else {
  }
  return;
}
}
int cx25821_video_register(struct cx25821_dev *dev )
{
  int err ;
  int i ;
  struct lock_class_key __key ;
  struct cx25821_channel *chan ;
  struct video_device *vdev ;
  struct v4l2_ctrl_handler *hdl ;
  bool is_output ;
  struct lock_class_key _key ;
  struct lock_class_key __key___0 ;
  unsigned int tmp ;
  int tmp___0 ;
  {
  {
  dev->tvnorm = 4096ULL;
  spinlock_check(& dev->slock);
  __raw_spin_lock_init(& dev->slock.__annonCompField19.rlock, "&(&dev->slock)->rlock",
                       & __key);
  i = 0;
  }
  goto ldv_36134;
  ldv_36133:
  chan = (struct cx25821_channel *)(& dev->channels) + (unsigned long )i;
  vdev = & chan->vdev;
  hdl = & chan->hdl;
  is_output = i > 8;
  if (i == 8) {
    goto ldv_36128;
  } else {
  }
  if (! is_output) {
    {
    v4l2_ctrl_handler_init_class(hdl, 4U, & _key, "cx25821_video:1051:(hdl)->_lock");
    v4l2_ctrl_new_std(hdl, & cx25821_ctrl_ops, 9963776U, 0, 10000, 1U, 6200);
    v4l2_ctrl_new_std(hdl, & cx25821_ctrl_ops, 9963777U, 0, 10000, 1U, 5000);
    v4l2_ctrl_new_std(hdl, & cx25821_ctrl_ops, 9963778U, 0, 10000, 1U, 5000);
    v4l2_ctrl_new_std(hdl, & cx25821_ctrl_ops, 9963779U, 0, 10000, 1U, 5000);
    }
    if (hdl->error != 0) {
      err = hdl->error;
      goto fail_unreg;
    } else {
    }
    {
    err = v4l2_ctrl_handler_setup(hdl);
    }
    if (err != 0) {
      goto fail_unreg;
    } else {
    }
  } else {
    chan->out = (struct cx25821_video_out_data *)(& dev->vid_out_data) + ((unsigned long )i + 0xfffffffffffffff7UL);
    (chan->out)->chan = chan;
  }
  {
  cx25821_risc_stopper(dev->pci, & chan->dma_vidq.stopper, (chan->sram_channels)->dma_ctl,
                       17U, 0U);
  chan->sram_channels = (struct sram_channel const *)(& cx25821_sram_channels) + (unsigned long )i;
  chan->width = 720U;
  }
  if ((dev->tvnorm & 16713471ULL) != 0ULL) {
    chan->height = 576U;
  } else {
    chan->height = 480U;
  }
  if (chan->pixel_formats == 5) {
    {
    chan->fmt = cx25821_format_by_fourcc(1345401945U);
    }
  } else {
    {
    chan->fmt = cx25821_format_by_fourcc(1448695129U);
    }
  }
  {
  writel(4294967295U, (void volatile *)dev->lmmio + (unsigned long )((chan->sram_channels)->int_stat >> 2));
  INIT_LIST_HEAD(& chan->dma_vidq.active);
  INIT_LIST_HEAD(& chan->dma_vidq.queued);
  chan->timeout_data.dev = dev;
  chan->timeout_data.channel = (struct sram_channel const *)(& cx25821_sram_channels) + (unsigned long )i;
  chan->dma_vidq.timeout.function = & cx25821_vid_timeout;
  chan->dma_vidq.timeout.data = (unsigned long )(& chan->timeout_data);
  init_timer_key(& chan->dma_vidq.timeout, 0U, "(&chan->dma_vidq.timeout)", & __key___0);
  }
  if (! is_output) {
    {
    videobuf_queue_sg_init(& chan->vidq, (struct videobuf_queue_ops const *)(& cx25821_video_qops),
                           & (dev->pci)->dev, & dev->slock, 1, 4, 296U, (void *)chan,
                           & dev->lock);
    }
  } else {
  }
  *vdev = (int )is_output ? cx25821_video_out_device : cx25821_video_device;
  vdev->v4l2_dev = & dev->v4l2_dev;
  if (! is_output) {
    vdev->ctrl_handler = hdl;
  } else {
    vdev->vfl_dir = 1;
  }
  {
  vdev->lock = & dev->lock;
  set_bit(2L, (unsigned long volatile *)(& vdev->flags));
  snprintf((char *)(& vdev->name), 32UL, "%s #%d", (char *)(& dev->name), i);
  video_set_drvdata(vdev, (void *)chan);
  err = video_register_device(vdev, 0, (int )video_nr[dev->nr]);
  }
  if (err < 0) {
    goto fail_unreg;
  } else {
  }
  ldv_36128:
  i = i + 1;
  ldv_36134: ;
  if (i <= 10) {
    goto ldv_36133;
  } else {
  }
  {
  tmp = readl((void const volatile *)dev->lmmio + 65540U);
  writel(tmp | 255U, (void volatile *)dev->lmmio + 65540U);
  }
  return (0);
  fail_unreg: ;
  goto ldv_36137;
  ldv_36136:
  {
  tmp___0 = i;
  i = i - 1;
  cx25821_video_unregister(dev, tmp___0);
  }
  ldv_36137: ;
  if (i >= 0) {
    goto ldv_36136;
  } else {
  }
  return (err);
}
}
void ldv_dispatch_instance_register_11_2(struct timer_list *arg0 ) ;
int ldv_mod_timer(int arg0 , struct timer_list *arg1 , unsigned long arg2 ) ;
struct v4l2_file_operations *ldv_7_container_v4l2_file_operations ;
struct video_device *ldv_7_resource_struct_video_device ;
struct v4l2_file_operations *ldv_8_container_v4l2_file_operations ;
struct video_device *ldv_8_resource_struct_video_device ;
int (*ldv_4_callback_s_ctrl)(struct v4l2_ctrl * ) = & cx25821_s_ctrl;
int (*ldv_5_callback_buf_prepare)(struct videobuf_queue * , struct videobuf_buffer * ,
                                  enum v4l2_field ) = & cx25821_buffer_prepare;
void (*ldv_5_callback_buf_queue)(struct videobuf_queue * , struct videobuf_buffer * ) = & buffer_queue;
void (*ldv_5_callback_buf_release)(struct videobuf_queue * , struct videobuf_buffer * ) = & cx25821_buffer_release;
int (*ldv_5_callback_buf_setup)(struct videobuf_queue * , unsigned int * , unsigned int * ) = & cx25821_buffer_setup;
void (*ldv_7_callback_func_1_ptr)(struct video_device * ) = & video_device_release_empty;
int (*ldv_7_callback_mmap)(struct file * , struct vm_area_struct * ) = & cx25821_video_mmap;
unsigned int (*ldv_7_callback_poll)(struct file * , struct poll_table_struct * ) = & video_poll;
long (*ldv_7_callback_read)(struct file * , char * , unsigned long , long long * ) = & video_read;
long (*ldv_7_callback_unlocked_ioctl)(struct file * , unsigned int , unsigned long ) = & video_ioctl2;
int (*ldv_7_callback_vidioc_dqbuf)(struct file * , void * , struct v4l2_buffer * ) = & vidioc_dqbuf;
int (*ldv_7_callback_vidioc_enum_fmt_vid_cap)(struct file * , void * , struct v4l2_fmtdesc * ) = & cx25821_vidioc_enum_fmt_vid_cap;
int (*ldv_7_callback_vidioc_enum_fmt_vid_out)(struct file * , void * , struct v4l2_fmtdesc * ) = & cx25821_vidioc_enum_fmt_vid_cap;
int (*ldv_7_callback_vidioc_enum_input)(struct file * , void * , struct v4l2_input * ) = & cx25821_vidioc_enum_input;
int (*ldv_7_callback_vidioc_enum_output)(struct file * , void * , struct v4l2_output * ) = & cx25821_vidioc_enum_output;
int (*ldv_7_callback_vidioc_g_fmt_vid_cap)(struct file * , void * , struct v4l2_format * ) = & cx25821_vidioc_g_fmt_vid_cap;
int (*ldv_7_callback_vidioc_g_fmt_vid_out)(struct file * , void * , struct v4l2_format * ) = & cx25821_vidioc_g_fmt_vid_cap;
int (*ldv_7_callback_vidioc_g_input)(struct file * , void * , unsigned int * ) = & cx25821_vidioc_g_input;
int (*ldv_7_callback_vidioc_g_output)(struct file * , void * , unsigned int * ) = & cx25821_vidioc_g_output;
int (*ldv_7_callback_vidioc_g_std)(struct file * , void * , unsigned long long * ) = & cx25821_vidioc_g_std;
int (*ldv_7_callback_vidioc_log_status)(struct file * , void * ) = & vidioc_log_status;
int (*ldv_7_callback_vidioc_qbuf)(struct file * , void * , struct v4l2_buffer * ) = & cx25821_vidioc_qbuf;
int (*ldv_7_callback_vidioc_querybuf)(struct file * , void * , struct v4l2_buffer * ) = & cx25821_vidioc_querybuf;
int (*ldv_7_callback_vidioc_querycap)(struct file * , void * , struct v4l2_capability * ) = & cx25821_vidioc_querycap;
int (*ldv_7_callback_vidioc_reqbufs)(struct file * , void * , struct v4l2_requestbuffers * ) = & cx25821_vidioc_reqbufs;
int (*ldv_7_callback_vidioc_s_fmt_vid_cap)(struct file * , void * , struct v4l2_format * ) = & vidioc_s_fmt_vid_cap;
int (*ldv_7_callback_vidioc_s_fmt_vid_out)(struct file * , void * , struct v4l2_format * ) = & vidioc_s_fmt_vid_out;
int (*ldv_7_callback_vidioc_s_input)(struct file * , void * , unsigned int ) = & cx25821_vidioc_s_input;
int (*ldv_7_callback_vidioc_s_output)(struct file * , void * , unsigned int ) = & cx25821_vidioc_s_output;
int (*ldv_7_callback_vidioc_s_std)(struct file * , void * , unsigned long long ) = & cx25821_vidioc_s_std;
int (*ldv_7_callback_vidioc_streamoff)(struct file * , void * , enum v4l2_buf_type ) = & vidioc_streamoff;
int (*ldv_7_callback_vidioc_streamon)(struct file * , void * , enum v4l2_buf_type ) = & vidioc_streamon;
int (*ldv_7_callback_vidioc_subscribe_event)(struct v4l2_fh * , struct v4l2_event_subscription * ) = (int (*)(struct v4l2_fh * ,
            struct v4l2_event_subscription * ))(& v4l2_ctrl_subscribe_event);
int (*ldv_7_callback_vidioc_try_fmt_vid_cap)(struct file * , void * , struct v4l2_format * ) = & cx25821_vidioc_try_fmt_vid_cap;
int (*ldv_7_callback_vidioc_try_fmt_vid_out)(struct file * , void * , struct v4l2_format * ) = & cx25821_vidioc_try_fmt_vid_out;
int (*ldv_7_callback_vidioc_unsubscribe_event)(struct v4l2_fh * , struct v4l2_event_subscription * ) = (int (*)(struct v4l2_fh * ,
            struct v4l2_event_subscription * ))(& v4l2_event_unsubscribe);
void (*ldv_8_callback_func_1_ptr)(struct video_device * ) = & video_device_release_empty;
long (*ldv_8_callback_unlocked_ioctl)(struct file * , unsigned int , unsigned long ) = & video_ioctl2;
int (*ldv_8_callback_vidioc_dqbuf)(struct file * , void * , struct v4l2_buffer * ) = & vidioc_dqbuf;
int (*ldv_8_callback_vidioc_enum_fmt_vid_cap)(struct file * , void * , struct v4l2_fmtdesc * ) = & cx25821_vidioc_enum_fmt_vid_cap;
int (*ldv_8_callback_vidioc_enum_fmt_vid_out)(struct file * , void * , struct v4l2_fmtdesc * ) = & cx25821_vidioc_enum_fmt_vid_cap;
int (*ldv_8_callback_vidioc_enum_input)(struct file * , void * , struct v4l2_input * ) = & cx25821_vidioc_enum_input;
int (*ldv_8_callback_vidioc_enum_output)(struct file * , void * , struct v4l2_output * ) = & cx25821_vidioc_enum_output;
int (*ldv_8_callback_vidioc_g_fmt_vid_cap)(struct file * , void * , struct v4l2_format * ) = & cx25821_vidioc_g_fmt_vid_cap;
int (*ldv_8_callback_vidioc_g_fmt_vid_out)(struct file * , void * , struct v4l2_format * ) = & cx25821_vidioc_g_fmt_vid_cap;
int (*ldv_8_callback_vidioc_g_input)(struct file * , void * , unsigned int * ) = & cx25821_vidioc_g_input;
int (*ldv_8_callback_vidioc_g_output)(struct file * , void * , unsigned int * ) = & cx25821_vidioc_g_output;
int (*ldv_8_callback_vidioc_g_std)(struct file * , void * , unsigned long long * ) = & cx25821_vidioc_g_std;
int (*ldv_8_callback_vidioc_log_status)(struct file * , void * ) = & vidioc_log_status;
int (*ldv_8_callback_vidioc_qbuf)(struct file * , void * , struct v4l2_buffer * ) = & cx25821_vidioc_qbuf;
int (*ldv_8_callback_vidioc_querybuf)(struct file * , void * , struct v4l2_buffer * ) = & cx25821_vidioc_querybuf;
int (*ldv_8_callback_vidioc_querycap)(struct file * , void * , struct v4l2_capability * ) = & cx25821_vidioc_querycap;
int (*ldv_8_callback_vidioc_reqbufs)(struct file * , void * , struct v4l2_requestbuffers * ) = & cx25821_vidioc_reqbufs;
int (*ldv_8_callback_vidioc_s_fmt_vid_cap)(struct file * , void * , struct v4l2_format * ) = & vidioc_s_fmt_vid_cap;
int (*ldv_8_callback_vidioc_s_fmt_vid_out)(struct file * , void * , struct v4l2_format * ) = & vidioc_s_fmt_vid_out;
int (*ldv_8_callback_vidioc_s_input)(struct file * , void * , unsigned int ) = & cx25821_vidioc_s_input;
int (*ldv_8_callback_vidioc_s_output)(struct file * , void * , unsigned int ) = & cx25821_vidioc_s_output;
int (*ldv_8_callback_vidioc_s_std)(struct file * , void * , unsigned long long ) = & cx25821_vidioc_s_std;
int (*ldv_8_callback_vidioc_streamoff)(struct file * , void * , enum v4l2_buf_type ) = & vidioc_streamoff;
int (*ldv_8_callback_vidioc_streamon)(struct file * , void * , enum v4l2_buf_type ) = & vidioc_streamon;
int (*ldv_8_callback_vidioc_subscribe_event)(struct v4l2_fh * , struct v4l2_event_subscription * ) = (int (*)(struct v4l2_fh * ,
            struct v4l2_event_subscription * ))(& v4l2_ctrl_subscribe_event);
int (*ldv_8_callback_vidioc_try_fmt_vid_cap)(struct file * , void * , struct v4l2_format * ) = & cx25821_vidioc_try_fmt_vid_cap;
int (*ldv_8_callback_vidioc_try_fmt_vid_out)(struct file * , void * , struct v4l2_format * ) = & cx25821_vidioc_try_fmt_vid_out;
int (*ldv_8_callback_vidioc_unsubscribe_event)(struct v4l2_fh * , struct v4l2_event_subscription * ) = (int (*)(struct v4l2_fh * ,
            struct v4l2_event_subscription * ))(& v4l2_event_unsubscribe);
long (*ldv_8_callback_write)(struct file * , char * , unsigned long , long long * ) = (long (*)(struct file * ,
             char * , unsigned long , long long * ))(& video_write);
void ldv_dispatch_instance_register_11_2(struct timer_list *arg0 )
{
  {
  {
  ldv_6_container_timer_list = arg0;
  ldv_switch_automaton_state_6_3();
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_4_3(int (*arg0)(struct v4l2_ctrl * ) ,
                                                  struct v4l2_ctrl *arg1 )
{
  {
  {
  cx25821_s_ctrl(arg1);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_5_3(int (*arg0)(struct videobuf_queue * ,
                                                              struct videobuf_buffer * ,
                                                              enum v4l2_field ) ,
                                                  struct videobuf_queue *arg1 , struct videobuf_buffer *arg2 ,
                                                  enum v4l2_field arg3 )
{
  {
  {
  cx25821_buffer_prepare(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_5_7(void (*arg0)(struct videobuf_queue * ,
                                                               struct videobuf_buffer * ) ,
                                                  struct videobuf_queue *arg1 , struct videobuf_buffer *arg2 )
{
  {
  {
  buffer_queue(arg1, arg2);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_5_8(void (*arg0)(struct videobuf_queue * ,
                                                               struct videobuf_buffer * ) ,
                                                  struct videobuf_queue *arg1 , struct videobuf_buffer *arg2 )
{
  {
  {
  cx25821_buffer_release(arg1, arg2);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_5_9(int (*arg0)(struct videobuf_queue * ,
                                                              unsigned int * , unsigned int * ) ,
                                                  struct videobuf_queue *arg1 , unsigned int *arg2 ,
                                                  unsigned int *arg3 )
{
  {
  {
  cx25821_buffer_setup(arg1, arg2, arg3);
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
  video_write(arg1, (char const *)arg2, arg3, arg4);
  }
  return;
}
}
void ldv_io_instance_callback_7_21(int (*arg0)(struct file * , struct vm_area_struct * ) ,
                                   struct file *arg1 , struct vm_area_struct *arg2 )
{
  {
  {
  cx25821_video_mmap(arg1, arg2);
  }
  return;
}
}
void ldv_io_instance_callback_7_22(unsigned int (*arg0)(struct file * , struct poll_table_struct * ) ,
                                   struct file *arg1 , struct poll_table_struct *arg2 )
{
  {
  {
  video_poll(arg1, arg2);
  }
  return;
}
}
void ldv_io_instance_callback_7_23(long (*arg0)(struct file * , char * , unsigned long ,
                                                long long * ) , struct file *arg1 ,
                                   char *arg2 , unsigned long arg3 , long long *arg4 )
{
  {
  {
  video_read(arg1, arg2, arg3, arg4);
  }
  return;
}
}
void ldv_io_instance_callback_7_26(long (*arg0)(struct file * , unsigned int , unsigned long ) ,
                                   struct file *arg1 , unsigned int arg2 , unsigned long arg3 )
{
  {
  {
  video_ioctl2(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_io_instance_callback_7_29(int (*arg0)(struct file * , void * , struct v4l2_buffer * ) ,
                                   struct file *arg1 , void *arg2 , struct v4l2_buffer *arg3 )
{
  {
  {
  vidioc_dqbuf(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_io_instance_callback_7_30(int (*arg0)(struct file * , void * , struct v4l2_fmtdesc * ) ,
                                   struct file *arg1 , void *arg2 , struct v4l2_fmtdesc *arg3 )
{
  {
  {
  cx25821_vidioc_enum_fmt_vid_cap(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_io_instance_callback_7_31(int (*arg0)(struct file * , void * , struct v4l2_fmtdesc * ) ,
                                   struct file *arg1 , void *arg2 , struct v4l2_fmtdesc *arg3 )
{
  {
  {
  cx25821_vidioc_enum_fmt_vid_cap(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_io_instance_callback_7_32(int (*arg0)(struct file * , void * , struct v4l2_input * ) ,
                                   struct file *arg1 , void *arg2 , struct v4l2_input *arg3 )
{
  {
  {
  cx25821_vidioc_enum_input(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_io_instance_callback_7_33(int (*arg0)(struct file * , void * , struct v4l2_output * ) ,
                                   struct file *arg1 , void *arg2 , struct v4l2_output *arg3 )
{
  {
  {
  cx25821_vidioc_enum_output(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_io_instance_callback_7_34(int (*arg0)(struct file * , void * , struct v4l2_format * ) ,
                                   struct file *arg1 , void *arg2 , struct v4l2_format *arg3 )
{
  {
  {
  cx25821_vidioc_g_fmt_vid_cap(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_io_instance_callback_7_35(int (*arg0)(struct file * , void * , struct v4l2_format * ) ,
                                   struct file *arg1 , void *arg2 , struct v4l2_format *arg3 )
{
  {
  {
  cx25821_vidioc_g_fmt_vid_cap(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_io_instance_callback_7_36(int (*arg0)(struct file * , void * , unsigned int * ) ,
                                   struct file *arg1 , void *arg2 , unsigned int *arg3 )
{
  {
  {
  cx25821_vidioc_g_input(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_io_instance_callback_7_39(int (*arg0)(struct file * , void * , unsigned int * ) ,
                                   struct file *arg1 , void *arg2 , unsigned int *arg3 )
{
  {
  {
  cx25821_vidioc_g_output(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_io_instance_callback_7_4(void (*arg0)(struct video_device * ) , struct video_device *arg1 )
{
  {
  {
  video_device_release_empty(arg1);
  }
  return;
}
}
void ldv_io_instance_callback_7_42(int (*arg0)(struct file * , void * , unsigned long long * ) ,
                                   struct file *arg1 , void *arg2 , unsigned long long *arg3 )
{
  {
  {
  cx25821_vidioc_g_std(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_io_instance_callback_7_45(int (*arg0)(struct file * , void * ) , struct file *arg1 ,
                                   void *arg2 )
{
  {
  {
  vidioc_log_status(arg1, arg2);
  }
  return;
}
}
void ldv_io_instance_callback_7_46(int (*arg0)(struct file * , void * , struct v4l2_buffer * ) ,
                                   struct file *arg1 , void *arg2 , struct v4l2_buffer *arg3 )
{
  {
  {
  cx25821_vidioc_qbuf(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_io_instance_callback_7_47(int (*arg0)(struct file * , void * , struct v4l2_buffer * ) ,
                                   struct file *arg1 , void *arg2 , struct v4l2_buffer *arg3 )
{
  {
  {
  cx25821_vidioc_querybuf(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_io_instance_callback_7_48(int (*arg0)(struct file * , void * , struct v4l2_capability * ) ,
                                   struct file *arg1 , void *arg2 , struct v4l2_capability *arg3 )
{
  {
  {
  cx25821_vidioc_querycap(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_io_instance_callback_7_49(int (*arg0)(struct file * , void * , struct v4l2_requestbuffers * ) ,
                                   struct file *arg1 , void *arg2 , struct v4l2_requestbuffers *arg3 )
{
  {
  {
  cx25821_vidioc_reqbufs(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_io_instance_callback_7_50(int (*arg0)(struct file * , void * , struct v4l2_format * ) ,
                                   struct file *arg1 , void *arg2 , struct v4l2_format *arg3 )
{
  {
  {
  vidioc_s_fmt_vid_cap(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_io_instance_callback_7_51(int (*arg0)(struct file * , void * , struct v4l2_format * ) ,
                                   struct file *arg1 , void *arg2 , struct v4l2_format *arg3 )
{
  {
  {
  vidioc_s_fmt_vid_out(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_io_instance_callback_7_52(int (*arg0)(struct file * , void * , unsigned int ) ,
                                   struct file *arg1 , void *arg2 , unsigned int arg3 )
{
  {
  {
  cx25821_vidioc_s_input(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_io_instance_callback_7_55(int (*arg0)(struct file * , void * , unsigned int ) ,
                                   struct file *arg1 , void *arg2 , unsigned int arg3 )
{
  {
  {
  cx25821_vidioc_s_output(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_io_instance_callback_7_58(int (*arg0)(struct file * , void * , unsigned long long ) ,
                                   struct file *arg1 , void *arg2 , unsigned long long arg3 )
{
  {
  {
  cx25821_vidioc_s_std(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_io_instance_callback_7_61(int (*arg0)(struct file * , void * , enum v4l2_buf_type ) ,
                                   struct file *arg1 , void *arg2 , enum v4l2_buf_type arg3 )
{
  {
  {
  vidioc_streamoff(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_io_instance_callback_7_62(int (*arg0)(struct file * , void * , enum v4l2_buf_type ) ,
                                   struct file *arg1 , void *arg2 , enum v4l2_buf_type arg3 )
{
  {
  {
  vidioc_streamon(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_io_instance_callback_7_63(int (*arg0)(struct v4l2_fh * , struct v4l2_event_subscription * ) ,
                                   struct v4l2_fh *arg1 , struct v4l2_event_subscription *arg2 )
{
  {
  {
  v4l2_ctrl_subscribe_event(arg1, (struct v4l2_event_subscription const *)arg2);
  }
  return;
}
}
void ldv_io_instance_callback_7_64(int (*arg0)(struct file * , void * , struct v4l2_format * ) ,
                                   struct file *arg1 , void *arg2 , struct v4l2_format *arg3 )
{
  {
  {
  cx25821_vidioc_try_fmt_vid_cap(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_io_instance_callback_7_65(int (*arg0)(struct file * , void * , struct v4l2_format * ) ,
                                   struct file *arg1 , void *arg2 , struct v4l2_format *arg3 )
{
  {
  {
  cx25821_vidioc_try_fmt_vid_out(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_io_instance_callback_7_66(int (*arg0)(struct v4l2_fh * , struct v4l2_event_subscription * ) ,
                                   struct v4l2_fh *arg1 , struct v4l2_event_subscription *arg2 )
{
  {
  {
  v4l2_event_unsubscribe(arg1, (struct v4l2_event_subscription const *)arg2);
  }
  return;
}
}
void ldv_io_instance_callback_8_26(long (*arg0)(struct file * , unsigned int , unsigned long ) ,
                                   struct file *arg1 , unsigned int arg2 , unsigned long arg3 )
{
  {
  {
  video_ioctl2(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_io_instance_callback_8_29(int (*arg0)(struct file * , void * , struct v4l2_buffer * ) ,
                                   struct file *arg1 , void *arg2 , struct v4l2_buffer *arg3 )
{
  {
  {
  vidioc_dqbuf(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_io_instance_callback_8_30(int (*arg0)(struct file * , void * , struct v4l2_fmtdesc * ) ,
                                   struct file *arg1 , void *arg2 , struct v4l2_fmtdesc *arg3 )
{
  {
  {
  cx25821_vidioc_enum_fmt_vid_cap(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_io_instance_callback_8_31(int (*arg0)(struct file * , void * , struct v4l2_fmtdesc * ) ,
                                   struct file *arg1 , void *arg2 , struct v4l2_fmtdesc *arg3 )
{
  {
  {
  cx25821_vidioc_enum_fmt_vid_cap(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_io_instance_callback_8_32(int (*arg0)(struct file * , void * , struct v4l2_input * ) ,
                                   struct file *arg1 , void *arg2 , struct v4l2_input *arg3 )
{
  {
  {
  cx25821_vidioc_enum_input(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_io_instance_callback_8_33(int (*arg0)(struct file * , void * , struct v4l2_output * ) ,
                                   struct file *arg1 , void *arg2 , struct v4l2_output *arg3 )
{
  {
  {
  cx25821_vidioc_enum_output(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_io_instance_callback_8_34(int (*arg0)(struct file * , void * , struct v4l2_format * ) ,
                                   struct file *arg1 , void *arg2 , struct v4l2_format *arg3 )
{
  {
  {
  cx25821_vidioc_g_fmt_vid_cap(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_io_instance_callback_8_35(int (*arg0)(struct file * , void * , struct v4l2_format * ) ,
                                   struct file *arg1 , void *arg2 , struct v4l2_format *arg3 )
{
  {
  {
  cx25821_vidioc_g_fmt_vid_cap(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_io_instance_callback_8_36(int (*arg0)(struct file * , void * , unsigned int * ) ,
                                   struct file *arg1 , void *arg2 , unsigned int *arg3 )
{
  {
  {
  cx25821_vidioc_g_input(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_io_instance_callback_8_39(int (*arg0)(struct file * , void * , unsigned int * ) ,
                                   struct file *arg1 , void *arg2 , unsigned int *arg3 )
{
  {
  {
  cx25821_vidioc_g_output(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_io_instance_callback_8_4(void (*arg0)(struct video_device * ) , struct video_device *arg1 )
{
  {
  {
  video_device_release_empty(arg1);
  }
  return;
}
}
void ldv_io_instance_callback_8_42(int (*arg0)(struct file * , void * , unsigned long long * ) ,
                                   struct file *arg1 , void *arg2 , unsigned long long *arg3 )
{
  {
  {
  cx25821_vidioc_g_std(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_io_instance_callback_8_45(int (*arg0)(struct file * , void * ) , struct file *arg1 ,
                                   void *arg2 )
{
  {
  {
  vidioc_log_status(arg1, arg2);
  }
  return;
}
}
void ldv_io_instance_callback_8_46(int (*arg0)(struct file * , void * , struct v4l2_buffer * ) ,
                                   struct file *arg1 , void *arg2 , struct v4l2_buffer *arg3 )
{
  {
  {
  cx25821_vidioc_qbuf(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_io_instance_callback_8_47(int (*arg0)(struct file * , void * , struct v4l2_buffer * ) ,
                                   struct file *arg1 , void *arg2 , struct v4l2_buffer *arg3 )
{
  {
  {
  cx25821_vidioc_querybuf(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_io_instance_callback_8_48(int (*arg0)(struct file * , void * , struct v4l2_capability * ) ,
                                   struct file *arg1 , void *arg2 , struct v4l2_capability *arg3 )
{
  {
  {
  cx25821_vidioc_querycap(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_io_instance_callback_8_49(int (*arg0)(struct file * , void * , struct v4l2_requestbuffers * ) ,
                                   struct file *arg1 , void *arg2 , struct v4l2_requestbuffers *arg3 )
{
  {
  {
  cx25821_vidioc_reqbufs(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_io_instance_callback_8_50(int (*arg0)(struct file * , void * , struct v4l2_format * ) ,
                                   struct file *arg1 , void *arg2 , struct v4l2_format *arg3 )
{
  {
  {
  vidioc_s_fmt_vid_cap(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_io_instance_callback_8_51(int (*arg0)(struct file * , void * , struct v4l2_format * ) ,
                                   struct file *arg1 , void *arg2 , struct v4l2_format *arg3 )
{
  {
  {
  vidioc_s_fmt_vid_out(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_io_instance_callback_8_52(int (*arg0)(struct file * , void * , unsigned int ) ,
                                   struct file *arg1 , void *arg2 , unsigned int arg3 )
{
  {
  {
  cx25821_vidioc_s_input(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_io_instance_callback_8_55(int (*arg0)(struct file * , void * , unsigned int ) ,
                                   struct file *arg1 , void *arg2 , unsigned int arg3 )
{
  {
  {
  cx25821_vidioc_s_output(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_io_instance_callback_8_58(int (*arg0)(struct file * , void * , unsigned long long ) ,
                                   struct file *arg1 , void *arg2 , unsigned long long arg3 )
{
  {
  {
  cx25821_vidioc_s_std(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_io_instance_callback_8_61(int (*arg0)(struct file * , void * , enum v4l2_buf_type ) ,
                                   struct file *arg1 , void *arg2 , enum v4l2_buf_type arg3 )
{
  {
  {
  vidioc_streamoff(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_io_instance_callback_8_62(int (*arg0)(struct file * , void * , enum v4l2_buf_type ) ,
                                   struct file *arg1 , void *arg2 , enum v4l2_buf_type arg3 )
{
  {
  {
  vidioc_streamon(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_io_instance_callback_8_63(int (*arg0)(struct v4l2_fh * , struct v4l2_event_subscription * ) ,
                                   struct v4l2_fh *arg1 , struct v4l2_event_subscription *arg2 )
{
  {
  {
  v4l2_ctrl_subscribe_event(arg1, (struct v4l2_event_subscription const *)arg2);
  }
  return;
}
}
void ldv_io_instance_callback_8_64(int (*arg0)(struct file * , void * , struct v4l2_format * ) ,
                                   struct file *arg1 , void *arg2 , struct v4l2_format *arg3 )
{
  {
  {
  cx25821_vidioc_try_fmt_vid_cap(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_io_instance_callback_8_65(int (*arg0)(struct file * , void * , struct v4l2_format * ) ,
                                   struct file *arg1 , void *arg2 , struct v4l2_format *arg3 )
{
  {
  {
  cx25821_vidioc_try_fmt_vid_out(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_io_instance_callback_8_66(int (*arg0)(struct v4l2_fh * , struct v4l2_event_subscription * ) ,
                                   struct v4l2_fh *arg1 , struct v4l2_event_subscription *arg2 )
{
  {
  {
  v4l2_event_unsubscribe(arg1, (struct v4l2_event_subscription const *)arg2);
  }
  return;
}
}
void ldv_io_instance_callback_8_67(long (*arg0)(struct file * , char * , unsigned long ,
                                                long long * ) , struct file *arg1 ,
                                   char *arg2 , unsigned long arg3 , long long *arg4 )
{
  {
  {
  video_write(arg1, (char const *)arg2, arg3, arg4);
  }
  return;
}
}
int ldv_io_instance_probe_7_11(int (*arg0)(struct file * ) , struct file *arg1 )
{
  int tmp ;
  {
  {
  tmp = v4l2_fh_open(arg1);
  }
  return (tmp);
}
}
int ldv_io_instance_probe_8_11(int (*arg0)(struct file * ) , struct file *arg1 )
{
  int tmp ;
  {
  {
  tmp = v4l2_fh_open(arg1);
  }
  return (tmp);
}
}
void ldv_io_instance_release_7_2(int (*arg0)(struct file * ) , struct file *arg1 )
{
  {
  {
  video_release(arg1);
  }
  return;
}
}
void ldv_io_instance_release_8_2(int (*arg0)(struct file * ) , struct file *arg1 )
{
  {
  {
  video_out_release(arg1);
  }
  return;
}
}
int ldv_mod_timer(int arg0 , struct timer_list *arg1 , unsigned long arg2 )
{
  struct timer_list *ldv_11_timer_list_timer_list ;
  int tmp ;
  {
  {
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    {
    ldv_assume(arg0 == 0);
    ldv_11_timer_list_timer_list = arg1;
    ldv_assume(ldv_statevar_6 == 3);
    ldv_dispatch_instance_register_11_2(ldv_11_timer_list_timer_list);
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
static int ldv_del_timer_19(struct timer_list *ldv_func_arg1 )
{
  ldv_func_ret_type___0 ldv_func_res ;
  int tmp ;
  int tmp___0 ;
  {
  {
  tmp = del_timer(ldv_func_arg1);
  ldv_func_res = tmp;
  tmp___0 = ldv_del_timer(ldv_func_res, ldv_func_arg1);
  }
  return (tmp___0);
  return (ldv_func_res);
}
}
static int ldv_mod_timer_20(struct timer_list *ldv_func_arg1 , unsigned long ldv_func_arg2 )
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
static int ldv_mod_timer_21(struct timer_list *ldv_func_arg1 , unsigned long ldv_func_arg2 )
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
static int ldv_mod_timer_22(struct timer_list *ldv_func_arg1 , unsigned long ldv_func_arg2 )
{
  ldv_func_ret_type___3 ldv_func_res ;
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
static int ldv_mod_timer_23(struct timer_list *ldv_func_arg1 , unsigned long ldv_func_arg2 )
{
  ldv_func_ret_type___4 ldv_func_res ;
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
extern struct pv_irq_ops pv_irq_ops ;
extern void *memcpy(void * , void const * , size_t ) ;
extern void *memset(void * , int , size_t ) ;
extern void warn_slowpath_null(char const * , int const ) ;
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
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"/home/debian/klever-work/native-scheduler-work-dir/scheduler/jobs/dfbfd2da522a1f5f4786ee57b863db44/klever-core-work-dir/e5e3e20/linux-drivers-clk1/lkbce/arch/x86/include/asm/paravirt.h"),
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
extern void __init_waitqueue_head(wait_queue_head_t * , char const * , struct lock_class_key * ) ;
extern long prepare_to_wait_event(wait_queue_head_t * , wait_queue_t * , int ) ;
extern void finish_wait(wait_queue_head_t * , wait_queue_t * ) ;
__inline static int is_device_dma_capable(struct device *dev )
{
  {
  return ((unsigned long )dev->dma_mask != (unsigned long )((u64 *)0ULL) && *(dev->dma_mask) != 0ULL);
}
}
extern void debug_dma_alloc_coherent(struct device * , size_t , dma_addr_t , void * ) ;
extern void debug_dma_free_coherent(struct device * , size_t , void * , dma_addr_t ) ;
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
    warn_slowpath_null("/home/debian/klever-work/native-scheduler-work-dir/scheduler/jobs/dfbfd2da522a1f5f4786ee57b863db44/klever-core-work-dir/e5e3e20/linux-drivers-clk1/lkbce/arch/x86/include/asm/dma-mapping.h",
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
__inline static void *pci_alloc_consistent(struct pci_dev *hwdev , size_t size , dma_addr_t *dma_handle )
{
  void *tmp ;
  {
  {
  tmp = dma_alloc_attrs((unsigned long )hwdev != (unsigned long )((struct pci_dev *)0) ? & hwdev->dev : (struct device *)0,
                        size, dma_handle, 32U, (struct dma_attrs *)0);
  }
  return (tmp);
}
}
__inline static void pci_free_consistent(struct pci_dev *hwdev , size_t size , void *vaddr ,
                                         dma_addr_t dma_handle )
{
  {
  {
  dma_free_attrs((unsigned long )hwdev != (unsigned long )((struct pci_dev *)0) ? & hwdev->dev : (struct device *)0,
                 size, vaddr, dma_handle, (struct dma_attrs *)0);
  }
  return;
}
}
__inline static int ldv_request_irq_19(unsigned int irq , irqreturn_t (*handler)(int ,
                                                                                 void * ) ,
                                       unsigned long flags , char const *name ,
                                       void *dev ) ;
static void ldv_free_irq_19(unsigned int ldv_func_arg1 , void *ldv_func_arg2 ) ;
extern void schedule(void) ;
int cx25821_sram_channel_setup_upstream(struct cx25821_dev *dev , struct sram_channel const *ch ,
                                        unsigned int bpl , u32 risc ) ;
static int _intr_msk = 139778;
int cx25821_sram_channel_setup_upstream(struct cx25821_dev *dev , struct sram_channel const *ch ,
                                        unsigned int bpl , u32 risc )
{
  unsigned int i ;
  unsigned int lines ;
  u32 cdt ;
  long tmp ;
  {
  if ((unsigned int )ch->cmds_start == 0U) {
    {
    writel(0U, (void volatile *)dev->lmmio + (unsigned long )(ch->ptr1_reg >> 2));
    writel(0U, (void volatile *)dev->lmmio + (unsigned long )(ch->ptr2_reg >> 2));
    writel(0U, (void volatile *)dev->lmmio + (unsigned long )(ch->cnt2_reg >> 2));
    writel(0U, (void volatile *)dev->lmmio + (unsigned long )(ch->cnt1_reg >> 2));
    }
    return (0);
  } else {
  }
  bpl = (bpl + 7U) & 4294967288U;
  cdt = ch->cdt;
  lines = (unsigned int )ch->fifo_size / bpl;
  if (lines > 4U) {
    lines = 4U;
  } else {
  }
  {
  tmp = ldv__builtin_expect(lines <= 1U, 0L);
  }
  if (tmp != 0L) {
    {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"drivers/media/pci/cx25821/cx25821-video-upstream.c"),
                         "i" (63), "i" (12UL));
    __builtin_unreachable();
    }
  } else {
  }
  i = 0U;
  goto ldv_35734;
  ldv_35733:
  {
  writel((unsigned int )ch->fifo_start + bpl * i, (void volatile *)dev->lmmio + (unsigned long )((cdt + i * 16U) >> 2));
  writel(0U, (void volatile *)dev->lmmio + (unsigned long )(((cdt + i * 16U) + 4U) >> 2));
  writel(0U, (void volatile *)dev->lmmio + (unsigned long )(((cdt + i * 16U) + 8U) >> 2));
  writel(0U, (void volatile *)dev->lmmio + (unsigned long )(((cdt + i * 16U) + 12U) >> 2));
  i = i + 1U;
  }
  ldv_35734: ;
  if (i < lines) {
    goto ldv_35733;
  } else {
  }
  {
  writel(risc, (void volatile *)dev->lmmio + (unsigned long )((unsigned int )ch->cmds_start >> 2));
  writel(0U, (void volatile *)dev->lmmio + (unsigned long )(((unsigned int )ch->cmds_start + 4U) >> 2));
  writel(cdt, (void volatile *)dev->lmmio + (unsigned long )(((unsigned int )ch->cmds_start + 8U) >> 2));
  writel(lines * 16U >> 3, (void volatile *)dev->lmmio + (unsigned long )(((unsigned int )ch->cmds_start + 12U) >> 2));
  writel(ch->ctrl_start, (void volatile *)dev->lmmio + (unsigned long )(((unsigned int )ch->cmds_start + 16U) >> 2));
  writel(16U, (void volatile *)dev->lmmio + (unsigned long )(((unsigned int )ch->cmds_start + 20U) >> 2));
  i = 24U;
  }
  goto ldv_35737;
  ldv_35736:
  {
  writel(0U, (void volatile *)dev->lmmio + (unsigned long )(((unsigned int )ch->cmds_start + i) >> 2));
  i = i + 4U;
  }
  ldv_35737: ;
  if (i <= 79U) {
    goto ldv_35736;
  } else {
  }
  {
  writel(ch->fifo_start, (void volatile *)dev->lmmio + (unsigned long )(ch->ptr1_reg >> 2));
  writel(cdt, (void volatile *)dev->lmmio + (unsigned long )(ch->ptr2_reg >> 2));
  writel(lines * 16U >> 3, (void volatile *)dev->lmmio + (unsigned long )(ch->cnt2_reg >> 2));
  writel((bpl >> 3) - 1U, (void volatile *)dev->lmmio + (unsigned long )(ch->cnt1_reg >> 2));
  }
  return (0);
}
}
static __le32 *cx25821_update_riscprogram(struct cx25821_channel *chan , __le32 *rp ,
                                          unsigned int offset , unsigned int bpl ,
                                          u32 sync_line , unsigned int lines , int fifo_enable ,
                                          int field_type )
{
  struct cx25821_video_out_data *out ;
  unsigned int line ;
  unsigned int i ;
  int dist_betwn_starts ;
  __le32 *tmp ;
  __le32 *tmp___0 ;
  __le32 *tmp___1 ;
  __le32 *tmp___2 ;
  __le32 *tmp___3 ;
  {
  out = chan->out;
  dist_betwn_starts = (int )(bpl * 2U);
  tmp = rp;
  rp = rp + 1;
  *tmp = sync_line | 2147516416U;
  i = 0U;
  goto ldv_35754;
  ldv_35753:
  tmp___0 = rp;
  rp = rp + 1;
  *tmp___0 = 4026531840U;
  i = i + 1U;
  ldv_35754: ;
  if (i <= 4U) {
    goto ldv_35753;
  } else {
  }
  line = 0U;
  goto ldv_35757;
  ldv_35756:
  tmp___1 = rp;
  rp = rp + 1;
  *tmp___1 = bpl | 2617245696U;
  tmp___2 = rp;
  rp = rp + 1;
  *tmp___2 = (unsigned int )out->_data_buf_phys_addr + offset;
  tmp___3 = rp;
  rp = rp + 1;
  *tmp___3 = 0U;
  if ((lines <= 240U || line <= 238U) || out->is_60hz == 0) {
    offset = offset + (unsigned int )dist_betwn_starts;
  } else {
  }
  line = line + 1U;
  ldv_35757: ;
  if (line < lines) {
    goto ldv_35756;
  } else {
  }
  return (rp);
}
}
static __le32 *cx25821_risc_field_upstream(struct cx25821_channel *chan , __le32 *rp ,
                                           dma_addr_t databuf_phys_addr , unsigned int offset ,
                                           u32 sync_line , unsigned int bpl , unsigned int lines ,
                                           int fifo_enable , int field_type )
{
  struct cx25821_video_out_data *out ;
  unsigned int line ;
  unsigned int i ;
  struct sram_channel const *sram_ch ;
  int dist_betwn_starts ;
  __le32 *tmp ;
  __le32 *tmp___0 ;
  __le32 *tmp___1 ;
  __le32 *tmp___2 ;
  __le32 *tmp___3 ;
  __le32 *tmp___4 ;
  __le32 *tmp___5 ;
  __le32 *tmp___6 ;
  __le32 *tmp___7 ;
  {
  out = chan->out;
  sram_ch = chan->sram_channels;
  dist_betwn_starts = (int )(bpl * 2U);
  if (sync_line != 4294967295U) {
    tmp = rp;
    rp = rp + 1;
    *tmp = sync_line | 2147516416U;
  } else {
  }
  i = 0U;
  goto ldv_35776;
  ldv_35775:
  tmp___0 = rp;
  rp = rp + 1;
  *tmp___0 = 4026531840U;
  i = i + 1U;
  ldv_35776: ;
  if (i <= 4U) {
    goto ldv_35775;
  } else {
  }
  line = 0U;
  goto ldv_35779;
  ldv_35778:
  tmp___1 = rp;
  rp = rp + 1;
  *tmp___1 = bpl | 2617245696U;
  tmp___2 = rp;
  rp = rp + 1;
  *tmp___2 = (unsigned int )databuf_phys_addr + offset;
  tmp___3 = rp;
  rp = rp + 1;
  *tmp___3 = 0U;
  if ((lines <= 240U || line <= 238U) || out->is_60hz == 0) {
    offset = offset + (unsigned int )dist_betwn_starts;
  } else {
  }
  if (fifo_enable != 0 && line == 3U) {
    tmp___4 = rp;
    rp = rp + 1;
    *tmp___4 = 3489660928U;
    tmp___5 = rp;
    rp = rp + 1;
    *tmp___5 = sram_ch->dma_ctl;
    tmp___6 = rp;
    rp = rp + 1;
    *tmp___6 = 1U;
    tmp___7 = rp;
    rp = rp + 1;
    *tmp___7 = 1U;
  } else {
  }
  line = line + 1U;
  ldv_35779: ;
  if (line < lines) {
    goto ldv_35778;
  } else {
  }
  return (rp);
}
}
static int cx25821_risc_buffer_upstream(struct cx25821_channel *chan , struct pci_dev *pci ,
                                        unsigned int top_offset , unsigned int bpl ,
                                        unsigned int lines )
{
  struct cx25821_video_out_data *out ;
  __le32 *rp ;
  int fifo_enable ;
  int singlefield_lines ;
  int odd_num_lines ;
  int frame ;
  int frame_size ;
  int databuf_offset ;
  int risc_program_size ;
  int risc_flag ;
  unsigned int bottom_offset ;
  dma_addr_t risc_phys_jump_addr ;
  __le32 *tmp ;
  __le32 *tmp___0 ;
  __le32 *tmp___1 ;
  {
  out = chan->out;
  fifo_enable = 0;
  singlefield_lines = (int )(lines >> 1);
  odd_num_lines = singlefield_lines;
  frame = 0;
  frame_size = 0;
  databuf_offset = 0;
  risc_program_size = 0;
  risc_flag = 196608;
  bottom_offset = bpl;
  if (out->is_60hz != 0) {
    odd_num_lines = singlefield_lines + 1;
    risc_program_size = 5848;
    frame_size = bpl == 1080U ? 518400 : 691200;
  } else {
    risc_program_size = 6988;
    frame_size = bpl == 1080U ? 622080 : 829440;
  }
  rp = out->_dma_virt_addr;
  frame = 0;
  goto ldv_35801;
  ldv_35800:
  databuf_offset = frame_size * frame;
  if (top_offset != 4294967295U) {
    {
    fifo_enable = frame == 0;
    rp = cx25821_risc_field_upstream(chan, rp, out->_data_buf_phys_addr + (dma_addr_t )databuf_offset,
                                     top_offset, 0U, bpl, (unsigned int )odd_num_lines,
                                     fifo_enable, 0);
    }
  } else {
  }
  {
  fifo_enable = 0;
  rp = cx25821_risc_field_upstream(chan, rp, out->_data_buf_phys_addr + (dma_addr_t )databuf_offset,
                                   bottom_offset, 512U, bpl, (unsigned int )singlefield_lines,
                                   fifo_enable, 1);
  }
  if (frame == 0) {
    risc_flag = 196608;
    risc_phys_jump_addr = out->_dma_phys_start_addr + (dma_addr_t )risc_program_size;
  } else {
    risc_phys_jump_addr = out->_dma_phys_start_addr;
    risc_flag = 65536;
  }
  tmp = rp;
  rp = rp + 1;
  *tmp = (unsigned int )(risc_flag | 1895825408);
  tmp___0 = rp;
  rp = rp + 1;
  *tmp___0 = (unsigned int )risc_phys_jump_addr;
  tmp___1 = rp;
  rp = rp + 1;
  *tmp___1 = 0U;
  frame = frame + 1;
  ldv_35801: ;
  if (frame <= 1) {
    goto ldv_35800;
  } else {
  }
  return (0);
}
}
void cx25821_stop_upstream_video(struct cx25821_channel *chan )
{
  struct cx25821_video_out_data *out ;
  struct cx25821_dev *dev ;
  struct sram_channel const *sram_ch ;
  u32 tmp ;
  unsigned int tmp___0 ;
  unsigned int tmp___1 ;
  unsigned int tmp___2 ;
  unsigned int tmp___3 ;
  {
  out = chan->out;
  dev = chan->dev;
  sram_ch = chan->sram_channels;
  tmp = 0U;
  if (out->_is_running == 0) {
    {
    printk("\016cx25821: No video file is currently running so return!\n");
    }
    return;
  } else {
  }
  {
  tmp___0 = readl((void const volatile *)dev->lmmio + 65540U);
  tmp___1 = readl((void const volatile *)dev->lmmio + 65540U);
  tmp___2 = readl((void const volatile *)dev->lmmio + 65540U);
  tmp___3 = readl((void const volatile *)dev->lmmio + 65540U);
  writel((tmp___0 & ~ (tmp___1 & (unsigned int )(~ (1 << (int )sram_ch->irq_bit)))) | ((tmp___2 & (unsigned int )(~ (1 << (int )sram_ch->irq_bit))) & (tmp___3 & (unsigned int )(~ (1 << (int )sram_ch->irq_bit)))),
         (void volatile *)dev->lmmio + 65540U);
  tmp = readl((void const volatile *)dev->lmmio + (unsigned long )(sram_ch->int_msk >> 2));
  writel(tmp & (u32 )(~ _intr_msk), (void volatile *)dev->lmmio + (unsigned long )(sram_ch->int_msk >> 2));
  tmp = readl((void const volatile *)dev->lmmio + (unsigned long )(sram_ch->dma_ctl >> 2));
  writel(tmp & 4294967278U, (void volatile *)dev->lmmio + (unsigned long )(sram_ch->dma_ctl >> 2));
  ldv_free_irq_19((dev->pci)->irq, (void *)chan);
  }
  if ((unsigned long )out->_data_buf_virt_addr != (unsigned long )((__le32 *)0U)) {
    {
    memset((void *)out->_data_buf_virt_addr, 0, (size_t )out->_data_buf_size);
    }
  } else {
  }
  {
  out->_is_running = 0;
  out->_is_first_frame = 0;
  out->_frame_count = 0;
  out->_file_status = 0;
  tmp = readl((void const volatile *)dev->lmmio + 278558U);
  writel(tmp & 4294966784U, (void volatile *)dev->lmmio + 278558U);
  }
  return;
}
}
void cx25821_free_mem_upstream(struct cx25821_channel *chan )
{
  struct cx25821_video_out_data *out ;
  struct cx25821_dev *dev ;
  {
  out = chan->out;
  dev = chan->dev;
  if (out->_is_running != 0) {
    {
    cx25821_stop_upstream_video(chan);
    }
  } else {
  }
  if ((unsigned long )out->_dma_virt_addr != (unsigned long )((__le32 *)0U)) {
    {
    pci_free_consistent(dev->pci, (size_t )out->_risc_size, (void *)out->_dma_virt_addr,
                        out->_dma_phys_addr);
    out->_dma_virt_addr = (__le32 *)0U;
    }
  } else {
  }
  if ((unsigned long )out->_data_buf_virt_addr != (unsigned long )((__le32 *)0U)) {
    {
    pci_free_consistent(dev->pci, (size_t )out->_data_buf_size, (void *)out->_data_buf_virt_addr,
                        out->_data_buf_phys_addr);
    out->_data_buf_virt_addr = (__le32 *)0U;
    }
  } else {
  }
  return;
}
}
int cx25821_write_frame(struct cx25821_channel *chan , char const *data , size_t count )
{
  struct cx25821_video_out_data *out ;
  int line_size ;
  int frame_size ;
  int frame_offset ;
  int curpos ;
  int __ret ;
  wait_queue_t __wait ;
  long __ret___0 ;
  long __int ;
  long tmp ;
  {
  out = chan->out;
  line_size = out->_pixel_format == 5 ? 1080 : 1440;
  frame_size = 0;
  frame_offset = 0;
  curpos = out->curpos;
  if (out->is_60hz != 0) {
    frame_size = line_size == 1080 ? 518400 : 691200;
  } else {
    frame_size = line_size == 1080 ? 622080 : 829440;
  }
  if (curpos == 0) {
    out->cur_frame_index = out->_frame_index;
    __ret = 0;
    if (out->cur_frame_index == out->_frame_index) {
      {
      __ret___0 = 0L;
      INIT_LIST_HEAD(& __wait.task_list);
      __wait.flags = 0U;
      }
      ldv_35831:
      {
      tmp = prepare_to_wait_event(& out->waitq, & __wait, 1);
      __int = tmp;
      }
      if (out->cur_frame_index != out->_frame_index) {
        goto ldv_35830;
      } else {
      }
      if (__int != 0L) {
        __ret___0 = __int;
        goto ldv_35830;
      } else {
      }
      {
      schedule();
      }
      goto ldv_35831;
      ldv_35830:
      {
      finish_wait(& out->waitq, & __wait);
      }
      __ret = (int )__ret___0;
    } else {
    }
    if (__ret != 0) {
      return (-4);
    } else {
    }
    out->cur_frame_index = out->_frame_index;
  } else {
  }
  frame_offset = out->cur_frame_index != 0 ? frame_size : 0;
  if ((size_t )(frame_size - curpos) < count) {
    count = (size_t )(frame_size - curpos);
  } else {
  }
  {
  memcpy((void *)out->_data_buf_virt_addr + ((unsigned long )frame_offset + (unsigned long )curpos),
         (void const *)data, count);
  curpos = (int )((unsigned int )curpos + (unsigned int )count);
  }
  if (curpos == frame_size) {
    out->_frame_count = out->_frame_count + 1;
    curpos = 0;
  } else {
  }
  out->curpos = curpos;
  return ((int )count);
}
}
static int cx25821_upstream_buffer_prepare(struct cx25821_channel *chan , struct sram_channel const *sram_ch ,
                                           int bpl )
{
  struct cx25821_video_out_data *out ;
  struct cx25821_dev *dev ;
  int ret ;
  dma_addr_t dma_addr ;
  dma_addr_t data_dma_addr ;
  void *tmp ;
  void *tmp___0 ;
  {
  out = chan->out;
  dev = chan->dev;
  ret = 0;
  if ((unsigned long )out->_dma_virt_addr != (unsigned long )((__le32 *)0U)) {
    {
    pci_free_consistent(dev->pci, (size_t )out->upstream_riscbuf_size, (void *)out->_dma_virt_addr,
                        out->_dma_phys_addr);
    }
  } else {
  }
  {
  tmp = pci_alloc_consistent(dev->pci, (size_t )out->upstream_riscbuf_size, & dma_addr);
  out->_dma_virt_addr = (__le32 *)tmp;
  out->_dma_virt_start_addr = out->_dma_virt_addr;
  out->_dma_phys_start_addr = dma_addr;
  out->_dma_phys_addr = dma_addr;
  out->_risc_size = out->upstream_riscbuf_size;
  }
  if ((unsigned long )out->_dma_virt_addr == (unsigned long )((__le32 *)0U)) {
    {
    printk("\vcx25821: FAILED to allocate memory for Risc buffer! Returning\n");
    }
    return (-12);
  } else {
  }
  {
  memset((void *)out->_dma_virt_addr, 0, (size_t )out->_risc_size);
  }
  if ((unsigned long )out->_data_buf_virt_addr != (unsigned long )((__le32 *)0U)) {
    {
    pci_free_consistent(dev->pci, (size_t )out->upstream_databuf_size, (void *)out->_data_buf_virt_addr,
                        out->_data_buf_phys_addr);
    }
  } else {
  }
  {
  tmp___0 = pci_alloc_consistent(dev->pci, (size_t )out->upstream_databuf_size, & data_dma_addr);
  out->_data_buf_virt_addr = (__le32 *)tmp___0;
  out->_data_buf_phys_addr = data_dma_addr;
  out->_data_buf_size = out->upstream_databuf_size;
  }
  if ((unsigned long )out->_data_buf_virt_addr == (unsigned long )((__le32 *)0U)) {
    {
    printk("\vcx25821: FAILED to allocate memory for data buffer! Returning\n");
    }
    return (-12);
  } else {
  }
  {
  memset((void *)out->_data_buf_virt_addr, 0, (size_t )out->_data_buf_size);
  ret = cx25821_risc_buffer_upstream(chan, dev->pci, 0U, (unsigned int )bpl, (unsigned int )out->_lines_count);
  }
  if (ret < 0) {
    {
    printk("\016cx25821: Failed creating Video Upstream Risc programs!\n");
    }
    goto error;
  } else {
  }
  return (0);
  error: ;
  return (ret);
}
}
static int cx25821_video_upstream_irq(struct cx25821_channel *chan , u32 status )
{
  struct cx25821_video_out_data *out ;
  struct cx25821_dev *dev ;
  u32 int_msk_tmp ;
  struct sram_channel const *channel ;
  int singlefield_lines ;
  int line_size_in_bytes ;
  int odd_risc_prog_size ;
  dma_addr_t risc_phys_jump_addr ;
  __le32 *rp ;
  u32 prog_cnt ;
  unsigned int tmp ;
  __le32 *tmp___0 ;
  __le32 *tmp___1 ;
  __le32 *tmp___2 ;
  {
  out = chan->out;
  dev = chan->dev;
  channel = chan->sram_channels;
  singlefield_lines = 240;
  line_size_in_bytes = 1440;
  odd_risc_prog_size = 0;
  if ((status & 2U) != 0U) {
    {
    tmp = readl((void const volatile *)dev->lmmio + (unsigned long )(channel->gpcnt >> 2));
    prog_cnt = tmp;
    int_msk_tmp = readl((void const volatile *)dev->lmmio + (unsigned long )(channel->int_msk >> 2));
    writel(int_msk_tmp & (u32 )(~ _intr_msk), (void volatile *)dev->lmmio + (unsigned long )(channel->int_msk >> 2));
    writel((unsigned int )_intr_msk, (void volatile *)dev->lmmio + (unsigned long )(channel->int_stat >> 2));
    __wake_up(& out->waitq, 3U, 1, (void *)0);
    spin_lock(& dev->slock);
    out->_frame_index = (int )prog_cnt;
    }
    if (out->_is_first_frame != 0) {
      out->_is_first_frame = 0;
      if (out->is_60hz != 0) {
        singlefield_lines = singlefield_lines + 1;
        odd_risc_prog_size = 2932;
      } else {
        singlefield_lines = 288;
        odd_risc_prog_size = 3496;
      }
      if ((unsigned long )out->_dma_virt_start_addr != (unsigned long )((__le32 *)0U)) {
        {
        line_size_in_bytes = out->_pixel_format == 5 ? 1080 : 1440;
        risc_phys_jump_addr = out->_dma_phys_start_addr + (dma_addr_t )odd_risc_prog_size;
        rp = cx25821_update_riscprogram(chan, out->_dma_virt_start_addr, 0U, (unsigned int )line_size_in_bytes,
                                        0U, (unsigned int )singlefield_lines, 0, 0);
        tmp___0 = rp;
        rp = rp + 1;
        *tmp___0 = 1879048192U;
        tmp___1 = rp;
        rp = rp + 1;
        *tmp___1 = (unsigned int )risc_phys_jump_addr;
        tmp___2 = rp;
        rp = rp + 1;
        *tmp___2 = 0U;
        }
      } else {
      }
    } else {
    }
    {
    spin_unlock(& dev->slock);
    }
  } else {
    if ((status & 512U) != 0U) {
      {
      printk("\vcx25821: %s(): Video Received Underflow Error Interrupt!\n", "cx25821_video_upstream_irq");
      }
    } else {
    }
    if ((status & 8192U) != 0U) {
      {
      printk("\vcx25821: %s(): Video Received Sync Error Interrupt!\n", "cx25821_video_upstream_irq");
      }
    } else {
    }
    if ((status & 131072U) != 0U) {
      {
      printk("\vcx25821: %s(): Video Received OpCode Error Interrupt!\n", "cx25821_video_upstream_irq");
      }
    } else {
    }
  }
  if (out->_file_status == 0) {
    {
    printk("\vcx25821: EOF Channel 1 Framecount = %d\n", out->_frame_count);
    }
    return (-1);
  } else {
  }
  {
  int_msk_tmp = readl((void const volatile *)dev->lmmio + (unsigned long )(channel->int_msk >> 2));
  int_msk_tmp = int_msk_tmp | (u32 )_intr_msk;
  writel(int_msk_tmp, (void volatile *)dev->lmmio + (unsigned long )(channel->int_msk >> 2));
  }
  return (0);
}
}
static irqreturn_t cx25821_upstream_irq(int irq , void *dev_id )
{
  struct cx25821_channel *chan ;
  struct cx25821_dev *dev ;
  u32 vid_status ;
  int handled ;
  struct sram_channel const *sram_ch ;
  {
  chan = (struct cx25821_channel *)dev_id;
  dev = chan->dev;
  handled = 0;
  if ((unsigned long )dev == (unsigned long )((struct cx25821_dev *)0)) {
    return (4294967295L);
  } else {
  }
  {
  sram_ch = chan->sram_channels;
  vid_status = readl((void const volatile *)dev->lmmio + (unsigned long )(sram_ch->int_stat >> 2));
  }
  if (vid_status != 0U) {
    {
    handled = cx25821_video_upstream_irq(chan, vid_status);
    }
  } else {
  }
  return (handled != 0);
}
}
static void cx25821_set_pixelengine(struct cx25821_channel *chan , struct sram_channel const *ch ,
                                    int pix_format )
{
  struct cx25821_video_out_data *out ;
  struct cx25821_dev *dev ;
  int width ;
  int height ;
  int num_lines ;
  int odd_num_lines ;
  u32 value ;
  int vip_mode ;
  {
  {
  out = chan->out;
  dev = chan->dev;
  width = 720;
  height = out->_lines_count;
  vip_mode = 0;
  value = (u32 )(((pix_format & 3) << 12) | (vip_mode & 7));
  value = value & 4294967279U;
  value = value | (out->is_60hz != 0 ? 0U : 16U);
  writel(value, (void volatile *)dev->lmmio + (unsigned long )(ch->vid_fmt_ctl >> 2));
  writel((unsigned int )width, (void volatile *)dev->lmmio + (unsigned long )(ch->vid_active_ctl1 >> 2));
  num_lines = height / 2 & 1023;
  odd_num_lines = num_lines;
  }
  if (out->is_60hz != 0) {
    odd_num_lines = odd_num_lines + 1;
  } else {
  }
  {
  value = (u32 )((num_lines << 16) | odd_num_lines);
  writel(value, (void volatile *)dev->lmmio + (unsigned long )(ch->vid_active_ctl2 >> 2));
  writel(8U, (void volatile *)dev->lmmio + (unsigned long )(ch->vid_cdt_size >> 2));
  }
  return;
}
}
static int cx25821_start_video_dma_upstream(struct cx25821_channel *chan , struct sram_channel const *sram_ch )
{
  struct cx25821_video_out_data *out ;
  struct cx25821_dev *dev ;
  u32 tmp ;
  int err ;
  unsigned int tmp___0 ;
  unsigned int tmp___1 ;
  unsigned int tmp___2 ;
  unsigned int tmp___3 ;
  unsigned int tmp___4 ;
  {
  {
  out = chan->out;
  dev = chan->dev;
  tmp = 0U;
  err = 0;
  tmp = readl((void const volatile *)dev->lmmio + 278558U);
  writel(tmp | 452985343U, (void volatile *)dev->lmmio + 278558U);
  writel((unsigned int )out->_dma_phys_addr, (void volatile *)dev->lmmio + (unsigned long )((unsigned int )sram_ch->cmds_start >> 2));
  writel(0U, (void volatile *)dev->lmmio + (unsigned long )(((unsigned int )sram_ch->cmds_start + 4U) >> 2));
  writel(3U, (void volatile *)dev->lmmio + (unsigned long )(sram_ch->gpcnt_ctl >> 2));
  writel((unsigned int )_intr_msk, (void volatile *)dev->lmmio + (unsigned long )(sram_ch->int_stat >> 2));
  tmp___0 = readl((void const volatile *)dev->lmmio + 65540U);
  tmp___1 = readl((void const volatile *)dev->lmmio + 65540U);
  tmp___2 = readl((void const volatile *)dev->lmmio + 65540U);
  tmp___3 = readl((void const volatile *)dev->lmmio + 65540U);
  writel((tmp___0 & ~ (tmp___1 | (unsigned int )(1 << (int )sram_ch->irq_bit))) | ((unsigned int )(1 << (int )sram_ch->irq_bit) | (tmp___2 & tmp___3)),
         (void volatile *)dev->lmmio + 65540U);
  tmp = readl((void const volatile *)dev->lmmio + (unsigned long )(sram_ch->int_msk >> 2));
  tmp = tmp | (u32 )_intr_msk;
  writel(tmp, (void volatile *)dev->lmmio + (unsigned long )(sram_ch->int_msk >> 2));
  err = ldv_request_irq_19((dev->pci)->irq, & cx25821_upstream_irq, 128UL, (char const *)(& dev->name),
                           (void *)chan);
  }
  if (err < 0) {
    {
    printk("\vcx25821: %s: can\'t get upstream IRQ %d\n", (char *)(& dev->name), (dev->pci)->irq);
    }
    goto fail_irq;
  } else {
  }
  {
  tmp = readl((void const volatile *)dev->lmmio + (unsigned long )(sram_ch->dma_ctl >> 2));
  tmp___4 = readl((void const volatile *)dev->lmmio + (unsigned long )(sram_ch->dma_ctl >> 2));
  writel(((tmp___4 & ~ (tmp | 16U)) | tmp) | 16U, (void volatile *)dev->lmmio + (unsigned long )(sram_ch->dma_ctl >> 2));
  out->_is_running = 1;
  out->_is_first_frame = 1;
  }
  return (0);
  fail_irq:
  {
  cx25821_dev_unregister(dev);
  }
  return (err);
}
}
int cx25821_vidupstream_init(struct cx25821_channel *chan , int pixel_format )
{
  struct cx25821_video_out_data *out ;
  struct cx25821_dev *dev ;
  struct sram_channel const *sram_ch ;
  u32 tmp ;
  int err ;
  int data_frame_size ;
  int risc_buffer_size ;
  struct lock_class_key __key ;
  {
  out = chan->out;
  dev = chan->dev;
  err = 0;
  data_frame_size = 0;
  risc_buffer_size = 0;
  if (out->_is_running != 0) {
    {
    printk("\016cx25821: Video Channel is still running so return!\n");
    }
    return (0);
  } else {
  }
  {
  sram_ch = chan->sram_channels;
  out->is_60hz = (int )dev->tvnorm & 63744;
  tmp = readl((void const volatile *)dev->lmmio + 278558U);
  writel(tmp | 452985343U, (void volatile *)dev->lmmio + 278558U);
  out->_is_running = 0;
  out->_frame_count = 0;
  out->_file_status = -1;
  out->_lines_count = out->is_60hz != 0 ? 480 : 576;
  out->_pixel_format = pixel_format;
  out->_line_size = out->_pixel_format == 4 ? 1440 : 1080;
  data_frame_size = out->is_60hz != 0 ? 691200 : 829440;
  risc_buffer_size = out->is_60hz != 0 ? 5912 : 6992;
  out->_is_running = 0;
  out->_frame_count = 0;
  out->_file_status = -1;
  out->_lines_count = out->is_60hz != 0 ? 480 : 576;
  out->_pixel_format = pixel_format;
  out->_line_size = out->_pixel_format == 4 ? 1440 : 1080;
  out->curpos = 0;
  __init_waitqueue_head(& out->waitq, "&out->waitq", & __key);
  err = cx25821_sram_channel_setup_upstream(dev, sram_ch, (unsigned int )out->_line_size,
                                            0U);
  cx25821_set_pixelengine(chan, sram_ch, out->_pixel_format);
  out->upstream_riscbuf_size = (u32 )(risc_buffer_size * 2);
  out->upstream_databuf_size = (u32 )(data_frame_size * 2);
  err = cx25821_upstream_buffer_prepare(chan, sram_ch, out->_line_size);
  }
  if (err < 0) {
    {
    printk("\vcx25821: %s: Failed to set up Video upstream buffers!\n", (char *)(& dev->name));
    }
    goto error;
  } else {
  }
  {
  cx25821_start_video_dma_upstream(chan, sram_ch);
  }
  return (0);
  error:
  {
  cx25821_dev_unregister(dev);
  }
  return (err);
}
}
void ldv_dispatch_irq_register_13_2(int arg0 , enum irqreturn (*arg1)(int , void * ) ,
                                    enum irqreturn (*arg2)(int , void * ) , void *arg3 ) ;
enum irqreturn ldv_interrupt_instance_handler_2_5(enum irqreturn (*arg0)(int , void * ) ,
                                                  int arg1 , void *arg2 ) ;
int ldv_statevar_2 ;
enum irqreturn (*ldv_2_callback_handler)(int , void * ) = & cx25821_upstream_irq;
void ldv_dispatch_irq_register_13_2(int arg0 , enum irqreturn (*arg1)(int , void * ) ,
                                    enum irqreturn (*arg2)(int , void * ) , void *arg3 )
{
  int tmp ;
  {
  {
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    {
    ldv_1_line_line = arg0;
    ldv_1_callback_handler = arg1;
    ldv_1_thread_thread = arg2;
    ldv_1_data_data = arg3;
    ldv_switch_automaton_state_1_6();
    }
  } else {
    {
    ldv_2_line_line = arg0;
    ldv_2_callback_handler = arg1;
    ldv_2_thread_thread = arg2;
    ldv_2_data_data = arg3;
    ldv_switch_automaton_state_2_6();
    }
  }
  return;
}
}
enum irqreturn ldv_interrupt_instance_handler_2_5(enum irqreturn (*arg0)(int , void * ) ,
                                                  int arg1 , void *arg2 )
{
  irqreturn_t tmp ;
  {
  {
  tmp = cx25821_upstream_irq(arg1, arg2);
  }
  return (tmp);
}
}
void ldv_interrupt_interrupt_instance_2(void *arg0 )
{
  int tmp ;
  {
  {
  if (ldv_statevar_2 == 2) {
    goto case_2;
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
  goto switch_default;
  case_2:
  {
  ldv_assume((unsigned int )ldv_2_ret_val_default != 2U);
  ldv_statevar_2 = 6;
  }
  goto ldv_36014;
  case_4:
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
  ldv_statevar_2 = 6;
  goto ldv_36014;
  case_5:
  {
  ldv_switch_to_interrupt_context();
  ldv_2_ret_val_default = ldv_interrupt_instance_handler_2_5(ldv_2_callback_handler,
                                                             ldv_2_line_line, ldv_2_data_data);
  ldv_switch_to_process_context();
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    ldv_statevar_2 = 2;
  } else {
    ldv_statevar_2 = 4;
  }
  goto ldv_36014;
  case_6: ;
  goto ldv_36014;
  switch_default: ;
  switch_break: ;
  }
  ldv_36014: ;
  return;
}
}
void ldv_switch_automaton_state_2_1(void)
{
  {
  ldv_statevar_2 = 6;
  return;
}
}
void ldv_switch_automaton_state_2_6(void)
{
  {
  ldv_statevar_2 = 5;
  return;
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
void ldv_assert_linux_drivers_clk1__more_at_exit(int expr ) ;
int ldv_counter = 0;
void ldv_clk_disable(struct clk *clk )
{
  {
  ldv_counter = 0;
  return;
}
}
int ldv_clk_enable(void)
{
  int retval ;
  int tmp ;
  {
  {
  tmp = ldv_undef_int();
  retval = tmp;
  }
  if (retval == 0) {
    ldv_counter = 1;
  } else {
  }
  return (retval);
}
}
void ldv_check_final_state(void)
{
  {
  {
  ldv_assert_linux_drivers_clk1__more_at_exit(ldv_counter == 0);
  }
  return;
}
}
extern void __VERIFIER_error(void) ;
void ldv_assert_linux_drivers_clk1__more_at_exit(int expr )
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
void __const_udelay(unsigned long arg0) {
  return;
}
void __init_waitqueue_head(wait_queue_head_t *arg0, const char *arg1, struct lock_class_key *arg2) {
  return;
}
void __list_add(struct list_head *arg0, struct list_head *arg1, struct list_head *arg2) {
  return;
}
void __list_del_entry(struct list_head *arg0) {
  return;
}
void __mutex_init(struct mutex *arg0, const char *arg1, struct lock_class_key *arg2) {
  return;
}
int __VERIFIER_nondet_int(void);
int __pci_register_driver(struct pci_driver *arg0, struct module *arg1, const char *arg2) {
  return __VERIFIER_nondet_int();
}
void __raw_spin_lock_init(raw_spinlock_t *arg0, const char *arg1, struct lock_class_key *arg2) {
  return;
}
void __release_region(struct resource *arg0, resource_size_t arg1, resource_size_t arg2) {
  return;
}
void *external_alloc(void);
struct resource *__request_region(struct resource *arg0, resource_size_t arg1, resource_size_t arg2, const char *arg3, int arg4) {
  return (struct resource *)external_alloc();
}
int __VERIFIER_nondet_int(void);
int __video_register_device(struct video_device *arg0, int arg1, int arg2, int arg3, struct module *arg4) {
  return __VERIFIER_nondet_int();
}
void __wake_up(wait_queue_head_t *arg0, unsigned int arg1, int arg2, void *arg3) {
  return;
}
void _raw_spin_lock(raw_spinlock_t *arg0) {
  return;
}
unsigned long __VERIFIER_nondet_ulong(void);
unsigned long int _raw_spin_lock_irqsave(raw_spinlock_t *arg0) {
  return __VERIFIER_nondet_ulong();
}
void _raw_spin_unlock(raw_spinlock_t *arg0) {
  return;
}
void _raw_spin_unlock_irqrestore(raw_spinlock_t *arg0, unsigned long arg1) {
  return;
}
int __VERIFIER_nondet_int(void);
int btcx_riscmem_alloc(struct pci_dev *arg0, struct btcx_riscmem *arg1, unsigned int arg2) {
  return __VERIFIER_nondet_int();
}
void btcx_riscmem_free(struct pci_dev *arg0, struct btcx_riscmem *arg1) {
  return;
}
void debug_dma_alloc_coherent(struct device *arg0, size_t arg1, dma_addr_t arg2, void *arg3) {
  return;
}
void debug_dma_free_coherent(struct device *arg0, size_t arg1, void *arg2, dma_addr_t arg3) {
  return;
}
int __VERIFIER_nondet_int(void);
int del_timer(struct timer_list *arg0) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int dma_supported(struct device *arg0, u64 arg1) {
  return __VERIFIER_nondet_int();
}
void *external_alloc(void);
void *external_allocated_data() {
  return (void *)external_alloc();
}
void finish_wait(wait_queue_head_t *arg0, wait_queue_t *arg1) {
  return;
}
void free_irq(unsigned int arg0, void *arg1) {
  return;
}
int __VERIFIER_nondet_int(void);
int i2c_add_adapter(struct i2c_adapter *arg0) {
  return __VERIFIER_nondet_int();
}
void i2c_del_adapter(struct i2c_adapter *arg0) {
  return;
}
void init_timer_key(struct timer_list *arg0, unsigned int arg1, const char *arg2, struct lock_class_key *arg3) {
  return;
}
void *external_alloc(void);
void *ioremap_nocache(resource_size_t arg0, unsigned long arg1) {
  return (void *)external_alloc();
}
void iounmap(volatile void *arg0) {
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
int mod_timer(struct timer_list *arg0, unsigned long arg1) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int mutex_lock_interruptible_nested(struct mutex *arg0, unsigned int arg1) {
  return __VERIFIER_nondet_int();
}
void mutex_lock_nested(struct mutex *arg0, unsigned int arg1) {
  return;
}
void mutex_unlock(struct mutex *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int pci_bus_read_config_byte(struct pci_bus *arg0, unsigned int arg1, int arg2, u8 *arg3) {
  return __VERIFIER_nondet_int();
}
void pci_disable_device(struct pci_dev *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int pci_enable_device(struct pci_dev *arg0) {
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
int __VERIFIER_nondet_int(void);
int printk(const char *arg0, ...) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int request_threaded_irq(unsigned int arg0, irqreturn_t (*arg1)(int, void *), irqreturn_t (*arg2)(int, void *), unsigned long arg3, const char *arg4, void *arg5) {
  return __VERIFIER_nondet_int();
}
void schedule() {
  return;
}
unsigned long __VERIFIER_nondet_ulong(void);
size_t strlcpy(char *arg0, const char *arg1, size_t arg2) {
  return __VERIFIER_nondet_ulong();
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
struct v4l2_ctrl *v4l2_ctrl_new_std(struct v4l2_ctrl_handler *arg0, const struct v4l2_ctrl_ops *arg1, u32 arg2, s32 arg3, s32 arg4, u32 arg5, s32 arg6) {
  return (struct v4l2_ctrl *)external_alloc();
}
unsigned int __VERIFIER_nondet_uint(void);
unsigned int v4l2_ctrl_poll(struct file *arg0, struct poll_table_struct *arg1) {
  return __VERIFIER_nondet_uint();
}
int __VERIFIER_nondet_int(void);
int v4l2_ctrl_subscribe_event(struct v4l2_fh *arg0, const struct v4l2_event_subscription *arg1) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int v4l2_device_register(struct device *arg0, struct v4l2_device *arg1) {
  return __VERIFIER_nondet_int();
}
void v4l2_device_unregister(struct v4l2_device *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int v4l2_event_unsubscribe(struct v4l2_fh *arg0, const struct v4l2_event_subscription *arg1) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int v4l2_fh_open(struct file *arg0) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int v4l2_fh_release(struct file *arg0) {
  return __VERIFIER_nondet_int();
}
void v4l2_get_timestamp(struct timeval *arg0) {
  return;
}
void *external_alloc(void);
struct video_device *video_devdata(struct file *arg0) {
  return (struct video_device *)external_alloc();
}
void video_device_release_empty(struct video_device *arg0) {
  return;
}
long __VERIFIER_nondet_long(void);
long int video_ioctl2(struct file *arg0, unsigned int arg1, unsigned long arg2) {
  return __VERIFIER_nondet_long();
}
void video_unregister_device(struct video_device *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int videobuf_dma_free(struct videobuf_dmabuf *arg0) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int videobuf_dma_unmap(struct device *arg0, struct videobuf_dmabuf *arg1) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int videobuf_dqbuf(struct videobuf_queue *arg0, struct v4l2_buffer *arg1, int arg2) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int videobuf_iolock(struct videobuf_queue *arg0, struct videobuf_buffer *arg1, struct v4l2_framebuffer *arg2) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int videobuf_mmap_free(struct videobuf_queue *arg0) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int videobuf_mmap_mapper(struct videobuf_queue *arg0, struct vm_area_struct *arg1) {
  return __VERIFIER_nondet_int();
}
unsigned int __VERIFIER_nondet_uint(void);
unsigned int videobuf_poll_stream(struct file *arg0, struct videobuf_queue *arg1, poll_table *arg2) {
  return __VERIFIER_nondet_uint();
}
int __VERIFIER_nondet_int(void);
int videobuf_qbuf(struct videobuf_queue *arg0, struct v4l2_buffer *arg1) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int videobuf_querybuf(struct videobuf_queue *arg0, struct v4l2_buffer *arg1) {
  return __VERIFIER_nondet_int();
}
void videobuf_queue_cancel(struct videobuf_queue *arg0) {
  return;
}
void videobuf_queue_sg_init(struct videobuf_queue *arg0, const struct videobuf_queue_ops *arg1, struct device *arg2, spinlock_t *arg3, enum v4l2_buf_type arg4, enum v4l2_field arg5, unsigned int arg6, void *arg7, struct mutex *arg8) {
  return;
}
long __VERIFIER_nondet_long(void);
ssize_t videobuf_read_one(struct videobuf_queue *arg0, char *arg1, size_t arg2, loff_t *arg3, int arg4) {
  return __VERIFIER_nondet_long();
}
int __VERIFIER_nondet_int(void);
int videobuf_reqbufs(struct videobuf_queue *arg0, struct v4l2_requestbuffers *arg1) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int videobuf_streamoff(struct videobuf_queue *arg0) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int videobuf_streamon(struct videobuf_queue *arg0) {
  return __VERIFIER_nondet_int();
}
void *external_alloc(void);
struct videobuf_dmabuf *videobuf_to_dma(struct videobuf_buffer *arg0) {
  return (struct videobuf_dmabuf *)external_alloc();
}
int __VERIFIER_nondet_int(void);
int videobuf_waiton(struct videobuf_queue *arg0, struct videobuf_buffer *arg1, int arg2, int arg3) {
  return __VERIFIER_nondet_int();
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
