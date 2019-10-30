Return-Path: <usb-storage+bncBC4LXIPCY4NRBINK5DWQKGQEM5MKD2I@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pl1-x646.google.com (mail-pl1-x646.google.com [IPv6:2607:f8b0:4864:20::646])
	by mail.lfdr.de (Postfix) with ESMTPS id 159B2EA766
	for <lists+usb-storage@lfdr.de>; Wed, 30 Oct 2019 23:56:35 +0100 (CET)
Received: by mail-pl1-x646.google.com with SMTP id g2sf763568plq.3
        for <lists+usb-storage@lfdr.de>; Wed, 30 Oct 2019 15:56:35 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1572476194; cv=pass;
        d=google.com; s=arc-20160816;
        b=yZf21qmfLCRZ/BCPgHARiLbF8t0gYBaqbjeta1198js/51do5GKH5CIVDr/VhIWhPx
         Hh6/lolTD2kyl+JyWM6lK0GuoTnwG6XhSBFbP3Ewq6B2IrNmAC376/1GpfO5iMhn4VMR
         D2e1+GgB/vi/sCCzezgNN8acX1R1dyfyb/cgZHC9xJiD44Y5ESYf4hCbkuSFdZEUaTyF
         iNnhb18R3ci/Krwxb55vlCmUByfLqu10U2ZDQc4nCWTs2Lr28KlN/77/+GcHYHK7m/kk
         GMNMNVQCVzTHui8lVJx2nMLGQfG82M1rXZhoAC8BgAdWStUqRKZ7jbx7uLUjeAECRT3N
         Vkag==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=Lu0b15bf02NjoTBerGxUsSytv646P7BtZpwEK3pJG9s=;
        b=Q4zWqJ6vFmItTL0z1PyAm50T693/CSfk0o2C8lxsf5S2nUx0u1xfHFTK3lXv80dfrc
         15VsomNXwUcA0T+yPRdL1hQJjmvYBBdU3nzervC6gOTG84MMqnshV56AasFMwlzYwfn2
         JnwKfxdN+xw72PiOD/3f7bd5Q2x61e/ut/UbMCXTp1ozyr3KijWxTNzGZFhUrDFnkNuw
         JxTy4JvQufcQdveS32YRfDYFjHWfs5AqfTTmttGOjWwJ4juG2UDldC6conYBmhk9LoTh
         fkvk2d9G7oj4DA+uwQatvox2yLGdsQv/SMbUdou2jVK9mIw1AZ1On+wEFDkxPoZElr5k
         wW1A==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.88 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Lu0b15bf02NjoTBerGxUsSytv646P7BtZpwEK3pJG9s=;
        b=lgW5Erp+XVfktZeru+OivtZRLO7oGPpKfWdTNAIQ3HOroJ31qyR9jNYlrBxQauoZEC
         pZsVrqPwkE6lAv4X25+qIxBALOghBR18Ss4jI5yERLBuqnTofD/tMDqZ6uNIvF2Ba7iF
         c/qzOAohOyu2KyJHNjwx6WbSpL9RTFnTZ+Y9s=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=Lu0b15bf02NjoTBerGxUsSytv646P7BtZpwEK3pJG9s=;
        b=PcIO2DNS5Dy5JghwpOUyzAlXBvGHt17JEOePN/IabzuE3Z1LDJWuauRJ6W7MywTlQV
         4aoP4E0NtZYmZQEK0Gihi+yOIDRCNcdCP4CxsJQsjd0uNZft/omZrT+32A01hcg55rL1
         CMmSwdOjQY7TRIATNbKwTS2mAnD6erZRHReRM1H01/UgN5FSYFWVSRl8bQeMubnmvJCw
         30SNGgNOSKedHA4AoGRD1s79ENO6hg6N07UZfnwzg52HEMkVVvWygTEU716trHiBgHAC
         dRbUEyLLUHno0lTQvK+Ag2x231UEndvjM5iKEHsIY2rcVX1RHHvMl7Nju5RhbTCbST68
         ejzw==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: APjAAAVTbb53cXxz9AsllXg1cpm32x/IpHlHFPDPNaXkZ34psLzjx4PE
	XnbrEBEX8vUBIzTadGh6fbq2ag==
