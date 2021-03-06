      SUBROUTINE RESUME_STATE(
     +   HOURLYFLAG, IMIN, IMIN2,
     +   BASINSHORTWAVEFLAG, BASINLONGWAVEFLAG, 
     +   BASINRAINFLAG, BASINTEMPERATUREFLAG, 
     +   BASINWINDFLAG, BASINPRESFLAG, BASINHUMIDITYFLAG, 
     +   FSDOWN, FSVHGRD, FSIHGRD, FDLGRD, 
     +   I, J, XCOUNT, YCOUNT, jan, 
     +   VPDGRD, TADPGRD, PADRGRD, RHOAGRD, RHSIGRD, 
     +   RPCPGRD, TRPCGRD, SPCPGRD, TSPCGRD, TAGRD, 
     +   QAGRD, PREGRD, RPREGRD, SPREGRD, PRESGRD, 
!MAM - FOR FORCING DATA INTERPOLATION PURPOSE
     +   FSVHGATPRE, FSIHGATPRE, FDLGATPRE, PREGATPRE,
     +   TAGATPRE, ULGATPRE, PRESGATPRE, QAGATPRE, 
     +   IPCP, NA, NLTEST, ILMOS, JLMOS, IWMOS, JWMOS, 
     +   NML, NMW, 
     +   GCGRD, FAREROW, MIDROW, NTYPE, ILG, NMTEST, 
     +   TBARGAT, THLQGAT, THICGAT, TPNDGAT, ZPNDGAT, 
     +   TBASGAT, ALBSGAT, TSNOGAT, RHOSGAT, SNOGAT, 
     +   TCANGAT, RCANGAT, SCANGAT, GROGAT, FRZCGAT, CMAIGAT, 
     +   FCANGAT, LNZ0GAT, ALVCGAT, ALICGAT, LAMXGAT, 
     +   LAMNGAT, CMASGAT, ROOTGAT, RSMNGAT, QA50GAT, 
     +   VPDAGAT, VPDBGAT, PSGAGAT, PSGBGAT, AILDGAT, 
     +   HGTDGAT, ACVDGAT, ACIDGAT, TSFSGAT, WSNOGAT, 
     +   THPGAT, THRGAT, THMGAT, BIGAT, PSISGAT, 
     +   GRKSGAT, THRAGAT, HCPSGAT, TCSGAT, THFCGAT, 
     +   PSIWGAT, DLZWGAT, ZBTWGAT, ZSNLGAT, ZPLGGAT, 
     +   ZPLSGAT, TACGAT, QACGAT, DRNGAT, XSLPGAT, 
     +   XDGAT, WFSFGAT, KSGAT, ALGWGAT, ALGDGAT, 
     +   ASVDGAT, ASIDGAT, AGVDGAT, AGIDGAT, ISNDGAT, 
     +   RADJGAT, ZBLDGAT, Z0ORGAT, ZRFMGAT, ZRFHGAT, 
     +   ZDMGAT, ZDHGAT, FSVHGAT, FSIHGAT, CSZGAT, 
     +   FDLGAT, ULGAT, VLGAT, TAGAT, QAGAT, PRESGAT, 
     +   PREGAT, PADRGAT, VPDGAT, TADPGAT, RHOAGAT, 
     +   RPCPGAT, TRPCGAT, SPCPGAT, TSPCGAT, RHSIGAT, 
     +   FCLOGAT, DLONGAT, GGEOGAT, CDHGAT, CDMGAT, 
     +   HFSGAT, TFXGAT, QEVPGAT, QFSGAT, QFXGAT, 
     +   PETGAT, GAGAT, EFGAT, GTGAT, QGGAT,  
     +   ALVSGAT, ALIRGAT, SFCTGAT, SFCUGAT, SFCVGAT, 
     +   SFCQGAT, FSNOGAT, FSGVGAT, FSGSGAT, FSGGGAT, 
     +   FLGVGAT, FLGSGAT, FLGGGAT, HFSCGAT, HFSSGAT, 
     +   HFSGGAT, HEVCGAT, HEVSGAT, HEVGGAT, HMFCGAT, 
     +   HMFNGAT, HTCCGAT, HTCSGAT, PCFCGAT, PCLCGAT, 
     +   PCPNGAT, PCPGGAT, QFGGAT, QFNGAT, QFCLGAT, 
     +   QFCFGAT, ROFGAT, ROFOGAT, ROFSGAT, ROFBGAT, 
     +   TROFGAT, TROOGAT, TROSGAT, TROBGAT, ROFCGAT, 
     +   ROFNGAT, ROVGGAT, WTRCGAT, WTRSGAT, WTRGGAT, 
     +   DRGAT, HMFGGAT, HTCGAT, QFCGAT, ITCTGAT, 
     +   IGND, ICAN, ICP1, 
     +   TBARROW, THLQROW, THICROW, TPNDROW, ZPNDROW, 
     +   TBASROW, ALBSROW, TSNOROW, RHOSROW, SNOROW, 
     +   TCANROW, RCANROW, SCANROW, GROROW, FRZCROW, CMAIROW, 
     +   FCANROW, LNZ0ROW, ALVCROW, ALICROW, LAMXROW, 
     +   LAMNROW, CMASROW, ROOTROW, RSMNROW, QA50ROW, 
     +   VPDAROW, VPDBROW, PSGAROW, PSGBROW, AILDROW, 
     +   HGTDROW, ACVDROW, ACIDROW, TSFSROW, WSNOROW, 
     +   THPROW, THRROW, THMROW, BIROW, PSISROW, 
     +   GRKSROW, THRAROW, HCPSROW, TCSROW, THFCROW, 
     +   PSIWROW, DLZWROW, ZBTWROW, ZSNLROW, ZPLGROW, 
     +   ZPLSROW, TACROW, QACROW, DRNROW, XSLPROW, 
     +   XDROW, WFSFROW, KSROW, ALGWROW, ALGDROW, 
     +   ASVDROW, ASIDROW, AGVDROW, AGIDROW, 
     +   ISNDROW, RADJGRD, ZBLDGRD, Z0ORGRD, 
     +   ZRFMGRD, ZRFHGRD, ZDMGRD, ZDHGRD, CSZGRD,
     +   ULGRD, VLGRD, FCLOGRD, DLONGRD, GGEOGRD, 
     +   MANNROW, MANNGAT, DDROW, DDGAT, 
     +   IGDRROW, IGDRGAT, VMODGRD, VMODGAT, QLWOGAT,
     +   CTVSTP, CTSSTP, CT1STP, CT2STP, CT3STP, 
     +   WTVSTP, WTSSTP, WTGSTP, 
     +   DELZ, FCS, FGS, FC, FG, N, 
     +   ALVSCN, ALIRCN, ALVSG, ALIRG, ALVSCS, 
     +   ALIRCS, ALVSSN, ALIRSN, ALVSGC, ALIRGC, 
     +   ALVSSC, ALIRSC, TRVSCN, TRIRCN, TRVSCS, 
     +   TRIRCS, FSVF, FSVFS, 
     +   RAICAN, RAICNS, SNOCAN, SNOCNS,
     +   FRAINC, FSNOWC, FRAICS, FSNOCS,
     +   DISP, DISPS, ZOMLNC, ZOMLCS, ZOELNC, ZOELCS, 
     +   ZOMLNG, ZOMLNS, ZOELNG, ZOELNS, 
     +   CHCAP, CHCAPS, CMASSC, CMASCS, CWLCAP, 
     +   CWFCAP, CWLCPS, CWFCPS, RC, RCS, RBCOEF, 
     +   FROOT, ZPLIMC, ZPLIMG, ZPLMCS, ZPLMGS, 
     +   TRSNOW, ZSNOW, IDAY, JLAT, IDISP, 
     +   IZREF, IWF, ILAI, IHGT, IALC, IALS, IALG, 
     +   TBARC, TBARG, TBARCS, TBARGS, THLIQC, THLIQG,
     +   THICEC, THICEG, HCPC, HCPG, TCTOPC, TCBOTC,
     +   TCTOPG, TCBOTG, 
     +   GZEROC, GZEROG, GZROCS, GZROGS, G12C, G12G, 
     +   G12CS, G12GS, G23C, G23G, G23CS, G23GS, 
     +   QFREZC, QFREZG, QMELTC, QMELTG, 
     +   EVAPC, EVAPCG,EVAPG, EVAPCS, EVPCSG, EVAPGS, 
     +   TCANO, TCANS, TPONDC, TPONDG, TPNDCS, TPNDGS, 
     +   TSNOCS, TSNOGS, WSNOCS, WSNOGS, RHOSCS, RHOSGS, 
     +   WTABGAT, 
     +   ILMOGAT, UEGAT, HBLGAT,
     +   ILW, ITC, ITCG, ITG, ISLFD, 
     +   NLANDCS, NLANDGS, NLANDC, NLANDG, NLANDI, 
     +   GFLXGAT, CDHROW, CDMROW, HFSROW, TFXROW, 
     +   QEVPROW, QFSROW, QFXROW, PETROW, GAROW, 
     +   EFROW, GTROW, QGROW, TSFROW, ALVSROW, 
     +   ALIRROW, SFCTROW, SFCUROW, SFCVROW, SFCQROW, 
     +   FSGVROW, FSGSROW, FSGGROW, FLGVROW, FLGSROW, 
     +   FLGGROW, HFSCROW, HFSSROW, HFSGROW, HEVCROW, 
     +   HEVSROW, HEVGROW, HMFCROW, HMFNROW, HTCCROW, 
     +   HTCSROW, PCFCROW, PCLCROW, PCPNROW, PCPGROW, 
     +   QFGROW, QFNROW, QFCLROW, QFCFROW, ROFROW, 
     +   ROFOROW, ROFSROW, ROFBROW, TROFROW, TROOROW, 
     +   TROSROW, TROBROW, ROFCROW, ROFNROW, ROVGROW, 
     +   WTRCROW, WTRSROW, WTRGROW, DRROW, WTABROW, 
     +   ILMOROW, UEROW, HBLROW, HMFGROW, HTCROW,
     +   QFCROW, FSNOROW, ITCTROW, NCOUNT, ireport, 
     +   wfo_seq, IYEAR, ensim_MONTH, ensim_DAY, 
     +   IHOUR, XXX, YYY, NLAT,
     +   NMOS, DELT, TFREZ, UVGRD, SBC, RHOW, CURREC,
     +   M_C, M_S, M_R,
     A     WF_ROUTETIMESTEP,WF_R1,WF_R2,NAA,IYMIN,
     B     WF_IYMAX,JXMIN,WF_JXMAX,WF_IBN,WF_IROUGH,
     C     WF_ICHNL,WF_NEXT,WF_IREACH,AL,GRDN,GRDE,
     D     WF_DA,WF_BNKFLL,WF_CHANNELSLOPE,WF_ELEV,FRAC,
     E     WF_NO,WF_NL,WF_MHRD,WF_KT,WF_IY,WF_JX,
     F     WF_QHYD,WF_RES,WF_RESSTORE,WF_NORESV_CTRL,WF_R,
     G     WF_NORESV,WF_NREL,WF_KTR,WF_IRES,WF_JRES,WF_RESNAME,
     H     WF_B1,WF_B2,WF_QREL, WF_QR,
     I     WF_TIMECOUNT,WF_NHYD,WF_QBASE,WF_QI1,WF_QI2,WF_QO1,WF_QO2,
     J     WF_STORE1,WF_STORE2,
     K     DRIVERTIMESTEP,ROFGRD,
     L     WF_S,
     1  TOTAL_ROFACC, TOTAL_ROFOACC, TOTAL_ROFSACC,
     2  TOTAL_ROFBACC, TOTAL_EVAPACC, TOTAL_PREACC, INIT_STORE,
     3  FINAL_STORE, TOTAL_AREA, TOTAL_HFSACC, TOTAL_QEVPACC,
     4  SOIL_POR_MAX, SOIL_DEPTH, S0, T_ICE_LENS,NMELT,t0_ACC,
     5  CO2CONC, COSZS, XDIFFUSC, CFLUXCG, CFLUXCS,
     6  AILCG, AILCGS, FCANC, FCANCS, CO2I1CG, CO2I1CS, CO2I2CG, 
     7  CO2I2CS, SLAI, FCANCMX, ANCSVEG, ANCGVEG, RMLCSVEG, RMLCGVEG,
     8  AILC, PAIC, FIELDSM,  WILTSM, RMATCTEM, RMATC, NOL2PFTS,
     9  ICTEMMOD, L2MAX, ICTEM,
     +  fetchROW,HtROW,N_SROW,A_SROW,DistribROW,
     +  fetchGAT,HtGAT,N_SGAT,A_SGAT,DistribGAT)
