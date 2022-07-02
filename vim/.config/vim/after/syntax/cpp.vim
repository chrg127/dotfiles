" ==============================================================================
" Vim syntax file
" Language:        C++ (Standard library including C++11/14/17/20)
" Original Author: Jon Haggblad <https://github.com/octol>
" Maintainer:      bfrg <https://github.com/bfrg>
" Website:         https://github.com/bfrg/vim-cpp-modern
" Last Change:     Nov 23, 2020
"
" This syntax file is based on:
" https://github.com/octol/vim-cpp-enhanced-highlight
" ==============================================================================

" C++ attributes {{{1
if get(g:, 'cpp_attributes_highlight', 0)
    syntax region cppAttribute matchgroup=cppAttributeBrackets start='\[\[' end=']]' contains=cString
    hi def link cppAttribute         Macro
    hi def link cppAttributeBrackets Identifier
endif


" Standard library {{{1
syntax keyword cppSTLdefine
        \ MB_CUR_MAX MB_LEN_MAX WCHAR_MAX WCHAR_MIN WEOF __STDC_UTF_16__ __STDC_UTF_32__

syntax keyword cppSTLnamespace
        \ std experimental rel_ops

syntax keyword cppSTLconstant
        \ badbit digits digits10 eofbit failbit goodbit has_denorm has_denorm_loss has_infinity has_quiet_NaN has_signaling_NaN is_bounded is_exact is_iec559 is_integer is_modulo is_signed is_specialized max_exponent max_exponent10 min_exponent min_exponent10 npos radix round_style tinyness_before traps

syntax keyword cppSTLvariable
        \ cerr cin clog cout wcerr wcin wclog wcout nothrow

syntax keyword cppSTLexception
        \ bad_alloc bad_exception bad_typeid bad_cast domain_error exception failure invalid_argument length_error logic_error out_of_range overflow_error range_error runtime_error underflow_error

syntax keyword cppSTLios
        \ endl ends flush resetiosflags setbase setfill setiosflags setprecision setw ws

syntax keyword cppSTLios
        \ boolalpha defaultfloat fixed hexfloat internal noboolalpha noshowbase noshowpoint noshowpos noskipws nounitbuf nouppercase scientific showbase showpoint showpos skipws unitbuf uppercase

" syntax keyword cppSTLios
"         \ left right hex dec oct

syntax keyword cppSTLtype
        \ fmtflags iostate openmode Init allocator auto_ptr basic_filebuf basic_fstream basic_ifstream basic_ios basic_iostream basic_istream basic_istringstream basic_ofstream basic_ostream basic_ostringstream basic_streambuf basic_string basic_stringbuf basic_stringstream binary_compose binder1st binder2nd bitset char_traits char_type const_mem_fun1_t const_mem_fun_ref1_t const_mem_fun_ref_t const_mem_fun_t const_pointer const_reference container_type deque difference_type div_t event_callback filebuf first_type float_denorm_style float_round_style fpos fstream gslice_array ifstream imaxdiv_t indirect_array int_type ios ios_base iostream istream istringstream istrstream iterator_category iterator_traits key_compare key_type ldiv_t list lldiv_t map mapped_type mask_array mbstate_t mem_fun1_t mem_fun_ref1_t mem_fun_ref_t mem_fun_t multimap multiset nothrow_t numeric_limits off_type ofstream ostream ostringstream ostrstream pair pointer pointer_to_binary_function pointer_to_unary_function pos_type priority_queue queue reference second_type seekdir sequence_buffer set size_type slice_array stack state_type stream streambuf streamoff streampos streamsize string stringbuf stringstream strstream strstreambuf temporary_buffer test_type tm traits_type type_info u16string u32string unary_compose unary_negate valarray value_compare value_type vector wfilebuf wfstream wifstream wios wiostream wistream wistringstream wofstream wostream wostringstream wstreambuf wstreampos wstring wstringbuf wstringstream codecvt codecvt_base codecvt_byname collate collate_byname ctype ctype_base ctype_byname locale messages messages_base messages_byname money_base money_get money_put moneypunct moneypunct_byname num_get num_put numpunct numpunct_byname time_base time_get time_get_byname time_put time_put_byname binary_function binary_negate bit_and bit_not bit_or divides equal_to greater greater_equal less less_equal logical_and logical_not logical_or minus modulus multiplies negate not_equal_to plus unary_function unary_negate bidirectional_iterator_tag forward_iterator_tag input_iterator_tag output_iterator_tag random_access_iterator_tag

syntax keyword cppSTLtypedef
        \ time_t sig_atomic_t wctrans_t wctype_t wint_t

syntax keyword cppSTLiterator
        \ back_insert_iterator bidirectional_iterator const_iterator const_reverse_iterator forward_iterator front_insert_iterator input_iterator insert_iterator istream_iterator istreambuf_iterator iterator ostream_iterator ostreambuf_iterator output_iterator random_access_iterator raw_storage_iterator reverse_bidirectional_iterator reverse_iterator

" Function templates that are called with template parameters
syntax keyword cppSTLfunction
        \ use_facet has_facet get

" Some of these keywords can be highlighted as cppSTLios or cppSTLconstant
" syntax keyword cppSTLconstant
"         \ adjustfield app ate basefield binary floatfield in out trunc boolalpha dec fixed hex internal left oct right scientific showbase showpoint showpos skipws unitbuf uppercase


" C++11 extensions {{{1
if !exists('cpp_no_cpp11')
    syntax keyword cppStatement nullptr
    syntax keyword cppType char16_t char32_t

    syntax keyword cppSTLnamespace chrono this_thread

    syntax keyword cppSTLtype
            \ array atomic atomic_bool atomic_char atomic_flag atomic_int atomic_llong atomic_long atomic_schar atomic_short atomic_uchar atomic_uint atomic_ullong atomic_ulong atomic_ushort duration duration_values high_resolution_clock hours microseconds milliseconds minutes nanoseconds seconds steady_clock system_clock time_point treat_as_floating_point condition_variable exception_ptr nested_exception hash is_bind_expression is_placeholder reference_wrapper forward_list future packaged_task promise shared_future initializer_list codecvt_mode codecvt_utf16 codecvt_utf8 codecvt_utf8_utf16 wbuffer_convert wstring_convert allocator_traits allocator_type default_delete enable_shared_from_this is_always_equal owner_less pointer_safety pointer_traits propagate_on_container_copy_assignment propagate_on_container_move_assignment propagate_on_container_swap rebind_alloc rebind_traits shared_ptr unique_ptr uses_allocator void_pointer const_void_pointer weak_ptr condition_variable_any lock_guard mutex once_flag recursive_mutex recursive_timed_mutex timed_mutex unique_lock bernoulli_distribution binomial_distribution cauchy_distribution chi_squared_distribution default_random_engine discard_block_engine discrete_distribution exponential_distribution extreme_value_distribution fisher_f_distribution gamma_distribution geometric_distribution independent_bits_engine knuth_b linear_congruential_engine lognormal_distribution mersenne_twister_engine minstd_rand minstd_rand0 mt19937 mt19937_64 negative_binomial_distribution normal_distribution piecewise_constant_distribution piecewise_linear_distribution poisson_distribution random_device ranlux24 ranlux24_base ranlux48 ranlux48_base seed_seq shuffle_order_engine student_t_distribution subtract_with_carry_engine uniform_int_distribution uniform_real_distribution weibull_distribution atto centi deca deci exa femto giga hecto kilo mega micro milli nano peta pico ratio ratio_add ratio_divide ratio_equal ratio_greater ratio_greater_equal ratio_less ratio_less_equal ratio_multiply ratio_not_equal ratio_subtract tera yocto yotta zepto zetta basic_regex match_results regex_traits sub_match syntax_option_type match_flag_type error_type scoped_allocator_adaptor outer_allocator_type inner_allocator_type error_code error_condition error_category is_error_code_enum is_error_condition_enum thread tuple tuple_size tuple_element type_index add_const add_cv add_lvalue_reference add_pointer add_rvalue_reference add_volatile aligned_storage aligned_union alignment_of common_type conditional decay enable_if extent false_type has_virtual_destructor integral_constant is_abstract is_arithmetic is_array is_assignable is_base_of is_class is_compound is_const is_constructible is_convertible is_copy_assignable is_copy_constructible is_default_constructible is_destructible is_empty is_enum is_floating_point is_function is_fundamental is_integral is_literal_type is_lvalue_reference is_member_function_pointer is_member_object_pointer is_member_pointer is_move_assignable is_move_constructible is_nothrow_assignable is_nothrow_constructible is_nothrow_copy_assignable is_nothrow_copy_constructible is_nothrow_default_constructible is_nothrow_destructible is_nothrow_move_assignable is_nothrow_move_constructible is_object is_pod is_pointer is_polymorphic is_reference is_rvalue_reference is_same is_scalar is_signed is_standard_layout is_trivial is_trivially_assignable is_trivially_constructible is_trivially_copy_assignable is_trivially_copy_constructible is_trivially_copyable is_trivially_default_constructible is_trivially_destructible is_trivially_move_assignable is_trivially_move_constructible is_union is_unsigned is_void is_volatile make_signed make_unsigned rank remove_all_extents remove_const remove_cv remove_extent remove_pointer remove_reference remove_volatile result_of true_type underlying_type hasher key_equal unordered_map unordered_multimap unordered_multiset unordered_set function

    syntax keyword cppSTLtypedef
            \ atomic_char16_t atomic_char32_t atomic_int_fast16_t atomic_int_fast32_t atomic_int_fast64_t atomic_int_fast8_t atomic_int_least16_t atomic_int_least32_t atomic_int_least64_t atomic_int_least8_t atomic_intmax_t atomic_intptr_t atomic_ptrdiff_t atomic_size_t atomic_uint_fast16_t atomic_uint_fast32_t atomic_uint_fast64_t atomic_uint_fast8_t atomic_uint_least16_t atomic_uint_least32_t atomic_uint_least64_t atomic_uint_least8_t atomic_uintmax_t atomic_uintptr_t atomic_wchar_t nullptr_t max_align_t allocator_arg_t adopt_lock_t defer_lock_t try_to_lock_t piecewise_construct_t

    syntax keyword cppSTLconstant max_digits10

    syntax keyword cppSTLvariable
            \ _1 _2 _3 _4 _5 _6 _7 _8 _9 defer_lock try_to_lock adopt_lock allocator_arg

    syntax keyword cppSTLdefine
            \ math_errhandling FLT_EVAL_METHOD FP_INFINITE FP_NAN FP_NORMAL FP_SUBNORMAL FP_ZERO HUGE_VALF HUGE_VALL INFINITY MATH_ERREXCEPT MATH_ERRNO NAN

    syntax keyword cppSTLenum
            \ memory_order future_status future_errc launch io_errc cv_status errc

    syntax keyword cppSTLfunction
            \ duration_cast time_point_cast mem_fn const_pointer_cast dynamic_pointer_cast static_pointer_cast allocate_shared make_shared isblank generate_canonical forward_as_tuple make_tuple tie tuple_cat declval forward move move_if_noexcept

    syntax keyword cppSTLexception
            \ bad_function_call future_error regex_error system_error bad_weak_ptr bad_array_new_length

    " syntax keyword cppSTLiterator contained
    syntax keyword cppSTLiterator
            \ move_iterator regex_iterator regex_token_iterator const_local_iterator local_iterator

    " Note: ignore is also a function
    syntax match cppSTLvariable "\<ignore\>(\@!"