X-Google-Smtp-Source: APXvYqxaq27o8WFnlqC6FtnSzSVtK7Og1sU0VmdoUiWTPN7RnMNeCAxCvMSvE3ez3bd+BhR9Cl4wcw==
X-Received: by 2002:a17:902:ac89:: with SMTP id h9mr2617621plr.44.1572476193595;
        Wed, 30 Oct 2019 15:56:33 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a17:902:7783:: with SMTP id o3ls198146pll.4.gmail; Wed, 30
 Oct 2019 15:56:32 -0700 (PDT)
X-Received: by 2002:a17:90a:d989:: with SMTP id d9mr2189564pjv.90.1572476192927;
        Wed, 30 Oct 2019 15:56:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572476192; cv=none;
        d=google.com; s=arc-20160816;
        b=oNChm4362dK4ViQUnEaQ/mb6+mr8poMTIhryxnONu2/GEkdexGTB4EcVOF3PEPuxUS
         KHjGZXL9A7n15tJmCVkV1XUGFwSP+7+f7m0/NU8g44tzcueOBiQTw/fSLid2uGMXsXzp
         ZqDjgOj8f472DV/8C+YPNVKsve1OfZZqTbwFEHyu3Nj421jbAU1AA0ZZNZ2pyg72WYRO
         A6lnajQbPx4ThIEIR84Wj6Zqy09cJMFTIAa5WVY0dPgaSwR9rZnCV9AWu0sZOsqCCwiz
         KmqTtUp15oVhTC+lMhfqqmyx9kwvj0Krm2DX0ImmW/QsLn7pUqIJhG9NfJ2IS7vDnjNg
         bq3w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=CYhRvitllfNlySaaZOrySSNvsKoHs4qm4v6+tuZ/V34=;
        b=m7MzOlFv5oxvz4XsMuD1DAQIuGKdMSi3PLO2zmNLYCyjwgQCFXUU9aeh2N5vsFznxn
         hp5CS41+E7Rrx/2wmJgfCS5hNOBRoH1K2yeKkeKTh05s/ad7jE7KJOkxAyTBu7IhgSX0
         FUF5lGimOXmOE0Gn/RAVrXqyEHIZYaEXFaTItm5IMzckM39Wm7x2XS8W7bNkpgDooWnu
         fhH2xXuKug4J945zePjXIN6cNMJPHVHVqvQQnPzmZEUnrRzVKdxcs84Swl9BDr+68B6+
         OxEk2IBoE5g9ie5mubde0lUG9pDm7k7U27euLHBXr3N73domt29hqxQ8XgiNEWU3ss6j
         fdRw==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.88 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga01.intel.com (mga01.intel.com. [192.55.52.88])
        by mx.google.com with ESMTPS id k4si4041288plt.299.2019.10.30.15.56.32
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 30 Oct 2019 15:56:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.88 as permitted sender) client-ip=192.55.52.88;
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
  by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 30 Oct 2019 15:56:32 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,248,1569308400"; 
   d="scan'208";a="283698161"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
  by orsmga001.jf.intel.com with ESMTP; 30 Oct 2019 15:56:29 -0700
Received: from kbuild by lkp-server01 with local (Exim 4.89)
	(envelope-from <lkp@intel.com>)
	id 1iPwtB-0001FD-BE; Thu, 31 Oct 2019 06:56:29 +0800
Date: Thu, 31 Oct 2019 06:56:13 +0800
From: kbuild test robot <lkp@intel.com>
To: Damien Le Moal <damien.lemoal@wdc.com>
Cc: kbuild-all@lists.01.org, linux-scsi@vger.kernel.org,
	"Martin K . Petersen" <martin.petersen@oracle.com>,
	linux-usb@vger.kernel.org, usb-storage@lists.one-eyed-alien.net,
	Alan Stern <stern@rowland.harvard.edu>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Justin Piszcz <jpiszcz@lucidpixels.com>
