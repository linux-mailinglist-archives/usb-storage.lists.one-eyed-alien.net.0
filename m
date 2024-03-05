Return-Path: <usb-storage+bncBCUJ7YGL3QFBB2V2TSXQMGQEAVFY24Y@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pj1-x1045.google.com (mail-pj1-x1045.google.com [IPv6:2607:f8b0:4864:20::1045])
	by mail.lfdr.de (Postfix) with ESMTPS id DB48287200C
	for <lists+usb-storage@lfdr.de>; Tue,  5 Mar 2024 14:26:04 +0100 (CET)
Received: by mail-pj1-x1045.google.com with SMTP id 98e67ed59e1d1-2995baae8b4sf5326507a91.0
        for <lists+usb-storage@lfdr.de>; Tue, 05 Mar 2024 05:26:04 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1709645163; cv=pass;
        d=google.com; s=arc-20160816;
        b=GUJO3XwMYwJZaQQAnQsZGjBMPMLtCxKQARVcwRFIIfT58uWXHBMNL7GoDEdF7jOlIa
         91/o+SXcocapYBALsswozbpl3uJBHLJ11/AWOoSnRL4GrooM2582HkkZI3h27PsO5XmL
         pJzNCwe/xG1zQi380i7tCACc4ny5vvLKZpkaDaa7nANlY8Gbn4XNe+xOY6/xTT648X+H
         WNbtHmx3DDVGqApw7L7pT+FjvIp6N0UCEmzaEhi1QLSnwyiWo+/ZoMhjDEiyaCvqgUSO
         D2JsRYMpG71HWBsWmyJwwYqQ/cx1k3eI2+kn1/4lUInoGubKTD6uCpGlGNXq73K9KqfM
         teHA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to
         :content-transfer-encoding:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=1mKMrQUp0O5PP26fEv18ZlVyH5B+tSK5NOhiyyfheBA=;
        fh=7Q96SeGwGrlLdOiiwUFwbGmzzmE5opzdNCdST64R6qY=;
        b=pn8cESUPcdX73QxaqtTfRD8H3jM/3p9gs0Xko+Lw8KC1/pXppWSHxt7URIlh7ncTqH
         C5PBndS5AS+5gI5vSA1LA9MyEGfWnvZqGgSmrf5yjoHo6i9pNGFoYYvBv1kI3J0s7xYj
         I3PQUT2zrp9+gX6XgvWfSL1QeUu4lz1C2nm06IOFk3zWCoToxsjBBsymYYRfu1y4en/7
         ufKgctXUAybKovGeJYgJDAKyRC+4ddGLYIKXHZ4Lwuca+yQgD5ySggcEAWgRcid1Yh+b
         /FyQ9fW/iT/UG/VjjG9rgdNZIeAewrW1rTWPklTk/BNKFL8VgJiy3+67Kr1zbJbcDXKN
         bi4Q==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b="Mv/7ew43";
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 2604:1380:40e1:4800::1 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1709645163; x=1710249963; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:content-transfer-encoding
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:from:to:cc:subject:date:message-id:reply-to;
        bh=1mKMrQUp0O5PP26fEv18ZlVyH5B+tSK5NOhiyyfheBA=;
        b=AfFgaRgxMCioy6kK7gXHLh+IXDizhlPFtIF4e0A9VirLvacF1jmXGMGS9ubm+MCCTk
         sZYQ6S738po2x4u5mQUvGzGLjCvXW03NsllO//FRd0txVG+R5nkPKQ1a3rOnspAw81MX
         zJGylaw60TD7cvgKX36wR9jAO9IJh0FVzjpRk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709645163; x=1710249963;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:in-reply-to
         :content-transfer-encoding:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:x-beenthere
         :x-gm-message-state:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=1mKMrQUp0O5PP26fEv18ZlVyH5B+tSK5NOhiyyfheBA=;
        b=Vw9tSjNqHmUaRIRc1AQmLJqScY6mFLexloSe+C5PZHTxSBv8kf7lO5MEKxzBty/kNE
         7JqSg7RZXV3FPtYXy7eCFwWQGGzttWdD3f2ievobbNNvrfZm9B85aty74fS6nekH+nVF
         Bfv03esT635ldIfMlIAnMd7yZJB/zI2qett2zr2CVuyuPyOxXazmGD6dPInbGF9tp03b
         WEMGEUjkDiRBhwpsW2HAvpp8+PUc1Evy7dGhTO8SzjB/kV7CpskM1z/hbYWmIvOIs7Vy
         EgUaPC92l1seXnY3CoopgAKF3qTM2nTs3ye8c5QKyyf328g/iExF7vGgqNZbxGOKdQ8/
         7gew==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCWne2aortVYUAl+tw7u1fr1tdbs4rnM+zPFHWLuqsZMj0q53+Y/mk5e0UM1oKi4a/9aUR3bj5Jum3XpDGFIuicITDlQktgdviBc