endif


" C++14 extensions {{{1
if !exists('cpp_no_cpp14')
    syntax keyword cppSTLnamespace literals chrono_literals string_literals complex_literals

    syntax keyword cppSTLfunction make_unique

    syntax keyword cppSTLtype
            \ index_sequence index_sequence_for integer_sequence make_index_sequence make_integer_sequence shared_lock shared_timed_mutex is_null_pointer

    syntax keyword cppSTLtypedef
            \ tuple_element_t add_const_t add_cv_t add_lvalue_reference_t add_pointer_t add_rvalue_reference_t add_volatile_t aligned_storage_t aligned_union_t common_type_t conditional_t decay_t enable_if_t make_signed_t make_unsigned_t remove_all_extents_t remove_const_t remove_cv_t remove_extent_t remove_pointer_t remove_reference_t remove_volatile_t result_of_t underlying_type_t
endif


" C++17 extensions {{{1
if !exists('cpp_no_cpp17')
    syntax keyword cppSTLnamespace filesystem execution string_view_literals

    syntax keyword cppSTLtype
            \ any byte is_execution_policy parallel_policy parallel_unsequenced_policy sequenced_policy directory_entry directory_iterator file_status file_time_type path recursive_directory_iterator space_info default_order default_searcher boyer_moore_searcher boyer_moore_horspool_searcher memory_resource monotonic_buffer_resource polymorphic_allocator pool_options synchronized_pool_resource unsynchronized_pool_resource scoped_lock optional shared_mutex basic_string_view string_view u16string_view u32string_view wstring_view bool_constant conjunction disjunction has_unique_object_representations invoke_result is_aggregate is_callable is_invocable is_invocable_r is_nothrow_invocable is_nothrow_invocable_r is_nothrow_swappable is_nothrow_swappable_with is_nowthrow_callable is_swappable is_swappable_with negation node_type insert_return_type in_place_tag monostate variant variant_size variant_alternative

    syntax keyword cppSTLtypedef
            \ invoke_result_t default_order_t nullopt_t void_t in_place_t in_place_type_t in_place_index_t variant_alternative_t

    syntax keyword cppSTLexception
            \ bad_any_cast filesystem_error bad_optional_access bad_variant_access

    syntax keyword cppSTLconstant
            \ is_always_lock_free seq par par_unseq copy_symlinks auto_format create_hard_links create_symlinks directories_only follow_directory_symlink generic_format group_all group_exec group_read group_write native_format others_all others_exec others_read others_write overwrite_existing owner_all owner_exec owner_read owner_write preferred_separator recursive set_gid set_uid skip_existing skip_permission_denied skip_symlinks sticky_bit update_existing hardware_destructive_interference_size hardware_constructive_interference_size tuple_size_v nullopt alignment_of_v rank_v extent_v variant_npos variant_size_v

    syntax keyword cppSTLbool
            \ treat_as_floating_point_v is_execution_policy_v is_bind_expression_v is_placeholder_v is_error_code_enum_v is_error_condition_enum_v uses_allocator_v conjunction_v disjunction_v has_unique_object_representations_v has_virtual_destructor_v is_abstract_v is_aggregate_v is_arithmetic_v is_array_v is_assignable_v is_base_of_v is_callable_v is_class_v is_compound_v is_const_v is_constructible_v is_convertible_v is_copy_assignable_v is_copy_constructible_v is_default_constructible_v is_destructible_v is_empty_v is_enum_v is_floating_point_v is_function_v is_fundamental_v is_integral_v is_invocable_r_v is_invocable_v is_literal_type_v is_lvalue_reference_v is_member_function_pointer_v is_member_object_pointer_v is_member_pointer_v is_move_assignable_v is_move_constructible_v is_nothrow_assignable_v is_nothrow_constructible_v is_nothrow_copy_assignable_v is_nothrow_copy_constructible_v is_nothrow_default_constructible_v is_nothrow_destructible_v is_nothrow_invocable_r_v is_nothrow_invocable_v is_nothrow_move_assignable_v is_nothrow_move_constructible_v is_nothrow_swappable_v is_nothrow_swappable_with_v is_nowthrow_callable_v is_null_pointer_v is_object_v is_pod_v is_pointer_v is_polymorphic_v is_reference_v is_rvalue_reference_v is_same_v is_scalar_v is_signed_v is_standard_layout_v is_swappable_v is_swappable_with_v is_trivial_v is_trivially_assignable_v is_trivially_constructible_v is_trivially_copy_assignable_v is_trivially_copy_constructible_v is_trivially_copyable_v is_trivially_default_constructible_v is_trivially_destructible_v is_trivially_move_assignable_v is_trivially_move_constructible_v is_union_v is_unsigned_v is_void_v is_volatile_v negation_v

    syntax keyword cppSTLfunction
            \ reinterpret_pointer_cast make_from_tuple make_optional any_cast

    syntax keyword cppSTLenum
            \ copy_options directory_options file_type perm_options perms

    " Note: There is std::filesystem::path::format and std::format() in <format>
    syntax match cppSTLenum "\<format\>(\@!"

    " Note: these can be both member objects and methods
    syntax match cppSTLvariable "\<\%(capacity\|free\|available\)\>(\@!"

    " Note: these keywords are very likely to coincide with user-defined variables
    " syntax keyword cppSTLconstant
    "         \ all mask unknown replace add remove nofollow none not_found regular directory symlink block character fifo socket unknown
endif


" C++20 extensions {{{1
if !exists('cpp_no_cpp20')
    syntax keyword cppSTLnamespace ranges views
    syntax keyword cppSTLconstant dynamic_extent
    syntax keyword cppSTLvariable default_sentinel unreachable_sentinel

    syntax keyword cppSTLtype
            \ atomic_ref endian weak_ordering strong_ordering partial_ordering weak_equality strong_equality common_comparison_category contract_violation coroutine_traits coroutine_handle noop_coroutine_handle noop_coroutine_promise suspend_never suspend_always remove_cvref is_bounded_array is_layout_compatible is_unbounded_array is_nothrow_convertible has_strong_structural_equality is_pointer_interconvertible_base_of unwrap_reference unwrap_ref_decay basic_common_reference common_reference dangling ref_view filter_view transform_view iota_view join_view empty_view single_view split_view common_view reverse_view view_interface span basic_syncbuf basic_osyncstream syncbuf wsyncbuf osyncstream wosyncstream jthread latch barrier stop_token stop_source stop_callback counting_semaphore binary_semaphore source_location compare_three_way_result contiguous_iterator_tag incrementable_traits indirectly_readable_traits move_sentinel common_iterator counted_iterator projected type_identity

    syntax keyword cppSTLtypedef
            \ common_comparison_category_t remove_cvref_t unwrap_reference_t unwrap_ref_decay_t common_reference_t iterator_t sentinel_t safe_iterator_t safe_subrange_t compare_three_way_result_t iter_value_t iter_reference_t iter_difference_t iter_rvalue_reference_t iter_common_reference_t default_sentinel_t unreachable_sentinel_t indirect_result_t type_identity_t

    syntax keyword cppSTLfunction
            \ make_unique_default_init make_shared_default_init allocate_shared_default_init uses_allocator_construction_args make_obj_using_allocator is_corresponding_member subspan in_range is_pointer_interconvertible_with_class

    syntax keyword cppSTLbool
            \ is_bounded_array_v is_layout_compatible_v is_unbounded_array_v is_nothrow_convertible_v has_strong_structural_equality_v is_pointer_interconvertible_base_of_v disable_sized_sentinel_for disable_sized_range enable_borrowed_range enable_view

    syntax keyword cppSTLconcept
            \ assignable_from boolean common_reference_with common_with constructible_from convertible_to copy_constructible copyable default_constructible derived_from destructible equality_comparable equality_comparable_with equivalence_relation floating_point integral invocable movable move_constructible predicate regular regular_invocable relation same_as semiregular signed_integral strict_weak_order swappable swappable_with totally_ordered totally_ordered_with unsigned_integral default_initializable range sized_range view input_range output_range forward_range bidirectional_range random_access_range contiguous_range common_range viewable_range three_way_comparable three_way_comparable_with indirectly_readable indirectly_writable weakly_incrementable incrementable input_or_output_iterator sentinel_for sized_sentinel_for input_iterator output_iterator forward_iterator bidirectional_iterator random_access_iterator contiguous_iterator indirectly_unary_invocable indirectly_regular_unary_invocable indirect_unary_predicate indirect_binary_predicate indirect_equivalence_relation indirect_strict_weak_order indirectly_movable indirectly_movable_storable indirectly_copyable indirectly_copyable_storable indirectly_swappable indirectly_comparable permutable mergeable sortable
endif


" Boost {{{1
if !exists('cpp_no_boost')
    syntax keyword cppSTLnamespace boost
    syntax keyword cppSTLfunction lexical_cast
endif
" }}}


" Default highlighting
hi def link cppSTLbool         Boolean
hi def link cppStatement       Statement
hi def link cppSTLfunction     Function
hi def link cppSTLdefine       Constant
hi def link cppSTLconstant     Constant
hi def link cppSTLnamespace    Constant
hi def link cppSTLexception    Type
hi def link cppSTLiterator     Type
hi def link cppSTLtype         Type
hi def link cppSTLtypedef      Typedef
hi def link cppSTLenum         Typedef
hi def link cppSTLios          Function
hi def link cppSTLconcept      Typedef
hi def link cppSTLvariable     Identifier

" The keywords {inline, virtual, explicit, export, override, final} are
" standard C++ keywords and NOT types!
hi! def link cppModifier Statement


" Highlight all standard C++ keywords as Statement
if get(g:, 'cpp_simple_highlight', 0)
    hi! def link cppStructure    Statement
    hi! def link cppExceptions   Statement
    hi! def link cppStorageClass Statement