!> This subroutine is used to resume a mesh run by using the 
!> variables that were saved from a previous run.
!> The variables are reinitialized by reading the resume file.
!> 
!> 
!> 
!> 
!> 
!> 
!> 
!> 
!> 
!>    
     
      IMPLICIT NONE
      
      INTEGER :: HOURLYFLAG, IMIN, IMIN2,
     +  BASINSHORTWAVEFLAG, BASINLONGWAVEFLAG, 
     +  BASINRAINFLAG, BASINTEMPERATUREFLAG, 
     +  BASINWINDFLAG, BASINPRESFLAG, BASINHUMIDITYFLAG,
     +  I, J,XCOUNT, YCOUNT, jan, IPCP, NA,
     +  NLTEST, NML, NMW,
     +  NTYPE, ILG, NMTEST, IGND, ICAN, ICP1,N,
     +  IDAY, JLAT, IDISP, IZREF, IWF,ILAI, IHGT, IALC, 
     +  IALS, IALG, ILW, ITC, ITCG, ITG, ISLFD, 
     +  NLANDCS, NLANDGS, NLANDC, NLANDG, NLANDI,
     +  NCOUNT, ireport, IYEAR, IHOUR,
     +  NLAT, NMOS
     
      integer*4 wfo_seq, ensim_MONTH, ensim_DAY, CURREC
      
      REAL DELT, TFREZ, SBC, RHOW
      
      integer*4,DIMENSION(NA):: XXX, YYY
      
