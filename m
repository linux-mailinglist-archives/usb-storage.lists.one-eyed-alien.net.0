Return-Path: <usb-storage+bncBDGIZD433YCRBJP44HWQKGQEPVBCCZI@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-lj1-x245.google.com (mail-lj1-x245.google.com [IPv6:2a00:1450:4864:20::245])
	by mail.lfdr.de (Postfix) with ESMTPS id DFCC6E8EDF
	for <lists+usb-storage@lfdr.de>; Tue, 29 Oct 2019 19:00:06 +0100 (CET)
Received: by mail-lj1-x245.google.com with SMTP id d25sf363707ljg.13
        for <lists+usb-storage@lfdr.de>; Tue, 29 Oct 2019 11:00:06 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1572372006; cv=pass;
        d=google.com; s=arc-20160816;
        b=gJA5EcuOFfKuxVzkbqDzXdmSUMM4ub+KWAD4ctigdEtB71U1jgY+qvqQrxuYx7UxUK
         /gd99V9Z0vvH8nd4DgM9sRtDN5RDiIdiPitHWq1480Gcg4c10KmW6QId4MmqRRe5pZGa
         h2u2xTxmqAkEn3AQkS+zu1Y45AUBgwL7rJz/K8vVWWYtGP30tgKpwxq2rvdxrcHr4bmp
         X0sgZdV9H3joazIVhai5iFe4yPsPcBMN5+PWaNcYYsSEH6d9m0c4ipHLxyTyu0g2qIhG
         V158sa9ArigCrjJvUpgN5OgH4B4bBfc/CyR8o1+t3txTna3T4JAqNSGilfoiG51brnwV
         BcZQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:reply-to:sender:dkim-signature;
        bh=0uZWDKZzEqXwJQxoOxG8jDbLxzOulKiMpOh2wVvl3BU=;
        b=dlxWHIXQH2IFRUHi3fqx/lFcb5SRc4yQ+oJW/af+sS2lMmTflYnVTLosJSwdELJzAJ
         6+BVV94ldUWtZ+6t1DXGNQkjou5cjDFOxePYf8XHqv7m5E6xkVJ8FtI+4T912ZFRYzLU
         TZDUi1A9ieZOIr+AyjYX6/wBMPjOtx5RlYhsEGFGocpGU4j81HAzSnK/Ou5LRln8dZiL
         dDBqeHcY/iZPK6o1maDWu5jP0me/a0OZtf0dYkxCvYvIcaVhOKkAcC3+m0ktA+iHyGrX
         fn9WkcCCRtdQguNFRMkt06zlekG+oXhYsCo8cRcbCHMp3A/+m2qij8G3EAoILrn876PB
         JM1A==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=permerror (google.com: permanent error in processing during lookup of dgilbert@interlog.com: smarthost.freephoneline.ca not found) smtp.mailfrom=dgilbert@interlog.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:reply-to:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=0uZWDKZzEqXwJQxoOxG8jDbLxzOulKiMpOh2wVvl3BU=;
        b=bk46Gf5o8aIzftAm0LeUMsfLLk6o5b9BqgYxx8G39WebZQvdc2EGWERit4G3WED3Cm
         E3sYNr4jjb+CpTekSeZgoAq9OSV71SDlIiCrArxJF0e5itHtaT/SnlgHm3Ho6jyB/PEf
         ppc1p+FIIbGaeBKn93EX8aJH17ZJ+nB+LfFx0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:reply-to:subject:to:cc:references:from
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=0uZWDKZzEqXwJQxoOxG8jDbLxzOulKiMpOh2wVvl3BU=;
        b=MF5UC12SL/RcmXjoOWWJx0FQ/At74deQcZq3zoiWwQUNouXNujKHmPVop4vTowqJks
         ZpZ2hJppVNuaY+wywfqJe1M4xA+v17hWcPA71wNBkILKkzYjB74rD+N7Kry7L86lC3bb
         8/4ildc5Wbv2OaDvhyGheTvRVLZCwtoRcA2H4KLc/7fU/eAAZ0Pq+l23DLVAHIg3cY0G
         2Pbs3okhm+Eip02aobU/gIZSVKWvmFeGQXHiGbol6t7s4mlXe5k+Mtmsq3cgB0XtXd7C
         Jy5J/UEB7Bs8Z4ya98xI0xqAfkRtp9qqzD7b21BO6idg4kun+rOLNHu7PQ//61vCabnz
         wG4A==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: APjAAAXeK0I6af1oShGlWGkI1D4dziSq4wG+KCworBollpO2yIQgbQ9u
	8FpwmesftbBFsspZSAnwggJU6A==