endif

" Qt Namespace
syn keyword qtNamespace QAlgorithmsPrivate
syn keyword qtNamespace QDBusPendingReplyTypes
syn keyword qtNamespace QJsonPrivate
syn keyword qtNamespace QMdi
syn keyword qtNamespace QMediaMetaData
syn keyword qtNamespace QSsl
syn keyword qtNamespace Qt
syn keyword qtNamespace QtConcurrent
syn keyword qtNamespace QtDeclarative
syn keyword qtNamespace QTest
syn keyword qtNamespace QtGlobalStatic
syn keyword qtNamespace QtMetaTypePrivate
syn keyword qtNamespace QtPrivate
syn keyword qtNamespace QtQml
syn keyword qtNamespace QtSharedPointer
syn keyword qtNamespace QtStringBuilder

" Qt Class
syn keyword qtClass QAbstractAnimation
syn keyword qtClass QAbstractAudioDeviceInfo
syn keyword qtClass QAbstractAudioInput
syn keyword qtClass QAbstractAudioOutput
syn keyword qtClass QAbstractButton
syn keyword qtClass QAbstractEventDispatcher
syn keyword qtClass QAbstractExtensionFactory
syn keyword qtClass QAbstractExtensionManager
syn keyword qtClass QAbstractFormBuilder
syn keyword qtClass QAbstractGraphicsShapeItem
syn keyword qtClass QAbstractItemDelegate
syn keyword qtClass QAbstractItemModel
syn keyword qtClass QAbstractItemView
syn keyword qtClass QAbstractListModel
syn keyword qtClass QAbstractMessageHandler
syn keyword qtClass QAbstractNativeEventFilter
syn keyword qtClass QAbstractNetworkCache
syn keyword qtClass QAbstractPrintDialog
syn keyword qtClass QAbstractProxyModel
syn keyword qtClass QAbstractScrollArea
syn keyword qtClass QAbstractSlider
syn keyword qtClass QAbstractSocket
syn keyword qtClass QAbstractSpinBox
syn keyword qtClass QAbstractState
syn keyword qtClass QAbstractTableModel
syn keyword qtClass QAbstractTextDocumentLayout
syn keyword qtClass QAbstractTransition
syn keyword qtClass QAbstractUndoItem
syn keyword qtClass QAbstractUriResolver
syn keyword qtClass QAbstractVideoBuffer
syn keyword qtClass QAbstractVideoSurface
syn keyword qtClass QAbstractXmlNodeModel
syn keyword qtClass QAbstractXmlReceiver
syn keyword qtClass QAccelerometer
syn keyword qtClass QAccelerometerFilter
syn keyword qtClass QAccelerometerReading
syn keyword qtClass QAccessible
syn keyword qtClass QAccessibleApplication
syn keyword qtClass QAccessibleBridge
syn keyword qtClass QAccessibleBridgePlugin
syn keyword qtClass QAccessibleEvent
syn keyword qtClass QAccessibleInterface
syn keyword qtClass QAccessibleObject
syn keyword qtClass QAccessiblePlugin
syn keyword qtClass QAccessibleStateChangeEvent
syn keyword qtClass QAccessibleTableModelChangeEvent
syn keyword qtClass QAccessibleTextCursorEvent
syn keyword qtClass QAccessibleTextInsertEvent
syn keyword qtClass QAccessibleTextRemoveEvent
syn keyword qtClass QAccessibleTextSelectionEvent
syn keyword qtClass QAccessibleTextUpdateEvent
syn keyword qtClass QAccessibleValueChangeEvent
syn keyword qtClass QAction
syn keyword qtClass QActionEvent
syn keyword qtClass QActionGroup
syn keyword qtClass QAltimeter
syn keyword qtClass QAltimeterFilter
syn keyword qtClass QAltimeterReading
syn keyword qtClass QAmbientLightFilter
syn keyword qtClass QAmbientLightReading
syn keyword qtClass QAmbientLightSensor
syn keyword qtClass QAmbientTemperatureFilter
syn keyword qtClass QAmbientTemperatureReading
syn keyword qtClass QAmbientTemperatureSensor
syn keyword qtClass QAnimationDriver
syn keyword qtClass QAnimationGroup
syn keyword qtClass QApplication
syn keyword qtClass QApplicationStateChangeEvent
syn keyword qtClass QArgument
syn keyword qtClass QArrayData
syn keyword qtClass QArrayDataPointer
syn keyword qtClass QArrayDataPointerRef
syn keyword qtClass QAtomicInt
syn keyword qtClass QAtomicPointer
syn keyword qtClass QAudio
syn keyword qtClass QAudioBuffer
syn keyword qtClass QAudioDecoder
syn keyword qtClass QAudioDecoderControl
syn keyword qtClass QAudioDeviceInfo
syn keyword qtClass QAudioEncoderSettings
syn keyword qtClass QAudioEncoderSettingsControl
syn keyword qtClass QAudioFormat
syn keyword qtClass QAudioInput
syn keyword qtClass QAudioInputSelectorControl
syn keyword qtClass QAudioOutput
syn keyword qtClass QAudioOutputSelectorControl
syn keyword qtClass QAudioProbe
syn keyword qtClass QAudioRecorder
syn keyword qtClass QAudioSystemFactoryInterface
syn keyword qtClass QAudioSystemPlugin
syn keyword qtClass QAuthenticator
syn keyword qtClass QBackingStore
syn keyword qtClass QBasicMutex
syn keyword qtClass QBasicTimer
syn keyword qtClass QBBSystemLocaleData
syn keyword qtClass QBitArray
syn keyword qtClass QBitmap
syn keyword qtClass QBitRef
syn keyword qtClass QBoxLayout
syn keyword qtClass QBrush
syn keyword qtClass QBrushData
syn keyword qtClass QBuffer
syn keyword qtClass QButtonGroup
syn keyword qtClass QByteArray
syn keyword qtClass QByteArrayData
syn keyword qtClass QByteArrayDataPtr
syn keyword qtClass QByteArrayMatcher
syn keyword qtClass QByteRef
syn keyword qtClass QCache
syn keyword qtClass QCalendarWidget
syn keyword qtClass QCamera
syn keyword qtClass QCameraCaptureBufferFormatControl
syn keyword qtClass QCameraCaptureDestinationControl
syn keyword qtClass QCameraControl
syn keyword qtClass QCameraExposure
syn keyword qtClass QCameraExposureControl
syn keyword qtClass QCameraFeedbackControl
syn keyword qtClass QCameraFlashControl
syn keyword qtClass QCameraFocus
syn keyword qtClass QCameraFocusControl
syn keyword qtClass QCameraFocusZone
syn keyword qtClass QCameraFocusZoneList
syn keyword qtClass QCameraImageCapture
syn keyword qtClass QCameraImageCaptureControl
syn keyword qtClass QCameraImageProcessing
syn keyword qtClass QCameraImageProcessingControl
syn keyword qtClass QCameraLocksControl
syn keyword qtClass QCameraViewfinder
syn keyword qtClass QCameraViewfinderSettingsControl
syn keyword qtClass QCameraZoomControl
syn keyword qtClass QChar
syn keyword qtClass QCharRef
syn keyword qtClass QCheckBox
syn keyword qtClass QChildEvent
syn keyword qtClass QClipboard
syn keyword qtClass QCloseEvent
syn keyword qtClass QColor
syn keyword qtClass QColorDialog
syn keyword qtClass QColormap
syn keyword qtClass QColumnView
syn keyword qtClass QComboBox
syn keyword qtClass QCommandLinkButton
syn keyword qtClass QCommonStyle
syn keyword qtClass QCompass
syn keyword qtClass QCompassFilter
syn keyword qtClass QCompassReading
syn keyword qtClass QCompleter
syn keyword qtClass QConicalGradient
syn keyword qtClass QContextMenuEvent
syn keyword qtClass QContiguousCache
syn keyword qtClass QContiguousCacheData
syn keyword qtClass QContiguousCacheTypedData
syn keyword qtClass QCoreApplication
syn keyword qtClass QCryptographicHash
syn keyword qtClass QCursor
syn keyword qtClass QDataStream
syn keyword qtClass QDataWidgetMapper
syn keyword qtClass QDate
syn keyword qtClass QDateEdit
syn keyword qtClass QDateTime
syn keyword qtClass QDateTimeEdit
syn keyword qtClass QDBusAbstractAdaptor
syn keyword qtClass QDBusAbstractInterface
syn keyword qtClass QDBusAbstractInterfaceBase
syn keyword qtClass QDBusArgument
syn keyword qtClass QDBusConnection
syn keyword qtClass QDBusConnectionInterface
syn keyword qtClass QDBusContext
syn keyword qtClass QDBusError
syn keyword qtClass QDBusInterface
syn keyword qtClass QDBusMessage
syn keyword qtClass QDBusMetaType
syn keyword qtClass QDBusObjectPath
syn keyword qtClass QDBusPendingCall
syn keyword qtClass QDBusPendingCallWatcher
syn keyword qtClass QDBusPendingReply
syn keyword qtClass QDBusPendingReplyData
syn keyword qtClass QDBusReply
syn keyword qtClass QDBusServer
syn keyword qtClass QDBusServiceWatcher
syn keyword qtClass QDBusSignature
syn keyword qtClass QDBusUnixFileDescriptor
syn keyword qtClass QDBusVariant
syn keyword qtClass QDBusVirtualObject
syn keyword qtClass QDebug
syn keyword qtClass QDebugStateSaver
syn keyword qtClass QDeclarativeAttachedPropertiesFunc
syn keyword qtClass QDeclarativeComponent
syn keyword qtClass QDeclarativeContext
syn keyword qtClass QDeclarativeDebuggingEnabler
syn keyword qtClass QDeclarativeEngine
syn keyword qtClass QDeclarativeError
syn keyword qtClass QDeclarativeExpression
syn keyword qtClass QDeclarativeExtensionInterface
syn keyword qtClass QDeclarativeExtensionPlugin
syn keyword qtClass QDeclarativeImageProvider
syn keyword qtClass QDeclarativeInfo
syn keyword qtClass QDeclarativeItem
syn keyword qtClass QDeclarativeListProperty
syn keyword qtClass QDeclarativeListReference
syn keyword qtClass QDeclarativeNetworkAccessManagerFactory
syn keyword qtClass QDeclarativeParserStatus
syn keyword qtClass QDeclarativeProperties
syn keyword qtClass QDeclarativeProperty
syn keyword qtClass QDeclarativePropertyMap
syn keyword qtClass QDeclarativePropertyValueInterceptor
syn keyword qtClass QDeclarativePropertyValueSource
syn keyword qtClass QDeclarativeScriptString
syn keyword qtClass QDeclarativeTypeInfo
syn keyword qtClass QDeclarativeView
syn keyword qtClass QDeferredDeleteEvent
syn keyword qtClass QDesignerActionEditorInterface
syn keyword qtClass QDesignerComponents
syn keyword qtClass QDesignerContainerExtension
syn keyword qtClass QDesignerCustomWidgetCollectionInterface
syn keyword qtClass QDesignerCustomWidgetInterface
syn keyword qtClass QDesignerDnDItemInterface
syn keyword qtClass QDesignerDynamicPropertySheetExtension
syn keyword qtClass QDesignerExportWidget
syn keyword qtClass QDesignerExtraInfoExtension
syn keyword qtClass QDesignerFormEditorInterface
syn keyword qtClass QDesignerFormEditorPluginInterface
syn keyword qtClass QDesignerFormWindowCursorInterface
syn keyword qtClass QDesignerFormWindowInterface
syn keyword qtClass QDesignerFormWindowManagerInterface
syn keyword qtClass QDesignerFormWindowToolInterface
syn keyword qtClass QDesignerIntegration
syn keyword qtClass QDesignerIntegrationInterface
syn keyword qtClass QDesignerLanguageExtension
syn keyword qtClass QDesignerLayoutDecorationExtension
syn keyword qtClass QDesignerMemberSheetExtension
syn keyword qtClass QDesignerMetaDataBaseInterface
syn keyword qtClass QDesignerMetaDataBaseItemInterface
syn keyword qtClass QDesignerNewFormWidgetInterface
syn keyword qtClass QDesignerObjectInspectorInterface
syn keyword qtClass QDesignerOptionsPageInterface
syn keyword qtClass QDesignerPromotionInterface
syn keyword qtClass QDesignerPropertyEditorInterface
syn keyword qtClass QDesignerPropertySheetExtension
syn keyword qtClass QDesignerResourceBrowserInterface
syn keyword qtClass QDesignerSettingsInterface
syn keyword qtClass QDesignerTaskMenuExtension
syn keyword qtClass QDesignerWidgetBoxInterface
syn keyword qtClass QDesignerWidgetDataBaseInterface
syn keyword qtClass QDesignerWidgetDataBaseItemInterface
syn keyword qtClass QDesignerWidgetFactoryInterface
syn keyword qtClass QDesktopServices
syn keyword qtClass QDesktopWidget
syn keyword qtClass QDial
syn keyword qtClass QDialog
syn keyword qtClass QDialogButtonBox
syn keyword qtClass QDir
syn keyword qtClass QDirIterator
syn keyword qtClass QDirModel
syn keyword qtClass QDnsDomainNameRecord
syn keyword qtClass QDnsHostAddressRecord
syn keyword qtClass QDnsLookup
syn keyword qtClass QDnsMailExchangeRecord
syn keyword qtClass QDnsServiceRecord
syn keyword qtClass QDnsTextRecord
syn keyword qtClass QDockWidget
syn keyword qtClass QDomAttr
syn keyword qtClass QDomCDATASection
syn keyword qtClass QDomCharacterData
syn keyword qtClass QDomComment
syn keyword qtClass QDomDocument
syn keyword qtClass QDomDocumentFragment
syn keyword qtClass QDomDocumentType
syn keyword qtClass QDomElement
syn keyword qtClass QDomEntity
syn keyword qtClass QDomEntityReference
syn keyword qtClass QDomImplementation
syn keyword qtClass QDomNamedNodeMap
syn keyword qtClass QDomNode
syn keyword qtClass QDomNodeList
syn keyword qtClass QDomNotation
syn keyword qtClass QDomProcessingInstruction
syn keyword qtClass QDomText
syn keyword qtClass QDoubleSpinBox
syn keyword qtClass QDoubleValidator
syn keyword qtClass QDrag
syn keyword qtClass QDragEnterEvent
syn keyword qtClass QDragLeaveEvent
syn keyword qtClass QDragMoveEvent
syn keyword qtClass QDropEvent
syn keyword qtClass QDynamicPropertyChangeEvent
syn keyword qtClass QEasingCurve
syn keyword qtClass QElapsedTimer
syn keyword qtClass QEnterEvent
syn keyword qtClass QErrorMessage
syn keyword qtClass QEvent
syn keyword qtClass QEventLoop
syn keyword qtClass QEventLoopLocker
syn keyword qtClass QEventSizeOfChecker
syn keyword qtClass QEventTransition
syn keyword qtClass QException
syn keyword qtClass QExplicitlySharedDataPointer
syn keyword qtClass QExposeEvent
syn keyword qtClass QExtensionFactory
syn keyword qtClass QExtensionManager
syn keyword qtClass QFactoryInterface
syn keyword qtClass QFile
syn keyword qtClass QFileDevice
syn keyword qtClass QFileDialog
syn keyword qtClass QFileIconProvider
syn keyword qtClass QFileInfo
syn keyword qtClass QFileInfoList
syn keyword qtClass QFileOpenEvent
syn keyword qtClass QFileSystemModel
syn keyword qtClass QFileSystemWatcher
syn keyword qtClass QFinalState
syn keyword qtClass QFlag
syn keyword qtClass QFlags
syn keyword qtClass QFocusEvent
syn keyword qtClass QFocusFrame
syn keyword qtClass QFont
syn keyword qtClass QFontComboBox
syn keyword qtClass QFontDatabase
syn keyword qtClass QFontDialog
syn keyword qtClass QFontInfo
syn keyword qtClass QFontMetrics
syn keyword qtClass QFontMetricsF
syn keyword qtClass QForeachContainer
syn keyword qtClass QFormBuilder
syn keyword qtClass QFormLayout
syn keyword qtClass QFrame
syn keyword qtClass QFunctionPointer
syn keyword qtClass QFuture
syn keyword qtClass QFutureInterface
syn keyword qtClass QFutureInterfaceBase
syn keyword qtClass QFutureIterator
syn keyword qtClass QFutureSynchronizer
syn keyword qtClass QFutureWatcher
syn keyword qtClass QFutureWatcherBase
syn keyword qtClass QGenericArgument
syn keyword qtClass QGenericMatrix
syn keyword qtClass QGenericPlugin
syn keyword qtClass QGenericPluginFactory
syn keyword qtClass QGenericReturnArgument
syn keyword qtClass QGesture
syn keyword qtClass QGestureEvent
syn keyword qtClass QGestureRecognizer
syn keyword qtClass QGLBuffer
syn keyword qtClass QGLColormap
syn keyword qtClass QGLContext
syn keyword qtClass QGLFormat
syn keyword qtClass QGLFramebufferObject
syn keyword qtClass QGLFramebufferObjectFormat
syn keyword qtClass QGLFunctions
syn keyword qtClass QGLFunctionsPrivate
syn keyword qtClass QGlobalStatic
syn keyword qtClass QGLPixelBuffer
syn keyword qtClass QGLShader
syn keyword qtClass QGLShaderProgram
syn keyword qtClass QGLWidget
syn keyword qtClass QGlyphRun
syn keyword qtClass QGradient
syn keyword qtClass QGradientStop
syn keyword qtClass QGradientStops
syn keyword qtClass QGraphicsAnchor
syn keyword qtClass QGraphicsAnchorLayout
syn keyword qtClass QGraphicsBlurEffect
syn keyword qtClass QGraphicsColorizeEffect
syn keyword qtClass QGraphicsDropShadowEffect
syn keyword qtClass QGraphicsEffect
syn keyword qtClass QGraphicsEllipseItem
syn keyword qtClass QGraphicsGridLayout
syn keyword qtClass QGraphicsItem
syn keyword qtClass QGraphicsItemAnimation
syn keyword qtClass QGraphicsItemGroup
syn keyword qtClass QGraphicsLayout
syn keyword qtClass QGraphicsLayoutItem
syn keyword qtClass QGraphicsLinearLayout
syn keyword qtClass QGraphicsLineItem
syn keyword qtClass QGraphicsObject
syn keyword qtClass QGraphicsOpacityEffect
syn keyword qtClass QGraphicsPathItem
syn keyword qtClass QGraphicsPixmapItem
syn keyword qtClass QGraphicsPolygonItem
syn keyword qtClass QGraphicsProxyWidget
syn keyword qtClass QGraphicsRectItem
syn keyword qtClass QGraphicsRotation
syn keyword qtClass QGraphicsScale
syn keyword qtClass QGraphicsScene
syn keyword qtClass QGraphicsSceneContextMenuEvent
syn keyword qtClass QGraphicsSceneDragDropEvent
syn keyword qtClass QGraphicsSceneEvent
syn keyword qtClass QGraphicsSceneHelpEvent
syn keyword qtClass QGraphicsSceneHoverEvent
syn keyword qtClass QGraphicsSceneMouseEvent
syn keyword qtClass QGraphicsSceneMoveEvent
syn keyword qtClass QGraphicsSceneResizeEvent
syn keyword qtClass QGraphicsSceneWheelEvent
syn keyword qtClass QGraphicsSimpleTextItem
syn keyword qtClass QGraphicsSvgItem
syn keyword qtClass QGraphicsTextItem
syn keyword qtClass QGraphicsTransform
syn keyword qtClass QGraphicsVideoItem
syn keyword qtClass QGraphicsView
syn keyword qtClass QGraphicsWebView
syn keyword qtClass QGraphicsWidget
syn keyword qtClass QGridLayout
syn keyword qtClass QGroupBox
syn keyword qtClass QGuiApplication
syn keyword qtClass QGyroscope
syn keyword qtClass QGyroscopeFilter
syn keyword qtClass QGyroscopeReading
syn keyword qtClass QHash
syn keyword qtClass QHashData
syn keyword qtClass QHashDummyNode
syn keyword qtClass QHashDummyValue
syn keyword qtClass QHashIterator
syn keyword qtClass QHashNode
syn keyword qtClass QHBoxLayout
syn keyword qtClass QHeaderView
syn keyword qtClass QHelpContentItem
syn keyword qtClass QHelpContentModel
syn keyword qtClass QHelpContentWidget
syn keyword qtClass QHelpEngine
syn keyword qtClass QHelpEngineCore
syn keyword qtClass QHelpEvent
syn keyword qtClass QHelpGlobal
syn keyword qtClass QHelpIndexModel
syn keyword qtClass QHelpIndexWidget
syn keyword qtClass QHelpSearchEngine
syn keyword qtClass QHelpSearchQuery
syn keyword qtClass QHelpSearchQueryWidget
syn keyword qtClass QHelpSearchResultWidget
syn keyword qtClass QHideEvent
syn keyword qtClass QHistoryState
syn keyword qtClass QHolsterFilter
syn keyword qtClass QHolsterReading
syn keyword qtClass QHolsterSensor
syn keyword qtClass QHostAddress
syn keyword qtClass QHostInfo
syn keyword qtClass QHoverEvent
syn keyword qtClass QHttpMultiPart
syn keyword qtClass QHttpPart
syn keyword qtClass QIcon
syn keyword qtClass QIconDragEvent
syn keyword qtClass QIconEngine
syn keyword qtClass QIconEnginePlugin
syn keyword qtClass QIconEngineV2
syn keyword qtClass QIdentityProxyModel
syn keyword qtClass QImage
syn keyword qtClass QImageCleanupFunction
syn keyword qtClass QImageEncoderControl
syn keyword qtClass QImageEncoderSettings
syn keyword qtClass QImageIOHandler
syn keyword qtClass QImageIOPlugin
syn keyword qtClass QImageReader
syn keyword qtClass QImageTextKeyLang
syn keyword qtClass QImageWriter
syn keyword qtClass QIncompatibleFlag
syn keyword qtClass QInputDialog
syn keyword qtClass QInputEvent
syn keyword qtClass QInputMethod
syn keyword qtClass QInputMethodEvent
syn keyword qtClass QInputMethodQueryEvent
syn keyword qtClass QIntegerForSize
syn keyword qtClass QInternal
syn keyword qtClass QIntValidator
syn keyword qtClass QIODevice
syn keyword qtClass Q_IPV6ADDR
syn keyword qtClass QIPv6Address
syn keyword qtClass QIRProximityFilter
syn keyword qtClass QIRProximityReading
syn keyword qtClass QIRProximitySensor
syn keyword qtClass QItemDelegate
syn keyword qtClass QItemEditorCreator
syn keyword qtClass QItemEditorCreatorBase
syn keyword qtClass QItemEditorFactory
syn keyword qtClass QItemSelection
syn keyword qtClass QItemSelectionModel
syn keyword qtClass QItemSelectionRange
syn keyword qtClass QJSEngine
syn keyword qtClass QJsonArray
syn keyword qtClass QJsonDocument
syn keyword qtClass QJsonObject
syn keyword qtClass QJsonParseError
syn keyword qtClass QJsonValue
syn keyword qtClass QJsonValueRef
syn keyword qtClass QJSValue
syn keyword qtClass QJSValueIterator
syn keyword qtClass QJSValueList
syn keyword qtClass QKeyEvent
syn keyword qtClass QKeyEventTransition
syn keyword qtClass QKeySequence
syn keyword qtClass QLabel
syn keyword qtClass QLatin1Char
syn keyword qtClass QLatin1Literal
syn keyword qtClass QLatin1String
syn keyword qtClass QLayout
syn keyword qtClass QLayoutItem
syn keyword qtClass QLCDNumber
syn keyword qtClass QLibrary
syn keyword qtClass QLibraryInfo
syn keyword qtClass QLightFilter
syn keyword qtClass QLightReading
syn keyword qtClass QLightSensor
syn keyword qtClass QLine
syn keyword qtClass QLinearGradient
syn keyword qtClass QLineEdit
syn keyword qtClass QLineF
syn keyword qtClass QLinkedList
syn keyword qtClass QLinkedListData
syn keyword qtClass QLinkedListIterator
syn keyword qtClass QLinkedListNode
syn keyword qtClass QList
syn keyword qtClass QListData
syn keyword qtClass QListIterator
syn keyword qtClass QListView
syn keyword qtClass QListWidget
syn keyword qtClass QListWidgetItem
syn keyword qtClass QLocale
syn keyword qtClass QLocalServer
syn keyword qtClass QLocalSocket
syn keyword qtClass QLockFile
syn keyword qtClass QMacCocoaViewContainer
syn keyword qtClass QMacNativeWidget
syn keyword qtClass QMagnetometer
syn keyword qtClass QMagnetometerFilter
syn keyword qtClass QMagnetometerReading
syn keyword qtClass QMainWindow
syn keyword qtClass QMap
syn keyword qtClass QMapData
syn keyword qtClass QMapDataBase
syn keyword qtClass QMapIterator
syn keyword qtClass QMapNode
syn keyword qtClass QMapNodeBase
syn keyword qtClass QMargins
syn keyword qtClass QMatrix
syn keyword qtClass QMatrix2x2
syn keyword qtClass QMatrix2x3
syn keyword qtClass QMatrix2x4
syn keyword qtClass QMatrix3x2
syn keyword qtClass QMatrix3x3
syn keyword qtClass QMatrix3x4
syn keyword qtClass QMatrix4x2
syn keyword qtClass QMatrix4x3
syn keyword qtClass QMatrix4x4
syn keyword qtClass QMdiArea
syn keyword qtClass QMdiSubWindow
syn keyword qtClass QMediaAudioProbeControl
syn keyword qtClass QMediaAvailabilityControl
syn keyword qtClass QMediaBindableInterface
syn keyword qtClass QMediaContainerControl
syn keyword qtClass QMediaContent
syn keyword qtClass QMediaControl
syn keyword qtClass QMediaGaplessPlaybackControl
syn keyword qtClass QMediaMetaData
syn keyword qtClass QMediaNetworkAccessControl
syn keyword qtClass QMediaObject
syn keyword qtClass QMediaPlayer
syn keyword qtClass QMediaPlayerControl
syn keyword qtClass QMediaPlaylist
syn keyword qtClass QMediaRecorder
syn keyword qtClass QMediaRecorderControl
syn keyword qtClass QMediaResource
syn keyword qtClass QMediaResourceList
syn keyword qtClass QMediaService
syn keyword qtClass QMediaServiceFeaturesInterface
syn keyword qtClass QMediaServiceProviderFactoryInterface
syn keyword qtClass QMediaServiceProviderHint
syn keyword qtClass QMediaServiceProviderPlugin
syn keyword qtClass QMediaServiceSupportedDevicesInterface
syn keyword qtClass QMediaServiceSupportedFormatsInterface
syn keyword qtClass QMediaStreamsControl
syn keyword qtClass QMediaTimeInterval
syn keyword qtClass QMediaTimeRange
syn keyword qtClass QMediaVideoProbeControl
syn keyword qtClass QMenu
syn keyword qtClass QMenuBar
syn keyword qtClass QMessageAuthenticationCode
syn keyword qtClass QMessageBox
syn keyword qtClass QMessageLogContext
syn keyword qtClass QMessageLogger
syn keyword qtClass QMetaClassInfo
syn keyword qtClass QMetaDataReaderControl
syn keyword qtClass QMetaDataWriterControl
syn keyword qtClass QMetaEnum
syn keyword qtClass QMetaMethod
syn keyword qtClass QMetaObject
syn keyword qtClass QMetaProperty
syn keyword qtClass QMetaType
syn keyword qtClass QMetaTypeId
syn keyword qtClass QMetaTypeId2
syn keyword qtClass QMetaTypeIdQObject
syn keyword qtClass QMimeData
syn keyword qtClass QMimeDatabase
syn keyword qtClass QMimeType
syn keyword qtClass QModelIndex
syn keyword qtClass QModelIndexList
syn keyword qtClass QMouseEvent
syn keyword qtClass QMouseEventTransition
syn keyword qtClass QMoveEvent
syn keyword qtClass QMovie
syn keyword qtClass QMultiHash
syn keyword qtClass QMultiMap
syn keyword qtClass QMultimedia
syn keyword qtClass QMutableFutureIterator
syn keyword qtClass QMutableHashIterator
syn keyword qtClass QMutableLinkedListIterator
syn keyword qtClass QMutableListIterator
syn keyword qtClass QMutableMapIterator
syn keyword qtClass QMutableSetIterator
syn keyword qtClass QMutableStringListIterator
syn keyword qtClass QMutableVectorIterator
syn keyword qtClass QMutex
syn keyword qtClass QMutexLocker
syn keyword qtClass QNetworkAccessManager
syn keyword qtClass QNetworkAddressEntry
syn keyword qtClass QNetworkCacheMetaData
syn keyword qtClass QNetworkConfiguration
syn keyword qtClass QNetworkConfigurationManager
syn keyword qtClass QNetworkCookie
syn keyword qtClass QNetworkCookieJar
syn keyword qtClass QNetworkDiskCache
syn keyword qtClass QNetworkInterface
syn keyword qtClass QNetworkProxy
syn keyword qtClass QNetworkProxyFactory
syn keyword qtClass QNetworkProxyQuery
syn keyword qtClass QNetworkReply
syn keyword qtClass QNetworkRequest
syn keyword qtClass QNetworkSession
syn keyword qtClass QNoDebug
syn keyword qtClass QNoImplicitBoolCast
syn keyword qtClass QObject
syn keyword qtClass QObjectCleanupHandler
syn keyword qtClass QObjectData
syn keyword qtClass QObjectList
syn keyword qtClass QObjectUserData
syn keyword qtClass QOffscreenSurface
syn keyword qtClass QOpenGLBuffer
syn keyword qtClass QOpenGLContext
syn keyword qtClass QOpenGLContextGroup
syn keyword qtClass QOpenGLDebugLogger
syn keyword qtClass QOpenGLDebugMessage
syn keyword qtClass QOpenGLExtensions
syn keyword qtClass QOpenGLFramebufferObject
syn keyword qtClass QOpenGLFramebufferObjectFormat
syn keyword qtClass QOpenGLFunctions
syn keyword qtClass QOpenGLFunctions_1_0
syn keyword qtClass QOpenGLFunctions_1_1
syn keyword qtClass QOpenGLFunctions_1_2
syn keyword qtClass QOpenGLFunctions_1_3
syn keyword qtClass QOpenGLFunctions_1_4
syn keyword qtClass QOpenGLFunctions_1_5
syn keyword qtClass QOpenGLFunctions_2_0
syn keyword qtClass QOpenGLFunctions_2_1
syn keyword qtClass QOpenGLFunctions_3_0
syn keyword qtClass QOpenGLFunctions_3_1
syn keyword qtClass QOpenGLFunctions_3_2_Compatibility
syn keyword qtClass QOpenGLFunctions_3_2_Core
syn keyword qtClass QOpenGLFunctions_3_3_Compatibility
syn keyword qtClass QOpenGLFunctions_3_3_Core
syn keyword qtClass QOpenGLFunctions_4_0_Compatibility
syn keyword qtClass QOpenGLFunctions_4_0_Core
syn keyword qtClass QOpenGLFunctions_4_1_Compatibility
syn keyword qtClass QOpenGLFunctions_4_1_Core
syn keyword qtClass QOpenGLFunctions_4_2_Compatibility
syn keyword qtClass QOpenGLFunctions_4_2_Core
syn keyword qtClass QOpenGLFunctions_4_3_Compatibility
syn keyword qtClass QOpenGLFunctions_4_3_Core
syn keyword qtClass QOpenGLFunctions_ES2
syn keyword qtClass QOpenGLFunctionsPrivate
syn keyword qtClass QOpenGLPaintDevice
syn keyword qtClass QOpenGLShader
syn keyword qtClass QOpenGLShaderProgram
syn keyword qtClass QOpenGLTimeMonitor
syn keyword qtClass QOpenGLTimerQuery
syn keyword qtClass QOpenGLVersionFunctions
syn keyword qtClass QOpenGLVersionProfile
syn keyword qtClass QOpenGLVertexArrayObject
syn keyword qtClass QOrientationFilter
syn keyword qtClass QOrientationReading
syn keyword qtClass QOrientationSensor
syn keyword qtClass QPagedPaintDevice
syn keyword qtClass QPageSetupDialog
syn keyword qtClass QPaintDevice
syn keyword qtClass QPaintEngine
syn keyword qtClass QPaintEngineState
syn keyword qtClass QPainter
syn keyword qtClass QPainterPath
syn keyword qtClass QPainterPathStroker
syn keyword qtClass QPaintEvent
syn keyword qtClass QPair
syn keyword qtClass QPalette
syn keyword qtClass QPanGesture
syn keyword qtClass QParallelAnimationGroup
syn keyword qtClass QPauseAnimation
syn keyword qtClass QPdfWriter
syn keyword qtClass QPen
syn keyword qtClass QPersistentModelIndex
syn keyword qtClass QPicture
syn keyword qtClass QPictureFormatPlugin
syn keyword qtClass QPictureIO
syn keyword qtClass Q_PID
syn keyword qtClass QPinchGesture
syn keyword qtClass QPixmap
syn keyword qtClass QPixmapCache
syn keyword qtClass QPlainTextDocumentLayout
syn keyword qtClass QPlainTextEdit
syn keyword qtClass QPluginLoader
syn keyword qtClass QPoint
syn keyword qtClass QPointer
syn keyword qtClass QPointF
syn keyword qtClass QPolygon
syn keyword qtClass QPolygonF
syn keyword qtClass QPressureFilter
syn keyword qtClass QPressureReading
syn keyword qtClass QPressureSensor
syn keyword qtClass QPrintDialog
syn keyword qtClass QPrintEngine
syn keyword qtClass QPrinter
syn keyword qtClass QPrinterInfo
syn keyword qtClass QPrintPreviewDialog
syn keyword qtClass QPrintPreviewWidget
syn keyword qtClass QProcess
syn keyword qtClass QProcessEnvironment
syn keyword qtClass QProgressBar
syn keyword qtClass QProgressDialog
syn keyword qtClass QPropertyAnimation
syn keyword qtClass QProximityFilter
syn keyword qtClass QProximityReading
syn keyword qtClass QProximitySensor
syn keyword qtClass QProxyStyle
syn keyword qtClass QPushButton
syn keyword qtClass QQmlApplicationEngine
syn keyword qtClass QQmlAttachedPropertiesFunc
syn keyword qtClass QQmlComponent
syn keyword qtClass QQmlContext
syn keyword qtClass QQmlDebuggingEnabler
syn keyword qtClass QQmlEngine
syn keyword qtClass QQmlError
syn keyword qtClass QQmlExpression
syn keyword qtClass QQmlExtensionInterface
syn keyword qtClass QQmlExtensionPlugin
syn keyword qtClass QQmlFile
syn keyword qtClass QQmlImageProviderBase
syn keyword qtClass QQmlIncubationController
syn keyword qtClass QQmlIncubator
syn keyword qtClass QQmlInfo
syn keyword qtClass QQmlListProperty
syn keyword qtClass QQmlListReference
syn keyword qtClass QQmlNetworkAccessManagerFactory
syn keyword qtClass QQmlParserStatus
syn keyword qtClass QQmlProperties
syn keyword qtClass QQmlProperty
syn keyword qtClass QQmlPropertyMap
syn keyword qtClass QQmlPropertyValueSource
syn keyword qtClass QQmlScriptString
syn keyword qtClass QQmlTypeInfo
syn keyword qtClass QQmlTypesExtensionInterface
syn keyword qtClass QQuaternion
syn keyword qtClass QQueue
syn keyword qtClass QQuickImageProvider
syn keyword qtClass QQuickItem
syn keyword qtClass QQuickPaintedItem
syn keyword qtClass QQuickTextDocument
syn keyword qtClass QQuickTextureFactory
syn keyword qtClass QQuickTransform
syn keyword qtClass QQuickView
syn keyword qtClass QQuickWindow
syn keyword qtClass QRadialGradient
syn keyword qtClass QRadioButton
syn keyword qtClass QRadioData
syn keyword qtClass QRadioDataControl
syn keyword qtClass QRadioTuner
syn keyword qtClass QRadioTunerControl
syn keyword qtClass QRawFont
syn keyword qtClass QReadLocker
syn keyword qtClass QReadWriteLock
syn keyword qtClass QRect
syn keyword qtClass QRectF
syn keyword qtClass QRegExp
syn keyword qtClass QRegExpValidator
syn keyword qtClass QRegion
syn keyword qtClass QRegularExpression
syn keyword qtClass QRegularExpressionMatch
syn keyword qtClass QRegularExpressionMatchIterator
syn keyword qtClass QRegularExpressionValidator
syn keyword qtClass QResizeEvent
syn keyword qtClass QResource
syn keyword qtClass QReturnArgument
syn keyword qtClass QRgb
syn keyword qtClass QRotationFilter
syn keyword qtClass QRotationReading
syn keyword qtClass QRotationSensor
syn keyword qtClass QRubberBand
syn keyword qtClass QRunnable
syn keyword qtClass QSaveFile
syn keyword qtClass QScopedArrayPointer
syn keyword qtClass QScopedPointer
syn keyword qtClass QScopedPointerArrayDeleter
syn keyword qtClass QScopedPointerDeleter
syn keyword qtClass QScopedPointerPodDeleter
syn keyword qtClass QScopedValueRollback
syn keyword qtClass QScreen
syn keyword qtClass QScreenOrientationChangeEvent
syn keyword qtClass QScriptable
syn keyword qtClass QScriptClass
syn keyword qtClass QScriptClassPropertyIterator
syn keyword qtClass QScriptContext
syn keyword qtClass QScriptContextInfo
syn keyword qtClass QScriptContextInfoList
syn keyword qtClass QScriptEngine
syn keyword qtClass QScriptEngineAgent
syn keyword qtClass QScriptEngineDebugger
syn keyword qtClass QScriptExtensionInterface
syn keyword qtClass QScriptExtensionPlugin
syn keyword qtClass QScriptProgram
syn keyword qtClass QScriptString
syn keyword qtClass QScriptSyntaxCheckResult
syn keyword qtClass QScriptValue
syn keyword qtClass QScriptValueIterator
syn keyword qtClass QScriptValueList
syn keyword qtClass QScrollArea
syn keyword qtClass QScrollBar
syn keyword qtClass QScroller
syn keyword qtClass QScrollerProperties
syn keyword qtClass QScrollEvent
syn keyword qtClass QScrollPrepareEvent
syn keyword qtClass QSemaphore
syn keyword qtClass QSensor
syn keyword qtClass QSensorBackend
syn keyword qtClass QSensorBackendFactory
syn keyword qtClass QSensorChangesInterface
syn keyword qtClass QSensorFilter
syn keyword qtClass QSensorGesture
syn keyword qtClass QSensorGestureManager
syn keyword qtClass QSensorGesturePluginInterface
syn keyword qtClass QSensorGestureRecognizer
syn keyword qtClass QSensorManager
syn keyword qtClass QSensorPluginInterface
syn keyword qtClass QSensorReading
syn keyword qtClass QSequentialAnimationGroup
syn keyword qtClass QSerialPort
syn keyword qtClass QSerialPortInfo
syn keyword qtClass QSessionManager
syn keyword qtClass QSet
syn keyword qtClass QSetIterator
syn keyword qtClass QSettings
syn keyword qtClass QSGBasicGeometryNode
syn keyword qtClass QSGClipNode
syn keyword qtClass QSGDynamicTexture
syn keyword qtClass QSGFlatColorMaterial
syn keyword qtClass QSGGeometry
syn keyword qtClass QSGGeometryNode
syn keyword qtClass QSGMaterial
syn keyword qtClass QSGMaterialShader
syn keyword qtClass QSGMaterialType
syn keyword qtClass QSGNode
syn keyword qtClass QSGNodeVisitor
syn keyword qtClass QSGOpacityNode
syn keyword qtClass QSGOpaqueTextureMaterial
syn keyword qtClass QSGRootNode
syn keyword qtClass QSGSimpleMaterial
syn keyword qtClass QSGSimpleMaterialComparableMaterial
syn keyword qtClass QSGSimpleMaterialShader
syn keyword qtClass QSGSimpleRectNode
syn keyword qtClass QSGSimpleTextureNode
syn keyword qtClass QSGTexture
syn keyword qtClass QSGTextureMaterial
syn keyword qtClass QSGTextureProvider
syn keyword qtClass QSGTransformNode
syn keyword qtClass QSGVertexColorMaterial
syn keyword qtClass QSharedData
syn keyword qtClass QSharedDataPointer
syn keyword qtClass QSharedMemory
syn keyword qtClass QSharedPointer
syn keyword qtClass QShortcut
syn keyword qtClass QShortcutEvent
syn keyword qtClass QShowEvent
syn keyword qtClass QSignalMapper
syn keyword qtClass QSignalSpy
syn keyword qtClass QSignalTransition
syn keyword qtClass QSimpleXmlNodeModel
syn keyword qtClass QSize
syn keyword qtClass QSizeF
syn keyword qtClass QSizeGrip
syn keyword qtClass QSizePolicy
syn keyword qtClass QSlider
syn keyword qtClass QSocketNotifier
syn keyword qtClass QSortFilterProxyModel
syn keyword qtClass QSound
syn keyword qtClass QSoundEffect
syn keyword qtClass QSourceLocation
syn keyword qtClass QSpacerItem
syn keyword qtClass QSpinBox
syn keyword qtClass QSplashScreen
syn keyword qtClass QSplitter
syn keyword qtClass QSplitterHandle
syn keyword qtClass QSpontaneKeyEvent
syn keyword qtClass QSql
syn keyword qtClass QSqlDatabase
syn keyword qtClass QSqlDriver
syn keyword qtClass QSqlDriverCreator
syn keyword qtClass QSqlDriverCreatorBase
syn keyword qtClass QSqlDriverPlugin
syn keyword qtClass QSqlError
syn keyword qtClass QSqlField
syn keyword qtClass QSqlIndex
syn keyword qtClass QSqlQuery
syn keyword qtClass QSqlQueryModel
syn keyword qtClass QSqlRecord
syn keyword qtClass QSqlRelation
syn keyword qtClass QSqlRelationalDelegate
syn keyword qtClass QSqlRelationalTableModel
syn keyword qtClass QSqlResult
syn keyword qtClass QSqlTableModel
syn keyword qtClass QSsl
syn keyword qtClass QSslCertificate
syn keyword qtClass QSslCertificateExtension
syn keyword qtClass QSslCipher
syn keyword qtClass QSslConfiguration
syn keyword qtClass QSslError
syn keyword qtClass QSslKey
syn keyword qtClass QSslSocket
syn keyword qtClass QStack
syn keyword qtClass QStackedLayout
syn keyword qtClass QStackedWidget
syn keyword qtClass QStandardItem
syn keyword qtClass QStandardItemEditorCreator
syn keyword qtClass QStandardItemModel
syn keyword qtClass QStandardPaths
syn keyword qtClass QState
syn keyword qtClass QStateMachine
syn keyword qtClass QStaticArrayData
syn keyword qtClass QStaticAssertFailure
syn keyword qtClass QStaticByteArrayData
syn keyword qtClass QStaticPlugin
syn keyword qtClass QStaticStringData
syn keyword qtClass QStaticText
syn keyword qtClass QStatusBar
syn keyword qtClass QStatusTipEvent
syn keyword qtClass QString
syn keyword qtClass QStringBuilder
syn keyword qtClass QStringData
syn keyword qtClass QStringDataPtr
syn keyword qtClass QStringList
syn keyword qtClass QStringListIterator
syn keyword qtClass QStringListModel
syn keyword qtClass QStringMatcher
syn keyword qtClass QStringRef
syn keyword qtClass QStyle
syn keyword qtClass QStyledItemDelegate
syn keyword qtClass QStyleFactory
syn keyword qtClass QStyleHintReturn
syn keyword qtClass QStyleHintReturnMask
syn keyword qtClass QStyleHintReturnVariant
syn keyword qtClass QStyleHints
syn keyword qtClass QStyleOption
syn keyword qtClass QStyleOptionButton
syn keyword qtClass QStyleOptionComboBox
syn keyword qtClass QStyleOptionComplex
syn keyword qtClass QStyleOptionDockWidget
syn keyword qtClass QStyleOptionDockWidgetV2
syn keyword qtClass QStyleOptionFocusRect
syn keyword qtClass QStyleOptionFrame
syn keyword qtClass QStyleOptionFrameV2
syn keyword qtClass QStyleOptionFrameV3
syn keyword qtClass QStyleOptionGraphicsItem
syn keyword qtClass QStyleOptionGroupBox
syn keyword qtClass QStyleOptionHeader
syn keyword qtClass QStyleOptionMenuItem
syn keyword qtClass QStyleOptionProgressBar
syn keyword qtClass QStyleOptionProgressBarV2
syn keyword qtClass QStyleOptionRubberBand
syn keyword qtClass QStyleOptionSizeGrip
syn keyword qtClass QStyleOptionSlider
syn keyword qtClass QStyleOptionSpinBox
syn keyword qtClass QStyleOptionTab
syn keyword qtClass QStyleOptionTabBarBase
syn keyword qtClass QStyleOptionTabBarBaseV2
syn keyword qtClass QStyleOptionTabV2
syn keyword qtClass QStyleOptionTabV3
syn keyword qtClass QStyleOptionTabWidgetFrame
syn keyword qtClass QStyleOptionTabWidgetFrameV2
syn keyword qtClass QStyleOptionTitleBar
syn keyword qtClass QStyleOptionToolBar
syn keyword qtClass QStyleOptionToolBox
syn keyword qtClass QStyleOptionToolBoxV2
syn keyword qtClass QStyleOptionToolButton
syn keyword qtClass QStyleOptionViewItem
syn keyword qtClass QStyleOptionViewItemV2
syn keyword qtClass QStyleOptionViewItemV3
syn keyword qtClass QStyleOptionViewItemV4
syn keyword qtClass QStylePainter
syn keyword qtClass QStylePlugin
syn keyword qtClass QSurface
syn keyword qtClass QSurfaceFormat
syn keyword qtClass QSvgGenerator
syn keyword qtClass QSvgRenderer
syn keyword qtClass QSvgWidget
syn keyword qtClass QSwipeGesture
syn keyword qtClass QSyntaxHighlighter
syn keyword qtClass QSysInfo
syn keyword qtClass QSystemSemaphore
syn keyword qtClass QSystemTrayIcon
syn keyword qtClass Qt
syn keyword qtClass QTabBar
syn keyword qtClass QTabletEvent
syn keyword qtClass QTableView
syn keyword qtClass QTableWidget
syn keyword qtClass QTableWidgetItem
syn keyword qtClass QTableWidgetSelectionRange
syn keyword qtClass QTabWidget
syn keyword qtClass QtAlgorithms
syn keyword qtClass QTapAndHoldGesture
syn keyword qtClass QTapFilter
syn keyword qtClass QTapGesture
syn keyword qtClass QTapReading
syn keyword qtClass QTapSensor
syn keyword qtClass QtCleanUpFunction
syn keyword qtClass QtCLucene
syn keyword qtClass QtCLuceneDepends
syn keyword qtClass QtCLuceneVersion
syn keyword qtClass QtConcurrent
syn keyword qtClass QtConcurrentDepends
syn keyword qtClass QtConcurrentFilter
syn keyword qtClass QtConcurrentMap
syn keyword qtClass QtConcurrentRun
syn keyword qtClass QtConcurrentVersion
syn keyword qtClass QtConfig
syn keyword qtClass QtContainerFwd
syn keyword qtClass QtCore
syn keyword qtClass QtCoreDepends
syn keyword qtClass QtCoreVersion
syn keyword qtClass QTcpServer
syn keyword qtClass QTcpSocket
syn keyword qtClass QtDBus
syn keyword qtClass QtDBusDepends
syn keyword qtClass QtDBusVersion
syn keyword qtClass QtDebug
syn keyword qtClass QtDeclarative
syn keyword qtClass QtDeclarativeDepends
syn keyword qtClass QtDeclarativeVersion
syn keyword qtClass QtDesigner
syn keyword qtClass QtDesignerComponents
syn keyword qtClass QtDesignerComponentsDepends
syn keyword qtClass QtDesignerComponentsVersion
syn keyword qtClass QtDesignerDepends
syn keyword qtClass QtDesignerVersion
syn keyword qtClass QTemporaryDir
syn keyword qtClass QTemporaryFile
syn keyword qtClass QtEndian
syn keyword qtClass QTest
syn keyword qtClass QTestAccessibility
syn keyword qtClass QTestData
syn keyword qtClass QTestDelayEvent
syn keyword qtClass QTestEvent
syn keyword qtClass QTestEventList
syn keyword qtClass QTestEventLoop
syn keyword qtClass QTestKeyClicksEvent
syn keyword qtClass QTestKeyEvent
syn keyword qtClass QTestMouseEvent
syn keyword qtClass QtEvents
syn keyword qtClass QTextBlock
syn keyword qtClass QTextBlockFormat
syn keyword qtClass QTextBlockGroup
syn keyword qtClass QTextBlockUserData
syn keyword qtClass QTextBoundaryFinder
syn keyword qtClass QTextBrowser
syn keyword qtClass QTextCharFormat
syn keyword qtClass QTextCodec
syn keyword qtClass QTextCursor
syn keyword qtClass QTextDecoder
syn keyword qtClass QTextDocument
syn keyword qtClass QTextDocumentFragment
syn keyword qtClass QTextDocumentWriter
syn keyword qtClass QTextEdit
syn keyword qtClass QTextEncoder
syn keyword qtClass QTextFormat
syn keyword qtClass QTextFragment
syn keyword qtClass QTextFrame
syn keyword qtClass QTextFrameFormat
syn keyword qtClass QTextFrameLayoutData
syn keyword qtClass QTextImageFormat
syn keyword qtClass QTextInlineObject
syn keyword qtClass QTextItem
syn keyword qtClass QTextLayout
syn keyword qtClass QTextLength
syn keyword qtClass QTextLine
syn keyword qtClass QTextList
syn keyword qtClass QTextListFormat
syn keyword qtClass QTextObject
syn keyword qtClass QTextObjectInterface
syn keyword qtClass QTextOption
syn keyword qtClass QTextStream
syn keyword qtClass QTextStreamFunction
syn keyword qtClass QTextStreamManipulator
syn keyword qtClass QTextTable
syn keyword qtClass QTextTableCell
syn keyword qtClass QTextTableCellFormat
syn keyword qtClass QTextTableFormat
syn keyword qtClass QtGlobal
syn keyword qtClass QtGui
syn keyword qtClass QtGuiDepends
syn keyword qtClass QtGuiVersion
syn keyword qtClass QtHelp
syn keyword qtClass QtHelpDepends
syn keyword qtClass QtHelpVersion
syn keyword qtClass QThread
syn keyword qtClass QThreadPool
syn keyword qtClass QThreadStorage
syn keyword qtClass QThreadStorageData
syn keyword qtClass QTileRules
syn keyword qtClass QTiltFilter
syn keyword qtClass QTiltReading
syn keyword qtClass QTiltSensor
syn keyword qtClass QTime
syn keyword qtClass QTimeEdit
syn keyword qtClass QTimeLine
syn keyword qtClass QTimer
syn keyword qtClass QTimerEvent
syn keyword qtClass QtMath
syn keyword qtClass QtMessageHandler
syn keyword qtClass QtMsgHandler
syn keyword qtClass QtMultimedia
syn keyword qtClass QtMultimediaDepends
syn keyword qtClass QtMultimediaQuick_p
syn keyword qtClass QtMultimediaQuick_pDepends
syn keyword qtClass QtMultimediaQuick_pVersion
syn keyword qtClass QtMultimediaVersion
syn keyword qtClass QtMultimediaWidgets
syn keyword qtClass QtMultimediaWidgetsDepends
syn keyword qtClass QtMultimediaWidgetsVersion
syn keyword qtClass QtNetwork
syn keyword qtClass QtNetworkDepends
syn keyword qtClass QtNetworkVersion
syn keyword qtClass QtNumeric
syn keyword qtClass QToolBar
syn keyword qtClass QToolBarChangeEvent
syn keyword qtClass QToolBox
syn keyword qtClass QToolButton
syn keyword qtClass QToolTip
syn keyword qtClass QtOpenGL
syn keyword qtClass QtOpenGLDepends
syn keyword qtClass QtOpenGLExtensions
syn keyword qtClass QtOpenGLExtensionsDepends
syn keyword qtClass QtOpenGLExtensionsVersion
syn keyword qtClass QtOpenGLVersion
syn keyword qtClass QTouchDevice
syn keyword qtClass QTouchEvent
syn keyword qtClass QtPlatformSupport
syn keyword qtClass QtPlatformSupportDepends
syn keyword qtClass QtPlatformSupportVersion
syn keyword qtClass QtPlugin
syn keyword qtClass QtPluginInstanceFunction
syn keyword qtClass QtPluginMetaDataFunction
syn keyword qtClass QtPrintSupport
syn keyword qtClass QtPrintSupportDepends
syn keyword qtClass QtPrintSupportVersion
syn keyword qtClass QtQml
syn keyword qtClass QtQmlDepends
syn keyword qtClass QtQmlVersion
syn keyword qtClass QtQuick
syn keyword qtClass QtQuickDepends
syn keyword qtClass QtQuickParticles
syn keyword qtClass QtQuickParticlesDepends
syn keyword qtClass QtQuickParticlesVersion
syn keyword qtClass QtQuickTest
syn keyword qtClass QtQuickTestDepends
syn keyword qtClass QtQuickTestVersion
syn keyword qtClass QtQuickVersion
syn keyword qtClass QTransform
syn keyword qtClass QTranslator
syn keyword qtClass QTreeView
syn keyword qtClass QTreeWidget
syn keyword qtClass QTreeWidgetItem
syn keyword qtClass QTreeWidgetItemIterator
syn keyword qtClass QtScript
syn keyword qtClass QtScriptDepends
syn keyword qtClass QtScriptTools
syn keyword qtClass QtScriptToolsDepends
syn keyword qtClass QtScriptToolsVersion
syn keyword qtClass QtScriptVersion
syn keyword qtClass QtSensors
syn keyword qtClass QtSensorsDepends
syn keyword qtClass QtSensorsVersion
syn keyword qtClass QtSerialPort
syn keyword qtClass QtSerialPortDepends
syn keyword qtClass QtSerialPortVersion
syn keyword qtClass QtSql
syn keyword qtClass QtSqlDepends
syn keyword qtClass QtSqlVersion
syn keyword qtClass QtSvg
syn keyword qtClass QtSvgDepends
syn keyword qtClass QtSvgVersion
syn keyword qtClass QtTest
syn keyword qtClass QtTestDepends
syn keyword qtClass QtTestGui
syn keyword qtClass QtTestVersion
syn keyword qtClass QtTestWidgets
syn keyword qtClass QtUiTools
syn keyword qtClass QtUiToolsDepends
syn keyword qtClass QtUiToolsVersion
syn keyword qtClass QtV8
syn keyword qtClass QtV8Depends
syn keyword qtClass QtV8Version
syn keyword qtClass QtWebKit
syn keyword qtClass QtWebKitDepends
syn keyword qtClass QtWebKitVersion
syn keyword qtClass QtWebKitWidgets
syn keyword qtClass QtWebKitWidgetsDepends
syn keyword qtClass QtWebKitWidgetsVersion
syn keyword qtClass QtWidgets
syn keyword qtClass QtWidgetsDepends
syn keyword qtClass QtWidgetsVersion
syn keyword qtClass QtX11Extras
syn keyword qtClass QtX11ExtrasDepends
syn keyword qtClass QtX11ExtrasVersion
syn keyword qtClass QtXml
syn keyword qtClass QtXmlDepends
syn keyword qtClass QtXmlPatterns
syn keyword qtClass QtXmlPatternsDepends
syn keyword qtClass QtXmlPatternsVersion
syn keyword qtClass QtXmlVersion
syn keyword qtClass QTypeInfo
syn keyword qtClass QTypeInfoMerger
syn keyword qtClass QUdpSocket
syn keyword qtClass QUiLoader
syn keyword qtClass QUndoCommand
syn keyword qtClass QUndoGroup
syn keyword qtClass QUndoStack
syn keyword qtClass QUndoView
syn keyword qtClass QUnhandledException
syn keyword qtClass QUrl
syn keyword qtClass QUrlQuery
syn keyword qtClass QUrlTwoFlags
syn keyword qtClass QUuid
syn keyword qtClass QValidator
syn keyword qtClass QVariant
syn keyword qtClass QVariantAnimation
syn keyword qtClass QVariantComparisonHelper
syn keyword qtClass QVariantHash
syn keyword qtClass QVariantList
syn keyword qtClass QVariantMap
syn keyword qtClass QVarLengthArray
syn keyword qtClass QVBoxLayout
syn keyword qtClass QVector
syn keyword qtClass QVector2D
syn keyword qtClass QVector3D
syn keyword qtClass QVector4D
syn keyword qtClass QVectorIterator
syn keyword qtClass QVideoDeviceSelectorControl
syn keyword qtClass QVideoEncoderSettings
syn keyword qtClass QVideoEncoderSettingsControl
syn keyword qtClass QVideoFrame
syn keyword qtClass QVideoProbe
syn keyword qtClass QVideoRendererControl
syn keyword qtClass QVideoSurfaceFormat
syn keyword qtClass QVideoWidget
syn keyword qtClass QVideoWidgetControl
syn keyword qtClass QVideoWindowControl
syn keyword qtClass QWaitCondition
syn keyword qtClass QWeakPointer
syn keyword qtClass QWebDatabase
syn keyword qtClass QWebElement
syn keyword qtClass QWebElementCollection
syn keyword qtClass QWebFrame
syn keyword qtClass QWebFullScreenVideoHandler
syn keyword qtClass QWebHapticFeedbackPlayer
syn keyword qtClass QWebHistory
syn keyword qtClass QWebHistoryInterface
syn keyword qtClass QWebHistoryItem
syn keyword qtClass QWebHitTestResult
syn keyword qtClass QWebInspector
syn keyword qtClass QWebKitPlatformPlugin
syn keyword qtClass QWebNotificationData
syn keyword qtClass QWebNotificationPresenter
syn keyword qtClass QWebPage
syn keyword qtClass QWebPluginFactory
syn keyword qtClass QWebSecurityOrigin
syn keyword qtClass QWebSelectData
syn keyword qtClass QWebSelectMethod
syn keyword qtClass QWebSettings
syn keyword qtClass QWebSpellChecker
syn keyword qtClass QWebTouchModifier
syn keyword qtClass QWebView
syn keyword qtClass QWhatsThis
syn keyword qtClass QWhatsThisClickedEvent
syn keyword qtClass QWheelEvent
syn keyword qtClass QWidget
syn keyword qtClass QWidgetAction
syn keyword qtClass QWidgetData
syn keyword qtClass QWidgetItem
syn keyword qtClass QWidgetItemV2
syn keyword qtClass QWidgetList
syn keyword qtClass QWidgetMapper
syn keyword qtClass QWidgetSet
syn keyword qtClass QWindow
syn keyword qtClass QWindowList
syn keyword qtClass QWindowStateChangeEvent
syn keyword qtClass QWinEventNotifier
syn keyword qtClass QWizard
syn keyword qtClass QWizardPage
syn keyword qtClass QWriteLocker
syn keyword qtClass QX11Info
syn keyword qtClass QXmlAttributes
syn keyword qtClass QXmlContentHandler
syn keyword qtClass QXmlDeclHandler
syn keyword qtClass QXmlDefaultHandler
syn keyword qtClass QXmlDTDHandler
syn keyword qtClass QXmlEntityResolver
syn keyword qtClass QXmlErrorHandler
syn keyword qtClass QXmlFormatter
syn keyword qtClass QXmlInputSource
syn keyword qtClass QXmlItem
syn keyword qtClass QXmlLexicalHandler
syn keyword qtClass QXmlLocator
syn keyword qtClass QXmlName
syn keyword qtClass QXmlNamePool
syn keyword qtClass QXmlNamespaceSupport
syn keyword qtClass QXmlNodeModelIndex
syn keyword qtClass QXmlParseException
syn keyword qtClass QXmlQuery
syn keyword qtClass QXmlReader
syn keyword qtClass QXmlResultItems
syn keyword qtClass QXmlSchema
syn keyword qtClass QXmlSchemaValidator
syn keyword qtClass QXmlSerializer
syn keyword qtClass QXmlSimpleReader
syn keyword qtClass QXmlStreamAttribute
syn keyword qtClass QXmlStreamAttributes
syn keyword qtClass QXmlStreamEntityDeclaration
syn keyword qtClass QXmlStreamEntityDeclarations
syn keyword qtClass QXmlStreamEntityResolver
syn keyword qtClass QXmlStreamNamespaceDeclaration
syn keyword qtClass QXmlStreamNamespaceDeclarations
syn keyword qtClass QXmlStreamNotationDeclaration
syn keyword qtClass QXmlStreamNotationDeclarations
syn keyword qtClass QXmlStreamReader
syn keyword qtClass QXmlStreamStringRef
syn keyword qtClass QXmlStreamWriter

