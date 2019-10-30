Return-Path: <usb-storage+bncBD3JNNMDTMEBBKGB4PWQKGQEHQMSGVA@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pf1-x447.google.com (mail-pf1-x447.google.com [IPv6:2607:f8b0:4864:20::447])
	by mail.lfdr.de (Postfix) with ESMTPS id 45FEEE9450
	for <lists+usb-storage@lfdr.de>; Wed, 30 Oct 2019 02:00:26 +0100 (CET)
Received: by mail-pf1-x447.google.com with SMTP id i187sf362169pfc.10
        for <lists+usb-storage@lfdr.de>; Tue, 29 Oct 2019 18:00:26 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1572397225; cv=pass;
        d=google.com; s=arc-20160816;
        b=igDXcVrr2rwff2c/393m7gl15jVJ+IzdDakRYT/q5CneQ2rVRj+QgRqGGJHOInxZf4
         1BYNuivg9XT9yVkGC0JhbR0fDFv6/WdMatH4TsRoYr7o42MIF13x1f/VcOkLSHu+QQeJ
         Po2z7dplCW3/P5amvU2bXGlMvr9OS7aUiRJwBZ86QCQIJP79+JowsCdK2l1z1ZIGjRpo
         tpPtxDTXMXONSrNXztEuZr0iIsXxzb2gYaSqB6c8fyTTC0AmC44aMtD04114anwUJiLd
         QgG4JXSEQZhipoFEsCq2VdSotk3oAbyyoke8ST+CmaRiiVcb0f6G92GhegGE8AFWhqdr
         4PzQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:autocrypt:from:references
         :cc:to:subject:sender:dkim-signature;
        bh=y4c56dWDWSkVoqhtCWJ7GTg7uQopiltsyuDkZQVDIto=;
        b=RNFaVmmoGiha8RFTO6LlMjuVd9J+1sPUPH73xvahJUzgWI/Fv8FdmA4bS9rjf2niG2
         U3YcT1pY29+S/nAD233ytk/t0/3rQYod7UNEbjtTn7Kfqm69RGM5Zc7H8DUVplnEACYR
         +KKAKePnKUfmyUgslZ2GwZVgB67xAcZsC/bUsUGU3n+fEHynaXpNjvjFgBhW/1CGp0hY
         YRbANSO+OcIClBJ9kb/8nnjdYWLr7AR0tLRNb+v+eX9+HGyX9Iil0zaz/tszeJg0KlDP
         hSN9Sj5ny+nrhqa9633VNOIxgOPfutRLpVCvLaL9Xw27grdeqQfPEzxiqblda31KTBDF
         E28g==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of bart.vanassche@gmail.com designates 209.85.220.65 as permitted sender) smtp.mailfrom=bart.vanassche@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:subject:to:cc:references:from:autocrypt:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=y4c56dWDWSkVoqhtCWJ7GTg7uQopiltsyuDkZQVDIto=;
        b=USM/8Iub9B/CnrAikWEjn8wZN1RAY/LZjTWElkE53HxBPOSmgy1RAa+hm2VRWqUGXg
         dRuAOEW6SS3MaBu1kGBbfrOh6I0iHUpgd40O3fkuInhEnrl+1tYaxV6kNOGvFmZewsh2
         WPfluLvfzzF19NjOA4KEJQ54cK+VKTrG1zlOg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:autocrypt
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=y4c56dWDWSkVoqhtCWJ7GTg7uQopiltsyuDkZQVDIto=;
        b=seVvYD5Ro0oBYxvs6o1zSn33v6pOuOFjvXdR+Llm1pSOGbsVFrPKZuOFSUIKboKcts
         Bk+GKprJAjoDoZw5SixXydp6qCkKcVevojcvwJUznCyUVYidGpNxd9gBmut9K/jvTxGl
         bvZUoPlJdGFcgstH5D7as5pp+k2VfjVvVX0cM5pnqKTILCNiOrUnC3wBqvfbv9QaLPAh
         JRDCl6o4MQuT8AjB35Y/MYwI815oj+gnujblC6RiPKrVCzt0iU8bOnPclkYERU6AQsPG
         N90jEVZzyjjk+2vNBbqDuMV9yTGDavL4DkcakTvrDAxQk93MiJkd7P9nih4ssvLfj8BN
         zJbw==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: APjAAAXODb5VWPhp10JOs6/MQxsMzCKGB9zv9klt7q6f2D85AJiQp5P3
	FKxf0/d20Dt8UaaRXSx+eDodBQ==
X-Google-Smtp-Source: APXvYqwojS1PDBSXigZPCQkhGV4Ebd0h9WPttpFwD3IXrZikStIMd8uSP2TX7z7RA6mWn+pNP8xuBw==
X-Received: by 2002:aa7:81c7:: with SMTP id c7mr30198359pfn.117.1572397224936;
        Tue, 29 Oct 2019 18:00:24 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a17:90a:1ae6:: with SMTP id p93ls375815pjp.2.canary-gmail;
 Tue, 29 Oct 2019 18:00:24 -0700 (PDT)
