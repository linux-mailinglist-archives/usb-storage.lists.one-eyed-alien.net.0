Return-Path: <usb-storage+bncBC43DANU4AIBBCUIZ6RAMGQEXTGBVSI@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-wm1-x346.google.com (mail-wm1-x346.google.com [IPv6:2a00:1450:4864:20::346])
	by mail.lfdr.de (Postfix) with ESMTPS id E08CF6F6DDF
	for <lists+usb-storage@lfdr.de>; Thu,  4 May 2023 16:41:14 +0200 (CEST)
Received: by mail-wm1-x346.google.com with SMTP id 5b1f17b1804b1-3f168827701sf2921695e9.0
        for <lists+usb-storage@lfdr.de>; Thu, 04 May 2023 07:41:14 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1683211274; cv=pass;
        d=google.com; s=arc-20160816;
        b=Vrolf9gMubU0c5Sd84WYd9DkaC6in3r+Lsv6OECGvx2uWgJtYZCe4LH1V91D0d5n2K
         xKn/9wtvJiygZ+X7Ht1sW9ScYWWEzcEWCV0mVMl+P5yCedvboYGRGDnEL7mlhyjdhmwz
         4nUnWPbJYHxaNpte4a1FFwXuge/DYZa3rkg5U2Bari0zXNJTAu5ayfzVyYrklkvWP/Kx
         kuJ34v683mTYMv37injzsgDBXS2XNOxm2OhXoUzqyenGdv8TuIN4XQgrCaoADOiAukZ2
         JgNthaRyyCDTrlyHArWGEhIymDtm3nLdafd4nejp3OBjgalHpwaTxaZjHP/XOaKlg25P
         DhNA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to
         :content-transfer-encoding:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=jrEPN0tlOuJOfCf9l/N0eqV4MhwFJsZNU4P+z5MyAxY=;
        b=BxPRK1utZjJnKQp5ra0D+FGk+m2YHqjPNY2lQVOlHIHq2bHjwYjhaps1muGLD0BGpK
         zmXVCgOvGo9NMJU7Bm1NekvmnbSPzPyb/sAti3XBRj7eO+L2yML1sVXHiUJfLqqHqgfZ
         yhiXjIMx5cw7qmiyKfoTu5TLPa9moF7YxoNwJ2Yr4C8cKpq4sde3dLMPHfYHka+mmAM6
         Gnfkk2fP86qVaokWwz4S4uX1aXNpqW5D0XwLl5PuAkjK7sLUWVEMBUNtikIiSo4KmAgm
         cRaH6/IEkBEVH6u7mApfH5kkJm9CK0OIQFAEIN8wx0kL69N/s5BH81YQr7mvuoKsub6a
         Mr2g==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of srs0=7op26y=az=freebox.fr=mbizon@srs.iliad.fr designates 212.27.33.1 as permitted sender) smtp.mailfrom="SRS0=7Op26Y=AZ=freebox.fr=mbizon@srs.iliad.fr"
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1683211274; x=1685803274;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:content-transfer-encoding
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:from:to:cc:subject:date:message-id:reply-to;
        bh=jrEPN0tlOuJOfCf9l/N0eqV4MhwFJsZNU4P+z5MyAxY=;
        b=PRMwWVZzZVpVgvzi9/oOLcrOGS6CpxrDQB9534LsFUoI3ywu1phkkrHBUX6KhQOuSI
         3qntxoifSDZ260kTxDTGB/B9QphDWBo/1AdyreZA3B84/yzJcL+xKdcs3tBvLYRRVA0w
         tbR0jy5bZhE2JQzHScVhAZUyAbnuJJDay8hXs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683211274; x=1685803274;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:in-reply-to
         :content-transfer-encoding:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:x-beenthere
         :x-gm-message-state:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=jrEPN0tlOuJOfCf9l/N0eqV4MhwFJsZNU4P+z5MyAxY=;
        b=jD6kPeF3OhiHFhV1gu44L8Jw3ZCNErJXhMnSzboZILBCH0NTjreSWw2k+pA8vjwG4S
         V4Dt1J8lXHi084oYngNhtLeFoz2MeIENLcuj4FP/qGxU6ZTXMFhocnSS61ssTz7Jbhml
         pVdrtUW979ieNGbW/1idgRdwsb0p13np5i9nUtmEMItB6IOKr9mnS9mymArljeFHD0UY
         TIRefvVxv0Em95a3UwKdtuFwP8BRp+ampsfnQYzqmgSGVimSDOkirfbLiw7JKEmiZvnB
         PbSrB4zEaCD1MDaTwjWHAth5FuuXErixE/EEhzvkm1blumq8d7cB6Knwv8uzpP7si75g
         I2mg==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AC+VfDx6Vc85x0jC9SSCenW/9KHZBvZIYhEk7wbuJTuiaYPjnsjbi21r
	snkj/No4XRDjkkiJNBsyK/e+UQ==