!array of size (NA, NTYPE, IGND)
      REAL, DIMENSION(NA, NTYPE, IGND)::
     +  TBARROW, THLQROW, THICROW, THPROW,
     +  THRROW, THMROW, BIROW,
     +  PSISROW, GRKSROW, THRAROW,
     +  HCPSROW, TCSROW, THFCROW,
     +  PSIWROW, DLZWROW, ZBTWROW,
     +  DLONGRD, HMFGROW, HTCROW, QFCROW
      
      INTEGER, DIMENSION(NA, NTYPE, IGND)::
     +  ISNDROW
      
!arrays of size(NA, NTYPE, ICP1)
      REAL, DIMENSION(NA, NTYPE, ICP1)::
     +  FCANROW, LNZ0ROW, ALVCROW, ALICROW
      
      
!arrays of size (NA, NTYPE, ICAN)
      REAL, DIMENSION(NA, NTYPE, ICAN)::
     +   LAMXROW, LAMNROW, CMASROW, ROOTROW,
     +   RSMNROW, QA50ROW, VPDAROW, VPDBROW, 
     +   PSGAROW, PSGBROW, AILDROW, HGTDROW, 
     +   ACVDROW, ACIDROW
      
      
      

!arrays of size (NA, NTYPE)
      REAL, DIMENSION(NA, NTYPE)::
     +  FAREROW, TPNDROW, ZPNDROW,
     +  TBASROW, ALBSROW, TSNOROW,
     +  RHOSROW, SNOROW, TCANROW,
     +  RCANROW, SCANROW, GROROW, FRZCROW,
     +  CMAIROW, WSNOROW, ZSNLROW,
     +  ZPLGROW, ZPLSROW, TACROW,
     +  QACROW, DRNROW, XSLPROW,
     +  XDROW, WFSFROW, KSROW,
     +  ALGWROW, ALGDROW, ASVDROW,
     +  ASIDROW, AGVDROW, AGIDROW,
     +  MANNROW, DDROW, CDHROW, CDMROW,
     +   HFSROW, TFXROW, QEVPROW, QFSROW, 
     + QFXROW, PETROW, GAROW, 
     + EFROW, GTROW, QGROW, TSFROW, ALVSROW, 
     + ALIRROW, SFCTROW, SFCUROW, 
     + SFCVROW, SFCQROW, FSGVROW, 
     + FSGSROW, FSGGROW, FLGVROW, 
     + FLGSROW, DRROW,
     + FLGGROW, HFSCROW, HFSSROW, 
     + HFSGROW,HEVCROW, HEVSROW, 
     + HEVGROW,
     + HMFCROW, HMFNROW, HTCCROW, 
     + HTCSROW, PCFCROW, PCLCROW, 
     + PCPNROW, TROSROW,TROBROW,
     + PCPGROW, QFGROW, QFNROW, 
     + QFCLROW, QFCFROW, ROFROW, 
     + ROFOROW, TROFROW,TROOROW,
     + ROFSROW, ROFBROW, ROFCROW, 
     + ROFNROW, ROVGROW, WTRCROW, 
     + WTRSROW, WTRGROW, WTABROW, 
     + ILMOROW, UEROW, HBLROW, FSNOROW,
     + fetchROW,HtROW,N_SROW,A_SROW,DistribROW
      
      INTEGER, DIMENSION(NA, NTYPE) ::
     + MIDROW, IGDRROW 
      
!arrays of size (ILG,IGND)
      REAL, DIMENSION(ILG,IGND)::
     +  TBARGAT, THLQGAT, THICGAT, THPGAT, THRGAT,
     +  THMGAT, BIGAT, PSISGAT, GRKSGAT, THRAGAT, 
     +  HCPSGAT, TCSGAT, THFCGAT, PSIWGAT, DLZWGAT, 
     +  ZBTWGAT, HMFGGAT, HTCGAT, QFCGAT, FROOT,
     +  TBARC, TBARG, TBARCS, TBARGS, THLIQC, THLIQG,
     +  THICEC, THICEG, HCPC, HCPG, TCTOPC, TCBOTC,
     +  TCTOPG, TCBOTG,GFLXGAT
      
      INTEGER, DIMENSION(ILG,IGND)::
     +  ISNDGAT
      
! arrays of size (ILG,ICP1)
      REAL, DIMENSION(ILG,ICP1)::
     +  FCANGAT, LNZ0GAT, ALVCGAT, ALICGAT
      
!arrays of size (ILG, ICAN)
      REAL, DIMENSION(ILG, ICAN)::
     +  LAMXGAT, LAMNGAT, CMASGAT, ROOTGAT,
     +  RSMNGAT, QA50GAT, VPDAGAT, VPDBGAT, 
     +  PSGAGAT, PSGBGAT, AILDGAT, HGTDGAT,
     +  ACVDGAT, ACIDGAT
      
!arrays of size (ILG, 4)
      REAL, DIMENSION(ILG, 4):: TSFSGAT
      
!arrays of size(ILG, 6, 50)
      INTEGER, DIMENSION(ILG, 6, 50)::
     +  ITCTGAT
      
      INTEGER, DIMENSION(NA, NTYPE, 6, 50)::
     +  ITCTROW
      
!arrays of size NA, NTYPE, 4)
      REAL, DIMENSION(NA, NTYPE, 4):: TSFSROW
  
