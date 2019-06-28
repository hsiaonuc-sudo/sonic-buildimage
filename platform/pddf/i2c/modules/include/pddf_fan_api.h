/*
 * Copyright 2019 Broadcom. All rights reserved.
 * The term “Broadcom” refers to Broadcom Inc. and/or its subsidiaries.
 *
 * Description
 *  FAN driver api declarations
 */

#ifndef __PDDF_FAN_API_H__
#define __PDDF_FAN_API_H__

/*extern int pddf_fan_post_probe(struct i2c_client *client, const struct i2c_device_id *dev_id);*/

extern ssize_t fan_show_present_default(struct device *dev, struct device_attribute *da, char *buf);
extern int sonic_i2c_get_fan_present_default(void *client, FAN_DATA_ATTR *adata, void *data);

extern ssize_t fan_show_rpm_default(struct device *dev, struct device_attribute *da, char *buf);
extern int sonic_i2c_get_fan_rpm_default(void *client, FAN_DATA_ATTR *adata, void *data);

extern ssize_t fan_show_direction_default(struct device *dev, struct device_attribute *da, char *buf);
extern int sonic_i2c_get_fan_direction_default(void *client, FAN_DATA_ATTR *adata, void *data);

extern ssize_t fan_show_pwm_default(struct device *dev, struct device_attribute *da, char *buf);
extern ssize_t fan_set_pwm_default(struct device *dev, struct device_attribute *da, const char *buf, size_t count);
extern int sonic_i2c_get_fan_pwm_default(void *client, FAN_DATA_ATTR *adata, void *data);

/*extern ssize_t fan_show_duty_cycle_default(struct device *dev, struct device_attribute *da, char *buf);*/
/*extern ssize_t fan_set_duty_cycle_default(struct device *dev, struct device_attribute *da, const char *buf, size_t count);*/
/*extern int sonic_i2c_get_fan_duty_cycle_default(void *client, FAN_DATA_ATTR *adata, void *data);*/

#endif //__PDDF_FAN_API_H__