X-Google-Smtp-Source: ACHHUZ4h/mFJNPJorgkxqDUCQy0DND7/dzMXgo4Q4GRaMd28MeZOW9QKG5olEYluXb3/57sUoLOLIA==
X-Received: by 2002:a1c:f717:0:b0:3f1:7518:c259 with SMTP id v23-20020a1cf717000000b003f17518c259mr4423295wmh.4.1683211274376;
        Thu, 04 May 2023 07:41:14 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a5d:5a18:0:b0:306:35d:2f11 with SMTP id bq24-20020a5d5a18000000b00306035d2f11ls610374wrb.2.-pod-prod-gmail;
 Thu, 04 May 2023 07:41:13 -0700 (PDT)
X-Received: by 2002:a5d:5081:0:b0:2f2:7a7e:6ac with SMTP id a1-20020a5d5081000000b002f27a7e06acmr2911171wrt.48.1683211272996;
        Thu, 04 May 2023 07:41:12 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1683211272; cv=none;
        d=google.com; s=arc-20160816;
        b=XbFdPZ46fEsb/okyoOyQ0+8YZ+LXA+PhthxEU/WAd+6o7Us2cVFSrmsNqz6o3LMPWS
         klfLqw3cLyKbwVmfNajjNxp3it98A+lCzFk1CwzNuNv3L8Qh1HNPKVto8hRbsnB5nbye
         FqkQ513bY7+cNIQgEIX0Xo1su06Pr6/4b0maHcZSBQD1Qm2qZN03Uge0A3k1ZwDiprcp
         thNB+/cFx/wyjBvOptj1KwIVKu/QlakHvysUqWGi+gUvDdJvD6MK8coYVqnkd/iKWdeI
         SrU3DA+vQcHWg2WYJmjzqJ6xfaAU5qM5dqpaaw7QaBPdv3U1ISPdBHzQqCp1HShv/nv0
         7mmQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date;
        bh=cs894g0xKKpuODbz0hLMojWKQEb4i9e9LgtPJJOO9kQ=;
        b=cIVRE0WnwqiRLFrFQd9+VI2NArqxZQ4XqO203H1rQ3rIp85mFlsSTMk++SvJUZmc+b
         GlgpIRqwAy9kg1Wem+EkebLU3C7BbJahqcAbKdGRf5zgpW0pyMYSxs7cSPGhVKQahkDO
         3nc8pdfez0UXm8LE7n+0buY7Q7a74yQq1mv0BSD8tTSaQf13BuurawqzolC3qseeOHTJ
         /6WO65ODBLxlBIB0QhdAxhusKvG6IYZWLVYwWfkkYvu12FTU+wZNXxvn/q6WFaOT4VnL
         Uc+x7EaipgzhN8HTTRyuO4LyNRHtX5s8x56lnWmhXScZIixyBJf0XlQB6pkhLgW2Czf1
         Zb/A==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of srs0=7op26y=az=freebox.fr=mbizon@srs.iliad.fr designates 212.27.33.1 as permitted sender) smtp.mailfrom="SRS0=7Op26Y=AZ=freebox.fr=mbizon@srs.iliad.fr"
Received: from ns.iliad.fr (ns.iliad.fr. [212.27.33.1])
        by mx.google.com with ESMTPS id r12-20020a5d498c000000b00306388a962csi4205355wrq.988.2023.05.04.07.41.12
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 04 May 2023 07:41:12 -0700 (PDT)
Received-SPF: pass (google.com: domain of srs0=7op26y=az=freebox.fr=mbizon@srs.iliad.fr designates 212.27.33.1 as permitted sender) client-ip=212.27.33.1;
Received: from ns.iliad.fr (localhost [127.0.0.1])
	by ns.iliad.fr (Postfix) with ESMTP id 9604420126;
	Thu,  4 May 2023 16:41:12 +0200 (CEST)
Received: from sakura (freebox.vlq16.iliad.fr [213.36.7.13])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-256) server-signature RSA-PSS (3072 bits) server-digest SHA256)
	(No client certificate requested)
	by ns.iliad.fr (Postfix) with ESMTPS id 84A9D200BB;
	Thu,  4 May 2023 16:41:12 +0200 (CEST)
