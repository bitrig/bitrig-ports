$NetBSD: patch-kernel_driver__info.cc,v 1.1 2013/02/26 10:23:51 joerg Exp $

--- kernel/driver_info.cc.orig	2013-02-25 17:38:05.000000000 +0000
+++ kernel/driver_info.cc
@@ -268,6 +268,7 @@ do_scalar_inertial_assignment(driver_inf
  *************************************************************************
  *************************************************************************/
 
+inline int do_record_transport_assignment(driver_info &, const record_base &, int, const vtime &);
 
 // Creates transaction composite signals. Returns number of assigned scalars.
 inline int
@@ -311,7 +312,6 @@ do_array_transport_assignment(driver_inf
 	assigned_scalars += do_array_transport_assignment(driver, (array_base&)value.data[j], i, tr_time);
 	break;
       case RECORD:
-	inline int do_record_transport_assignment(driver_info &, const record_base &, int, const vtime &);
 	assigned_scalars += do_record_transport_assignment(driver, (record_base&)value.data[j], i, tr_time);
 	break;
       }
@@ -338,6 +338,9 @@ driver_info::transport_assign(const arra
 }
 
 
+inline int do_record_inertial_assignment(driver_info &, const record_base &, int,  
+					  const vtime &, const vtime &); 
+
 // Creates transaction for composite signals. Returns number of assigned scalars.
 inline int
 do_array_inertial_assignment(driver_info &driver,
@@ -381,8 +384,6 @@ do_array_inertial_assignment(driver_info
 	assigned_scalars += do_array_inertial_assignment(driver, (array_base&)value.data[j], i, tr_time, rm_time);
 	break;
       case RECORD:
-	inline int do_record_inertial_assignment(driver_info &, const record_base &, int,  
-						  const vtime &, const vtime &); 
 	assigned_scalars += do_record_inertial_assignment(driver, (record_base&)value.data[j], i, tr_time, rm_time);
 	break;
       }