X-Gm-Message-State: AOJu0YzdCzcNb7NXoVxdiyWIFIsG+CAqvJ28c1NsOGwz9D1gCLgbvOZA
	GTBam1/UVSG+jJC1N74ObI2MGvKUZDPt6Kj8DG80QHtImfrerTPXStGGhlhdRW0=
X-Google-Smtp-Source: AGHT+IGw2iPgd7fQyaWUMtW9ehIEyTePD23UQBH2ZygDpJ01TmPIMkhSA9ZzccoiEVPMHSteuyQScA==
X-Received: by 2002:a17:90a:7808:b0:29a:bc00:10d1 with SMTP id w8-20020a17090a780800b0029abc0010d1mr9296842pjk.12.1709645163185;
        Tue, 05 Mar 2024 05:26:03 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a17:90b:1c09:b0:29a:982a:ec7c with SMTP id
 oc9-20020a17090b1c0900b0029a982aec7cls50878pjb.1.-pod-prod-08-us; Tue, 05 Mar
 2024 05:26:02 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCX9aoIAKqXq4NMimSxGFzZ6kMq7avf37k064A/OGG1zqMxBu1wl5ZwxCmmSeWzl3Taj+fsQJOnQhGmh4aB3HaKF2ZhwLBFA1SOHEQ7TJmBhzUdlDvY=
X-Received: by 2002:a05:6a20:918a:b0:1a0:fd53:740c with SMTP id v10-20020a056a20918a00b001a0fd53740cmr1859081pzd.22.1709645162010;
        Tue, 05 Mar 2024 05:26:02 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1709645161; cv=none;
        d=google.com; s=arc-20160816;
        b=W5ReBh+COcuRMKR8etLpxfPauw7fhmXgbF0vhwGzUOP2AM2qT9+TAxu8Djy+CUANJq
         HZTA1MtMzMGJRbZKOg8rd+GbOMbHy0reh0KHKg87U6LNSXfPIL1nemHZXOdn0Q3GTClq
         xVLsThg+ZuHVU4uNcl6ksl0YHB6OYFlJ7w3GRZVsGfLm5GQEJMt94cyO+YKGl3FbuykS
         Qc1PQM7ayfTKsNZggzlgmoF9bNysSNISXG2KeJKhOP875vOl9AcPyEpUM4Po0Gl0idT9
         j/8eSBbsHfz7nJOoL2nGoT/unNw38PIMbVoyJ61tAmAm+WIQjlMFoC1KDa6wtY3GcDaD
         C3dg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :dkim-signature;
        bh=+Ueu9IVSwZauPQCqWUnuucSx91Sg4MClpb4Qith+Ss0=;
        fh=SqsOK2HZy1Yj5Jgl7WYq4IaPLQuQA3om4y32ZlxvCr0=;
        b=nvFNP/73egTP3hZpU8D7WaF8rkcxW6QT0iPm2jArJBV7ueap4OCEfMLaOrVv1ACWOg
         kdzkhDIDXCqUuzUQ/D9DFmPrbctyRonC24ZUZqc2r4+I1Lzsjm0sk8bgxqK8cZUZMNd1
         BTX4mL3S0aqgWVugCJ7B3u0vXTx52df9sN1mKyw29Op1PWuaPWmly2BuJ2hHhMVkcQ32
         Omg0oRyfw/UjoXKOmURVhhR+MCdCLRi3F68GaUl2GGTrljjesMFf2WjYwfu38K3zwsH8
         G2SbFkHUSbZZBkKNhyO77PY4VhYhF3iWogJKI+3u4MCDHoNE2AGBpzGm6BH0On5soCub
         r4Ug==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b="Mv/7ew43";
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 2604:1380:40e1:4800::1 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: from sin.source.kernel.org (sin.source.kernel.org. [2604:1380:40e1:4800::1])
        by mx.google.com with ESMTPS id 35-20020a631063000000b005dc432da142si9775320pgq.479.2024.03.05.05.26.01
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 05 Mar 2024 05:26:01 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 2604:1380:40e1:4800::1 as permitted sender) client-ip=2604:1380:40e1:4800::1;
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 6AF98CE1AAB;
	Tue,  5 Mar 2024 13:26:00 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 61595C433C7;
	Tue,  5 Mar 2024 13:25:59 +0000 (UTC)