Date: Thu, 4 May 2023 16:41:11 +0200
From: Maxime Bizon <mbizon@freebox.fr>
To: Alan Stern <stern@rowland.harvard.edu>
Cc: Benjamin Block <bblock@linux.ibm.com>, Oliver Neukum <oneukum@suse.com>,
	Hannes Reinecke <hare@suse.de>, linux-usb@vger.kernel.org,
	usb-storage@lists.one-eyed-alien.net, linux-scsi@vger.kernel.org,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	"Martin K. Petersen" <martin.petersen@oracle.com>
Subject: [usb-storage] Re: Reproducible deadlock when usb-storage scsi command
 timeouts twice
Message-ID: <ZFPEB3lbEV90OJ91@sakura>
References: <ZEllnjMKT8ulZbJh@sakura>
 <34a2e50b-e899-45ee-ac14-31fa0bb1616b@rowland.harvard.edu>
 <20230503102440.GL18384@t480-pf1aa2c2.fritz.box>
 <941e8420-f99f-5832-2ea9-3ba5eca545ad@suse.com>
 <20230503125137.GA1032383@t480-pf1aa2c2.fritz.box>
 <d25bfa50-b5a0-bd0e-fd14-94967e374033@suse.com>
 <97a67f78-4888-4fe7-9bfc-87d0bb6cc8b2@rowland.harvard.edu>
 <20230504085226.GC1032383@t480-pf1aa2c2.fritz.box>
 <83fac55c-4005-416d-aad7-04bcb3fcaea2@rowland.harvard.edu>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <83fac55c-4005-416d-aad7-04bcb3fcaea2@rowland.harvard.edu>
X-Original-Sender: mbizon@freebox.fr
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of srs0=7op26y=az=freebox.fr=mbizon@srs.iliad.fr designates
 212.27.33.1 as permitted sender) smtp.mailfrom="SRS0=7Op26Y=AZ=freebox.fr=mbizon@srs.iliad.fr"
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


On Thursday 04 May 2023 =C3=A0 10:05:38 (-0400), Alan Stern wrote:

> Maxime, would you like to submit a revised version of your patch?  The=20
> key difference is that it should abort the currently executing command=20
> (if there is one), regardless of whether the srb value matches.

Yes

before I do a format submission, is this what you have in mind ?

diff --git a/drivers/usb/storage/scsiglue.c b/drivers/usb/storage/scsiglue.=
c
index 8931df5a85fd..380b04273969 100644
--- a/drivers/usb/storage/scsiglue.c
+++ b/drivers/usb/storage/scsiglue.c
@@ -406,10 +406,8 @@ static DEF_SCSI_QCMD(queuecommand)
  ***********************************************************************/
=20
 /* Command timeout and abort */
-static int command_abort(struct scsi_cmnd *srb)
+static int command_abort_matching(struct us_data *us, struct scsi_cmnd *sr=
b_match)
 {
-	struct us_data *us =3D host_to_us(srb->device->host);
-
 	usb_stor_dbg(us, "%s called\n", __func__);
=20
 	/*
@@ -418,10 +416,17 @@ static int command_abort(struct scsi_cmnd *srb)
 	 */
 	scsi_lock(us_to_host(us));
=20
-	/* Is this command still active? */
-	if (us->srb !=3D srb) {
+	/* is there any active pending command to abort ? */
+	if (!us->srb) {
 		scsi_unlock(us_to_host(us));
 		usb_stor_dbg(us, "-- nothing to abort\n");
+		return SUCCESS;
+	}
+
+	/* Does the command match the passed srb if any ? */
+	if (srb_match && us->srb !=3D srb_match) {
+		scsi_unlock(us_to_host(us));
+		usb_stor_dbg(us, "-- pending command mismatch\n");
 		return FAILED;
 	}
=20
@@ -444,6 +449,16 @@ static int command_abort(struct scsi_cmnd *srb)
 	return SUCCESS;
 }
=20
+static int command_abort_any(struct us_data *us)
+{
+	return command_abort_matching(us, NULL);
+}
+
+static int command_abort(struct scsi_cmnd *srb)
+{
+	return command_abort_matching(host_to_us(srb->device->host), srb);
+}
+
 /*
  * This invokes the transport reset mechanism to reset the state of the
  * device
@@ -455,6 +470,8 @@ static int device_reset(struct scsi_cmnd *srb)
=20
 	usb_stor_dbg(us, "%s called\n", __func__);
=20
+	command_abort_any(us);
+
 	/* lock the device pointers and do the reset */
 	mutex_lock(&(us->dev_mutex));
 	result =3D us->transport_reset(us);


--=20
Maxime

--=20
You received this message because you are subscribed to the Google Groups "=
USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.=
one-eyed-alien.net/d/msgid/usb-storage/ZFPEB3lbEV90OJ91%40sakura.