!CRAIGS STUFF
! arrays of size ILG
      INTEGER, DIMENSION(ILG) :: ILMOS, JLMOS, IWMOS, JWMOS, IGDRGAT

      REAL, DIMENSION(ILG) :: TPNDGAT, ZPNDGAT, TBASGAT,
     +      ALBSGAT, TSNOGAT, RHOSGAT,
     +      SNOGAT, TCANGAT, RCANGAT,
     +      SCANGAT, GROGAT, FRZCGAT, CMAIGAT,
     +      WSNOGAT
      
      REAL, DIMENSION(ILG) :: ZSNLGAT, ZPLGGAT,
     +      ZPLSGAT,
     +      fetchGAT,HtGAT,N_SGAT,A_SGAT,DistribGAT

      REAL, DIMENSION(ILG) :: TACGAT, QACGAT, DRNGAT,
     +  XSLPGAT, XDGAT, WFSFGAT, KSGAT, ALGWGAT,
     +  ALGDGAT, ASVDGAT, ASIDGAT,
     +  AGVDGAT, AGIDGAT
      
      REAL, DIMENSION(ILG) :: RADJGAT,
     +  ZBLDGAT, Z0ORGAT, ZRFMGAT,
     +  ZRFHGAT, ZDMGAT, ZDHGAT,
     +  FSVHGAT, FSIHGAT, CSZGAT,
     +  FDLGAT, ULGAT, VLGAT,
     +  TAGAT, QAGAT, PRESGAT,
     +  PREGAT, PADRGAT, VPDGAT,
     +  TADPGAT, RHOAGAT, RPCPGAT,
     +  TRPCGAT, SPCPGAT, TSPCGAT,
     +  RHSIGAT, FCLOGAT, DLONGAT,
     +  GGEOGAT, VMODGAT
      
      REAL, DIMENSION(ILG):: CDHGAT, CDMGAT,
     +  HFSGAT, TFXGAT, QEVPGAT,
     +  QFSGAT, QFXGAT, PETGAT,
     +  GAGAT, EFGAT, GTGAT,
     +  QGGAT, ALVSGAT,
     +  ALIRGAT, SFCTGAT, SFCUGAT,
     +  SFCVGAT, SFCQGAT, 
     +  FSGVGAT, FSGSGAT, FSGGGAT,
     +  FLGVGAT, FLGSGAT, FLGGGAT,
     +  HFSCGAT, HFSSGAT, HFSGGAT,
     +  HEVCGAT, HEVSGAT, HEVGGAT,
     +  HMFCGAT, HMFNGAT, HTCCGAT,
     +  HTCSGAT, PCFCGAT, PCLCGAT,
     +  PCPNGAT, PCPGGAT, QFGGAT,
     +  QFNGAT, QFCLGAT, QFCFGAT,
     +  ROFGAT, ROFOGAT, ROFSGAT,
     +  ROFBGAT, TROFGAT, TROOGAT,
     +  TROSGAT, TROBGAT, ROFCGAT,
     +  ROFNGAT, ROVGGAT, WTRCGAT,
     +  WTRSGAT, WTRGGAT, DRGAT, QLWOGAT
      
      REAL, DIMENSION(ILG) :: MANNGAT, DDGAT

      REAL, DIMENSION(ILG) :: CTVSTP, CTSSTP, CT1STP, CT2STP,
     +  CT3STP, WTVSTP, WTSSTP,
     +  WTGSTP
      
      REAL, DIMENSION(ILG) :: FCS, FGS, 
     +  FC, FG, ALVSCN, ALIRCN,
     +  ALVSG, ALIRG, ALVSCS,
     +  ALIRCS, ALVSSN, ALIRSN,
     +  ALVSGC, ALIRGC, ALVSSC,
     +  ALIRSC, TRVSCN, TRIRCN,
     +  TRVSCS, TRIRCS, FSVF, FSVFS,
     +  RAICAN, RAICNS, SNOCAN, SNOCNS

      REAL, DIMENSION(ILG) :: 
     +  FRAINC, FSNOWC, FRAICS, FSNOCS, 
     +  DISP, DISPS, ZOMLNC, ZOMLCS, ZOELNC, ZOELCS,
     +  ZOMLNG, ZOMLNS, ZOELNG, ZOELNS, 
     +  CHCAP, CHCAPS, CMASSC, CMASCS, CWLCAP, 
     +  CWFCAP, CWLCPS, CWFCPS
      
      REAL, DIMENSION(ILG) ::  RC, RCS,RBCOEF, ZPLIMC,
     +  ZPLIMG, ZPLMCS, ZPLMGS,
     +  TRSNOW,ZSNOW,
     +  GZEROC, GZEROG, GZROCS, GZROGS, G12C, G12G,
     +  G12CS, G12GS, G23C, G23G, G23CS, G23GS, 
     +  QFREZC, QFREZG, QMELTC, QMELTG, 
     +  EVAPC, EVAPCG,EVAPG, EVAPCS, EVPCSG, EVAPGS, 
     +  TCANO, TCANS,
     +  TPONDC, TPONDG, TPNDCS, TPNDGS,
     +  TSNOCS, TSNOGS, WSNOCS, WSNOGS, RHOSCS, RHOSGS
      
      REAL, DIMENSION(ILG) ::WTABGAT, 
     +   ILMOGAT, UEGAT, HBLGAT,FSNOGAT
     

      REAL, DIMENSION(IGND) :: DELZ

      REAL, DIMENSION(NA) :: FSVHGRD,
     +  FSIHGRD, FDLGRD, VPDGRD, TADPGRD,
     +  PADRGRD, RHOAGRD, RHSIGRD, RPCPGRD,
     +  TRPCGRD, SPCPGRD, TSPCGRD, TAGRD,
     +  QAGRD, PREGRD, RPREGRD, SPREGRD,
     +  PRESGRD
!MAM - FOR FORCING DATA INTERPOLATION PURPOSE
      REAL, DIMENSION(ILG) :: 
     +   FSVHGATPRE, FSIHGATPRE, FDLGATPRE, PREGATPRE,
     +   TAGATPRE, ULGATPRE, PRESGATPRE, QAGATPRE 

      REAL, DIMENSION(NA) :: GCGRD, UVGRD,
     +  RADJGRD, ZBLDGRD, Z0ORGRD,
     +  ZRFMGRD, ZRFHGRD, ZDMGRD,
     +  ZDHGRD, CSZGRD, ULGRD,
     +  VLGRD, FCLOGRD, GGEOGRD,
     +  FSDOWN, VMODGRD
     