Subject: [usb-storage] Re: [PATCH] scsi: Fix scsi_get/set_resid() interface
Message-ID: <201910310616.NvJqgsxM%lkp@intel.com>
References: <20191028105732.29913-1-damien.lemoal@wdc.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20191028105732.29913-1-damien.lemoal@wdc.com>
X-Patchwork-Hint: ignore
User-Agent: NeoMutt/20170113 (1.7.2)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of lkp@intel.com designates 192.55.52.88 as permitted sender)
 smtp.mailfrom=lkp@intel.com;       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Precedence: list
Mailing-list: list usb-storage@lists.one-eyed-alien.net; contact usb-storage+owners@lists.one-eyed-alien.net
List-ID: <usb-storage.lists.one-eyed-alien.net>
X-Spam-Checked-In-Group: usb-storage@lists.one-eyed-alien.net
X-Google-Group-Id: 960895140360
List-Post: <https://groups.google.com/a/lists.one-eyed-alien.net/group/usb-storage/post>,
 <mailto:usb-storage@lists.one-eyed-alien.net>
List-Help: <https://support.google.com/a/lists.one-eyed-alien.net/bin/topic.py?topic=25838>,
 <mailto:usb-storage+help@lists.one-eyed-alien.net>
List-Archive: <https://groups.google.com/a/lists.one-eyed-alien.net/group/usb-storage/>
List-Subscribe: <https://groups.google.com/a/lists.one-eyed-alien.net/group/usb-storage/subscribe>,
 <mailto:usb-storage+subscribe@lists.one-eyed-alien.net>
List-Unsubscribe: <mailto:googlegroups-manage+960895140360+unsubscribe@googlegroups.com>,
 <https://groups.google.com/a/lists.one-eyed-alien.net/group/usb-storage/subscribe>

Hi Damien,

I love your patch! Perhaps something to improve:

[auto build test WARNING on scsi/for-next]
[cannot apply to v5.4-rc5 next-20191030]
[if your patch is applied to the wrong git tree, please drop us a note to help
improve the system. BTW, we also suggest to use '--base' option to specify the
base tree in git format-patch, please see https://stackoverflow.com/a/37406982]

url:    https://github.com/0day-ci/linux/commits/Damien-Le-Moal/scsi-Fix-scsi_get-set_resid-interface/20191030-074824
base:   https://git.kernel.org/pub/scm/linux/kernel/git/jejb/scsi.git for-next
reproduce:
        # apt-get install sparse
        # sparse version: v0.6.1-dirty
        make ARCH=x86_64 allmodconfig
        make C=1 CF='-fdiagnostic-prefix -D__CHECK_ENDIAN__'

If you fix the issue, kindly add following tag
Reported-by: kbuild test robot <lkp@intel.com>


sparse warnings: (new ones prefixed by >>)

   drivers/usb/storage/ene_ub6250.c:2161:33: sparse: sparse: incorrect type in assignment (different base types) @@    expected restricted __le32 [usertype] DataTransferLength @@    got e] DataTransferLength @@
   drivers/usb/storage/ene_ub6250.c:2161:33: sparse:    expected restricted __le32 [usertype] DataTransferLength
   drivers/usb/storage/ene_ub6250.c:2161:33: sparse:    got int
   drivers/usb/storage/ene_ub6250.c:2091:33: sparse: sparse: incorrect type in assignment (different base types) @@    expected restricted __le32 [usertype] DataTransferLength @@    got e] DataTransferLength @@
   drivers/usb/storage/ene_ub6250.c:2091:33: sparse:    expected restricted __le32 [usertype] DataTransferLength
   drivers/usb/storage/ene_ub6250.c:2091:33: sparse:    got int
   drivers/usb/storage/ene_ub6250.c:1935:33: sparse: sparse: incorrect type in assignment (different base types) @@    expected restricted __le32 [usertype] DataTransferLength @@    got unrestricted __le32 [usertype] DataTransferLength @@
   drivers/usb/storage/ene_ub6250.c:1935:33: sparse:    expected restricted __le32 [usertype] DataTransferLength
   drivers/usb/storage/ene_ub6250.c:1935:33: sparse:    got unsigned long const [usertype] size
   drivers/usb/storage/ene_ub6250.c:501:43: sparse: sparse: incorrect type in initializer (different base types) @@    expected unsigned int transfer_length @@    got restricted __le3unsigned int transfer_length @@
   drivers/usb/storage/ene_ub6250.c:501:43: sparse:    expected unsigned int transfer_length
   drivers/usb/storage/ene_ub6250.c:501:43: sparse:    got restricted __le32 [usertype] DataTransferLength