X-Received: by 2002:a17:902:7045:: with SMTP id h5mr1702639plt.236.1572397223874;
        Tue, 29 Oct 2019 18:00:23 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572397223; cv=none;
        d=google.com; s=arc-20160816;
        b=ytsIWiXwEzgm9c7rizOySxaPbaYQA+7xHv90eF41n553jLBkIDFVQA/HqPwZCDJ2kq
         8eGxukohbtMVvRCrDwmqinNjf2r02Rh+72tHoiF1FydNk/tbdHRDJ/2jV8kO/JnBxHGp
         dHpTSUtMG6W3b6okFsNy33Cs5MP7BPCcyHm3nlPAvaLGsIjPS0mPeWveRSIDhkcVcyWG
         T1jQhvRsy0urWdo8R+pmyxGGNTnEcj2/LW+4fegPZFC2EdYHMb+jq4/dvgX9T4NnpYxn
         I3+FbGiYtk9abOcQDVfbUUqomaB4U8B2rXfoA6I4LsALnwAQs4Lbna1Vjm0YvYcDP99S
         O3/g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:autocrypt:from:references:cc:to:subject;
        bh=bkYH8mBJohAzM8EeM5/4lI2OEt40flkn7/kBdc06wFU=;
        b=c7hpjzzWGMFwph5vtj06Laz6MZHCCc/IoW5Q/HltV0Pao40ly9Z0Mw1Vg/x1cnG+qa
         2cjF/jWRCjpklTDTKkWDK3xje6BMAsXgLPWUjZ025fgTK+743LZ14NjHSIP3R9NT2nAk
         H+FfYVwOEm8NutnxThK4ZmGhw1xyFG9kKPvU0hqPIk6MlM6i7H3rqbRnvW7y0xnDJ2bq
         tjaVUjdaKGV+VntM23hqHl9DF702Ac0D5xTeyVJGr4zN8EKrnL6cxrR0T2fZlpdfvZ1F
         UeIXPDKz4HcXzCGtjFJ5spmCN4KApqB4thNzsb9L1KAWgGd+hjKSCRp6e0BIe4J4RXLI
         2Pew==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of bart.vanassche@gmail.com designates 209.85.220.65 as permitted sender) smtp.mailfrom=bart.vanassche@gmail.com
Received: from mail-sor-f65.google.com (mail-sor-f65.google.com. [209.85.220.65])
        by mx.google.com with SMTPS id f9sor480377pjq.3.2019.10.29.18.00.23
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Tue, 29 Oct 2019 18:00:23 -0700 (PDT)
Received-SPF: pass (google.com: domain of bart.vanassche@gmail.com designates 209.85.220.65 as permitted sender) client-ip=209.85.220.65;
X-Received: by 2002:a17:90a:8d82:: with SMTP id d2mr10632046pjo.31.1572397223482;
        Tue, 29 Oct 2019 18:00:23 -0700 (PDT)
Received: from localhost.localdomain ([2601:647:4000:bd:e0c6:a0a4:45b:aac0])
        by smtp.gmail.com with ESMTPSA id m65sm3205807pje.3.2019.10.29.18.00.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 29 Oct 2019 18:00:22 -0700 (PDT)
Subject: [usb-storage] Re: [PATCH] scsi: Fix scsi_get/set_resid() interface
To: dgilbert@interlog.com, Damien Le Moal <Damien.LeMoal@wdc.com>,
 "linux-scsi@vger.kernel.org" <linux-scsi@vger.kernel.org>,
 "Martin K . Petersen" <martin.petersen@oracle.com>,
 "linux-usb@vger.kernel.org" <linux-usb@vger.kernel.org>,
 "usb-storage@lists.one-eyed-alien.net"
 <usb-storage@lists.one-eyed-alien.net>,
 Alan Stern <stern@rowland.harvard.edu>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Justin Piszcz <jpiszcz@lucidpixels.com>
References: <20191028105732.29913-1-damien.lemoal@wdc.com>
 <eb8f6e3e-0350-9688-58c8-9d777ba93298@acm.org>
 <BYAPR04MB5816FF25422E60C168F78308E7610@BYAPR04MB5816.namprd04.prod.outlook.com>
 <4eb733b9-8f52-a6c2-eb56-f0759113dc1e@interlog.com>