Date: Tue, 5 Mar 2024 13:25:55 +0000
From: Greg KH <gregkh@linuxfoundation.org>
To: Weitao Wang <WeitaoWang-oc@zhaoxin.com>
Cc: oneukum@suse.com, stern@rowland.harvard.edu, linux-usb@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-scsi@vger.kernel.org,
	usb-storage@lists.one-eyed-alien.net, WeitaoWang@zhaoxin.com,
	stable@vger.kernel.org
Subject: [usb-storage] Re: [PATCH v3] USB:UAS:return ENODEV when submit urbs
 fail with device not attached
Message-ID: <2024030530-trinity-triangle-c334@gregkh>
References: <20240229193349.5407-1-WeitaoWang-oc@zhaoxin.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20240229193349.5407-1-WeitaoWang-oc@zhaoxin.com>
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@linuxfoundation.org header.s=korg header.b="Mv/7ew43";
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates
 2604:1380:40e1:4800::1 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
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

On Fri, Mar 01, 2024 at 03:33:49AM +0800, Weitao Wang wrote:
> In the scenario of entering hibernation with udisk in the system, if the
> udisk was gone or resume fail in the thaw phase of hibernation. Its state
> will be set to NOTATTACHED. At this point, usb_hub_wq was already freezed
> and can't not handle disconnect event. Next, in the poweroff phase of
> hibernation, SYNCHRONIZE_CACHE SCSI command will be sent to this udisk
> when poweroff this scsi device, which will cause uas_submit_urbs to be
> called to submit URB for sense/data/cmd pipe. However, these URBs will
> submit fail as device was set to NOTATTACHED state. Then, uas_submit_urbs
> will return a value SCSI_MLQUEUE_DEVICE_BUSY to the caller. That will lea=
d
> the SCSI layer go into an ugly loop and system fail to go into hibernatio=
n.
>=20
> On the other hand, when we specially check for -ENODEV in function
> uas_queuecommand_lck, returning DID_ERROR to SCSI layer will cause device
> poweroff fail and system shutdown instead of entering hibernation.
>=20
> To fix this issue, let uas_submit_urbs to return original generic error
> when submitting URB failed. At the same time, we need to translate -ENODE=
V
> to DID_NOT_CONNECT for the SCSI layer.
>=20
> Suggested-by: Oliver Neukum <oneukum@suse.com>
> Cc: stable@vger.kernel.org
> Signed-off-by: Weitao Wang <WeitaoWang-oc@zhaoxin.com>
> ---
> v2->v3
>  - Modify the description of this patch.
>  - An error is returned directly when submitting URB fails.

This change breaks the build, please be more careful:

drivers/usb/storage/uas.c: In function =E2=80=98uas_submit_urbs=E2=80=99:
drivers/usb/storage/uas.c:559:21: error: unused variable =E2=80=98urb=E2=80=
=99 [-Werror=3Dunused-variable]
  559 |         struct urb *urb;
      |                     ^~~


thanks,

greg k-h

--=20
You received this message because you are subscribed to the Google Groups "=
USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.=
one-eyed-alien.net/d/msgid/usb-storage/2024030530-trinity-triangle-c334%40g=
regkh.