" Qt Macros
syn keyword qtAccess signals slots
syn keyword qtMacro Q_ASSERT Q_CHECK_PTR Q_OBJECT
syn keyword qtMacro Q_PLUGIN_METADATA Q_INTERFACES
syn keyword qtMacro Q_DECLARE_METATYPE
syn keyword qtMacro Q_DECLARE_LOGGING_CATEGORY Q_LOGGING_CATEGORY
syn keyword qtMacro Q_UNUSED
syn keyword qtMacro SIGNAL SLOT

" Qt Enum
" Qt
syn keyword qtEnumType CaseSensitivity

syn keyword qtEnumValue WaitCursor

" - QIODevice
syn keyword qtEnumValue WriteOnly ReadOnly Text

" - QDataStream
syn keyword qtEnumValue Qt_4_3

" - QKeySequence
syn keyword qtEnumValue Open Save

" Qt Statement
syn keyword qtStatement emit

" Qt Type
syn keyword qtType qint8 quint8 qint16 quint16 qint32 quint32 qint64 quint64
syn keyword qtType quintptr

" Highlight
highlight link qtNamespace cppConstant
highlight link qtClass Type
highlight link qtMacro cDefine
highlight link qtEnumType Type
highlight link qtEnumValue cppConstant
highlight link qtStatement cppStatement
highlight link qtAccess cppAccess
highlight link qtType Type
