{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -fno-warn-missing-fields #-}
{-# OPTIONS_GHC -fno-warn-missing-signatures #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-----------------------------------------------------------------
-- Autogenerated by Thrift Compiler (0.12.0)                      --
--                                                             --
-- DO NOT EDIT UNLESS YOU ARE SURE YOU KNOW WHAT YOU ARE DOING --
-----------------------------------------------------------------

module SharedService where
import Prelude (($), (.), (>>=), (==), (++))
import qualified Prelude as P
import qualified Control.Exception as X
import qualified Control.Monad as M ( liftM, ap, when )
import Data.Functor ( (<$>) )
import qualified Data.ByteString.Lazy as LBS
import qualified Data.Hashable as H
import qualified Data.Int as I
import qualified Data.Maybe as M (catMaybes)
import qualified Data.Text.Lazy.Encoding as E ( decodeUtf8, encodeUtf8 )
import qualified Data.Text.Lazy as LT
import qualified GHC.Generics as G (Generic)
import qualified Data.Typeable as TY ( Typeable )
import qualified Data.HashMap.Strict as Map
import qualified Data.HashSet as Set
import qualified Data.Vector as Vector
import qualified Test.QuickCheck.Arbitrary as QC ( Arbitrary(..) )
import qualified Test.QuickCheck as QC ( elements )

import qualified Thrift as T
import qualified Thrift.Types as T
import qualified Thrift.Arbitraries as T


import Shared_Types
import qualified SharedService_Iface as Iface
-- HELPER FUNCTIONS AND STRUCTURES --

data GetStruct_args = GetStruct_args  { getStruct_args_key :: I.Int32
  } deriving (P.Show,P.Eq,G.Generic,TY.Typeable)
instance H.Hashable GetStruct_args where
  hashWithSalt salt record = salt   `H.hashWithSalt` getStruct_args_key record  
instance QC.Arbitrary GetStruct_args where 
  arbitrary = M.liftM GetStruct_args (QC.arbitrary)
  shrink obj | obj == default_GetStruct_args = []
             | P.otherwise = M.catMaybes
    [ if obj == default_GetStruct_args{getStruct_args_key = getStruct_args_key obj} then P.Nothing else P.Just $ default_GetStruct_args{getStruct_args_key = getStruct_args_key obj}
    ]
from_GetStruct_args :: GetStruct_args -> T.ThriftVal
from_GetStruct_args record = T.TStruct $ Map.fromList $ M.catMaybes
  [ (\_v17 -> P.Just (1, ("key",T.TI32 _v17))) $ getStruct_args_key record
  ]
write_GetStruct_args :: T.Protocol p => p -> GetStruct_args -> P.IO ()
write_GetStruct_args oprot record = T.writeVal oprot $ from_GetStruct_args record
encode_GetStruct_args :: T.StatelessProtocol p => p -> GetStruct_args -> LBS.ByteString
encode_GetStruct_args oprot record = T.serializeVal oprot $ from_GetStruct_args record
to_GetStruct_args :: T.ThriftVal -> GetStruct_args
to_GetStruct_args (T.TStruct fields) = GetStruct_args{
  getStruct_args_key = P.maybe (getStruct_args_key default_GetStruct_args) (\(_,_val19) -> (case _val19 of {T.TI32 _val20 -> _val20; _ -> P.error "wrong type"})) (Map.lookup (1) fields)
  }
to_GetStruct_args _ = P.error "not a struct"
read_GetStruct_args :: T.Protocol p => p -> P.IO GetStruct_args
read_GetStruct_args iprot = to_GetStruct_args <$> T.readVal iprot (T.T_STRUCT typemap_GetStruct_args)
decode_GetStruct_args :: T.StatelessProtocol p => p -> LBS.ByteString -> GetStruct_args
decode_GetStruct_args iprot bs = to_GetStruct_args $ T.deserializeVal iprot (T.T_STRUCT typemap_GetStruct_args) bs
typemap_GetStruct_args :: T.TypeMap
typemap_GetStruct_args = Map.fromList [(1,("key",T.T_I32))]
default_GetStruct_args :: GetStruct_args
default_GetStruct_args = GetStruct_args{
  getStruct_args_key = 0}
data GetStruct_result = GetStruct_result  { getStruct_result_success :: SharedStruct
  } deriving (P.Show,P.Eq,G.Generic,TY.Typeable)
instance H.Hashable GetStruct_result where
  hashWithSalt salt record = salt   `H.hashWithSalt` getStruct_result_success record  
instance QC.Arbitrary GetStruct_result where 
  arbitrary = M.liftM GetStruct_result (QC.arbitrary)
  shrink obj | obj == default_GetStruct_result = []
             | P.otherwise = M.catMaybes
    [ if obj == default_GetStruct_result{getStruct_result_success = getStruct_result_success obj} then P.Nothing else P.Just $ default_GetStruct_result{getStruct_result_success = getStruct_result_success obj}
    ]
from_GetStruct_result :: GetStruct_result -> T.ThriftVal
from_GetStruct_result record = T.TStruct $ Map.fromList $ M.catMaybes
  [ (\_v23 -> P.Just (0, ("success",from_SharedStruct _v23))) $ getStruct_result_success record
  ]
write_GetStruct_result :: T.Protocol p => p -> GetStruct_result -> P.IO ()
write_GetStruct_result oprot record = T.writeVal oprot $ from_GetStruct_result record
encode_GetStruct_result :: T.StatelessProtocol p => p -> GetStruct_result -> LBS.ByteString
encode_GetStruct_result oprot record = T.serializeVal oprot $ from_GetStruct_result record
to_GetStruct_result :: T.ThriftVal -> GetStruct_result
to_GetStruct_result (T.TStruct fields) = GetStruct_result{
  getStruct_result_success = P.maybe (getStruct_result_success default_GetStruct_result) (\(_,_val25) -> (case _val25 of {T.TStruct _val26 -> (to_SharedStruct (T.TStruct _val26)); _ -> P.error "wrong type"})) (Map.lookup (0) fields)
  }
to_GetStruct_result _ = P.error "not a struct"
read_GetStruct_result :: T.Protocol p => p -> P.IO GetStruct_result
read_GetStruct_result iprot = to_GetStruct_result <$> T.readVal iprot (T.T_STRUCT typemap_GetStruct_result)
decode_GetStruct_result :: T.StatelessProtocol p => p -> LBS.ByteString -> GetStruct_result
decode_GetStruct_result iprot bs = to_GetStruct_result $ T.deserializeVal iprot (T.T_STRUCT typemap_GetStruct_result) bs
typemap_GetStruct_result :: T.TypeMap
typemap_GetStruct_result = Map.fromList [(0,("success",(T.T_STRUCT typemap_SharedStruct)))]
default_GetStruct_result :: GetStruct_result
default_GetStruct_result = GetStruct_result{
  getStruct_result_success = default_SharedStruct}
data GetRPCCallItem_args = GetRPCCallItem_args  { getRPCCallItem_args_key :: I.Int32
  } deriving (P.Show,P.Eq,G.Generic,TY.Typeable)
instance H.Hashable GetRPCCallItem_args where
  hashWithSalt salt record = salt   `H.hashWithSalt` getRPCCallItem_args_key record  
instance QC.Arbitrary GetRPCCallItem_args where 
  arbitrary = M.liftM GetRPCCallItem_args (QC.arbitrary)
  shrink obj | obj == default_GetRPCCallItem_args = []
             | P.otherwise = M.catMaybes
    [ if obj == default_GetRPCCallItem_args{getRPCCallItem_args_key = getRPCCallItem_args_key obj} then P.Nothing else P.Just $ default_GetRPCCallItem_args{getRPCCallItem_args_key = getRPCCallItem_args_key obj}
    ]
from_GetRPCCallItem_args :: GetRPCCallItem_args -> T.ThriftVal
from_GetRPCCallItem_args record = T.TStruct $ Map.fromList $ M.catMaybes
  [ (\_v29 -> P.Just (1, ("key",T.TI32 _v29))) $ getRPCCallItem_args_key record
  ]
write_GetRPCCallItem_args :: T.Protocol p => p -> GetRPCCallItem_args -> P.IO ()
write_GetRPCCallItem_args oprot record = T.writeVal oprot $ from_GetRPCCallItem_args record
encode_GetRPCCallItem_args :: T.StatelessProtocol p => p -> GetRPCCallItem_args -> LBS.ByteString
encode_GetRPCCallItem_args oprot record = T.serializeVal oprot $ from_GetRPCCallItem_args record
to_GetRPCCallItem_args :: T.ThriftVal -> GetRPCCallItem_args
to_GetRPCCallItem_args (T.TStruct fields) = GetRPCCallItem_args{
  getRPCCallItem_args_key = P.maybe (getRPCCallItem_args_key default_GetRPCCallItem_args) (\(_,_val31) -> (case _val31 of {T.TI32 _val32 -> _val32; _ -> P.error "wrong type"})) (Map.lookup (1) fields)
  }
to_GetRPCCallItem_args _ = P.error "not a struct"
read_GetRPCCallItem_args :: T.Protocol p => p -> P.IO GetRPCCallItem_args
read_GetRPCCallItem_args iprot = to_GetRPCCallItem_args <$> T.readVal iprot (T.T_STRUCT typemap_GetRPCCallItem_args)
decode_GetRPCCallItem_args :: T.StatelessProtocol p => p -> LBS.ByteString -> GetRPCCallItem_args
decode_GetRPCCallItem_args iprot bs = to_GetRPCCallItem_args $ T.deserializeVal iprot (T.T_STRUCT typemap_GetRPCCallItem_args) bs
typemap_GetRPCCallItem_args :: T.TypeMap
typemap_GetRPCCallItem_args = Map.fromList [(1,("key",T.T_I32))]
default_GetRPCCallItem_args :: GetRPCCallItem_args
default_GetRPCCallItem_args = GetRPCCallItem_args{
  getRPCCallItem_args_key = 0}
data GetRPCCallItem_result = GetRPCCallItem_result  { getRPCCallItem_result_success :: RPCCall
  } deriving (P.Show,P.Eq,G.Generic,TY.Typeable)
instance H.Hashable GetRPCCallItem_result where
  hashWithSalt salt record = salt   `H.hashWithSalt` getRPCCallItem_result_success record  
instance QC.Arbitrary GetRPCCallItem_result where 
  arbitrary = M.liftM GetRPCCallItem_result (QC.arbitrary)
  shrink obj | obj == default_GetRPCCallItem_result = []
             | P.otherwise = M.catMaybes
    [ if obj == default_GetRPCCallItem_result{getRPCCallItem_result_success = getRPCCallItem_result_success obj} then P.Nothing else P.Just $ default_GetRPCCallItem_result{getRPCCallItem_result_success = getRPCCallItem_result_success obj}
    ]
from_GetRPCCallItem_result :: GetRPCCallItem_result -> T.ThriftVal
from_GetRPCCallItem_result record = T.TStruct $ Map.fromList $ M.catMaybes
  [ (\_v35 -> P.Just (0, ("success",from_RPCCall _v35))) $ getRPCCallItem_result_success record
  ]
write_GetRPCCallItem_result :: T.Protocol p => p -> GetRPCCallItem_result -> P.IO ()
write_GetRPCCallItem_result oprot record = T.writeVal oprot $ from_GetRPCCallItem_result record
encode_GetRPCCallItem_result :: T.StatelessProtocol p => p -> GetRPCCallItem_result -> LBS.ByteString
encode_GetRPCCallItem_result oprot record = T.serializeVal oprot $ from_GetRPCCallItem_result record
to_GetRPCCallItem_result :: T.ThriftVal -> GetRPCCallItem_result
to_GetRPCCallItem_result (T.TStruct fields) = GetRPCCallItem_result{
  getRPCCallItem_result_success = P.maybe (getRPCCallItem_result_success default_GetRPCCallItem_result) (\(_,_val37) -> (case _val37 of {T.TStruct _val38 -> (to_RPCCall (T.TStruct _val38)); _ -> P.error "wrong type"})) (Map.lookup (0) fields)
  }
to_GetRPCCallItem_result _ = P.error "not a struct"
read_GetRPCCallItem_result :: T.Protocol p => p -> P.IO GetRPCCallItem_result
read_GetRPCCallItem_result iprot = to_GetRPCCallItem_result <$> T.readVal iprot (T.T_STRUCT typemap_GetRPCCallItem_result)
decode_GetRPCCallItem_result :: T.StatelessProtocol p => p -> LBS.ByteString -> GetRPCCallItem_result
decode_GetRPCCallItem_result iprot bs = to_GetRPCCallItem_result $ T.deserializeVal iprot (T.T_STRUCT typemap_GetRPCCallItem_result) bs
typemap_GetRPCCallItem_result :: T.TypeMap
typemap_GetRPCCallItem_result = Map.fromList [(0,("success",(T.T_STRUCT typemap_RPCCall)))]
default_GetRPCCallItem_result :: GetRPCCallItem_result
default_GetRPCCallItem_result = GetRPCCallItem_result{
  getRPCCallItem_result_success = default_RPCCall}
process_getStruct (seqid, iprot, oprot, handler) = do
  args <- read_GetStruct_args iprot
  (X.catch
    (do
      val <- Iface.getStruct handler (getStruct_args_key args)
      let res = default_GetStruct_result{getStruct_result_success = val}
      T.writeMessage oprot ("getStruct", T.M_REPLY, seqid) $
        write_GetStruct_result oprot res)
    ((\_ -> do
      T.writeMessage oprot ("getStruct", T.M_EXCEPTION, seqid) $
        T.writeAppExn oprot (T.AppExn T.AE_UNKNOWN "")) :: X.SomeException -> P.IO ()))
process_getRPCCallItem (seqid, iprot, oprot, handler) = do
  args <- read_GetRPCCallItem_args iprot
  (X.catch
    (do
      val <- Iface.getRPCCallItem handler (getRPCCallItem_args_key args)
      let res = default_GetRPCCallItem_result{getRPCCallItem_result_success = val}
      T.writeMessage oprot ("getRPCCallItem", T.M_REPLY, seqid) $
        write_GetRPCCallItem_result oprot res)
    ((\_ -> do
      T.writeMessage oprot ("getRPCCallItem", T.M_EXCEPTION, seqid) $
        T.writeAppExn oprot (T.AppExn T.AE_UNKNOWN "")) :: X.SomeException -> P.IO ()))
proc_ handler (iprot,oprot) (name,typ,seqid) = case name of
  "getStruct" -> process_getStruct (seqid,iprot,oprot,handler)
  "getRPCCallItem" -> process_getRPCCallItem (seqid,iprot,oprot,handler)
  _ -> do
    _ <- T.readVal iprot (T.T_STRUCT Map.empty)
    T.writeMessage oprot (name,T.M_EXCEPTION,seqid) $
      T.writeAppExn oprot (T.AppExn T.AE_UNKNOWN_METHOD ("Unknown function " ++ LT.unpack name))
process handler (iprot, oprot) = do
  T.readMessage iprot (
    proc_ handler (iprot,oprot))
  P.return P.True