>> drivers/usb/storage/ene_ub6250.c:563:49: sparse: sparse: incompatible types in comparison expression (different signedness):
>> drivers/usb/storage/ene_ub6250.c:563:49: sparse:    unsigned int *
>> drivers/usb/storage/ene_ub6250.c:563:49: sparse:    int *
   drivers/usb/storage/ene_ub6250.c:702:33: sparse: sparse: incorrect type in assignment (different base types) @@    expected restricted __le32 [usertype] DataTransferLength @@    got icted __le32 [usertype] DataTransferLength @@
   drivers/usb/storage/ene_ub6250.c:702:33: sparse:    expected restricted __le32 [usertype] DataTransferLength
   drivers/usb/storage/ene_ub6250.c:702:33: sparse:    got unsigned int [usertype] blenByte
   drivers/usb/storage/ene_ub6250.c:742:33: sparse: sparse: incorrect type in assignment (different base types) @@    expected restricted __le32 [usertype] DataTransferLength @@    got icted __le32 [usertype] DataTransferLength @@
   drivers/usb/storage/ene_ub6250.c:742:33: sparse:    expected restricted __le32 [usertype] DataTransferLength
   drivers/usb/storage/ene_ub6250.c:742:33: sparse:    got unsigned int [usertype] blenByte
   drivers/usb/storage/ene_ub6250.c:888:33: sparse: sparse: incorrect type in assignment (different base types) @@    expected restricted __le32 [usertype] DataTransferLength @@    got e] DataTransferLength @@
   drivers/usb/storage/ene_ub6250.c:888:33: sparse:    expected restricted __le32 [usertype] DataTransferLength
   drivers/usb/storage/ene_ub6250.c:888:33: sparse:    got int
   drivers/usb/storage/ene_ub6250.c:907:33: sparse: sparse: incorrect type in assignment (different base types) @@    expected restricted __le32 [usertype] DataTransferLength @@    got e] DataTransferLength @@
   drivers/usb/storage/ene_ub6250.c:907:33: sparse:    expected restricted __le32 [usertype] DataTransferLength
   drivers/usb/storage/ene_ub6250.c:907:33: sparse:    got int
   drivers/usb/storage/ene_ub6250.c:953:18: sparse: sparse: cast to restricted __be16
   drivers/usb/storage/ene_ub6250.c:953:18: sparse: sparse: cast to restricted __be16
   drivers/usb/storage/ene_ub6250.c:953:18: sparse: sparse: cast to restricted __be16
   drivers/usb/storage/ene_ub6250.c:953:18: sparse: sparse: cast to restricted __be16
   drivers/usb/storage/ene_ub6250.c:973:34: sparse: sparse: cast to restricted __be16
   drivers/usb/storage/ene_ub6250.c:973:34: sparse: sparse: cast to restricted __be16
   drivers/usb/storage/ene_ub6250.c:973:34: sparse: sparse: cast to restricted __be16
   drivers/usb/storage/ene_ub6250.c:973:34: sparse: sparse: cast to restricted __be16
   drivers/usb/storage/ene_ub6250.c:974:41: sparse: sparse: cast to restricted __be16
   drivers/usb/storage/ene_ub6250.c:974:41: sparse: sparse: cast to restricted __be16
   drivers/usb/storage/ene_ub6250.c:974:41: sparse: sparse: cast to restricted __be16
   drivers/usb/storage/ene_ub6250.c:974:41: sparse: sparse: cast to restricted __be16
   drivers/usb/storage/ene_ub6250.c:975:41: sparse: sparse: cast to restricted __be16
   drivers/usb/storage/ene_ub6250.c:975:41: sparse: sparse: cast to restricted __be16
   drivers/usb/storage/ene_ub6250.c:975:41: sparse: sparse: cast to restricted __be16
   drivers/usb/storage/ene_ub6250.c:975:41: sparse: sparse: cast to restricted __be16
   drivers/usb/storage/ene_ub6250.c:978:26: sparse: sparse: cast to restricted __be16
   drivers/usb/storage/ene_ub6250.c:978:26: sparse: sparse: cast to restricted __be16
   drivers/usb/storage/ene_ub6250.c:978:26: sparse: sparse: cast to restricted __be16
   drivers/usb/storage/ene_ub6250.c:978:26: sparse: sparse: cast to restricted __be16
   drivers/usb/storage/ene_ub6250.c:992:31: sparse: sparse: cast to restricted __be32
   drivers/usb/storage/ene_ub6250.c:992:31: sparse: sparse: cast to restricted __be32
   drivers/usb/storage/ene_ub6250.c:992:31: sparse: sparse: cast to restricted __be32
   drivers/usb/storage/ene_ub6250.c:992:31: sparse: sparse: cast to restricted __be32
   drivers/usb/storage/ene_ub6250.c:992:31: sparse: sparse: cast to restricted __be32
   drivers/usb/storage/ene_ub6250.c:992:31: sparse: sparse: cast to restricted __be32
   drivers/usb/storage/ene_ub6250.c:996:29: sparse: sparse: cast to restricted __be32
   drivers/usb/storage/ene_ub6250.c:996:29: sparse: sparse: cast to restricted __be32
   drivers/usb/storage/ene_ub6250.c:996:29: sparse: sparse: cast to restricted __be32
   drivers/usb/storage/ene_ub6250.c:996:29: sparse: sparse: cast to restricted __be32
   drivers/usb/storage/ene_ub6250.c:996:29: sparse: sparse: cast to restricted __be32
   drivers/usb/storage/ene_ub6250.c:996:29: sparse: sparse: cast to restricted __be32
   drivers/usb/storage/ene_ub6250.c:1028:42: sparse: sparse: cast to restricted __be16
   drivers/usb/storage/ene_ub6250.c:1028:42: sparse: sparse: cast to restricted __be16
   drivers/usb/storage/ene_ub6250.c:1028:42: sparse: sparse: cast to restricted __be16
   drivers/usb/storage/ene_ub6250.c:1028:42: sparse: sparse: cast to restricted __be16
   drivers/usb/storage/ene_ub6250.c:1052:29: sparse: sparse: cast to restricted __le16
   drivers/usb/storage/ene_ub6250.c:1055:55: sparse: sparse: cast to restricted __le16
   drivers/usb/storage/ene_ub6250.c:1167:33: sparse: sparse: incorrect type in assignment (different base types) @@    expected restricted __le32 [usertype] DataTransferLength @@    got e] DataTransferLength @@
   drivers/usb/storage/ene_ub6250.c:1167:33: sparse:    expected restricted __le32 [usertype] DataTransferLength
   drivers/usb/storage/ene_ub6250.c:1167:33: sparse:    got int
   drivers/usb/storage/ene_ub6250.c:1200:33: sparse: sparse: incorrect type in assignment (different base types) @@    expected restricted __le32 [usertype] DataTransferLength @@    got e] DataTransferLength @@
   drivers/usb/storage/ene_ub6250.c:1200:33: sparse:    expected restricted __le32 [usertype] DataTransferLength
   drivers/usb/storage/ene_ub6250.c:1200:33: sparse:    got int
   drivers/usb/storage/ene_ub6250.c:1231:23: sparse: sparse: cast to restricted __be16
   drivers/usb/storage/ene_ub6250.c:1231:23: sparse: sparse: cast to restricted __be16
   drivers/usb/storage/ene_ub6250.c:1231:23: sparse: sparse: cast to restricted __be16
   drivers/usb/storage/ene_ub6250.c:1231:23: sparse: sparse: cast to restricted __be16
   drivers/usb/storage/ene_ub6250.c:1277:33: sparse: sparse: incorrect type in assignment (different base types) @@    expected restricted __le32 [usertype] DataTransferLength @@    got e] DataTransferLength @@
   drivers/usb/storage/ene_ub6250.c:1277:33: sparse:    expected restricted __le32 [usertype] DataTransferLength
   drivers/usb/storage/ene_ub6250.c:1277:33: sparse:    got int
   drivers/usb/storage/ene_ub6250.c:1359:33: sparse: sparse: incorrect type in assignment (different base types) @@    expected restricted __le32 [usertype] DataTransferLength @@    got e] DataTransferLength @@
   drivers/usb/storage/ene_ub6250.c:1359:33: sparse:    expected restricted __le32 [usertype] DataTransferLength
   drivers/usb/storage/ene_ub6250.c:1359:33: sparse:    got int
   drivers/usb/storage/ene_ub6250.c:1543:33: sparse: sparse: incorrect type in assignment (different base types) @@    expected restricted __le32 [usertype] DataTransferLength @@    got e] DataTransferLength @@
   drivers/usb/storage/ene_ub6250.c:1543:33: sparse:    expected restricted __le32 [usertype] DataTransferLength
   drivers/usb/storage/ene_ub6250.c:1543:33: sparse:    got int
   drivers/usb/storage/ene_ub6250.c:1662:41: sparse: sparse: incorrect type in assignment (different base types) @@    expected restricted __le32 [usertype] DataTransferLength @@    got icted __le32 [usertype] DataTransferLength @@
   drivers/usb/storage/ene_ub6250.c:1662:41: sparse:    expected restricted __le32 [usertype] DataTransferLength
   drivers/usb/storage/ene_ub6250.c:1662:41: sparse:    got unsigned int [usertype] blenByte
   drivers/usb/storage/ene_ub6250.c:1706:49: sparse: sparse: incorrect type in assignment (different base types) @@    expected restricted __le32 [usertype] DataTransferLength @@    got e] DataTransferLength @@
   drivers/usb/storage/ene_ub6250.c:1706:49: sparse:    expected restricted __le32 [usertype] DataTransferLength
   drivers/usb/storage/ene_ub6250.c:1706:49: sparse:    got int
   drivers/usb/storage/ene_ub6250.c:1763:41: sparse: sparse: incorrect type in assignment (different base types) @@    expected restricted __le32 [usertype] DataTransferLength @@    got icted __le32 [usertype] DataTransferLength @@
   drivers/usb/storage/ene_ub6250.c:1763:41: sparse:    expected restricted __le32 [usertype] DataTransferLength
   drivers/usb/storage/ene_ub6250.c:1763:41: sparse:    got unsigned int [usertype] blenByte
   drivers/usb/storage/ene_ub6250.c:1839:33: sparse: sparse: incorrect type in assignment (different base types) @@    expected restricted __le32 [usertype] DataTransferLength @@    got e] DataTransferLength @@
   drivers/usb/storage/ene_ub6250.c:1839:33: sparse:    expected restricted __le32 [usertype] DataTransferLength
   drivers/usb/storage/ene_ub6250.c:1839:33: sparse:    got int
   drivers/usb/storage/ene_ub6250.c:1991:26: sparse: sparse: cast to restricted __be16
   drivers/usb/storage/ene_ub6250.c:1991:26: sparse: sparse: cast to restricted __be16
   drivers/usb/storage/ene_ub6250.c:1991:26: sparse: sparse: cast to restricted __be16
   drivers/usb/storage/ene_ub6250.c:1991:26: sparse: sparse: cast to restricted __be16
   drivers/usb/storage/ene_ub6250.c:1992:26: sparse: sparse: cast to restricted __be16
   drivers/usb/storage/ene_ub6250.c:1992:26: sparse: sparse: cast to restricted __be16
   drivers/usb/storage/ene_ub6250.c:1992:26: sparse: sparse: cast to restricted __be16
   drivers/usb/storage/ene_ub6250.c:1992:26: sparse: sparse: cast to restricted __be16