X-Google-Smtp-Source: APXvYqwmmUtWMTExxtaYlooJxBWFGJAPleGyU21b56ucxLoVpj3jW1pPYcT8cBiQak2RY9KdyUy7Nw==
X-Received: by 2002:a2e:8505:: with SMTP id j5mr3545306lji.154.1572372006379;
        Tue, 29 Oct 2019 11:00:06 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a2e:9d44:: with SMTP id y4ls3181404ljj.4.gmail; Tue, 29 Oct
 2019 11:00:05 -0700 (PDT)
X-Received: by 2002:a2e:7803:: with SMTP id t3mr2415027ljc.139.1572372005331;
        Tue, 29 Oct 2019 11:00:05 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572372005; cv=none;
        d=google.com; s=arc-20160816;
        b=eI7iqoU6f/MJjNqMVlO2I693iesv0VuJDPngXPXexP4bVGfU9XS0xl+GP2UjPzQdQL
         NnH9LK5o06N6BN3BXVqg0jrBEhqDcsd+04GIF6NFCDeLIlhaMfL9m/qUlbxsmH3FYKbz
         TRPuxUeVPbGnxcHX80VE6qaS6DSKfn9Qp0Nl70x3zvYq1J4jK4VjNhwqO1+HFNs1+LZr
         hlrshC5jQKLa4kka0CN+lpe5mO/Oz5E3zUhWrGaPD1bkV3//pC26s57N6jEiuDVncnAG
         7QbDj0cgelLJbcuKctb+Fnyjcg0zlqoetPd8UyHbsUhWh+eiEZ8TYN4Dgc7MEX+H+9fN
         bYqg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject:reply-to;
        bh=BW4d0QtLMu9nWws3LwgackTojxB88DTZMvsIc5v672U=;
        b=A3qq5BMlZhHRsse7kQeViIuwHbqSYu75exRV85ZXq8Z17z6+6auZQ0f35RGk1Fyld4
         z79IwGco2kxXM+i3cEztxRvWy0RRl+/jJCOw5vGIMYpEx4dU0V2ryF3zmwfPqYFUe/YQ
         owEhSq956QPJrCj3jzccrIAISC3t02Yby1REEGwnaK82aELX2bgTxilCNQVNOQg3vL3h
         7/jUufJxzPpZ3FWkkFgIuP3qgFz34qoTEbayidyFNfP9Gw3zs7M3YU2aP7b+eNRgIAeT
         +6wA8Q2eZJojJgXHujMmAuPYlyJNU50vypqSicpP5QgmBdn2BVLkTkYkcWvCZtx1/ZeK
         ZAwQ==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=permerror (google.com: permanent error in processing during lookup of dgilbert@interlog.com: smarthost.freephoneline.ca not found) smtp.mailfrom=dgilbert@interlog.com
Received: from smtp.infotech.no (smtp.infotech.no. [82.134.31.41])
        by mx.google.com with ESMTP id i9si2792264ljj.119.2019.10.29.11.00.05
        for <usb-storage@lists.one-eyed-alien.net>;
        Tue, 29 Oct 2019 11:00:05 -0700 (PDT)
Received-SPF: permerror (google.com: permanent error in processing during lookup of dgilbert@interlog.com: smarthost.freephoneline.ca not found) client-ip=82.134.31.41;
Received: from localhost (localhost [127.0.0.1])
	by smtp.infotech.no (Postfix) with ESMTP id CA4C2204238;
	Tue, 29 Oct 2019 19:00:04 +0100 (CET)