! * CTEM-RELATED I/O FIELDS.
      REAL, DIMENSION(ILG,ICTEM) :: AILCG, AILCGS, FCANC,
     + FCANCS, CO2I1CG, CO2I1CS,   CO2I2CG,  CO2I2CS,
     + FCANCMX, ANCSVEG, ANCGVEG, RMLCSVEG, SLAI, RMLCGVEG
      REAL, DIMENSION(ILG) ::
     + CO2CONC, COSZS, XDIFFUSC, CFLUXCG, CFLUXCS
      REAL, DIMENSION(ILG,ICTEM,IGND) :: RMATCTEM
      REAL, DIMENSION(ILG,IGND) :: FIELDSM, WILTSM
      REAL, DIMENSION(ILG,ICAN) :: AILC, PAIC
      REAL, DIMENSION(ILG,ICAN,IGND) :: RMATC
      INTEGER L2MAX, ICTEM, ICTEMMOD, IC, IG
      INTEGER, DIMENSION(ICAN) :: NOL2PFTS
      
      INTEGER WF_ROUTETIMESTEP, WF_TIMECOUNT, DRIVERTIMESTEP, M_C, NAA,
     +  IYMIN,WF_IYMAX,JXMIN,WF_JXMAX, M_R, M_S,
     +  WF_IBN(NLAT),WF_IROUGH(NLAT),
     +  WF_ICHNL(NLAT),WF_NEXT(NLAT),WF_IREACH(NLAT),
     +  WF_NO, WF_NL, WF_MHRD, WF_KT, WF_IY(M_S),
     +  WF_JX(M_S), WF_S(M_S),WF_ELEV(NLAT)
           
      REAL WF_R1(M_C), WF_R2(M_C)
      REAL*8 :: AL
      REAL*4 :: GRDN, GRDE
      REAL*8, DIMENSION(NLAT) :: WF_DA,WF_BNKFLL,
     +  WF_CHANNELSLOPE
      REAL*4 :: FRAC(NLAT) 
      REAL WF_QHYD(M_S)
      INTEGER WF_RES(M_R), WF_R(M_R)
      REAL ::  WF_RESSTORE(M_R)
      INTEGER :: WF_NORESV, WF_NREL, WF_KTR, WF_NORESV_CTRL
      INTEGER, DIMENSION(M_R) :: WF_IRES, WF_JRES
      CHARACTER, DIMENSION(M_R) :: WF_RESNAME*8
      REAL, DIMENSION(M_R) :: WF_B1, WF_B2, WF_QREL
      REAL, DIMENSION(NLAT) :: WF_QR, WF_NHYD, WF_QBASE, WF_QI1, WF_QI2,
     1  WF_QO1, WF_QO2, WF_STORE1, WF_STORE2, ROFGRD
      
      
      REAL :: TOTAL_ROFACC, TOTAL_ROFOACC, TOTAL_ROFSACC,
     1  TOTAL_ROFBACC, TOTAL_EVAPACC, TOTAL_PREACC, INIT_STORE,
     2  FINAL_STORE, TOTAL_AREA, TOTAL_HFSACC, TOTAL_QEVPACC
      
      integer resumeIostat    
      INTEGER  NMELT
      REAL     SOIL_POR_MAX, SOIL_DEPTH, S0, T_ICE_LENS,t0_ACC(NMELT)
      !open output resume file
      OPEN (10, FILE="./class_resume.txt", STATUS="OLD", 
     +      IOSTAT=resumeIostat)
      READ(10,*) HOURLYFLAG
      READ(10,*) BASINSHORTWAVEFLAG
      READ(10,*) BASINLONGWAVEFLAG
      READ(10,*) BASINRAINFLAG
      READ(10,*) BASINTEMPERATUREFLAG
      READ(10,*) BASINWINDFLAG
      READ(10,*) BASINPRESFLAG
      READ(10,*) BASINHUMIDITYFLAG
      READ(10,*) FSDOWN
      READ(10,*) FSVHGRD
      READ(10,*) FSIHGRD
      READ(10,*) FDLGRD
      READ(10,*) I
      READ(10,*) J
      READ(10,*) XCOUNT
      READ(10,*) YCOUNT
      READ(10,*) jan
      READ(10,*) VPDGRD
      READ(10,*) TADPGRD
      READ(10,*) PADRGRD
      READ(10,*) RHOAGRD
      READ(10,*) RHSIGRD
      READ(10,*) RPCPGRD
      READ(10,*) TRPCGRD
      READ(10,*) SPCPGRD
      READ(10,*) TSPCGRD
      READ(10,*) TAGRD
      READ(10,*) QAGRD
      READ(10,*) PREGRD
      READ(10,*) RPREGRD
      READ(10,*) SPREGRD
      READ(10,*) PRESGRD