From: Bart Van Assche <bvanassche@acm.org>
Autocrypt: addr=bvanassche@acm.org; prefer-encrypt=mutual; keydata=
 mQENBFSOu4oBCADcRWxVUvkkvRmmwTwIjIJvZOu6wNm+dz5AF4z0FHW2KNZL3oheO3P8UZWr
 LQOrCfRcK8e/sIs2Y2D3Lg/SL7qqbMehGEYcJptu6mKkywBfoYbtBkVoJ/jQsi2H0vBiiCOy
 fmxMHIPcYxaJdXxrOG2UO4B60Y/BzE6OrPDT44w4cZA9DH5xialliWU447Bts8TJNa3lZKS1
 AvW1ZklbvJfAJJAwzDih35LxU2fcWbmhPa7EO2DCv/LM1B10GBB/oQB5kvlq4aA2PSIWkqz4
 3SI5kCPSsygD6wKnbRsvNn2mIACva6VHdm62A7xel5dJRfpQjXj2snd1F/YNoNc66UUTABEB
 AAG0JEJhcnQgVmFuIEFzc2NoZSA8YnZhbmFzc2NoZUBhY20ub3JnPokBOQQTAQIAIwUCVI67
 igIbAwcLCQgHAwIBBhUIAgkKCwQWAgMBAh4BAheAAAoJEHFcPTXFzhAJ8QkH/1AdXblKL65M
 Y1Zk1bYKnkAb4a98LxCPm/pJBilvci6boefwlBDZ2NZuuYWYgyrehMB5H+q+Kq4P0IBbTqTa
 jTPAANn62A6jwJ0FnCn6YaM9TZQjM1F7LoDX3v+oAkaoXuq0dQ4hnxQNu792bi6QyVdZUvKc
 macVFVgfK9n04mL7RzjO3f+X4midKt/s+G+IPr4DGlrq+WH27eDbpUR3aYRk8EgbgGKvQFdD
 CEBFJi+5ZKOArmJVBSk21RHDpqyz6Vit3rjep7c1SN8s7NhVi9cjkKmMDM7KYhXkWc10lKx2
 RTkFI30rkDm4U+JpdAd2+tP3tjGf9AyGGinpzE2XY1K5AQ0EVI67igEIAKiSyd0nECrgz+H5
 PcFDGYQpGDMTl8MOPCKw/F3diXPuj2eql4xSbAdbUCJzk2ETif5s3twT2ER8cUTEVOaCEUY3
 eOiaFgQ+nGLx4BXqqGewikPJCe+UBjFnH1m2/IFn4T9jPZkV8xlkKmDUqMK5EV9n3eQLkn5g
 lco+FepTtmbkSCCjd91EfThVbNYpVQ5ZjdBCXN66CKyJDMJ85HVr5rmXG/nqriTh6cv1l1Js
 T7AFvvPjUPknS6d+BETMhTkbGzoyS+sywEsQAgA+BMCxBH4LvUmHYhpS+W6CiZ3ZMxjO8Hgc
 ++w1mLeRUvda3i4/U8wDT3SWuHcB3DWlcppECLkAEQEAAYkBHwQYAQIACQUCVI67igIbDAAK
 CRBxXD01xc4QCZ4dB/0QrnEasxjM0PGeXK5hcZMT9Eo998alUfn5XU0RQDYdwp6/kMEXMdmT
 oH0F0xB3SQ8WVSXA9rrc4EBvZruWQ+5/zjVrhhfUAx12CzL4oQ9Ro2k45daYaonKTANYG22y
 //x8dLe2Fv1By4SKGhmzwH87uXxbTJAUxiWIi1np0z3/RDnoVyfmfbbL1DY7zf2hYXLLzsJR
 mSsED/1nlJ9Oq5fALdNEPgDyPUerqHxcmIub+pF0AzJoYHK5punqpqfGmqPbjxrJLPJfHVKy
 goMj5DlBMoYqEgpbwdUYkH6QdizJJCur4icy8GUNbisFYABeoJ91pnD4IGei3MTdvINSZI5e
Message-ID: <368dcef6-fbb8-a6b8-d6bb-127d33c41598@acm.org>
Date: Tue, 29 Oct 2019 18:00:21 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.2
MIME-Version: 1.0
In-Reply-To: <4eb733b9-8f52-a6c2-eb56-f0759113dc1e@interlog.com>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-Original-Sender: bvanassche@acm.org
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of bart.vanassche@gmail.com designates 209.85.220.65 as permitted
 sender) smtp.mailfrom=bart.vanassche@gmail.com
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

On 2019-10-29 10:59, Douglas Gilbert wrote:
> Linux's internal representation is wrong and should be fixed to match
> its exposed interface (struct sg_io_hdr) which predates the breakage.

If resid_len is changed from unsigned int to int all SCSI core and SCSI
LLD code that uses resid_len will have to be reviewed to see whether it
handles residual overflow correctly.

Bart.

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/368dcef6-fbb8-a6b8-d6bb-127d33c41598%40acm.org.