X-Virus-Scanned: by amavisd-new-2.6.6 (20110518) (Debian) at infotech.no
Received: from smtp.infotech.no ([127.0.0.1])
	by localhost (smtp.infotech.no [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id sbeakG39yp-q; Tue, 29 Oct 2019 19:00:02 +0100 (CET)
Received: from [192.168.48.23] (host-23-251-188-50.dyn.295.ca [23.251.188.50])
	by smtp.infotech.no (Postfix) with ESMTPA id 645CE204163;
	Tue, 29 Oct 2019 19:00:01 +0100 (CET)
Reply-To: dgilbert@interlog.com
Subject: [usb-storage] Re: [PATCH] scsi: Fix scsi_get/set_resid() interface
To: Damien Le Moal <Damien.LeMoal@wdc.com>,
 Bart Van Assche <bvanassche@acm.org>,
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
From: Douglas Gilbert <dgilbert@interlog.com>
Message-ID: <4eb733b9-8f52-a6c2-eb56-f0759113dc1e@interlog.com>
Date: Tue, 29 Oct 2019 13:59:58 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <BYAPR04MB5816FF25422E60C168F78308E7610@BYAPR04MB5816.namprd04.prod.outlook.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-CA
X-Original-Sender: dgilbert@interlog.com
X-Original-Authentication-Results: mx.google.com;       spf=permerror
 (google.com: permanent error in processing during lookup of
 dgilbert@interlog.com: smarthost.freephoneline.ca not found) smtp.mailfrom=dgilbert@interlog.com
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

On 2019-10-29 4:17 a.m., Damien Le Moal wrote:
> Bart,
> 
> On 2019/10/28 21:38, Bart Van Assche wrote:
>> On 10/28/19 3:57 AM, Damien Le Moal wrote:
>>> struct scsi_cmnd cmd->req.resid_len which is returned and set
>>> respectively by the helper functions scsi_get_resid() and
>>> scsi_set_resid() is an unsigned int. Reflect this fact in the interface
>>> of these helper functions.
>>> [ ... ]
>>> -static inline void scsi_set_resid(struct scsi_cmnd *cmd, int resid)
>>> +static inline void scsi_set_resid(struct scsi_cmnd *cmd, unsigned int resid)
>>>    {
>>>    	cmd->req.resid_len = resid;
>>>    }
>>>    
>>> -static inline int scsi_get_resid(struct scsi_cmnd *cmd)
>>> +static inline unsigned int scsi_get_resid(struct scsi_cmnd *cmd)
>>>    {
>>>    	return cmd->req.resid_len;
>>>    }
>>
>>   From the iSCSI RFC:
>>
>>      SCSI-Presented Data Transfer Length (SPDTL) is the term this document
>>      uses (see Section 1.1 for definition) to represent the aggregate data
>>      length that the target SCSI layer attempts to transfer using the
>>      local iSCSI layer for a task.  Expected Data Transfer Length (EDTL)
>>      is the iSCSI term that represents the length of data that the iSCSI
>>      layer expects to transfer for a task.  EDTL is specified in the SCSI
>>      Command PDU.
>>
>>      When SPDTL = EDTL for a task, the target iSCSI layer completes the
>>      task with no residuals.  Whenever SPDTL differs from EDTL for a task,
>>      that task is said to have a residual.
>>
>>      If SPDTL > EDTL for a task, iSCSI Overflow MUST be signaled in the
>>      SCSI Response PDU as specified in [RFC3720].  The Residual Count MUST
>>      be set to the numerical value of (SPDTL - EDTL).
>>
>>      If SPDTL < EDTL for a task, iSCSI Underflow MUST be signaled in the
>>      SCSI Response PDU as specified in [RFC3720].  The Residual Count MUST
>>      be set to the numerical value of (EDTL - SPDTL).
>>
>>      Note that the Overflow and Underflow scenarios are independent of
>>      Data-In and Data-Out.  Either scenario is logically possible in
>>      either direction of data transfer.
>>
>> If the residual is changed from signed into unsigned, how is a SCSI LLD
>> expected to report the difference between residual overflow and residual
>> underflow to the SCSI core?



> As mentioned in the commit message, cmd->req.resid_len where the resid
> is stored is an unsigned int. And it has been an unsigned int forever as
> far as I know.

If my memory serves, I put it in over 20 years ago, about the same time
as the sg v2 interface (struct sg_io_hdr) was implemented. And when I
put it in it was a (signed) int and this is why:

struct ccb_accept_targ3 {
     .....
     CAM_I32 cam_resid;    /* Transfer residual length: 2's comp */
     .....
};

[from cam3r03.pdf]

So it coped with both underflow and the less likely case of overflow.

Notice in:
    struct sg_io_hdr {
       .....
       int resid;  /* [o] dxfer_len - actual_transferred */
       ...
};

At the time the SCSI mid-level and the block layer didn't bother about
resid, only some LLDs which is where the sg driver picked it up from.

So some ignoramus changed it to unsigned since then, probably before
git strangled the kernel source tree.

> So I think changing the interface to unsigned int makes sense in that
> context. Also, unless I am reading this wrong, the above definition you
> quote always lead to resid >= 0, so I do not see what problem you are
> worried about. Could you elaborate your concerns please ?

Linux's internal representation is wrong and should be fixed to match
its exposed interface (struct sg_io_hdr) which predates the breakage.

Doug Gilbert

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/4eb733b9-8f52-a6c2-eb56-f0759113dc1e%40interlog.com.