vim +563 drivers/usb/storage/ene_ub6250.c

41e568d14ec0ac huajun li    2011-03-04  492  
41e568d14ec0ac huajun li    2011-03-04  493  static int ene_send_scsi_cmd(struct us_data *us, u8 fDir, void *buf, int use_sg)
41e568d14ec0ac huajun li    2011-03-04  494  {
41e568d14ec0ac huajun li    2011-03-04  495  	struct bulk_cb_wrap *bcb = (struct bulk_cb_wrap *) us->iobuf;
41e568d14ec0ac huajun li    2011-03-04  496  	struct bulk_cs_wrap *bcs = (struct bulk_cs_wrap *) us->iobuf;
41e568d14ec0ac huajun li    2011-03-04  497  
41e568d14ec0ac huajun li    2011-03-04  498  	int result;
41e568d14ec0ac huajun li    2011-03-04  499  	unsigned int residue;
41e568d14ec0ac huajun li    2011-03-04  500  	unsigned int cswlen = 0, partial = 0;
41e568d14ec0ac huajun li    2011-03-04  501  	unsigned int transfer_length = bcb->DataTransferLength;
41e568d14ec0ac huajun li    2011-03-04  502  
191648d03d2022 Joe Perches  2013-04-19  503  	/* usb_stor_dbg(us, "transport --- ene_send_scsi_cmd\n"); */
41e568d14ec0ac huajun li    2011-03-04  504  	/* send cmd to out endpoint */
41e568d14ec0ac huajun li    2011-03-04  505  	result = usb_stor_bulk_transfer_buf(us, us->send_bulk_pipe,
41e568d14ec0ac huajun li    2011-03-04  506  					    bcb, US_BULK_CB_WRAP_LEN, NULL);
41e568d14ec0ac huajun li    2011-03-04  507  	if (result != USB_STOR_XFER_GOOD) {
191648d03d2022 Joe Perches  2013-04-19  508  		usb_stor_dbg(us, "send cmd to out endpoint fail ---\n");
41e568d14ec0ac huajun li    2011-03-04  509  		return USB_STOR_TRANSPORT_ERROR;
41e568d14ec0ac huajun li    2011-03-04  510  	}
41e568d14ec0ac huajun li    2011-03-04  511  
41e568d14ec0ac huajun li    2011-03-04  512  	if (buf) {
41e568d14ec0ac huajun li    2011-03-04  513  		unsigned int pipe = fDir;
41e568d14ec0ac huajun li    2011-03-04  514  
41e568d14ec0ac huajun li    2011-03-04  515  		if (fDir  == FDIR_READ)
41e568d14ec0ac huajun li    2011-03-04  516  			pipe = us->recv_bulk_pipe;
41e568d14ec0ac huajun li    2011-03-04  517  		else
41e568d14ec0ac huajun li    2011-03-04  518  			pipe = us->send_bulk_pipe;
41e568d14ec0ac huajun li    2011-03-04  519  
41e568d14ec0ac huajun li    2011-03-04  520  		/* Bulk */
41e568d14ec0ac huajun li    2011-03-04  521  		if (use_sg) {
41e568d14ec0ac huajun li    2011-03-04  522  			result = usb_stor_bulk_srb(us, pipe, us->srb);
41e568d14ec0ac huajun li    2011-03-04  523  		} else {
41e568d14ec0ac huajun li    2011-03-04  524  			result = usb_stor_bulk_transfer_sg(us, pipe, buf,
41e568d14ec0ac huajun li    2011-03-04  525  						transfer_length, 0, &partial);
41e568d14ec0ac huajun li    2011-03-04  526  		}
41e568d14ec0ac huajun li    2011-03-04  527  		if (result != USB_STOR_XFER_GOOD) {
191648d03d2022 Joe Perches  2013-04-19  528  			usb_stor_dbg(us, "data transfer fail ---\n");
41e568d14ec0ac huajun li    2011-03-04  529  			return USB_STOR_TRANSPORT_ERROR;
41e568d14ec0ac huajun li    2011-03-04  530  		}
41e568d14ec0ac huajun li    2011-03-04  531  	}
41e568d14ec0ac huajun li    2011-03-04  532  
41e568d14ec0ac huajun li    2011-03-04  533  	/* Get CSW for device status */
41e568d14ec0ac huajun li    2011-03-04  534  	result = usb_stor_bulk_transfer_buf(us, us->recv_bulk_pipe, bcs,
41e568d14ec0ac huajun li    2011-03-04  535  					    US_BULK_CS_WRAP_LEN, &cswlen);
41e568d14ec0ac huajun li    2011-03-04  536  
41e568d14ec0ac huajun li    2011-03-04  537  	if (result == USB_STOR_XFER_SHORT && cswlen == 0) {
191648d03d2022 Joe Perches  2013-04-19  538  		usb_stor_dbg(us, "Received 0-length CSW; retrying...\n");
41e568d14ec0ac huajun li    2011-03-04  539  		result = usb_stor_bulk_transfer_buf(us, us->recv_bulk_pipe,
41e568d14ec0ac huajun li    2011-03-04  540  					    bcs, US_BULK_CS_WRAP_LEN, &cswlen);
41e568d14ec0ac huajun li    2011-03-04  541  	}
41e568d14ec0ac huajun li    2011-03-04  542  
41e568d14ec0ac huajun li    2011-03-04  543  	if (result == USB_STOR_XFER_STALLED) {
41e568d14ec0ac huajun li    2011-03-04  544  		/* get the status again */
191648d03d2022 Joe Perches  2013-04-19  545  		usb_stor_dbg(us, "Attempting to get CSW (2nd try)...\n");
41e568d14ec0ac huajun li    2011-03-04  546  		result = usb_stor_bulk_transfer_buf(us, us->recv_bulk_pipe,
41e568d14ec0ac huajun li    2011-03-04  547  						bcs, US_BULK_CS_WRAP_LEN, NULL);
41e568d14ec0ac huajun li    2011-03-04  548  	}
41e568d14ec0ac huajun li    2011-03-04  549  
41e568d14ec0ac huajun li    2011-03-04  550  	if (result != USB_STOR_XFER_GOOD)
41e568d14ec0ac huajun li    2011-03-04  551  		return USB_STOR_TRANSPORT_ERROR;
41e568d14ec0ac huajun li    2011-03-04  552  
41e568d14ec0ac huajun li    2011-03-04  553  	/* check bulk status */
41e568d14ec0ac huajun li    2011-03-04  554  	residue = le32_to_cpu(bcs->Residue);
41e568d14ec0ac huajun li    2011-03-04  555  
f0183a338e4f90 Felipe Balbi 2016-04-18  556  	/*
f0183a338e4f90 Felipe Balbi 2016-04-18  557  	 * try to compute the actual residue, based on how much data
f0183a338e4f90 Felipe Balbi 2016-04-18  558  	 * was really transferred and what the device tells us
f0183a338e4f90 Felipe Balbi 2016-04-18  559  	 */
41e568d14ec0ac huajun li    2011-03-04  560  	if (residue && !(us->fflags & US_FL_IGNORE_RESIDUE)) {
41e568d14ec0ac huajun li    2011-03-04  561  		residue = min(residue, transfer_length);
41e568d14ec0ac huajun li    2011-03-04  562  		if (us->srb != NULL)
41e568d14ec0ac huajun li    2011-03-04 @563  			scsi_set_resid(us->srb, max(scsi_get_resid(us->srb),
41e568d14ec0ac huajun li    2011-03-04  564  								(int)residue));
41e568d14ec0ac huajun li    2011-03-04  565  	}
41e568d14ec0ac huajun li    2011-03-04  566  
41e568d14ec0ac huajun li    2011-03-04  567  	if (bcs->Status != US_BULK_STAT_OK)
41e568d14ec0ac huajun li    2011-03-04  568  		return USB_STOR_TRANSPORT_ERROR;
41e568d14ec0ac huajun li    2011-03-04  569  
41e568d14ec0ac huajun li    2011-03-04  570  	return USB_STOR_TRANSPORT_GOOD;
41e568d14ec0ac huajun li    2011-03-04  571  }
41e568d14ec0ac huajun li    2011-03-04  572  

:::::: The code at line 563 was first introduced by commit
:::::: 41e568d14ec0aca1b2bb19563517aad3b06d6805 Staging: Merge ENE UB6250 SD card codes from keucr to drivers/usb/storage

:::::: TO: huajun li <huajun.li.lee@gmail.com>
:::::: CC: Greg Kroah-Hartman <gregkh@suse.de>

---
0-DAY kernel test infrastructure                Open Source Technology Center
https://lists.01.org/pipermail/kbuild-all                   Intel Corporation

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/201910310616.NvJqgsxM%25lkp%40intel.com.