!MAM - FOR FORCING DATA INTERPOLATION PURPOSE
      READ(10,*) FSVHGATPRE
      READ(10,*) FSIHGATPRE      
      READ(10,*) FDLGATPRE
      READ(10,*) PREGATPRE
      READ(10,*) TAGATPRE
      READ(10,*) ULGATPRE
      READ(10,*) PRESGATPRE
      READ(10,*) QAGATPRE 
      READ(10,*) IPCP
      READ(10,*) NA
      READ(10,*) NLTEST
      READ(10,*) ILMOS
      READ(10,*) JLMOS
      READ(10,*) IWMOS
      READ(10,*) JWMOS
      READ(10,*) NML
      READ(10,*) NMW
      READ(10,*) GCGRD
      READ(10,*) FAREROW
      READ(10,*) MIDROW
      READ(10,*) NTYPE
      READ(10,*) ILG
      READ(10,*) NMTEST
      READ(10,*) TBARGAT
      READ(10,*) THLQGAT
      READ(10,*) THICGAT
      READ(10,*) TPNDGAT
      READ(10,*) ZPNDGAT
      READ(10,*) TBASGAT
      READ(10,*) ALBSGAT
      READ(10,*) TSNOGAT
      READ(10,*) RHOSGAT
      READ(10,*) SNOGAT
      READ(10,*) TCANGAT
      READ(10,*) RCANGAT
      READ(10,*) SCANGAT
      READ(10,*) GROGAT
      READ(10,*) FRZCGAT
      READ(10,*) CMAIGAT
      READ(10,*) FCANGAT
      READ(10,*) LNZ0GAT
      READ(10,*) ALVCGAT
      READ(10,*) ALICGAT
      READ(10,*) LAMXGAT
      READ(10,*) LAMNGAT
      READ(10,*) CMASGAT
      READ(10,*) ROOTGAT
      READ(10,*) RSMNGAT
      READ(10,*) QA50GAT
      READ(10,*) VPDAGAT
      READ(10,*) VPDBGAT
      READ(10,*) PSGAGAT
      READ(10,*) PSGBGAT
      READ(10,*) AILDGAT
      READ(10,*) HGTDGAT
      READ(10,*) ACVDGAT
      READ(10,*) ACIDGAT
      READ(10,*) TSFSGAT
      READ(10,*) WSNOGAT
      READ(10,*) THPGAT
      READ(10,*) THRGAT
      READ(10,*) THMGAT
      READ(10,*) BIGAT
      READ(10,*) PSISGAT
      READ(10,*) GRKSGAT
      READ(10,*) THRAGAT
      READ(10,*) HCPSGAT
      READ(10,*) TCSGAT
      READ(10,*) THFCGAT
      READ(10,*) PSIWGAT
      READ(10,*) DLZWGAT
      READ(10,*) ZBTWGAT
      READ(10,*) ZSNLGAT
      READ(10,*) ZPLGGAT
      READ(10,*) ZPLSGAT
      READ(10,*) TACGAT
      READ(10,*) QACGAT
      READ(10,*) DRNGAT
      READ(10,*) XSLPGAT
      READ(10,*) XDGAT
      READ(10,*) WFSFGAT
      READ(10,*) KSGAT
      READ(10,*) ALGWGAT
      READ(10,*) ALGDGAT
      READ(10,*) ASVDGAT
      READ(10,*) ASIDGAT
      READ(10,*) AGVDGAT
      READ(10,*) AGIDGAT
      READ(10,*) ISNDGAT
      READ(10,*) RADJGAT
      READ(10,*) VMODGAT
      READ(10,*) ZBLDGAT
      READ(10,*) Z0ORGAT
      READ(10,*) ZRFMGAT
      READ(10,*) ZRFHGAT
      READ(10,*) ZDMGAT
      READ(10,*) ZDHGAT
      READ(10,*) FSVHGAT
      READ(10,*) FSIHGAT
      READ(10,*) CSZGAT
      READ(10,*) FDLGAT
      READ(10,*) ULGAT
      READ(10,*) VLGAT
      READ(10,*) TAGAT
      READ(10,*) QAGAT
      READ(10,*) PRESGAT
      READ(10,*) PREGAT
      READ(10,*) PADRGAT
      READ(10,*) VPDGAT
      READ(10,*) TADPGAT
      READ(10,*) RHOAGAT
      READ(10,*) RPCPGAT
      READ(10,*) TRPCGAT
      READ(10,*) SPCPGAT
      READ(10,*) TSPCGAT
      READ(10,*) RHSIGAT
      READ(10,*) FCLOGAT
      READ(10,*) DLONGAT
      READ(10,*) GGEOGAT
      READ(10,*) CDHGAT
      READ(10,*) CDMGAT
      READ(10,*) HFSGAT
      READ(10,*) TFXGAT
      READ(10,*) QEVPGAT
      READ(10,*) QFSGAT
      READ(10,*) QFXGAT
      READ(10,*) PETGAT
      READ(10,*) GAGAT
      READ(10,*) EFGAT
      READ(10,*) GTGAT
      READ(10,*) QGGAT
      READ(10,*) ALVSGAT
      READ(10,*) ALIRGAT
      READ(10,*) SFCTGAT
      READ(10,*) SFCUGAT
      READ(10,*) SFCVGAT
      READ(10,*) SFCQGAT
      READ(10,*) FSNOGAT
      READ(10,*) FSGVGAT
      READ(10,*) FSGSGAT
      READ(10,*) FSGGGAT
      READ(10,*) FLGVGAT
      READ(10,*) FLGSGAT
      READ(10,*) FLGGGAT
      READ(10,*) HFSCGAT
      READ(10,*) HFSSGAT
      READ(10,*) HFSGGAT
      READ(10,*) HEVCGAT
      READ(10,*) HEVSGAT
      READ(10,*) HEVGGAT
      READ(10,*) HMFCGAT
      READ(10,*) HMFNGAT
      READ(10,*) HTCCGAT
      READ(10,*) HTCSGAT
      READ(10,*) PCFCGAT
      READ(10,*) PCLCGAT
      READ(10,*) PCPNGAT
      READ(10,*) PCPGGAT
      READ(10,*) QFGGAT
      READ(10,*) QFNGAT
      READ(10,*) QFCLGAT
      READ(10,*) QFCFGAT
      READ(10,*) ROFGAT
      READ(10,*) ROFOGAT
      READ(10,*) ROFSGAT
      READ(10,*) ROFBGAT
      READ(10,*) TROFGAT
      READ(10,*) TROOGAT
      READ(10,*) TROSGAT
      READ(10,*) TROBGAT
      READ(10,*) ROFCGAT
      READ(10,*) ROFNGAT
      READ(10,*) ROVGGAT
      READ(10,*) WTRCGAT
      READ(10,*) WTRSGAT
      READ(10,*) WTRGGAT
      READ(10,*) DRGAT
      READ(10,*) HMFGGAT
      READ(10,*) HTCGAT
      READ(10,*) QFCGAT
      READ(10,*) ITCTGAT
      READ(10,*) IGDRGAT
      READ(10,*) QLWOGAT
      READ(10,*) TBARROW
      READ(10,*) THLQROW
      READ(10,*) THICROW
      READ(10,*) TPNDROW
      READ(10,*) ZPNDROW
      READ(10,*) TBASROW
      READ(10,*) ALBSROW
      READ(10,*) TSNOROW
      READ(10,*) RHOSROW
      READ(10,*) SNOROW
      READ(10,*) TCANROW
      READ(10,*) RCANROW
      READ(10,*) SCANROW
      READ(10,*) GROROW
      READ(10,*) FRZCROW
      READ(10,*) CMAIROW
      READ(10,*) FCANROW
      READ(10,*) LNZ0ROW
      READ(10,*) ALVCROW
      READ(10,*) ALICROW
      READ(10,*) LAMXROW
      READ(10,*) LAMNROW
      READ(10,*) CMASROW
      READ(10,*) ROOTROW
      READ(10,*) RSMNROW
      READ(10,*) QA50ROW
      READ(10,*) VPDAROW
      READ(10,*) VPDBROW
      READ(10,*) PSGAROW
      READ(10,*) PSGBROW
      READ(10,*) AILDROW
      READ(10,*) HGTDROW
      READ(10,*) ACVDROW
      READ(10,*) ACIDROW
      READ(10,*) TSFSROW
      READ(10,*) WSNOROW
      READ(10,*) THPROW
      READ(10,*) THRROW
      READ(10,*) THMROW
      READ(10,*) BIROW
      READ(10,*) PSISROW
      READ(10,*) GRKSROW
      READ(10,*) THRAROW
      READ(10,*) HCPSROW
      READ(10,*) TCSROW
      READ(10,*) THFCROW
      READ(10,*) PSIWROW
      READ(10,*) DLZWROW
      READ(10,*) ZBTWROW
      READ(10,*) ZSNLROW
      READ(10,*) ZPLGROW
      READ(10,*) ZPLSROW
      READ(10,*) TACROW
      READ(10,*) QACROW
      READ(10,*) DRNROW
      READ(10,*) XSLPROW
      READ(10,*) XDROW
      READ(10,*) WFSFROW
      READ(10,*) KSROW
      READ(10,*) ALGWROW
      READ(10,*) ALGDROW
      READ(10,*) ASVDROW
      READ(10,*) ASIDROW
      READ(10,*) AGVDROW
      READ(10,*) AGIDROW
      READ(10,*) ISNDROW
      READ(10,*) IGDRROW
      READ(10,*) RADJGRD
      READ(10,*) ZBLDGRD
      READ(10,*) Z0ORGRD
      READ(10,*) ZRFMGRD
      READ(10,*) ZRFHGRD
      READ(10,*) ZDMGRD
      READ(10,*) ZDHGRD
      READ(10,*) CSZGRD
      READ(10,*) ULGRD
      READ(10,*) VLGRD
      READ(10,*) FCLOGRD
      READ(10,*) DLONGRD
      READ(10,*) GGEOGRD
      READ(10,*) VMODGRD
      READ(10,*) MANNROW
      READ(10,*) MANNGAT
      READ(10,*) DDROW
      READ(10,*) DDGAT
      READ(10,*) CTVSTP
      READ(10,*) CTSSTP
      READ(10,*) CT1STP
      READ(10,*) CT2STP
      READ(10,*) CT3STP
      READ(10,*) WTVSTP
      READ(10,*) WTSSTP
      READ(10,*) WTGSTP
      READ(10,*) DELZ
      READ(10,*) FCS
      READ(10,*) FGS
      READ(10,*) FC
      READ(10,*) FG
      READ(10,*) N
      READ(10,*) ALVSCN
      READ(10,*) ALIRCN
      READ(10,*) ALVSG
      READ(10,*) ALIRG
      READ(10,*) ALVSCS
      READ(10,*) ALIRCS
      READ(10,*) ALVSSN
      READ(10,*) ALIRSN
      READ(10,*) ALVSGC
      READ(10,*) ALIRGC
      READ(10,*) ALVSSC
      READ(10,*) ALIRSC
      READ(10,*) TRVSCN
      READ(10,*) TRIRCN
      READ(10,*) TRVSCS
      READ(10,*) TRIRCS
      READ(10,*) FSVF
      READ(10,*) FSVFS
      READ(10,*) RAICAN
      READ(10,*) RAICNS
      READ(10,*) SNOCAN
      READ(10,*) SNOCNS
      READ(10,*) FRAINC
      READ(10,*) FSNOWC
      READ(10,*) FRAICS
      READ(10,*) FSNOCS
      READ(10,*) DISP
      READ(10,*) DISPS
      READ(10,*) ZOMLNC
      READ(10,*) ZOMLCS
      READ(10,*) ZOELNC
      READ(10,*) ZOELCS
      READ(10,*) ZOMLNG
      READ(10,*) ZOMLNS
      READ(10,*) ZOELNG
      READ(10,*) ZOELNS
      READ(10,*) CHCAP
      READ(10,*) CHCAPS
      READ(10,*) CMASSC
      READ(10,*) CMASCS
      READ(10,*) CWLCAP
      READ(10,*) CWFCAP
      READ(10,*) CWLCPS
      READ(10,*) CWFCPS
      READ(10,*) RC
      READ(10,*) RCS
      READ(10,*) RBCOEF
      READ(10,*) FROOT
      READ(10,*) ZPLIMC
      READ(10,*) ZPLIMG
      READ(10,*) ZPLMCS
      READ(10,*) ZPLMGS
      READ(10,*) TRSNOW
      READ(10,*) ZSNOW
      READ(10,*) IDAY
      READ(10,*) JLAT
      READ(10,*) IDISP
      READ(10,*) IZREF
      READ(10,*) IWF
      READ(10,*) ILAI
      READ(10,*) IHGT
      READ(10,*) IALC
      READ(10,*) IALS
      READ(10,*) IALG
      READ(10,*) TBARC
      READ(10,*) TBARG
      READ(10,*) TBARCS
      READ(10,*) TBARGS
      READ(10,*) THLIQC
      READ(10,*) THLIQG
      READ(10,*) THICEC
      READ(10,*) THICEG
      READ(10,*) HCPC
      READ(10,*) HCPG
      READ(10,*) TCTOPC
      READ(10,*) TCBOTC
      READ(10,*) TCTOPG 
      READ(10,*) TCBOTG
      READ(10,*) GZEROC
      READ(10,*) GZEROG
      READ(10,*) GZROCS
      READ(10,*) GZROGS
      READ(10,*) G12C
      READ(10,*) G12G
      READ(10,*) G12CS
      READ(10,*) G12GS
      READ(10,*) G23C
      READ(10,*) G23G
      READ(10,*) G23CS
      READ(10,*) G23GS
      READ(10,*) QFREZC
      READ(10,*) QFREZG
      READ(10,*) QMELTC
      READ(10,*) QMELTG
      READ(10,*) EVAPC
      READ(10,*) EVAPCG
      READ(10,*) EVAPG
      READ(10,*) EVAPCS
      READ(10,*) EVPCSG
      READ(10,*) EVAPGS
      READ(10,*) TCANO
      READ(10,*) TCANS
      READ(10,*) TPONDC
      READ(10,*) TPONDG
      READ(10,*) TPNDCS
      READ(10,*) TPNDGS
      READ(10,*) TSNOCS
      READ(10,*) TSNOGS
      READ(10,*) WSNOCS
      READ(10,*) WSNOGS
      READ(10,*) RHOSCS
      READ(10,*) RHOSGS
      READ(10,*) WTABGAT
      READ(10,*) ILMOGAT
      READ(10,*) UEGAT
      READ(10,*) HBLGAT
      READ(10,*) ILW
      READ(10,*) ITC
      READ(10,*) ITCG
      READ(10,*) ITG
      READ(10,*) ISLFD
      READ(10,*) NLANDCS
      READ(10,*) NLANDGS
      READ(10,*) NLANDC
      READ(10,*) NLANDG
      READ(10,*) NLANDI
      READ(10,*) GFLXGAT
      READ(10,*) CDHROW
      READ(10,*) CDMROW
      READ(10,*) HFSROW
      READ(10,*) TFXROW
      READ(10,*) QEVPROW
      READ(10,*) QFSROW
      READ(10,*) QFXROW
      READ(10,*) PETROW
      READ(10,*) GAROW
      READ(10,*) EFROW
      READ(10,*) GTROW
      READ(10,*) QGROW
      READ(10,*) TSFROW
      READ(10,*) ALVSROW
      READ(10,*) ALIRROW
      READ(10,*) SFCTROW
      READ(10,*) SFCUROW
      READ(10,*) SFCVROW
      READ(10,*) SFCQROW
      READ(10,*) FSGVROW
      READ(10,*) FSGSROW
      READ(10,*) FSGGROW
      READ(10,*) FLGVROW
      READ(10,*) FLGSROW
      READ(10,*) FLGGROW
      READ(10,*) HFSCROW
      READ(10,*) HFSSROW
      READ(10,*) HFSGROW
      READ(10,*) HEVCROW
      READ(10,*) HEVSROW
      READ(10,*) HEVGROW
      READ(10,*) HMFCROW
      READ(10,*) HMFNROW
      READ(10,*) HTCCROW
      READ(10,*) HTCSROW
      READ(10,*) PCFCROW
      READ(10,*) PCLCROW
      READ(10,*) PCPNROW
      READ(10,*) PCPGROW
      READ(10,*) QFGROW
      READ(10,*) QFNROW
      READ(10,*) QFCLROW
      READ(10,*) QFCFROW
      READ(10,*) ROFROW
      READ(10,*) ROFOROW
      READ(10,*) ROFSROW
      READ(10,*) ROFBROW
      READ(10,*) TROFROW
      READ(10,*) TROOROW
      READ(10,*) TROSROW
      READ(10,*) TROBROW
      READ(10,*) ROFCROW
      READ(10,*) ROFNROW
      READ(10,*) ROVGROW
      READ(10,*) WTRCROW
      READ(10,*) WTRSROW
      READ(10,*) WTRGROW
      READ(10,*) DRROW
      READ(10,*) WTABROW
      READ(10,*) ILMOROW
      READ(10,*) UEROW
      READ(10,*) HBLROW
      READ(10,*) HMFGROW
      READ(10,*) HTCROW
      READ(10,*) QFCROW
      READ(10,*) FSNOROW
      READ(10,*) ITCTROW
      READ(10,*) NCOUNT
      READ(10,*) ireport
      READ(10,*) wfo_seq
      READ(10,*) IYEAR
      READ(10,*) ensim_MONTH
      READ(10,*) ensim_DAY
      READ(10,*) IHOUR
      READ(10,*) XXX
      READ(10,*) YYY
      READ(10,*) NLAT
      READ(10,*) NMOS
      READ(10,*) DELT
      READ(10,*) TFREZ
      READ(10,*) UVGRD
      READ(10,*) SBC
      READ(10,*) RHOW
      READ(10,*) CURREC
      READ(10,*) WF_ROUTETIMESTEP
      READ(10,*) WF_R1
      READ(10,*) WF_R2
      READ(10,*) NAA
      READ(10,*) IYMIN
      READ(10,*) WF_IYMAX
      READ(10,*) JXMIN
      READ(10,*) WF_JXMAX
      READ(10,*) WF_IBN
      READ(10,*) WF_IROUGH
      READ(10,*) WF_ICHNL
      READ(10,*) WF_NEXT
      READ(10,*) WF_IREACH
      READ(10,*) AL
      READ(10,*) GRDN
      READ(10,*) GRDE
      READ(10,*) WF_DA
      READ(10,*) WF_BNKFLL
      READ(10,*) WF_CHANNELSLOPE
      READ(10,*) WF_ELEV
      READ(10,*) FRAC
      READ(10,*) WF_NO
      READ(10,*) WF_NL
      READ(10,*) WF_MHRD
      READ(10,*) WF_KT
      READ(10,*) WF_IY
      READ(10,*) WF_JX
      READ(10,*) WF_QHYD
      READ(10,*) WF_RES
      READ(10,*) WF_RESSTORE
      READ(10,*) WF_NORESV_CTRL
      READ(10,*) WF_R
      READ(10,*) WF_NORESV
      READ(10,*) WF_NREL
      READ(10,*) WF_KTR
      READ(10,*) WF_IRES
      READ(10,*) WF_JRES
      READ(10,*) WF_B1
      READ(10,*) WF_B2
      READ(10,*) WF_QREL
      READ(10,*) WF_QR
      READ(10,*) WF_TIMECOUNT
      READ(10,*) WF_NHYD
      READ(10,*) WF_QBASE
      READ(10,*) WF_QI1
      READ(10,*) WF_QI2
      READ(10,*) WF_QO1
      READ(10,*) WF_QO2
      READ(10,*) WF_STORE1
      READ(10,*) WF_STORE2
      READ(10,*) DRIVERTIMESTEP
      READ(10,*) ROFGRD
      READ(10,*) WF_S
      READ(10,*) JAN
      READ(10,*) IDAY
      READ(10,*) IHOUR
      READ(10,*) IMIN
      READ(10,*) IMIN2
      READ(10,*) TOTAL_ROFACC
      READ(10,*) TOTAL_ROFOACC
      READ(10,*) TOTAL_ROFSACC
      READ(10,*) TOTAL_ROFBACC
      READ(10,*) TOTAL_EVAPACC
      READ(10,*) TOTAL_PREACC
      READ(10,*) INIT_STORE
      READ(10,*) FINAL_STORE
      READ(10,*) TOTAL_AREA
      READ(10,*) TOTAL_HFSACC
      READ(10,*) TOTAL_QEVPACC
      READ(10,*) SOIL_POR_MAX
      READ(10,*) SOIL_DEPTH
      READ(10,*) S0
      READ(10,*) T_ICE_LENS
      READ(10,*) NMELT
      READ(10,*) t0_ACC
      READ(10,*) fetchROW
      READ(10,*) HtROW
      READ(10,*) N_SROW
      READ(10,*) A_SROW
      READ(10,*) DistribROW
      READ(10,*) fetchGAT
      READ(10,*) HtGAT
      READ(10,*) N_SGAT
      READ(10,*) A_SGAT
      READ(10,*) DistribGAT
      IF (ICTEMMOD.EQ.1) THEN
          READ(10,*) AILCG
          READ(10,*) AILCGS
          READ(10,*) FCANC
          READ(10,*) FCANCS
          READ(10,*) CO2I1CG
          READ(10,*) CO2I1CS
          READ(10,*) CO2I2CG
          READ(10,*) CO2I2CS
          READ(10,*) FCANCMX
          READ(10,*) ANCSVEG
          READ(10,*) ANCGVEG
          READ(10,*) RMLCSVEG
          READ(10,*) SLAI
          READ(10,*) RMLCGVEG
          READ(10,*) CO2CONC
          READ(10,*) COSZS
          READ(10,*) XDIFFUSC
          READ(10,*) CFLUXCG
          READ(10,*) CFLUXCS
          READ(10,*) RMATCTEM
          READ(10,*) FIELDSM
          READ(10,*) WILTSM
          READ(10,*) AILC
          READ(10,*) PAIC
          READ(10,*) RMATC
          READ(10,*) L2MAX
          READ(10,*) NOL2PFTS
      ENDIF
      
      CLOSE (10)
      
      RETURN
      END
